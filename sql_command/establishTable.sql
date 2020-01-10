DROP DATABASE IF EXISTS delivery_db;
CREATE DATABASE delivery_db;
-- path: D:\108-1\database\project\sql_command\establisTable.sql
USE delivery_db;

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
    `UID` int(11) NOT NULL AUTO_INCREMENT,
    `UName` VARCHAR(255) NOT NULL,
    `account` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255), 
    PRIMARY KEY(`UID`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

-- INSERT INTO users (name,phone,address,password,account) values
-- ("adam",NULL,NULL,"test1234","testacct"),
-- ("vivian","091234",NULL,"vivi1111","vivi");
DROP TABLE IF EXISTS `platform`;
CREATE TABLE `platform` (
    `PID` int(11) NOT NULL AUTO_INCREMENT,
    `PName` VARCHAR(255) NOT NULL,
    `shippingFee` int(11) NOT NULL,
    `P_IMG_URL` VARCHAR(255), 
    PRIMARY KEY(`PID`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `platform_activity`;
CREATE TABLE `platform_activity` (
    `PID` int(11) NOT NULL,
    `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
    `PA_Name` VARCHAR(255) NOT NULL,
    `discount_shippingFee` int(11) NOT NULL,
    `FoodDiscountMode` int(11) NOT NULL,
    `FDM_arg1` float,
    `FDM_arg2` float,
    `description` VARCHAR(255),
    `P_ACT_IMG_URL` VARCHAR(255),
    `start_time` DATETIME,
    `end_time` DATETIME,
    PRIMARY KEY (`PID`, `PA_ID`),
    FOREIGN KEY (`PID`) REFERENCES `platform`(`PID`) ON DELETE CASCADE
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `Restaurant`;
CREATE TABLE `Restaurant` (
    `RID` int(11) NOT NULL AUTO_INCREMENT,
    `RName` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `R_IMG_URL` VARCHAR(255), 
    PRIMARY KEY(`RID`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `supportedPlatform`;
CREATE TABLE `supportedPlatform` (
    `RID` int(11) NOT NULL,
    `PID` int(11) NOT NULL,
    PRIMARY KEY(`RID`, `PID`), 
    FOREIGN KEY (`RID`) REFERENCES `Restaurant`(`RID`) ON DELETE CASCADE, 
    FOREIGN KEY (`PID`) REFERENCES `platform`(`PID`) ON DELETE CASCADE
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `RestaurantCategory`;
CREATE TABLE `RestaurantCategory` (
    `RID` int(11) NOT NULL,
    `CName` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`RID`), 
    FOREIGN KEY (`RID`) REFERENCES `Restaurant`(`RID`) ON DELETE CASCADE
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `Food`;
CREATE TABLE `Food` (
    `RID` int(11) NOT NULL,
    `FID` int(11) NOT NULL AUTO_INCREMENT,
    `FName`VARCHAR(255) NOT NULL,
    `price`int(11) NOT NULL,
    `F_IMG_URL` VARCHAR(255), 
    PRIMARY KEY (`RID`, `FID`), 
    FOREIGN KEY (`RID`) REFERENCES Restaurant(`RID`) ON DELETE CASCADE
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction` (
    `TID` int(11) NOT NULL AUTO_INCREMENT,
    `UID` int(11) NOT NULL,
    `RID` int(11) NOT NULL,
    `PID` int(11) NOT NULL,
    `totalPrice` int(11) NOT NULL,
    `getDiscount` int(11),
    `time` TIME, 
    PRIMARY KEY(`TID`), 
    FOREIGN KEY (`UID`) REFERENCES User(`UID`) ON DELETE CASCADE, 
    FOREIGN KEY (`RID`) REFERENCES Restaurant(`RID`) ON DELETE CASCADE, 
    FOREIGN KEY (`PID`) REFERENCES platform(`PID`) ON DELETE CASCADE 
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `TransactionFood`;
CREATE TABLE `TransactionFood` (
    `TID` int(11) NOT NULL,
    `RID` int(11) NOT NULL,
    `FID` int(11) NOT NULL,
    `num` int(11),
    FOREIGN KEY (`RID`) REFERENCES RestaurantFood(`RID`) ON DELETE CASCADE, 
    FOREIGN KEY (`FID`) REFERENCES RestaurantFood(`FID`) ON DELETE CASCADE
) ENGINE = MyISAM DEFAULT CHARSET = utf8;