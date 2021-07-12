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
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (110,'Mystic Black'),(111,'Mystic Bronze'),(112,'Awesome Black'),(113,'Awesome White'),(114,'Awesome Blue'),(115,'Awesome Violet'),(116,'Black'),(117,'Blue'),(118,'White'),(119,'Red'),(120,'Phantom Gray'),(121,'Phantom White'),(122,'Phantom Violet'),(123,'Phantom Pink'),(124,'Phantom Black'),(125,'Phantom Silver'),(126,'Metallic Blue'),(127,'Violet'),(128,'Black Sapphire'),(129,'Gold Platinum'),(130,'Silver Titan'),(131,'White Pearl'),(132,'Midnight Black'),(133,'Brush Gold'),(134,'Crush Green'),(135,'Green'),(136,'Space Silver'),(137,'Sakura Pink'),(138,'Mint Green'),(139,'Phantom Blue'),(140,'Breathing Crystal'),(141,'Purple'),(142,'Aurora Blue'),(143,'Orchid Blue'),(144,'Starry Black'),(145,'Emerald Green'),(146,'Midnight Blue'),(147,'Twilight'),(148,'Pink Gold'),(149,'Aurora'),(150,'Amber Sunrise'),(151,'Space Gray'),(152,'Silver'),(153,'Gold'),(154,'Midnight Green'),(155,'Graphite'),(156,'Pacific Blue'),(157,'Yellow'),(158,'Coral'),(159,'Jet Black'),(160,'Rose Gold'),(161,'Poco Yellow'),(162,'Horizon Blue'),(163,'Cloud White'),(164,'Midnight Gray'),(165,'Special Edition Blue'),(166,'Boba Black'),(167,'Peach Pink'),(168,'Bubblegum Blue'),(169,'Deep Sea Blue (Ocean Blue)'),(170,'Shadow Black (Onyx Gray)'),(171,'(Frost White) Pebble White'),(172,'Arctic White'),(173,'Night Black'),(174,'Deep Ocean Blue'),(175,'Onyx Gray'),(176,'Glacier Blue'),(177,'Gradient Bronze'),(178,'Pebble White'),(179,'Lake Green'),(180,'Carbon Gray'),(181,'Twilight Blue'),(182,'Sunrise Orange'),(183,'Ocean Green'),(184,'Sunset Purple');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 21:03:48
