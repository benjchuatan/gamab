-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secprg
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (30,'Datejust','Rolex',6300,'41mm Face, 3-Hands','Analog','30.png',80),(31,'CEO Canteen','hjghjbhjb',350,', 3-Hands','Analog','31.png',81),(32,'Pilot\'s 150th','IWC Schaffhausen',13880,'46mm Face, 3-Hands ','Analog','32.png',82),(33,'Nautilus','Patek Philippe',39800,'41mm Face, 3-Hands','Analog','33.png',83),(34,'Luminor','Panerai',6900,'44mm Face, 3-Hands','Analog','34.png',84),(35,'Royal Oak','Audemars Piguet',41000,'41mm Face, 3-Hands','Analog','35.png',85),(36,'Reverso Classic','Jaeger Le-Coultre',16650,'40mm Face, 3-Hands','Analog','36.png',88),(37,'Olympic TimeKeeper','Omega',10000,'40mm Face, 3-Hands','Analog','37.png',88),(38,'Explorer','Timex',145,'39mm Face, 3-Hands','Analog','38.png',88),(39,'Sistem Slate','Swatch',215,'42mm Face, 3-Hands','Analog','39.png',88),(40,'Watch Series 3','Apple',430,'42mm Face','SmartWatch','40.png',88),(41,'Gear S3','Samsung',350,'42mm Face','SmartWatch','41.png',88),(42,'Watch E','Ticwatch',160,'42mm Face','SmartWatch','42.png',88),(43,'Watch Style','LG',405,'41mm Face','SmartWatch','43.png',88),(44,'Iconic','FitBit',300,'43mm Face','SmartWatch','44.png',88),(45,'Vapor','Misfit',200,'40mm Face','SmartWatch','45.png',88),(46,'Forerunner 735XT','Garmin',450,'43mm Face','SmartWatch','46.png',88),(47,'Gear Sport','Samsung',400,'43mm Face','SmartWatch','47.png',88),(48,'Watch S','Ticwatch',250,'42mm Face','SmartWatch','48.png',20),(49,'Watch Series 1','Apple',240,'42mm Face','SmartWatch','49.png',30),(50,'G-Shock DW5600E-1V ','Casio',38,'200m WR','Digital','50.png',55),(51,'T-Touch Expert','Tissot',1250,'200m WR','Digital','51.png',55),(52,'PQ2001 ','Pulsar',78,'150m WR','Digital','52.png',55),(53,'CA53W Databank Calculator ','Casio',16,'100m WR','Digital','53.png',90),(54,'co-Drive Navihawk A-T','Citizen',320,'200m WR','Digital','54.png',55),(55,'Pro Trek PRG-600 ','Casio',200,'200m WR','Digital','55.png',74),(56,'Classic A168WG-9 Digital ','Casio',45,'100m WR','Digital','56.png',44),(57,'Traverse Alpha','Suunto',345,'100m WR','Digital','57.png',55),(58,'XCOR/SXC Pilot Professional Titanium Analog Digital ','Luminox',1900,'200m WR','Digital','58.png',50),(59,'Exospace B55 Connected','Breitling',8700,'300m WR','Digital','59.png',60),(60,'asdf',NULL,NULL,NULL,NULL,NULL,67),(61,'TestAna','ads',8000,'asda',NULL,'1521073544457-image.png',68),(62,'TestAnaa','',8000000,'',NULL,'1521074127746-image.png',69),(63,'TestAnaaaa','',555,'','digital','1521082387499-image.png',70),(64,'Digits','woohoo',5000,'','analog','1521082444305-image.png',77),(65,'What is','',50000,'','analog','1521083026017-image.png',77),(66,'Hello','j',5,'','analog','1521083642338-image.png',77),(67,'Hello','j',5,'','analog','1521083695381-image.png',77),(68,'Mk 45','Ton Star',1738,'Extremis','Digital','1523863513603-image.png',77),(69,'Heyp','adssd',10000,'asdfa','Analog','1523889904860-image.png',77),(70,'Hey','Bar',192222,'wassap','Analog','1523898603527-image.png',77),(71,'Heya','wassap',8000,'hello','Smart','1523907185878-image.png',99),(72,'Heya','wassap',8000,'hello','Smart','1523907268035-image.png',99),(73,'Heyo','It',900,'is','Smart','1523907305958-image.png',888),(74,'d','ssd',111,'ss','SmartWatch','1523907368380-image.png',66);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-17  3:36:39
