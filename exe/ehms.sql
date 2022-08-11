-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: healthcare_management
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `DoctorID` varchar(20) DEFAULT NULL,
  `Doctorname` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Specialist` varchar(20) DEFAULT NULL,
  `Charge` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('1001','Dr. Rhaman','11:00am','22-03-2022','Physician',500),('1002','Dr Shirin Sharmin','10:00am','02-03-2022','Child',500),('1003','Dr Dravo','11:00am','01-03-2022','Neuro',500);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `PatientID` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `BillNo` decimal(30,0) DEFAULT NULL,
  `Bill` decimal(30,0) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('6001','Rahim','02-03-2022',9001,500,'by DD'),('6002','Nipa','02-04-2022',9002,500,'by Cash'),('6003','Jahanara','11-12-2022',9003,500,'by Credit Card');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `PatientID` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Age` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Diesease` varchar(20) DEFAULT NULL,
  `DoctorID` varchar(20) DEFAULT NULL,
  `Doctorname` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('6001','Rahim','23','male','Fever','1003','Dr dravo','12:00pm','12-02-2022'),('6002','Nipa','12','Female','Fever','1002','Dr Shirin Sharmin','3:00pm','03-04=2022'),('6003','Jahanara','22','Female','Headece','1001','Dr Rahman','4;00pm','02-06-2022');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `DoctorID` varchar(20) DEFAULT NULL,
  `Doctorname` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `ContacNo` decimal(20,0) DEFAULT NULL,
  `Qualifications` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `DateOfJoining` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Specialist` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('1001','Dr Rahman','Md Rahim','rahman546@gmail.com',18364674,'MBBS, MD','Male','O+','01-03-2018','Chittagong','physician'),('1002','Dr Shirin Sharmin','Md Faraz ','shirin78@gmail.com',137585945,'MBBS','Female','A+','18-12-2020','Dhaka','Child'),('1003','Dr Dravo','Mr Mridul','dravo7879@gmail.com',15798900,'MBBS, MD','Male','O+','01-01-2022','Chittagong','Artho'),('1004','Dr Faruque','Md Karim','faruque8@gmail.com',19653754,'MBBS, MD','Male','A-','02-01-2018','Chittagong','Nero Charzon'),('1005','Dr Musa','Md Harun','musa56@gmail.com',17356543,'MBBS, MS','Male','O+','03-04=2019','Dhaka','Child');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorregister`
--

DROP TABLE IF EXISTS `doctorregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorregister` (
  `uname` varchar(20) DEFAULT NULL,
  `pass` decimal(40,0) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gander` varchar(20) DEFAULT NULL,
  `age` decimal(40,0) DEFAULT NULL,
  `mobile` decimal(40,0) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorregister`
--

LOCK TABLES `doctorregister` WRITE;
/*!40000 ALTER TABLE `doctorregister` DISABLE KEYS */;
INSERT INTO `doctorregister` VALUES ('rahman',123,'Dr.','Rahman','Male',45,1347548578,'rahman33@gmail.com'),('shirin',234,'Dr. Shirin','Sharmin','Femal',34,145768599,'shirin12@gmail.com'),('hasan',564,'Dr.','Hasan','Male',55,15768468,'hasan45@gmail.com');
/*!40000 ALTER TABLE `doctorregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patienregister`
--

DROP TABLE IF EXISTS `patienregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patienregister` (
  `username` varchar(20) DEFAULT NULL,
  `password` decimal(40,0) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gander` varchar(20) DEFAULT NULL,
  `age` decimal(40,0) DEFAULT NULL,
  `mobile` decimal(40,0) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patienregister`
--

LOCK TABLES `patienregister` WRITE;
/*!40000 ALTER TABLE `patienregister` DISABLE KEYS */;
INSERT INTO `patienregister` VALUES ('rahim',123,'MD','Rahim','Male',23,123586854,'rahim44@gmail.com'),('mina',234,'MS','Mina','Female',34,135784958,'mina65@gmail.com'),('nipa',678,'SK','Nipa','Female',22,148579498,'nipa44@gmail.com'),('alex',345,'Mr','Alex','Male',23,13485748,'alex44@gmail.com'),('jabed',9012,'Md','Jabed','Male',23,18456566,'jabed56@gmail.com'),('sakib',123,'Sakib','Rayhan','Male',40,1956766777,'sakib34@gmail.com'),('jishan',123,'Md','Jishan','Male',67,15676788,'jishan10@gmail.com'),('sammiya',123,'Sammiya','Chowdhury','Female',22,18456566,'sammiya22@gmail.com');
/*!40000 ALTER TABLE `patienregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PatientID` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `ContacNo` decimal(20,0) DEFAULT NULL,
  `Age` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Information` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('6001','MD Rahim','MD Kamal','rahim387@gmail.com',196473378,'23','Male','A-','Fever','Chittagong'),('6002','Nipa','Nur Nobi','nipa467@gmail.com',145678789,'22','Female','A+','Kidney Problem','Chittagong'),('6003','Jahanara','kalam','jahanara',18364784,'45','Female','O+','fever','Chittagong'),('6004','Johir','Nizam','johir8979@gmail.com',16548758,'33','Male','A-','Nero Psycopathy','Chittagong');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `name` varchar(20) DEFAULT NULL,
  `opinion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('rahim','The behaviourof doctors are very friendly'),('mina','The doctor are very helpfull'),('jabed','The Doctors are very friendly'),('sakib','the doctors are helpfull.');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 17:03:05
