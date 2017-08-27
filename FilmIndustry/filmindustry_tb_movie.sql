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
-- Table structure for table `tb_movie`
--

DROP TABLE IF EXISTS `tb_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_movie` (
  `idMovie` int(11) NOT NULL,
  `titleMovie` varchar(50) NOT NULL,
  `id_directed` int(11) NOT NULL,
  `releaseDate` date NOT NULL,
  `budget` float DEFAULT NULL,
  `boxOffice` float DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMovie`),
  UNIQUE KEY `idMovie` (`idMovie`),
  KEY `fk_genre` (`id_genre`),
  KEY `fk_dir` (`id_directed`),
  CONSTRAINT `tb_movie_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `tb_genre` (`id_genre`),
  CONSTRAINT `tb_movie_ibfk_2` FOREIGN KEY (`id_directed`) REFERENCES `tb_directed` (`id_directed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movie`
--

LOCK TABLES `tb_movie` WRITE;
/*!40000 ALTER TABLE `tb_movie` DISABLE KEYS */;
INSERT INTO `tb_movie` VALUES (1031,'xXx',1,'2002-08-09',70000000,277400000,132,1),(2255,'Pain & Gain',2,'2013-04-11',26000000,86200000,129,2),(2332,'The Transporter',3,'2002-10-02',24000000,43900000,92,1),(2587,'Die Hard',5,'1988-07-12',28000000,140800000,132,1),(2647,'Django Unchained',5,'2012-12-11',100000000,425000000,166,9),(3023,'Mr. & Mrs. Smith',1,'2005-06-10',110000000,478200000,120,4),(5686,'Wanted',4,'2008-06-12',75000000,341400000,110,3),(6529,'I am in Love with a Church Girl',2,'2013-11-18',50000000,2387000,104,8),(9856,'I Am Legend',1,'2007-12-14',150000000,585300000,100,7),(9874,'The Expendables',5,'2010-08-03',80000000,274800000,103,1),(10256,'Fight Club',3,'1999-10-15',63000000,100900000,139,3),(10686,'Yes Man',6,'2008-12-09',70000000,223200000,104,4),(35964,'Unbreakable',6,'2000-11-22',75000000,248100000,106,5),(47125,'The Mask',6,'1994-07-19',23000000,351600000,101,4),(54128,'After Earth',2,'2013-05-01',130000000,243800000,100,7),(54874,'The Hateful Eight',5,'2015-12-07',54000000,155800000,187,6);
/*!40000 ALTER TABLE `tb_movie` ENABLE KEYS */;
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
