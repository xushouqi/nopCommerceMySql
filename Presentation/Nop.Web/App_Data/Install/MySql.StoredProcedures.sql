DROP PROCEDURE IF EXISTS `nop_splitstring_to_table`;

CREATE PROCEDURE `nop_splitstring_to_table`
(
    IN string LONGTEXT,
    IN delim CHAR(1)
)
BEGIN
    DROP TEMPORARY TABLE IF EXISTS nop_splitstring_to_table_TempTable;
    CREATE TEMPORARY TABLE nop_splitstring_to_table_TempTable
    (
        `data` LONGTEXT
    );
    
    set @start = 1;    
    set @end = LOCATE(delim, string);

    WHILE @start < LENGTH(string) + 1 DO
        IF @end = 0 then
            SET @end = LENGTH(string) + 1;
        END IF;

        INSERT INTO nop_splitstring_to_table_TempTable (data) 
        VALUES(SUBSTRING(string, @start, @end - @start));
        SET @start = @end + 1;
        SET @end = LOCATE(delim, string, @start);
    END WHILE;
END;

DROP PROCEDURE IF EXISTS `nop_getnotnullnotempty`;

CREATE PROCEDURE `nop_getnotnullnotempty`
(
    IN p1 LONGTEXT, 
    IN p2 LONGTEXT,
    OUT res LONGTEXT
)
BEGIN
    set res = p1;
    
    IF res IS NULL OR res = '' then
        set res = p2;
    END IF;
END;

DROP PROCEDURE IF EXISTS `nop_getprimarykey_indexname`;

CREATE PROCEDURE `nop_getprimarykey_indexname`
(
    IN table_name varchar(1000),
    OUT index_name varchar(1000)
)
BEGIN
    select CONSTRAINT_NAME into index_name from information_schema.table_constraints t
where t.TABLE_NAME = table_name AND CONSTRAINT_TYPE = 'PRIMARY KEY';
END;

DROP PROCEDURE IF EXISTS `ProductLoadAllPaged`;

