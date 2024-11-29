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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `ClaimID` int NOT NULL,
  `Action` varchar(255) NOT NULL,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`),
  KEY `ClaimID` (`ClaimID`),
  CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`ClaimID`) REFERENCES `claims` (`ClaimID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,1,'Claim submitted','2024-11-29 19:32:23'),(2,2,'Claim verified','2024-11-29 19:32:23'),(3,3,'Claim approved','2024-11-29 19:32:23'),(4,4,'Claim denied','2024-11-29 19:32:23'),(5,5,'Claim submitted','2024-11-29 19:32:23'),(6,6,'Claim verified','2024-11-29 19:32:23'),(7,7,'Claim approved','2024-11-29 19:32:23'),(8,8,'Claim denied','2024-11-29 19:32:23'),(9,9,'Claim submitted','2024-11-29 19:32:23'),(10,10,'Claim verified','2024-11-29 19:32:23'),(11,1,'Claim submitted','2024-11-29 20:00:44'),(12,2,'Claim verified','2024-11-29 20:00:44'),(13,3,'Claim approved','2024-11-29 20:00:44'),(14,4,'Claim denied','2024-11-29 20:00:44'),(15,5,'Claim submitted','2024-11-29 20:00:44'),(16,6,'Claim verified','2024-11-29 20:00:44'),(17,7,'Claim approved','2024-11-29 20:00:44'),(18,8,'Claim denied','2024-11-29 20:00:44'),(19,9,'Claim submitted','2024-11-29 20:00:44'),(20,10,'Claim verified','2024-11-29 20:00:44'),(21,1,'Claim submitted','2024-11-29 20:06:41'),(22,2,'Claim verified','2024-11-29 20:06:41'),(23,3,'Claim approved','2024-11-29 20:06:41'),(24,4,'Claim denied','2024-11-29 20:06:41'),(25,5,'Claim submitted','2024-11-29 20:06:41'),(26,6,'Claim verified','2024-11-29 20:06:41'),(27,7,'Claim approved','2024-11-29 20:06:41'),(28,8,'Claim denied','2024-11-29 20:06:41'),(29,9,'Claim submitted','2024-11-29 20:06:41'),(30,10,'Claim verified','2024-11-29 20:06:41');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 15:15:02
