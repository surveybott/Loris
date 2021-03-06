SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE `issues_categories`;
LOCK TABLES `issues_categories` WRITE;
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (9,'Behavioural Battery');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (10,'Behavioural Instruments');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (11,'Data Entry');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (12,'Examiners');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (13,'Imaging');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (16,'Other');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (14,'Technical Issue');
INSERT INTO `issues_categories` (`categoryID`, `categoryName`) VALUES (15,'User Accounts');
UNLOCK TABLES;
SET FOREIGN_KEY_CHECKS=1;
