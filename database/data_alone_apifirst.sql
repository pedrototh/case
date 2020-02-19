-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: data_alone
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
-- Table structure for table `apifirst`
--

DROP TABLE IF EXISTS `apifirst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apifirst` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tweet_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tweet_text` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `followers` int(255) DEFAULT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apifirst`
--

LOCK TABLES `apifirst` WRITE;
/*!40000 ALTER TABLE `apifirst` DISABLE KEYS */;
INSERT INTO `apifirst` VALUES (1,'999595725750243328','Fred Jones','1229084540473241602','As an #APIfirst company, we at @Axway decided to create a holiday mobile app to accompany the festivities. https://t.co/NfNl2ISYul https://t.co/ARvmauzarq','2020-02-16 16:46:04',2147,'en','Dublin City, Ireland'),(2,'17413602','ProgrammableWeb','1228485587713380353','City University of Hong Kong has embraced an API-led approach to education\nhttps://t.co/5JdEXVznVW\n\n#edtech #edutech #education #API #APIfirst @CityUHongKong https://t.co/pJgS0CwwbW','2020-02-15 01:06:02',5000,'en','San Francisco'),(3,'772534310062751744','Tom Klotz','1228284589912793094','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-14 11:47:21',108,'en','Paris, France'),(4,'337021244','Marwan Burelle','1228207990752206848','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-14 06:42:58',583,'en','Montigny - France'),(5,'61461861','Nicolas Dessaigne','1228125095341617152','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-14 01:13:34',4268,'en','San Francisco, Paris'),(6,'140491455','Gabriel Dillon','1227738915588558848','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-12 23:39:02',895,'en','Saint Francisco, CA'),(7,'113355970','Hank Humphreys','1227639800624082944','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-12 17:05:11',45,'en','Mountain View, CA'),(8,'15291996','Etienne Luneau','1227623449494867968','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-12 16:00:13',454,'en','Concord, CA'),(9,'182756123','Beltug','1227623051497328640','Transforming the notary portfolio from \'have-to\' services to \'want-to\' services. Jolien Jans explains how @NotarisBe taks on their #DigitalTransformation and how an #APIfirst strategy fits into that goal.\n\n#ArchitectureStrategy #APIARchitecture #MicroServices #KnowledgeSharing https://t.co/rOwfT7dNPN','2020-02-12 15:58:38',1403,'en','Belgium'),(10,'706639614258208769','SaaStr Fund ?','1227622943242407936','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-12 15:58:12',1822,'en',''),(11,'3089978692','Matthew Foyle','1227622826015887360','RT @algolia: Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the…','2020-02-12 15:57:44',279,'en','London, England'),(12,'560454290','Algolia','1227621471565991936','Thankful &amp; honored to have our customers place @Algolia as the top Leader in G2’s Grid® Report for Enterprise #Search for the 8th quarter in a row.  https://t.co/GZBZKBiXOB #APIFirst https://t.co/D3stuOJgYt','2020-02-12 15:52:21',5000,'en','San Francisco, Paris, NYC, London, Atlanta'),(13,'182756123','Beltug','1227579038178390017','\"Designing the strategy was a 10 minute job, developing it will probably be a 10 year journey\". @yvesheylen shares the #Vink journey towards an #APIfirst platform.\n#ArchitectureStrategy #APIARchitecture #MicroServices #MultiCloud #CloudStrategy #KnowledgeSharing https://t.co/Yt0Dxmswz9','2020-02-12 13:03:44',1403,'en','Belgium'),(14,'330899833','GreenVulcano','1226821265471737862','#OurProducts #ApiFirst\n\nIn #GreenVulcano, to fully exploit the advantages offered by the #CloudNative model, we have reshaped the design phase of our products #sibyl, #Claudio and #Gaia according to a new approach to application development: the Api First. https://t.co/kSebBCQkeh','2020-02-10 10:52:37',382,'en','Boston, Rome, Naples, Milan');
/*!40000 ALTER TABLE `apifirst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17  8:43:00
