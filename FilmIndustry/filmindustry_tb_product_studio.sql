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
-- Table structure for table `tb_product_studio`
--

DROP TABLE IF EXISTS `tb_product_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codeStudio` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idMovie` (`idMovie`),
  KEY `fk_studio` (`codeStudio`),
  CONSTRAINT `tb_product_studio_ibfk_1` FOREIGN KEY (`codeStudio`) REFERENCES `tb_studio` (`codeStudio`),
  CONSTRAINT `tb_product_studio_ibfk_2` FOREIGN KEY (`idMovie`) REFERENCES `tb_movie` (`idMovie`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_studio`
--

LOCK TABLES `tb_product_studio` WRITE;
/*!40000 ALTER TABLE `tb_product_studio` DISABLE KEYS */;
INSERT INTO `tb_product_studio` VALUES (1,1,1031),(2,1,2255),(3,2,2647),(4,3,6529),(5,5,2332),(6,6,5686),(7,6,9874),(8,2,47125),(9,4,3023),(10,4,10256),(11,5,2587),(12,2,35964),(13,1,54874),(14,2,54128),(15,4,9856),(16,1,10686);
/*!40000 ALTER TABLE `tb_product_studio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-05 23:13:32
