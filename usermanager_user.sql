
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` char(12) NOT NULL,
  `ROLE` char(1) NOT NULL,
  `NAME` nvarchar(160) NOT NULL,
  `PHONE_NUMBER` varchar(11) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `BIRTHDAY` varchar(10) DEFAULT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ADDRESS` nvarchar(250) DEFAULT NULL,
  `ISLOGIN` char(1) DEFAULT NULL,
  `DLT_FLG` char(1) NOT NULL,
  `UPD_ID` varchar(10) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_ID_UNIQUE` (`USER_ID`,`PHONE_NUMBER`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ARCH0001','1','AnhLy','973560620','ly@gmail.com','1990-01-01','123456','HUE','0','0','CHILLI','2020-09-28 15:41:43',NULL);

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CATEGORY_ID` char(7) NOT NULL,
  `CATEGORY_NAME` varchar(160) NOT NULL,
  `LANGUAGE` char(2) DEFAULT 'vi',
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `CATEGORY_ID_UNIQUE` (`CATEGORY_ID`,`CATEGORY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('CLI01EN','Juice','en'),('CLI01VI','Nước Ép','vi'),('CLI02EN','Fresh Fruit','en'),('CLI02VI','Sinh Tố','vi'),('CLI03EN','Sugarcane Juice','en'),('CLI03VI','Nước Mía','vi'),('CLI04EN','Yogurt','en'),('CLI04VI','Sữa Chua','vi'),('CLI05EN','Tea','en'),('CLI05VI','Trà','vi'),('CLI06EN','Coconut Water','en'),('CLI06VI','Nước Dừa','vi'),('CLI07EN','Bowl Of Fruit','en'),('CLI07VI','Trái Cây Tô','vi'),('CLI08EN','Beverage','en'),('CLI08VI','Nước Giải Khát','vi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PRODUCT_ID` char(11) NOT NULL,
  `PRODUCT_NAME` varchar(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PRICE` int DEFAULT '0',
  `IMG_NAME` varchar(100) DEFAULT NULL,
  `CATEGORY_ID` char(7) NOT NULL,
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `PRODUCT_ID_UNIQUE` (`PRODUCT_ID`,`PRODUCT_NAME`),
  KEY `pro_cat_fk` (`CATEGORY_ID`),
  CONSTRAINT `pro_cat_fk` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('CLIJUC001VI','Cam Ép',20000,'feature-1.jpg','CLI01VI','O'),('CLIJUC002VI','Cam Dứa',20000,'feature-2.jpg','CLI01VI','O'),('CLIJUC003VI','Cam Lê',20000,'feature-3.jpg','CLI01VI','O'),('CLIJUC004VI','Cam Cà Rốt',20000,'feature-4.jpg','CLI01VI','O'),('CLIJUC005VI','Chanh Tươi',15000,'feature-5.jpg','CLI01VI','L'),('CLIJUC006VI','Chanh Xí Muội',15000,'feature-6.jpg','CLI01VI','L'),('CLIJUC007VI','Chanh Dây Truyền Thống',15000,'feature-7.jpg','CLI01VI','L'),('CLIJUC008VI','Chanh Dây Sữa',20000,'feature-8.jpg','CLI01VI','L'),('CLIJUC009VI','Táo',20000,'feature-1.jpg','CLI01VI','A'),('CLIJUC010VI','Táo Ổi',20000,'feature-2.jpg','CLI01VI','A'),('CLIJUC011VI','Táo Dứa',20000,'feature-3.jpg','CLI01VI','A'),('CLIJUC012VI','Dứa',15000,'feature-4.jpg','CLI01VI','P'),('CLIJUC013VI','Dứa Lê',15000,'feature-5.jpg','CLI01VI','P'),('CLIJUC014VI','Dứa Táo',15000,'feature-6.jpg','CLI01VI','P'),('CLIJUC015VI','Dứa Cóc',15000,'feature-7.jpg','CLI01VI','P'),('CLIJUC016VI','Dứa ổi',15000,'feature-8.jpg','CLI01VI','P'),('CLIJUC017VI','Cà Rốt',15000,'feature-4.jpg','CLI01VI','C'),('CLIJUC018VI','Cà Rốt Dứa',15000,'feature-5.jpg','CLI01VI','C'),('CLIJUC019VI','Cà Rốt Ổi',15000,'feature-6.jpg','CLI01VI','C'),('CLIJUC020VI','Rau Má Truyền Thống',10000,'feature-4.jpg','CLI01VI','R'),('CLIJUC021VI','Rau Má Sữa',12000,'feature-5.jpg','CLI01VI','R'),('CLIJUC022VI','Rau Má Sữa Dừa',15000,'feature-6.jpg','CLI01VI','R'),('CLIJUC023VI','Ổi',15000,'feature-4.jpg','CLI01VI','X'),('CLIJUC024VI','Cóc',15000,'feature-5.jpg','CLI01VI','X'),('CLIJUC025VI','Cóc Ổi',15000,'feature-6.jpg','CLI01VI','X'),('CLIJUC026VI','Lê',20000,'feature-7.jpg','CLI01VI','X'),('CLIJUC027VI','Nước Ép Lựu',20000,'feature-8.jpg','CLI01VI','X'),('CLIJUC028VI','Cần Tây',20000,'feature-8.jpg','CLI01VI','X'),('CLIJUC029VI','Cần Tây Táo Dứa',20000,'feature-8.jpg','CLI01VI','X'),('CLIJUC030VI','Bơ',20000,'lp-1.jpg','CLI02VI',''),('CLIJUC031VI','Bơ Xoài',20000,'lp-2.jpg','CLI02VI',''),('CLIJUC032VI','Bơ Thanh Long',20000,'lp-3.jpg','CLI02VI',''),('CLIJUC033VI','Bơ Cam',20000,'lp-3.jpg','CLI02VI',''),('CLIJUC034VI','Chuối',20000,'lp-3.jpg','CLI02VI',''),('CLIJUC035VI','Chuối Dâu',20000,'lp-3.jpg','CLI02VI',''),('CLIJUC036VI','Xoài',20000,'lp-1.jpg','CLI02VI','');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
