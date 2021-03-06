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
-- Table structure for table `phone_sensor`
--

DROP TABLE IF EXISTS `phone_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_sensor` (
  `sensor_id` int unsigned DEFAULT NULL,
  `phone_id` int unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `sensor_id` (`sensor_id`),
  CONSTRAINT `phone_sensor_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_sensor_ibfk_2` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_sensor`
--

LOCK TABLES `phone_sensor` WRITE;
/*!40000 ALTER TABLE `phone_sensor` DISABLE KEYS */;
INSERT INTO `phone_sensor` VALUES (51,155),(52,155),(53,155),(54,155),(55,155),(56,155),(51,156),(53,156),(54,156),(56,156),(51,157),(53,157),(54,157),(55,157),(56,157),(51,158),(56,158),(51,159),(54,159),(56,159),(51,160),(52,160),(53,160),(54,160),(55,160),(56,160),(57,160),(51,161),(52,161),(53,161),(54,161),(55,161),(56,161),(51,162),(54,162),(56,162),(51,163),(51,164),(52,164),(53,164),(54,164),(55,164),(58,164),(56,164),(57,164),(51,165),(53,165),(54,165),(56,165),(51,166),(53,166),(54,166),(55,166),(56,166),(51,167),(53,167),(54,167),(55,167),(56,167),(51,168),(56,168),(51,169),(53,169),(54,169),(56,169),(51,170),(54,170),(56,170),(51,171),(53,171),(54,171),(56,171),(51,172),(54,172),(56,172),(51,173),(52,173),(53,173),(59,173),(54,173),(55,173),(56,173),(60,174),(61,174),(53,174),(54,174),(55,174),(56,174),(51,175),(59,175),(52,175),(53,175),(55,175),(56,175),(51,176),(52,176),(53,176),(59,176),(55,176),(56,176),(51,177),(59,177),(52,177),(53,177),(55,177),(56,177),(51,178),(53,178),(59,178),(55,178),(56,178),(51,179),(52,179),(53,179),(55,179),(56,179),(51,180),(53,180),(59,180),(55,180),(56,180),(51,181),(59,181),(52,181),(53,181),(55,181),(56,181),(51,182),(52,182),(53,182),(59,182),(55,182),(56,182),(51,183),(55,183),(56,183),(53,183),(52,183),(62,183),(51,184),(59,184),(52,184),(53,184),(55,184),(56,184),(51,185),(53,185),(54,185),(56,185),(51,186),(53,186),(54,186),(55,186),(56,186),(51,187),(53,187),(54,187),(55,187),(56,187),(51,188),(53,188),(54,188),(55,188),(56,188),(51,189),(63,189),(53,189),(54,189),(55,189),(56,189),(51,190),(53,190),(54,190),(55,190),(56,190),(51,191),(53,191),(54,191),(56,191),(51,192),(53,192),(54,192),(55,192),(56,192),(51,193),(54,193),(55,193),(56,193),(51,194),(54,194),(55,194),(56,194),(51,195),(55,195),(56,195),(53,195),(54,195);
/*!40000 ALTER TABLE `phone_sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 21:03:46
