-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: dfd_cart
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_config`
--

DROP TABLE IF EXISTS `admin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_config` (
  `config_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_format` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_width` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_breadcrumb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferred_delivery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_earliest` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_range` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_weekends` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferred_required` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id_on` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_on` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_captcha` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_tax` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_registration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_config`
--

LOCK TABLES `admin_config` WRITE;
/*!40000 ALTER TABLE `admin_config` DISABLE KEYS */;
INSERT INTO `admin_config` VALUES ('general_config','href_vertical','300','yes','','','','no','1','7','yes','no','1','1','','','','','','','');
/*!40000 ALTER TABLE `admin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_structure`
--

DROP TABLE IF EXISTS `category_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_structure` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `category_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(12) NOT NULL DEFAULT '0',
  `timestamp` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_structure`
--

LOCK TABLES `category_structure` WRITE;
/*!40000 ALTER TABLE `category_structure` DISABLE KEYS */;
INSERT INTO `category_structure` VALUES (100,'orchids',1,'');
/*!40000 ALTER TABLE `category_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_for_admin`
--

DROP TABLE IF EXISTS `logs_for_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_for_admin` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `log_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_for_admin`
--

LOCK TABLES `logs_for_admin` WRITE;
/*!40000 ALTER TABLE `logs_for_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_for_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_for_user`
--

DROP TABLE IF EXISTS `logs_for_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_for_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `log_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_for_user`
--

LOCK TABLES `logs_for_user` WRITE;
/*!40000 ALTER TABLE `logs_for_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_for_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_stamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_subtotal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied_discount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_trans_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_tracking` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_carrier` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_tax` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_category_id` int(12) NOT NULL DEFAULT '0',
  `optional_stock_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES (100,'vanda blue magic','10005','5.95',1,'');
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_config`
--

DROP TABLE IF EXISTS `template_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_config` (
  `config_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_6` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_7` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_8` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_9` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_font` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_wrap` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_config`
--

LOCK TABLES `template_config` WRITE;
/*!40000 ALTER TABLE `template_config` DISABLE KEYS */;
INSERT INTO `template_config` VALUES ('template','+0','35','23','20','18','16','15','14','12','11','logo.png','Company Name','LiberationSerif-Italic.ttf','100%');
/*!40000 ALTER TABLE `template_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22  8:58:09
