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
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1),(2,'pncorpuz','asd',2),(3,'ercurugan','asd',3),(4,'bgtan','yessir',4),(5,'pggamab','asd',4),(6,'kysolomon','asd',4),(7,'fkflores','asd',4),(8,'gcu','asd',4),(9,'lanyag','asd',4),(10,'asd','asd',4),(11,'boknuy','asd',4),(12,'boknuy2','asd',4),(14,'boknuy24','asd',4),(15,'a2','asd',4),(17,'a2asd','asd',4),(18,'a2aasdasdsd','asd',4),(20,'poksd','asd',4),(22,'asdasdasd','asd',4),(23,'puloneil','asd',4),(24,'pauloneilcorpuz','asd',4),(25,'benjie','asd',4),(26,'killa','pass',4),(27,'pylag','f10e2821bbbea527ea02200352313bc059445190',4),(28,'jjulian','f10e2821bbbea527ea02200352313bc059445190',4),(29,'acarlos','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',4),(30,'tonstar','fac005388f390faa383662d5a61d79cfefea40dd3a1b02a085e3f2eeb8986dca',4),(33,'pncc','0805ed6bf9ea6bb671c3c6f478e826b7cffa2e86657d9e2047c52ae0efd33e34',1),(34,'cap','4111505f22ccaeb29ed1d8f34dc4128b8fbfb5636c084ce67caf5502e814d816',4),(35,'Star ton','4111505f22ccaeb29ed1d8f34dc4128b8fbfb5636c084ce67caf5502e814d816',2),(36,'Waka Anda','7f55a28d56dcb6f4dd64b52c528b4a4ba912ab35d40d3a32b0be2ff816a82427',2),(37,'BigDog','93d3037afb236f24723c43896770534ce19beaaa9d7d0899486a14847a1af841',4),(38,'assdf','ab38eadaeb746599f2c1ee90f8267f31f467347462764a24d71ac1843ee77fe3',4),(39,'boboaq','0f38c906c46ed6cc9aacd879e686b8b12e77933dacc469b08e090f3bb0f11acd',4),(40,'pnyy','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',1),(41,'yes','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6',2),(42,'jd','fac005388f390faa383662d5a61d79cfefea40dd3a1b02a085e3f2eeb8986dca',4);
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

-- Dump completed on 2018-04-17  1:38:29
