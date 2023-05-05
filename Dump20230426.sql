CREATE DATABASE  IF NOT EXISTS `cabdb1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cabdb1`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: cabdb1
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `question` varchar(30) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('vinay1','vinay','vinay','Your NickName?','vinay'),('kamlesh1','kamlesh','kamlesh','Your NickName?','kamlesh'),('','','',NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `username` varchar(20) DEFAULT NULL,
  `id_type` varchar(25) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('vinay1','Aadhar Card','460152167061','vinay','Male','India','Sector 2,Mira Road East,\nThane-401107','8745912745','vy767@gmail.com'),('kamlesh1','Aadhar Card','475123658945','kamlesh','Male','India','pathanwadi ,Bk road \nMalad east','8465254587','vy223@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercab`
--

DROP TABLE IF EXISTS `intercab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercab` (
  `username` varchar(30) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `car` varchar(15) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `reference` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercab`
--

LOCK TABLES `intercab` WRITE;
/*!40000 ALTER TABLE `intercab` DISABLE KEYS */;
INSERT INTO `intercab` VALUES ('vinay1','RAMESH','ANDHERI','VIRAR','Micro','Suzuki Alto','Rs 500','22626');
/*!40000 ALTER TABLE `intercab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercity`
--

DROP TABLE IF EXISTS `intercity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercity` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercity`
--

LOCK TABLES `intercity` WRITE;
/*!40000 ALTER TABLE `intercity` DISABLE KEYS */;
INSERT INTO `intercity` VALUES ('ANDHERI','VIRAR','Micro','RAMESH','500','Suzuki Alto'),('MIRA ROAD','DADAR','Mini','ARYAN','1000','Suzuki Swift'),('NALASOPARA','BANDRA','SUV','SHYAM','1500','Tata Safari'),('NALASOPARA','BANDRA','','SHYAM','1500','');
/*!40000 ALTER TABLE `intercity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercity_driver`
--

DROP TABLE IF EXISTS `intercity_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercity_driver` (
  `driver` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercity_driver`
--

LOCK TABLES `intercity_driver` WRITE;
/*!40000 ALTER TABLE `intercity_driver` DISABLE KEYS */;
INSERT INTO `intercity_driver` VALUES ('RAMESH','Pune','Goa','Maruti Suzuki','2000','SUV'),('vinay','kurla ','dadar','nano','500','suv'),('Pratik','Mira Road','Virar','Hyundai','450','Micro'),('','','','','',''),('','','','','','');
/*!40000 ALTER TABLE `intercity_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intracab`
--

DROP TABLE IF EXISTS `intracab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intracab` (
  `username` varchar(30) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `car` varchar(15) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `reference` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intracab`
--

LOCK TABLES `intracab` WRITE;
/*!40000 ALTER TABLE `intracab` DISABLE KEYS */;
INSERT INTO `intracab` VALUES ('vinay1','PRATIK','MUMBAI','GOA','Toyota Etios','Rs 2500','62840');
/*!40000 ALTER TABLE `intracab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intracity`
--

DROP TABLE IF EXISTS `intracity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intracity` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intracity`
--

LOCK TABLES `intracity` WRITE;
/*!40000 ALTER TABLE `intracity` DISABLE KEYS */;
INSERT INTO `intracity` VALUES ('MUMBAI','GOA','PRATIK','2500','Toyota Etios'),('DELHI','KERAL','SHYAM','9000','Tata Indica'),('KANPUR','MUMBAI','RAMESH','9500','Bolero');
/*!40000 ALTER TABLE `intracity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intracity_driver`
--

DROP TABLE IF EXISTS `intracity_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intracity_driver` (
  `driver` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intracity_driver`
--

LOCK TABLES `intracity_driver` WRITE;
/*!40000 ALTER TABLE `intracity_driver` DISABLE KEYS */;
INSERT INTO `intracity_driver` VALUES ('Ramesh','Andheri','Goa','Maruti','4500'),('Ramesh','Mira Road','Andheri','Toyota','300');
/*!40000 ALTER TABLE `intracity_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intransport`
--

DROP TABLE IF EXISTS `intransport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intransport` (
  `name` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `truck` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intransport`
--

LOCK TABLES `intransport` WRITE;
/*!40000 ALTER TABLE `intransport` DISABLE KEYS */;
INSERT INTO `intransport` VALUES ('vinay1','RAMESH','VIRAR','ANDHERI','TATA ACE','0 - 10 KG','59KM','Rs: 15100');
/*!40000 ALTER TABLE `intransport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `payment_date` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentss`
--

DROP TABLE IF EXISTS `paymentss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentss` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentss`
--

LOCK TABLES `paymentss` WRITE;
/*!40000 ALTER TABLE `paymentss` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `truck` varchar(20) DEFAULT NULL,
  `distance` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES ('VIRAR','ANDHERI','RAMESH','15000','TATA ACE','59KM'),('MIRA ROAD','BORIVALI','PRATIK','800','TATA 407','9KM'),('VASAI ROAD','THANE','SHYAM','10000','BOLERO PICK UP','41KM');
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_driver`
--

DROP TABLE IF EXISTS `transport_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_driver` (
  `driver` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `truck` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `distance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_driver`
--

LOCK TABLES `transport_driver` WRITE;
/*!40000 ALTER TABLE `transport_driver` DISABLE KEYS */;
INSERT INTO `transport_driver` VALUES ('vinay ','mira road','dadar','nana','8555','93km'),('Shyam','Andheri','Dadar','Box Truck','1250','47KM');
/*!40000 ALTER TABLE `transport_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26  8:52:51
