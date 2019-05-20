-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblthu`
--

DROP TABLE IF EXISTS `tblthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblthu` (
  `date` date NOT NULL,
  `revenues` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`date`,`revenues`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthu`
--

LOCK TABLES `tblthu` WRITE;
/*!40000 ALTER TABLE `tblthu` DISABLE KEYS */;
INSERT INTO `tblthu` VALUES ('2018-05-01','17020769','đầu tư','ăn cơm trưa','10000000'),('2018-11-01','17020769','du lịch','lên sapa','40000000'),('2018-12-01','17020769','ăn uống','quỹ liên hoan','35000000'),('2019-01-01','17020769','thưởng','thưởng tiền cuối năm','30000000'),('2019-02-01','17020769','du lịch','đi tắm biển','20000000'),('2019-03-01','17020769','mua sắm','dụng cụ phòng','10000000'),('2019-04-01','17020769','ăn uống','ăn cơm trưa','50000000'),('2019-05-01','17020769','đầu tư','ăn cơm trưa','2000000'),('2019-05-02','17020769','ăn uống','thivh','25000');
/*!40000 ALTER TABLE `tblthu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-20 22:20:12
