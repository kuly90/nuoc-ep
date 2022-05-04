
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
