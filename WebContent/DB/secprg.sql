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
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (30,'Datejust','Rolex',6300,'41mm Face, 3-Hands','Analog'),(31,'CEO Canteen','TW Steel',350,', 3-Hands','Analog'),(32,'Pilot\'s 150th','IWC Schaffhausen',13800,'46mm Face, 3-Hands ','Analog'),(33,'Nautilus','Patek Philippe',39800,'41mm Face, 3-Hands','Analog'),(34,'Luminor','Panerai',6900,'44mm Face, 3-Hands','Analog'),(35,'Royal Oak','Audemars Piguet',41000,'41mm Face, 3-Hands','Analog'),(36,'Reverso Classic','Jaeger Le-Coultre',16650,'40mm Face, 3-Hands','Analog'),(37,'Olympic TimeKeeper','Omega',10000,'40mm Face, 3-Hands','Analog'),(38,'Explorer','Timex',145,'39mm Face, 3-Hands','Analog'),(39,'Sistem Slate','Swatch',215,'42mm Face, 3-Hands','Analog'),(40,'Watch Series 3','Apple',430,'42mm Face','SmartWatch'),(41,'Gear S3','Samsung',350,'42mm Face','SmartWatch'),(42,'Watch E','Ticwatch',160,'42mm Face','SmartWatch'),(43,'Watch Style','LG',405,'41mm Face','SmartWatch'),(44,'Iconic','FitBit',300,'43mm Face','SmartWatch'),(45,'Vapor','Misfit',200,'40mm Face','SmartWatch'),(46,'Forerunner 735XT','Garmin',450,'43mm Face','SmartWatch'),(47,'Gear Sport','Samsung',400,'43mm Face','SmartWatch'),(48,'Watch S','Ticwatch',250,'42mm Face','SmartWatch'),(49,'Watch Series 1','Apple',240,'42mm Face','SmartWatch'),(50,'G-Shock DW5600E-1V ','Casio',38,'200m WR','Digital'),(51,'T-Touch Expert','Tissot',1250,'200m WR','Digital'),(52,'PQ2001 ','Pulsar',78,'150m WR','Digital'),(53,'CA53W Databank Calculator ','Casio',16,'100m WR','Digital'),(54,'co-Drive Navihawk A-T','Citizen',320,'200m WR','Digital'),(55,'Pro Trek PRG-600 ','Casio',200,'200m WR','Digital'),(56,'Classic A168WG-9 Digital ','Casio',45,'100m WR','Digital'),(57,'Traverse Alpha','Suunto',345,'100m WR','Digital'),(58,'XCOR/SXC Pilot Professional Titanium Analog Digital ','Luminox',1900,'200m WR','Digital'),(59,'Exospace B55 Connected','Breitling',8700,'300m WR','Digital');
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
  `first name` varchar(45) DEFAULT NULL,
  `last name` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  KEY `iduser` (`iduser`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (2,'Paulo','Corpuz','#2810 Manila Residences Tower 1','1995-07-28',22),(3,'Edward','Curugan','#35 Maroon St.','1997-03-02',21),(4,'Benjamin','Tan','#641 Manga St.','1995-11-14',22),(5,'Paolo','Gamab','#8399 Maharlika Ave.','1996-02-08',22),(6,'Kaye','Solomon','#1 Anabu','1994-01-02',24),(7,'Fritz','Flores','#2 Manila','1993-02-03',25),(8,'Gregory','Cu','#3 Binondo','1984-03-04',34),(9,'Labing','Anyag','#4 Cebu','1991-04-05',27),(1,'AION','Admin','#2401 Malate','2017-05-06',1);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `privilege` int(11) DEFAULT '0',
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1),(2,'pncorpuz','asd',2),(3,'ercurugan','asd',3),(4,'bgtan','asd',4),(5,'pggamab','asd',4),(6,'kysolomon','asd',4),(7,'fkflores','asd',4),(8,'gcu','asd',4),(9,'lanyag','asd',4);
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

-- Dump completed on 2018-03-07  1:58:05
