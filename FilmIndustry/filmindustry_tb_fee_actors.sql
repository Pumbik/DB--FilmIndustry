-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: filmindustry
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_fee_actors`
--

DROP TABLE IF EXISTS `tb_fee_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fee_actors` (
  `idFee` int(11) NOT NULL AUTO_INCREMENT,
  `idMovie` int(11) NOT NULL,
  `codeActor` int(11) NOT NULL,
  `fee` float NOT NULL,
  PRIMARY KEY (`idFee`),
  KEY `fk_movFee` (`idMovie`),
  KEY `fk_actor` (`codeActor`),
  CONSTRAINT `tb_fee_actors_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `tb_movie` (`idMovie`),
  CONSTRAINT `tb_fee_actors_ibfk_2` FOREIGN KEY (`codeActor`) REFERENCES `tb_actors` (`codeActor`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fee_actors`
--

LOCK TABLES `tb_fee_actors` WRITE;
/*!40000 ALTER TABLE `tb_fee_actors` DISABLE KEYS */;
INSERT INTO `tb_fee_actors` VALUES (1,2255,2,1000000),(2,1031,1,750000),(3,2332,3,1500000),(4,5686,4,850000),(5,3023,4,960000),(6,3023,5,1200000),(7,10256,5,690000),(8,2587,6,1450000),(9,35964,6,1000000),(10,35964,7,500000),(11,54874,7,560000),(12,54128,12,870000),(13,54128,13,600000),(14,9856,12,1260000),(15,10686,14,850000),(16,47125,14,420000),(17,9874,3,560000),(18,9874,10,740000),(19,9874,6,1550000),(20,6529,16,780000),(21,2647,15,680000),(22,2647,7,685000),(23,2647,11,880000);
/*!40000 ALTER TABLE `tb_fee_actors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-05 23:13:31
