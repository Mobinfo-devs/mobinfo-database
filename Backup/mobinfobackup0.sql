-- MySQL dump 10.13  Distrib 5.5.48, for Win64 (x86)
--
-- Host: localhost    Database: mobinfo
-- ------------------------------------------------------
-- Server version	5.5.48

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `name` varchar(30) NOT NULL,
  `description` text,
  `logo_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('Apple','Apple was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne in 1976 to develop and sell Wozniak\'s Apple I personal computer. It was incorporated by Jobs and Wozniak as Apple Computer, Inc. in 1977, and sales of its computers, including the Apple II, grew quickly. They went public in 1980 to instant financial success. Over the next few years, Apple shipped new computers featuring innovative graphical user interfaces, such as the original Macintosh, announced with the critically acclaimed advert \'1984\'. However, the high price of its products and limited application library caused problems, as did power struggles between executives. In 1985, Wozniak departed Apple amicably, while Jobs resigned to found NeXT, taking some Apple co-workers with him.\r\n\r\nAs the market for personal computers expanded and evolved through the 1990s, Apple lost considerable market share to the lower-priced duopoly of Microsoft Windows on Intel PC clones. The board recruited CEO Gil Amelio, who prepared the struggling company for eventual success with extensive reforms, product focus and layoffs in his 500 day tenure. In 1997, Gil bought NeXT, to resolve Apple\'s unsuccessful OS strategy and bring back Steve Jobs, who replaced Amelio as CEO later that year. Apple returned to profitability under the revitalizing \'Think different\' campaign, launching the iMac and iPod, opening a retail chain of Apple Stores in 2001, and acquiring numerous companies to broaden their software portfolio. In 2007, the company launched the iPhone to critical acclaim and financial success. In 2011, Jobs resigned as CEO due to health complications, and died two months later. He was succeeded by Tim Cook.\r\n\r\nIn August 2018, Apple became the first publicly traded U.S. company to be valued at over $1 trillion and the first valued over $2 trillion two years later. It has a high level of brand loyalty and is ranked as the world\'s most valuable brand; as of January 2021, there are 1.65 billion Apple products in use worldwide.','https://logos-download.com/wp-content/uploads/2017/07/Apple_Logo_1998.svg'),('Huawei','The company was founded in 1987 by Ren Zhengfei, a former Deputy Regimental Chief in the People\'s Liberation Army. Initially focused on manufacturing phone switches, Huawei has expanded its business to include building telecommunications networks, providing operational and consulting services and equipment to enterprises inside and outside of China, and manufacturing communications devices for the consumer market. Huawei has over 194,000 employees as of December 2019.\r\n\r\nHuawei has deployed its products and services in more than 170 countries and areas. It overtook Ericsson in 2012 as the largest telecommunications equipment manufacturer in the world, and overtook Apple in 2018 as the second-largest manufacturer of smartphones in the world, behind Samsung Electronics. In 2018, Huawei reported that its annual revenue was US$108.5 billion. In July 2020, Huawei surpassed Samsung and Apple to become the top smartphone brand (in number of phones shipped) in the world for the first time.\r\n\r\nHuawei’s mission is to bring digital to every person, home and organization for a fully connected, intelligent world. To this end, we will: drive ubiquitous connectivity and promote equal access to networks to lay the foundation for the intelligent world; provide the ultimate computing power to deliver ubiquitous cloud and intelligence; build powerful digital platforms to help all industries and organizations become more agile, efficient, and dynamic; redefine user experience with AI, offering consumers more personalized and intelligent experiences across all scenarios, including home, travel, office, entertainment, and fitness & health.','https://www.kindpng.com/picc/m/199-1996327_logo-huawei-hd-png-download.png'),('Realme','REALMEMEE','https://image01.realme.net/general/20181116/1542370418184.jpg'),('Samsung','The Samsung Group is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses in which most of them united under the Samsung brand, and is the largest South Korean chaebol. As of 2020, Samsung has the 8th highest global brand Samsung was founded by Lee Byung-chul in 1938 as a trading company. Over the next three decades, the group diversified into areas including food processing, textiles, insurance, securities, and retail. Samsung entered the electronics industry in the late 1960s and the construction and shipbuilding industries in the mid-1970s; these areas would drive its subsequent growth. Following Lee\'s death in 1987, Samsung was separated into five business groups – Samsung Group, Shinsegae Group, CJ Group and Hansol Group, and Joongang Group.\r\n\r\nNotable Samsung industrial affiliates include Samsung Electronics which is the world\'s largest information technology company, consumer electronics maker and chipmaker measured by 2017 revenues.\r\n\r\nSamsung is committed to complying with local laws and regulations as well as applying a strict global code of conduct to all employees. It believes that ethical management is not only a tool for responding to the rapid changes in the global business environment, but also a vehicle for building trust with its various stakeholders including customers, shareholders, employees, business partners and local communities. With an aim to become one of the most ethical companies In the world, Samsung continues to train its employees and operate monitoring systems, while practicing fair and transparent corporate management.','https://logos-download.com/wp-content/uploads/2016/02/Samsung_Logo_2005.svg'),('Test Brand','Test brand is brand thats being tested','https://cpmr-islands.org/wp-content/uploads/sites/4/2019/07/Test-Logo-Small-Black-transparent-1.png'),('Xiaomi','Xiaomi Corporation registered in Asia as Xiaomi Inc., is a Chinese multinational electronics company founded in April 2010 and headquartered in Beijing. The \'MI\' in their logo stands for \'Mobile Internet\'. It also has other meanings, including \'Mission Impossible\', because Xiaomi faced many challenges that had seemed impossible to defy in their early days. Xiaomi released its first smartphone in August 2011 and rapidly gained market share in China to become the country\'s largest smartphone company in 2014. At the start of second quarter of 2018, Xiaomi was the world\'s fourth-largest smartphone manufacturer, leading in both the largest market, China, and the second-largest market, India. Xiaomi has 18,170 employees worldwide. It has expanded to other markets including Greater China, Singapore, Japan, South Korea, Russia, South Africa and most countries and regions in Southeast Asia and Europe. According to Forbes, Lei Jun, the founder and CEO, has an estimated net worth of US$12.5 billion. Xiaomi is the world\'s 4th most valuable technology start-up after receiving US$1.1 billion funding from investors, making Xiaomi\'s valuation more than US$46 billion. Ranked 468th, Xiaomi is the youngest company on Fortune Global 500 list for 2019. In 2019, Xiaomi\'s mobile phone shipments reached 125 million units, ranking fourth globally since 2018. According to Canalys, in the second quarter of 2021, Xiaomi was the second biggest smartphone maker globally in terms of sales.','https://logos-download.com/wp-content/uploads/2016/05/Xiaomi_Logo_2021.svg');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera`
