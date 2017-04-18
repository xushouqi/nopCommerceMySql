﻿INSERT `Store` (`Id`, `Name`, `Url`, `SslEnabled`, `SecureUrl`, `Hosts`, `DisplayOrder`, `CompanyName`, `CompanyAddress`, `CompanyPhoneNumber`, `CompanyVat`) VALUES (1, N'Your store name', N'http://www.yourstore.com/', 0, NULL, N'yourstore.com,www.yourstore.com', 1, N'Your company name', N'your company country, state, zip, street, etc', N'(123) 456-78901', NULL);





INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (1, N'Blog.BlogComment', NULL, N'%Store.Name%. New blog comment.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new blog comment has been created for blog post "%BlogComment.BlogPostTitle%".</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (2, N'Customer.BackInStock', NULL, N'%Store.Name%. Back in stock notification', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />Product <a target="_blank" href="%BackInStockSubscription.ProductUrl%">%BackInStockSubscription.ProductName%</a> is in stock.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (3, N'Customer.EmailValidationMessage', NULL, N'%Store.Name%. Email validation', N'<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To activate your account <a href="%Customer.AccountActivationURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (4, N'Customer.NewPM', NULL, N'%Store.Name%. You have received a new private message', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />You have received a new private message.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (5, N'Customer.PasswordRecovery', NULL, N'%Store.Name%. Password recovery', N'<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To change your password <a href="%Customer.PasswordRecoveryURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (6, N'Customer.WelcomeMessage', NULL, N'Welcome to %Store.Name%', N'We welcome you to <a href="%Store.URL%"> %Store.Name%</a>.<br /><br />You can now take part in the various services we have to offer you. Some of these services include:<br /><br />Permanent Cart - Any products added to your online cart remain there until you remove them, or check them out.<br />Address Book - We can now deliver your products to another address other than yours! This is perfect to send birthday gifts direct to the birthday-person themselves.<br />Order History - View your history of purchases that you have made with us.<br />Products Reviews - Share your opinions on products with our other customers.<br /><br />For help with any of our online services, please email the store-owner: <a href="mailto:%Store.Email%">%Store.Email%</a>.<br /><br />Note: This email address was provided on our registration page. If you own the email and did not register on our site, please send an email to <a href="mailto:%Store.Email%">%Store.Email%</a>.', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (7, N'Forums.NewForumPost', NULL, N'%Store.Name%. New Post Notification.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new post has been created in the topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.<br /><br />Post author: %Forums.PostAuthor%<br />Post body: %Forums.PostBody%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (8, N'Forums.NewForumTopic', NULL, N'%Store.Name%. New Topic Notification.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> has been created at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (9, N'GiftCard.Notification', NULL, N'%GiftCard.SenderName% has sent you a gift card for %Store.Name%', N'<p>You have received a gift card for %Store.Name%</p><p>Dear %GiftCard.RecipientName%, <br /><br />%GiftCard.SenderName% (%GiftCard.SenderEmail%) has sent you a %GiftCard.Amount% gift cart for <a href="%Store.URL%"> %Store.Name%</a></p><p>You gift card code is %GiftCard.CouponCode%</p><p>%GiftCard.Message%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (10, N'NewCustomer.Notification', NULL, N'%Store.Name%. New customer registration', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new customer registered with your store. Below are the customer''s details:<br />Full name: %Customer.FullName%<br />Email: %Customer.Email%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (11, N'NewReturnRequest.StoreOwnerNotification', NULL, N'%Store.Name%. New return request.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% has just submitted a new return request. Details are below:<br />Request ID: %ReturnRequest.ID%<br />Product: %ReturnRequest.Product.Quantity% x Product: %ReturnRequest.Product.Name%<br />Reason for return: %ReturnRequest.Reason%<br />Requested action: %ReturnRequest.RequestedAction%<br />Customer comments:<br />%ReturnRequest.CustomerComment%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (12, N'News.NewsComment', NULL, N'%Store.Name%. New news comment.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new news comment has been created for news "%NewsComment.NewsTitle%".</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (13, N'NewsLetterSubscription.ActivationMessage', NULL, N'%Store.Name%. Subscription activation message.', N'<p><a href="%NewsLetterSubscription.ActivationUrl%">Click here to confirm your subscription to our list.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (14, N'NewsLetterSubscription.DeactivationMessage', NULL, N'%Store.Name%. Subscription deactivation message.', N'<p><a href="%NewsLetterSubscription.DeactivationUrl%">Click here to unsubscribe from our newsletter.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (15, N'NewVATSubmitted.StoreOwnerNotification', NULL, N'%Store.Name%. New VAT number is submitted.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted a new VAT number. Details are below:<br />VAT number: %Customer.VatNumber%<br />VAT number status: %Customer.VatNumberStatus%<br />Received name: %VatValidationResult.Name%<br />Received address: %VatValidationResult.Address%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (16, N'OrderCancelled.CustomerNotification', NULL, N'%Store.Name%. Your order cancelled', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been cancelled. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (17, N'OrderCompleted.CustomerNotification', NULL, N'%Store.Name%. Your order completed', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been completed. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (18, N'ShipmentDelivered.CustomerNotification', NULL, N'Your order from %Store.Name% has been delivered.', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /> <br /> Hello %Order.CustomerFullName%, <br /> Good news! You order has been delivered. <br /> Order Number: %Order.OrderNumber%<br /> Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br /> Date Ordered: %Order.CreatedOn%<br /> <br /> <br /> <br /> Billing Address<br /> %Order.BillingFirstName% %Order.BillingLastName%<br /> %Order.BillingAddress1%<br /> %Order.BillingCity% %Order.BillingZipPostalCode%<br /> %Order.BillingStateProvince% %Order.BillingCountry%<br /> <br /> <br /> <br /> Shipping Address<br /> %Order.ShippingFirstName% %Order.ShippingLastName%<br /> %Order.ShippingAddress1%<br /> %Order.ShippingCity% %Order.ShippingZipPostalCode%<br /> %Order.ShippingStateProvince% %Order.ShippingCountry%<br /> <br /> Shipping Method: %Order.ShippingMethod% <br /> <br /> Delivered Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (19, N'OrderPlaced.CustomerNotification', NULL, N'Order receipt from %Store.Name%.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (20, N'OrderPlaced.StoreOwnerNotification', NULL, N'%Store.Name%. Purchase Receipt for Order #%Order.OrderNumber%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Order.CustomerFullName% (%Order.CustomerEmail%) has just placed an order from your store. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (21, N'ShipmentSent.CustomerNotification', NULL, N'Your order from %Store.Name% has been shipped.', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%!, <br />Good news! You order has been shipped. <br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod% <br /> <br /> Shipped Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (22, N'Product.ProductReview', NULL, N'%Store.Name%. New product review.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new product review has been written for product "%ProductReview.ProductName%".</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (23, N'QuantityBelow.StoreOwnerNotification', NULL, N'%Store.Name%. Quantity below notification. %Product.Name%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br /><br />Quantity: %Product.StockQuantity%<br /></p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (24, N'QuantityBelow.AttributeCombination.StoreOwnerNotification', NULL, N'%Store.Name%. Quantity below notification. %Product.Name%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br />%AttributeCombination.Formatted%<br />Quantity: %AttributeCombination.StockQuantity%<br /></p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (25, N'ReturnRequestStatusChanged.CustomerNotification', NULL, N'%Store.Name%. Return request status was changed.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%,<br />Your return request #%ReturnRequest.ID% status has been changed.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (26, N'Service.EmailAFriend', NULL, N'%Store.Name%. Referred Item', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%EmailAFriend.Email% was shopping on %Store.Name% and wanted to share the following item with you. <br /><br /><b><a target="_blank" href="%Product.ProductURLForCustomer%">%Product.Name%</a></b> <br />%Product.ShortDescription% <br /><br />For more info click <a target="_blank" href="%Product.ProductURLForCustomer%">here</a> <br /><br /><br />%EmailAFriend.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (27, N'Wishlist.EmailAFriend', NULL, N'%Store.Name%. Wishlist', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%Wishlist.Email% was shopping on %Store.Name% and wanted to share a wishlist with you. <br /><br /><br />For more info click <a target="_blank" href="%Wishlist.URLForCustomer%">here</a> <br /><br /><br />%Wishlist.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (28, N'Customer.NewOrderNote', NULL, N'%Store.Name%. New order note has been added', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />New order note has been added to your account:<br />"%Order.NewNoteText%".<br /><a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a></p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (29, N'RecurringPaymentCancelled.StoreOwnerNotification', NULL, N'%Store.Name%. Recurring payment cancelled', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just cancelled a recurring payment ID=%RecurringPayment.ID%.</p>', 1, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (30, N'OrderPlaced.VendorNotification', NULL, N'%Store.Name%. Order placed', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just placed an order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (31, N'OrderPaid.StoreOwnerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid<br />Date Ordered: %Order.CreatedOn%</p>', 0, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (32, N'OrderPaid.CustomerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Order #%Order.OrderNumber% has been just paid. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (33, N'OrderPaid.VendorNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);





INSERT `ManufacturerTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, N'Products in Grid or Lines', N'ManufacturerTemplate.ProductsInGridOrLines', 1);





INSERT `ProductTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, N'Simple product', N'ProductTemplate.Simple', 10);
INSERT `ProductTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (2, N'Grouped product', N'ProductTemplate.Grouped', 100);





INSERT `CategoryTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, N'Products in Grid or Lines', N'CategoryTemplate.ProductsInGridOrLines', 1);





INSERT `TopicTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, N'Default template', N'TopicDetails', 1);





INSERT `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (1, N'ounce(s)', N'ounce', CAST(16.00000000 AS Decimal(18, 8)), 1);
INSERT `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (2, N'lb(s)', N'lb', CAST(1.00000000 AS Decimal(18, 8)), 2);
INSERT `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (3, N'kg(s)', N'kg', CAST(0.45359237 AS Decimal(18, 8)), 3);
INSERT `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (4, N'gram(s)', N'grams', CAST(453.59237000 AS Decimal(18, 8)), 4);





INSERT `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (1, N'inch(es)', N'inches', CAST(1.00000000 AS Decimal(18, 8)), 1);
INSERT `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (2, N'feet', N'feet', CAST(0.08333333 AS Decimal(18, 8)), 2);
INSERT `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (3, N'meter(s)', N'meters', CAST(0.02540000 AS Decimal(18, 8)), 3);
INSERT `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (4, N'millimetre(s)', N'millimetres', CAST(25.40000000 AS Decimal(18, 8)), 4);





INSERT `Language` (`Id`, `Name`, `LanguageCulture`, `UniqueSeoCode`, `FlagImageFileName`, `Rtl`, `LimitedToStores`, `DefaultCurrencyId`, `Published`, `DisplayOrder`) VALUES (1, N'English', N'en-US', N'en', N'us.png', 0, 0, 0, 1, 1);





INSERT `EmailAccount` (`Id`, `Email`, `DisplayName`, `Host`, `Port`, `Username`, `Password`, `EnableSsl`, `UseDefaultCredentials`) VALUES (1, N'test@mail.com', N'Store name', N'smtp.mail.com', 25, N'123', N'123', 0, 0);





INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (1, N'US Dollar', N'USD', CAST(1.0000 AS Decimal(18, 4)), N'en-US', N'', 0, 1, 1, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (2, N'Australian Dollar', N'AUD', CAST(1.1400 AS Decimal(18, 4)), N'en-AU', N'', 0, 0, 2, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (3, N'British Pound', N'GBP', CAST(0.6200 AS Decimal(18, 4)), N'en-GB', N'', 0, 0, 3, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (4, N'Canadian Dollar', N'CAD', CAST(1.1200 AS Decimal(18, 4)), N'en-CA', N'', 0, 0, 4, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (5, N'Chinese Yuan Renminbi', N'CNY', CAST(6.1100 AS Decimal(18, 4)), N'zh-CN', N'', 0, 0, 5, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (6, N'Euro', N'EUR', CAST(0.7900 AS Decimal(18, 4)), N'', N'€0.00', 0, 1, 6, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (7, N'Hong Kong Dollar', N'HKD', CAST(7.7500 AS Decimal(18, 4)), N'zh-HK', N'', 0, 0, 7, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (8, N'Japanese Yen', N'JPY', CAST(109.2700 AS Decimal(18, 4)), N'ja-JP', N'', 0, 0, 8, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (9, N'Russian Rouble', N'RUB', CAST(43.5100 AS Decimal(18, 4)), N'ru-RU', N'', 0, 0, 9, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (10, N'Swedish Krona', N'SEK', CAST(7.3900 AS Decimal(18, 4)), N'sv-SE', N'', 0, 0, 10, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));
INSERT `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (11, N'Romanian Leu', N'RON', CAST(3.5200 AS Decimal(18, 4)), N'ro-RO', N'', 0, 0, 11, CAST('2015-06-13 08:08:11.497' AS DateTime), CAST('2015-06-13 08:08:11.497' AS DateTime));





INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (1, N'AboutUs', 0, 0, 1, 0, 0, 20, 0, 0, NULL, N'About us', N'<p>Put your &quot;About Us&quot; information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (2, N'CheckoutAsGuestOrRegister', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p><strong>Register and save time!</strong><br />Register with us for future convenience:</p><ul><li>Fast and easy check out</li><li>Easy access to your order history and status</li></ul>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (3, N'ConditionsOfUse', 0, 0, 1, 0, 0, 15, 0, 0, NULL, N'Conditions of Use', N'<p>Put your conditions of use information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (4, N'ContactUs', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p>Put your contact information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (5, N'ForumWelcomeMessage', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'Forums', N'<p>Put your welcome message here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (6, N'HomePageText', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'Welcome to our store', N'<p>Online shopping is the process consumers go through to purchase products or services over the Internet. You can edit this in the admin site.</p><p>If you have questions, see the <a href="http://www.nopcommerce.com/documentation.aspx">Documentation</a>, or post in the <a href="http://www.nopcommerce.com/boards/">Forums</a> at <a href="http://www.nopcommerce.com">nopCommerce.com</a></p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (7, N'LoginRegistrationInfo', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'About login / registration', N'<p>Put your login / registration information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (8, N'PrivacyInfo', 0, 0, 1, 0, 0, 10, 0, 0, NULL, N'Privacy notice', N'<p>Put your privacy policy information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (9, N'PageNotFound', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p><strong>The page you requested was not found, and we have a fine guess why.</strong></p><ul><li>If you typed the URL directly, please make sure the spelling is correct.</li><li>The page no longer exists. In this case, we profusely apologize for the inconvenience and for any damage this may cause.</li></ul>', 1, NULL, NULL, NULL, 0);
INSERT `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `LimitedToStores`) VALUES (10, N'ShippingInfo', 0, 0, 1, 0, 0, 5, 0, 0, NULL, N'Shipping & returns', N'<p>Put your shipping &amp; returns information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0);





INSERT `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (1, N'Books', 1);
INSERT `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (2, N'Electronics & Software', 5);
INSERT `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (3, N'Downloadable Products', 10);
INSERT `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (4, N'Jewelry', 15);
INSERT `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (5, N'Apparel', 20);





INSERT `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (1, N'Ground', N'Compared to other shipping methods, ground shipping is carried out closer to the earth', 1);
INSERT `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (2, N'Next Day Air', N'The one day air shipping', 3);
INSERT `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (3, N'2nd Day Air', N'The two day air shipping', 3);





INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (1, N'United States', 1, 1, N'US', N'USA', 840, 0, 1, 1, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (2, N'Canada', 1, 1, N'CA', N'CAN', 124, 0, 1, 2, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (3, N'Argentina', 1, 1, N'AR', N'ARG', 32, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (4, N'Armenia', 1, 1, N'AM', N'ARM', 51, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (5, N'Aruba', 1, 1, N'AW', N'ABW', 533, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (6, N'Australia', 1, 1, N'AU', N'AUS', 36, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (7, N'Austria', 1, 1, N'AT', N'AUT', 40, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (8, N'Azerbaijan', 1, 1, N'AZ', N'AZE', 31, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (9, N'Bahamas', 1, 1, N'BS', N'BHS', 44, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (10, N'Bangladesh', 1, 1, N'BD', N'BGD', 50, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (11, N'Belarus', 1, 1, N'BY', N'BLR', 112, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (12, N'Belgium', 1, 1, N'BE', N'BEL', 56, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (13, N'Belize', 1, 1, N'BZ', N'BLZ', 84, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (14, N'Bermuda', 1, 1, N'BM', N'BMU', 60, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (15, N'Bolivia', 1, 1, N'BO', N'BOL', 68, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (16, N'Bosnia and Herzegowina', 1, 1, N'BA', N'BIH', 70, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (17, N'Brazil', 1, 1, N'BR', N'BRA', 76, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (18, N'Bulgaria', 1, 1, N'BG', N'BGR', 100, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (19, N'Cayman Islands', 1, 1, N'KY', N'CYM', 136, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (20, N'Chile', 1, 1, N'CL', N'CHL', 152, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (21, N'China', 1, 1, N'CN', N'CHN', 156, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (22, N'Colombia', 1, 1, N'CO', N'COL', 170, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (23, N'Costa Rica', 1, 1, N'CR', N'CRI', 188, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (24, N'Croatia', 1, 1, N'HR', N'HRV', 191, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (25, N'Cuba', 1, 1, N'CU', N'CUB', 192, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (26, N'Cyprus', 1, 1, N'CY', N'CYP', 196, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (27, N'Czech Republic', 1, 1, N'CZ', N'CZE', 203, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (28, N'Denmark', 1, 1, N'DK', N'DNK', 208, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (29, N'Dominican Republic', 1, 1, N'DO', N'DOM', 214, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (30, N'Ecuador', 1, 1, N'EC', N'ECU', 218, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (31, N'Egypt', 1, 1, N'EG', N'EGY', 818, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (32, N'Finland', 1, 1, N'FI', N'FIN', 246, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (33, N'France', 1, 1, N'FR', N'FRA', 250, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (34, N'Georgia', 1, 1, N'GE', N'GEO', 268, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (35, N'Germany', 1, 1, N'DE', N'DEU', 276, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (36, N'Gibraltar', 1, 1, N'GI', N'GIB', 292, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (37, N'Greece', 1, 1, N'GR', N'GRC', 300, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (38, N'Guatemala', 1, 1, N'GT', N'GTM', 320, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (39, N'Hong Kong', 1, 1, N'HK', N'HKG', 344, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (40, N'Hungary', 1, 1, N'HU', N'HUN', 348, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (41, N'India', 1, 1, N'IN', N'IND', 356, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (42, N'Indonesia', 1, 1, N'ID', N'IDN', 360, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (43, N'Ireland', 1, 1, N'IE', N'IRL', 372, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (44, N'Israel', 1, 1, N'IL', N'ISR', 376, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (45, N'Italy', 1, 1, N'IT', N'ITA', 380, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (46, N'Jamaica', 1, 1, N'JM', N'JAM', 388, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (47, N'Japan', 1, 1, N'JP', N'JPN', 392, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (48, N'Jordan', 1, 1, N'JO', N'JOR', 400, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (49, N'Kazakhstan', 1, 1, N'KZ', N'KAZ', 398, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (50, N'Korea, Democratic People''s Republic of', 1, 1, N'KP', N'PRK', 408, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (51, N'Kuwait', 1, 1, N'KW', N'KWT', 414, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (52, N'Malaysia', 1, 1, N'MY', N'MYS', 458, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (53, N'Mexico', 1, 1, N'MX', N'MEX', 484, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (54, N'Netherlands', 1, 1, N'NL', N'NLD', 528, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (55, N'New Zealand', 1, 1, N'NZ', N'NZL', 554, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (56, N'Norway', 1, 1, N'NO', N'NOR', 578, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (57, N'Pakistan', 1, 1, N'PK', N'PAK', 586, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (58, N'Paraguay', 1, 1, N'PY', N'PRY', 600, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (59, N'Peru', 1, 1, N'PE', N'PER', 604, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (60, N'Philippines', 1, 1, N'PH', N'PHL', 608, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (61, N'Poland', 1, 1, N'PL', N'POL', 616, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (62, N'Portugal', 1, 1, N'PT', N'PRT', 620, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (63, N'Puerto Rico', 1, 1, N'PR', N'PRI', 630, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (64, N'Qatar', 1, 1, N'QA', N'QAT', 634, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (65, N'Romania', 1, 1, N'RO', N'ROM', 642, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (66, N'Russia', 1, 1, N'RU', N'RUS', 643, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (67, N'Saudi Arabia', 1, 1, N'SA', N'SAU', 682, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (68, N'Singapore', 1, 1, N'SG', N'SGP', 702, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (69, N'Slovakia (Slovak Republic)', 1, 1, N'SK', N'SVK', 703, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (70, N'Slovenia', 1, 1, N'SI', N'SVN', 705, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (71, N'South Africa', 1, 1, N'ZA', N'ZAF', 710, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (72, N'Spain', 1, 1, N'ES', N'ESP', 724, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (73, N'Sweden', 1, 1, N'SE', N'SWE', 752, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (74, N'Switzerland', 1, 1, N'CH', N'CHE', 756, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (75, N'Taiwan', 1, 1, N'TW', N'TWN', 158, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (76, N'Thailand', 1, 1, N'TH', N'THA', 764, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (77, N'Turkey', 1, 1, N'TR', N'TUR', 792, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (78, N'Ukraine', 1, 1, N'UA', N'UKR', 804, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (79, N'United Arab Emirates', 1, 1, N'AE', N'ARE', 784, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (80, N'United Kingdom', 1, 1, N'GB', N'GBR', 826, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (81, N'United States minor outlying islands', 1, 1, N'UM', N'UMI', 581, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (82, N'Uruguay', 1, 1, N'UY', N'URY', 858, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (83, N'Uzbekistan', 1, 1, N'UZ', N'UZB', 860, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (84, N'Venezuela', 1, 1, N'VE', N'VEN', 862, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (85, N'Serbia', 1, 1, N'RS', N'SRB', 688, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (86, N'Afghanistan', 1, 1, N'AF', N'AFG', 4, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (87, N'Albania', 1, 1, N'AL', N'ALB', 8, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (88, N'Algeria', 1, 1, N'DZ', N'DZA', 12, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (89, N'American Samoa', 1, 1, N'AS', N'ASM', 16, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (90, N'Andorra', 1, 1, N'AD', N'AND', 20, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (91, N'Angola', 1, 1, N'AO', N'AGO', 24, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (92, N'Anguilla', 1, 1, N'AI', N'AIA', 660, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (93, N'Antarctica', 1, 1, N'AQ', N'ATA', 10, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (94, N'Antigua and Barbuda', 1, 1, N'AG', N'ATG', 28, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (95, N'Bahrain', 1, 1, N'BH', N'BHR', 48, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (96, N'Barbados', 1, 1, N'BB', N'BRB', 52, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (97, N'Benin', 1, 1, N'BJ', N'BEN', 204, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (98, N'Bhutan', 1, 1, N'BT', N'BTN', 64, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (99, N'Botswana', 1, 1, N'BW', N'BWA', 72, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (100, N'Bouvet Island', 1, 1, N'BV', N'BVT', 74, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (101, N'British Indian Ocean Territory', 1, 1, N'IO', N'IOT', 86, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (102, N'Brunei Darussalam', 1, 1, N'BN', N'BRN', 96, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (103, N'Burkina Faso', 1, 1, N'BF', N'BFA', 854, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (104, N'Burundi', 1, 1, N'BI', N'BDI', 108, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (105, N'Cambodia', 1, 1, N'KH', N'KHM', 116, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (106, N'Cameroon', 1, 1, N'CM', N'CMR', 120, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (107, N'Cape Verde', 1, 1, N'CV', N'CPV', 132, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (108, N'Central African Republic', 1, 1, N'CF', N'CAF', 140, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (109, N'Chad', 1, 1, N'TD', N'TCD', 148, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (110, N'Christmas Island', 1, 1, N'CX', N'CXR', 162, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (111, N'Cocos (Keeling) Islands', 1, 1, N'CC', N'CCK', 166, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (112, N'Comoros', 1, 1, N'KM', N'COM', 174, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (113, N'Congo', 1, 1, N'CG', N'COG', 178, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (114, N'Cook Islands', 1, 1, N'CK', N'COK', 184, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (115, N'Cote D''Ivoire', 1, 1, N'CI', N'CIV', 384, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (116, N'Djibouti', 1, 1, N'DJ', N'DJI', 262, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (117, N'Dominica', 1, 1, N'DM', N'DMA', 212, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (118, N'El Salvador', 1, 1, N'SV', N'SLV', 222, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (119, N'Equatorial Guinea', 1, 1, N'GQ', N'GNQ', 226, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (120, N'Eritrea', 1, 1, N'ER', N'ERI', 232, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (121, N'Estonia', 1, 1, N'EE', N'EST', 233, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (122, N'Ethiopia', 1, 1, N'ET', N'ETH', 231, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (123, N'Falkland Islands (Malvinas)', 1, 1, N'FK', N'FLK', 238, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (124, N'Faroe Islands', 1, 1, N'FO', N'FRO', 234, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (125, N'Fiji', 1, 1, N'FJ', N'FJI', 242, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (126, N'French Guiana', 1, 1, N'GF', N'GUF', 254, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (127, N'French Polynesia', 1, 1, N'PF', N'PYF', 258, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (128, N'French Southern Territories', 1, 1, N'TF', N'ATF', 260, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (129, N'Gabon', 1, 1, N'GA', N'GAB', 266, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (130, N'Gambia', 1, 1, N'GM', N'GMB', 270, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (131, N'Ghana', 1, 1, N'GH', N'GHA', 288, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (132, N'Greenland', 1, 1, N'GL', N'GRL', 304, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (133, N'Grenada', 1, 1, N'GD', N'GRD', 308, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (134, N'Guadeloupe', 1, 1, N'GP', N'GLP', 312, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (135, N'Guam', 1, 1, N'GU', N'GUM', 316, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (136, N'Guinea', 1, 1, N'GN', N'GIN', 324, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (137, N'Guinea-bissau', 1, 1, N'GW', N'GNB', 624, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (138, N'Guyana', 1, 1, N'GY', N'GUY', 328, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (139, N'Haiti', 1, 1, N'HT', N'HTI', 332, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (140, N'Heard and Mc Donald Islands', 1, 1, N'HM', N'HMD', 334, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (141, N'Honduras', 1, 1, N'HN', N'HND', 340, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (142, N'Iceland', 1, 1, N'IS', N'ISL', 352, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (143, N'Iran (Islamic Republic of)', 1, 1, N'IR', N'IRN', 364, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (144, N'Iraq', 1, 1, N'IQ', N'IRQ', 368, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (145, N'Kenya', 1, 1, N'KE', N'KEN', 404, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (146, N'Kiribati', 1, 1, N'KI', N'KIR', 296, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (147, N'Korea', 1, 1, N'KR', N'KOR', 410, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (148, N'Kyrgyzstan', 1, 1, N'KG', N'KGZ', 417, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (149, N'Lao People''s Democratic Republic', 1, 1, N'LA', N'LAO', 418, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (150, N'Latvia', 1, 1, N'LV', N'LVA', 428, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (151, N'Lebanon', 1, 1, N'LB', N'LBN', 422, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (152, N'Lesotho', 1, 1, N'LS', N'LSO', 426, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (153, N'Liberia', 1, 1, N'LR', N'LBR', 430, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (154, N'Libyan Arab Jamahiriya', 1, 1, N'LY', N'LBY', 434, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (155, N'Liechtenstein', 1, 1, N'LI', N'LIE', 438, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (156, N'Lithuania', 1, 1, N'LT', N'LTU', 440, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (157, N'Luxembourg', 1, 1, N'LU', N'LUX', 442, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (158, N'Macau', 1, 1, N'MO', N'MAC', 446, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (159, N'Macedonia', 1, 1, N'MK', N'MKD', 807, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (160, N'Madagascar', 1, 1, N'MG', N'MDG', 450, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (161, N'Malawi', 1, 1, N'MW', N'MWI', 454, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (162, N'Maldives', 1, 1, N'MV', N'MDV', 462, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (163, N'Mali', 1, 1, N'ML', N'MLI', 466, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (164, N'Malta', 1, 1, N'MT', N'MLT', 470, 1, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (165, N'Marshall Islands', 1, 1, N'MH', N'MHL', 584, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (166, N'Martinique', 1, 1, N'MQ', N'MTQ', 474, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (167, N'Mauritania', 1, 1, N'MR', N'MRT', 478, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (168, N'Mauritius', 1, 1, N'MU', N'MUS', 480, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (169, N'Mayotte', 1, 1, N'YT', N'MYT', 175, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (170, N'Micronesia', 1, 1, N'FM', N'FSM', 583, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (171, N'Moldova', 1, 1, N'MD', N'MDA', 498, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (172, N'Monaco', 1, 1, N'MC', N'MCO', 492, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (173, N'Mongolia', 1, 1, N'MN', N'MNG', 496, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (174, N'Montenegro', 1, 1, N'ME', N'MNE', 499, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (175, N'Montserrat', 1, 1, N'MS', N'MSR', 500, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (176, N'Morocco', 1, 1, N'MA', N'MAR', 504, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (177, N'Mozambique', 1, 1, N'MZ', N'MOZ', 508, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (178, N'Myanmar', 1, 1, N'MM', N'MMR', 104, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (179, N'Namibia', 1, 1, N'NA', N'NAM', 516, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (180, N'Nauru', 1, 1, N'NR', N'NRU', 520, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (181, N'Nepal', 1, 1, N'NP', N'NPL', 524, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (182, N'Netherlands Antilles', 1, 1, N'AN', N'ANT', 530, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (183, N'New Caledonia', 1, 1, N'NC', N'NCL', 540, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (184, N'Nicaragua', 1, 1, N'NI', N'NIC', 558, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (185, N'Niger', 1, 1, N'NE', N'NER', 562, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (186, N'Nigeria', 1, 1, N'NG', N'NGA', 566, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (187, N'Niue', 1, 1, N'NU', N'NIU', 570, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (188, N'Norfolk Island', 1, 1, N'NF', N'NFK', 574, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (189, N'Northern Mariana Islands', 1, 1, N'MP', N'MNP', 580, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (190, N'Oman', 1, 1, N'OM', N'OMN', 512, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (191, N'Palau', 1, 1, N'PW', N'PLW', 585, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (192, N'Panama', 1, 1, N'PA', N'PAN', 591, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (193, N'Papua New Guinea', 1, 1, N'PG', N'PNG', 598, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (194, N'Pitcairn', 1, 1, N'PN', N'PCN', 612, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (195, N'Reunion', 1, 1, N'RE', N'REU', 638, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (196, N'Rwanda', 1, 1, N'RW', N'RWA', 646, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (197, N'Saint Kitts and Nevis', 1, 1, N'KN', N'KNA', 659, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (198, N'Saint Lucia', 1, 1, N'LC', N'LCA', 662, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (199, N'Saint Vincent and the Grenadines', 1, 1, N'VC', N'VCT', 670, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (200, N'Samoa', 1, 1, N'WS', N'WSM', 882, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (201, N'San Marino', 1, 1, N'SM', N'SMR', 674, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (202, N'Sao Tome and Principe', 1, 1, N'ST', N'STP', 678, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (203, N'Senegal', 1, 1, N'SN', N'SEN', 686, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (204, N'Seychelles', 1, 1, N'SC', N'SYC', 690, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (205, N'Sierra Leone', 1, 1, N'SL', N'SLE', 694, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (206, N'Solomon Islands', 1, 1, N'SB', N'SLB', 90, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (207, N'Somalia', 1, 1, N'SO', N'SOM', 706, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (208, N'South Georgia & South Sandwich Islands', 1, 1, N'GS', N'SGS', 239, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (209, N'Sri Lanka', 1, 1, N'LK', N'LKA', 144, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (210, N'St. Helena', 1, 1, N'SH', N'SHN', 654, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (211, N'St. Pierre and Miquelon', 1, 1, N'PM', N'SPM', 666, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (212, N'Sudan', 1, 1, N'SD', N'SDN', 736, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (213, N'Suriname', 1, 1, N'SR', N'SUR', 740, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (214, N'Svalbard and Jan Mayen Islands', 1, 1, N'SJ', N'SJM', 744, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (215, N'Swaziland', 1, 1, N'SZ', N'SWZ', 748, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (216, N'Syrian Arab Republic', 1, 1, N'SY', N'SYR', 760, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (217, N'Tajikistan', 1, 1, N'TJ', N'TJK', 762, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (218, N'Tanzania', 1, 1, N'TZ', N'TZA', 834, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (219, N'Togo', 1, 1, N'TG', N'TGO', 768, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (220, N'Tokelau', 1, 1, N'TK', N'TKL', 772, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (221, N'Tonga', 1, 1, N'TO', N'TON', 776, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (222, N'Trinidad and Tobago', 1, 1, N'TT', N'TTO', 780, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (223, N'Tunisia', 1, 1, N'TN', N'TUN', 788, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (224, N'Turkmenistan', 1, 1, N'TM', N'TKM', 795, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (225, N'Turks and Caicos Islands', 1, 1, N'TC', N'TCA', 796, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (226, N'Tuvalu', 1, 1, N'TV', N'TUV', 798, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (227, N'Uganda', 1, 1, N'UG', N'UGA', 800, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (228, N'Vanuatu', 1, 1, N'VU', N'VUT', 548, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (229, N'Vatican City State (Holy See)', 1, 1, N'VA', N'VAT', 336, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (230, N'Viet Nam', 1, 1, N'VN', N'VNM', 704, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (231, N'Virgin Islands (British)', 1, 1, N'VG', N'VGB', 92, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (232, N'Virgin Islands (U.S.)', 1, 1, N'VI', N'VIR', 850, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (233, N'Wallis and Futuna Islands', 1, 1, N'WF', N'WLF', 876, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (234, N'Western Sahara', 1, 1, N'EH', N'ESH', 732, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (235, N'Yemen', 1, 1, N'YE', N'YEM', 887, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (236, N'Zambia', 1, 1, N'ZM', N'ZMB', 894, 0, 1, 100, 0);
INSERT `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (237, N'Zimbabwe', 1, 1, N'ZW', N'ZWE', 716, 0, 1, 100, 0);





INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (1, 1, N'AA (Armed Forces Americas)', N'AA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (2, 1, N'AE (Armed Forces Europe)', N'AE', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (3, 1, N'Alabama', N'AL', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (4, 1, N'Alaska', N'AK', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (5, 1, N'American Samoa', N'AS', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (6, 1, N'AP (Armed Forces Pacific)', N'AP', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (7, 1, N'Arizona', N'AZ', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (8, 1, N'Arkansas', N'AR', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (9, 1, N'California', N'CA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (10, 1, N'Colorado', N'CO', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (11, 1, N'Connecticut', N'CT', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (12, 1, N'Delaware', N'DE', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (13, 1, N'District of Columbia', N'DC', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (14, 1, N'Federated States of Micronesia', N'FM', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (15, 1, N'Florida', N'FL', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (16, 1, N'Georgia', N'GA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (17, 1, N'Guam', N'GU', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (18, 1, N'Hawaii', N'HI', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (19, 1, N'Idaho', N'ID', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (20, 1, N'Illinois', N'IL', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (21, 1, N'Indiana', N'IN', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (22, 1, N'Iowa', N'IA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (23, 1, N'Kansas', N'KS', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (24, 1, N'Kentucky', N'KY', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (25, 1, N'Louisiana', N'LA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (26, 1, N'Maine', N'ME', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (27, 1, N'Marshall Islands', N'MH', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (28, 1, N'Maryland', N'MD', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (29, 1, N'Massachusetts', N'MA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (30, 1, N'Michigan', N'MI', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (31, 1, N'Minnesota', N'MN', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (32, 1, N'Mississippi', N'MS', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (33, 1, N'Missouri', N'MO', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (34, 1, N'Montana', N'MT', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (35, 1, N'Nebraska', N'NE', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (36, 1, N'Nevada', N'NV', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (37, 1, N'New Hampshire', N'NH', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (38, 1, N'New Jersey', N'NJ', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (39, 1, N'New Mexico', N'NM', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (40, 1, N'New York', N'NY', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (41, 1, N'North Carolina', N'NC', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (42, 1, N'North Dakota', N'ND', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (43, 1, N'Northern Mariana Islands', N'MP', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (44, 1, N'Ohio', N'OH', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (45, 1, N'Oklahoma', N'OK', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (46, 1, N'Oregon', N'OR', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (47, 1, N'Palau', N'PW', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (48, 1, N'Pennsylvania', N'PA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (49, 1, N'Puerto Rico', N'PR', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (50, 1, N'Rhode Island', N'RI', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (51, 1, N'South Carolina', N'SC', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (52, 1, N'South Dakota', N'SD', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (53, 1, N'Tennessee', N'TN', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (54, 1, N'Texas', N'TX', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (55, 1, N'Utah', N'UT', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (56, 1, N'Vermont', N'VT', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (57, 1, N'Virgin Islands', N'VI', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (58, 1, N'Virginia', N'VA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (59, 1, N'Washington', N'WA', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (60, 1, N'West Virginia', N'WV', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (61, 1, N'Wisconsin', N'WI', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (62, 1, N'Wyoming', N'WY', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (63, 2, N'Alberta', N'AB', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (64, 2, N'British Columbia', N'BC', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (65, 2, N'Manitoba', N'MB', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (66, 2, N'New Brunswick', N'NB', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (67, 2, N'Newfoundland and Labrador', N'NL', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (68, 2, N'Northwest Territories', N'NT', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (69, 2, N'Nova Scotia', N'NS', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (70, 2, N'Nunavut', N'NU', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (71, 2, N'Ontario', N'ON', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (72, 2, N'Prince Edward Island', N'PE', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (73, 2, N'Quebec', N'QC', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (74, 2, N'Saskatchewan', N'SK', 1, 1);
INSERT `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (75, 2, N'Yukon Territory', N'YU', 1, 1);





INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (1, N'AddNewCategory', N'Add a new category', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (2, N'AddNewCheckoutAttribute', N'Add a new checkout attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (3, N'AddNewCustomer', N'Add a new customer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (4, N'AddNewCustomerRole', N'Add a new customer role', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (5, N'AddNewDiscount', N'Add a new discount', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (6, N'AddNewGiftCard', N'Add a new gift card', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (7, N'AddNewManufacturer', N'Add a new manufacturer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (8, N'AddNewProduct', N'Add a new product', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (9, N'AddNewProductAttribute', N'Add a new product attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (10, N'AddNewSetting', N'Add a new setting', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (11, N'AddNewSpecAttribute', N'Add a new specification attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (12, N'AddNewWidget', N'Add a new widget', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (13, N'DeleteCategory', N'Delete category', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (14, N'DeleteCheckoutAttribute', N'Delete a checkout attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (15, N'DeleteCustomer', N'Delete a customer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (16, N'DeleteCustomerRole', N'Delete a customer role', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (17, N'DeleteDiscount', N'Delete a discount', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (18, N'DeleteGiftCard', N'Delete a gift card', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (19, N'DeleteManufacturer', N'Delete a manufacturer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (20, N'DeleteProduct', N'Delete a product', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (21, N'DeleteProductAttribute', N'Delete a product attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (22, N'DeleteReturnRequest', N'Delete a return request', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (23, N'DeleteSetting', N'Delete a setting', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (24, N'DeleteSpecAttribute', N'Delete a specification attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (25, N'DeleteWidget', N'Delete a widget', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (26, N'EditCategory', N'Edit category', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (27, N'EditCheckoutAttribute', N'Edit a checkout attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (28, N'EditCustomer', N'Edit a customer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (29, N'EditCustomerRole', N'Edit a customer role', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (30, N'EditDiscount', N'Edit a discount', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (31, N'EditGiftCard', N'Edit a gift card', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (32, N'EditManufacturer', N'Edit a manufacturer', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (33, N'EditProduct', N'Edit a product', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (34, N'EditProductAttribute', N'Edit a product attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (35, N'EditPromotionProviders', N'Edit promotion providers', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (36, N'EditReturnRequest', N'Edit a return request', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (37, N'EditSettings', N'Edit setting(s)', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (38, N'EditSpecAttribute', N'Edit a specification attribute', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (39, N'EditWidget', N'Edit a widget', 1);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (40, N'PublicStore.ViewCategory', N'Public store. View a category', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (41, N'PublicStore.ViewManufacturer', N'Public store. View a manufacturer', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (42, N'PublicStore.ViewProduct', N'Public store. View a product', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (43, N'PublicStore.PlaceOrder', N'Public store. Place an order', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (44, N'PublicStore.SendPM', N'Public store. Send PM', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (45, N'PublicStore.ContactUs', N'Public store. Use contact us form', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (46, N'PublicStore.AddToCompareList', N'Public store. Add to compare list', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (47, N'PublicStore.AddToShoppingCart', N'Public store. Add to shopping cart', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (48, N'PublicStore.AddToWishlist', N'Public store. Add to wishlist', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (49, N'PublicStore.Login', N'Public store. Login', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (50, N'PublicStore.Logout', N'Public store. Logout', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (51, N'PublicStore.AddProductReview', N'Public store. Add product review', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (52, N'PublicStore.AddNewsComment', N'Public store. Add news comment', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (53, N'PublicStore.AddBlogComment', N'Public store. Add blog comment', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (54, N'PublicStore.AddForumTopic', N'Public store. Add forum topic', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (55, N'PublicStore.EditForumTopic', N'Public store. Edit forum topic', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (56, N'PublicStore.DeleteForumTopic', N'Public store. Delete forum topic', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (57, N'PublicStore.AddForumPost', N'Public store. Add forum post', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (58, N'PublicStore.EditForumPost', N'Public store. Edit forum post', 0);
INSERT `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (59, N'PublicStore.DeleteForumPost', N'Public store. Delete forum post', 0);





INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (1, N'pdfsettings.logopictureid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (2, N'pdfsettings.letterpagesizeenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (3, N'pdfsettings.renderordernotes', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (4, N'pdfsettings.disablepdfinvoicesforpendingorders', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (5, N'pdfsettings.fontfilename', N'FreeSerif.ttf', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (6, N'pdfsettings.invoicefootertextcolumn1', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (7, N'pdfsettings.invoicefootertextcolumn2', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (8, N'commonsettings.subjectfieldoncontactusform', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (9, N'commonsettings.usesystememailforcontactusform', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (10, N'commonsettings.usestoredproceduresifsupported', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (11, N'commonsettings.hideadvertisementsonadminarea', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (12, N'commonsettings.sitemapenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (13, N'commonsettings.sitemapincludecategories', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (14, N'commonsettings.sitemapincludemanufacturers', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (15, N'commonsettings.sitemapincludeproducts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (16, N'commonsettings.displayjavascriptdisabledwarning', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (17, N'commonsettings.usefulltextsearch', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (18, N'commonsettings.fulltextmode', N'ExactMatch', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (19, N'commonsettings.log404errors', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (20, N'commonsettings.breadcrumbdelimiter', N'/', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (21, N'commonsettings.renderxuacompatible', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (22, N'commonsettings.xuacompatiblevalue', N'IE=edge', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (23, N'commonsettings.ignorelogwordlist', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (24, N'seosettings.pagetitleseparator', N'. ', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (25, N'seosettings.pagetitleseoadjustment', N'PagenameAfterStorename', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (26, N'seosettings.defaulttitle', N'Your store', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (27, N'seosettings.defaultmetakeywords', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (28, N'seosettings.defaultmetadescription', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (29, N'seosettings.generateproductmetadescription', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (30, N'seosettings.convertnonwesternchars', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (31, N'seosettings.allowunicodecharsinurls', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (32, N'seosettings.canonicalurlsenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (33, N'seosettings.wwwrequirement', N'NoMatter', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (34, N'seosettings.enablejsbundling', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (35, N'seosettings.enablecssbundling', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (36, N'seosettings.twittermetatags', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (37, N'seosettings.opengraphmetatags', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (38, N'seosettings.reservedurlrecordslugs', N'admin,install,recentlyviewedproducts,newproducts,compareproducts,clearcomparelist,setproductreviewhelpfulness,login,register,logout,cart,wishlist,emailwishlist,checkout,onepagecheckout,contactus,passwordrecovery,subscribenewsletter,blog,boards,inboxupdate,sentupdate,news,sitemap,search,config,eucookielawaccept,page-not-found', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (39, N'adminareasettings.defaultgridpagesize', N'15', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (40, N'adminareasettings.gridpagesizes', N'10, 15, 20, 50, 100', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (41, N'adminareasettings.richeditoradditionalsettings', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (42, N'adminareasettings.richeditorallowjavascript', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (43, N'catalogsettings.showproductsku', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (44, N'catalogsettings.showmanufacturerpartnumber', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (45, N'catalogsettings.showgtin', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (46, N'catalogsettings.showfreeshippingnotification', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (47, N'catalogsettings.allowproductsorting', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (48, N'catalogsettings.allowproductviewmodechanging', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (49, N'catalogsettings.defaultviewmode', N'grid', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (50, N'catalogsettings.showproductsfromsubcategories', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (51, N'catalogsettings.showcategoryproductnumber', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (52, N'catalogsettings.showcategoryproductnumberincludingsubcategories', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (53, N'catalogsettings.categorybreadcrumbenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (54, N'catalogsettings.showsharebutton', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (55, N'catalogsettings.pagesharecode', N'<!-- AddThis Button BEGIN --><div class="addthis_toolbox addthis_default_style "><a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2"></a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4"></a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a></div><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=nopsolutions"></script><!-- AddThis Button END -->', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (56, N'catalogsettings.productreviewsmustbeapproved', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (57, N'catalogsettings.defaultproductratingvalue', N'5', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (58, N'catalogsettings.allowanonymoususerstoreviewproduct', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (59, N'catalogsettings.notifystoreowneraboutnewproductreviews', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (60, N'catalogsettings.emailafriendenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (61, N'catalogsettings.allowanonymoususerstoemailafriend', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (62, N'catalogsettings.recentlyviewedproductsnumber', N'3', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (63, N'catalogsettings.recentlyviewedproductsenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (64, N'catalogsettings.recentlyaddedproductsnumber', N'6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (65, N'catalogsettings.recentlyaddedproductsenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (66, N'catalogsettings.compareproductsenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (67, N'catalogsettings.compareproductsnumber', N'4', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (68, N'catalogsettings.productsearchautocompleteenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (69, N'catalogsettings.productsearchautocompletenumberofproducts', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (70, N'catalogsettings.showproductimagesinsearchautocomplete', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (71, N'catalogsettings.productsearchtermminimumlength', N'3', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (72, N'catalogsettings.showbestsellersonhomepage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (73, N'catalogsettings.numberofbestsellersonhomepage', N'4', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (74, N'catalogsettings.searchpageproductsperpage', N'6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (75, N'catalogsettings.searchpageallowcustomerstoselectpagesize', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (76, N'catalogsettings.searchpagepagesizeoptions', N'6, 3, 9, 18', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (77, N'catalogsettings.productsalsopurchasedenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (78, N'catalogsettings.productsalsopurchasednumber', N'3', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (79, N'catalogsettings.enabledynamicpriceupdate', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (80, N'catalogsettings.dynamicpriceupdateajax', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (81, N'catalogsettings.numberofproducttags', N'15', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (82, N'catalogsettings.productsbytagpagesize', N'4', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (83, N'catalogsettings.productsbytagallowcustomerstoselectpagesize', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (84, N'catalogsettings.productsbytagpagesizeoptions', N'6, 3, 9, 18', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (85, N'catalogsettings.includeshortdescriptionincompareproducts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (86, N'catalogsettings.includefulldescriptionincompareproducts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (87, N'catalogsettings.includefeaturedproductsinnormallists', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (88, N'catalogsettings.displaytierpriceswithdiscounts', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (89, N'catalogsettings.ignorediscounts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (90, N'catalogsettings.ignorefeaturedproducts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (91, N'catalogsettings.ignoreacl', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (92, N'catalogsettings.ignorestorelimitations', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (93, N'catalogsettings.cacheproductprices', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (94, N'catalogsettings.maximumbackinstocksubscriptions', N'200', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (95, N'catalogsettings.manufacturersblockitemstodisplay', N'2', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (96, N'catalogsettings.displaytaxshippinginfofooter', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (97, N'catalogsettings.displaytaxshippinginfoproductdetailspage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (98, N'catalogsettings.displaytaxshippinginfoproductboxes', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (99, N'catalogsettings.displaytaxshippinginfowishlist', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (100, N'catalogsettings.displaytaxshippinginfoorderdetailspage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (101, N'catalogsettings.defaultcategorypagesizeoptions', N'6, 3, 9', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (102, N'catalogsettings.defaultcategorypagesize', N'6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (103, N'catalogsettings.defaultmanufacturerpagesizeoptions', N'6, 3, 9', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (104, N'catalogsettings.defaultmanufacturerpagesize', N'6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (105, N'localizationsettings.defaultadminlanguageid', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (106, N'localizationsettings.useimagesforlanguageselection', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (107, N'localizationsettings.seofriendlyurlsforlanguagesenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (108, N'localizationsettings.automaticallydetectlanguage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (109, N'localizationsettings.loadalllocalerecordsonstartup', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (110, N'localizationsettings.loadalllocalizedpropertiesonstartup', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (111, N'localizationsettings.loadallurlrecordsonstartup', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (112, N'localizationsettings.ignorertlpropertyforadminarea', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (113, N'customersettings.usernamesenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (114, N'customersettings.checkusernameavailabilityenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (115, N'customersettings.allowuserstochangeusernames', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (116, N'customersettings.defaultpasswordformat', N'Hashed', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (117, N'customersettings.hashedpasswordformat', N'SHA1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (118, N'customersettings.passwordminlength', N'6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (119, N'customersettings.passwordrecoverylinkdaysvalid', N'7', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (120, N'customersettings.userregistrationtype', N'Standard', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (121, N'customersettings.allowcustomerstouploadavatars', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (122, N'customersettings.avatarmaximumsizebytes', N'20000', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (123, N'customersettings.defaultavatarenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (124, N'customersettings.showcustomerslocation', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (125, N'customersettings.showcustomersjoindate', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (126, N'customersettings.allowviewingprofiles', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (127, N'customersettings.notifynewcustomerregistration', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (128, N'customersettings.hidedownloadableproductstab', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (129, N'customersettings.hidebackinstocksubscriptionstab', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (130, N'customersettings.downloadableproductsvalidateuser', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (131, N'customersettings.customernameformat', N'ShowFirstName', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (132, N'customersettings.newsletterenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (133, N'customersettings.newslettertickedbydefault', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (134, N'customersettings.hidenewsletterblock', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (135, N'customersettings.newsletterblockallowtounsubscribe', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (136, N'customersettings.onlinecustomerminutes', N'20', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (137, N'customersettings.storelastvisitedpage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (138, N'customersettings.suffixdeletedcustomers', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (139, N'customersettings.genderenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (140, N'customersettings.dateofbirthenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (141, N'customersettings.dateofbirthrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (142, N'customersettings.companyenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (143, N'customersettings.companyrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (144, N'customersettings.streetaddressenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (145, N'customersettings.streetaddressrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (146, N'customersettings.streetaddress2enabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (147, N'customersettings.streetaddress2required', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (148, N'customersettings.zippostalcodeenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (149, N'customersettings.zippostalcoderequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (150, N'customersettings.cityenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (151, N'customersettings.cityrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (152, N'customersettings.countryenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (153, N'customersettings.countryrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (154, N'customersettings.stateprovinceenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (155, N'customersettings.stateprovincerequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (156, N'customersettings.phoneenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (157, N'customersettings.phonerequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (158, N'customersettings.faxenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (159, N'customersettings.faxrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (160, N'customersettings.acceptprivacypolicyenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (161, N'addresssettings.companyenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (162, N'addresssettings.companyrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (163, N'addresssettings.streetaddressenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (164, N'addresssettings.streetaddressrequired', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (165, N'addresssettings.streetaddress2enabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (166, N'addresssettings.streetaddress2required', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (167, N'addresssettings.zippostalcodeenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (168, N'addresssettings.zippostalcoderequired', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (169, N'addresssettings.cityenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (170, N'addresssettings.cityrequired', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (171, N'addresssettings.countryenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (172, N'addresssettings.stateprovinceenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (173, N'addresssettings.phoneenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (174, N'addresssettings.phonerequired', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (175, N'addresssettings.faxenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (176, N'addresssettings.faxrequired', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (177, N'mediasettings.avatarpicturesize', N'120', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (178, N'mediasettings.productthumbpicturesize', N'415', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (179, N'mediasettings.productdetailspicturesize', N'550', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (180, N'mediasettings.productthumbpicturesizeonproductdetailspage', N'100', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (181, N'mediasettings.associatedproductpicturesize', N'220', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (182, N'mediasettings.categorythumbpicturesize', N'450', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (183, N'mediasettings.manufacturerthumbpicturesize', N'420', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (184, N'mediasettings.cartthumbpicturesize', N'80', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (185, N'mediasettings.minicartthumbpicturesize', N'70', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (186, N'mediasettings.autocompletesearchthumbpicturesize', N'20', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (187, N'mediasettings.defaultpicturezoomenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (188, N'mediasettings.maximumimagesize', N'1980', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (189, N'mediasettings.defaultimagequality', N'80', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (190, N'mediasettings.multiplethumbdirectories', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (191, N'storeinformationsettings.storeclosed', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (192, N'storeinformationsettings.storeclosedallowforadmins', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (193, N'storeinformationsettings.defaultstoretheme', N'DefaultClean', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (194, N'storeinformationsettings.allowcustomertoselecttheme', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (195, N'storeinformationsettings.displayminiprofilerinpublicstore', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (196, N'storeinformationsettings.displayeucookielawwarning', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (197, N'storeinformationsettings.facebooklink', N'http://www.facebook.com/nopCommerce', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (198, N'storeinformationsettings.twitterlink', N'https://twitter.com/nopCommerce', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (199, N'storeinformationsettings.youtubelink', N'http://www.youtube.com/user/nopCommerce', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (200, N'storeinformationsettings.googlepluslink', N'https://plus.google.com/+nopcommerce', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (201, N'externalauthenticationsettings.autoregisterenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (202, N'externalauthenticationsettings.requireemailvalidation', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (203, N'externalauthenticationsettings.activeauthenticationmethodsystemnames', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (204, N'rewardpointssettings.enabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (205, N'rewardpointssettings.exchangerate', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (206, N'rewardpointssettings.minimumrewardpointstouse', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (207, N'rewardpointssettings.pointsforregistration', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (208, N'rewardpointssettings.pointsforpurchases_amount', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (209, N'rewardpointssettings.pointsforpurchases_points', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (210, N'rewardpointssettings.pointsforpurchases_awarded', N'Complete', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (211, N'rewardpointssettings.pointsforpurchases_canceled', N'Cancelled', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (212, N'rewardpointssettings.displayhowmuchwillbeearned', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (213, N'currencysettings.displaycurrencylabel', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (214, N'currencysettings.primarystorecurrencyid', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (215, N'currencysettings.primaryexchangeratecurrencyid', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (216, N'currencysettings.activeexchangerateprovidersystemname', N'CurrencyExchange.MoneyConverter', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (217, N'currencysettings.autoupdateenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (218, N'currencysettings.lastupdatetime', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (219, N'measuresettings.basedimensionid', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (220, N'measuresettings.baseweightid', N'2', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (221, N'messagetemplatessettings.caseinvariantreplacement', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (222, N'messagetemplatessettings.color1', N'#b9babe', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (223, N'messagetemplatessettings.color2', N'#ebecee', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (224, N'messagetemplatessettings.color3', N'#dde2e6', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (225, N'shoppingcartsettings.displaycartafteraddingproduct', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (226, N'shoppingcartsettings.displaywishlistafteraddingproduct', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (227, N'shoppingcartsettings.maximumshoppingcartitems', N'1000', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (228, N'shoppingcartsettings.maximumwishlistitems', N'1000', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (229, N'shoppingcartsettings.allowoutofstockitemstobeaddedtowishlist', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (230, N'shoppingcartsettings.moveitemsfromwishlisttocart', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (231, N'shoppingcartsettings.showproductimagesonshoppingcart', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (232, N'shoppingcartsettings.showproductimagesonwishlist', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (233, N'shoppingcartsettings.showdiscountbox', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (234, N'shoppingcartsettings.showgiftcardbox', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (235, N'shoppingcartsettings.crosssellsnumber', N'4', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (236, N'shoppingcartsettings.emailwishlistenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (237, N'shoppingcartsettings.allowanonymoususerstoemailwishlist', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (238, N'shoppingcartsettings.minishoppingcartenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (239, N'shoppingcartsettings.showproductimagesinminishoppingcart', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (240, N'shoppingcartsettings.minishoppingcartproductnumber', N'5', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (241, N'shoppingcartsettings.roundpricesduringcalculation', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (242, N'shoppingcartsettings.grouptierpricesfordistinctshoppingcartitems', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (243, N'shoppingcartsettings.allowcartitemediting', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (244, N'shoppingcartsettings.renderassociatedattributevaluequantity', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (245, N'ordersettings.isreorderallowed', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (246, N'ordersettings.minordersubtotalamount', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (247, N'ordersettings.minordertotalamount', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (248, N'ordersettings.anonymouscheckoutallowed', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (249, N'ordersettings.termsofserviceonshoppingcartpage', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (250, N'ordersettings.termsofserviceonorderconfirmpage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (251, N'ordersettings.onepagecheckoutenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (252, N'ordersettings.onepagecheckoutdisplayordertotalsonpaymentinfotab', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (253, N'ordersettings.disablebillingaddresscheckoutstep', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (254, N'ordersettings.disableordercompletedpage', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (255, N'ordersettings.attachpdfinvoicetoorderplacedemail', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (256, N'ordersettings.attachpdfinvoicetoorderpaidemail', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (257, N'ordersettings.attachpdfinvoicetoordercompletedemail', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (258, N'ordersettings.returnrequestsenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (259, N'ordersettings.returnrequestreasons', N'Received Wrong Product,Wrong Product Ordered,There Was A Problem With The Product', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (260, N'ordersettings.returnrequestactions', N'Repair,Replacement,Store Credit', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (261, N'ordersettings.numberofdaysreturnrequestavailable', N'365', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (262, N'ordersettings.giftcards_activated_orderstatusid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (263, N'ordersettings.giftcards_deactivated_orderstatusid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (264, N'ordersettings.minimumorderplacementinterval', N'30', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (265, N'securitysettings.forcesslforallpages', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (266, N'securitysettings.encryptionkey', N'7439072342311569', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (267, N'securitysettings.adminareaallowedipaddresses', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (268, N'securitysettings.enablexsrfprotectionforadminarea', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (269, N'securitysettings.enablexsrfprotectionforpublicstore', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (270, N'securitysettings.honeypotenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (271, N'securitysettings.honeypotinputname', N'hpinput', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (272, N'shippingsettings.activeshippingratecomputationmethodsystemnames', N'Shipping.FixedRate', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (273, N'shippingsettings.allowpickupinstore', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (274, N'shippingsettings.pickupinstorefee', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (275, N'shippingsettings.usewarehouselocation', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (276, N'shippingsettings.notifycustomeraboutshippingfrommultiplelocations', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (277, N'shippingsettings.freeshippingoverxenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (278, N'shippingsettings.freeshippingoverxvalue', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (279, N'shippingsettings.freeshippingoverxincludingtax', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (280, N'shippingsettings.estimateshippingenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (281, N'shippingsettings.displayshipmenteventstocustomers', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (282, N'shippingsettings.displayshipmenteventstostoreowner', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (283, N'shippingsettings.shippingoriginaddressid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (284, N'shippingsettings.returnvalidoptionsifthereareany', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (285, N'shippingsettings.bypassshippingmethodselectionifonlyone', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (286, N'shippingsettings.usecuberootmethod', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (287, N'paymentsettings.activepaymentmethodsystemnames', N'Payments.CheckMoneyOrder,Payments.Manual,Payments.PayInStore,Payments.PurchaseOrder', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (288, N'paymentsettings.allowrepostingpayments', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (289, N'paymentsettings.bypasspaymentmethodselectionifonlyone', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (290, N'taxsettings.taxbasedon', N'BillingAddress', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (291, N'taxsettings.taxdisplaytype', N'ExcludingTax', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (292, N'taxsettings.activetaxprovidersystemname', N'Tax.FixedRate', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (293, N'taxsettings.defaulttaxaddressid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (294, N'taxsettings.displaytaxsuffix', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (295, N'taxsettings.displaytaxrates', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (296, N'taxsettings.pricesincludetax', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (297, N'taxsettings.allowcustomerstoselecttaxdisplaytype', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (298, N'taxsettings.hidezerotax', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (299, N'taxsettings.hidetaxinordersummary', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (300, N'taxsettings.forcetaxexclusionfromordersubtotal', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (301, N'taxsettings.shippingistaxable', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (302, N'taxsettings.shippingpriceincludestax', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (303, N'taxsettings.shippingtaxclassid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (304, N'taxsettings.paymentmethodadditionalfeeistaxable', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (305, N'taxsettings.paymentmethodadditionalfeeincludestax', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (306, N'taxsettings.paymentmethodadditionalfeetaxclassid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (307, N'taxsettings.euvatenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (308, N'taxsettings.euvatshopcountryid', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (309, N'taxsettings.euvatallowvatexemption', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (310, N'taxsettings.euvatusewebservice', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (311, N'taxsettings.euvatassumevalid', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (312, N'taxsettings.euvatemailadminwhennewvatsubmitted', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (313, N'datetimesettings.defaultstoretimezoneid', N'', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (314, N'datetimesettings.allowcustomerstosettimezone', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (315, N'blogsettings.enabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (316, N'blogsettings.postspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (317, N'blogsettings.allownotregistereduserstoleavecomments', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (318, N'blogsettings.notifyaboutnewblogcomments', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (319, N'blogsettings.numberoftags', N'15', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (320, N'blogsettings.showheaderrssurl', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (321, N'newssettings.enabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (322, N'newssettings.allownotregistereduserstoleavecomments', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (323, N'newssettings.notifyaboutnewnewscomments', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (324, N'newssettings.shownewsonmainpage', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (325, N'newssettings.mainpagenewscount', N'3', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (326, N'newssettings.newsarchivepagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (327, N'newssettings.showheaderrssurl', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (328, N'forumsettings.forumsenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (329, N'forumsettings.relativedatetimeformattingenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (330, N'forumsettings.allowcustomerstoeditposts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (331, N'forumsettings.allowcustomerstomanagesubscriptions', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (332, N'forumsettings.allowgueststocreateposts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (333, N'forumsettings.allowgueststocreatetopics', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (334, N'forumsettings.allowcustomerstodeleteposts', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (335, N'forumsettings.topicsubjectmaxlength', N'450', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (336, N'forumsettings.strippedtopicmaxlength', N'45', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (337, N'forumsettings.postmaxlength', N'4000', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (338, N'forumsettings.topicspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (339, N'forumsettings.postspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (340, N'forumsettings.searchresultspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (341, N'forumsettings.activediscussionspagesize', N'50', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (342, N'forumsettings.latestcustomerpostspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (343, N'forumsettings.showcustomerspostcount', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (344, N'forumsettings.forumeditor', N'BBCodeEditor', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (345, N'forumsettings.signaturesenabled', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (346, N'forumsettings.allowprivatemessages', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (347, N'forumsettings.showalertforpm', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (348, N'forumsettings.privatemessagespagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (349, N'forumsettings.forumsubscriptionspagesize', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (350, N'forumsettings.notifyaboutprivatemessages', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (351, N'forumsettings.pmsubjectmaxlength', N'450', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (352, N'forumsettings.pmtextmaxlength', N'4000', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (353, N'forumsettings.homepageactivediscussionstopiccount', N'5', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (354, N'forumsettings.activediscussionsfeedcount', N'25', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (355, N'forumsettings.activediscussionsfeedenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (356, N'forumsettings.forumfeedsenabled', N'False', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (357, N'forumsettings.forumfeedcount', N'10', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (358, N'forumsettings.forumsearchtermminimumlength', N'3', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (359, N'vendorsettings.defaultvendorpagesizeoptions', N'6, 3, 9', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (360, N'vendorsettings.vendorsblockitemstodisplay', N'0', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (361, N'vendorsettings.showvendoronproductdetailspage', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (362, N'vendorsettings.allowcustomerstocontactvendors', N'True', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (363, N'emailaccountsettings.defaultemailaccountid', N'1', 0);
INSERT `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (364, N'widgetsettings.activewidgetsystemnames', N'Widgets.NivoSlider', 0);





INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (1, N'Send emails', 60, N'ExMall.Services.Messages.QueuedMessagesSendTask, ExMall.Services', 1, 0, NULL, NULL, NULL);
INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (2, N'Keep alive', 300, N'ExMall.Services.Common.KeepAliveTask, ExMall.Services', 1, 0, NULL, NULL, NULL);
INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (3, N'Delete guests', 600, N'ExMall.Services.Customers.DeleteGuestsTask, ExMall.Services', 1, 0, NULL, NULL, NULL);
INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (4, N'Clear cache', 600, N'ExMall.Services.Caching.ClearCacheTask, ExMall.Services', 0, 0, NULL, NULL, NULL);
INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (5, N'Clear log', 3600, N'ExMall.Services.Logging.ClearLogTask, ExMall.Services', 0, 0, NULL, NULL, NULL);
INSERT `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (6, N'Update currency exchange rates', 900, N'ExMall.Services.Directory.UpdateExchangeRateTask, ExMall.Services', 1, 0, NULL, NULL, NULL); 





INSERT `Address` (`Id`, `FirstName`, `LastName`, `Email`, `Company`, `CountryId`, `StateProvinceId`, `City`, `Address1`, `Address2`, `ZipPostalCode`, `PhoneNumber`, `FaxNumber`, `CustomAttributes`, `CreatedOnUtc`) VALUES (1, N'John', N'Smith', N'admin@yourStore.com', N'Nop Solutions', 1, 40, N'New York', N'21 West 52nd Street', N'', N'10021', N'12345678', N'', NULL, CAST('2015-06-13 08:08:12.580' AS DateTime));





INSERT `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (1, N'5d3081ea-1fdd-47d1-9ad8-5ea7790cc165', N'admin@yourStore.com', N'admin@yourStore.com', N'98F8B5201EBCB73F7E548D09B66A1CDD24ED2A8B', 1, N'OXIsaR4=', NULL, 0, 0, 0, 0, 1, 0, 0, NULL, N'127.0.0.1', CAST('2015-06-13 08:08:11.963' AS DateTime), NULL, CAST('2015-06-13 08:08:11.964' AS DateTime), 1, 1);
INSERT `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (2, N'062d1c9f-dc22-4848-a7d5-0fc056a3306e', NULL, N'builtin@search_engine_record.com', NULL, 0, NULL, N'Built-in system guest record used for requests from search engines.', 0, 0, 0, 0, 1, 0, 1, N'SearchEngine', NULL, CAST('2015-06-13 08:08:12.813' AS DateTime), NULL, CAST('2015-06-13 08:08:12.813' AS DateTime), NULL, NULL);
INSERT `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (3, N'f16e9662-53b8-4c09-bf4a-9bf13f691510', NULL, N'builtin@background-task-record.com', NULL, 0, NULL, N'Built-in system record used for background tasks.', 0, 0, 0, 0, 1, 0, 1, N'BackgroundTask', NULL, CAST('2015-06-13 08:08:12.850' AS DateTime), NULL, CAST('2015-06-13 08:08:12.850' AS DateTime), NULL, NULL);





INSERT `CustomerAddresses` (`Customer_Id`, `Address_Id`) VALUES (1, 1);





INSERT `GenericAttribute` (`Id`, `EntityId`, `KeyGroup`, `Key`, `Value`, `StoreId`) VALUES (1, 1, N'Customer', N'FirstName', N'John', 0);
INSERT `GenericAttribute` (`Id`, `EntityId`, `KeyGroup`, `Key`, `Value`, `StoreId`) VALUES (2, 1, N'Customer', N'LastName', N'Smith', 0);





INSERT `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (1, N'Administrators', 0, 0, 1, 1, N'Administrators', 0);
INSERT `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (2, N'Forum Moderators', 0, 0, 1, 1, N'ForumModerators', 0);
INSERT `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (3, N'Registered', 0, 0, 1, 1, N'Registered', 0);
INSERT `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (4, N'Guests', 0, 0, 1, 1, N'Guests', 0);
INSERT `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (5, N'Vendors', 0, 0, 1, 1, N'Vendors', 0);





INSERT `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 1);
INSERT `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 2);
INSERT `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 3);
INSERT `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (2, 4);
INSERT `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (3, 4);





INSERT `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (1, N'1-2 days', 1);
INSERT `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (2, N'3-5 days', 5);
INSERT `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (3, N'1 week', 10);