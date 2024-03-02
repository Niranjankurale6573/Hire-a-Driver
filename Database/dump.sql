-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hireadriver
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `day` bigint(10) NOT NULL,
  `chg` bigint(10) NOT NULL,
  `pmethod` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'cooldarsh','Rajesh22','2023-04-03',2,2000,'Online');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(45) NOT NULL,
  `duser` varchar(45) CHARACTER SET utf8 NOT NULL,
  `dname` varchar(45) NOT NULL,
  `vno` varchar(45) CHARACTER SET utf8 NOT NULL,
  `ads` varchar(45) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `day` int(10) NOT NULL,
  `vtype` char(30) NOT NULL,
  `chg` varchar(30) NOT NULL,
  `mno` bigint(20) NOT NULL,
  `des` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'cooldarsh','Darshan Wakurde','Rajesh22','Rajesh Patil','MH09EE5555','Patil Nagar Bavdhan','2023-02-04','15:54:00.000000',1,'SUV','pune',9646464664,'Mumbai');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carinfo`
--

DROP TABLE IF EXISTS `carinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `regcar` varchar(30) NOT NULL,
  `vehiname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `carno` varchar(10) CHARACTER SET utf8 NOT NULL,
  `regdate` date NOT NULL,
  `insurance` varchar(10) NOT NULL,
  `insexpdate` date NOT NULL,
  `insproof` varchar(900) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carinfo`
--

LOCK TABLES `carinfo` WRITE;
/*!40000 ALTER TABLE `carinfo` DISABLE KEYS */;
INSERT INTO `carinfo` VALUES (1,'Cooldarshan','Darshan Wakurde','Hundai Creata','MH12RE8799','2022-01-06','Yes','2027-01-13',''),(2,'Rudra07','Rudra Bhandigare','Tata Harrier','MH12RA5566','2021-07-31','Yes','2026-03-07','');
/*!40000 ALTER TABLE `carinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cname` varchar(30) NOT NULL,
  `did` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (1,'cooldarsh','Darshan Wakurde','Raj Yasade','2023-02-04','10 min late'),(2,'cooldarsh','Darshan Wakurde','Raj23','2023-03-17','5min late');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 NOT NULL,
  `repassword` varchar(30) CHARACTER SET utf8 NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'aniket123','Aniket Jadhav','Chadni Chowk Kothrud','aniketjadhav123@gmail.com',9987654399,'Male','12345678','12345678','2007-05-04',''),(2,'cooldarsh','Darshan Wakurde','Patil Nagar,Bavdhan','cooldarshan23@gmail.com',9797897899,'Male','12345678','12345678','2000-07-07','Identity.jpg'),(3,'rudra07','Rudra Bhandigare','Near Karnataka Bank Bavdhan,pune','rudrabhandigare123@gmail.com',7788999355,'Male','12345678','12345678','2001-06-15','365.jpg'),(4,'omkar012','omkar kurale','bavdhan pune','omkar012@gmail.com`',8989889889,'Male','omkar','omkar','2002-06-12','13962072_5413995.jpg');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `adhaarcard` varchar(500) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `dlicence` varchar(15) CHARACTER SET utf8 NOT NULL,
  `dexprience` bigint(2) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `city` varchar(30) NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 NOT NULL,
  `repassword` varchar(30) CHARACTER SET utf8 NOT NULL,
  `dlproof` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Raj23','Raj Kiran Satpute','bavdhanpune','raj123@gmail.com',773994923,'Male','1991-02-25','Identity.jpg','415444','MH1209408848444',5,'Niranjan Ningappa Kurale.jpeg','pune','12345678','12345678','Identity.jpg'),(2,'Rajesh22','Rajesh Rahul Yasade','Kothrud Depo,Pune','rajesh22@gmail.com',7779998887,'Male','1992-06-06','Identity.jpg','415022','MH1213345566677',7,'Identity.jpg','pune','12345678','12345678','Identity.jpg'),(4,'prashant123','Prashant Patil','Patil Nagar bavdhan Pune','prashantpatil123@gmail.com',7777777777,'Male','2000-02-02','365.jpg','Pune','MH09Y9999999999',3,'365.jpg','Pune','prashant123','prashant123','365.jpg');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) NOT NULL,
  `improvement` varchar(45) NOT NULL,
  `Description` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Cooldarsh','Darshan Wakurde','Add Any Payment Option',' Add Any Payment Option Like Upi,Net Banking');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlinepay`
--

DROP TABLE IF EXISTS `onlinepay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onlinepay` (
  `transid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `cardno` bigint(20) NOT NULL,
  `expdate` date NOT NULL,
  `cvv` bigint(3) NOT NULL,
  `amount` bigint(10) NOT NULL,
  PRIMARY KEY (`transid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlinepay`
--

LOCK TABLES `onlinepay` WRITE;
/*!40000 ALTER TABLE `onlinepay` DISABLE KEYS */;
INSERT INTO `onlinepay` VALUES (1,'Cooldarsh23',657788888833221,'2024-01-06',444,1000);
/*!40000 ALTER TABLE `onlinepay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17  0:20:23
