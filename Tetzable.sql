CREATE DATABASE  IF NOT EXISTS `tetzable` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tetzable`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: tetzable
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `administer`
--

DROP TABLE IF EXISTS `administer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administer` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administer`
--

LOCK TABLES `administer` WRITE;
/*!40000 ALTER TABLE `administer` DISABLE KEYS */;
/*!40000 ALTER TABLE `administer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL,
  `Company_Name` varchar(200) DEFAULT NULL,
  `Contact_Name` varchar(100) DEFAULT NULL,
  `Contact_Email` varchar(200) DEFAULT NULL,
  `Notification` tinyint(1) DEFAULT NULL,
  `Invoice_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Invoice_id` (`Invoice_id`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Invoice_id`) REFERENCES `invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `Company_Name` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Register_Number` varchar(200) DEFAULT NULL,
  `Contact_Name` varchar(100) DEFAULT NULL,
  `Contact_Email` varchar(100) DEFAULT NULL,
  `VAT` varchar(100) DEFAULT NULL,
  `Cost_Center` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` int NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Link` varchar(500) DEFAULT NULL,
  `Upload_Time` varchar(200) DEFAULT NULL,
  `Client_id` int DEFAULT NULL,
  `Tester_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Client_id` (`Client_id`),
  KEY `Tester_id` (`Tester_id`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`Tester_id`) REFERENCES `tester` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL,
  `Headline` varchar(300) DEFAULT NULL,
  `Description` varchar(3000) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Create_Time` varchar(200) DEFAULT NULL,
  `Deadline` varchar(200) DEFAULT NULL,
  `Start_Time` varchar(200) DEFAULT NULL,
  `Finish_Time` varchar(200) DEFAULT NULL,
  `Client_id` int DEFAULT NULL,
  `Tester_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Client_id` (`Client_id`),
  KEY `Tester_id` (`Tester_id`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `test_ibfk_2` FOREIGN KEY (`Tester_id`) REFERENCES `tester` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_comment`
--

DROP TABLE IF EXISTS `test_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_comment` (
  `id` int NOT NULL,
  `Test_id` int NOT NULL,
  `Role` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Content` varchar(3000) DEFAULT NULL,
  `Time` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`Test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_comment`
--

LOCK TABLES `test_comment` WRITE;
/*!40000 ALTER TABLE `test_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester`
--

DROP TABLE IF EXISTS `tester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tester` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Info_Stored` tinyint(1) DEFAULT NULL,
  `Agreement` tinyint(1) DEFAULT NULL,
  `Earning` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tester`
--

LOCK TABLES `tester` WRITE;
/*!40000 ALTER TABLE `tester` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tetzable'
--

--
-- Dumping routines for database 'tetzable'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 17:46:26
