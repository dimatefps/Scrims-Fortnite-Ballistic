CREATE DATABASE  IF NOT EXISTS `scrim_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `scrim_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: scrim_db
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `id_partida` int NOT NULL AUTO_INCREMENT,
  `id_scrim` int DEFAULT NULL,
  `numero_partida` int DEFAULT NULL,
  PRIMARY KEY (`id_partida`),
  KEY `id_scrim` (`id_scrim`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (1,0,1),(2,0,2),(3,0,3),(4,0,4),(5,0,5),(6,0,6),(7,1,1),(8,1,2),(9,1,3),(10,1,4),(11,2,1),(12,2,2),(13,2,3),(14,3,1),(15,3,2),(16,3,3),(17,3,4),(18,3,5),(19,3,6),(20,4,1),(21,4,2),(22,4,3),(23,4,4),(24,4,5),(25,4,6),(26,5,1),(27,5,2),(28,5,3),(29,5,4),(30,5,5),(31,5,6),(32,6,1),(33,6,2),(34,6,3),(35,6,4),(36,6,5),(37,7,1),(38,7,2),(39,7,3);
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumo_partida`
--

DROP TABLE IF EXISTS `resumo_partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumo_partida` (
  `id_resumo_partida` int NOT NULL AUTO_INCREMENT,
  `id_partida` int DEFAULT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  `eliminations` int DEFAULT NULL,
  `deaths` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `damages` int DEFAULT NULL,
  `planted` int DEFAULT NULL,
  `defused` int DEFAULT NULL,
  `ganhou` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_resumo_partida`),
  KEY `id_partida` (`id_partida`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumo_partida`
--

LOCK TABLES `resumo_partida` WRITE;
/*!40000 ALTER TABLE `resumo_partida` DISABLE KEYS */;
INSERT INTO `resumo_partida` VALUES (1,1,'dimatefps',8,10,1,0,0,0,0),(2,1,'SaneAtol16282',3,9,2,0,0,0,0),(3,1,'Jeff_-SZ',17,5,0,0,0,0,1),(4,1,'Zi1379',3,7,1,0,0,0,1),(5,2,'maYumeSenpai',10,3,2,2528,1,0,1),(6,2,'Jeff_-SZ',8,2,4,1343,0,2,1),(7,2,'Zi1379',3,3,2,513,0,0,1),(8,2,'dimatefps',5,7,0,880,1,0,0),(9,2,'SaneAtol16282',0,7,1,160,0,0,0),(10,2,'Marcosfox375',1,8,0,252,1,0,0),(11,3,'MaYumeSenpai',10,4,4,1681,1,1,1),(12,3,'I__LOTUS__I',10,6,5,1699,0,0,1),(13,3,'Marcosfox375',3,7,6,827,3,0,0),(14,3,'Zi1379',5,8,2,1005,1,0,1),(15,3,'dimatefps',6,6,1,706,1,0,0),(16,3,'Jeff_-SZ',4,7,3,563,0,0,0),(17,3,'SaneAtol16282',4,7,1,475,0,0,0),(18,4,'MaYumeSenpai',20,7,6,3378,0,0,1),(19,4,'I__LOTUS__I',4,11,5,1388,1,0,0),(20,4,'Marcosfox375',5,7,8,1375,0,1,1),(21,4,'Zi1379',5,10,2,1775,1,0,0),(22,4,'dimatefps',11,9,2,1429,2,1,0),(23,4,'Jeff_-SZ',4,7,3,563,0,0,1),(24,4,'SaneAtol16282',0,0,0,0,0,0,0),(25,5,'MaYumeSenpai',18,7,2,3529,1,1,1),(26,5,'I__LOTUS__I',5,10,3,1502,1,0,0),(27,5,'Marcosfox375',8,9,4,903,1,0,0),(28,5,'Zi1379',0,9,2,333,0,0,1),(29,5,'dimatefps',3,6,5,828,3,2,1),(30,5,'Jeff_-SZ',9,7,0,1260,0,0,1),(31,5,'SaneAtol16282',0,0,0,0,0,0,0),(32,5,'New ToddynhoRx12',12,9,3,1998,3,0,0),(33,6,'MaYumeSenpai',12,3,3,1979,0,1,1),(34,6,'I__LOTUS__I',4,8,0,707,0,0,0),(35,6,'BodePoeta',2,7,1,409,0,0,0),(36,6,'Zi1379',4,8,0,791,0,0,0),(37,6,'dimatefps',4,5,4,674,3,0,1),(38,6,'Jeff_-SZ',11,4,5,1942,2,0,1),(39,6,'SaneAtol16282',0,6,3,70,0,0,1),(40,6,'New ToddynhoRx12',6,8,4,1170,1,0,0),(41,7,'dimatefps',0,0,0,0,0,0,0),(42,7,'Thormenttus',0,0,0,0,0,0,0),(43,7,'Zi1379',0,0,0,0,0,0,0),(44,7,'Difurent',0,0,0,0,0,0,1),(45,7,'New ToddynhoRx12',0,0,0,0,0,0,1),(46,8,'dimatefps',0,7,0,0,3,0,0),(47,8,'Thormenttus',3,1,1,362,0,0,1),(48,8,'Difurent',5,1,5,1053,0,2,1),(49,8,'New ToddynhoRx12',3,1,0,314,0,0,1),(50,8,'maYumeSenpai',1,1,2,501,0,1,1),(51,8,'Jeff_-SZ',4,6,0,858,0,0,0),(52,9,'dimatefps',3,7,1,589,0,0,0),(53,9,'Thormenttus',1,3,4,516,0,0,1),(54,9,'Difurent',13,1,2,2140,0,0,1),(55,9,'New ToddynhoRx12',4,3,2,560,1,0,1),(56,9,'maYumeSenpai',3,0,0,507,0,0,1),(57,9,'SaneAtol16282',0,7,0,48,0,0,0),(58,9,'Zi1379',3,7,0,373,0,0,0),(59,10,'dimatefps',7,2,4,2017,4,0,1),(60,10,'Thormenttus',3,8,2,722,0,0,0),(61,10,'Difurent',3,9,1,635,1,0,0),(62,10,'New ToddynhoRx12',13,6,4,2125,1,0,1),(63,10,'maYumeSenpai',13,2,2,2344,0,1,1),(64,10,'SaneAtol16282',4,8,1,577,0,1,0),(65,10,'Zi1379',0,9,1,313,0,0,0),(66,11,'dimatefps',6,7,3,886,0,0,1),(67,11,'Thormenttus',0,0,0,0,0,0,0),(68,11,'Difurent',7,10,6,1373,1,0,0),(69,11,'STORM-APPROACHIN',18,11,5,3267,0,0,0),(70,11,'maYumeSenpai',11,8,6,1846,0,0,0),(71,11,'SaneAtol16282',0,11,7,499,1,0,0),(72,11,'Zi1379',2,6,4,572,3,0,1),(73,11,'escanor bravo',17,8,6,2820,0,0,1),(74,11,'Pastorplay5765',3,7,4,722,0,0,1),(75,11,'Zit4l0_AKaA_',12,9,4,1962,0,1,1),(76,12,'STORM-APPROACHIN',9,8,4,1715,0,0,1),(77,12,'maYumeSenpai',8,5,4,1731,0,1,1),(78,12,'SaneAtol16282',2,10,5,540,0,0,0),(79,12,'Zi1379',3,7,2,473,0,0,1),(80,12,'escanor bravo',18,8,0,2585,0,1,0),(81,12,'Zit4l0_AKaA_',6,8,7,1481,0,0,1),(82,12,'dimatefps',7,6,6,1044,4,0,1),(83,12,'New ToddynhoRx12',4,9,6,1056,0,0,0),(84,12,'Difurent',10,8,5,1759,1,0,0),(85,13,'STORM-APPROACHIN',18,9,5,3373,0,1,1),(86,13,'maYumeSenpai',1,7,2,478,0,0,0),(87,13,'SaneAtol16282',0,0,0,0,0,0,0),(88,13,'Zi1379',2,11,2,455,0,0,0),(89,13,'escanor bravo',19,10,5,3410,0,0,1),(90,13,'Zit4l0_AKaA_',14,9,4,2733,0,1,0),(91,13,'dimatefps',6,8,3,1849,5,0,0),(92,13,'New ToddynhoRx12',8,8,4,1308,5,1,1),(93,13,'Difurent',4,11,6,752,0,0,0),(94,14,'dimatefps',0,7,0,401,4,0,0),(95,14,'Nicollas_M2808',0,7,0,162,0,0,0),(96,14,'Difurent',14,0,0,2240,1,4,1),(97,15,'dimatefps',8,7,0,1372,2,0,0),(98,15,'Nicollas_M2808',7,5,3,1187,0,1,1),(99,15,'Difurent',9,4,2,1483,1,0,1),(100,15,'Zi1369',1,10,1,202,0,0,0),(101,16,'dimatefps',8,4,4,971,1,0,1),(102,16,'Nicollas_M2808',1,3,3,273,0,0,1),(103,16,'Difurent Feliz',19,2,8,3477,0,0,1),(104,16,'Zi1369',3,1,1,296,0,0,1),(105,16,'Rafaelln96',9,2,4,2578,1,1,1),(106,16,'zc_Xardas',2,9,1,770,0,0,0),(107,16,'jmpalaciosv',0,8,1,100,0,0,0),(108,16,'Jairochaos',0,8,3,392,1,0,0),(109,16,'Carloncho 2',3,8,1,368,0,0,0),(110,16,'Reboco D Cimento',7,8,1,939,1,0,0),(111,17,'dimatefps',11,4,5,3363,2,0,1),(112,17,'Nicollas_M2808',2,5,2,313,0,0,1),(113,17,'Difurent Feliz',11,6,5,1930,0,0,1),(114,17,'Zi1369',5,4,2,745,0,0,1),(115,17,'los_vagos836',0,0,0,0,0,0,0),(116,17,'Taelgamer007',0,8,2,260,0,0,0),(117,17,'LuamZoka',8,7,1,947,0,0,0),(118,17,'Black_noiir_',3,7,0,556,0,0,0),(119,17,'Carloncho 2',4,4,3,649,1,0,1),(120,17,'Cusssing',4,7,5,1019,0,0,0),(121,18,'dimatefps',7,11,6,1065,1,0,0),(122,18,'Nicollas_M2808',7,10,13,1640,1,0,0),(123,18,'Difurent Feliz',19,8,6,3260,1,1,0),(124,18,'Zi1369',6,11,2,1113,0,0,0),(125,18,'ZAllOOS',14,10,6,1909,2,0,1),(126,18,'nuviuss',12,8,6,2279,1,1,1),(127,18,'elpina1546',4,10,6,949,0,0,1),(128,18,'Soledy_Andre-_-T',4,9,3,928,0,0,0),(129,18,'Carloncho 2',14,7,6,2476,1,0,1),(130,18,'Cusssing',5,8,4,924,0,0,1),(131,19,'dimatefps',3,7,5,1160,2,0,0),(132,19,'MaxDetonade',3,8,2,753,0,0,0),(133,19,'Difurent Feliz',13,7,0,1659,0,0,0),(134,19,'Froppado',2,7,2,308,0,0,0),(135,19,'Zi1379',1,8,0,121,0,0,0),(136,19,'DentedoSiso',13,4,1,1742,0,0,1),(137,19,'JoãoOrtega',10,2,4,1684,1,1,1),(138,19,'Romulando_',2,6,5,623,0,0,1),(139,19,'DEIVAOgamer',4,5,6,933,0,0,1),(140,19,'Eo_angelo',8,5,3,1171,1,0,1),(141,20,'dimatefps',3,8,2,878,3,0,0),(142,20,'Jeff_-SZ',6,7,2,1092,0,0,0),(143,20,'Difurent',10,6,4,2890,1,0,1),(144,20,'Nicollas_M2808',5,4,1,633,1,2,1),(145,21,'dimatefps',8,8,2,0,0,0,1),(146,21,'Jeff_-SZ',0,0,0,0,0,0,0),(147,21,'Difurent',0,0,0,0,0,0,1),(148,21,'Nicollas_M2808',0,0,0,0,0,0,0),(149,21,'I__LOTUS__I',0,0,0,0,0,0,0),(150,22,'dimatefps',4,6,2,867,1,0,1),(151,22,'Jeff_-SZ',9,2,4,1278,1,1,1),(152,22,'Difurent',9,4,5,1605,4,1,1),(153,22,'Nicollas_M2808',1,7,1,394,0,0,0),(154,22,'I__LOTUS__I',1,8,3,506,2,0,0),(155,22,'Zit4lO_AKaA_',10,7,0,1970,0,1,0),(156,23,'dimatefps',6,8,2,1319,0,0,0),(157,23,'Jeff_-SZ',5,4,2,902,1,3,1),(158,23,'Difurent',8,7,2,1197,0,0,0),(159,23,'I__LOTUS__I',4,6,2,432,0,0,1),(160,23,'Zit4lO_A',6,5,2,1251,0,0,1),(161,24,'dimatefps',7,2,0,1228,2,1,1),(162,24,'Jeff_-SZ',2,3,5,507,1,0,1),(163,24,'Difurent',5,8,0,1367,1,0,0),(164,24,'I__LOTUS__I',3,7,1,651,0,0,0),(165,24,'Zit4lO_A',5,4,2,921,0,0,1),(166,25,'dimatefps',4,7,1,798,2,0,0),(167,25,'Jeff_-SZ',4,1,3,808,0,2,1),(168,25,'Difurent',4,3,2,650,1,1,1),(169,25,'I__LOTUS__I',3,7,0,618,1,0,0),(170,25,'Zit4lO_A',6,3,1,904,0,0,1),(171,26,'dimatefps',9,5,2,3481,4,0,1),(172,26,'Jeff_-SZ',12,4,1,2285,0,1,1),(173,26,'zaupgn',0,7,2,174,2,0,0),(174,26,'RevengerFox68',6,7,1,936,0,0,0),(175,26,'Rip_Hiroshy4',3,7,0,295,0,0,0),(176,27,'dimatefps',4,6,0,591,4,0,0),(177,27,'Jeff_-SZ',6,1,1,1114,1,0,1),(178,27,'zaupgn',1,2,1,238,0,1,1),(179,27,'RevengerFox68',6,2,1,908,0,3,1),(180,27,'Rip_Hiroshy4',1,8,1,672,0,0,0),(181,28,'dimatefps',11,8,0,3075,4,0,0),(182,28,'Jeff_-SZ',5,5,5,994,0,0,1),(183,28,'zaupgn',7,6,2,2615,2,1,1),(184,28,'RevengerFox68',4,9,1,900,0,0,0),(185,28,'Rip_Hiroshy4',5,6,2,1118,0,0,1),(186,29,'dimatefps',6,11,12,1654,2,1,1),(187,29,'Jeff_-SZ',23,7,8,3718,0,1,1),(188,29,'zaupgn',8,9,8,1358,0,0,1),(189,29,'RevengerFox68',9,11,2,2275,4,1,0),(190,29,'Rip_Hiroshy4',5,10,2,996,0,0,0),(191,29,'Rovenita',4,8,7,1073,1,1,1),(192,29,'Zi1379',6,8,3,874,0,2,1),(193,29,'I__LOTUS__I',14,9,1,2493,0,0,0),(194,29,'Froppado',2,10,1,532,3,0,0),(195,29,'Marcosfox375',10,10,6,2049,0,1,0),(196,30,'dimatefps',4,9,0,769,5,0,0),(197,30,'Jeff_-SZ',5,9,5,1430,0,0,1),(198,30,'Rip_Hiroshy4',0,0,0,0,0,0,0),(199,30,'Rovenita',9,5,3,1586,1,1,1),(200,30,'Zi1379',4,7,1,1351,4,1,1),(201,30,'Marcosfox375',11,9,4,3192,1,0,0),(202,31,'dimatefps',3,3,4,1491,5,0,1),(203,31,'Jeff_-SZ',6,7,2,1105,1,0,0),(204,31,'I__LOTUS__I',10,5,3,1752,0,0,1),(205,31,'Rovenita',3,6,1,556,0,0,0),(206,31,'Zi1379',3,8,1,612,0,0,0),(207,31,'Marcosfox375',8,4,3,1239,0,1,1),(208,32,'dimatefps',7,10,6,3343,3,0,1),(209,32,'I__LOTUS__I',13,5,1,1879,1,2,1),(210,32,'Rovenita',7,9,1,3089,4,0,0),(211,32,'Froppado',7,11,4,1470,0,0,0),(212,33,'dimatefps',8,9,3,1620,4,0,0),(213,33,'I__LOTUS__I',9,8,1,4620,0,1,1),(214,33,'Rovenita',9,10,1,2647,4,0,1),(215,33,'Froppado',8,9,1,1370,0,1,0),(216,34,'dimatefps',0,8,3,302,0,0,0),(217,34,'I__LOTUS__I',8,6,3,1176,0,0,1),(218,34,'Rovenita',2,4,3,408,2,0,1),(219,34,'Froppado',5,5,4,711,0,0,1),(220,34,'Jeff_-SZ',11,7,0,1823,0,1,0),(221,35,'dimatefps',0,13,0,0,0,0,0),(222,35,'I__LOTUS__I',8,8,2,4180,6,0,1),(223,35,'Rovenita',4,11,3,1028,3,0,0),(224,35,'Froppado',9,9,4,1723,1,1,1),(225,35,'Jeff_-SZ',13,8,3,2106,0,2,0),(226,36,'dimatefps',2,9,5,605,0,0,0),(227,36,'I__LOTUS__I',9,8,2,1480,4,0,1),(228,36,'Difurent',10,9,1,1891,1,1,0),(229,36,'Jeff_-SZ',8,6,2,1476,0,0,1),(230,37,'dimatefps',3,5,1,566,0,0,1),(231,37,'I__LOTUS__I',6,9,4,973,1,0,1),(232,37,'Faze_TR3M1D1NH4',5,9,6,1047,3,0,1),(233,37,'Zit4lO_AkaA_',18,6,5,3652,0,0,1),(234,37,'Shadow_JH37',11,7,10,2222,0,0,1),(235,37,'twitch JOYSTIIIK',7,9,10,1667,0,0,0),(236,37,'luizrated',5,11,5,1186,0,0,0),(237,37,'SOUZAJRO11',8,8,6,1393,0,0,0),(238,37,'zCesar_Jrz',9,8,1,1221,0,0,0),(239,37,'NerO_X',6,9,2,867,2,0,0),(240,38,'dimatefps',7,9,3,856,0,0,0),(241,38,'I__LOTUS__I',5,11,3,954,0,0,0),(242,38,'Faze_TR3M1D1NH4',6,9,5,1330,3,0,0),(243,38,'Zit4lO_AkaA_',11,10,7,2259,0,0,0),(244,38,'Shadow_JH37',6,9,3,875,1,0,0),(245,38,'twitch JOYSTIIIK',9,6,4,1472,0,1,1),(246,38,'luizrated',13,7,5,2006,0,2,1),(247,38,'SOUZAJRO11',11,6,8,1574,0,1,1),(248,38,'zCesar_Jrz',7,8,8,1368,0,0,1),(249,38,'NerO_X',5,8,4,933,2,0,1),(250,39,'dimatefps',6,8,3,649,2,0,0),(251,39,'I__LOTUS__I',2,11,4,934,0,0,0),(252,39,'Faze_TR3M1D1NH4',10,8,4,1623,0,0,0),(253,39,'Zit4lO_AkaA_',7,11,7,1742,0,0,0),(254,39,'Shadow_JH37',12,8,4,2083,0,1,0),(255,39,'twitch JOYSTIIIK',9,7,5,1828,0,0,1),(256,39,'luizrated',14,9,3,1639,0,0,1),(257,39,'SOUZAJRO11',8,9,9,1924,0,0,1),(258,39,'zCesar_Jrz',9,9,5,1909,0,0,1),(259,39,'NerO_X',3,8,7,681,4,0,1);
/*!40000 ALTER TABLE `resumo_partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrims`
--

DROP TABLE IF EXISTS `scrims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scrims` (
  `id_scrim` int NOT NULL,
  `data_scrim` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_scrim`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrims`
--

LOCK TABLES `scrims` WRITE;
/*!40000 ALTER TABLE `scrims` DISABLE KEYS */;
INSERT INTO `scrims` VALUES (0,'2025-01-31 21:04:38'),(1,'2025-02-01 18:30:25'),(2,'2025-02-02 18:30:00'),(3,'2025-02-08 18:30:00'),(4,'2025-02-09 18:30:00'),(5,'2025-02-15 18:30:00'),(6,'2025-02-22 18:30:00'),(7,'2025-03-01 18:30:00');
/*!40000 ALTER TABLE `scrims` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26 16:02:09
