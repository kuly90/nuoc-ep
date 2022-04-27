
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ARCH0001','1','AnhLy','973560620','ly@gmail.com','1990-01-01','123456','HUE','0','0','CHILLI','2020-09-28 15:41:43',NULL);


-- Dump completed on 2022-04-27 10:42:38
