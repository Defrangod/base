CREATE DATABASE  IF NOT EXISTS `practice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `practice`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: practice
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `accounting`
--

DROP TABLE IF EXISTS `accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounting` (
  `ID` int(11) NOT NULL,
  `Category` int(11) DEFAULT NULL,
  `Equipment` int(11) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `PartNmodel` varchar(45) DEFAULT NULL,
  `Kolvo` int(11) DEFAULT NULL,
  `InvNumber` varchar(45) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `Devision` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `DatePost` date DEFAULT NULL,
  `DateEdit` date DEFAULT NULL,
  `Sotrud` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_accounting_sotrud1_idx` (`Sotrud`),
  KEY `fk_accounting_equipment1_idx` (`Equipment`),
  KEY `fk_accounting_status1_idx` (`Status`),
  KEY `fk_accounting_category1_idx` (`Category`),
  KEY `fk_accounting_zip1_idx` (`Zip`),
  KEY `fk_accounting_devision1_idx` (`Devision`),
  KEY `fk_accounting_supplier1_idx` (`supplier`),
  CONSTRAINT `fk_accounting_category1` FOREIGN KEY (`Category`) REFERENCES `category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_devision1` FOREIGN KEY (`Devision`) REFERENCES `devision` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_equipment1` FOREIGN KEY (`Equipment`) REFERENCES `equipment` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_sotrud1` FOREIGN KEY (`Sotrud`) REFERENCES `sotrud` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_status1` FOREIGN KEY (`Status`) REFERENCES `status` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_supplier1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_accounting_zip1` FOREIGN KEY (`Zip`) REFERENCES `zip` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting`
--

LOCK TABLES `accounting` WRITE;
/*!40000 ALTER TABLE `accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changelog` (
  `ID` int(11) NOT NULL,
  `Accounting` int(11) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_changelog_accounting1_idx` (`Accounting`),
  CONSTRAINT `fk_changelog_accounting1` FOREIGN KEY (`Accounting`) REFERENCES `accounting` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devision`
--

DROP TABLE IF EXISTS `devision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devision` (
  `ID` int(11) NOT NULL,
  `Devision` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devision`
--

LOCK TABLES `devision` WRITE;
/*!40000 ALTER TABLE `devision` DISABLE KEYS */;
/*!40000 ALTER TABLE `devision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `ID` int(11) NOT NULL,
  `Equipment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotrud`
--

DROP TABLE IF EXISTS `sotrud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sotrud` (
  `ID` int(11) NOT NULL,
  `FIO` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_sotrud_users_idx` (`User`),
  CONSTRAINT `fk_sotrud_users` FOREIGN KEY (`User`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotrud`
--

LOCK TABLES `sotrud` WRITE;
/*!40000 ALTER TABLE `sotrud` DISABLE KEYS */;
/*!40000 ALTER TABLE `sotrud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `INN` varchar(45) DEFAULT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  `PastName` varchar(45) DEFAULT NULL,
  `Site` varchar(45) DEFAULT NULL,
  `ContractPerson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Login` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip`
--

DROP TABLE IF EXISTS `zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zip` (
  `ID` int(11) NOT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip`
--

LOCK TABLES `zip` WRITE;
/*!40000 ALTER TABLE `zip` DISABLE KEYS */;
/*!40000 ALTER TABLE `zip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'practice'
--

--
-- Dumping routines for database 'practice'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-08 17:25:11