--

DROP TABLE IF EXISTS `camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camera` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `megapixels` int(10) unsigned NOT NULL,
  `location` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera`
--

LOCK TABLES `camera` WRITE;
/*!40000 ALTER TABLE `camera` DISABLE KEYS */;
INSERT INTO `camera` VALUES (1,2,'rear'),(2,12,'rear'),(3,10,'front'),(4,64,'rear'),(5,8,'rear'),(6,5,'rear'),(7,32,'front'),(8,20,'front'),(9,13,'rear'),(10,5,'front'),(11,48,'rear'),(12,8,'front'),(13,108,'rear'),(14,10,'rear'),(15,40,'front'),(16,16,'rear'),(17,50,'front'),(18,16,'front'),(19,40,'rear'),(20,20,'rear'),(21,24,'front'),(22,3,'rear'),(23,12,'front'),(24,7,'front'),(25,13,'front'),(26,2,'front');
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Mystic Black'),(2,'Mystic Bronze'),(3,'Awesome Black'),(4,'Awesome White'),(5,'Awesome Blue'),(6,'Awesome Violet'),(7,'Black'),(8,'Blue'),(9,'White'),(10,'Red'),(11,'Phantom Gray'),(12,'Phantom White'),(13,'Phantom Violet'),(14,'Phantom Pink'),(15,'Phantom Black'),(16,'Phantom Silver'),(17,'Metallic Blue'),(18,'Violet'),(19,'Black Sapphire'),(20,'Gold Platinum'),(21,'Silver Titan'),(22,'White Pearl'),(23,'Midnight Black'),(24,'Brush Gold'),(25,'Crush Green'),(26,'Green'),(27,'Space Silver'),(28,'Sakura Pink'),(29,'Mint Green'),(30,'Phantom Blue'),(31,'Breathing Crystal'),(32,'Purple'),(33,'Aurora Blue'),(34,'Orchid Blue'),(35,'Starry Black'),(36,'Emerald Green'),(37,'Midnight Blue'),(38,'Twilight'),(39,'Pink Gold'),(40,'Aurora'),(41,'Amber Sunrise'),(42,'Space Gray'),(43,'Silver'),(44,'Gold'),(45,'Midnight Green'),(46,'Graphite'),(47,'Pacific Blue'),(48,'Yellow'),(49,'Coral'),(50,'Jet Black'),(51,'Rose Gold'),(52,'Poco Yellow'),(53,'Horizon Blue'),(54,'Cloud White'),(55,'Midnight Gray'),(56,'Special Edition Blue'),(57,'Boba Black'),(58,'Peach Pink'),(59,'Bubblegum Blue'),(60,'Deep Sea Blue (Ocean Blue)'),(61,'Shadow Black (Onyx Gray)'),(62,'(Frost White) Pebble White'),(63,'Arctic White'),(64,'Night Black'),(65,'Deep Ocean Blue'),(66,'Onyx Gray'),(67,'Glacier Blue'),(68,'Gradient Bronze'),(69,'Pebble White'),(70,'Lake Green'),(71,'Carbon Gray'),(72,'Twilight Blue'),(73,'Sunrise Orange'),(74,'Ocean Green'),(75,'Sunset Purple'),(76,'Pink');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourite` (
  `phone_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `username` (`username`),
  CONSTRAINT `favourite_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `favourite_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketshare` (
  `brand_name` varchar(30) DEFAULT NULL,
  `share_percentage` int(10) unsigned DEFAULT NULL,
  `year` int(10) unsigned NOT NULL,
  `quarter` int(10) unsigned NOT NULL,
  KEY `brand_name` (`brand_name`),
  CONSTRAINT `marketshare_ibfk_1` FOREIGN KEY (`brand_name`) REFERENCES `brand` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `news_text` text,
  `news_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Xiaomi Mi Pad 5 appears in official teaser with keyboard accessory','https://fdn.gsmarena.com/imgroot/news/21/08/xiaomi-mi-pad-5-official-keyboard-poster/-1200x500m/gsmarena_001.jpg','Xiaomi has dropped a new teaser for the Mi Pad 5 that\'s arriving on August 10. The new poster shows the Mi Pad 5\'s screen with rounded corners, and you can also see the keyboard cover case has a leather texture on the surface. Xiaomi has dropped a new teaser for the Mi Pad 5 that\'s arriving on August 10. The new poster shows the Mi Pad 5\'s screen with rounded corners, and you can also see the keyboard cover case has a leather texture on the surface. While we wait for Xiaomi to confirm a few more features of the Mi Pad 5 before its official unveiling on August 10, rumors claim the Chinese company will launch three tablets under the Mi Pad 5 series - Mi Pad 5, Mi Pad 5 Lite, and Mi Pad 5 Pro.\r\n\r\nAll three slates are rumored to pack 10.9\" IPS LCDs with a 120Hz refresh rate and 240Hz touch sampling rate. However, the vanilla and Pro versions will be powered by the Snapdragon 870, whereas the Lite model will have a Snapdragon 860 SoC at the helm.','2021-08-09 15:24:45'),(2,'Mi Smart Band 6 updated with flashlight function','https://fdn.gsmarena.com/imgroot/news/21/08/mi-smart-band-6-firmware-update-flashlight/-1200w5/gsmarena_001.jpg','Xiaomi’s Mi Smart Band 6 is now receiving a firmware update that brings a useful feature. With firmware version 1.0.4.38 a new flashlight feature has been added along with support for more languages. The update is now rolling out to UK, Czech Republic, and Kuwait, with more regions to follow soon. Before downloading the Mi Smart Band 6 update, you’ll need to make sure your MI Fit app is updated to version 5.3.0. Back in April, the Mi Smart Band 6 received a firmware update which added breathing monitoring during sleep tracking. This came with the app version 5.0.\r\n\r\nThe Xiaomi MI Smart Band 6 has a 1.56-inch AMOLED touch screen and supports continuous hear rate monitoring, SpO2 monitoring, fitness tracking, music control, and alarm functions.','2021-08-09 15:25:58'),(3,'Samsung Galaxy Z Flip3 has its full spec list leaked along with new renders','https://fdn.gsmarena.com/imgroot/news/21/08/galaxy-z-flip3-full-specs/-1200/gsmarena_001.jpg','A few hours ago a comprehensive leak gave us all the details regarding Samsung\'s upcoming Galaxy Z Fold3, and now it\'s time for the exact same thing to happen to the other foldable smartphone the company plans on unveiling at its August 11 event - the Galaxy Z Flip3. At this rate, we\'re not sure the event itself serves any purpose other than outing some promo videos. Anyway, let\'s dive right in. The Galaxy Z Flip3 will run Android 11 with One UI 3.1 on top, even though Google will probably release Android 12 to its Pixels within days or weeks after the Flip\'s announcement. That\'s how it goes with Samsung\'s August unveilings, though. The phone has a 6.7-inch internal display with 1080x2640 resolution and 120 Hz refresh rate, as well as a 1.9-inch 260x512 external screen. The glass \'back\' that folds in half is covered in Gorilla Glass Victus. Running the show is the Qualcomm Snapdragon 888, paired with 8GB of RAM and 128/256GB of non-expandable UFS 3.1 storage. The main camera system consists of a 12 MP f/1.8 main sensor with OIS, and a 12 MP f/2.2 fixed-focus ultrawide. On the inside screen there\'s a 10 MP f/2.4 hole-punch selfie camera. The phone has a side-mounted fingerprint sensor, an IPx8 rating for water resistance (but not dust), dual-SIM support through one nanoSIM and one eSIM, and a 3,300 mAh battery. The device measures 166 x 72.2 x 6.9mm when opened, and weighs 183g.\r\n\r\nIt\'s expected to start at €1,099 in the Eurozone, and possibly $1,099 in the US. It will be offered in Phantom Black, Cream, and Lavender color versions. Samsung has tested the hinge mechanism 200,000 times, which means you should be fine for more than five years of opening and closing it 100 times a day.\r\n\r\n','2021-08-09 15:31:14');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `weight_grams` int(10) unsigned DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `display_technology` varchar(255) DEFAULT NULL,
  `screen_size_inches` float DEFAULT NULL,
  `display_resolution` varchar(50) DEFAULT NULL,
  `extra_display_features` varchar(255) DEFAULT NULL,
  `built_in_memory_GB` int(10) unsigned DEFAULT NULL,
  `ram_GB` int(10) unsigned DEFAULT NULL,
  `battery_capacity_mah` int(10) unsigned DEFAULT NULL,
  `price_rupees` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_name` (`brand_name`),
  CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`brand_name`) REFERENCES `brand` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'Samsung','Galaxy Z Fold 2','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-z-fold2-5g.jpg','Android 10 OS, One UI 2.1',279,'Octa-core (1 x 3.09 GHz Kryo 585 + 3 x 2.42 GHz Kryo 585 + 4 x 1.8 GHz Kryo 585)','Qualcomm SM8250 Snapdragon 865+ (7 nm+)','Foldable Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',7.6,'1536 x 2208 Pixels (~354 PPI)','HDR10+, 120Hz refresh rate, Cover display: 6.23, Super AMOLED, (816 x 2260 pixels) + (25:9)',256,12,4500,269999),(2,'Samsung','Galaxy A72','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a72-4g.jpg','Android 11 OS, One UI 3.1',203,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Qualcomm SM7125 Snapdragon 720G (8 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.7,'1080 x 2400 Pixels (~393 PPI)','90Hz, 800 nits (peak)',128,8,5000,69999),(3,'Samsung','Galaxy A32','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a32-4g-new.jpg','Android 11 OS, One UI 3.0',184,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.4,'1080 x 2400 Pixels (~411 PPI)','90Hz, 800 nits (peak)',128,6,5000,39999),(4,'Samsung','Galaxy A52','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a52-4g.jpg','Android 11 OS, One UI 3.0',187,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Qualcomm SM7125 Snapdragon 720G (8 nm)','Super AMOLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2400 Pixels (~405 PPI)','90Hz, 800 nits (HBM)',128,8,4500,57999),(5,'Samsung','Galaxy A02','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a02.jpg','Android 10 OS, OneUI 2.0',206,'1.5 Ghz Quad Core','Mediatek MT6739W (28 nm)','PLS IPS Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'720 x 1600 Pixels (~270 PPI)',NULL,32,3,5000,16699),(6,'Samsung','Galaxy A12','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a12-sm-a125.jpg','Android 10.0 OS',205,'Octa-core (4 x 2.35 GHz Cortex-A53 + 4 x 1.8 GHz Cortex-A53)','Mediatek MT6765 Helio P35 (12nm)','PLS IPS Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'720 x 1600 Pixels (~270 PPI)',NULL,64,4,5000,27200),(7,'Samsung','Galaxy S21','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s21-5g-r.jpg','Android 11 OS, One UI 3.1',171,'Octa-core (1 x 2.9 GHz Cortex-X1 + 3 x 2.80 GHz Cortex-A78 + 4 x 2.2 GHz Cortex-A55)','Exynos 2100 (5 nm)','Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',6.2,'1080 x 2400 Pixels (~424 PPI)','Eye Comfort Shield, Always-on display, 120Hz, HDR10+, 1300 nits (peak)',128,8,4000,149999),(8,'Samsung','Galaxy S21 Ultra','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s21-ultra-5g-.jpg','Android 11 OS, One UI 3.5',227,'Octa-core (1 x 2.9 GHz Cortex-X1 + 3 x 2.80 GHz Cortex-A78 + 4 x 2.2 GHz Cortex-A55)','Exynos 2100 (5 nm)','Dynamic AMOLED 2X Capacitive Touchscreen, 16M Colors, Multitouch',6.8,'1440 x 3200 Pixels (~516 PPI)','Always-on display, 120Hz, HDR10+, 1500 nits (peak)',256,12,5000,217000),(9,'Samsung','Galaxy M11','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-m11-sm-m115.jpg','Android 10 OS',197,'1.8 Ghz Octa Core Cortex-A53','Qualcomm SDM450 Snapdragon 450 (14 nm)','PLS TFT Capacitive touchscreen, 16M Colors, Multitouch',6.4,'720 x 1560 Pixels (~268 PPI)',NULL,32,3,5000,24999),(10,'Samsung','Galaxy A01 Core','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a01core-sm-a013.jpg','Android 10.0 (Go edition), OneUI 2.0',150,'1.5 Ghz Octa Core','Mediatek MT6739WW (28 nm)','PLS TFT Capacitive touchscreen, 16M Colors, Multitouch',5.3,'720 x 1480 Pixels (~311 PPI)',NULL,16,1,3000,13999),(11,'Samsung','Galaxy Note 5','https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-note5.jpg','Android OS, v5.11 (Lollipop), upgradable to v6.0.1 (Marshmallow)',171,'Octa-core (4 x 2.1 GHz Cortex-A57 + 4 x 1.5 GHz Cortex-A53)','Exynos 7420 Octa','Super Amoled Capacitive Touchscreen, 16M Colors, Multitouch',5.7,'1440 x 2560 Pixels (~515 PPI)',NULL,32,4,3000,49999),(12,'Huawei','Y7a','https://fdn2.gsmarena.com/vv/bigpic/huawei-p-smart-2021.jpg','Android 10.0 OS, EMUI 10.1',206,'Octa-core (4 x 2.0 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Kirin 710A (14 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.7,'1080 x 2400 Pixels (~395 PPI)',NULL,64,4,5000,35999),(13,'Huawei','Nova 8 Pro','https://fdn2.gsmarena.com/vv/bigpic/huawei-nova-8-pro-5g.jpg','Android 10.0 OS, EMUI 11',184,'Octa-core (1 x 2.58 GHz Cortex-A76 & 3x2.40 GHz Cortex-A76 + 4 x 1.84 GHz Cortex-A55)','Kirin 985 5G (7 nm)','OLED Capacitive Touchscreen, 1B Colors, Multitouch',6.72,'1080 x 2676 Pixels (~429 PPI)','HDR10, 120Hz',128,8,4000,97999),(14,'Huawei','Y9a','https://fdn2.gsmarena.com/vv/bigpic/huawei-y9a.jpg','Android 10.0 OS, EMUI 10.1',197,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.6,'1080 x 2400 Pixels (~397 PPI)',NULL,128,8,4200,43999),(15,'Huawei','Y5p','https://fdn2.gsmarena.com/vv/bigpic/huawei-y5p.jpg','Android 10 OS, EMUI 10.1',144,'Octa-core (4 x 2.0 GHz Cortex-A53 + 4 x 1.5 GHz Cortex-A53)','Mediatek MT6762R Helio P22 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',5.45,'720 x 1440 Pixels (~295 PPI)',NULL,32,2,3020,14100),(16,'Huawei','Y8p','https://fdn2.gsmarena.com/vv/bigpic/huawei-enjoy-10s.jpg','Android 10 OS, EMUI 10.1',163,'Octa-core (4 x 2.2 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Kirin 710F (12 nm)','OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.3,'1080 x 2400 Pixels (~418 PPI)',NULL,128,4,4000,32200),(17,'Huawei','Y6p','https://fdn2.gsmarena.com/vv/bigpic/huawei-y6p.jpg','Android 10.0 OS',185,'Octa-core (4 x 2.0 GHz Cortex-A53 + 4 x 1.5 GHz Cortex-A53)','Mediatek MT6762R Helio P22 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.3,'720 x 1600 Pixels (~278 PPI)',NULL,64,3,5000,20899),(18,'Huawei','Y7p','https://fdn2.gsmarena.com/vv/bigpic/huawei-y7p-.jpg','Android 9.0 (Pie), (AOSP + HMS), EMUI 9.1',176,'Octa-core (4 x 2.2 GHz Cortex-A73 + 4 x 1.7 GHz Cortex-A53)','Hisilicon Kirin 710F (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.39,'720 x 1560 Pixels (~269 PPI)',NULL,64,4,4000,28999),(19,'Huawei','Y6s','https://fdn2.gsmarena.com/vv/bigpic/huawei-y6s.jpg','Android 9.0 (Pie), EMUI 9.1',150,'Octa-core (4 x 2.3 GHz Cortex-A53 + 4 x 1.8 GHz Cortex-A53)','Mediatek MT6765 Helio P35 (12nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.09,'720 x 1560 Pixels (~282 PPI)',NULL,64,3,3020,19800),(20,'Huawei','Mate 20 Pro','https://fdn2.gsmarena.com/vv/bigpic/huawei-mate-20-pro-1.jpg','Android 9.0 (Pie), EMUI 9.0',189,'Octa-core (2 x 2.6 GHz Cortex-A76 + 2 x 1.92 GHz Cortex-A76 + 4 x 1.8 GHz Cortex-A55)','HiSilicon Kirin 980 (7 nm)','AMOLED Capacitive Touchscreen, 16M Colors, Multitouch',6.4,'1440 x 3120 Pixels (~538 PPI)','HDR10 compliant,',128,6,4200,119999),(21,'Huawei','P30 Pro','https://fdn2.gsmarena.com/vv/bigpic/huawei-p30-pro.jpg','Android 9.0 (Pie), EMUI 8.1',192,'Octa-core (2 x 2.6 GHz Cortex-A76 + 2 x 1.92 GHz Cortex-A76 + 4 x 1.8 GHz Cortex-A55)','HiSilicon Kirin 980 (7 nm)','OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2340 Pixels (~398 PPI)','DCI-P3',256,8,4200,157600),(22,'Apple','iPhone 11 Pro Max','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro.jpg','IOS 13',226,NULL,'Apple A13 (7 nm+)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1242 x 2688 Pixels (~456 PPI)','oleophobic coating, 800 nits, Dolby Vision, HDR10, Wide color, gamut, True-tone, 120 Hz touch-sensing',64,4,3500,226600),(23,'Apple','iPhone 12 Pro Max','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro-max-.jpg','IOS 14.1',228,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.7,'1284 x 2778 Pixels (~457 PPI)','HDR10, 800 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',128,6,3687,224499),(24,'Apple','iPhone 11 Pro','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro-max-.jpg','IOS 13',188,NULL,'Apple A13 (7 nm+)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',5.8,'1125 x 2436 Pixels (~463 PPI)','800 nits, Dolby Vision, HDR10, Wide color, gamut, True-tone, 120 Hz touch-sensing',64,4,3190,207800),(25,'Apple','iPhone 12 Pro','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg','IOS 14.1',189,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'1170 x 2532 Pixels (~457 PPI)','HDR10, 800 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',128,6,2815,197099),(26,'Apple','iPhone XS Max','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-xs-max-new1.jpg','IOS 12',208,'Hexa Core','A12 Chipset Bionic','Super AMOLED capacitive touchscreen, 16M colors, Multitouch',6.5,'1242 x 2688 Pixels (~456 PPI)','Dolby Vision/HDR10 compliant, Wide color gamut display, 3D Touch display, True-tone display, 120 Hz touch-sensing',64,4,3174,167499),(27,'Apple','iPhone 12','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12.jpg','IOS 14.1',164,'Hexa-core (2 x 3.1 GHz Firestorm + 4 x 1.8 GHz Icestorm)','Apple A14 Bionic (5 nm)','Super Retina XDR OLED Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'1170 x 2532 Pixels (~457 PPI)','HDR10, 625 nits (typ), 1200 nits (peak), Dolby Vision, Wide color gamut, True-tone',64,4,2815,157499),(28,'Apple','iPhone 11','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11.jpg','IOS 13',189,NULL,'Apple A13 (7 nm+)','Liquid Retina IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'828 x 1792 Pixels (~324 PPI)','625 nits, Dolby Vision, HDR10, True-tone, Wide color gamut, 120 Hz touch-sensing',64,4,3110,156300),(29,'Apple','iPhone XR','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-xr-new.jpg','IOS 12',194,'Hexa Core','A12 Chipset Bionic','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.1,'828 x 1792 Pixels (~324 PPI)','True-tone display, Wide color gamut display, 120 Hz touch-sensing',64,3,2942,151799),(30,'Apple','iPhone7 Plus 128GB','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-7-plus-r2.jpg','iOS 10.01 upgradable to iOS 10.0.2',188,'Quad-core 2.34 GHz (2 x Hurricane & 2 x Zephyr)','Apple A10 Fusion','LED-backlit IPS LCD, capacitive touchscreen, 16M colors, Multitouch',5.5,'1080 x 1920 pixels (~326 ppi pixel density)','Wide Gamut display, 3D Touch display + home button, Display Zoom',128,3,2900,144999),(31,'Apple','iPhone X','https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-x.jpg','IOS 11',174,'Hexa Core (2 x Monsoon + 4 x Mistral)','Apple A11 Bionic','Super AMOLED capacitive touchscreen, 16M colors, Multitouch',5.8,'1125 x 2436 Pixels (~463 PPI)','Dolby Vision/HDR10 compliant, Wide color gamut display, 3D Touch display, True-tone display',64,3,2716,144999),(32,'Xiaomi','Poco M3 Pro','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-m3-pro-5g.jpg','Android 11 OS, MIUI 12',190,'Octa-core (2 x 2.2 GHz Cortex-A76 + 6 x 2.0 GHz Cortex-A55)','MediaTek MT6833 Dimensity 700 5G (7 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2400 Pixels (~405 PPI)','90Hz, 400 nits (typ)',128,6,5000,32999),(33,'Xiaomi','Mi 11','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-mi11.jpg','Android 11 OS, MIUI 12',196,'Octa-core (1 x 2.84 GHz Kryo 680 + 3 x 2.42 GHz Kryo 680 + 4 x 1.80 GHz Kryo 680','Qualcomm SM8350 Snapdragon 888 (5 nm)','AMOLED Capacitive Touchscreen, 1B Colors, Multitouch',6.81,'1440 x 3200 Pixels (~515 PPI)','120Hz, HDR10+, 1500 nits (peak)',256,8,4600,144999),(34,'Xiaomi','Mi 11 Lite','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-mi-11-lite-4g.jpg','Android 11 OS, MIUI 12',157,'Octa-core (2 x 2.3 GHz Kryo 470 Gold + 6 x 1.8 GHz Kryo 470 Silver)','Qualcomm SM7150 Snapdragon 732G (8 nm)','AMOLED Capacitive Touchscreen, 1B Colors, Multitouch',6.55,'1080 x 2400 Pixels (~402 PPI)',NULL,128,6,4250,43999),(35,'Xiaomi','Redmi Note 10S 8GB','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note10s.jpg','Android 11 OS',178,'Octa-core (2 x 2.05 GHz Cortex-A76 + 6 x 2.0 GHz Cortex-A55)','Mediatek Helio G95 (12 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.43,'1080 x 2400 Pixels (~409 PPI)','450 nits (typ), 1100 nits (peak)',128,8,5000,39999),(36,'Xiaomi','Poco F3 8GB','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-f3.jpg','Android 11 OS, MIUI 12',196,'Octa-core (1 x 3.2 GHz Kryo 585 + 3 x 2.42 GHz Kryo 585 + 4 x 1.80 GHz Kryo 585)','Qualcomm SM8250-AC Snapdragon 870 5G (7 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.67,'1080 x 2400 Pixels (~395 PPI)','120Hz, HDR10+, 1300 nits (peak)',256,8,4520,65999),(37,'Xiaomi','Redmi Note 10 Pro 8GB','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note10-pro.jpg','Android 11 OS, MIUI 12',192,'Octa-core (2 x 2.3 GHz Kryo 470 Gold + 6 x 1.8 GHz Kryo 470 Silver)','Qualcomm SM7150 Snapdragon 732G (8 nm)','AMOLED Capacitive Touchscreen, Multitouch',6.67,'1080 x 2400 Pixels (~395 PPI)','120Hz, HDR10, 450 nits (typ), 1200 nits (peak)',128,8,5020,47999),(38,'Xiaomi','Redmi Note 9','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note-9.jpg','Android 10 OS, MIUI 11',198,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','MediaTek Helio G85 (12nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.53,'1080 x 2340 Pixels (~395 PPI)','450 nits typ. brightness (advertised)',128,4,5020,31999),(39,'Xiaomi','Redmi Note 10','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note10--.jpg','Android 11 OS, MIUI 12',178,'Octa-core (2 x 2.2 GHz Kryo 460 Gold + 6 x 1.7 GHz Kryo 460 Silver)','Qualcomm SDM678 Snapdragon 678 (11 nm)','Super AMOLED Capacitive Touchscreen, Multitouch',6.44,'1080 x 2400 Pixels (~409 PPI)','450 nits (typ), 1100 nits (peak)',128,4,5000,31999),(40,'Xiaomi','Redmi 9T 6GB','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-9-power.jpg','Android 10 OS, MIUI 12',198,'Octa-core (4 x 2.0 GHz Kryo 260 Gold + 4 x 1.8 GHz Kryo 260 Silver)','Qualcomm Snapdragon 662 (11nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.5,'1080 x 2340 Pixels (~395 PPI)','400 nits typ. brightness (advertised)',128,6,6000,31999),(41,'Xiaomi','Redmi 9','https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-9-power.jpg','Android 10 OS, MIUI 12',198,'Octa-core (2 x 2.0 GHz Cortex-A75 + 6 x 1.8 GHz Cortex-A55)','Mediatek Helio G80 (12 nm)','IPS LCD Capacitive Touchscreen, 16M Colors, Multitouch',6.53,'1080 x 2340 Pixels (~395 PPI)','400 nits typ. brightness (advertised)',64,4,5000,26499),(42,'Samsung','Test Phone','https://www.seekpng.com/png/detail/26-264779_clipart-clip-art-smart-phone.png','Android 11 OS, One UI 3.0',196,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Mediakek 9999','Tianma LCD',5.4,'720','30HZ, super smooth',16,2,3200,89999),(48,'Test Brand','Test Phone 3.0','https://www.seekpng.com/png/detail/26-264779_clipart-clip-art-smart-phone.png','Android 11 OS, One UI 3.0',196,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Mediakek 9999','Tianma LCD',5.4,'720x1860','30HZ, super smooth',16,1,3200,38811),(49,'Test Brand','Test Phone 2.5','https://www.seekpng.com/png/detail/26-264779_clipart-clip-art-smart-phone.png','Android 11 OS, One UI 3.0',196,'Octa-core (2 x 2.3 GHz Kryo 465 Gold + 6 x 1.8 GHz Kryo 465 Silver)','Mediakek 919','Tianma LCD',5.4,'720x1860','30HZ, super smooth',16,1,3200,38811);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_camera`
--

DROP TABLE IF EXISTS `phone_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_camera` (
  `phone_id` int(10) unsigned DEFAULT NULL,
  `camera_id` int(10) unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `camera_id` (`camera_id`),
  CONSTRAINT `phone_camera_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_camera_ibfk_2` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_camera`
--

LOCK TABLES `phone_camera` WRITE;
/*!40000 ALTER TABLE `phone_camera` DISABLE KEYS */;
INSERT INTO `phone_camera` VALUES (2,4),(2,5),(2,2),(2,6),(2,7),(4,4),(4,2),(4,6),(4,6),(4,7),(5,9),(5,1),(5,10),(6,11),(6,6),(6,1),(6,1),(6,12),(7,2),(7,4),(7,2),(7,3),(8,13),(8,14),(8,14),(8,2),(8,15),(9,9),(9,6),(9,1),(9,12),(10,5),(10,10),(11,16),(11,17),(12,11),(12,5),(12,1),(12,1),(12,12),(13,4),(13,5),(13,1),(13,1),(13,18),(13,7),(14,4),(14,5),(14,1),(14,1),(14,18),(15,5),(15,10),(16,11),(16,5),(16,1),(16,18),(17,9),(17,6),(17,1),(17,12),(18,11),(18,5),(18,1),(18,12),(19,9),(19,12),(20,19),(20,20),(20,5),(20,21),(21,19),(21,20),(21,5),(21,22),(21,7),(22,2),(22,2),(22,2),(22,23),(23,2),(23,2),(23,2),(23,22),(23,23),(24,2),(24,2),(24,2),(24,23),(25,2),(25,2),(25,2),(25,22),(25,23),(26,2),(26,2),(26,24),(27,2),(27,2),(27,23),(28,2),(28,2),(28,23),(29,2),(29,24),(30,2),(30,2),(30,24),(31,2),(31,24),(32,11),(32,1),(32,1),(32,12),(33,13),(33,9),(33,6),(33,8),(34,4),(34,5),(34,6),(34,18),(35,4),(35,5),(35,1),(35,1),(35,25),(36,11),(36,5),(36,6),(36,8),(37,13),(37,5),(37,6),(37,1),(37,18),(38,11),(38,5),(38,1),(38,1),(38,25),(39,11),(39,5),(39,1),(39,1),(39,25),(40,11),(40,5),(40,1),(40,1),(40,12),(41,9),(41,5),(41,6),(41,1),(41,12),(1,2),(1,2),(1,2),(1,3),(3,4),(3,5),(3,6),(3,6),(3,8),(42,4),(42,5),(42,1),(42,26),(42,4),(42,5),(42,1),(42,26),(48,4),(48,5),(48,1),(48,26),(49,4),(49,5),(49,1),(49,26),(49,10);
/*!40000 ALTER TABLE `phone_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_color`
--

DROP TABLE IF EXISTS `phone_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_color` (
  `phone_id` int(10) unsigned DEFAULT NULL,
  `color_id` int(10) unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `color_id` (`color_id`),
  CONSTRAINT `phone_color_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_color`
--

LOCK TABLES `phone_color` WRITE;
/*!40000 ALTER TABLE `phone_color` DISABLE KEYS */;
INSERT INTO `phone_color` VALUES (2,3),(2,4),(2,5),(2,6),(4,3),(4,4),(4,5),(4,6),(5,7),(5,8),(6,7),(6,9),(6,8),(6,10),(7,11),(7,12),(7,13),(7,14),(8,15),(8,16),(9,7),(9,17),(9,18),(10,7),(10,8),(10,10),(11,19),(11,20),(11,21),(11,22),(12,23),(12,24),(12,25),(13,7),(13,8),(13,26),(13,9),(14,23),(14,27),(14,28),(15,29),(15,23),(15,30),(16,31),(16,23),(17,7),(17,26),(17,32),(18,23),(18,33),(19,34),(19,35),(20,36),(20,37),(20,38),(20,39),(20,7),(21,40),(21,41),(21,31),(21,7),(22,42),(22,43),(22,44),(22,45),(23,43),(23,46),(23,44),(23,47),(24,42),(24,43),(24,44),(24,45),(25,43),(25,46),(25,44),(25,47),(26,42),(26,43),(26,44),(27,7),(27,9),(27,10),(27,26),(27,8),(28,7),(28,26),(28,48),(28,32),(28,10),(28,9),(29,7),(29,10),(29,48),(29,8),(29,49),(30,50),(30,7),(30,43),(30,44),(30,51),(31,42),(31,43),(32,7),(32,8),(32,52),(33,53),(33,54),(33,55),(33,56),(33,44),(33,18),(34,57),(34,58),(34,59),(35,60),(35,61),(35,62),(36,63),(36,64),(36,65),(37,66),(37,67),(37,68),(38,8),(38,7),(38,9),(39,66),(39,69),(39,70),(40,71),(40,72),(40,73),(40,74),(41,71),(41,75),(41,74),(1,1),(1,2),(3,3),(3,4),(3,5),(3,6),(42,3),(42,76),(48,3),(49,3);
/*!40000 ALTER TABLE `phone_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_sensor`
--

DROP TABLE IF EXISTS `phone_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_sensor` (
  `sensor_id` int(10) unsigned DEFAULT NULL,
  `phone_id` int(10) unsigned DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `sensor_id` (`sensor_id`),
  CONSTRAINT `phone_sensor_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `phone_sensor_ibfk_2` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_sensor`
--

LOCK TABLES `phone_sensor` WRITE;
/*!40000 ALTER TABLE `phone_sensor` DISABLE KEYS */;
INSERT INTO `phone_sensor` VALUES (1,2),(5,2),(6,2),(3,2),(4,2),(1,4),(3,4),(4,4),(5,4),(6,4),(1,5),(6,5),(1,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(1,9),(4,9),(6,9),(1,10),(1,11),(2,11),(3,11),(4,11),(5,11),(8,11),(6,11),(7,11),(1,12),(3,12),(4,12),(6,12),(1,13),(3,13),(4,13),(5,13),(6,13),(1,14),(3,14),(4,14),(5,14),(6,14),(1,15),(6,15),(1,16),(3,16),(4,16),(6,16),(1,17),(4,17),(6,17),(1,18),(3,18),(4,18),(6,18),(1,19),(4,19),(6,19),(1,20),(2,20),(3,20),(9,20),(4,20),(5,20),(6,20),(10,21),(11,21),(3,21),(4,21),(5,21),(6,21),(1,22),(9,22),(2,22),(3,22),(5,22),(6,22),(1,23),(2,23),(3,23),(9,23),(5,23),(6,23),(1,24),(9,24),(2,24),(3,24),(5,24),(6,24),(1,25),(3,25),(9,25),(5,25),(6,25),(1,26),(2,26),(3,26),(5,26),(6,26),(1,27),(3,27),(9,27),(5,27),(6,27),(1,28),(9,28),(2,28),(3,28),(5,28),(6,28),(1,29),(2,29),(3,29),(9,29),(5,29),(6,29),(1,30),(5,30),(6,30),(3,30),(2,30),(4,30),(1,31),(9,31),(2,31),(3,31),(5,31),(6,31),(1,32),(3,32),(4,32),(6,32),(1,33),(3,33),(4,33),(5,33),(6,33),(1,34),(3,34),(4,34),(5,34),(6,34),(1,35),(3,35),(4,35),(5,35),(6,35),(1,36),(12,36),(3,36),(4,36),(5,36),(6,36),(1,37),(3,37),(4,37),(5,37),(6,37),(1,38),(3,38),(4,38),(6,38),(1,39),(3,39),(4,39),(5,39),(6,39),(1,40),(4,40),(5,40),(6,40),(1,41),(4,41),(5,41),(6,41),(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(1,3),(3,3),(4,3),(6,3),(13,42),(14,42),(13,42),(14,42),(13,48),(14,48),(13,49),(14,49);
/*!40000 ALTER TABLE `phone_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_text` varchar(255) DEFAULT NULL,
  `rating` int(10) unsigned NOT NULL,
  `submission_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  KEY `phone_id` (`phone_id`),
  KEY `username` (`username`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (NULL,3,'2021-08-04 07:01:13',4,'SA50'),(NULL,3,'2021-08-04 07:01:20',4,'SA50'),(NULL,2,'2021-08-04 07:04:28',10,'SA50'),(NULL,2,'2021-08-04 07:04:46',10,'SA50'),(NULL,1,'2021-08-04 07:05:17',10,'SA50'),('baad ?',1,'2021-08-04 07:08:06',10,'SA50');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sensor_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,'Accelerometer'),(2,' Barometer'),(3,' Compass'),(4,' Fingerprint '),(5,' Gyro'),(6,' Proximity'),(7,' SpO2'),(8,' HeartRate'),(9,' Face ID'),(10,'Face ID'),(11,' Accelerometer'),(12,' color spectrum'),(13,'Proximity'),(14,'Fingerprint');
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('AhmedAli','Ahmed','Ali','pbkdf2:sha256:260000$DndKHtNA2UP9TUtn$58d81599edc594a1f5c94b0a1eb2718cc473635485b95498dde007574875e8f4',0),('KamranK','Kamran','Khan','pbkdf2:sha256:260000$NmX8dfDBW9JzV2Jg$cb7e76bab27a1571d914a8f49211c9ef127542422be517c54a9b1b16ea0506ba',0),('SA50','Sohaib','Ahmed','pbkdf2:sha256:260000$JmWc1vQDdsat4fAG$42e76e0358358714cda5a138bd94c8ed3f13a120cbf819651830cb735a19e8df',1);
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

-- Dump completed on 2021-08-11 19:11:20
