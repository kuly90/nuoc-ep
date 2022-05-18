CREATE TABLE `user` (
  `USER_ID` char(12) NOT NULL,
  `ROLE` char(1) NOT NULL,
  `NAME` varchar(160) NOT NULL,
  `PHONE_NUMBER` varchar(11) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `BIRTHDAY` varchar(10) DEFAULT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ADDRESS` varchar(250) DEFAULT NULL,
  `ISLOGIN` char(1) DEFAULT NULL,
  `DLT_FLG` char(1) NOT NULL,
  `UPD_ID` varchar(10) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_ID_UNIQUE` (`USER_ID`,`PHONE_NUMBER`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `user` VALUES ('ARCH0001','1','AnhLy','973560620','ly@gmail.com','1990-01-01','123456','HUE','0','0','CHILLI','2020-09-28 15:41:43',NULL);
CREATE TABLE `category` (
  `CATEGORY_ID` char(7) NOT NULL,
  `CATEGORY_NAME` varchar(160) NOT NULL,
  `LANGUAGE` char(2) DEFAULT 'vi',
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `CATEGORY_ID_UNIQUE` (`CATEGORY_ID`,`CATEGORY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `category` VALUES ('CLI01EN','Juice','en'),('CLI01VI','Nước Ép','vi'),('CLI02EN','Fresh Fruit','en'),('CLI02VI','Sinh Tố','vi'),('CLI03EN','Sugarcane Juice','en'),('CLI03VI','Nước Mía','vi'),('CLI04EN','Yogurt','en'),('CLI04VI','Sữa Chua','vi'),('CLI05EN','Tea','en'),('CLI05VI','Trà','vi'),('CLI06EN','Coconut Water','en'),('CLI06VI','Nước Dừa','vi'),('CLI07EN','Bowl Of Fruit','en'),('CLI07VI','Trái Cây Tô','vi'),('CLI08EN','Soft Drink','en'),('CLI08VI','Nước Giải Khát','vi');
CREATE TABLE `product` (
  `PRODUCT_ID` char(11) NOT NULL,
  `PRODUCT_NAME` varchar(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PRICE` int DEFAULT '0',
  `IMG_NAME` varchar(100) DEFAULT NULL,
  `CATEGORY_ID` char(7) NOT NULL,
  `TYPE` char(1) DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL,
  `LANGUAGE` char(2) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `PRODUCT_ID_UNIQUE` (`PRODUCT_ID`,`PRODUCT_NAME`),
  KEY `pro_cat_fk` (`CATEGORY_ID`),
  CONSTRAINT `pro_cat_fk` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
INSERT INTO `product` VALUES ('CLIPRO001VI','Cam',20000,'feature-1.jpg','CLI01VI','O',NULL,'vi'),('CLIPRO002VI','Cam Dứa',20000,'feature-2.jpg','CLI01VI','O',NULL,'vi'),('CLIPRO003VI','Cam Lê',20000,'feature-3.jpg','CLI01VI','O',NULL,'vi'),('CLIPRO004VI','Cam Cà Rốt',20000,'feature-4.jpg','CLI01VI','O',NULL,'vi'),('CLIPRO005VI','Chanh Tươi',15000,'feature-5.jpg','CLI01VI','L',NULL,'vi'),('CLIPRO006VI','Chanh Xí Muội',15000,'feature-6.jpg','CLI01VI','L',NULL,'vi'),('CLIPRO007VI','Chanh Dây Truyền Thống',15000,'feature-7.jpg','CLI01VI','L',NULL,'vi'),('CLIPRO008VI','Chanh Dây Sữa',20000,'feature-8.jpg','CLI01VI','L',NULL,'vi'),('CLIPRO009VI','Táo',20000,'feature-1.jpg','CLI01VI','A',NULL,'vi'),('CLIPRO010VI','Táo Ổi',20000,'feature-2.jpg','CLI01VI','A',NULL,'vi'),('CLIPRO011VI','Táo Dứa',20000,'feature-3.jpg','CLI01VI','A',NULL,'vi'),('CLIPRO012VI','Dứa',15000,'feature-4.jpg','CLI01VI','P',NULL,'vi'),('CLIPRO013VI','Dứa Lê',15000,'feature-5.jpg','CLI01VI','P',NULL,'vi'),('CLIPRO014VI','Dứa Táo',15000,'feature-6.jpg','CLI01VI','P',NULL,'vi'),('CLIPRO015VI','Dứa Cóc',15000,'feature-7.jpg','CLI01VI','P',NULL,'vi'),('CLIPRO016VI','Dứa ổi',15000,'feature-8.jpg','CLI01VI','P',NULL,'vi'),('CLIPRO017VI','Cà Rốt',15000,'feature-4.jpg','CLI01VI','C',NULL,'vi'),('CLIPRO018VI','Cà Rốt Dứa',15000,'feature-5.jpg','CLI01VI','C',NULL,'vi'),('CLIPRO019VI','Cà Rốt Ổi',15000,'feature-6.jpg','CLI01VI','C',NULL,'vi'),('CLIPRO020VI','Rau Má Truyền Thống',10000,'feature-4.jpg','CLI01VI','R',NULL,'vi'),('CLIPRO021VI','Rau Má Sữa',12000,'feature-5.jpg','CLI01VI','R',NULL,'vi'),('CLIPRO022VI','Rau Má Sữa Dừa',15000,'feature-6.jpg','CLI01VI','R',NULL,'vi'),('CLIPRO023VI','Ổi',15000,'feature-4.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO024VI','Cóc',15000,'feature-5.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO025VI','Cóc Ổi',15000,'feature-6.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO026VI','Lê',20000,'feature-7.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO027VI','Lựu',20000,'feature-8.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO028VI','Cần Tây',20000,'feature-8.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO029VI','Cần Tây Táo Dứa',20000,'feature-8.jpg','CLI01VI','X',NULL,'vi'),('CLIPRO030VI','Bơ',20000,'lp-1.jpg','CLI02VI','',NULL,'vi'),('CLIPRO031VI','Bơ Xoài',20000,'lp-2.jpg','CLI02VI','',NULL,'vi'),('CLIPRO032VI','Bơ Thanh Long',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO033VI','Bơ Cam',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO034VI','Chuối',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO035VI','Chuối Dâu',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO036VI','Xoài',20000,'lp-1.jpg','CLI02VI','',NULL,'vi'),('CLIPRO037VI','Xoài Chanh Dây',20000,'lp-1.jpg','CLI02VI','X',NULL,'vi'),('CLIPRO038VI','Mãn Cầu',20000,'lp-2.jpg','CLI02VI','',NULL,'vi'),('CLIPRO039VI','Sapoche',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO040VI','Đu Đủ',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO041VI','Thanh Long',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO042VI','Dưa Hấu',20000,'lp-3.jpg','CLI02VI','',NULL,'vi'),('CLIPRO043VI','Dưa Lưới',25000,'lp-1.jpg','CLI02VI','',NULL,'vi'),('CLIPRO044VI','Dâu Nho',20000,'lp-1.jpg','CLI02VI','',NULL,'vi'),('CLIPRO045VI','Thập Cẩm',20000,'lp-1.jpg','CLI02VI','',NULL,'vi'),('CLIPRO047VI','Nước Mía Truyền Thống',10000,'lp-1.jpg','CLI03VI','',NULL,'vi'),('CLIPRO048VI','Nước Mía Vị Tắc',10000,'lp-2.jpg','CLI03VI','',NULL,'vi'),('CLIPRO049VI','Nước Mía Vị Dứa',10000,'lp-3.jpg','CLI03VI','',NULL,'vi'),('CLIPRO050VI','Nước Mía Vị Chanh Muối',10000,'lp-3.jpg','CLI03VI','',NULL,'vi'),('CLIPRO051VI','Sữa Chua Dâu Tây',15000,'lp-1.jpg','CLI04VI','',NULL,'vi'),('CLIPRO052VI','Sữa Chua Mít',15000,'lp-2.jpg','CLI04VI','',NULL,'vi'),('CLIPRO053VI','Sữa Chua Xoài',15000,'lp-3.jpg','CLI04VI','',NULL,'vi'),('CLIPRO054VI','Sữa Chua Nho',15000,'lp-3.jpg','CLI04VI','',NULL,'vi'),('CLIPRO055VI','Trà Tắc Xí Muội',15000,'lp-1.jpg','CLI05VI','',NULL,'vi'),('CLIPRO056VI','Trà Chanh',15000,'lp-2.jpg','CLI05VI','',NULL,'vi'),('CLIPRO057VI','Trà Chanh Dây',15000,'lp-3.jpg','CLI05VI','',NULL,'vi'),('CLIPRO058VI','Nước Dừa Xiêm',20000,'lp-1.jpg','CLI06VI','',NULL,'vi'),('CLIPRO059VI','Sữa Dừa',20000,'lp-2.jpg','CLI06VI','',NULL,'vi'),('CLIPRO060VI','Trái Cây Tô',20000,'lp-1.jpg','CLI07VI','',NULL,'vi'),('CLIPRO061VI','Trái Cây Tô Sữa Chua',25000,'lp-2.jpg','CLI07VI','',NULL,'vi'),('CLIPRO062VI','Cocacola',12000,'lp-1.jpg','CLI08VI','',NULL,'vi'),('CLIPRO063VI','Pepsi',12000,'lp-2.jpg','CLI08VI','',NULL,'vi'),('CLIPRO064VI','Sting',12000,'lp-3.jpg','CLI08VI','',NULL,'vi'),('CLIPRO065VI','Nước Khoáng Ngọt',10000,'lp-3.jpg','CLI08VI','',NULL,'vi'),('CLIPRO066VI','Nước Khoáng Lạt',10000,'lp-3.jpg','CLI08VI','',NULL,'vi'),('CLIPRO067VI','Bò Húc',15000,'lp-3.jpg','CLI08VI','',NULL,'vi');
CREATE TABLE `customer` (
  `CUSTOMER_ID` varchar(15) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `CUSTOMER_NAME` varchar(160) NOT NULL,
  `CUSTOMER_ADD` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `CATEGORY_ID_UNIQUE` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
CREATE TABLE `order` (
  `ORDER_ID` varchar(50) NOT NULL,
  `CUSTOMER_ID` varchar(15) NOT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `PRICE` int DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  UNIQUE KEY `ORDER_ID_UNIQUE` (`ORDER_ID`),
  KEY `ord_cus_fk` (`CUSTOMER_ID`),
  CONSTRAINT `ord_cus_fk` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
CREATE TABLE `cart` (
  `CART_ID` varchar(50) NOT NULL,
  `PRODUCT_ID` char(11) NOT NULL,
  `ORDER_ID` varchar(50) NOT NULL,
  `PRICE` int(11),
  PRIMARY KEY (`CART_ID`),
  UNIQUE KEY `CART_ID_UNIQUE` (`PRODUCT_ID`),
  KEY `car_pro_fk` (`PRODUCT_ID`),
  CONSTRAINT `car_pro_fk` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  KEY `car_ord_fk` (`ORDER_ID`),
  CONSTRAINT `car_ord_fk` FOREIGN KEY (`ORDER_ID`) REFERENCES `order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;