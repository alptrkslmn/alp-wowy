-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: wowy
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'V0HRxVNUq4s3CjHT8wbvxNAiV7vzrq0v',1,'2024-09-29 08:36:02','2024-09-29 08:36:02','2024-09-29 08:36:02');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2029-09-29 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL),(2,'Sale off','2029-09-29 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL),(3,'New Arrivals','2029-09-29 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL),(4,'Gaming Area','2029-09-29 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL),(5,'Smart Offer','2029-09-29 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL),(6,'Repair Services','2029-09-29 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2024-09-29 08:36:02','2024-09-29 08:36:02',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Sequi fugit dicta commodi beatae consequuntur voluptates eius. Consequatur sequi dolores voluptas voluptas. Impedit non quam iste. Dignissimos ut eveniet dolor quis at ut asperiores eum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(2,'Fashion',0,'Sed dolorem nisi quidem perferendis. Ad et aut aut quia. Quia quia provident ab ullam tenetur ad. A enim quia doloribus nulla qui corporis debitis. Quod repellat soluta velit reiciendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(3,'Electronic',0,'Nihil impedit fugit impedit animi. Culpa provident fugit numquam nobis. Rerum ipsam magnam eos fugiat minima aperiam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(4,'Commercial',0,'Eius est maxime est. Quisquam quasi a est nisi officiis aut unde. Repellendus rem aliquam iure pariatur occaecati. Error incidunt voluptatem adipisci aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:36:01','2024-09-29 08:36:01');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2024-09-29 08:35:46','2024-09-29 08:35:46');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(2,'EUR','€',0,2,1,0,0.84,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(3,'VND','₫',0,0,2,0,23203,'2024-09-29 08:35:46','2024-09-29 08:35:46'),(4,'NGN','₦',1,2,2,0,895.52,'2024-09-29 08:35:46','2024-09-29 08:35:46');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Lucile Schaefer','john.smith@botble.com','+19065663679','CX','California','Schmidtview','1384 Haag Loop Apt. 074',1,1,'2024-09-29 08:35:56','2024-09-29 08:35:56','08674-3305'),(2,'Lucile Schaefer','john.smith@botble.com','+13646701769','KN','Washington','Lake Daija','88831 Wuckert Pine Suite 015',1,0,'2024-09-29 08:35:56','2024-09-29 08:35:56','85105'),(3,'Tessie Kreiger','customer@botble.com','+12318517190','MM','Montana','Port Lucindaton','6514 Peyton Alley Suite 030',2,1,'2024-09-29 08:35:56','2024-09-29 08:35:56','40856-1169'),(4,'Tessie Kreiger','customer@botble.com','+12837803275','MN','District of Columbia','Wuckertland','707 Strosin Inlet Suite 076',2,0,'2024-09-29 08:35:56','2024-09-29 08:35:56','54590-0440'),(5,'Orrin Kuhlman','letitia92@example.org','+18036317541','AZ','Kansas','Gerholdmouth','6513 Lee Circle Apt. 313',3,1,'2024-09-29 08:35:56','2024-09-29 08:35:56','13347-0685'),(6,'Providenci Crist','brain48@example.net','+15713189767','KZ','Oklahoma','Lake Elmer','795 Daugherty Heights Apt. 250',4,1,'2024-09-29 08:35:57','2024-09-29 08:35:57','08375-5494'),(7,'Prof. Mitchell Grady IV','braun.alphonso@example.org','+16573183389','HK','Alaska','Port Yolanda','348 Fahey Via',5,1,'2024-09-29 08:35:57','2024-09-29 08:35:57','35089-5690'),(8,'Amber Kshlerin','ykoepp@example.net','+12406730882','SX','North Carolina','Considineville','168 Trace Cliff',6,1,'2024-09-29 08:35:57','2024-09-29 08:35:57','54331-6175'),(9,'Tristian Block','wendell07@example.net','+18606893638','PE','Florida','Borerburgh','246 Sylvester Dam',7,1,'2024-09-29 08:35:57','2024-09-29 08:35:57','61726'),(10,'Davin Gulgowski','fbergnaum@example.net','+14635198888','SV','Florida','North Darrylborough','5359 Padberg Estates',8,1,'2024-09-29 08:35:58','2024-09-29 08:35:58','39427-5140'),(11,'Mrs. Rosemarie Gislason DVM','weimann.connie@example.net','+12243880933','AZ','Missouri','Donaldtown','8601 Derrick Rest Apt. 131',9,1,'2024-09-29 08:35:58','2024-09-29 08:35:58','56839-6543'),(12,'Arthur Dach DVM','tthiel@example.org','+19853588431','AS','Texas','New Kamrynland','35812 Weber Cliffs Apt. 497',10,1,'2024-09-29 08:35:58','2024-09-29 08:35:58','63291-2715');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Lucile Schaefer','john.smith@botble.com','$2y$12$jiieViMcB1XW54k4NBDqCuAzllCOQkmQJpH00bpVqVWS313p9kGr.','customers/4.jpg','1974-09-08','+19382934876',NULL,'2024-09-29 08:35:56','2024-09-29 08:35:56','2024-09-29 15:35:56',NULL,'activated',NULL),(2,'Tessie Kreiger','customer@botble.com','$2y$12$WIXOlniATgQuxusSu488ieypyq41F1sEB5qFXMk0aeztU8.deLUpi','customers/2.jpg','1977-09-17','+18543275672',NULL,'2024-09-29 08:35:56','2024-09-29 08:35:56','2024-09-29 15:35:56',NULL,'activated',NULL),(3,'Orrin Kuhlman','letitia92@example.org','$2y$12$E7qu93D3Onm3EH80/A/GieiPmjLThfZuLsuWCsmQbNeOGTxgRLkey','customers/1.jpg','1991-09-06','+13523914615',NULL,'2024-09-29 08:35:56','2024-09-29 08:35:56','2024-09-29 15:35:56',NULL,'activated',NULL),(4,'Providenci Crist','brain48@example.net','$2y$12$G2QhbZeKgA2q0EJJciOXbuvvoFdYzAODMDlkCGGpZEyPUdyQNYdTK','customers/2.jpg','2000-09-16','+17624758644',NULL,'2024-09-29 08:35:57','2024-09-29 08:35:57','2024-09-29 15:35:57',NULL,'activated',NULL),(5,'Prof. Mitchell Grady IV','braun.alphonso@example.org','$2y$12$uazVQwTmbG4KQr83J31jL.XTXbwEOA53O7uXUwEeH96.i3mL3kIiC','customers/3.jpg','1980-08-31','+19785070190',NULL,'2024-09-29 08:35:57','2024-09-29 08:35:57','2024-09-29 15:35:57',NULL,'activated',NULL),(6,'Amber Kshlerin','ykoepp@example.net','$2y$12$kaNkzqtw.20rjC6hxOBttuSfIAzX8GsJ1qrVS/nfIKI.eJlrPk79q','customers/4.jpg','1976-09-01','+19728470775',NULL,'2024-09-29 08:35:57','2024-09-29 08:35:57','2024-09-29 15:35:57',NULL,'activated',NULL),(7,'Tristian Block','wendell07@example.net','$2y$12$iOepdRC8Rtd2qyYXVlY5kO9WjsN51FDlyOACKiXgcuk8JDUfVgU9e','customers/5.jpg','1993-09-24','+17549655323',NULL,'2024-09-29 08:35:57','2024-09-29 08:35:57','2024-09-29 15:35:57',NULL,'activated',NULL),(8,'Davin Gulgowski','fbergnaum@example.net','$2y$12$ohsS2DmJEZKytNmsUDp5l.U3.bJaLfVIPlXteisdwXnolZGpTXg8q','customers/6.jpg','1983-09-28','+14805217363',NULL,'2024-09-29 08:35:58','2024-09-29 08:35:58','2024-09-29 15:35:58',NULL,'activated',NULL),(9,'Mrs. Rosemarie Gislason DVM','weimann.connie@example.net','$2y$12$T8oiEsBy2sYcoFFoSbLUYOyM19eHkucbYw0Dm2CnvB8V1cL3XDjEG','customers/7.jpg','1999-09-04','+17409142629',NULL,'2024-09-29 08:35:58','2024-09-29 08:35:58','2024-09-29 15:35:58',NULL,'activated',NULL),(10,'Arthur Dach DVM','tthiel@example.org','$2y$12$eRqguPmTOlbcj4WHIKXN5OyeUppB1AFuIaf/LA.fQRganEhLyaIJi','customers/8.jpg','1977-09-17','+16789681454',NULL,'2024-09-29 08:35:58','2024-09-29 08:35:58','2024-09-29 15:35:58',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,2,532.56,11,5),(2,22,140.63,18,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2024-11-02 00:00:00','published','2024-09-29 08:35:59','2024-09-29 08:35:59'),(2,'Gadgets &amp; Accessories','2024-11-18 00:00:00','published','2024-09-29 08:35:59','2024-09-29 08:35:59');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(2,1,'2 Year',10,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(3,1,'3 Year',20,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(4,2,'4GB',0,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(5,2,'8GB',10,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(6,2,'16GB',20,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(7,3,'Core i5',0,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(8,3,'Core i7',10,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(9,3,'Core i9',20,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(10,4,'128GB',0,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(11,4,'256GB',10,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(12,4,'512GB',20,9999,0,'2024-09-29 08:35:59','2024-09-29 08:35:59');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:35:59','2024-09-29 08:35:59'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-09-29 08:35:59','2024-09-29 08:35:59');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-09-29 08:35:47','2024-09-29 08:35:47',0),(2,'Size','size','text',1,1,1,'published',1,'2024-09-29 08:35:47','2024-09-29 08:35:47',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(6,2,'S','s',NULL,NULL,1,1,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(7,2,'M','m',NULL,NULL,0,2,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(8,2,'L','l',NULL,NULL,0,3,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-09-29 08:35:47','2024-09-29 08:35:47'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-09-29 08:35:47','2024-09-29 08:35:47');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','far fa-star',NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-cpu',NULL),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(7,'Headphones',2,NULL,'published',4,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(8,'Videos games',2,NULL,'published',5,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-tshirt',NULL),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-desktop',NULL),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(14,'Laptop',12,NULL,'published',1,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(15,'Monitors',12,NULL,'published',2,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-home',NULL),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-dress',NULL),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-diamond',NULL),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','far fa-microchip',NULL),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,NULL),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-smartphone',NULL),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-teddy-bear',NULL),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-kite',NULL),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','far fa-book',NULL),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','far fa-car',NULL),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-09-29 08:35:47','2024-09-29 08:35:47','wowy-font-home',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,3),(1,6),(1,8),(1,15),(1,24),(2,2),(2,4),(2,7),(2,19),(2,20),(2,21),(3,8),(3,18),(4,17),(4,22),(6,9),(6,13),(6,14),(6,23),(7,1),(7,2),(8,4),(8,8),(8,13),(8,16),(9,5),(9,15),(10,1),(10,9),(10,10),(11,4),(11,11),(11,22),(12,1),(12,6),(12,12),(12,13),(12,19),(13,6),(13,18),(14,4),(14,11),(14,19),(14,21),(15,10),(15,16),(15,17),(15,22),(16,5),(16,20),(17,13),(17,15),(17,20),(17,21),(17,24),(18,8),(18,9),(18,12),(18,20),(18,21),(19,7),(19,10),(19,11),(19,12),(19,16),(19,17),(19,18),(20,7),(20,12),(20,23),(21,24),(22,1),(22,3),(22,10),(22,14),(22,18),(22,22),(24,6),(24,19),(24,23),(25,3),(25,9),(25,17),(26,5),(26,14),(27,7),(27,14),(27,23),(28,2),(28,3),(28,5),(29,16),(29,24),(30,11),(30,15);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,5),(1,8),(1,11),(1,15),(1,17),(1,20),(1,23),(1,24),(2,6),(2,18),(2,19),(2,22),(3,1),(3,3),(3,4),(3,7),(3,9),(3,10),(3,12),(3,13),(3,14),(3,16),(3,21);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,21,0,0.00,'fixed',1),(1,23,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,23,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(4,21,0,0.00,'fixed',1),(4,24,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,21,0,0.00,'fixed',1),(6,23,0,0.00,'fixed',1),(7,1,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,21,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,23,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,9,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,22,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,9,0,0.00,'fixed',1),(21,13,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(24,9,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(24,20,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"12\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(8,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(10,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"24\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(12,25,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(13,26,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(14,27,'ecommerce/digital-product-files/4-3.jpg','{\"filename\":\"4-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4-3\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(15,28,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(16,42,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(17,43,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(18,44,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54'),(19,45,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:35:54\",\"name\":\"24\",\"extension\":\"jpg\"}','2024-09-29 08:35:54','2024-09-29 08:35:54');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,15),(2,3),(2,9),(2,18),(2,24),(3,6),(3,12),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(2,'New','#02856e','published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(3,'Sale','#fe9931','published','2024-09-29 08:35:47','2024-09-29 08:35:47');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'1.33 cm',0,0),(1,7,'83.32 cm',0,0),(1,8,'3840x2160',0,0),(2,1,'9.06 cm',0,0),(2,2,'43.71 cm',0,0),(2,3,'12.86 cm',0,0),(2,4,'18.43 cm',0,0),(2,5,'3.67 cm',0,0),(3,6,'75.99 cm',0,0),(3,7,'28.1 cm',0,0),(3,8,'2560x1440',0,0),(4,1,'54.05 cm',0,0),(4,2,'11.55 cm',0,0),(4,3,'38.97 cm',0,0),(4,4,'96.76 cm',0,0),(4,5,'92.47 cm',0,0),(5,1,'54.88 cm',0,0),(5,2,'38.63 cm',0,0),(5,3,'81.72 cm',0,0),(5,4,'25.78 cm',0,0),(5,5,'34.29 cm',0,0),(6,6,'69.28 cm',0,0),(6,7,'11.69 cm',0,0),(6,8,'2560x1440',0,0),(7,1,'44.01 cm',0,0),(7,2,'70.47 cm',0,0),(7,3,'54.83 cm',0,0),(7,4,'15.26 cm',0,0),(7,5,'59.01 cm',0,0),(8,1,'19.62 cm',0,0),(8,2,'28.79 cm',0,0),(8,3,'66.8 cm',0,0),(8,4,'15.87 cm',0,0),(8,5,'5.94 cm',0,0),(9,6,'45.7 cm',0,0),(9,7,'22.9 cm',0,0),(9,8,'2560x1440',0,0),(10,1,'65.94 cm',0,0),(10,2,'92.91 cm',0,0),(10,3,'52.3 cm',0,0),(10,4,'6.13 cm',0,0),(10,5,'6.59 cm',0,0),(11,6,'19.72 cm',0,0),(11,7,'6.04 cm',0,0),(11,8,'3840x2160',0,0),(12,1,'52.1 cm',0,0),(12,2,'20.14 cm',0,0),(12,3,'83.4 cm',0,0),(12,4,'47.41 cm',0,0),(12,5,'52.16 cm',0,0),(13,6,'80.91 cm',0,0),(13,7,'43.26 cm',0,0),(13,8,'3840x2160',0,0),(14,1,'38.63 cm',0,0),(14,2,'91.1 cm',0,0),(14,3,'17.92 cm',0,0),(14,4,'90.8 cm',0,0),(14,5,'92.73 cm',0,0),(15,6,'71.58 cm',0,0),(15,7,'64.86 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'75.5 cm',0,0),(16,7,'65.86 cm',0,0),(16,8,'3840x2160',0,0),(17,6,'96.89 cm',0,0),(17,7,'12.96 cm',0,0),(17,8,'3840x2160',0,0),(18,1,'88.54 cm',0,0),(18,2,'21.72 cm',0,0),(18,3,'31.12 cm',0,0),(18,4,'37.58 cm',0,0),(18,5,'37.86 cm',0,0),(19,1,'11.95 cm',0,0),(19,2,'20.48 cm',0,0),(19,3,'52.3 cm',0,0),(19,4,'19.4 cm',0,0),(19,5,'44.16 cm',0,0),(20,1,'65.65 cm',0,0),(20,2,'4.43 cm',0,0),(20,3,'97.37 cm',0,0),(20,4,'73.41 cm',0,0),(20,5,'84.63 cm',0,0),(21,6,'64.88 cm',0,0),(21,7,'18.58 cm',0,0),(21,8,'3840x2160',0,0),(22,6,'42.38 cm',0,0),(22,7,'90.51 cm',0,0),(22,8,'2560x1440',0,0),(23,6,'43.31 cm',0,0),(23,7,'53.06 cm',0,0),(23,8,'2560x1440',0,0),(24,1,'77.58 cm',0,0),(24,2,'45.59 cm',0,0),(24,3,'84.53 cm',0,0),(24,4,'12.05 cm',0,0),(24,5,'78.16 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(1,5),(2,2),(2,4),(2,5),(3,1),(3,2),(3,5),(4,1),(4,4),(4,5),(5,3),(5,4),(5,5),(6,1),(6,2),(6,4),(7,1),(7,3),(7,5),(8,3),(8,4),(8,5),(9,1),(9,3),(9,4),(10,2),(10,4),(10,5),(11,3),(11,4),(11,5),(12,1),(12,4),(12,5),(13,1),(13,3),(13,4),(14,1),(14,3),(14,4),(15,2),(15,3),(15,5),(16,2),(16,4),(16,5),(17,1),(17,4),(17,5),(18,1),(18,3),(18,4),(19,1),(19,3),(19,5),(20,2),(20,3),(20,4),(21,1),(21,3),(21,4),(22,1),(22,3),(22,4),(23,1),(23,3),(23,4),(24,1),(24,2),(24,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(2,'Bags',NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(3,'Shoes',NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(4,'Clothes',NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(5,'Hand bag',NULL,'published','2024-09-29 08:35:47','2024-09-29 08:35:47');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(9,1,5),(7,2,4),(13,2,7),(3,3,2),(15,3,8),(17,4,9),(19,4,10),(5,5,3),(11,5,6),(4,6,2),(10,6,5),(2,7,1),(6,7,3),(14,7,7),(12,8,6),(18,9,9),(20,9,10),(8,10,4),(16,10,8);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,4,1),(2,26,4,0),(3,27,4,0),(4,28,4,0),(5,29,6,1),(6,30,7,1),(7,31,7,0),(8,32,7,0),(9,33,9,1),(10,34,9,0),(11,35,17,1),(12,36,17,0),(13,37,17,0),(14,38,17,0),(15,39,17,0),(16,40,18,1),(17,41,18,0),(18,42,20,1),(19,43,20,0),(20,44,24,1),(21,45,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-09-29',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,4,0),(2,4,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,9,0),(2,9,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]',NULL,'0J-178',0,12,0,1,1,5,0,0,584,158,NULL,NULL,11.00,14.00,15.00,863.00,NULL,94333,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'DK-118',0,15,0,1,1,6,0,0,720,634,NULL,NULL,16.00,15.00,11.00,723.00,NULL,183200,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]',NULL,'TZ-197',0,12,0,1,1,6,0,0,557,466,NULL,NULL,14.00,18.00,17.00,760.00,NULL,95825,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(4,'Chikie - Bluetooth Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'LH-156-A1',0,20,0,1,1,2,0,0,991,703.61,NULL,NULL,19.00,19.00,19.00,887.00,NULL,145105,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1),(5,'Camera Hikvision HK-35VS8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'J7-114',0,13,0,1,1,4,0,0,1102,782,NULL,NULL,17.00,16.00,18.00,595.00,NULL,146091,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]',NULL,'0K-150-A1',0,10,0,1,1,5,0,0,1179,NULL,NULL,NULL,19.00,15.00,20.00,722.00,NULL,122648,'2024-09-29 08:35:52','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]',NULL,'CS-166-A1',0,19,0,1,1,6,0,0,2207,NULL,NULL,NULL,11.00,12.00,19.00,719.00,NULL,179900,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(8,'Apple iPhone 13 Plus (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]',NULL,'M6-191',0,19,0,1,1,7,0,0,1302,245,NULL,NULL,16.00,20.00,14.00,606.00,NULL,154628,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1),(9,'Macbook Pro 2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]',NULL,'OS-100-A1',0,17,0,1,1,3,0,0,1461,NULL,NULL,NULL,11.00,10.00,12.00,865.00,NULL,67875,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]',NULL,'SG-145',0,13,0,1,1,7,0,0,968,687,NULL,NULL,10.00,19.00,17.00,805.00,NULL,187475,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]',NULL,'QP-119',0,13,0,1,1,7,0,0,1037,393,NULL,NULL,13.00,11.00,19.00,657.00,NULL,160133,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(12,'Macbook Pro 13 inch (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]',NULL,'HX-121',0,11,0,1,1,2,0,0,2288,2182,NULL,NULL,16.00,12.00,10.00,889.00,NULL,13500,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1),(13,'Apple Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'UG-187',0,10,0,1,1,5,0,0,2403,589,NULL,NULL,13.00,12.00,19.00,716.00,NULL,3830,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]',NULL,'DH-140',0,19,0,1,1,7,0,0,827,495,NULL,NULL,14.00,15.00,12.00,682.00,NULL,23858,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'C0-110',0,17,0,1,1,7,0,0,1296,518,NULL,NULL,15.00,19.00,17.00,786.00,NULL,154695,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(16,'Apple Airpods Serial 3 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\"]',NULL,'UE-123',0,16,0,1,1,5,0,0,1330,353,NULL,NULL,18.00,17.00,10.00,548.00,NULL,184816,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2),(17,'Cool Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1',0,10,0,1,1,3,0,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,123373,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]',NULL,'0Q-181-A1',0,14,0,1,1,6,0,0,2417,NULL,NULL,NULL,16.00,13.00,10.00,564.00,NULL,150324,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]',NULL,'IY-106',0,20,0,1,1,4,0,0,2246,1148,NULL,NULL,19.00,11.00,18.00,863.00,NULL,97165,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1),(20,'Macbook Pro 2015 13 inch (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]',NULL,'IO-177-A1',0,18,0,1,1,6,0,0,1493,1209.33,NULL,NULL,18.00,14.00,19.00,552.00,NULL,31167,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1),(21,'Historic Alarm Clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]',NULL,'JQ-124',0,18,0,1,1,5,0,0,2178,764,NULL,NULL,14.00,16.00,12.00,823.00,NULL,111394,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]',NULL,'PW-131',0,18,0,1,1,1,0,0,830,343,NULL,NULL,10.00,18.00,14.00,506.00,NULL,146415,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]',NULL,'TU-134',0,13,0,1,1,6,0,0,1780,1558,NULL,NULL,17.00,16.00,15.00,613.00,NULL,117755,'2024-09-29 08:35:53','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2),(24,'Gaming Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]',NULL,'PP-108-A1',0,14,0,1,1,7,0,0,1231,1021.73,NULL,NULL,10.00,18.00,15.00,703.00,NULL,129892,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1),(25,'Chikie - Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"products\\/4-1.jpg\"]',NULL,'LH-156-A1',0,20,0,1,0,2,1,0,991,703.61,NULL,NULL,19.00,19.00,19.00,887.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(26,'Chikie - Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"products\\/4-2.jpg\"]',NULL,'LH-156-A1-A2',0,20,0,1,0,2,1,0,991,733.34,NULL,NULL,19.00,19.00,19.00,887.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(27,'Chikie - Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"products\\/4-3.jpg\"]',NULL,'LH-156-A1-A3',0,20,0,1,0,2,1,0,991,842.35,NULL,NULL,19.00,19.00,19.00,887.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(28,'Chikie - Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'LH-156-A1-A4',0,20,0,1,0,2,1,0,991,802.71,NULL,NULL,19.00,19.00,19.00,887.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(29,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'0K-150-A1',0,10,0,1,0,5,1,0,1179,NULL,NULL,NULL,19.00,15.00,20.00,722.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(30,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'CS-166-A1',0,19,0,1,0,6,1,0,2207,NULL,NULL,NULL,11.00,12.00,19.00,719.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(31,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'CS-166-A1-A2',0,19,0,1,0,6,1,0,2207,NULL,NULL,NULL,11.00,12.00,19.00,719.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(32,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'CS-166-A1-A3',0,19,0,1,0,6,1,0,2207,NULL,NULL,NULL,11.00,12.00,19.00,719.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(33,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'OS-100-A1',0,17,0,1,0,3,1,0,1461,NULL,NULL,NULL,11.00,10.00,12.00,865.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(34,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'OS-100-A1-A2',0,17,0,1,0,3,1,0,1461,NULL,NULL,NULL,11.00,10.00,12.00,865.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(35,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1',0,10,0,1,0,3,1,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(36,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1-A2',0,10,0,1,0,3,1,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(37,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1-A3',0,10,0,1,0,3,1,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(38,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1-A4',0,10,0,1,0,3,1,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(39,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'RX-125-A1-A5',0,10,0,1,0,3,1,0,1437,NULL,NULL,NULL,20.00,14.00,13.00,620.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(40,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'0Q-181-A1',0,14,0,1,0,6,1,0,2417,NULL,NULL,NULL,16.00,13.00,10.00,564.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(41,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'0Q-181-A1-A2',0,14,0,1,0,6,1,0,2417,NULL,NULL,NULL,16.00,13.00,10.00,564.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL),(42,'Macbook Pro 2015 13 inch (Digital)',NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'IO-177-A1',0,18,0,1,0,6,1,0,1493,1209.33,NULL,NULL,18.00,14.00,19.00,552.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(43,'Macbook Pro 2015 13 inch (Digital)',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'IO-177-A1-A2',0,18,0,1,0,6,1,0,1493,1149.61,NULL,NULL,18.00,14.00,19.00,552.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(44,'Gaming Keyboard (Digital)',NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'PP-108-A1',0,14,0,1,0,7,1,0,1231,1021.73,NULL,NULL,10.00,18.00,15.00,703.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL),(45,'Gaming Keyboard (Digital)',NULL,NULL,'published','[\"products\\/24.jpg\"]',NULL,'PP-108-A1-A2',0,14,0,1,0,7,1,0,1231,972.49,NULL,NULL,10.00,18.00,15.00,703.00,NULL,0,'2024-09-29 08:35:54','2024-09-29 08:36:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,2,NULL,NULL,9,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11-1.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/20.jpg\"]'),(2,7,NULL,NULL,22,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-3.jpg\",\"products\\/5-2.jpg\"]'),(3,4,NULL,NULL,15,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/19.jpg\"]'),(4,7,NULL,NULL,19,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\",\"products\\/15-1.jpg\"]'),(5,1,NULL,NULL,2,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/23-1.jpg\"]'),(6,4,NULL,NULL,7,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-2.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/18-2.jpg\"]'),(7,3,NULL,NULL,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/9-1.jpg\",\"products\\/22-1.jpg\"]'),(8,2,NULL,NULL,19,5.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18-2.jpg\"]'),(9,6,NULL,NULL,3,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-2.jpg\",\"products\\/19-1.jpg\",\"products\\/21.jpg\"]'),(10,1,NULL,NULL,19,4.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/7-1.jpg\",\"products\\/20.jpg\"]'),(11,10,NULL,NULL,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-2.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(12,6,NULL,NULL,19,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\",\"products\\/14-1.jpg\"]'),(13,1,NULL,NULL,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/5-2.jpg\",\"products\\/6-1.jpg\"]'),(14,2,NULL,NULL,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/4-3.jpg\",\"products\\/19.jpg\",\"products\\/21.jpg\"]'),(15,7,NULL,NULL,1,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/20-1.jpg\"]'),(16,10,NULL,NULL,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/10-1.jpg\",\"products\\/14-1.jpg\",\"products\\/23.jpg\"]'),(17,8,NULL,NULL,2,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14-1.jpg\"]'),(19,9,NULL,NULL,5,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/10.jpg\",\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(20,1,NULL,NULL,5,4.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\",\"products\\/4-1.jpg\",\"products\\/12.jpg\",\"products\\/18-2.jpg\"]'),(21,9,NULL,NULL,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/16.jpg\"]'),(22,6,NULL,NULL,18,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/21-1.jpg\",\"products\\/23.jpg\"]'),(23,1,NULL,NULL,4,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/4-2.jpg\",\"products\\/22.jpg\",\"products\\/24.jpg\"]'),(24,9,NULL,NULL,22,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/5-1.jpg\",\"products\\/6.jpg\"]'),(25,7,NULL,NULL,2,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),(26,8,NULL,NULL,13,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/13-1.jpg\",\"products\\/18-2.jpg\",\"products\\/24-1.jpg\"]'),(27,4,NULL,NULL,5,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/23.jpg\"]'),(28,8,NULL,NULL,7,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/7-1.jpg\",\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),(29,4,NULL,NULL,10,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15-1.jpg\",\"products\\/18-1.jpg\"]'),(30,2,NULL,NULL,21,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(31,8,NULL,NULL,14,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11-1.jpg\",\"products\\/22-1.jpg\"]'),(32,2,NULL,NULL,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/24.jpg\"]'),(33,1,NULL,NULL,12,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/20.jpg\"]'),(34,4,NULL,NULL,24,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\",\"products\\/2.jpg\",\"products\\/17.jpg\",\"products\\/21-1.jpg\"]'),(35,7,NULL,NULL,21,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/19.jpg\"]'),(36,2,NULL,NULL,10,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/16.jpg\"]'),(37,7,NULL,NULL,10,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/10-1.jpg\",\"products\\/18.jpg\"]'),(38,6,NULL,NULL,14,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/10.jpg\"]'),(39,5,NULL,NULL,3,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15.jpg\"]'),(40,4,NULL,NULL,6,4.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/1.jpg\",\"products\\/11.jpg\",\"products\\/20-1.jpg\"]'),(41,8,NULL,NULL,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/14.jpg\"]'),(43,3,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/10.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(44,7,NULL,NULL,8,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/21.jpg\"]'),(45,1,NULL,NULL,15,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/3.jpg\",\"products\\/21.jpg\"]'),(47,4,NULL,NULL,2,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(48,8,NULL,NULL,22,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\"]'),(49,7,NULL,NULL,9,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/12-1.jpg\"]'),(51,9,NULL,NULL,21,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/12-1.jpg\"]'),(52,10,NULL,NULL,13,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/16.jpg\",\"products\\/23-1.jpg\",\"products\\/24.jpg\"]'),(54,6,NULL,NULL,6,5.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-2.jpg\",\"products\\/10.jpg\"]'),(55,9,NULL,NULL,9,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\"]'),(58,4,NULL,NULL,8,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\",\"products\\/21.jpg\",\"products\\/23-1.jpg\"]'),(59,4,NULL,NULL,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/20-1.jpg\"]'),(60,3,NULL,NULL,5,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\",\"products\\/8-1.jpg\",\"products\\/18-1.jpg\",\"products\\/22.jpg\"]'),(61,5,NULL,NULL,9,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/21-1.jpg\"]'),(62,3,NULL,NULL,16,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/15.jpg\",\"products\\/18-1.jpg\",\"products\\/22-1.jpg\"]'),(64,10,NULL,NULL,5,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/7-1.jpg\",\"products\\/13-1.jpg\"]'),(66,5,NULL,NULL,14,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/6-1.jpg\"]'),(67,4,NULL,NULL,23,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\"]'),(68,9,NULL,NULL,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\",\"products\\/5-2.jpg\",\"products\\/21.jpg\",\"products\\/24-1.jpg\"]'),(69,3,NULL,NULL,1,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/10-1.jpg\",\"products\\/13.jpg\",\"products\\/20-1.jpg\"]'),(70,1,NULL,NULL,11,1.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-3.jpg\",\"products\\/13-1.jpg\",\"products\\/18-2.jpg\",\"products\\/20.jpg\"]'),(71,3,NULL,NULL,10,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/7.jpg\",\"products\\/15-1.jpg\"]'),(72,1,NULL,NULL,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(73,1,NULL,NULL,23,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/19.jpg\"]'),(74,7,NULL,NULL,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6-1.jpg\",\"products\\/6.jpg\"]'),(75,2,NULL,NULL,13,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14.jpg\",\"products\\/17.jpg\"]'),(76,1,NULL,NULL,9,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/16.jpg\"]'),(77,6,NULL,NULL,23,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/12.jpg\"]'),(78,7,NULL,NULL,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/3-2.jpg\",\"products\\/7-1.jpg\",\"products\\/21.jpg\"]'),(79,4,NULL,NULL,11,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\"]'),(80,6,NULL,NULL,5,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/18-1.jpg\"]'),(85,5,NULL,NULL,17,3.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9-1.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\",\"products\\/24-1.jpg\"]'),(86,1,NULL,NULL,22,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9.jpg\",\"products\\/12-1.jpg\",\"products\\/15.jpg\"]'),(87,8,NULL,NULL,17,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/13-1.jpg\"]'),(88,2,NULL,NULL,12,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/20.jpg\"]'),(89,5,NULL,NULL,20,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-2.jpg\",\"products\\/17.jpg\"]'),(92,6,NULL,NULL,22,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-3.jpg\",\"products\\/5-1.jpg\",\"products\\/23.jpg\"]'),(93,10,NULL,NULL,14,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/15-1.jpg\"]'),(97,4,NULL,NULL,1,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9.jpg\",\"products\\/15.jpg\",\"products\\/21.jpg\",\"products\\/23-1.jpg\"]'),(99,2,NULL,NULL,5,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/5-1.jpg\",\"products\\/7-1.jpg\"]'),(101,10,NULL,NULL,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14-1.jpg\"]'),(102,2,NULL,NULL,14,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-2.jpg\",\"products\\/16.jpg\"]'),(103,3,NULL,NULL,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14-1.jpg\"]'),(105,10,NULL,NULL,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/11-1.jpg\"]'),(106,8,NULL,NULL,23,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\"]'),(107,5,NULL,NULL,13,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\"]'),(109,10,NULL,NULL,2,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/24-1.jpg\"]'),(111,2,NULL,NULL,15,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/8.jpg\",\"products\\/14-1.jpg\"]'),(113,2,NULL,NULL,3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\",\"products\\/19.jpg\"]'),(114,4,NULL,NULL,19,2.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18.jpg\"]'),(115,5,NULL,NULL,16,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\"]'),(116,3,NULL,NULL,24,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/6.jpg\"]'),(117,2,NULL,NULL,20,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\"]'),(119,9,NULL,NULL,14,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/12.jpg\",\"products\\/18.jpg\"]'),(120,5,NULL,NULL,19,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/22.jpg\"]'),(121,7,NULL,NULL,15,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/24-1.jpg\"]'),(122,6,NULL,NULL,4,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/15.jpg\"]'),(123,8,NULL,NULL,24,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\",\"products\\/7-1.jpg\"]'),(126,2,NULL,NULL,6,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/17.jpg\"]'),(128,6,NULL,NULL,2,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/18-2.jpg\",\"products\\/21-1.jpg\"]'),(129,8,NULL,NULL,8,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/4-3.jpg\",\"products\\/11.jpg\",\"products\\/20-1.jpg\"]'),(132,10,NULL,NULL,19,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/18.jpg\",\"products\\/24-1.jpg\"]'),(135,3,NULL,NULL,17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/21.jpg\"]'),(136,3,NULL,NULL,13,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(137,1,NULL,NULL,8,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\"]'),(138,8,NULL,NULL,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6-1.jpg\",\"products\\/13.jpg\",\"products\\/19-1.jpg\"]'),(139,3,NULL,NULL,9,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/6-1.jpg\",\"products\\/9.jpg\"]'),(141,4,NULL,NULL,14,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/13.jpg\"]'),(142,9,NULL,NULL,15,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14.jpg\",\"products\\/17.jpg\"]'),(144,7,NULL,NULL,7,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(145,6,NULL,NULL,17,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15.jpg\",\"products\\/18-2.jpg\",\"products\\/21-1.jpg\"]'),(147,6,NULL,NULL,20,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(149,3,NULL,NULL,22,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/10-1.jpg\",\"products\\/24-1.jpg\"]'),(150,1,NULL,NULL,3,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/19.jpg\"]'),(151,1,NULL,NULL,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-2.jpg\"]'),(152,5,NULL,NULL,5,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(154,10,NULL,NULL,9,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11-1.jpg\",\"products\\/14.jpg\",\"products\\/15.jpg\",\"products\\/24-1.jpg\"]'),(156,6,NULL,NULL,11,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/4-1.jpg\",\"products\\/24-1.jpg\"]'),(158,8,NULL,NULL,11,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/3-3.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(159,10,NULL,NULL,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-1.jpg\"]'),(163,3,NULL,NULL,2,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/19-1.jpg\"]'),(164,10,NULL,NULL,8,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/24-1.jpg\"]'),(166,9,NULL,NULL,16,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-3.jpg\",\"products\\/15.jpg\",\"products\\/21-1.jpg\",\"products\\/24.jpg\"]'),(167,10,NULL,NULL,21,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15-1.jpg\",\"products\\/22-1.jpg\"]'),(168,7,NULL,NULL,13,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-2.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(173,1,NULL,NULL,24,5.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\",\"products\\/18-2.jpg\"]'),(174,5,NULL,NULL,8,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-3.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/17.jpg\"]'),(175,6,NULL,NULL,9,4.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\"]'),(176,9,NULL,NULL,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11-1.jpg\",\"products\\/14.jpg\"]'),(177,2,NULL,NULL,7,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\"]'),(178,9,NULL,NULL,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/16.jpg\",\"products\\/20.jpg\"]'),(180,3,NULL,NULL,14,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7.jpg\",\"products\\/12-1.jpg\",\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(181,3,NULL,NULL,4,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\",\"products\\/13-1.jpg\"]'),(183,5,NULL,NULL,10,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-2.jpg\",\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),(184,5,NULL,NULL,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/16.jpg\",\"products\\/22.jpg\"]'),(190,7,NULL,NULL,3,3.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/9.jpg\"]'),(191,9,NULL,NULL,3,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/2.jpg\",\"products\\/9.jpg\"]'),(193,9,NULL,NULL,10,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\",\"products\\/8.jpg\"]'),(194,2,NULL,NULL,23,5.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/12.jpg\",\"products\\/14-1.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\"]'),(195,10,NULL,NULL,7,2.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/4-3.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(202,3,NULL,NULL,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/23.jpg\"]'),(203,8,NULL,NULL,10,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5.jpg\"]'),(206,5,NULL,NULL,4,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/17.jpg\",\"products\\/23-1.jpg\"]'),(207,2,NULL,NULL,2,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-1.jpg\",\"products\\/4.jpg\",\"products\\/11-1.jpg\",\"products\\/12-1.jpg\"]'),(208,3,NULL,NULL,20,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/20-1.jpg\"]'),(212,6,NULL,NULL,15,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(215,5,NULL,NULL,7,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/9-1.jpg\",\"products\\/11.jpg\",\"products\\/24.jpg\"]'),(218,1,NULL,NULL,16,2.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15.jpg\"]'),(222,2,NULL,NULL,24,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/7.jpg\",\"products\\/10.jpg\"]'),(223,9,NULL,NULL,19,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11.jpg\",\"products\\/13-1.jpg\",\"products\\/15-1.jpg\"]'),(226,7,NULL,NULL,23,3.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18-2.jpg\"]'),(227,9,NULL,NULL,13,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\"]'),(229,9,NULL,NULL,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18.jpg\",\"products\\/20-1.jpg\"]'),(232,6,NULL,NULL,12,3.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/10.jpg\"]'),(237,3,NULL,NULL,6,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/15.jpg\"]'),(238,5,NULL,NULL,18,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/22.jpg\",\"products\\/24-1.jpg\"]'),(240,1,NULL,NULL,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15-1.jpg\"]'),(241,10,NULL,NULL,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/3-3.jpg\",\"products\\/4-2.jpg\",\"products\\/7.jpg\"]'),(244,2,NULL,NULL,18,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/13-1.jpg\"]'),(245,7,NULL,NULL,6,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18.jpg\"]'),(249,6,NULL,NULL,16,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(250,9,NULL,NULL,23,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/10-1.jpg\"]'),(258,9,NULL,NULL,12,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\"]'),(260,10,NULL,NULL,3,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/8-1.jpg\"]'),(261,4,NULL,NULL,3,3.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/1-3.jpg\",\"products\\/5.jpg\",\"products\\/15-1.jpg\"]'),(265,2,NULL,NULL,11,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\",\"products\\/9-1.jpg\"]'),(272,6,NULL,NULL,24,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\"]'),(274,3,NULL,NULL,11,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\",\"products\\/4-2.jpg\",\"products\\/8.jpg\",\"products\\/19.jpg\"]'),(275,6,NULL,NULL,8,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7-1.jpg\",\"products\\/7.jpg\",\"products\\/9-1.jpg\",\"products\\/14-1.jpg\"]'),(277,5,NULL,NULL,12,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\"]'),(282,8,NULL,NULL,9,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(285,5,NULL,NULL,21,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/1-3.jpg\",\"products\\/3-3.jpg\",\"products\\/14.jpg\"]'),(301,5,NULL,NULL,22,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/14-1.jpg\"]'),(303,9,NULL,NULL,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-3.jpg\",\"products\\/7.jpg\"]'),(309,9,NULL,NULL,11,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\",\"products\\/13-1.jpg\",\"products\\/20.jpg\"]'),(311,4,NULL,NULL,20,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(314,8,NULL,NULL,4,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-1.jpg\",\"products\\/21-1.jpg\"]'),(318,1,NULL,NULL,13,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/19-1.jpg\",\"products\\/20-1.jpg\"]'),(323,4,NULL,NULL,4,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\"]'),(328,5,NULL,NULL,24,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14.jpg\",\"products\\/21.jpg\"]'),(330,6,NULL,NULL,13,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/21.jpg\"]'),(332,9,NULL,NULL,24,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/8.jpg\"]'),(335,8,NULL,NULL,21,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8-1.jpg\",\"products\\/9.jpg\"]'),(336,8,NULL,NULL,16,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-3.jpg\",\"products\\/9.jpg\",\"products\\/19.jpg\",\"products\\/22.jpg\"]'),(339,3,NULL,NULL,15,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-2.jpg\",\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16.jpg\"]'),(346,3,NULL,NULL,19,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/12-1.jpg\"]'),(348,8,NULL,NULL,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/5-1.jpg\",\"products\\/20-1.jpg\"]'),(352,6,NULL,NULL,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(362,10,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\",\"products\\/13.jpg\",\"products\\/23.jpg\"]'),(387,7,NULL,NULL,24,3.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12-1.jpg\",\"products\\/12.jpg\"]'),(402,9,NULL,NULL,8,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/11.jpg\",\"products\\/14.jpg\",\"products\\/15-1.jpg\"]'),(404,2,NULL,NULL,8,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-3.jpg\",\"products\\/7.jpg\",\"products\\/8-1.jpg\"]'),(406,4,NULL,NULL,12,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/9.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\",\"products\\/21.jpg\"]'),(407,2,NULL,NULL,16,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(415,10,NULL,NULL,23,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/19-1.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\"]'),(416,7,NULL,NULL,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/18.jpg\"]'),(419,5,NULL,NULL,11,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18.jpg\"]'),(449,8,NULL,NULL,3,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2.jpg\",\"products\\/3-1.jpg\",\"products\\/9.jpg\"]'),(452,10,NULL,NULL,6,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\",\"products\\/18-1.jpg\"]'),(456,2,NULL,NULL,17,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/10.jpg\",\"products\\/20.jpg\"]'),(475,4,NULL,NULL,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6-1.jpg\",\"products\\/14.jpg\",\"products\\/21.jpg\"]'),(476,10,NULL,NULL,24,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/18-1.jpg\"]'),(477,10,NULL,NULL,15,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/21-1.jpg\"]'),(480,1,NULL,NULL,14,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/12-1.jpg\"]'),(486,8,NULL,NULL,6,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/2.jpg\"]'),(487,6,NULL,NULL,1,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18-2.jpg\",\"products\\/22.jpg\",\"products\\/23.jpg\"]'),(489,4,NULL,NULL,13,2.00,'Clean & perfect source code','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/14.jpg\"]'),(493,4,NULL,NULL,21,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/4-1.jpg\",\"products\\/18.jpg\",\"products\\/20.jpg\"]'),(494,4,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3-2.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/17.jpg\"]'),(495,3,NULL,NULL,18,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/11-1.jpg\",\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(509,10,NULL,NULL,18,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/7.jpg\"]'),(511,1,NULL,NULL,20,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-2.jpg\"]'),(532,6,NULL,NULL,10,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-3.jpg\",\"products\\/21.jpg\"]'),(545,1,NULL,NULL,1,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/6.jpg\",\"products\\/15-1.jpg\"]'),(549,8,NULL,NULL,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(557,6,NULL,NULL,21,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5.jpg\",\"products\\/14.jpg\",\"products\\/24.jpg\"]'),(565,10,NULL,NULL,4,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/13.jpg\",\"products\\/21-1.jpg\"]'),(572,5,NULL,NULL,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/8.jpg\",\"products\\/9.jpg\"]'),(581,5,NULL,NULL,1,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-2.jpg\",\"products\\/5.jpg\",\"products\\/7-1.jpg\",\"products\\/18-2.jpg\"]'),(588,9,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/18-1.jpg\"]'),(593,1,NULL,NULL,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/2-3.jpg\",\"products\\/5.jpg\",\"products\\/9-1.jpg\"]'),(600,5,NULL,NULL,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-2.jpg\",\"products\\/5-2.jpg\",\"products\\/8.jpg\",\"products\\/23.jpg\"]'),(610,4,NULL,NULL,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-3.jpg\",\"products\\/14.jpg\"]'),(621,8,NULL,NULL,5,2.00,'Best ecommerce CMS online store!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/3.jpg\",\"products\\/11-1.jpg\",\"products\\/14-1.jpg\",\"products\\/18-2.jpg\"]'),(632,8,NULL,NULL,19,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4-3.jpg\"]'),(644,7,NULL,NULL,5,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-1.jpg\",\"products\\/15.jpg\"]'),(645,2,NULL,NULL,22,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/12.jpg\",\"products\\/24-1.jpg\"]'),(649,9,NULL,NULL,2,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/2-1.jpg\",\"products\\/9-1.jpg\",\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(667,8,NULL,NULL,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-3.jpg\",\"products\\/2-2.jpg\",\"products\\/12.jpg\",\"products\\/18-2.jpg\"]'),(712,1,NULL,NULL,21,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1-2.jpg\",\"products\\/15.jpg\"]'),(798,7,NULL,NULL,20,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/4.jpg\",\"products\\/14.jpg\",\"products\\/15-1.jpg\",\"products\\/20-1.jpg\"]'),(812,5,NULL,NULL,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/1.jpg\"]'),(926,10,NULL,NULL,22,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:35:58','2024-09-29 08:35:58','[\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/18-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-09-29 08:35:58','2024-09-29 08:35:58');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-09-29 08:35:58','2024-09-29 08:35:58'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-09-29 08:35:58','2024-09-29 08:35:58'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-09-29 08:35:58','2024-09-29 08:35:58');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(2,'Performance',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(3,'Battery',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(4,'Display',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL),(2,'Technical Specification',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2024-09-29 08:35:58','2024-09-29 08:35:58',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-09-29 08:35:54','2024-09-29 08:35:54'),(2,'None',0.000000,2,'published','2024-09-29 08:35:54','2024-09-29 08:35:54'),(3,'Import Tax',15.000000,3,'published','2024-09-29 08:35:54','2024-09-29 08:35:54');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL),(2,'Payment',1,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL),(3,'Order &amp; Returns',2,'published','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-09-29 08:35:47','2024-09-29 08:35:47'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-09-29 08:35:47','2024-09-29 08:35:47');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','01eeccf6eb944492dff29ce640136096',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','de9d64f6e45b582c5c654fba14df1225',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','940e3ef72a71f0af65f0919f758b9d35',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','9e2eeda52e484e7ed1a36f434fd5b4d4',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','7f4dcee7b15ff826e2e2d5d134f6b0a2',1,'Botble\\Menu\\Models\\MenuLocation'),(6,'en_US','3634caba7341cb6bed31a6a09cde3b72',1,'Botble\\Menu\\Models\\Menu'),(7,'en_US','225d93ec00ea6a72e0d64ae586ed5e7e',2,'Botble\\Menu\\Models\\Menu'),(8,'en_US','3476a41bfa4b9110378d088eaef72eb0',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',981,'brands/1.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(2,0,'2','2',1,'image/png',981,'brands/2.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(3,0,'3','3',1,'image/png',981,'brands/3.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(4,0,'4','4',1,'image/png',981,'brands/4.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(5,0,'5','5',1,'image/png',981,'brands/5.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(6,0,'6','6',1,'image/png',981,'brands/6.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(7,0,'7','7',1,'image/png',981,'brands/7.png','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(8,0,'1','1',2,'image/jpeg',5327,'product-categories/1.jpg','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(9,0,'2','2',2,'image/jpeg',5327,'product-categories/2.jpg','[]','2024-09-29 08:35:46','2024-09-29 08:35:46',NULL,'public'),(10,0,'3','3',2,'image/jpeg',5327,'product-categories/3.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(11,0,'4','4',2,'image/jpeg',5327,'product-categories/4.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(12,0,'5','5',2,'image/jpeg',5327,'product-categories/5.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(13,0,'6','6',2,'image/jpeg',5327,'product-categories/6.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(14,0,'7','7',2,'image/jpeg',5327,'product-categories/7.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(15,0,'8','8',2,'image/jpeg',5327,'product-categories/8.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(16,0,'1-1','1-1',3,'image/jpeg',9803,'products/1-1.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(17,0,'1-2','1-2',3,'image/jpeg',9803,'products/1-2.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(18,0,'1-3','1-3',3,'image/jpeg',9803,'products/1-3.jpg','[]','2024-09-29 08:35:47','2024-09-29 08:35:47',NULL,'public'),(19,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(20,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(21,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(22,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(25,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(26,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(27,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(28,0,'14-1','14-1',3,'image/jpeg',9803,'products/14-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(29,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(30,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2024-09-29 08:35:48','2024-09-29 08:35:48',NULL,'public'),(31,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(32,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(33,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(34,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(35,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(36,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(37,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(38,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(39,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(40,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(41,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2024-09-29 08:35:49','2024-09-29 08:35:49',NULL,'public'),(42,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(43,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(44,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(45,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(46,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(47,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(48,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(49,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(50,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(51,0,'24-1','24-1',3,'image/jpeg',9803,'products/24-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(52,0,'24','24',3,'image/jpeg',9803,'products/24.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(53,0,'3-1','3-1',3,'image/jpeg',9803,'products/3-1.jpg','[]','2024-09-29 08:35:50','2024-09-29 08:35:50',NULL,'public'),(54,0,'3-2','3-2',3,'image/jpeg',9803,'products/3-2.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(55,0,'3-3','3-3',3,'image/jpeg',9803,'products/3-3.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(56,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(57,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(58,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(59,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(60,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(61,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(62,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(63,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(64,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(65,0,'6-1','6-1',3,'image/jpeg',9803,'products/6-1.jpg','[]','2024-09-29 08:35:51','2024-09-29 08:35:51',NULL,'public'),(66,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(67,0,'7-1','7-1',3,'image/jpeg',9803,'products/7-1.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(68,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(69,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(70,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(71,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(72,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2024-09-29 08:35:52','2024-09-29 08:35:52',NULL,'public'),(73,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(74,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(75,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(76,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(77,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(78,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(79,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(80,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(81,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(82,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2024-09-29 08:35:55','2024-09-29 08:35:55',NULL,'public'),(83,0,'1','1',5,'image/jpeg',9392,'flash-sales/1.jpg','[]','2024-09-29 08:35:58','2024-09-29 08:35:58',NULL,'public'),(84,0,'2','2',5,'image/jpeg',9392,'flash-sales/2.jpg','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(85,0,'1-1','1-1',6,'image/png',13746,'sliders/1-1.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(86,0,'1-2','1-2',6,'image/png',13801,'sliders/1-2.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(87,0,'1-3','1-3',6,'image/png',12820,'sliders/1-3.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(88,0,'2-1','2-1',6,'image/png',13746,'sliders/2-1.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(89,0,'2-2','2-2',6,'image/png',13801,'sliders/2-2.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(90,0,'2-3','2-3',6,'image/png',12820,'sliders/2-3.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(91,0,'3-1','3-1',6,'image/png',13702,'sliders/3-1.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(92,0,'3-2','3-2',6,'image/png',13702,'sliders/3-2.png','[]','2024-09-29 08:35:59','2024-09-29 08:35:59',NULL,'public'),(93,0,'4-1','4-1',6,'image/png',13746,'sliders/4-1.png','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(94,0,'4-2','4-2',6,'image/png',13746,'sliders/4-2.png','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(95,0,'4-3','4-3',6,'image/png',12820,'sliders/4-3.png','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(96,0,'1','1',7,'image/jpeg',9803,'news/1.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(97,0,'10','10',7,'image/jpeg',9803,'news/10.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(98,0,'11','11',7,'image/jpeg',9803,'news/11.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(99,0,'2','2',7,'image/jpeg',9803,'news/2.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(100,0,'3','3',7,'image/jpeg',9803,'news/3.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(101,0,'4','4',7,'image/jpeg',9803,'news/4.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(102,0,'5','5',7,'image/jpeg',9803,'news/5.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(103,0,'6','6',7,'image/jpeg',9803,'news/6.jpg','[]','2024-09-29 08:36:00','2024-09-29 08:36:00',NULL,'public'),(104,0,'7','7',7,'image/jpeg',9803,'news/7.jpg','[]','2024-09-29 08:36:01','2024-09-29 08:36:01',NULL,'public'),(105,0,'8','8',7,'image/jpeg',9803,'news/8.jpg','[]','2024-09-29 08:36:01','2024-09-29 08:36:01',NULL,'public'),(106,0,'9','9',7,'image/jpeg',9803,'news/9.jpg','[]','2024-09-29 08:36:01','2024-09-29 08:36:01',NULL,'public'),(107,0,'1','1',8,'image/png',5289,'promotion/1.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(108,0,'2','2',8,'image/png',5289,'promotion/2.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(109,0,'3','3',8,'image/png',5289,'promotion/3.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(110,0,'4','4',8,'image/png',8954,'promotion/4.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(111,0,'5','5',8,'image/png',5073,'promotion/5.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(112,0,'6','6',8,'image/png',7142,'promotion/6.png','[]','2024-09-29 08:36:02','2024-09-29 08:36:02',NULL,'public'),(113,0,'clock','clock',9,'image/png',4277,'general/clock.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(114,0,'credit-card','credit-card',9,'image/png',1423,'general/credit-card.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(115,0,'favicon','favicon',9,'image/png',3906,'general/favicon.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(116,0,'icon-bag','icon-bag',9,'image/png',18958,'general/icon-bag.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(117,0,'icon-operator','icon-operator',9,'image/png',27572,'general/icon-operator.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(118,0,'icon-purchase','icon-purchase',9,'image/png',29492,'general/icon-purchase.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(119,0,'icon-truck','icon-truck',9,'image/png',21385,'general/icon-truck.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(120,0,'logo-light','logo-light',9,'image/png',3810,'general/logo-light.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(121,0,'logo','logo',9,'image/png',4477,'general/logo.png','[]','2024-09-29 08:36:03','2024-09-29 08:36:03',NULL,'public'),(122,0,'open-graph-image','open-graph-image',9,'image/png',348710,'general/open-graph-image.png','[]','2024-09-29 08:36:04','2024-09-29 08:36:04',NULL,'public'),(123,0,'paper-plane','paper-plane',9,'image/png',5125,'general/paper-plane.png','[]','2024-09-29 08:36:04','2024-09-29 08:36:04',NULL,'public'),(124,0,'payment-methods','payment-methods',9,'image/png',476,'general/payment-methods.png','[]','2024-09-29 08:36:04','2024-09-29 08:36:04',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-09-29 08:35:46','2024-09-29 08:35:46',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-09-29 08:35:46','2024-09-29 08:35:46',NULL),(3,0,'products',NULL,'products',0,'2024-09-29 08:35:47','2024-09-29 08:35:47',NULL),(4,0,'customers',NULL,'customers',0,'2024-09-29 08:35:55','2024-09-29 08:35:55',NULL),(5,0,'flash-sales',NULL,'flash-sales',0,'2024-09-29 08:35:58','2024-09-29 08:35:58',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-09-29 08:35:59','2024-09-29 08:35:59',NULL),(7,0,'news',NULL,'news',0,'2024-09-29 08:36:00','2024-09-29 08:36:00',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-09-29 08:36:02','2024-09-29 08:36:02',NULL),(9,0,'general',NULL,'general',0,'2024-09-29 08:36:03','2024-09-29 08:36:03',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-29 08:36:03','2024-09-29 08:36:03');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(12,1,11,NULL,NULL,'',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(13,1,11,NULL,NULL,'',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(14,1,11,NULL,NULL,'',NULL,0,'Product Full Width',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(15,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',1,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(16,1,15,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(17,1,15,13,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(18,1,15,NULL,NULL,'',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(19,1,15,NULL,NULL,'',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(20,1,15,NULL,NULL,'',NULL,0,'Single Post Full Width',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(21,1,15,NULL,NULL,'',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(22,1,0,14,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQ',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(23,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Men',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Women',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Accessories',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Shoes',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Denim',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Dress',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(30,3,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact Us',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(31,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(32,3,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(33,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Returns & Exchanges',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(34,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Shipping & Delivery',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03'),(35,3,0,12,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Privacy Policy',NULL,'_self',0,'2024-09-29 08:36:03','2024-09-29 08:36:03');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-29 08:36:03','2024-09-29 08:36:03'),(2,'Product categories','product-categories','published','2024-09-29 08:36:03','2024-09-29 08:36:03'),(3,'Information','information','published','2024-09-29 08:36:03','2024-09-29 08:36:03');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(2,'is_popular','[\"1\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(3,'faq_ids','[[1,2,3,5,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(4,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(5,'faq_ids','[[1,2,6,8,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(6,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(7,'is_popular','[\"1\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(8,'faq_ids','[[1,7,8,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(9,'faq_ids','[[1,2,8,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(10,'is_popular','[\"1\"]',5,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(11,'faq_ids','[[3,4,5,6,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:52','2024-09-29 08:35:52'),(12,'faq_ids','[[1,2,3,7,8]]',6,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(13,'is_popular','[\"1\"]',7,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(14,'faq_ids','[[2,5,6,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(15,'faq_ids','[[2,3,4,7,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(16,'is_popular','[\"1\"]',9,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(17,'faq_ids','[[2,5,7,9,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(18,'faq_ids','[[1,3,6,7,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(19,'is_popular','[\"1\"]',11,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(20,'faq_ids','[[1,3,4,7,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(21,'faq_ids','[[3,4,7,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(22,'is_popular','[\"1\"]',13,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(23,'faq_ids','[[2,4,5,6,8]]',13,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(24,'faq_ids','[[1,2,7,8,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(25,'is_popular','[\"1\"]',15,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(26,'faq_ids','[[2,3,6,7,8]]',15,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(27,'faq_ids','[[2,4,5,6,8]]',16,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(28,'is_popular','[\"1\"]',17,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(29,'faq_ids','[[1,2,5,6,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(30,'faq_ids','[[2,3,5,6,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(31,'is_popular','[\"1\"]',19,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(32,'faq_ids','[[3,5,6,9,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(33,'faq_ids','[[2,3,4,7,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(34,'is_popular','[\"1\"]',21,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(35,'faq_ids','[[1,2,3,5,6]]',21,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(36,'faq_ids','[[2,5,6,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(37,'is_popular','[\"1\"]',23,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:53','2024-09-29 08:35:53'),(38,'faq_ids','[[2,3,4,6,9]]',23,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:54','2024-09-29 08:35:54'),(39,'faq_ids','[[1,2,3,5,8]]',24,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:35:54','2024-09-29 08:35:54'),(40,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:35:59','2024-09-29 08:35:59'),(41,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:35:59','2024-09-29 08:35:59'),(42,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:35:59','2024-09-29 08:35:59'),(43,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:35:59','2024-09-29 08:35:59'),(44,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(45,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(46,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(47,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(48,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(49,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(50,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(51,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(52,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(53,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:36:00','2024-09-29 08:36:00'),(54,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(55,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(56,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(57,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(58,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(59,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(60,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(61,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(62,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(63,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:36:00','2024-09-29 08:36:00'),(64,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(65,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(66,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(67,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(68,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(69,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(70,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:36:00','2024-09-29 08:36:00'),(71,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(72,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(73,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(74,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(75,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(76,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(77,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(78,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(79,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-29 08:36:00','2024-09-29 08:36:00'),(80,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2024-09-29 08:36:01','2024-09-29 08:36:01'),(81,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(82,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(83,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(84,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(85,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(86,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(87,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(88,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(89,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(90,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(91,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02'),(92,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2024-09-29 08:36:02','2024-09-29 08:36:02');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_09_27_084829_fix_footer_widget',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_10_28_030106_improve-newsletter-widget',1),(25,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(26,'2022_12_02_093615_update_slug_index_columns',1),(27,'2023_01_30_024431_add_alt_to_media_table',1),(28,'2023_02_16_042611_drop_table_password_resets',1),(29,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(30,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(31,'2023_08_21_090810_make_page_content_nullable',1),(32,'2023_09_14_021936_update_index_for_slugs_table',1),(33,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(34,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(35,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2020_11_18_150916_ads_create_ads_table',2),(40,'2021_12_02_035301_add_ads_translations_table',2),(41,'2023_04_17_062645_add_open_in_new_tab',2),(42,'2023_11_07_023805_add_tablet_mobile_image',2),(43,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(44,'2024_04_27_100730_improve_analytics_setting',3),(45,'2015_06_29_025744_create_audit_history',4),(46,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(47,'2015_06_18_033822_create_blog_table',5),(48,'2021_02_16_092633_remove_default_value_for_author_type',5),(49,'2021_12_03_030600_create_blog_translations',5),(50,'2022_04_19_113923_add_index_to_table_posts',5),(51,'2023_08_29_074620_make_column_author_id_nullable',5),(52,'2024_07_30_091615_fix_order_column_in_categories_table',5),(53,'2016_06_17_091537_create_contacts_table',6),(54,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(55,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(56,'2024_03_25_000001_update_captcha_settings_for_contact',6),(57,'2024_04_19_063914_create_custom_fields_table',6),(58,'2020_03_05_041139_create_ecommerce_tables',7),(59,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(60,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(61,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(62,'2021_02_18_073505_update_table_ec_reviews',7),(63,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(64,'2021_03_10_025153_change_column_tax_amount',7),(65,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(66,'2021_04_28_074008_ecommerce_create_product_label_table',7),(67,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(68,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(69,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(70,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(71,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(72,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(73,'2021_11_23_071403_correct_languages_for_product_variations',7),(74,'2021_11_28_031808_add_product_tags_translations',7),(75,'2021_12_01_031123_add_featured_image_to_ec_products',7),(76,'2022_01_01_033107_update_table_ec_shipments',7),(77,'2022_02_16_042457_improve_product_attribute_sets',7),(78,'2022_03_22_075758_correct_product_name',7),(79,'2022_04_19_113334_add_index_to_ec_products',7),(80,'2022_04_28_144405_remove_unused_table',7),(81,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(82,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(83,'2022_06_16_095633_add_index_to_some_tables',7),(84,'2022_06_30_035148_create_order_referrals_table',7),(85,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(86,'2022_08_14_032836_create_ec_order_returns_table',7),(87,'2022_08_14_033554_create_ec_order_return_items_table',7),(88,'2022_08_15_040324_add_billing_address',7),(89,'2022_08_30_091114_support_digital_products_table',7),(90,'2022_09_13_095744_create_options_table',7),(91,'2022_09_13_104347_create_option_value_table',7),(92,'2022_10_05_163518_alter_table_ec_order_product',7),(93,'2022_10_12_041517_create_invoices_table',7),(94,'2022_10_12_142226_update_orders_table',7),(95,'2022_10_13_024916_update_table_order_returns',7),(96,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(97,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(98,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(99,'2022_11_19_041643_add_ec_tax_product_table',7),(100,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(101,'2022_12_17_041532_fix_address_in_order_invoice',7),(102,'2022_12_26_070329_create_ec_product_views_table',7),(103,'2023_01_04_033051_fix_product_categories',7),(104,'2023_01_09_050400_add_ec_global_options_translations_table',7),(105,'2023_01_10_093754_add_missing_option_value_id',7),(106,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(107,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(108,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(109,'2023_02_27_095752_remove_duplicate_reviews',7),(110,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(111,'2023_04_21_082427_create_ec_product_categorizables_table',7),(112,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(113,'2023_05_17_025812_fix_invoice_issue',7),(114,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(115,'2023_05_27_144611_fix_exchange_rate_setting',7),(116,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(117,'2023_06_30_042512_create_ec_order_tax_information_table',7),(118,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(119,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(120,'2023_08_15_064505_create_ec_tax_rules_table',7),(121,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(122,'2023_08_22_094114_drop_unique_for_barcode',7),(123,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(124,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(125,'2023_09_19_024955_create_discount_product_categories_table',7),(126,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(127,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(128,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(129,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(130,'2023_12_25_040604_ec_create_review_replies_table',7),(131,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(132,'2024_01_16_070706_fix_translation_tables',7),(133,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(134,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(135,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(136,'2024_03_29_042242_migrate_old_captcha_settings',7),(137,'2024_03_29_093946_create_ec_order_return_histories_table',7),(138,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(139,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(140,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(141,'2024_05_07_073153_improve_table_wishlist',7),(142,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(143,'2024_05_15_021503_fix_invoice_path',7),(144,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(145,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(146,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(147,'2024_07_14_071826_make_customer_email_nullable',7),(148,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(149,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(150,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(151,'2024_08_19_132849_create_specification_tables',7),(152,'2024_09_07_060744_add_author_column_to_specification_tables',7),(153,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(154,'2024_09_25_073928_remove_wrong_product_slugs',7),(155,'2018_07_09_221238_create_faq_table',8),(156,'2021_12_03_082134_create_faq_translations',8),(157,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(158,'2016_10_03_032336_create_languages_table',9),(159,'2023_09_14_022423_add_index_for_language_table',9),(160,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(161,'2021_12_03_075608_create_page_translations',10),(162,'2023_07_06_011444_create_slug_translations_table',10),(163,'2019_11_18_061011_create_country_table',11),(164,'2021_12_03_084118_create_location_translations',11),(165,'2021_12_03_094518_migrate_old_location_data',11),(166,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(167,'2022_01_16_085908_improve_plugin_location',11),(168,'2022_08_04_052122_delete_location_backup_tables',11),(169,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(170,'2023_07_26_041451_add_more_columns_to_location_table',11),(171,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(172,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(173,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(174,'2024_08_17_094600_add_image_into_countries',11),(175,'2017_10_24_154832_create_newsletter_table',12),(176,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(177,'2017_05_18_080441_create_payment_tables',13),(178,'2021_03_27_144913_add_customer_type_into_table_payments',13),(179,'2021_05_24_034720_make_column_currency_nullable',13),(180,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(181,'2021_10_19_020859_update_metadata_field',13),(182,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(183,'2022_07_07_153354_update_charge_id_in_table_payments',13),(184,'2024_07_04_083133_create_payment_logs_table',13),(185,'2017_07_11_140018_create_simple_slider_table',14),(186,'2016_10_07_193005_create_translations_table',15),(187,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(7,'About us','<p>I shall have to fly; and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Cat, \'if you only walk long enough.\' Alice felt that she had nibbled some more bread-and-butter--\' \'But what happens when you come to an end! \'I wonder what you\'re at!\" You know the song, \'I\'d have said to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be what he did not wish to offend the Dormouse indignantly. However, he consented to go with Edgar Atheling to meet.</p><p>Dormouse fell asleep instantly, and Alice was only the pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the name of the moment she quite forgot you didn\'t sign it,\' said Alice. \'I don\'t think--\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice in a natural way. \'I thought you did,\' said the Dormouse, without considering at all know whether it would be quite absurd for her neck would bend about easily in any direction.</p><p>However, at last it unfolded its arms, took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin again, it was labelled \'ORANGE MARMALADE\', but to open them again, and did not feel encouraged to ask his neighbour to tell me who YOU are, first.\' \'Why?\' said the Duchess. \'I make you dry enough!\' They all sat down again very sadly and quietly, and looked along the course, here and there. There was exactly the right way of expecting nothing but.</p><p>Alice. \'And ever since that,\' the Hatter went on, looking anxiously round to see some meaning in it.\' The jury all brightened up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of the house down!\' said the Mock Turtle would be quite absurd for her to carry it further. So she set off at once, with a shiver. \'I beg your acceptance of this was of very little use without my shoulders. Oh, how I wish I could let you out.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(9,'Terms &amp; Conditions','<p>Mouse did not wish to offend the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice was more hopeless than ever: she sat down in a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day about it!\' and he went on eagerly: \'There is such a capital one for catching mice--oh, I beg your pardon!\' said the Caterpillar. Alice thought the whole thing, and she hastily.</p><p>Those whom she sentenced were taken into custody by the end of the Mock Turtle at last, more calmly, though still sobbing a little glass box that was sitting on the twelfth?\' Alice went on, half to herself, in a hurry: a large cat which was immediately suppressed by the Hatter, \'or you\'ll be telling me next that you never had fits, my dear, and that is rather a hard word, I will tell you more than three.\' \'Your hair wants cutting,\' said the March Hare said--\' \'I didn\'t!\' the March Hare, who.</p><p>WAS a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice in a more subdued tone, and everybody laughed, \'Let the jury eagerly wrote down all three to settle the question, and they can\'t prove I did: there\'s no room to open her mouth; but she was losing her temper. \'Are you content now?\' said the King said gravely, \'and go on till you come and join the dance?\"\' \'Thank you, it\'s a.</p><p>MYSELF, I\'m afraid, sir\' said Alice, in a melancholy way, being quite unable to move. She soon got it out into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going to give the hedgehog a blow with its arms and frowning at the end of the thing yourself, some winter day, I will tell you his history,\' As they walked off together, Alice heard it say to this: so she went on. \'Would you like the tone of great surprise.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(10,'Returns &amp; Exchanges','<p>I was sent for.\' \'You ought to have any rules in particular; at least, if there were TWO little shrieks, and more sounds of broken glass, from which she concluded that it might be hungry, in which you usually see Shakespeare, in the last words out loud, and the Panther received knife and fork with a large fan in the sun. (IF you don\'t even know what \"it\" means well enough, when I was going to shrink any further: she felt sure she would get up and picking the daisies, when suddenly a footman.</p><p>I believe.\' \'Boots and shoes under the sea,\' the Gryphon said to herself how this same little sister of hers would, in the other: the only difficulty was, that her idea of the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the Dormouse\'s place, and Alice could only hear whispers now and then, and holding it to be told so. \'It\'s really dreadful,\' she muttered to herself, as usual. \'Come, there\'s no meaning in it.\' The jury all wrote down on one knee. \'I\'m a poor man,\' the.</p><p>Mock Turtle. \'No, no! The adventures first,\' said the Cat, as soon as look at the stick, and made believe to worry it; then Alice put down her flamingo, and began whistling. \'Oh, there\'s no use speaking to it,\' she said this, she came in with the end of his Normans--\" How are you getting on now, my dear?\' it continued, turning to the Mock Turtle. \'She can\'t explain it,\' said the Mock Turtle yet?\' \'No,\' said the Hatter, it woke up again as quickly as she could not possibly reach it: she could.</p><p>THEN--she found herself lying on the twelfth?\' Alice went timidly up to Alice, very loudly and decidedly, and he went on eagerly: \'There is such a rule at processions; \'and besides, what would happen next. First, she dreamed of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was over at last, and managed to swallow a morsel of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(11,'Shipping &amp; Delivery','<p>March Hare said in a thick wood. \'The first thing I\'ve got to do,\' said the Hatter; \'so I can\'t be civil, you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen was to eat some of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had to run back into the air off all its feet at once, she found she had known them all her wonderful Adventures, till she had to pinch it to speak good English); \'now I\'m.</p><p>HE was.\' \'I never could abide figures!\' And with that she had not long to doubt, for the rest of my own. I\'m a deal too flustered to tell you--all I know I have none, Why, I do so like that curious song about the reason they\'re called lessons,\' the Gryphon added \'Come, let\'s hear some of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Do you mean by that?\' said the March Hare: she thought of herself, \'I don\'t like them raw.\' \'Well, be off, then!\' said the Mock Turtle.</p><p>Gryphon in an offended tone. And the moral of that is, but I shall have some fun now!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat went on, yawning and rubbing its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well look and see after some executions I have to beat them off, and Alice could not help thinking there MUST be more to come, so she felt a very deep well. Either the well was very likely true.) Down, down, down. There was exactly the.</p><p>The players all played at once took up the other, saying, in a very short time the Mouse with an M, such as mouse-traps, and the King very decidedly, and there was a dispute going on shrinking rapidly: she soon made out the words: \'Where\'s the other two were using it as well she might, what a dear quiet thing,\' Alice went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great interest in.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(12,'Privacy Policy','<p>The Hatter shook his head sadly. \'Do I look like one, but the Dormouse followed him: the March Hare. \'He denies it,\' said the Dodo had paused as if it had made. \'He took me for a minute or two to think that will be much the same year for such a very short time the Queen shouted at the March Hare, \'that \"I breathe when I find a thing,\' said the King hastily said, and went on growing, and growing, and she tried to fancy to herself \'Suppose it should be free of them say, \'Look out now, Five!.</p><p>White Rabbit: it was empty: she did not seem to encourage the witness at all: he kept shifting from one foot to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, who seemed to listen, the whole she thought of herself, \'I don\'t know what to beautify is, I can\'t tell you more than Alice could hear him sighing as if he were trying which word sounded best. Some of the jury consider their verdict,\' the King exclaimed, turning to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, getting.</p><p>Alice, \'it\'ll never do to ask: perhaps I shall see it trot away quietly into the garden. Then she went slowly after it: \'I never said I didn\'t!\' interrupted Alice. \'You must be,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little Alice and all the unjust things--\' when his eye chanced to fall upon Alice, as she ran. \'How surprised he\'ll be when he sneezes; For he can thoroughly enjoy The pepper when he finds out who was peeping anxiously into its face to see some.</p><p>BEST butter,\' the March Hare said to herself in a very little way out of its mouth, and addressed her in an offended tone. And she began thinking over all the time he was going a journey, I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, \'how am I to get in at the bottom of a well--\' \'What did they live at the bottom of a globe of goldfish she had not long to doubt, for the rest of the ground, Alice soon began talking again. \'Dinah\'ll miss me very.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(1,2),(4,2),(2,3),(3,3),(1,4),(4,4),(2,5),(4,5),(2,6),(3,6),(2,7),(3,7),(2,8),(3,8),(2,9),(4,9),(2,10),(4,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',953,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1993,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2192,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1578,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',916,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2399,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1065,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2471,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2325,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1723,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',219,NULL,'2024-09-29 08:36:01','2024-09-29 08:36:01');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-29 08:36:02','2024-09-29 08:36:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-09-29 08:36:02'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-09-29 08:36:02'),(4,'analytics_dashboard_widgets','0','2024-09-29 08:35:41','2024-09-29 08:35:41'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-09-29 08:35:42','2024-09-29 08:35:42'),(6,'api_layer_api_key','',NULL,'2024-09-29 08:36:02'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-09-29 08:35:45','2024-09-29 08:35:45'),(12,'language_hide_default','1',NULL,'2024-09-29 08:36:02'),(14,'language_display','all',NULL,'2024-09-29 08:36:02'),(15,'language_hide_languages','[]',NULL,'2024-09-29 08:36:02'),(16,'ecommerce_store_name','Wowy',NULL,NULL),(17,'ecommerce_store_phone','18006268',NULL,NULL),(18,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(19,'ecommerce_store_state','Singapore',NULL,NULL),(20,'ecommerce_store_city','Singapore',NULL,NULL),(21,'ecommerce_store_country','SG',NULL,NULL),(22,'media_random_hash','73e93d1e43c22cae1a843834b7968cdd',NULL,'2024-09-29 08:36:02'),(23,'payment_cod_status','1',NULL,'2024-09-29 08:36:02'),(24,'payment_bank_transfer_status','1',NULL,'2024-09-29 08:36:02'),(26,'show_admin_bar','1',NULL,'2024-09-29 08:36:02'),(27,'language_switcher_display','dropdown',NULL,'2024-09-29 08:36:02'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-09-29 08:36:02'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-09-29 08:36:02'),(32,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-09-29 08:36:02'),(33,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-09-29 08:36:02'),(34,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-09-29 08:36:02'),(35,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-09-29 08:36:02'),(36,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-09-29 08:36:02'),(37,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-09-29 08:36:02'),(38,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-09-29 08:36:02'),(39,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-09-29 08:36:02'),(40,'ecommerce_product_sku_format','WW-2443-[%S]',NULL,'2024-09-29 08:36:02'),(41,'ecommerce_enable_product_specification','1',NULL,NULL),(42,'theme','wowy',NULL,NULL),(43,'admin_favicon','general/favicon.png',NULL,NULL),(44,'admin_logo','general/logo-light.png',NULL,NULL),(45,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(46,'theme-wowy-copyright','Copyright © 2024 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(47,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(48,'theme-wowy-logo','general/logo.png',NULL,NULL),(49,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(50,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(51,'theme-wowy-seo_description','Wowy is an outstanding eCommerce Laravel script. It will be the perfect solution for your current or future web shop.',NULL,NULL),(52,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(53,'theme-wowy-hotline','1900 - 888',NULL,NULL),(54,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(55,'theme-wowy-contact_email','sale@wowy.com',NULL,NULL),(56,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(57,'theme-wowy-homepage_id','1',NULL,NULL),(58,'theme-wowy-blog_page_id','5',NULL,NULL),(59,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(60,'theme-wowy-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(61,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(62,'theme-wowy-number_of_cross_sale_product','4',NULL,NULL),(63,'theme-wowy-preloader_enabled','yes',NULL,NULL),(64,'theme-wowy-preloader_version','v2',NULL,NULL),(65,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(66,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(67,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-09-29 08:36:00','2024-09-29 08:36:00'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-09-29 08:36:00','2024-09-29 08:36:00');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2024-09-29 08:36:00','2024-09-29 08:36:00'),(2,'Home slider 2','home-slider-2',NULL,'published','2024-09-29 08:36:00','2024-09-29 08:36:00'),(3,'Home slider 3','home-slider-3',NULL,'published','2024-09-29 08:36:00','2024-09-29 08:36:00'),(4,'Home slider 4','home-slider-4',NULL,'published','2024-09-29 08:36:00','2024-09-29 08:36:00');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:35:46','2024-09-29 08:35:46'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:35:47','2024-09-29 08:35:47'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:35:47','2024-09-29 08:35:47'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:35:47','2024-09-29 08:35:47'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:35:47','2024-09-29 08:35:47'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:35:47','2024-09-29 08:35:47'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:35:47','2024-09-29 08:35:47'),(43,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:52','2024-09-29 08:35:52'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:52','2024-09-29 08:35:52'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:52','2024-09-29 08:35:52'),(46,'chikie-bluetooth-speaker-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:52','2024-09-29 08:36:04'),(47,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:52','2024-09-29 08:35:52'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(50,'apple-iphone-13-plus-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:36:04'),(51,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(54,'macbook-pro-13-inch-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:36:04'),(55,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(58,'apple-airpods-serial-3-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:36:04'),(59,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(62,'macbook-pro-2015-13-inch-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:36:04'),(63,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:53','2024-09-29 08:35:53'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:54','2024-09-29 08:35:54'),(66,'gaming-keyboard-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:35:54','2024-09-29 08:36:04'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:36:01','2024-09-29 08:36:01'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:36:01','2024-09-29 08:36:01'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:36:01','2024-09-29 08:36:01'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:36:01','2024-09-29 08:36:01'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:36:01','2024-09-29 08:36:01'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(77,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:36:01','2024-09-29 08:36:02'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(95,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(96,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(97,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2024-09-29 08:36:01','2024-09-29 08:36:01'),(101,'chikie-bluetooth-speaker-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(102,'chikie-bluetooth-speaker-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(103,'chikie-bluetooth-speaker-digital',27,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(104,'chikie-bluetooth-speaker-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(105,'camera-samsung-ss-24',29,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(106,'leather-watch-band',30,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(107,'leather-watch-band',31,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(108,'leather-watch-band',32,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(109,'macbook-pro-2015',33,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(110,'macbook-pro-2015',34,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(111,'cool-smart-watches',35,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(112,'cool-smart-watches',36,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(113,'cool-smart-watches',37,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(114,'cool-smart-watches',38,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(115,'cool-smart-watches',39,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(116,'black-smart-watches',40,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(117,'black-smart-watches',41,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(118,'macbook-pro-2015-13-inch-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(119,'macbook-pro-2015-13-inch-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(120,'gaming-keyboard-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04'),(121,'gaming-keyboard-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:36:04','2024-09-29 08:36:04');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:36:01','2024-09-29 08:36:01');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'erin82@hammes.com',NULL,'$2y$12$VjqSdiUC169ayTOLXAVzT.FWalaaZkdxPVU0BPn9A7vy41WwkjviS',NULL,'2024-09-29 08:36:02','2024-09-29 08:36:02','Dolores','Green','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','top_footer_sidebar','wowy',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Sign up to Newsletter\",\"subtitle\":\"...and receive $25 coupon for first shopping.\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(2,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(3,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(4,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(5,'PaymentMethodsWidget','footer_sidebar','wowy',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Payments\",\"description\":\"Secured Payment Gateways\",\"image\":\"general\\/payment-methods.png\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(6,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(7,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(8,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(9,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(10,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(11,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2024-09-29 08:36:03','2024-09-29 08:36:03'),(12,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2024-09-29 08:36:03','2024-09-29 08:36:03');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-29 22:36:05
