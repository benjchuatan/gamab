-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: secprg
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `file_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (30,'Datejust','Rolex',6300,'41mm Face, 3-Hands','Analog','heywassap.jpg',NULL),(31,'CEO Canteen','TW Steel',350,', 3-Hands','Analog','31.png',NULL),(32,'Pilot\'s 150th','IWC Schaffhausen',13800,'46mm Face, 3-Hands ','Analog','30.png',NULL),(33,'Nautilus','Patek Philippe',39800,'41mm Face, 3-Hands','Analog','32.png',NULL),(34,'Luminor','Panerai',6900,'44mm Face, 3-Hands','Analog','33.png',NULL),(35,'Royal Oak','Audemars Piguet',41000,'41mm Face, 3-Hands','Analog',NULL,NULL),(36,'Reverso Classic','Jaeger Le-Coultre',16650,'40mm Face, 3-Hands','Analog',NULL,NULL),(37,'Olympic TimeKeeper','Omega',10000,'40mm Face, 3-Hands','Analog',NULL,NULL),(38,'Explorer','Timex',145,'39mm Face, 3-Hands','Analog',NULL,NULL),(39,'Sistem Slate','Swatch',215,'42mm Face, 3-Hands','Analog',NULL,NULL),(40,'Watch Series 3','Apple',430,'42mm Face','SmartWatch',NULL,NULL),(41,'Gear S3','Samsung',350,'42mm Face','SmartWatch',NULL,NULL),(42,'Watch E','Ticwatch',160,'42mm Face','SmartWatch',NULL,NULL),(43,'Watch Style','LG',405,'41mm Face','SmartWatch',NULL,NULL),(44,'Iconic','FitBit',300,'43mm Face','SmartWatch',NULL,NULL),(45,'Vapor','Misfit',200,'40mm Face','SmartWatch',NULL,NULL),(46,'Forerunner 735XT','Garmin',450,'43mm Face','SmartWatch',NULL,NULL),(47,'Gear Sport','Samsung',400,'43mm Face','SmartWatch',NULL,NULL),(48,'Watch S','Ticwatch',250,'42mm Face','SmartWatch',NULL,NULL),(49,'Watch Series 1','Apple',240,'42mm Face','SmartWatch',NULL,NULL),(50,'G-Shock DW5600E-1V ','Casio',38,'200m WR','Digital',NULL,NULL),(51,'T-Touch Expert','Tissot',1250,'200m WR','Digital',NULL,NULL),(52,'PQ2001 ','Pulsar',78,'150m WR','Digital',NULL,NULL),(53,'CA53W Databank Calculator ','Casio',16,'100m WR','Digital',NULL,NULL),(54,'co-Drive Navihawk A-T','Citizen',320,'200m WR','Digital',NULL,NULL),(55,'Pro Trek PRG-600 ','Casio',200,'200m WR','Digital',NULL,NULL),(56,'Classic A168WG-9 Digital ','Casio',45,'100m WR','Digital',NULL,NULL),(57,'Traverse Alpha','Suunto',345,'100m WR','Digital',NULL,NULL),(58,'XCOR/SXC Pilot Professional Titanium Analog Digital ','Luminox',1900,'200m WR','Digital',NULL,NULL),(59,'Exospace B55 Connected','Breitling',8700,'300m WR','Digital',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `iduser` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `billing_add` varchar(100) DEFAULT NULL,
  `shipping_add` varchar(100) DEFAULT NULL,
  KEY `iduser` (`iduser`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (20,'fuck','yo',NULL,'yeah',NULL),(22,'fuck','yeah','yo','asd','asd'),(23,'pasdlo','asdoj','alskdaksjldj','asdsad','sdsadas');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transhistory`
--

DROP TABLE IF EXISTS `transhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transhistory` (
  `transID` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  KEY `username` (`username`),
  KEY `productID` (`productID`),
  CONSTRAINT `transhistory_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `transhistory_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transhistory`
--

LOCK TABLES `transhistory` WRITE;
/*!40000 ALTER TABLE `transhistory` DISABLE KEYS */;
INSERT INTO `transhistory` VALUES (8,'pncorpuz','3/7/2018',30),(8,'pncorpuz','3/7/2018',31);
/*!40000 ALTER TABLE `transhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `privilege` int(11) DEFAULT '0',
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1),(2,'pncorpuz','asd',2),(3,'ercurugan','asd',3),(4,'bgtan','asd',4),(5,'pggamab','asd',4),(6,'kysolomon','asd',4),(7,'fkflores','asd',4),(8,'gcu','asd',4),(9,'lanyag','asd',4),(10,'asd','asd',4),(11,'boknuy','asd',4),(12,'boknuy2','asd',4),(14,'boknuy24','asd',4),(15,'a2','asd',4),(17,'a2asd','asd',4),(18,'a2aasdasdsd','asd',4),(20,'poksd','asd',4),(22,'asdasdasd','asd',4),(23,'puloneil','asd',4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07  7:54:47
