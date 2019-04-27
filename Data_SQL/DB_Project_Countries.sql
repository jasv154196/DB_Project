-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: DB_Project
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Countries` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Country_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (4,'Afghanistan'),(5,'Albania'),(6,'Algeria'),(7,'Andorra'),(8,'Angola'),(10,'Antigua and Barbuda'),(11,'Argentina'),(12,'Armenia'),(14,'Australia'),(15,'Austria'),(16,'Azerbaijan'),(17,'Bahamas'),(18,'Bahrain'),(19,'Bangladesh'),(20,'Barbados'),(21,'Belgium'),(22,'Belize'),(23,'Benin'),(25,'Bhutan'),(26,'Bolivia'),(28,'Bosnia-Herzegovina'),(29,'Botswana'),(30,'Brazil'),(31,'Brunei'),(32,'Bulgaria'),(33,'Burkina Faso'),(34,'Burundi'),(35,'Belarus'),(36,'Cambodia'),(37,'Cameroon'),(38,'Canada'),(41,'Central African Republic'),(42,'Chad'),(43,'Chile'),(44,'China'),(45,'Colombia'),(46,'Comoros'),(47,'Republic of the Congo'),(49,'Costa Rica'),(50,'Croatia'),(51,'Cuba'),(53,'Cyprus'),(54,'Czech Republic'),(55,'Denmark'),(56,'Djibouti'),(57,'Dominica'),(58,'Dominican Republic'),(59,'Ecuador'),(60,'Egypt'),(61,'El Salvador'),(62,'Equatorial Guinea'),(63,'Eritrea'),(64,'Estonia'),(65,'Ethiopia'),(66,'Falkland Islands'),(67,'Fiji'),(68,'Finland'),(69,'France'),(70,'French Guiana'),(71,'French Polynesia'),(72,'Gabon'),(73,'Gambia'),(74,'Georgia'),(75,'Germany'),(76,'Ghana'),(78,'Greece'),(80,'Grenada'),(81,'Guadeloupe'),(83,'Guatemala'),(84,'Guinea'),(85,'Guinea-Bissau'),(86,'Guyana'),(87,'Haiti'),(88,'Honduras'),(89,'Hong Kong'),(90,'Hungary'),(91,'Iceland'),(92,'India'),(93,'Indonesia'),(94,'Iran'),(95,'Iraq'),(96,'Ireland'),(97,'Israel'),(98,'Italy'),(99,'Ivory Coast'),(100,'Jamaica'),(101,'Japan'),(102,'Jordan'),(103,'Kazakhstan'),(104,'Kenya'),(106,'Kuwait'),(107,'Kyrgyzstan'),(108,'Laos'),(109,'Latvia'),(110,'Lebanon'),(111,'Lesotho'),(112,'Liberia'),(113,'Libya'),(115,'Lithuania'),(116,'Luxembourg'),(117,'Macau'),(118,'Macedonia'),(119,'Madagascar'),(120,'Malawi'),(121,'Malaysia'),(122,'Maldives'),(123,'Mali'),(124,'Malta'),(127,'Martinique'),(128,'Mauritania'),(129,'Mauritius'),(130,'Mexico'),(132,'Moldova'),(136,'Morocco'),(137,'Mozambique'),(138,'Myanmar'),(139,'Namibia'),(141,'Nepal'),(142,'Netherlands'),(143,'New Caledonia'),(144,'New Zealand'),(145,'Nicaragua'),(146,'Niger'),(147,'Nigeria'),(149,'North Korea'),(151,'Norway'),(153,'Pakistan'),(155,'West Bank and Gaza Strip'),(156,'Panama'),(157,'Papua New Guinea'),(158,'Paraguay'),(159,'Peru'),(160,'Philippines'),(161,'Poland'),(162,'Portugal'),(164,'Qatar'),(166,'Romania'),(167,'Russia'),(168,'Rwanda'),(173,'Saudi Arabia'),(174,'Senegal'),(175,'Serbia-Montenegro'),(176,'Seychelles'),(177,'Sierra Leone'),(178,'Singapore'),(179,'Slovak Republic'),(180,'Slovenia'),(181,'Solomon Islands'),(182,'Somalia'),(183,'South Africa'),(184,'South Korea'),(185,'Spain'),(186,'Sri Lanka'),(189,'St. Kitts and Nevis'),(190,'St. Lucia'),(195,'Sudan'),(196,'Suriname'),(197,'Swaziland'),(198,'Sweden'),(199,'Switzerland'),(200,'Syria'),(201,'Taiwan'),(202,'Tajikistan'),(203,'Tanzania'),(204,'Togo'),(205,'Thailand'),(207,'Trinidad and Tobago'),(208,'Tunisia'),(209,'Turkey'),(210,'Turkmenistan'),(213,'Uganda'),(214,'Ukraine'),(215,'United Arab Emirates'),(217,'United States'),(218,'Uruguay'),(219,'Uzbekistan'),(220,'Vanuatu'),(221,'Vatican City'),(222,'Venezuela'),(223,'Vietnam'),(226,'Wallis and Futuna'),(228,'Yemen'),(229,'Democratic Republic of the Congo'),(230,'Zambia'),(231,'Zimbabwe'),(235,'Yugoslavia'),(236,'Czechoslovakia'),(347,'East Timor'),(349,'Western Sahara'),(359,'Soviet Union'),(362,'West Germany (FRG)'),(377,'North Yemen'),(403,'Rhodesia'),(406,'South Yemen'),(422,'International'),(428,'South Vietnam'),(499,'East Germany (GDR)'),(532,'New Hebrides'),(603,'United Kingdom'),(604,'Zaire'),(605,'People\'s Republic of the Congo'),(1001,'Serbia'),(1002,'Montenegro'),(1003,'Kosovo'),(1004,'South Sudan');
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-27 15:10:48
