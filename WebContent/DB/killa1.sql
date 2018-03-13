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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `iduser` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  KEY `iduser_idx` (`iduser`),
  KEY `idproducts_idx` (`idproduct`),
  CONSTRAINT `idproducts` FOREIGN KEY (`idproduct`) REFERENCES `product` (`ProductID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,31),(1,30),(1,32),(2,31),(2,32),(3,32),(4,32),(26,30),(26,30);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `product` VALUES (30,'Datejust','Rolex',6300,'41mm Face, 3-Hands','Analog','30.png',NULL),(31,'CEO Canteen','TW Steel',350,', 3-Hands','Analog','31.png',NULL),(32,'Pilot\'s 150th','IWC Schaffhausen',13800,'46mm Face, 3-Hands ','Analog','32.png',NULL),(33,'Nautilus','Patek Philippe',39800,'41mm Face, 3-Hands','Analog','33.png',NULL),(34,'Luminor','Panerai',6900,'44mm Face, 3-Hands','Analog','34.png',NULL),(35,'Royal Oak','Audemars Piguet',41000,'41mm Face, 3-Hands','Analog','35.png',NULL),(36,'Reverso Classic','Jaeger Le-Coultre',16650,'40mm Face, 3-Hands','Analog','36.png',NULL),(37,'Olympic TimeKeeper','Omega',10000,'40mm Face, 3-Hands','Analog','37.png',NULL),(38,'Explorer','Timex',145,'39mm Face, 3-Hands','Analog','38.png',NULL),(39,'Sistem Slate','Swatch',215,'42mm Face, 3-Hands','Analog','39.png',NULL),(40,'Watch Series 3','Apple',430,'42mm Face','SmartWatch','40.png',NULL),(41,'Gear S3','Samsung',350,'42mm Face','SmartWatch','41.png',NULL),(42,'Watch E','Ticwatch',160,'42mm Face','SmartWatch','42.png',NULL),(43,'Watch Style','LG',405,'41mm Face','SmartWatch','43.png',NULL),(44,'Iconic','FitBit',300,'43mm Face','SmartWatch','44.png',NULL),(45,'Vapor','Misfit',200,'40mm Face','SmartWatch','45.png',NULL),(46,'Forerunner 735XT','Garmin',450,'43mm Face','SmartWatch','46.png',NULL),(47,'Gear Sport','Samsung',400,'43mm Face','SmartWatch','47.png',NULL),(48,'Watch S','Ticwatch',250,'42mm Face','SmartWatch','48.png',NULL),(49,'Watch Series 1','Apple',240,'42mm Face','SmartWatch','49.png',NULL),(50,'G-Shock DW5600E-1V ','Casio',38,'200m WR','Digital','50.png',NULL),(51,'T-Touch Expert','Tissot',1250,'200m WR','Digital','51.png',NULL),(52,'PQ2001 ','Pulsar',78,'150m WR','Digital','52.png',NULL),(53,'CA53W Databank Calculator ','Casio',16,'100m WR','Digital','53.png',NULL),(54,'co-Drive Navihawk A-T','Citizen',320,'200m WR','Digital','54.png',NULL),(55,'Pro Trek PRG-600 ','Casio',200,'200m WR','Digital','55.png',NULL),(56,'Classic A168WG-9 Digital ','Casio',45,'100m WR','Digital','56.png',NULL),(57,'Traverse Alpha','Suunto',345,'100m WR','Digital','57.png',NULL),(58,'XCOR/SXC Pilot Professional Titanium Analog Digital ','Luminox',1900,'200m WR','Digital','58.png',NULL),(59,'Exospace B55 Connected','Breitling',8700,'300m WR','Digital','59.png',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productreviews` (
  `productID` int(11) NOT NULL,
  `productReview` varchar(145) DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreviews`
--

LOCK TABLES `productreviews` WRITE;
/*!40000 ALTER TABLE `productreviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `productreviews` ENABLE KEYS */;
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
INSERT INTO `profile` VALUES (20,'fuck','yo',NULL,'yeah',NULL),(22,'fuck','yeah','yo','asd','asd'),(23,'pasdlo','asdoj','alskdaksjldj','asdsad','sdsadas'),(24,'pauloneil','asdasd','alasdsad','askldajskdl','asdsad'),(25,'benj','chua','tan','alksdjalskdj','asldkajsdlkj'),(26,'gamab123','gamab','boss','asdlkj','asdlkj');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1),(2,'pncorpuz','asd',2),(3,'ercurugan','asd',3),(4,'bgtan','asd',4),(5,'pggamab','asd',4),(6,'kysolomon','asd',4),(7,'fkflores','asd',4),(8,'gcu','asd',4),(9,'lanyag','asd',4),(10,'asd','asd',4),(11,'boknuy','asd',4),(12,'boknuy2','asd',4),(14,'boknuy24','asd',4),(15,'a2','asd',4),(17,'a2asd','asd',4),(18,'a2aasdasdsd','asd',4),(20,'poksd','asd',4),(22,'asdasdasd','asd',4),(23,'puloneil','asd',4),(24,'pauloneilcorpuz','asd',4),(25,'benjie','asd',4),(26,'killa','pass',4);
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

-- Dump completed on 2018-03-14  2:41:32
