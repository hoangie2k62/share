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
-- Table structure for table `tblchi`
--

DROP TABLE IF EXISTS `tblchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblchi` (
  `date` date NOT NULL,
  `MSNV` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `empolyees` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `purpose` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`date`,`MSNV`,`purpose`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblchi`
--

LOCK TABLES `tblchi` WRITE;
/*!40000 ALTER TABLE `tblchi` DISABLE KEYS */;
INSERT INTO `tblchi` VALUES ('2018-05-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',123456789),('2018-11-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',30000000),('2018-12-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',30000000),('2019-01-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',30000000),('2019-02-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',30000000),('2019-03-01','17020769','Nguyễn Văn Hoàng','lương','hàng tháng',30000000),('2019-04-01','17020769','Nguyễn Văn Hoàng','ăn uống','ăn cơm trưa',12000),('2019-05-01','17020769','Nguyễn Văn Hoàng','ăn uống','ăn cơm trưa',25000),('2019-05-04','17020769','Nguyễn Văn Hoàng','mua sắm','ăn cơm trưa',25000);
/*!40000 ALTER TABLE `tblchi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-20 22:20:11
