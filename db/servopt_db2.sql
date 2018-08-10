-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: servopt_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bus_route`
--

DROP TABLE IF EXISTS `bus_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bus_route` (
  `route_no` varchar(10) NOT NULL,
  `direction` varchar(2) NOT NULL,
  `origin` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `distance` decimal(5,2) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_no`,`direction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_route`
--

LOCK TABLES `bus_route` WRITE;
/*!40000 ALTER TABLE `bus_route` DISABLE KEYS */;
INSERT INTO `bus_route` VALUES ('AC 14','DN','Saltlake','Baruipur',NULL,NULL),('AC 14','UP','Saltlake','Baruipur',NULL,NULL),('AC 24','DN','Patuli ','Howrah',NULL,NULL),('AC 24','UP','Patuli ','Howrah',NULL,NULL),('AC 37B','DN','Garia','Airport',NULL,NULL),('AC 37B','UP','Garia','Airport',NULL,NULL),('AC 43','DN','Golf green','Airport',NULL,NULL),('AC 43','UP','Golf green','Airport',NULL,NULL),('AC 47','DN','Kudghat','Sapoorji',NULL,NULL),('AC 47','UP','Kudghat','Sapoorji',NULL,NULL),('AC 9','DN','Jadavpur','Karunamoyee',NULL,NULL),('AC 9','UP','Jadavpur','Karunamoyee',NULL,NULL),('AC4A','DN','Parnasree','Sapoorji',NULL,NULL),('AC4A','UP','Parnasree','Sapoorji',NULL,NULL),('AC50','DN','Garia','Belur',NULL,NULL),('AC50','UP','Garia','Belur',NULL,NULL),('AC51','DN','Kudghat',' Airport',NULL,NULL),('AC51','UP','Kudghat',' Airport',NULL,NULL),('AC9B','DN','Jadavpur','Ecospace',NULL,NULL),('AC9B','UP','Jadavpur','Ecospace',NULL,NULL),('C 26','DN','Howrah','Baruipur',NULL,NULL),('C 26','UP','Howrah','Baruipur',NULL,NULL),('C14/1','DN','Tollygunge ','Madhyamgram',NULL,NULL),('C14/1','UP','Tollygunge ','Madhyamgram',NULL,NULL),('D1','DN','Tollygunge ','Chakdaha',NULL,NULL),('D1','UP','Tollygunge ','Chakdaha',NULL,NULL),('E26','DN','Howrah','Baruipur',NULL,NULL),('E26','UP','Howrah','Baruipur',NULL,NULL),('M 2','DN','Tollygunge','Birati',NULL,NULL),('M 2','UP','Tollygunge','Birati',NULL,NULL),('MW1','DN','Sulekha ','Unitech',NULL,NULL),('MW1','UP','Sulekha ','Unitech',NULL,NULL),('MW3','DN','Patuli ','Unitech',NULL,NULL),('MW3','UP','Patuli ','Unitech',NULL,NULL),('S 12C','DN','Paikpara',' Nayabad',NULL,NULL),('S 12C','UP','Paikpara',' Nayabad',NULL,NULL),('S 14','DN','Saltlake ','Garia',NULL,NULL),('S 14','UP','Saltlake ','Garia',NULL,NULL),('S 21','DN','Bagbazar','Garia',NULL,NULL),('S 21','UP','Bagbazar','Garia',NULL,NULL),('S 24','DN','Howrah','Patuli',NULL,NULL),('S 24','UP','Howrah','Patuli',NULL,NULL),('S 4','DN','Saltlake Gate','Parnasree',NULL,NULL),('S 4','UP','Saltlake Gate','Parnasree',NULL,NULL),('S 9C','DN','Patuli ','Ecospace',NULL,NULL),('S 9C','UP','Patuli ','Ecospace',NULL,NULL),('S24 N','DN','Patuli ','Nabanna',NULL,NULL),('S24 N','UP','Patuli ','Nabanna',NULL,NULL),('S37A','DN','Airport ','Garia',NULL,NULL),('S37A','UP','Airport ','Garia',NULL,NULL);
/*!40000 ALTER TABLE `bus_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_stops`
--

DROP TABLE IF EXISTS `bus_stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bus_stops` (
  `stop_id` int(20) NOT NULL AUTO_INCREMENT,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `stop_name` varchar(100) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_stops`
--

LOCK TABLES `bus_stops` WRITE;
/*!40000 ALTER TABLE `bus_stops` DISABLE KEYS */;
INSERT INTO `bus_stops` VALUES (5,22.562474730801693,88.26980653883902,'good','2018-08-08 10:21:30'),(6,22.564376990183703,88.56369081618277,'goodas','2018-08-08 10:34:32'),(7,22.11,88.54,'abc','2018-08-08 10:48:28'),(8,22.509835154557855,88.44902101637808,'aaaaa','2018-08-08 10:49:06'),(9,22.509835154557855,88.44902101637808,'aaaaa','2018-08-08 10:52:57'),(10,22.509835154557855,88.44902101637808,'aaaaa','2018-08-08 10:54:19'),(11,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:54:49'),(12,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:54:57'),(13,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:55:29'),(14,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:55:40'),(15,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:55:50'),(16,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:56:25'),(17,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:56:46'),(18,22.509835154557855,88.44902101637808,'aaaaaa','2018-08-08 10:56:57'),(19,22.556133676684368,88.49090639235465,'lalal','2018-08-08 10:57:50'),(20,22.526961074146726,88.50601259352652,'as','2018-08-08 11:38:29'),(21,22.539645571893736,88.36937013747183,'new','2018-08-08 14:57:13'),(22,22.502857319721862,88.54103151442496,'newas','2018-08-08 14:57:54'),(23,22.11,88.54,'try','2018-08-09 06:51:14'),(24,22.564630618915086,88.1548095200119,'pppp','2018-08-09 07:58:39'),(25,22.516432052486188,88.45074836946105,'a','2018-08-09 10:25:53'),(26,22.496132887364602,88.31822578645324,'a','2018-08-09 10:35:42');
/*!40000 ALTER TABLE `bus_stops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_stops_new`
--

DROP TABLE IF EXISTS `bus_stops_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bus_stops_new` (
  `stop_id` varchar(10) NOT NULL,
  `route_no` varchar(10) DEFAULT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `stop_name` varchar(100) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`stop_id`),
  KEY `route_no_idx` (`route_no`,`direction`),
  CONSTRAINT `route_no` FOREIGN KEY (`route_no`, `direction`) REFERENCES `bus_route` (`route_no`, `direction`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_stops_new`
--

LOCK TABLES `bus_stops_new` WRITE;
/*!40000 ALTER TABLE `bus_stops_new` DISABLE KEYS */;
INSERT INTO `bus_stops_new` VALUES ('S37A-DN-1','S37A','DN','Ultadanga/Hudco II',22.591452,88.393613,120,1),('S37A-DN-10','S37A','DN','Ruby Hospital',22.512787,88.402032,120,10),('S37A-DN-11','S37A','DN','Kalikapur',22.5092839,88.40181873,120,11),('S37A-DN-12','S37A','DN','Ajaynagar',22.496627,88.398973,120,12),('S37A-DN-13','S37A','DN','Patuli ',22.472006,88.389704,120,13),('S37A-DN-14','S37A','DN','Dhalai Bridge',22.465834,88.393038,120,14),('S37A-DN-15','S37A','DN','Kamalgazi',22.45385,88.394894,120,15),('S37A-DN-2','S37A','DN','Hudco',22.590906,88.393587,120,2),('S37A-DN-3','S37A','DN','Bengal Chemical',22.580298,88.401343,120,3),('S37A-DN-4','S37A','DN','Mani Square',22.577894,88.401958,120,4),('S37A-DN-5','S37A','DN','Kadapara',22.570379,88.404402,120,5),('S37A-DN-6','S37A','DN','C I T Building',22.56154,88.408656,120,6),('S37A-DN-7','S37A','DN','Metropolitan',22.552282,88.40637,120,7),('S37A-DN-8','S37A','DN','Science city',22.541855,88.398406,120,8),('S37A-DN-9','S37A','DN','Panchannya Gram',22.525216,88.396101,120,9),('S37A-UP-1','S37A','UP','Kamalgazi',22.453853,88.394704,120,1),('S37A-UP-10','S37A','UP','C I T Building',22.5613662,88.40858638,120,10),('S37A-UP-11','S37A','UP','Kadapara',22.570827,88.403926,120,11),('S37A-UP-12','S37A','UP','Mani Square',22.578164,88.40167,120,12),('S37A-UP-13','S37A','UP','Bengal Chemical',22.581108,88.400811,120,13),('S37A-UP-14','S37A','UP','Hudco',22.58969945,88.39351237,120,14),('S37A-UP-15','S37A','UP','Ultadanga/Hudco II',22.590639,88.393139,120,15),('S37A-UP-2','S37A','UP','Dhalai Bridge',22.465839,88.392808,120,2),('S37A-UP-3','S37A','UP','Patuli ',22.472132,88.389406,120,3),('S37A-UP-4','S37A','UP','Ajaynagar',22.49707471,88.39900017,120,4),('S37A-UP-5','S37A','UP','Kalikapur',22.50869151,88.4014678,120,5),('S37A-UP-6','S37A','UP','Ruby Hospital',22.5146536,88.40151565,120,6),('S37A-UP-7','S37A','UP','Panchannya Gram',22.525312,88.395806,120,7),('S37A-UP-8','S37A','UP','Science city',22.539639,88.397667,120,8),('S37A-UP-9','S37A','UP','Metropolitan',22.556733,88.412091,120,9);
/*!40000 ALTER TABLE `bus_stops_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_tracking_log`
--

DROP TABLE IF EXISTS `bus_tracking_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bus_tracking_log` (
  `route_no` varchar(10) NOT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `vehicle_no` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `stop_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`route_no`),
  KEY `route_no_live_tracking_idx` (`route_no`,`direction`),
  KEY `bus_stops_live_tracking_idx` (`stop_id`),
  CONSTRAINT `bus_stops_live_tracking` FOREIGN KEY (`stop_id`) REFERENCES `bus_stops_new` (`stop_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `route_no_live_tracking` FOREIGN KEY (`route_no`, `direction`) REFERENCES `bus_route` (`route_no`, `direction`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_tracking_log`
--

LOCK TABLES `bus_tracking_log` WRITE;
/*!40000 ALTER TABLE `bus_tracking_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_tracking_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-09 17:25:48
