-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: se2project
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow` (
  `follower` varchar(255) NOT NULL,
  `followed` varchar(255) NOT NULL,
  PRIMARY KEY (`follower`,`followed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES ('m.samir','mhmdsamir92@gmail.com'),('mhmdsamir1@gmail.com','mhmdsamir92@gmail.com'),('mhmdsamir1@gmail.com','youtube'),('mhmdsamir91@gmail.com','youtube'),('mhmdsamir@gmail.com','youtube'),('youtube',''),('youtube','m.samir'),('youtube','mhmdsamir92@gmail.com'),('youtube','Ramadan');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'FCI','sdafaf',1223,1221),(2,'FCI1','Ramadan_Anaconda',1212,12126),(3,'FCI122','Ramadan_Anaconda',1212,12126),(4,'FCI1223','Ramadan_Anaconda3',1222,12226),(5,'FCI1223','Ramadan_Anaconda3',1222,12226),(6,'FCI1223','Ramadan_Anaconda3',1222,12226),(7,'cairo','has too many faculty ',0,123458),(8,'FCICU','Faculty of computer and informantion',0,1234);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saveplaces`
--

DROP TABLE IF EXISTS `saveplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saveplaces` (
  `userid` int(11) NOT NULL,
  `placeid` int(11) NOT NULL,
  KEY `placeid` (`placeid`),
  KEY `userid` (`userid`),
  CONSTRAINT `saveplaces_ibfk_1` FOREIGN KEY (`placeid`) REFERENCES `places` (`id`),
  CONSTRAINT `saveplaces_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saveplaces`
--

LOCK TABLES `saveplaces` WRITE;
/*!40000 ALTER TABLE `saveplaces` DISABLE KEYS */;
INSERT INTO `saveplaces` VALUES (1,1),(2,2),(3,2),(1,2),(1,2),(1,2),(1,2),(3,2),(2,2),(2,2),(2,2),(8,2),(8,2),(4,2),(4,2),(4,2),(4,2),(2,2),(1,2),(1,2),(1,2),(1,2),(1,2),(1,2),(1,2),(2,2),(2,2),(5,2),(5,2),(5,2),(5,2),(5,2),(5,2),(5,2),(5,2),(5,2),(5,2),(2,5),(5,2);
/*!40000 ALTER TABLE `saveplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_place_id` (`lat`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mohamed','mhmdsamir@gmail.com','123',30.0310036,31.2127736),(2,'mohamed','mhmdsamir1@gmail.com','123',0,NULL),(3,'mohamed','mhmdsamir91@gmail.com','123456789',NULL,NULL),(4,'mohamed','mhmdsamir92@gmail.com','123456789',NULL,NULL),(5,'mohamed','m.samir','123456789',30,31),(6,'Omar','omar','123',NULL,NULL),(8,'Ramadan Anaconda','rmadanfci20130197@gmail.com','01276038376',30.145361400000002,31.3188648),(9,'Mohamed Khalid','khalifa@gmail.com','01276038376',NULL,NULL),(10,'facebook','facebook@gmail.com','1111',NULL,NULL),(18,'Ramadan','Ramadan','123',30.145349699999997,31.3188417),(19,'yoytube','youtube','1111',30.145336800000003,31.318835099999994);
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

-- Dump completed on 2016-04-20 18:08:59
