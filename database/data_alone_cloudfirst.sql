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
-- Table structure for table `cloudfirst`
--

DROP TABLE IF EXISTS `cloudfirst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloudfirst` (
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloudfirst`
--

LOCK TABLES `cloudfirst` WRITE;
/*!40000 ALTER TABLE `cloudfirst` DISABLE KEYS */;
INSERT INTO `cloudfirst` VALUES (1,'88385919','Celso Gonçalves Jr','1228690905332363276','https://t.co/U2wNLKWE6o\n\nEvento da #AWS na #Matera em Maringá, como dizem os norte-americanos, \"rocked da house\" :-)\n#DevOps #CloudFirst #LetsCreateTheFuture','2020-02-15 14:41:54',483,'pt','Campinas, Brazil'),(2,'283062441','Sanjiv Lochan','1228502495908859904','RT @photoninfotech: Watch Mukund Balasubramanian, CTO, Co-Founder at Photon, explain the cloud’s ability to enable agility and cost savings…','2020-02-15 02:13:14',47,'en',''),(3,'340361292','Eric Soffin','1228352070891311104','RT @Nasuni: If you missed Nasuni participate in @BrightTALK\'s recent expert panel, be sure to read the recap and learn the challenges and r…','2020-02-14 16:15:30',110,'en','Chicago, IL'),(4,'24139479','Photon','1228351640257941510','Watch Mukund Balasubramanian, CTO, Co-Founder at Photon, explain the cloud’s ability to enable agility and cost savings:\nhttps://t.co/0XrbmL4PiK\n#ThinkBeyond #DigitalTransformation #CloudFirst #CloudStrategy #CloudMigration https://t.co/7SwpmHNpTh','2020-02-14 16:13:47',3498,'en','London, England'),(5,'43968042','Hilliary Hughes','1228347099177275392','RT @ntirety: For some #enterprises, a #cloudfirst strategy brings a new set of challenges. Find solutions in Ntirety CEO @esayegh new artic…','2020-02-14 15:55:44',69,'en','Mississippi, USA'),(6,'1113871112885161991','Ntirety','1228335664984403969','For some #enterprises, a #cloudfirst strategy brings a new set of challenges. Find solutions in Ntirety CEO @esayegh new article “How ‘Cloud-First’ Became a Cliché”: https://t.co/Jxn1cQfm1y','2020-02-14 15:10:18',99,'en',''),(7,'45837212','Nasuni','1228326757683560450','If you missed Nasuni participate in @BrightTALK\'s recent expert panel, be sure to read the recap and learn the challenges and rewards of making #cloudfirst storage a reality: https://t.co/vY5hN56MfW','2020-02-14 14:34:54',2772,'en','Boston, MA'),(8,'21974054','Mikhail','1228066659816136704','RT @DevOpsDaysHTown: Take a look at the predictions for the future of APM:\nhttps://t.co/3aUDYQxi3Q\n#DevOps #HoustonDoesDevOps #apm #cloudfi…','2020-02-13 21:21:22',535,'en','The Woodlands, TX'),(9,'238263489','Cstories','1227985539799961600','Kansrijk: cloud data op diverse plekken – Oscar Wijnants, @NetApp_NL \nLees verder: https://t.co/6u7hTCzTKu\n#NetApp #datadriven #digitaletransformatie #artificialintelligence #machinelearning #cloudfirst https://t.co/fICdbuegyb','2020-02-13 15:59:02',4341,'nl','Nederland'),(10,'1063228300145889280','DevOpsDaysHouston','1227933352377880576','Take a look at the predictions for the future of APM:\nhttps://t.co/3aUDYQxi3Q\n#DevOps #HoustonDoesDevOps #apm #cloudfirst #logs','2020-02-13 12:31:39',237,'en','77024'),(11,'14409906','Brandon Carroll','1227771900601884672','RT @rjourdan_net: Now we have two solutions: one for #cloudfirst customers, #steelconnectCX, one for complex enterprise Networks #steelconn…','2020-02-13 01:50:06',5000,'en','33.684667,-117.840226'),(12,'299643766','Romain Jourdan','1227771242507161600','Now we have two solutions: one for #cloudfirst customers, #steelconnectCX, one for complex enterprise Networks #steelconnectEX','2020-02-13 01:47:29',184,'en','San Francisco, CA'),(13,'3003481745','Tracy Monday','1227659324681572359','RT @cloudgatewayltd: Want advice on the transformation phases &amp; having secure access to all of your services throughout your PSN to cloud t…','2020-02-12 18:22:46',442,'en','England, United Kingdom'),(14,'789120318132453377','eCloud MS','1227616610606817280','Moving to a cloud first strategy? Achieving a state of IT agility is a precursor  for creating transformative business outcomes. Hear from Amit Zavery, VP &amp; Head of Platform at GCP, on why agility starts with IT architecture. #cloud #GCP #IT #cloudfirst https://t.co/6minYe6hiT https://t.co/rMnsRaPrWF','2020-02-12 15:33:02',200,'en','Milton, GA'),(15,'1361609012','Tim Carter','1227600645341007875','RT @cloudgatewayltd: Want advice on the transformation phases &amp; having secure access to all of your services throughout your PSN to cloud t…','2020-02-12 14:29:36',625,'en','UK'),(16,'1042863637281603586','Cloud Gateway','1227594701819334657','Want advice on the transformation phases &amp; having secure access to all of your services throughout your PSN to cloud transition, using #HybridCloud &amp; #multicloud connectivity?\n\nDownload your copy today!\nhttps://t.co/CFMCC9LNCv\n\n#cloudstrategy #cloudfirst #hybridmulticloud','2020-02-12 14:05:59',215,'en','United Kingdom'),(17,'1286102160','Ketan Patil','1227588676093276160','IDC Predicts Strong Growth in Spending on #DigitalTransformation &amp; Innovation as #ICT Industry Gathers in Dubai https://t.co/5DXS5uVxz9 #IT #CloudFirst','2020-02-12 13:42:02',448,'en','Pune'),(18,'510769520','Patrick Foster','1227585213540261888','Not your fathers #sdwan... \n#cloudfirst\n#twisb https://t.co/SdQX92bavk','2020-02-12 13:28:16',88,'en','Central Texas'),(19,'2328684486','Extreme Networks UKI','1227285932543442944','Beautiful day at the Theatre of Dreams for today\'s Cloud Distribution launch event. @cloudtweeters #cloudfirst #Networking #ExtremeDifference\n\nhttps://t.co/kgqsw0hdem https://t.co/8UoD1vacGD','2020-02-11 17:39:02',717,'en','Reading, England'),(20,'209725458','Robert Stockford','1227219692097613824','RT @CareAndKickButt: Where does enterprise confidential data ends up in the cloud? @McAfeeSkyhigh @McAfee Full Tutorial here: https://t.co/…','2020-02-11 13:15:49',803,'en','Bagshot'),(21,'176069090','Ioan MacRae','1227212113460027398','Maintel will continue its #DigitalTransformation into a high-value #CloudFirst services business. https://t.co/rLjtpZDDqw','2020-02-11 12:45:43',909,'en','Henley, UK'),(22,'82876306','Ed Baker','1227152891120640000','RT @CareAndKickButt: Where does enterprise confidential data ends up in the cloud? @McAfeeSkyhigh @McAfee Full Tutorial here: https://t.co/…','2020-02-11 08:50:23',542,'en','Chandlers Ford, England'),(23,'205226905','Enrique Pernas','1227100009080008705','RT @CareAndKickButt: Where does enterprise confidential data ends up in the cloud? @McAfeeSkyhigh @McAfee Full Tutorial here: https://t.co/…','2020-02-11 05:20:15',170,'en',''),(24,'89079464','Vittorio Viarengo','1227006822378115072','Where does enterprise confidential data ends up in the cloud? @McAfeeSkyhigh @McAfee Full Tutorial here: https://t.co/yoA9CbQfjR #cloudfirst #mvisioncloud #cloudsecurity https://t.co/uGgsqz8fe1','2020-02-10 23:09:57',2996,'en','San Jose, CA'),(25,'6237492','Eleanor Willock','1226956035975454721','Very interesting from @GDSTeam on #cloud and #Cloudfirst https://t.co/sUQve5hQyK','2020-02-10 19:48:09',3014,'en','Bristol '),(26,'25386250','Thomas Been','1226955383513567232','@druvainc on @vmwarecloudaws: the most efficient #backup and #DR for your VMs on your #cloudfirst journey. Period. Thanks, @VMware_Partners! https://t.co/GITz9Uz3zO','2020-02-10 19:45:33',1390,'en','Portola Valley, CA'),(27,'14054507','Terence Eden','1226846591128129536','RT @_RhiannonLawson: Here\'s an opportunity for the public sector to come to an event in April to learn about all our cloud guidance, to sha…','2020-02-10 12:33:15',5000,'en','London, UK'),(28,'707183531240386560','Rhiannon Lawson','1226846432658960384','Here\'s an opportunity for the public sector to come to an event in April to learn about all our cloud guidance, to share your thoughts and hear about what\'s coming next #cloud #cloudfirst #workshop @GDSTeam https://t.co/lun41F3psK','2020-02-10 12:32:37',491,'en',''),(29,'707183531240386560','Rhiannon Lawson','1226845437837086720','Our next piece of cloud guidance is up. Take a look to see how you can better manage your cloud spend. \n#cloud #cloudfirst @GDSTeam https://t.co/lSyoPjpbSK','2020-02-10 12:28:40',491,'en',''),(30,'8514642','Matt Collins-Jones','1226166596357574656','@LuiseFreese @JenMsft I need an on premise sucks sticker for when I go to customer sites and they are still using on prem ? #CloudFirst #CloudEverytime','2020-02-08 15:31:12',562,'en','Ninja cave'),(31,'394143029','Katryn (McGaughey) Woods','1226148613027500033','RT @sMenutti: If I had to choose only 1 takeaway from this #CiscoCollabAnalystSummit is #CloudFirst, not Cloud Only.. Cisco is going to a d…','2020-02-08 14:19:44',1107,'en','Newburyport, MA'),(32,'1112913144568037376','Dom\'s Den','1225957142752120832','RT @SyberryCorp: Is your business really embracing #cloudfirst #development, or are you just using the #cloud as a parking lot for your sys…','2020-02-08 01:38:54',232,'en','Dayton, TX');
/*!40000 ALTER TABLE `cloudfirst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 11:16:35
