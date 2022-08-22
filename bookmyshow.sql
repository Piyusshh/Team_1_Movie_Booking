CREATE DATABASE  IF NOT EXISTS `bookmyshow` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookmyshow`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bookmyshow
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'admin','piyush','piyush123'),(2,'customer','ayesha','ayesha123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (14),(14),(14),(14);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_bookings`
--

DROP TABLE IF EXISTS `table_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_bookings` (
  `show_id` bigint(20) NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `a5` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `b5` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_bookings`
--

LOCK TABLES `table_bookings` WRITE;
/*!40000 ALTER TABLE `table_bookings` DISABLE KEYS */;
INSERT INTO `table_bookings` VALUES (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,0,0,1,0,1,0,0,1,0,0,0,0,0,0,0),(9,0,0,1,1,0,0,0,0,0,0,1,1,0,1,0),(13,0,1,1,1,0,0,0,1,0,0,1,1,0,0,1);
/*!40000 ALTER TABLE `table_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_city`
--

DROP TABLE IF EXISTS `table_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_city` (
  `c_id` bigint(20) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_pincode` varchar(255) NOT NULL,
  `c_state` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_city`
--

LOCK TABLES `table_city` WRITE;
/*!40000 ALTER TABLE `table_city` DISABLE KEYS */;
INSERT INTO `table_city` VALUES (1,'Bengaluru','590056','Karnataka'),(5,'Pune','590546','Maharastra'),(10,'Mumbai','120021','Maharastra');
/*!40000 ALTER TABLE `table_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_movie`
--

DROP TABLE IF EXISTS `table_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_movie` (
  `m_id` bigint(20) NOT NULL,
  `m_description` varchar(255) DEFAULT NULL,
  `m_director` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_movie`
--

LOCK TABLES `table_movie` WRITE;
/*!40000 ALTER TABLE `table_movie` DISABLE KEYS */;
INSERT INTO `table_movie` VALUES (3,'description about the WAR 3 movie here','WAR 3 directors','WAR 3'),(7,'description about the HULK movie here','HULK directors','HULK'),(12,'description about the Dr Starnge movie here','Strange directors','Dr. Strange');
/*!40000 ALTER TABLE `table_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_show`
--

DROP TABLE IF EXISTS `table_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_show` (
  `show_id` bigint(20) NOT NULL,
  `show_time` varchar(255) NOT NULL,
  `the_movie_m_id` bigint(20) DEFAULT NULL,
  `the_theater_t_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`show_id`),
  KEY `FKsayo2xxw82i3o8h7twmmps3um` (`the_movie_m_id`),
  KEY `FKeg2ca18ko9iie9lo3h6ay2ury` (`the_theater_t_id`),
  CONSTRAINT `FKeg2ca18ko9iie9lo3h6ay2ury` FOREIGN KEY (`the_theater_t_id`) REFERENCES `table_theater` (`t_id`),
  CONSTRAINT `FKsayo2xxw82i3o8h7twmmps3um` FOREIGN KEY (`the_movie_m_id`) REFERENCES `table_movie` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_show`
--

LOCK TABLES `table_show` WRITE;
/*!40000 ALTER TABLE `table_show` DISABLE KEYS */;
INSERT INTO `table_show` VALUES (4,'4/4/2020 - 3:30 PM',3,2),(9,'4/4/2020 - 3:30 PM',7,6),(13,'4/4/2020 - 3:30 PM',12,11);
/*!40000 ALTER TABLE `table_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_theater`
--

DROP TABLE IF EXISTS `table_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_theater` (
  `t_id` bigint(20) NOT NULL,
  `t_area` varchar(255) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `city_c_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `FKtflvxj66v6b9kicc9kwh3js3g` (`city_c_id`),
  CONSTRAINT `FKtflvxj66v6b9kicc9kwh3js3g` FOREIGN KEY (`city_c_id`) REFERENCES `table_city` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_theater`
--

LOCK TABLES `table_theater` WRITE;
/*!40000 ALTER TABLE `table_theater` DISABLE KEYS */;
INSERT INTO `table_theater` VALUES (2,'Koramangala','Finox mall',1),(6,'Kharadi','Phoniex mall',5),(11,'Dharavi','Mumbai mall',10);
/*!40000 ALTER TABLE `table_theater` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 12:46:14
