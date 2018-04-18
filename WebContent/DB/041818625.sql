-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: secprg
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
INSERT INTO `cart` VALUES (4,31),(4,51);
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

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productreviews` (
  `productID` int(11) NOT NULL,
  `productReview` varchar(145) DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreviews`
--

LOCK TABLES `productreviews` WRITE;
/*!40000 ALTER TABLE `productreviews` DISABLE KEYS */;
INSERT INTO `productreviews` VALUES (2,'test','1'),(30,'test','43'),(50,'test','43'),(30,'test','43'),(30,'test','43');
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
INSERT INTO `profile` VALUES (20,'fuck','yo',NULL,'yeah',NULL),(22,'fuck','yeah','yo','asd','asd'),(23,'pasdlo','asdoj','alskdaksjldj','asdsad','sdsadas'),(24,'pauloneil','asdasd','alasdsad','askldajskdl','asdsad'),(25,'benj','chua','tan','alksdjalskdj','asldkajsdlkj'),(26,'gamab123','gamab','boss','asdlkj','asdlkj'),(30,'Ton','Star','tonstar@yahoo.com','Star Tower','Star Tower'),(37,'Seth','Rollins','Kingslayer19','WWE','Raw'),(38,'Dean','Ambrose','injured@yahoo.com','Fridge','Fridge'),(39,'Xavier','Woods','xavierwoods@wwe.com','wwe','wwe'),(42,'Hey','Wassap','edward_curugan@dlsu.edu.ph','sjsja','aads'),(43,'Paulo','Corpuz','pncorpuz@gmail.com','dito lang','dito lang');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessiontracking`
--

DROP TABLE IF EXISTS `sessiontracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessiontracking` (
  `ipaddress` varchar(45) NOT NULL,
  `attempts` int(11) DEFAULT NULL,
  `logged` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ipaddress`),
  KEY `userid_idx` (`userid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessiontracking`
--

LOCK TABLES `sessiontracking` WRITE;
/*!40000 ALTER TABLE `sessiontracking` DISABLE KEYS */;
INSERT INTO `sessiontracking` VALUES ('192.168.1.1',11,'2018-04-18 18:15:55',43);
/*!40000 ALTER TABLE `sessiontracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `idtrans` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtrans`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (2,NULL,NULL,NULL),(3,3,NULL,NULL),(4,0,26,'2018/03/15'),(5,0,26,'2018/03/15'),(6,0,26,'2018/03/15'),(7,0,26,'2018/03/15'),(8,0,4,'2018/03/15'),(9,0,4,'2018/03/15'),(10,32,4,'2018/03/15'),(11,30,26,'2018/03/15'),(12,30,26,'2018/03/15'),(13,31,4,'2018/03/15'),(14,31,4,'2018/03/15'),(15,41,4,'2018/03/15'),(16,30,43,'2018/04/18'),(17,30,43,'2018/04/18');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
  `iduser` varchar(45) NOT NULL,
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
INSERT INTO `transhistory` VALUES (8,'pncorpuz','3/7/2018',30,''),(8,'pncorpuz','3/7/2018',31,''),(9,NULL,NULL,NULL,'');
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
  `password` varchar(100) DEFAULT NULL,
  `privilege` int(11) DEFAULT '0',
  `loggedin` tinyint(4) DEFAULT '0',
  `locked` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1,0,NULL),(2,'pncorpuz','asd',2,0,NULL),(3,'ercurugan','asd',3,0,NULL),(4,'bgtan','yessir',4,0,NULL),(5,'pggamab','asd',4,0,NULL),(6,'kysolomon','asd',4,0,NULL),(7,'fkflores','asd',4,0,NULL),(8,'gcu','asd',4,0,NULL),(9,'lanyag','asd',4,0,NULL),(10,'asd','asd',4,0,NULL),(11,'boknuy','asd',4,0,NULL),(12,'boknuy2','asd',4,0,NULL),(14,'boknuy24','asd',4,0,NULL),(15,'a2','asd',4,0,NULL),(17,'a2asd','asd',4,0,NULL),(18,'a2aasdasdsd','asd',4,0,NULL),(20,'poksd','asd',4,0,NULL),(22,'asdasdasd','asd',4,0,NULL),(23,'puloneil','asd',4,0,NULL),(24,'pauloneilcorpuz','asd',4,0,NULL),(25,'benjie','asd',4,0,NULL),(26,'killa','pass',4,0,NULL),(27,'pylag','f10e2821bbbea527ea02200352313bc059445190',4,0,NULL),(28,'jjulian','f10e2821bbbea527ea02200352313bc059445190',4,0,NULL),(29,'acarlos','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',4,0,NULL),(30,'tonstar','fac005388f390faa383662d5a61d79cfefea40dd3a1b02a085e3f2eeb8986dca',4,0,NULL),(33,'pncc','0805ed6bf9ea6bb671c3c6f478e826b7cffa2e86657d9e2047c52ae0efd33e34',1,0,NULL),(34,'cap','4111505f22ccaeb29ed1d8f34dc4128b8fbfb5636c084ce67caf5502e814d816',4,0,NULL),(35,'Star ton','4111505f22ccaeb29ed1d8f34dc4128b8fbfb5636c084ce67caf5502e814d816',2,0,NULL),(36,'Waka Anda','7f55a28d56dcb6f4dd64b52c528b4a4ba912ab35d40d3a32b0be2ff816a82427',2,0,NULL),(37,'BigDog','93d3037afb236f24723c43896770534ce19beaaa9d7d0899486a14847a1af841',4,0,NULL),(38,'assdf','ab38eadaeb746599f2c1ee90f8267f31f467347462764a24d71ac1843ee77fe3',4,0,NULL),(39,'boboaq','0f38c906c46ed6cc9aacd879e686b8b12e77933dacc469b08e090f3bb0f11acd',4,0,NULL),(40,'pnyy','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',1,0,NULL),(41,'yes','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',2,0,NULL),(42,'jd','fac005388f390faa383662d5a61d79cfefea40dd3a1b02a085e3f2eeb8986dca',4,0,NULL),(43,'philips','ab38eadaeb746599f2c1ee90f8267f31f467347462764a24d71ac1843ee77fe3',4,0,1);
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

-- Dump completed on 2018-04-18 18:25:53
