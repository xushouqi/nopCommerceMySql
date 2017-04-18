CREATE INDEX `IX_LocaleStringResource` ON `LocaleStringResource` (`ResourceName` ASC,  `LanguageId` ASC)
;

CREATE INDEX `IX_Product_PriceDatesEtc` ON `Product`  (`Price` ASC, `AvailableStartDateTimeUtc` ASC, `AvailableEndDateTimeUtc` ASC, `Published` ASC, `Deleted` ASC)
;

CREATE INDEX `IX_Country_DisplayOrder` ON `Country` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_StateProvince_CountryId` ON `StateProvince` (`CountryId`) INCLUDE (`DisplayOrder`)
;

CREATE INDEX `IX_Currency_DisplayOrder` ON `Currency` ( `DisplayOrder` ASC)
;

CREATE INDEX `IX_Log_CreatedOnUtc` ON `Log` (`CreatedOnUtc` ASC)
;

CREATE INDEX `IX_Customer_Email` ON `Customer` (`Email` ASC)
;

CREATE INDEX `IX_Customer_Username` ON `Customer` (`Username` ASC)
;

CREATE INDEX `IX_Customer_CustomerGuid` ON `Customer` (`CustomerGuid` ASC)
;

CREATE INDEX `IX_Customer_SystemName` ON `Customer` (`SystemName` ASC)
;

CREATE INDEX `IX_GenericAttribute_EntityId_and_KeyGroup` ON `GenericAttribute` (`EntityId` ASC, `KeyGroup` ASC)
;

CREATE INDEX `IX_QueuedEmail_CreatedOnUtc` ON `QueuedEmail` (`CreatedOnUtc` ASC)
;

CREATE INDEX `IX_Order_CustomerId` ON `Order` (`CustomerId` ASC)
;

CREATE INDEX `IX_Language_DisplayOrder` ON `Language` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_BlogPost_LanguageId` ON `BlogPost` (`LanguageId` ASC)
;

CREATE INDEX `IX_BlogComment_BlogPostId` ON `BlogComment` (`BlogPostId` ASC)
;

CREATE INDEX `IX_News_LanguageId` ON `News` (`LanguageId` ASC)
;

CREATE INDEX `IX_NewsComment_NewsItemId` ON `NewsComment` (`NewsItemId` ASC)
;

CREATE INDEX `IX_NewsletterSubscription_Email_StoreId` ON `NewsLetterSubscription` (`Email` ASC, `StoreId` ASC)
;

CREATE INDEX `IX_PollAnswer_PollId` ON `PollAnswer` (`PollId` ASC)
;

CREATE INDEX `IX_ProductReview_ProductId` ON `ProductReview` (`ProductId` ASC)
;

CREATE INDEX `IX_OrderItem_OrderId` ON `OrderItem` (`OrderId` ASC)
;

CREATE INDEX `IX_OrderNote_OrderId` ON `OrderNote` (`OrderId` ASC)
;

CREATE INDEX `IX_TierPrice_ProductId` ON `TierPrice` (`ProductId` ASC)
;

CREATE INDEX `IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId` ON `ShoppingCartItem` (`ShoppingCartTypeId` ASC, `CustomerId` ASC)
;

CREATE INDEX `IX_RelatedProduct_ProductId1` ON `RelatedProduct` (`ProductId1` ASC)
;

CREATE INDEX `IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder` ON `ProductAttributeValue` (`ProductAttributeMappingId` ASC, `DisplayOrder` ASC)
;

CREATE INDEX `IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder` ON `Product_ProductAttribute_Mapping` (`ProductId` ASC, `DisplayOrder` ASC)
;

CREATE INDEX `IX_Manufacturer_DisplayOrder` ON `Manufacturer` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_Category_DisplayOrder` ON `Category` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_Category_ParentCategoryId` ON `Category` (`ParentCategoryId` ASC)
;

