-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mobinfo
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_name` (`brand_name`),
  CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`brand_name`) REFERENCES `brand` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (155,'Samsung','Galaxy Z Fold 2',NULL),(156,'Samsung','Galaxy A32',NULL),(157,'Samsung','Galaxy A52',NULL),(158,'Samsung','Galaxy A02',NULL),(159,'Samsung','Galaxy A12',NULL),(160,'Samsung','Galaxy S21',NULL),(161,'Samsung','Galaxy S21 Ultra',NULL),(162,'Samsung','Galaxy M11',NULL),(163,'Samsung','Galaxy A01 Core',NULL),(164,'Samsung','Galaxy Note 5',NULL),(165,'Huawei','Y7a',NULL),(166,'Huawei','Nova 8 Pro',NULL),(167,'Huawei','Y9a',NULL),(168,'Huawei','Y5p',NULL),(169,'Huawei','Y8p',NULL),(170,'Huawei','Y6p',NULL),(171,'Huawei','Y7p',NULL),(172,'Huawei','Y6s',NULL),(173,'Huawei','Mate 20 Pro',NULL),(174,'Huawei','P30 Pro',NULL),(175,'Apple','iPhone 11 Pro Max',NULL),(176,'Apple','iPhone 12 Pro Max',NULL),(177,'Apple','iPhone 11 Pro',NULL),(178,'Apple','iPhone 12 Pro',NULL),(179,'Apple','iPhone XS Max',NULL),(180,'Apple','iPhone 12',NULL),(181,'Apple','iPhone 11',NULL),(182,'Apple','iPhone XR',NULL),(183,'Apple','iPhone7 Plus 128GB',NULL),(184,'Apple','iPhone X',NULL),(185,'Xiaomi','Poco M3 Pro',NULL),(186,'Xiaomi','Mi 11',NULL),(187,'Xiaomi','Mi 11 Lite',NULL),(188,'Xiaomi','Redmi Note 10S 8GB',NULL),(189,'Xiaomi','Poco F3 8GB',NULL),(190,'Xiaomi','Redmi Note 10 Pro 8GB',NULL),(191,'Xiaomi','Redmi Note 9',NULL),(192,'Xiaomi','Redmi Note 10',NULL),(193,'Xiaomi','Redmi 9T 6GB',NULL),(194,'Xiaomi','Redmi 9',NULL),(195,'Samsung','Galaxy A72',NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 21:03:47
