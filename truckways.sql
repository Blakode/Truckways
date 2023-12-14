CREATE DATABASE  IF NOT EXISTS `truckways` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `truckways`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: truckways
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `load` int NOT NULL,
  `driver` int NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (1,3,1,400000,'accepted','2020-06-18 17:32:12','2020-06-30 14:09:34',NULL,NULL),(2,3,1,350000,'declined','2020-06-18 17:33:02','2020-06-30 14:37:43',NULL,NULL),(3,2,2,400000,'pending','2020-06-18 17:50:13','2020-06-22 11:57:40',NULL,NULL),(4,1,1,300000,'accepted','2020-06-30 00:26:50','2020-06-30 14:41:29',NULL,NULL),(5,9,1,200000,'pending','2020-07-21 14:17:21','2020-07-21 14:17:21',NULL,NULL),(6,8,1,900000,'accepted','2020-07-21 14:17:34','2020-08-29 10:44:38',NULL,NULL),(7,7,1,200000,'accepted','2020-07-21 14:17:49','2020-07-23 19:21:09',NULL,NULL),(8,9,3,220000,'pending','2020-07-21 15:27:09','2020-07-21 15:27:09',NULL,NULL),(9,5,1,190000,'accepted','2020-07-21 15:28:49','2020-07-23 19:20:23',NULL,NULL),(13,9,4,2500000,'pending','2020-07-27 11:52:36','2020-07-27 11:52:36',NULL,NULL),(14,9,4,350000,'pending','2020-07-27 11:53:10','2020-07-27 11:53:10',NULL,NULL),(15,9,4,280000,'pending','2020-07-27 11:57:33','2020-07-27 11:57:33','Sola Aloa',NULL),(16,6,1,220000,'accepted','2020-08-29 11:18:53','2020-08-29 11:19:11',NULL,NULL),(17,4,1,25000,'accepted','2020-08-29 11:20:57','2020-08-29 11:21:35',NULL,NULL),(18,11,1,300000,'pending','2020-09-04 09:40:03','2020-09-04 09:40:03',NULL,NULL),(19,11,1,300000,'pending','2020-09-04 09:40:21','2020-09-04 09:40:21',NULL,NULL),(20,11,1,30000,'pending','2020-09-04 09:41:30','2020-09-04 09:41:30',NULL,NULL),(21,12,1,50000,'pending','2021-02-15 08:27:15','2021-02-15 08:27:15',NULL,NULL);
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idImage` json DEFAULT NULL,
  `account_number` int DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trucks` int DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `drivers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Dayo Timi','',NULL,'09035217974','Oshogbo Street','drivers/Bzbt9FFBRZTuzv9wQSrkXV5H2I7PVkw0rkVpxRMx.png','NGN2999103',NULL,2090837711,'UBA BANK',NULL,'$2y$10$If8I1sgiq4A.z/rSGJ6LiuolFxKuHeoA03RYiLj7IDM6EL.Ix6bji',NULL,NULL,'2020-09-04 07:35:14','2021-02-15 08:29:56',NULL),(2,'Jonah Hill','jonah@gmail.com',NULL,'082737757744','Oguro Street',NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$N92msuBQLuw7rCDVIr9uSOuBGfnioqd9B8gGAQqrKg/QXx5jcoZmu',NULL,NULL,'2020-09-13 06:42:49','2020-09-13 06:42:49',NULL);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journeys`
--

DROP TABLE IF EXISTS `journeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journeys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `load` int NOT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journeys`
--