CREATE INDEX `IX_Forums_Group_DisplayOrder` ON `Forums_Group` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_Forums_Forum_DisplayOrder` ON `Forums_Forum` (`DisplayOrder` ASC)
;

CREATE INDEX `IX_Forums_Forum_ForumGroupId` ON `Forums_Forum` (`ForumGroupId` ASC)
;

CREATE INDEX `IX_Forums_Topic_ForumId` ON `Forums_Topic` (`ForumId` ASC)
;

CREATE INDEX `IX_Forums_Post_TopicId` ON `Forums_Post` (`TopicId` ASC)
;

CREATE INDEX `IX_Forums_Post_CustomerId` ON `Forums_Post` (`CustomerId` ASC)
;

CREATE INDEX `IX_Forums_Subscription_ForumId` ON `Forums_Subscription` (`ForumId` ASC)
;

CREATE INDEX `IX_Forums_Subscription_TopicId` ON `Forums_Subscription` (`TopicId` ASC)
;

CREATE INDEX `IX_Product_Deleted_and_Published` ON `Product` (`Published` ASC, `Deleted` ASC)
;

CREATE INDEX `IX_Product_Published` ON `Product` (`Published` ASC)
;

CREATE INDEX `IX_Product_ShowOnHomepage` ON `Product` (`ShowOnHomePage` ASC)
;

CREATE INDEX `IX_Product_ParentGroupedProductId` ON `Product` (`ParentGroupedProductId` ASC)
;

CREATE INDEX `IX_Product_VisibleIndividually` ON `Product` (`VisibleIndividually` ASC)
;

CREATE INDEX `IX_PCM_Product_and_Category` ON `Product_Category_Mapping` (`CategoryId` ASC, `ProductId` ASC)
;

CREATE INDEX `IX_PMM_Product_and_Manufacturer` ON `Product_Manufacturer_Mapping` (`ManufacturerId` ASC, `ProductId` ASC)
;

CREATE INDEX `IX_PSAM_AllowFiltering` ON `Product_SpecificationAttribute_Mapping` (`AllowFiltering` ASC) INCLUDE (`ProductId`,`SpecificationAttributeOptionId`)
;

CREATE INDEX `IX_PSAM_SpecificationAttributeOptionId_AllowFiltering` ON `Product_SpecificationAttribute_Mapping` (`SpecificationAttributeOptionId` ASC, `AllowFiltering` ASC) INCLUDE (`ProductId`)
;

CREATE INDEX `IX_PSAM_ProductId` ON `Product_SpecificationAttribute_Mapping` (`ProductId` ASC)
;

CREATE INDEX `IX_ProductTag_Name` ON `ProductTag` (`Name` ASC)
;

CREATE INDEX `IX_ActivityLog_CreatedOnUtc` ON `ActivityLog` (`CreatedOnUtc` ASC)
;

CREATE INDEX `IX_UrlRecord_Slug` ON `UrlRecord` (`Slug` ASC)
;

CREATE INDEX `IX_UrlRecord_Custom_1` ON `UrlRecord` (`EntityId` ASC, `EntityName` ASC, `LanguageId` ASC, `IsActive` ASC)
;

CREATE INDEX `IX_AclRecord_EntityId_EntityName` ON `AclRecord` (`EntityId` ASC, `EntityName` ASC)
;

CREATE INDEX `IX_StoreMapping_EntityId_EntityName` ON `StoreMapping` (`EntityId` ASC, `EntityName` ASC)
;

CREATE INDEX `IX_Category_LimitedToStores` ON `Category` (`LimitedToStores` ASC)
;

CREATE INDEX `IX_Manufacturer_LimitedToStores` ON `Manufacturer` (`LimitedToStores` ASC)
;

CREATE INDEX `IX_Product_LimitedToStores` ON `Product` (`LimitedToStores` ASC)
;

CREATE INDEX `IX_Category_SubjectToAcl` ON `Category` (`SubjectToAcl` ASC)
;

CREATE INDEX `IX_Manufacturer_SubjectToAcl` ON `Manufacturer` (`SubjectToAcl` ASC)
;

CREATE INDEX `IX_Product_SubjectToAcl` ON `Product` (`SubjectToAcl` ASC)
;