CREATE PROCEDURE `ProductLoadAllPaged`(
	IN CategoryIds		longtext,	-- a list of category IDs (comma-separated list). e.g. 1,2,3
	IN ManufacturerId		int,
	IN StoreId			int,
	IN VendorId			int,
	IN WarehouseId		int,
	IN ProductTypeId		int, -- product type identifier, null - load all products
	IN VisibleIndividuallyOnly int, 	-- 0 - load all products , 1 - "visible indivially" only
	IN ProductTagId		int,
	IN FeaturedProducts	int,	-- 0 featured only , 1 not featured only, null - load all products
	IN PriceMin			decimal(18, 4),
	IN PriceMax			decimal(18, 4),
	IN Keywords			nvarchar(4000),
	IN SearchDescriptions int, -- a value indicating whether to search by a specified "keyword" in product descriptions
	IN SearchSku			int, -- a value indicating whether to search by a specified "keyword" in product SKU
	IN SearchProductTags  int, -- a value indicating whether to search by a specified "keyword" in product tags
	IN UseFullTextSearch  int,
	IN FullTextMode		int, -- 0 - using CONTAINS with <prefix_term>, 5 - using CONTAINS and OR with <prefix_term>, 10 - using CONTAINS and AND with <prefix_term>
	IN FilteredSpecs		longtext,	-- filter by attributes (comma-separated list). e.g. 14,15,16
	IN LanguageId			int,
	IN OrderBy			int, -- 0 - position, 5 - Name: A to Z, 6 - Name: Z to A, 10 - Price: Low to High, 11 - Price: High to Low, 15 - creation date
	IN AllowedCustomerRoleIds	longtext,	-- a list of customer role IDs (comma-separated list) for which a product should be shown (if a subjet to ACL)
	IN PageIndex			int, 
	IN PageSize			int,
	IN ShowHidden			int,
	IN OverridePublished	int, -- null - process "Published" property according to "showHidden" parameter, true - load only "Published" products, false - load only "Unpublished" products
	IN LoadFilterableSpecificationAttributeOptionIds int, -- a value indicating whether we should load the specification attribute option identifiers applied to loaded products (all pages)
	OUT FilterableSpecificationAttributeOptionIds nvarchar(20480), -- the specification attribute option identifiers applied to loaded products (all pages). returned as a comma separated list of identifiers
	OUT TotalRecords		int
)
BEGIN

	IF ManufacturerId IS NULL THEN
		SET ManufacturerId = 0;
	END IF;

	IF StoreId IS NULL THEN
		SET StoreId = 0;
	END IF;

	IF VendorId IS NULL THEN
		SET VendorId = 0;
	END IF;

	IF WarehouseId IS NULL THEN
		SET WarehouseId = 0;
	END IF;

	IF VisibleIndividuallyOnly IS NULL THEN
		SET VisibleIndividuallyOnly = 0;
	END IF;

	IF ProductTagId IS NULL THEN
		SET ProductTagId = 0;
	END IF;

	IF SearchDescriptions IS NULL THEN
		SET SearchDescriptions = 0;
	END IF;

	IF SearchSku IS NULL THEN
		SET SearchSku = 0;
	END IF;

	IF SearchProductTags IS NULL THEN
		SET SearchProductTags = 0;
	END IF;

	IF UseFullTextSearch IS NULL THEN
		SET UseFullTextSearch = 0;
	END IF;

	IF FullTextMode IS NULL THEN
		SET FullTextMode = 0;
	END IF;

	IF OrderBy IS NULL THEN
		SET OrderBy = 0;
	END IF;

	IF LanguageId IS NULL THEN
		SET LanguageId = 0;
	END IF;

	IF PageIndex IS NULL THEN
		SET PageIndex = 0;
	END IF;

	IF PageSize IS NULL THEN
		SET PageSize = 2147483644;
	END IF;

	IF ShowHidden IS NULL THEN
		SET ShowHidden = 0;
	END IF;

	IF LoadFilterableSpecificationAttributeOptionIds IS NULL THEN
		SET LoadFilterableSpecificationAttributeOptionIds = 0;
	END IF;
	
	/* Products that filtered by keywords */
	DROP TEMPORARY TABLE IF EXISTS KeywordProducts_TempTable;
	CREATE TEMPORARY TABLE KeywordProducts_TempTable
	(
		ProductId INT NOT NULL
	) ENGINE = MEMORY;
	
	-- filter by keywords
	SET Keywords = COALESCE(Keywords, '');
	SET Keywords = RTRIM(LTRIM(Keywords));
	IF IFNULL(Keywords,'') != '' THEN
		SET @SearchKeywords = 1;
		
		IF UseFullTextSearch = 1 THEN        
			-- full-text search
			IF FullTextMode = 0 THEN
				-- 0 - using CONTAINS with <prefix_term>
				SET Keywords = CONCAT(' ', Keywords, '* ');
			ELSE
				-- 5 - using CONTAINS and OR with <prefix_term>
				-- 10 - using CONTAINS and AND with <prefix_term>

				-- remove wrong chars (' ")
				SET Keywords = REPLACE(Keywords, '''', '');
				SET Keywords = REPLACE(Keywords, '"', '');
				-- clean multiple spaces
				WHILE LOCATE('  ', Keywords) > 0 DO
					SET Keywords = REPLACE(Keywords, '  ', ' ');
        END WHILE;

				IF FullTextMode = 5 THEN -- 5 - using CONTAINS and OR with <prefix_term>
					SET @concat_term = '';				
				ELSEIF FullTextMode = 10 THEN -- 10 - using CONTAINS and AND with <prefix_term>
					SET @concat_term = '+';
				END IF;

				-- now let's build search string
				SET @fulltext_keywords = N'';
		
				SET @index = LOCATE(' ', Keywords);

				--  if index = 0, then only one field was passed
				IF @index = 0 THEN
					set @fulltext_keywords = CONCAT(' ', Keywords, '* ');
				ELSE
					SET  @first = 1;
					WHILE @index > 0 DO
						IF @first = 0 THEN
							SET @fulltext_keywords = CONCAT(@fulltext_keywords, ' ', @concat_term, ' ');
						ELSE
							SET @first = 0;
						END IF;

						SET @fulltext_keywords = CONCAT(@fulltext_keywords, ' ', @concat_term, SUBSTRING(Keywords, 1, @index - 1), '*');
						SET Keywords = SUBSTRING(Keywords, @index + 1, LENGTH(Keywords) - @index);
						SET @index = LOCATE(' ', Keywords);
					END WHILE;
                    
					--  add the last field
					IF LENGTH(@fulltext_keywords) > 0 THEN
						SET @fulltext_keywords = CONCAT(@fulltext_keywords, ' ', @concat_term, SUBSTRING(Keywords, 1, LENGTH(Keywords)), '*');
          END IF;
				END IF;
				SET Keywords = LTRIM(RTRIM(@fulltext_keywords));
			END IF;
		ELSE
			-- usual search by PATINDEX
			SET Keywords = concat('%', Keywords, '%');
		END IF;
		-- PRINT Keywords

		-- product name
		SET @sql = '
		INSERT INTO KeywordProducts_TempTable (`ProductId`)
		SELECT p.Id
		FROM Product p
		WHERE ';
		IF UseFullTextSearch = 1 THEN
			SET @sql = CONCAT(@sql, 'MATCH (p.`Name`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
		ELSE
			SET @sql = CONCAT(@sql, 'CONVERT(p.`Name` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
    END IF;

		-- localized product name
		SET @sql = CONCAT(@sql, '
		UNION
		SELECT lp.EntityId
		FROM LocalizedProperty lp
		WHERE
			lp.LocaleKeyGroup = N''Product''
			AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
			AND lp.LocaleKey = N''Name''');
		IF UseFullTextSearch = 1 THEN
			SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
		ELSE
			SET @sql = CONCAT(@sql, ' AND CONVERT(lp.`LocaleValue` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
    END IF;

		-- product short description
		IF SearchDescriptions = 1 THEN
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`ShortDescription`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'CONVERT(p.`ShortDescription` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
      END IF;

			-- product full description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`FullDescription`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'CONVERT(p.`FullDescription` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
      END IF;

			-- localized product short description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT lp.EntityId
			FROM LocalizedProperty lp
			WHERE
				lp.LocaleKeyGroup = N''Product''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''ShortDescription''');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, ' AND CONVERT(lp.`LocaleValue` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
      END IF;				

			-- localized product full description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT lp.EntityId
			FROM LocalizedProperty lp
			WHERE
				lp.LocaleKeyGroup = N''Product''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''FullDescription''');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, ' AND CONVERT(lp.`LocaleValue` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
      END IF;
		END IF;

		-- SKU
		IF SearchSku = 1 THEN
			SET @sql = CONCATE(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`Sku`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'CONVERT(p.`Sku` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
			END IF;
		END IF;


		IF @SearchProductTags = 1 THEN
			-- product tag
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT pptm.Product_Id
			FROM Product_ProductTag_Mapping pptm INNER JOIN ProductTag pt ON pt.Id = pptm.ProductTag_Id
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (pt.`Name`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'CONVERT(pt.`Name` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
			END IF;

			-- localized product tag
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT pptm.Product_Id
			FROM LocalizedProperty lp INNER JOIN Product_ProductTag_Mapping pptm ON lp.EntityId = pptm.ProductTag_Id
			WHERE
				lp.LocaleKeyGroup = N''ProductTag''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''Name''');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'CONVERT(lp.`LocaleValue` USING utf8) LIKE CONVERT(@TempKeywords USING utf8) ');
			END IF;
		END IF;

    -- select @sql;
    -- select Keywords;
    
    set @TempKeywords = Keywords;
     -- SET @sql = '
--          Select @TempKeywords;';
        
		-- PRINT (@sql)
    PREPARE stmt1 FROM @sql; 
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    EXECUTE stmt1; -- USING @TempKeywords; 
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    DEALLOCATE PREPARE stmt1;
		-- select @sql;
    
    
    -- select * from KeywordProducts_TempTable;
		-- EXEC sp_executesql @sql, N'Keywords varchar(4000)', Keywords
	
	ELSE
		SET @SearchKeywords = 0;
	END IF;

	-- filter by category IDs
	SET CategoryIds = COALESCE(CategoryIds, '');
	Drop TEMPORARY TABLE IF EXISTS FilteredCategoryIds_TempTable;
	CREATE TEMPORARY TABLE FilteredCategoryIds_TempTable
	(
		CategoryId int not null
	) ENGINE = MEMORY;
    
    
    
  CALL nop_splitstring_to_table(CategoryIds, ',');
	INSERT INTO FilteredCategoryIds_TempTable (CategoryId)
	SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;
    
  SELECT COUNT(1) FROM FilteredCategoryIds_TempTable into @CategoryIdsCount;

	-- filter by attributes
	SET FilteredSpecs = COALESCE(FilteredSpecs, '');	
	Drop TEMPORARY TABLE IF EXISTS FilteredSpecs_TempTable;
	CREATE TEMPORARY TABLE FilteredSpecs_TempTable
	(
		SpecificationAttributeOptionId int not null
	) ENGINE = MEMORY;
    
  CALL nop_splitstring_to_table(FilteredSpecs, ',');
	INSERT INTO FilteredSpecs_TempTable (SpecificationAttributeOptionId)
	SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;	
    
  SELECT COUNT(1) FROM FilteredSpecs_TempTable into @SpecAttributesCount;

	-- filter by customer role IDs (access control list)
	SET AllowedCustomerRoleIds = COALESCE(AllowedCustomerRoleIds, '');	
	Drop TEMPORARY TABLE IF EXISTS FilteredCustomerRoleIds_TempTable;
	CREATE TEMPORARY TABLE FilteredCustomerRoleIds_TempTable
	(
		CustomerRoleId int not null
	) ENGINE = MEMORY;

	CALL nop_splitstring_to_table(AllowedCustomerRoleIds, ',');
	INSERT INTO FilteredCustomerRoleIds_TempTable (CustomerRoleId)
	SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;

	-- paging
	SET @RowsToReturn = PageSize * (PageIndex + 1);
	SET @PageLowerBound = PageSize * PageIndex;
	SET @PageUpperBound = @PageLowerBound + PageSize + 1;
	
	Drop TEMPORARY TABLE IF EXISTS DisplayOrder_TempTable;
	CREATE TEMPORARY TABLE DisplayOrder_TempTable 
	(
		Id int NOT NULL AUTO_INCREMENT,
		ProductId int NOT NULL,
    PRIMARY KEY (`Id`)
	) ENGINE = MEMORY;

	SET @sql = '
	INSERT INTO DisplayOrder_TempTable (`ProductId`)
	SELECT p.Id
	FROM
		Product p';
	
	IF @CategoryIdsCount > 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_Category_Mapping pcm
			ON p.Id = pcm.ProductId');
	END IF;
	
	IF ManufacturerId > 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_Manufacturer_Mapping pmm
			ON p.Id = pmm.ProductId');
	END IF;
	
	IF COALESCE(ProductTagId, 0) != 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_ProductTag_Mapping pptm
			ON p.Id = pptm.Product_Id');
	END IF;
	
	-- searching by keywords
	IF @SearchKeywords = 1 THEN
		SET @sql = CONCAT(@sql, '
		JOIN KeywordProducts_TempTable kp
			ON  p.Id = kp.ProductId');
	END IF;
	
	SET @sql = CONCAT(@sql, '
	WHERE
		p.Deleted = 0');
	
	-- filter by category
	IF @CategoryIdsCount > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND pcm.CategoryId IN (SELECT CategoryId FROM FilteredCategoryIds_TempTable)');
		
		IF FeaturedProducts IS NOT NULL THEN
			SET @sql = CONCAT(@sql, '
		AND pcm.IsFeaturedProduct = ', FeaturedProducts);
		END IF;
	END IF;
	
	-- filter by manufacturer
	IF ManufacturerId > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND pmm.ManufacturerId = ', ManufacturerId);
		
		IF FeaturedProducts IS NOT NULL THEN
			SET @sql = CONCAT(@sql, '
		AND pmm.IsFeaturedProduct = ', FeaturedProducts);
		END IF;
	END IF;

-- filter by vendor
	IF VendorId > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND p.VendorId = ', VendorId);
	END IF;
	
	-- filter by warehouse
	IF WarehouseId > 0 THEN
		-- we should also ensure that 'ManageInventoryMethodId' is set to 'ManageStock' (1)
		-- but we skip it in order to prevent hard-coded values (e.g. 1) and for better performance
		SET @sql = CONCAT(@sql, '
		AND  
			(
				(p.UseMultipleWarehouses = 0 AND
					p.WarehouseId = ', WarehouseId, ')
				OR
				(p.UseMultipleWarehouses > 0 AND
					EXISTS (SELECT 1 FROM ProductWarehouseInventory `pwi`
					WHERE `pwi`.WarehouseId = ',WarehouseId, ' AND `pwi`.ProductId = p.Id))
			)');
	END IF;
	
	-- filter by product type
	IF ProductTypeId is not null THEN
		SET @sql = CONCAT(@sql + '
		AND p.ProductTypeId = ', ProductTypeId);
	END IF;
	
	-- filter by parent product identifer
	IF VisibleIndividuallyOnly = 1 THEN
		SET @sql = CONCAT(@sql, '
		AND p.VisibleIndividually = 1');
	END IF;
	
	-- filter by product tag
	IF COALESCE(ProductTagId, 0) != 0 THEN
		SET @sql = CONCAT(@sql, '
		AND pptm.ProductTag_Id = ', ProductTagId);
	END IF;

	-- "Published" property
	IF OverridePublished is null THEN
		-- process according to "showHidden"
		IF ShowHidden = 0 THEN
			SET @sql = CONCAT(@sql, '
			AND p.Published = 1');
		END IF;
	ELSEIF OverridePublished = 1 THEN
		-- published only
		SET @sql = CONCAT(@sql, '
		AND p.Published = 1');
	ELSEIF OverridePublished = 0 THEN
		-- unpublished only
		SET @sql = CONCAT(@sql, '
		AND p.Published = 0');
	END IF;
	
	-- show hidden
	IF ShowHidden = 0 THEN
		SET @sql = CONCAT(@sql, '
		AND p.Deleted = 0
		AND (utc_timestamp() BETWEEN COALESCE(p.AvailableStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) and COALESCE(p.AvailableEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)'')))');
	END IF;
	
	-- min price
	IF PriceMin > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (
				(
					-- special price (specified price and valid date range)
					(p.SpecialPrice IS NOT NULL AND (utc_timestamp() BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.SpecialPrice >= ', PriceMin, ')
				)
				OR 
				(
					-- regular price (price isnt specified or date range isnt valid)
					(p.SpecialPrice IS NULL OR (utc_timestamp() NOT BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.Price >= ', PriceMin, ')
				)
			)');
	END IF;
	
	-- max price
	IF PriceMax > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (
				(
					-- special price (specified price and valid date range)
					(p.SpecialPrice IS NOT NULL AND (utc_timestamp() BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.SpecialPrice <= ', PriceMax, ')
				)
				OR 
				(
					-- regular price (price isnt specified or date range isnt valid)
					(p.SpecialPrice IS NULL OR (utc_timestamp() NOT BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.Price <= ', PriceMax, ')
				)
			)');
	END IF;

	-- show hidden and ACL
	IF ShowHidden = 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (p.SubjectToAcl = 0 OR EXISTS (
			SELECT 1 FROM FilteredCustomerRoleIds_TempTable `fcr`
			WHERE
				`fcr`.CustomerRoleId IN (
					SELECT `acl`.CustomerRoleId
					FROM `AclRecord` acl
					WHERE `acl`.EntityId = p.Id AND `acl`.EntityName = ''Product''
				)
			))');
	END IF;
	
	-- show hidden and filter by store
	IF StoreId > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM `StoreMapping` sm
			WHERE `sm`.EntityId = p.Id AND `sm`.EntityName = ''Product'' and `sm`.StoreId=', StoreId, '
			))');
	END IF;
	
	-- filter by specs
	IF @SpecAttributesCount > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND NOT EXISTS (
			SELECT 1 
			FROM
				FilteredSpecs_TempTable `fs`
			WHERE
				`fs`.SpecificationAttributeOptionId NOT IN (
					SELECT psam.SpecificationAttributeOptionId
					FROM Product_SpecificationAttribute_Mapping psam
					WHERE psam.AllowFiltering = 1 AND psam.ProductId = p.Id
				)
			)');
	END IF;
	
	-- sorting
	SET @sql_orderby = '';	
	IF OrderBy = 5 THEN /* Name: A to Z */
		SET @sql_orderby = ' p.`Name` ASC';
	ELSEIF OrderBy = 6 THEN /* Name: Z to A */
		SET @sql_orderby = ' p.`Name` DESC';
	ELSEIF OrderBy = 10 THEN /* Price: Low to High */
		SET @sql_orderby = ' p.`Price` ASC';
	ELSEIF OrderBy = 11 THEN /* Price: High to Low */
		SET @sql_orderby = ' p.`Price` DESC';
	ELSEIF OrderBy = 15 THEN /* creation date */
		SET @sql_orderby = ' p.`CreatedOnUtc` DESC';
	ELSE /* default sorting, 0 (position) */
		-- category position (display order)
		IF @CategoryIdsCount > 0 THEN
        SET @sql_orderby = ' pcm.DisplayOrder ASC';
    END IF;
		
		-- manufacturer position (display order)
		IF ManufacturerId > 0 THEN
			IF LENGTH(@sql_orderby) > 0 THEN
            SET @sql_orderby = CONCAT(@sql_orderby, ', ');
      END IF;
      
			SET @sql_orderby = CONCAT(@sql_orderby, ' pmm.DisplayOrder ASC');
		END IF;
		
		-- name
		IF LENGTH(@sql_orderby) > 0 THEN
        SET @sql_orderby = CONCAT(@sql_orderby, ', ');
    END IF;
    
		SET @sql_orderby = CONCAT(@sql_orderby, ' p.`Name` ASC');
	END IF;
	
	SET @sql = CONCAT(@sql, '
	ORDER BY', @sql_orderby);
    
    -- select @sql;
	        
	-- PRINT (@sql)
  PREPARE stmt2 FROM @sql; 
  SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
  EXECUTE stmt2; 
  SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
  DEALLOCATE PREPARE stmt2;
  -- select @sql;
	DROP Temporary TABLE FilteredCategoryIds_TempTable;
	DROP Temporary TABLE FilteredSpecs_TempTable;
	DROP Temporary TABLE FilteredCustomerRoleIds_TempTable;

	DROP Temporary TABLE IF EXISTS PageIndex_TempTable;
	CREATE Temporary TABLE PageIndex_TempTable 
	(
		IndexId int NOT NULL AUTO_INCREMENT,
		ProductId int NOT NULL,
    PRIMARY KEY (`IndexId`)
	) ENGINE = MEMORY;
    
	INSERT INTO PageIndex_TempTable (`ProductId`)
	SELECT ProductId
	FROM DisplayOrder_TempTable
	GROUP BY ProductId
	ORDER BY min(`Id`);

	-- total records
	SET TotalRecords = ROW_COUNT();
	
	DROP temporary TABLE DisplayOrder_TempTable;

	-- prepare filterable specification attribute option identifier (if requested)
	IF LoadFilterableSpecificationAttributeOptionIds = 1 THEN
		DROP Temporary TABLE if exists FilterableSpecs_TempTable;
		CREATE Temporary TABLE FilterableSpecs_TempTable 
		(
			SpecificationAttributeOptionId int NOT NULL
		) ENGINE = MEMORY;
        
		INSERT INTO FilterableSpecs_TempTable (`SpecificationAttributeOptionId`)
		SELECT DISTINCT `psam`.SpecificationAttributeOptionId
		FROM `Product_SpecificationAttribute_Mapping` `psam`
		WHERE `psam`.`AllowFiltering` = 1
		AND `psam`.`ProductId` IN (SELECT `pi`.ProductId FROM PageIndex_TempTable `pi`);
    
		-- build comma separated list of filterable identifiers
    SELECT GROUP_CONCAT(COALESCE(concat(FilterableSpecificationAttributeOptionIds, ',') , ''), SpecificationAttributeOptionId) into FilterableSpecificationAttributeOptionIds
		FROM FilterableSpecs_TempTable;

    DROP Temporary TABLE FilterableSpecs_TempTable;
 	END IF;

	SET @sql = CONCAT('
		SELECT
			p.*
		FROM
			PageIndex_TempTable pi
			INNER JOIN Product p on p.Id = pi.ProductId
		WHERE
			pi.IndexId > ', @PageLowerBound, ' AND 
			pi.IndexId < ', @PageUpperBound, '
		ORDER BY
			pi.IndexId
		limit ', @RowsToReturn, ';');

	-- select @sql;
  PREPARE stmt3 FROM @sql;
  EXECUTE stmt3;
  DEALLOCATE PREPARE stmt3;

	DROP Temporary TABLE PageIndex_TempTable;
END;


DROP PROCEDURE IF EXISTS `ProductTagCountLoadAll`;

CREATE PROCEDURE `ProductTagCountLoadAll`
(
	StoreId int
)
BEGIN
	
  SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	SELECT pt.Id as `ProductTagId`, COUNT(p.Id) as `ProductCount`
	FROM ProductTag pt
	LEFT JOIN Product_ProductTag_Mapping pptm ON pt.`Id` = pptm.`ProductTag_Id`
	LEFT JOIN Product p ON pptm.`Product_Id` = p.`Id`
	WHERE
		p.`Deleted` = 0
		AND p.Published = 1
		AND (@StoreId = 0 or (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM `StoreMapping` sm
			WHERE `sm`.EntityId = p.Id AND `sm`.EntityName = 'Product' and `sm`.StoreId=@StoreId
			)))
	GROUP BY pt.Id
	ORDER BY pt.Id;

	SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
END;


DROP PROCEDURE IF EXISTS `FullText_IsSupported`;

CREATE PROCEDURE `FullText_IsSupported`()
BEGIN	
    -- MySql InnoDB引擎在5.6.4版本之后开始支持全文索引
    SELECT 0;
END;


DROP PROCEDURE IF EXISTS `FullText_Enable`;

CREATE PROCEDURE `FullText_Enable`()
BEGIN	
	
    -- These are remarked out because InnoDb doesn't support full text indexes with MySql 5.5 or earlier
    
    -- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'Product' AND INDEX_NAME = 'IX_PRODUCT_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_PRODUCT_FULLTEXT` ON `product` ( `Name`, `ShortDescription`, `FullDescription` );
--   end if;	
--     
--     SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'ProductVariant' AND INDEX_NAME = 'IX_ProductVariant_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_ProductVariant_FULLTEXT` ON `ProductVariant` ( `Name`, `Description`, `SKU` );
--   end if;
-- 
-- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'LocalizedProperty' AND INDEX_NAME = 'IX_LocalizedProperty_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_LocalizedProperty_FULLTEXT` ON `LocalizedProperty` ( `LocaleValue` );
--   end if;
END;


DROP PROCEDURE IF EXISTS `FullText_Disable`;

CREATE PROCEDURE `FullText_Disable`()
BEGIN	
	
    -- These are remarked out because InnoDb doesn't currently support full text indexes with MySql 5.5 or earlier
    
    -- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'Product' AND INDEX_NAME = 'IX_PRODUCT_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_PRODUCT_FULLTEXT` ON `product`;
--   end if;	
--     
--     SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'ProductVariant' AND INDEX_NAME = 'IX_ProductVariant_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_ProductVariant_FULLTEXT` ON `ProductVariant`;
--   end if;
-- 
-- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'LocalizedProperty' AND INDEX_NAME = 'IX_LocalizedProperty_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_LocalizedProperty_FULLTEXT` ON `LocalizedProperty`;
--   end if;
END;


DROP PROCEDURE IF EXISTS `LanguagePackImport`;

CREATE PROCEDURE `LanguagePackImport`(
	IN LanguageId int,
	IN XmlPackage LONGTEXT
)
BEGIN
	IF (EXISTS(SELECT 1 FROM `Language` WHERE `Id` = LanguageId)) THEN
        
    drop temporary table if exists LocaleStringResource_TempTable;
	CREATE temporary TABLE LocaleStringResource_TempTable
	(
		LanguageId int NOT NULL,
				ResourceName varchar(200) NOT NULL,
				ResourceValue LONGTEXT NOT NULL
	);

set @i = 1;
select ExtractValue(@xml, 'count(//Language/LocaleResource/@Name)') into @count;
WHILE @i <= @count DO
    insert into LocaleStringResource_TempTable
    SELECT LanguageId, ExtractValue(@xml, '//Language/LocaleResource[$@i]/@Name'), ExtractValue(@xml, '//Language/LocaleResource[$@i]/Value[1]');
    SET @i = @i+1;
END WHILE;		       
        
        BEGIN
        DECLARE done INT DEFAULT FALSE;
        DECLARE ResourceName varchar(200);
		DECLARE ResourceValue LONGTEXT;
		DECLARE cur_localeresource CURSOR FOR
		SELECT LanguageID, LocaleStringResource_TempTable.ResourceName, LocaleStringResource_TempTable.ResourceValue
		FROM LocaleStringResource_TempTable;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
        
		OPEN cur_localeresource;
    
    read_loop: LOOP
    FETCH cur_localeresource INTO LanguageId, ResourceName, ResourceValue;
    IF done THEN
      LEAVE read_loop;
    END IF;
    
    -- select LanguageId, ResourceName, ResourceValue;
    
    IF (EXISTS (SELECT 1 FROM LocaleStringResource WHERE LocaleStringResource.LanguageID=LanguageId AND LocaleStringResource.ResourceName=ResourceName)) THEN
				UPDATE LocaleStringResource
				SET LocaleStringResource.ResourceValue=ResourceValue
				WHERE LocaleStringResource.LanguageID=LanguageId AND LocaleStringResource.ResourceName=ResourceName;
			ELSE 
				INSERT INTO LocaleStringResource
				(
					LocaleStringResource.LanguageId,
					LocaleStringResource.ResourceName,
					LocaleStringResource.ResourceValue
				)
				VALUES
				(
					LanguageId,
					ResourceName,
					ResourceValue
				);
			END IF;
  END LOOP;
  
  CLOSE cur_localeresource;
		-- DEALLOCATE cur_localeresource;
			END;		

		DROP temporary TABLE LocaleStringResource_TempTable;
	END IF;
END;



DROP PROCEDURE IF EXISTS DeleteGuests;

CREATE PROCEDURE `DeleteGuests`
(
	IN OnlyWithoutShoppingCart int,
	IN CreatedFromUtc datetime,
	IN CreatedToUtc datetime,
	OUT TotalRecordsDeleted int
)
BEGIN
	IF OnlyWithoutShoppingCart IS NULL THEN
		SET OnlyWithoutShoppingCart = 1;
	END IF;

	SET @OnlyWithoutShoppingCart = OnlyWithoutShoppingCart;
	SET @CreatedFromUtc = CreatedFromUtc;
	SET @CreatedToUtc = CreatedToUtc;

	DROP TEMPORARY TABLE IF EXISTS Guests_TempTable;

	CREATE TEMPORARY TABLE Guests_TempTable 
	(
		CustomerId int
	) ENGINE = MEMORY;

	INSERT Guests_TempTable (CustomerId)
	SELECT `Id` FROM `Customer` c
	WHERE
	-- created from
	((@CreatedFromUtc is null) OR (c.`CreatedOnUtc` > @CreatedFromUtc))
	AND
	-- created to
	((@CreatedToUtc is null) OR (c.`CreatedOnUtc` < @CreatedToUtc))
	AND
	-- shopping cart items
	((@OnlyWithoutShoppingCart=0) OR (NOT EXISTS(SELECT 1 FROM `ShoppingCartItem` sci inner join `Customer` on sci.`CustomerId`=c.`Id`)))
	AND
	-- guests only
	(EXISTS(SELECT 1 FROM `Customer_CustomerRole_Mapping` ccrm inner join `Customer` on ccrm.`Customer_Id`=c.`Id` inner join `CustomerRole` cr on cr.`Id`=ccrm.`CustomerRole_Id` WHERE cr.`SystemName` = N'Guests'))
	AND
	-- no orders
	(NOT EXISTS(SELECT 1 FROM `Order` o inner join `Customer` on o.`CustomerId`=c.`Id`))
	AND
	-- no blog comments
	(NOT EXISTS(SELECT 1 FROM `BlogComment` bc inner join `Customer` on bc.`CustomerId`=c.`Id`))
	AND
	-- no news comments
	(NOT EXISTS(SELECT 1 FROM `NewsComment` nc inner join `Customer` on nc.`CustomerId`=c.`Id`))
	AND
	-- no product reviews
	(NOT EXISTS(SELECT 1 FROM `ProductReview` pr inner join `Customer` on pr.`CustomerId`=c.`Id`))
	AND
	-- no product reviews helpfulness
	(NOT EXISTS(SELECT 1 FROM `ProductReviewHelpfulness` prh inner join `Customer` on prh.`CustomerId`=c.`Id`))
	AND
	-- no poll voting
	(NOT EXISTS(SELECT 1 FROM `PollVotingRecord` pvr inner join `Customer` on pvr.`CustomerId`=c.`Id`))
	AND
	-- no forum topics 
	(NOT EXISTS(SELECT 1 FROM `Forums_Topic` ft inner join `Customer` on ft.`CustomerId`=c.`Id`))
	AND
	-- no forum posts 
	(NOT EXISTS(SELECT 1 FROM `Forums_Post` fp inner join `Customer` on fp.`CustomerId`=c.`Id`))
	AND
	-- no system accounts
	(c.IsSystemAccount = 0);
	
	SET TotalRecordsDeleted = ROW_COUNT();

	-- delete guests
	DELETE FROM `Customer`
	WHERE `Id` IN (SELECT `CustomerID` FROM Guests_TempTable);
	
	-- delete attributes
	DELETE FROM `GenericAttribute`
	WHERE (`EntityID` IN (SELECT `CustomerID` FROM Guests_TempTable))
	AND
	(`KeyGroup` = N'Customer');
	
	DROP TABLE Guests_TempTable;
END;