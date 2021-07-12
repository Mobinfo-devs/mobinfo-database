-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mobinfo
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `name` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('Apple','American company',NULL),('Huawei','banned chinese company',NULL),('Realme','ChingCHong company',NULL),('Samsung','Korean company',NULL),('Xiaomi','Chinese company',NULL);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera`
--

DROP TABLE IF EXISTS `camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `megapixels` int unsigned NOT NULL,
  `location` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera`
--

LOCK TABLES `camera` WRITE;
/*!40000 ALTER TABLE `camera` DISABLE KEYS */;
INSERT INTO `camera` VALUES (43,12,'rear'),(44,10,'front'),(45,64,'rear'),(46,8,'rear'),(47,5,'rear'),(48,20,'front'),(49,32,'front'),(50,13,'rear'),(51,2,'rear'),(52,5,'front'),(53,48,'rear'),(54,8,'front'),(55,108,'rear'),(56,10,'rear'),(57,40,'front'),(58,16,'rear'),(59,50,'front'),(60,16,'front'),(61,40,'rear'),(62,20,'rear'),(63,24,'front'),(64,3,'rear'),(65,12,'front'),(66,7,'front'),(67,13,'front');
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `phone_id` int unsigned DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `username` (`username`),
  CONSTRAINT `favourite_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `favourite_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketshare`
--