LOCK TABLES `journeys` WRITE;
/*!40000 ALTER TABLE `journeys` DISABLE KEYS */;
INSERT INTO `journeys` VALUES (1,1,'heading to pickup','null','1','2020-07-01 09:07:00','2020-07-01 09:07:00'),(2,1,'items picked up','null','1','2020-07-01 10:32:33','2020-07-01 10:32:33'),(3,1,'items picked up','null','1','2020-07-15 09:58:01','2020-07-15 09:58:01'),(4,1,'items picked up','null','1','2020-07-15 14:56:58','2020-07-15 14:56:58'),(5,1,'updated location','Ijaiye','1','2020-07-15 15:12:17','2020-07-15 15:12:17'),(6,1,'items picked up','null','1','2020-07-16 11:53:55','2020-07-16 11:53:55'),(7,1,'updated location','Ilorin','1','2020-07-16 11:57:42','2020-07-16 11:57:42'),(8,1,'completed','null','1','2020-07-16 11:57:53','2020-07-16 11:57:53'),(11,7,'heading to pickup','null','Abimbola Omojowo','2020-07-24 04:32:21','2020-07-24 04:32:21'),(12,7,'items picked up','null','Abimbola Omojowo','2020-07-24 04:32:51','2020-07-24 04:32:51'),(13,7,'updated location','Iseyin, Kwara','Abimbola Omojowo','2020-07-24 04:33:41','2020-07-24 04:33:41'),(14,7,'updated location','Osogbo, Osun','Abimbola Omojowo','2020-07-24 04:42:23','2020-07-24 04:42:23'),(15,7,'completed','null','Abimbola Omojowo','2020-07-24 04:44:14','2020-07-24 04:44:14'),(16,1,'completed','null','Abimbola Omojowo','2020-07-24 04:45:44','2020-07-24 04:45:44'),(17,4,'heading to pickup','null','1','2020-08-30 13:46:01','2020-08-30 13:46:01'),(18,4,'items picked up','null','1','2020-08-30 13:46:20','2020-08-30 13:46:20'),(19,8,'heading to pickup','null','admin (Admin)','2021-02-19 05:42:47','2021-02-19 05:42:47'),(20,8,'items picked up','null','admin (Admin)','2021-02-19 05:42:50','2021-02-19 05:42:50'),(21,8,'completed','null','admin (Admin)','2021-02-19 05:42:54','2021-02-19 05:42:54');
/*!40000 ALTER TABLE `journeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loads`
--

DROP TABLE IF EXISTS `loads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `pickup` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `driver` int DEFAULT NULL,
  `load_type` tinyint(1) NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loads`
--

LOCK TABLES `loads` WRITE;
/*!40000 ALTER TABLE `loads` DISABLE KEYS */;
INSERT INTO `loads` VALUES (1,'28885831',1,'Container Needed','Need a 40ft container to move goods from the port',0.00,'12 Ezekiel Showumi Crescent','13. Alhaji. Davies Streer','heavy duty trucks','[\"loads/cdfhTBHxmLjnonyUZx3tP7z4IjdQpdiQM5oooB6Q.png\", \"loads/iQGcyOqZejR11OGhP5OCMapQ6xpMwfVq5B8BH1WV.png\", \"loads/K1S4d5xeDgEUScdyTAcfpBXOKpl1FlKQx0BaiVHI.png\"]','closed',1,1,300000.00,300000.00,NULL,'2020-06-17 10:57:33','2020-07-24 04:45:44',NULL),(2,'1646541103',1,'Container Needed','Need a 40ft container to move goods from the port',0.00,'12 Ezekiel Showumi Crescent','13. Alhaji. Davies Streer','heavy duty trucks','[\"loads/3GrhN8shP9BtM2XKfV91EMzT3R3xzerpj1oNud5W.png\", \"loads/EohUGpAKJiaNOPSWdWauicDzjcTyztq8v6hV1OSi.png\", \"loads/QSrEOy9tZGMqKuRWVL4CAvyjOmyox7VAtv9ReHgx.png\"]','open',2,0,300000.00,NULL,NULL,'2020-06-17 10:58:34','2020-06-22 11:57:40',NULL),(3,'998642332',1,'60ft Container Needed','60ft Container to move load from port',0.00,'NPA','Wharf','trailers','[\"loads/0bLBpIPiDf3GrEYhI1aLRW6Yz6l9owSGrrIvcnp2.png\", \"loads/5x8kw8e7Bpz7aiKY44tb24aGmw2FmZMP4QTgz2L3.png\", \"loads/E5eOVD4SWzotIgAsFctiD0PyFoUZC6WPoriCK9AJ.png\"]','closed',1,0,400000.00,400000.00,NULL,'2020-06-17 11:49:02','2020-06-30 14:32:03',NULL),(4,'1623746198',1,'Move from yaba','bla bla bla',0.00,'182 Agbani Street, Surulere','109 Admiralty Way, Lekki','heavy duty trucks','[\"loads/JUypapTIdTg8tM74bhc1n47QsWzSGjO9JAEkEUFe.svg\"]','picked up',1,1,30000.00,25000.00,NULL,'2020-05-03 23:00:00','2020-08-30 13:46:20',NULL),(5,'1169865889',1,'Move to move','dont ask me',0.00,'laba','alaba','mini-vans','[\"loads/Bjj2o6zugecicKbisv53oOOmiND4J3AJBmyC03lJ.svg\"]','closed',1,0,213999.00,190000.00,NULL,'2020-06-21 16:40:10','2020-07-23 19:20:27',NULL),(6,'1495487596',1,'Move to move','dont ask me',0.00,'laba','alaba','mini-vans','[\"loads/fWaSKnoTag9cE3YK4SZINKsCy2ZUSLNv3mxUsIir.svg\"]','closed',1,0,213999.00,220000.00,NULL,'2020-06-21 16:40:52','2020-08-29 11:19:11',NULL),(7,'68007584',1,'Move to move','dont ask me',0.00,'laba','alaba','mini-vans','[\"loads/uCgAKEgmpBIwsu0oLsHjWC4GNE4dFxGZw6TuhLUi.svg\"]','closed',1,1,213999.00,200000.00,NULL,'2020-06-21 17:41:47','2020-07-24 04:44:14',NULL),(8,'2082768635',1,'Move items from wharf','Move 60ft container from wharf to Benue State',0.00,'Wharf','Benue State','mini-vans','[\"loads/mWKKfWamdppt3blM0r8y6GiV92qQWmXJKKhitP86.jpeg\"]','closed',1,1,1000000.00,900000.00,NULL,'2020-06-21 17:43:41','2021-02-19 05:42:54',NULL),(9,'871943497',6,'Sample Stuff','Don\'t fucking ask me',0.00,'Ijebu','Ijoko','20 Tonnes Flatbeds','[\"loads/vhvpoX0lzlu6QuX6OPYjXCWetd9bNiZkwaoUfMRd.jpeg\", \"loads/JsNuIiFqke3HtHVYXE0vg6MyZwNnPOqToKcZfnxw.gif\"]','open',NULL,1,250000.00,NULL,NULL,'2020-07-02 08:35:39','2020-07-02 08:35:39',NULL),(10,'812748421',14,'See danger','danger everywhere',0.00,'igando','isolo','15 Tonnes Sided Body Trucks','[\"loads/EerTzoFI6zPXUzRljOKyb5rOZGXrSu3yhzvIc1Fz.png\"]','open',NULL,0,20000.00,NULL,NULL,'2020-09-04 00:55:52','2020-09-04 00:55:52',NULL),(11,'2000663214',14,'oja daddy','marijuana',1000000.00,'isolo','apapa','30 Tonnes Sided Body Trucks','[\"loads/FapemdqGUKpPJmyl5lkTQulfzJ3PtdnljLblgQXT.png\"]','open',NULL,0,100000.00,NULL,NULL,'2020-09-04 01:25:39','2020-09-04 01:25:39',NULL),(12,'689186861',15,'Cracking mud','Kurd me',500000.00,'Onne','Eleme','40 Tonnes Flatbeds','[\"loads/RXZU6qkCD5g1n711IprFuRAsmZWqdPL4YkkXbAsM.jpeg\", \"loads/fVUdS5bcVv6GCeNj9B2FlZBB6WP1l9vqx4bzXBOU.jpeg\"]','open',NULL,0,50000.00,NULL,NULL,'2020-09-13 06:38:53','2020-09-13 06:38:53',NULL);
/*!40000 ALTER TABLE `loads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (13,'2020_06_17_072621_create_load_images_table',2),(21,'2014_10_12_000000_create_users_table',3),(22,'2014_10_12_100000_create_password_resets_table',3),(23,'2019_08_19_000000_create_failed_jobs_table',3),(24,'2020_05_07_174707_create_drivers_table',3),(25,'2020_06_10_125328_create_trucks_table',3),(26,'2020_06_11_094221_create_loads_table',3),(27,'2020_06_17_075845_create_bids_table',3),(28,'2020_06_17_180841_drivers',4),(29,'2020_06_19_184414_create_trucks_table',5),(30,'2020_06_19_191018_create_trucks_table',6),(31,'2020_06_30_105556_request_verification',7),(32,'2020_06_30_111202_update_request_verification',8),(33,'2020_07_01_082841_create_journeys_table',9),(34,'2020_07_20_055545_update_users',10),(35,'2020_07_24_141729_updateusertable',11),(36,'2020_07_24_141737_updatedrivers',11),(37,'2020_07_24_143115_updateloads',12),(38,'2020_07_24_143151_updatebids',12),(39,'2020_07_24_143228_updatetrucks',12),(40,'2020_07_25_091622_addtobids',13),(41,'2021_02_19_062535_update_users_column',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trucks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (1,1,'Mack 238','Macks','Trailer','BC366-MUSK','[\"trucks/UTPgy5sRiBECArJWgiXePpDGRpZKaBBbsISoDT0S.svg\"]','2020-06-19 18:11:09','2020-06-20 11:23:50',NULL,NULL),(2,1,'Mack 237','Mack','Flat Bed','292-3039','[\"trucks/tWRIBt6HP7zBhwFzognsWotHSmlAdJ2VSTDv6Ert.svg\"]','2020-06-19 18:25:33','2020-06-20 11:24:35','2020-06-20 11:24:35',NULL),(3,1,'Man Semi','MAN','semi truck','BC29-393','[\"trucks/FN8vAVrRRLWL40Hmoy2rNaeA9chW6cahJhx3Z7QP.png\"]','2020-06-19 18:26:12','2020-06-20 11:24:53','2020-06-20 11:24:53',NULL),(4,1,'MAC 2s','Mack Truck','Flatbed','1930-bdd3','[\"trucks/y2zn5C1g8FL13CDcGhv4P1pbZvu8bXJEG9yUe7BA.png\"]','2020-06-30 01:31:57','2020-06-30 01:32:52',NULL,NULL),(5,1,'MAC 2s','Mack Truck','Flatbed','1uy10-dd','[\"trucks/QpXLFaAuTCfKRWM5sFy1yLKcB9bkebxpq66hEW5Q.png\"]','2020-06-30 01:34:01','2020-06-30 01:34:01',NULL,NULL),(6,1,'Heck','Yeah','29393','0299393','[\"trucks/ieLRQj6imXxzGIBNTDq3JpUWTIUV531gRzBkRav8.png\"]','2020-06-30 01:36:25','2020-06-30 01:37:50','2020-06-30 01:37:50',NULL),(7,1,'Fuck Right','1393','o103891','1039od3','[\"trucks/QIiwcmkQ5kC6TpINi9NuC5r4Tkssyl0hKhhuC06t.png\"]','2020-06-30 01:36:55','2020-06-30 01:38:03','2020-06-30 01:38:03',NULL);
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ayo Ifedayo','ay@gmail.com','0902938321',NULL,'$2y$10$VF.21aKN9TnJq6ck/qUEvetNxL0zdWd4WqJwYxAb9iNwt2PrUIJv.',NULL,NULL,'2020-06-17 10:50:39','2020-06-17 10:50:39',NULL,NULL,NULL,NULL,NULL),(2,'Israel','joker@gmail.com',NULL,NULL,'$2y$10$/r2wYzbsaWxe951bbd2yHeIAd/j5.FfwKtfJds28g4zwdEMfN0Oga',NULL,NULL,'2020-06-17 17:01:04','2020-07-20 06:34:01','2020-07-20 06:34:01',NULL,NULL,NULL,NULL),(3,'Jonah Hill','jonah@gmail.com',NULL,NULL,'$2y$10$OynWnDMuCBuc0aFmLYl8Eez6S1Bom/3QMLEMZwFEbev7WzHzsa5n6',NULL,NULL,'2020-06-29 19:32:03','2020-06-29 19:32:03',NULL,NULL,NULL,NULL,NULL),(6,'Isaac Johnson','isaac@gmail.com','09036455116',NULL,'$2y$10$MsyikzPUNa1g.mqJiu1qjOjEHAqM44QNh5MqG.tH2g.YCF5k4bnOG',NULL,NULL,'2020-07-02 08:35:39','2020-07-02 08:35:39',NULL,NULL,NULL,NULL,NULL),(7,'admin','info@truckwaysng.com',NULL,NULL,'$2y$10$J.W8BTVy4Kv30f3L8CNNsuqD2jsxYoLr6BK1dJG8/AdAdHzsM2Om.',1,NULL,'2020-07-03 16:44:49','2020-07-03 16:44:49',NULL,NULL,NULL,NULL,NULL),(10,'Abimbola Omojowo','abimbola@gmail.com','08028838992',NULL,'$2y$10$Yy9seMHJGAGkRW2SHXxHzuue1NK3VmduhK0tO.RDgATlLcqXUkkYy',1,NULL,'2020-07-20 05:14:18','2020-07-20 05:14:18',NULL,NULL,NULL,NULL,NULL),(11,'Sola Aloa','sola@gmail.com','0839288122',NULL,'$2y$10$MXTkC0LwB8hlPdsZNU1CkupycCkfXB7hKaOHzSXlAcPvg0ywE8xUG',2,NULL,'2020-07-24 12:52:45','2021-02-19 05:31:02',NULL,NULL,'agents/HoliNAsmgWlLPdl4kXb7zzgKhRwYeQMYjCwhJ6Mz.jpeg','UBA BANK','2096090394'),(12,'Benzoic Acid','benzo@gmail.com',NULL,NULL,'$2y$10$x8lw/7tEGuOAtE.JLoIqmuv/LHbgPmAN023mdWBDypfn4dLuh8mTm',NULL,NULL,'2020-07-27 06:55:27','2020-07-27 06:55:27',NULL,'Sola Aloa',NULL,NULL,NULL),(13,'Damilola Ojo','dammy@gmail.com','081838399399',NULL,'$2y$10$ICNZ.hCyOP3/h/3CzcduDewHunqyUg/mdsFEoMH5tsP0iyE.K5Zc2',NULL,NULL,'2020-07-27 11:06:37','2020-07-27 11:06:37',NULL,'Sola Aloa',NULL,NULL,NULL),(14,'Oladayo Israel','ifedeejoy@gmail.com',NULL,NULL,'$2y$10$Dz4jiwm/TNKqJp/..OY8EurUng.LmmqzVoZO6h2Q.dvYwu4eNaMd.',NULL,NULL,'2020-09-04 00:46:04','2020-09-04 00:46:04',NULL,NULL,NULL,NULL,NULL),(15,'Salawa Abeni','Salwa@gmail.com','0837722233',NULL,'$2y$10$TO.W8IMIrhMmz40mvON71.acsYm0om.QccJQKTwcTtuvgeWRk4zKa',NULL,NULL,'2020-09-13 06:38:53','2020-09-13 06:38:53',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_requests`
--

DROP TABLE IF EXISTS `verification_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verifiedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_requests`
--

LOCK TABLES `verification_requests` WRITE;
/*!40000 ALTER TABLE `verification_requests` DISABLE KEYS */;
INSERT INTO `verification_requests` VALUES (1,1,'approved','2020-06-30 13:59:37','2020-06-30 13:59:37',NULL);
/*!40000 ALTER TABLE `verification_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11  7:51:18
