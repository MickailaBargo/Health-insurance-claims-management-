-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: health_insurance
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claims` (
  `ClaimID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `PolicyID` int NOT NULL,
  `ClaimAmount` decimal(10,2) NOT NULL,
  `Status` enum('Submitted','Verified','Approved','Denied') DEFAULT 'Submitted',
  `SubmissionDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ClaimID`),
  KEY `UserID` (`UserID`),
  KEY `PolicyID` (`PolicyID`),
  CONSTRAINT `claims_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `claims_ibfk_2` FOREIGN KEY (`PolicyID`) REFERENCES `policies` (`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
INSERT INTO `claims` VALUES (1,1,1,5000.00,'Submitted','2024-11-29 19:32:23'),(2,2,2,20000.00,'Verified','2024-11-29 19:32:23'),(3,3,3,15000.00,'Approved','2024-11-29 19:32:23'),(4,4,4,8000.00,'Denied','2024-11-29 19:32:23'),(5,5,1,10000.00,'Submitted','2024-11-29 19:32:23'),(6,6,2,30000.00,'Verified','2024-11-29 19:32:23'),(7,7,3,18000.00,'Approved','2024-11-29 19:32:23'),(8,8,4,12000.00,'Denied','2024-11-29 19:32:23'),(9,9,1,7000.00,'Submitted','2024-11-29 19:32:23'),(10,10,2,25000.00,'Verified','2024-11-29 19:32:23');
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 15:15:01