DROP TABLE IF EXISTS `marketshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketshare` (
  `brand_name` varchar(30) DEFAULT NULL,
  `share_percentage` int unsigned DEFAULT NULL,
  `year` int unsigned NOT NULL,
  `quarter` int unsigned NOT NULL,
  KEY `brand_name` (`brand_name`),
  CONSTRAINT `marketshare_ibfk_1` FOREIGN KEY (`brand_name`) REFERENCES `brand` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketshare`
--

LOCK TABLES `marketshare` WRITE;
/*!40000 ALTER TABLE `marketshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `news_text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `phone_camera`
--

DROP TABLE IF EXISTS `phone_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_camera` (
  `phone_id` int unsigned DEFAULT NULL,
  `camera_id` int unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `camera_id` (`camera_id`),
  CONSTRAINT `phone_camera_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_camera_ibfk_2` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_camera`
--

LOCK TABLES `phone_camera` WRITE;
/*!40000 ALTER TABLE `phone_camera` DISABLE KEYS */;
INSERT INTO `phone_camera` VALUES (155,43),(155,43),(155,43),(155,44),(155,44),(156,45),(156,46),(156,47),(156,47),(156,48),(157,45),(157,43),(157,47),(157,47),(157,49),(158,50),(158,51),(158,52),(159,53),(159,47),(159,51),(159,51),(159,54),(160,43),(160,45),(160,43),(160,44),(161,55),(161,56),(161,56),(161,43),(161,57),(162,50),(162,47),(162,51),(162,54),(163,46),(163,52),(164,58),(164,59),(165,53),(165,46),(165,51),(165,51),(165,54),(166,45),(166,46),(166,51),(166,51),(166,60),(166,49),(167,45),(167,46),(167,51),(167,51),(167,60),(168,46),(168,52),(169,53),(169,46),(169,51),(169,60),(170,50),(170,47),(170,51),(170,54),(171,53),(171,46),(171,51),(171,54),(172,50),(172,54),(173,61),(173,62),(173,46),(173,63),(174,61),(174,62),(174,46),(174,64),(174,49),(175,43),(175,43),(175,43),(175,65),(176,43),(176,43),(176,43),(176,64),(176,65),(177,43),(177,43),(177,43),(177,65),(178,43),(178,43),(178,43),(178,64),(178,65),(179,43),(179,43),(179,66),(180,43),(180,43),(180,65),(181,43),(181,43),(181,65),(182,43),(182,66),(183,43),(183,43),(183,66),(184,43),(184,66),(185,53),(185,51),(185,51),(185,54),(186,55),(186,50),(186,47),(186,48),(187,45),(187,46),(187,47),(187,60),(188,45),(188,46),(188,51),(188,51),(188,67),(189,53),(189,46),(189,47),(189,48),(190,55),(190,46),(190,47),(190,51),(190,60),(191,53),(191,46),(191,51),(191,51),(191,67),(192,53),(192,46),(192,51),(192,51),(192,67),(193,53),(193,46),(193,51),(193,51),(193,54),(194,50),(194,46),(194,47),(194,51),(194,54),(195,45),(195,46),(195,43),(195,47),(195,49);
/*!40000 ALTER TABLE `phone_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_color`
--

DROP TABLE IF EXISTS `phone_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_color` (
  `phone_id` int unsigned DEFAULT NULL,
  `color_id` int unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `color_id` (`color_id`),
  CONSTRAINT `phone_color_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_color`
--

LOCK TABLES `phone_color` WRITE;
/*!40000 ALTER TABLE `phone_color` DISABLE KEYS */;
INSERT INTO `phone_color` VALUES (155,110),(155,111),(156,112),(156,113),(156,114),(156,115),(157,112),(157,113),(157,114),(157,115),(158,116),(158,117),(159,116),(159,118),(159,117),(159,119),(160,120),(160,121),(160,122),(160,123),(161,124),(161,125),(162,116),(162,126),(162,127),(163,116),(163,117),(163,119),(164,128),(164,129),(164,130),(164,131),(165,132),(165,133),(165,134),(166,116),(166,117),(166,135),(166,118),(167,132),(167,136),(167,137),(168,138),(168,132),(168,139),(169,140),(169,132),(170,116),(170,135),(170,141),(171,132),(171,142),(172,143),(172,144),(173,145),(173,146),(173,147),(173,148),(173,116),(174,149),(174,150),(174,140),(174,116),(175,151),(175,152),(175,153),(175,154),(176,152),(176,155),(176,153),(176,156),(177,151),(177,152),(177,153),(177,154),(178,152),(178,155),(178,153),(178,156),(179,151),(179,152),(179,153),(180,116),(180,118),(180,119),(180,135),(180,117),(181,116),(181,135),(181,157),(181,141),(181,119),(181,118),(182,116),(182,119),(182,157),(182,117),(182,158),(183,159),(183,116),(183,152),(183,153),(183,160),(184,151),(184,152),(185,116),(185,117),(185,161),(186,162),(186,163),(186,164),(186,165),(186,153),(186,127),(187,166),(187,167),(187,168),(188,169),(188,170),(188,171),(189,172),(189,173),(189,174),(190,175),(190,176),(190,177),(191,117),(191,116),(191,118),(192,175),(192,178),(192,179),(193,180),(193,181),(193,182),(193,183),(194,180),(194,184),(194,183),(195,112),(195,113),(195,114),(195,115);
/*!40000 ALTER TABLE `phone_color` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_text` varchar(255) DEFAULT NULL,
  `rating` int unsigned NOT NULL,
  `submission_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone_id` int unsigned DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `username` (`username`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sensor_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (51,'Accelerometer'),(52,' Barometer'),(53,' Compass'),(54,' Fingerprint '),(55,' Gyro'),(56,' Proximity'),(57,' SpO2'),(58,' HeartRate'),(59,' Face ID'),(60,'Face ID'),(61,' Accelerometer'),(62,' Fingerprint'),(63,' color spectrum');
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `phone_id` int unsigned DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `weight_grams` int unsigned DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `display_technology` varchar(255) DEFAULT NULL,
  `screen_size_inches` float DEFAULT NULL,
  `display_resolution` varchar(50) DEFAULT NULL,
  `extra_display_features` varchar(255) DEFAULT NULL,
  `built_in_memory_GB` int unsigned DEFAULT NULL,
  `ram_GB` int unsigned DEFAULT NULL,
  `battery_capacity_mah` int unsigned DEFAULT NULL,
  `price_rupees` int unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  CONSTRAINT `specification_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (155,'Android 10 OS, One UI 2.1',279,'Octa-core (1 x 3.09 GHz Kryo 585 + 3 x 2.42 GHz Kryo 585 + 4 x 1.8 GHz Kryo 585)','Qualcomm SM8250 Snapdragon 865+ (7 nm+)','Foldable Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',7.6,'1536 x 2208 Pixels (~354 PPI)','HDR10+, 120Hz refresh rate, Cover display: 6.23, Super AMOLED, (816 x 2260 pixels) + (25:9)',256,12,4500,269999),(156,'Android 11 OS, One UI 3.0',184,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.4,'1080 x 2400 Pixels (~411 PPI)','90Hz, 800 nits (peak)',128,6,5000,39999),(157,'Android 11 OS, One UI 3.0',187,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Qualcomm SM7125 Snapdragon 720G (8 nm)','Super AMOLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2400 Pixels (~405 PPI)','90Hz, 800 nits (HBM)',128,8,4500,57999),(158,'Android 10 OS, OneUI 2.0',206,'1.5 Ghz Quad Core','Mediatek MT6739W (28 nm)','PLS IPS Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'720 x 1600 Pixels (~270 PPI)',NULL,32,3,5000,16699),(159,'Android 10.0 OS',205,'Octa-core (4 x 2.35 GHz Cortex-A53 + 4 x 1.8 GHz Cortex-A53)','Mediatek MT6765 Helio P35 (12nm)','PLS IPS Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'720 x 1600 Pixels (~270 PPI)',NULL,64,4,5000,27200),(160,'Android 11 OS, One UI 3.1',171,'Octa-core (1 x 2.9 GHz Cortex-X1 + 3 x 2.80 GHz Cortex-A78 + 4 x 2.2 GHz Cortex-A55)','Exynos 2100 (5 nm)','Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',6.2,'1080 x 2400 Pixels (~424 PPI)','Eye Comfort Shield, Always-on display, 120Hz, HDR10+, 1300 nits (peak)',128,8,4000,149999),(161,'Android 11 OS, One UI 3.5',227,'Octa-core (1 x 2.9 GHz Cortex-X1 + 3 x 2.80 GHz Cortex-A78 + 4 x 2.2 GHz Cortex-A55)','Exynos 2100 (5 nm)','Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',6.8,'1440 x 3200 Pixels (~516 PPI)','Always-on display, 120Hz, HDR10+, 1500 nits (peak)',256,12,5000,217000),(162,'Android 10 OS',197,'1.8 Ghz Octa Core Cortex-A53','Qualcomm SDM450 Snapdragon 450 (14 nm)','PLS TFT Capacitive touchscreen, 16M Colors, Multitouch',6.4,'720 x 1560 Pixels (~268 PPI)',NULL,32,3,5000,24999),(163,'Android 10.0 (Go edition), OneUI 2.0',150,'1.5 Ghz Octa Core','Mediatek MT6739WW (28 nm)','PLS TFT Capacitive touchscreen, 16M Colors, Multitouch',5.3,'720 x 1480 Pixels (~311 PPI)',NULL,16,1,3000,13999),(164,'Android OS, v5.11 (Lollipop), upgradable to v6.0.1 (Marshmallow)',171,'Octa-core (4 x 2.1 GHz Cortex-A57 + 4 x 1.5 GHz Cortex-A53)','Exynos 7420 Octa','Super Amoled Capacitive Touchscreen, 16M Colors, Multitouch',5.7,'1440 x 2560 Pixels (~515 PPI)',NULL,32,4,3000,49999),(165,'Android 10.0 OS, EMUI 10.1',206,'Octa-core (4 x 2.0 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Kirin 710A (14 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.7,'1080 x 2400 Pixels (~395 PPI)',NULL,64,4,5000,35999),(166,'Android 10.0 OS, EMUI 11',184,'Octa-core (1 x 2.58 GHz Cortex-A76 & 3x2.40 GHz Cortex-A76 + 4 x 1.84 GHz Cortex-A55)','Kirin 985 5G (7 nm)','OLED Capacitive Touchscreen, 1B Colors, Multitouch',6.72,'1080 x 2676 Pixels (~429 PPI)','HDR10, 120Hz',128,8,4000,97999),(167,'Android 10.0 OS, EMUI 10.1',197,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.6,'1080 x 2400 Pixels (~397 PPI)',NULL,128,8,4200,43999),(168,'Android 10 OS, EMUI 10.1',144,'Octa-core (4 x 2.0 GHz Cortex-A53 + 4 x 1.5 GHz Cortex-A53)','Mediatek MT6762R Helio P22 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',5.45,'720 x 1440 Pixels (~295 PPI)',NULL,32,2,3020,14100),(169,'Android 10 OS, EMUI 10.1',163,'Octa-core (4 x 2.2 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Kirin 710F (12 nm)','OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.3,'1080 x 2400 Pixels (~418 PPI)',NULL,128,4,4000,32200),(170,'Android 10.0 OS',185,'Octa-core (4 x 2.0 GHz Cortex-A53 + 4 x 1.5 GHz Cortex-A53)','Mediatek MT6762R Helio P22 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.3,'720 x 1600 Pixels (~278 PPI)',NULL,64,3,5000,20899),(171,'Android 9.0 (Pie), (AOSP + HMS), EMUI 9.1',176,'Octa-core (4 x 2.2 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Hisilicon Kirin 710F (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.39,'720 x 1560 Pixels (~269 PPI)',NULL,64,4,4000,28999),(172,'Android 9.0 (Pie), EMUI 9.1',150,'Octa-core (4 x 2.3 GHz Cortex-A53 + 4 x 1.8 GHz Cortex-A53)','Mediatek MT6765 Helio P35 (12nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.09,'720 x 1560 Pixels (~282 PPI)',NULL,64,3,3020,19800),(173,'Android 9.0 (Pie), EMUI 9.0',189,'Octa-core (2 x 2.6 GHz Cortex-A76 + 2 x 1.92 GHz Cortex-A76 + 4 x 1.8 GHz Cortex-A55)','HiSilicon Kirin 980 (7 nm)','AMOLED Capacitive Touchscreen, 16M Colors, Multitouch',6.4,'1440 x 3120 Pixels (~538 PPI)','HDR10 compliant,',128,6,4200,119999),(174,'Android 9.0 (Pie), EMUI 8.1',192,'Octa-core (2 x 2.6 GHz Cortex-A76 + 2 x 1.92 GHz Cortex-A76 + 4 x 1.8 GHz Cortex-A55)','HiSilicon Kirin 980 (7 nm)','OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2340 Pixels (~398 PPI)','DCI-P3',256,8,4200,157600),(175,'IOS 13',226,NULL,'Apple A13 (7 nm+)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1242 x 2688 Pixels (~456 PPI)','oleophobic coating, 800 nits, Dolby Vision, HDR10, Wide color, gamut, True-tone, 120 Hz touch-sensing',64,4,3500,226600),(176,'IOS 14.1',228,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.7,'1284 x 2778 Pixels (~457 PPI)','HDR10, 800 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',128,6,3687,224499),(177,'IOS 13',188,NULL,'Apple A13 (7 nm+)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',5.8,'1125 x 2436 Pixels (~463 PPI)','800 nits, Dolby Vision, HDR10, Wide color, gamut, True-tone, 120 Hz touch-sensing',64,4,3190,207800),(178,'IOS 14.1',189,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'1170 x 2532 Pixels (~457 PPI)','HDR10, 800 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',128,6,2815,197099),(179,'IOS 12',208,'Hexa Core','A12 Chipset Bionic','Super AMOLED capacitive touchscreen, 16M colors, Multitouch',6.5,'1242 x 2688 Pixels (~456 PPI)','Dolby Vision/HDR10 compliant, Wide color gamut display, 3D Touch display, True-tone display, 120 Hz touch-sensing',64,4,3174,167499),(180,'IOS 14.1',164,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'1170 x 2532 Pixels (~457 PPI)','HDR10, 625 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',64,4,2815,157499),(181,'IOS 13',189,NULL,'Apple A13 (7 nm+)','Liquid Retina IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'828 x 1792 Pixels (~324 PPI)','625 nits, Dolby Vision, HDR10, True-tone, Wide color gamut, 120 Hz touch-sensing',64,4,3110,156300),(182,'IOS 12',194,'Hexa Core','A12 Chipset Bionic','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'828 x 1792 Pixels (~324 PPI)','True-tone display, Wide color gamut display, 120 Hz touch-sensing',64,3,2942,151799),(183,'iOS 10.01 upgradable to iOS 10.0.2',188,'Quad-core 2.34 GHz (2 x Hurricane & 2 x Zephyr)','Apple A10 Fusion','LED-backlit IPS LCD, capacitive touchscreen, 16M colors, Multitouch',5.5,'1080 x 1920 pixels (~326 ppi pixel density)','Wide Gamut display, 3D Touch display + home button, Display Zoom',128,3,2900,144999),(184,'IOS 11',174,'Hexa Core (2 x Monsoon + 4 x Mistral)','Apple A11 Bionic','Super AMOLED capacitive touchscreen, 16M colors, Multitouch',5.8,'1125 x 2436 Pixels (~463 PPI)','Dolby Vision/HDR10 compliant, Wide color gamut display, 3D Touch display, True-tone display',64,3,2716,144999),(185,'Android 11 OS, MIUI 12',190,'Octa-core (2 x 2.2 GHz Cortex-A76 + 6 x 2.0 GHz Cortex-A55)','MediaTek MT6833 Dimensity 700 5G (7 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2400 Pixels (~405 PPI)','90Hz, 400 nits (typ)',128,6,5000,32999),(186,'Android 11 OS, MIUI 12',196,'Octa-core (1 x 2.84 GHz Kryo 680 + 3 x 2.42 GHz Kryo 680 + 4 x 1.80 GHz Kryo 680','Qualcomm SM8350 Snapdragon 888 (5 nm)','AMOLED Capacitive Touchscreen, 1B Colors, Multitouch',6.81,'1440 x 3200 Pixels (~515 PPI)','120Hz, HDR10+, 1500 nits (peak)',256,8,4600,144999),(187,'Android 11 OS, MIUI 12',157,'Octa-core (2 x 2.3 GHz Kryo 470 Gold + 6 x 1.8 GHz Kryo 470 Silver)','Qualcomm SM7150 Snapdragon 732G (8 nm)','AMOLED Capacitive Touchscreen, 1B Colors, Multitouch',6.55,'1080 x 2400 Pixels (~402 PPI)',NULL,128,6,4250,43999),(188,'Android 11 OS',178,'Octa-core (2 x 2.05 GHz Cortex-A76 + 6 x 2.0 GHz Cortex-A55)','Mediatek Helio G95 (12 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.43,'1080 x 2400 Pixels (~409 PPI)','450 nits (typ), 1100 nits (peak)',128,8,5000,39999),(189,'Android 11 OS, MIUI 12',196,'Octa-core (1 x 3.2 GHz Kryo 585 + 3 x 2.42 GHz Kryo 585 + 4 x 1.80 GHz Kryo 585)','Qualcomm SM8250-AC Snapdragon 870 5G (7 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.67,'1080 x 2400 Pixels (~395 PPI)','120Hz, HDR10+, 1300 nits (peak)',256,8,4520,65999),(190,'Android 11 OS, MIUI 12',192,'Octa-core (2 x 2.3 GHz Kryo 470 Gold + 6 x 1.8 GHz Kryo 470 Silver)','Qualcomm SM7150 Snapdragon 732G (8 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.67,'1080 x 2400 Pixels (~395 PPI)','120Hz, HDR10, 450 nits (typ), 1200 nits (peak)',128,8,5020,47999),(191,'Android 10 OS, MIUI 11',198,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','MediaTek Helio G85 (12nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.53,'1080 x 2340 Pixels (~395 PPI)','450 nits typ. brightness (advertised)',128,4,5020,31999),(192,'Android 11 OS, MIUI 12',178,'Octa-core (2 x 2.2 GHz Kryo 460 Gold + 6 x 1.7 GHz Kryo 460 Silver)','Qualcomm SDM678 Snapdragon 678 (11 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.44,'1080 x 2400 Pixels (~409 PPI)','450 nits (typ), 1100 nits (peak)',128,4,5000,31999),(193,'Android 10 OS, MIUI 12',198,'Octa-core (4 x 2.0 GHz Kryo 260 Gold + 4 x 1.8 GHz Kryo 260 Silver)','Qualcomm Snapdragon 662 (11nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2340 Pixels (~395 PPI)','400 nits typ. brightness (advertised)',128,6,6000,31999),(194,'Android 10 OS, MIUI 12',198,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.53,'1080 x 2340 Pixels (~395 PPI)','400 nits typ. brightness (advertised)',64,4,5000,26499),(195,'Android 11 OS, One UI 3.1',203,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Qualcomm SM7125 Snapdragon 720G (8 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.7,'1080 x 2400 Pixels (~393 PPI)','90Hz, 800 nits (peak)',128,8,5000,69999);
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2021-07-12 20:56:49
