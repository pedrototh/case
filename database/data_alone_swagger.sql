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
-- Table structure for table `swagger`
--

DROP TABLE IF EXISTS `swagger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `swagger` (
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swagger`
--

LOCK TABLES `swagger` WRITE;
/*!40000 ALTER TABLE `swagger` DISABLE KEYS */;
INSERT INTO `swagger` VALUES (1,'951791046215663617','Aung','1229484790367346689','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 19:16:31',360,'en',''),(2,'1012029582508257280','ads_astara','1229482214552932355','@SecPompeo @realDonaldTrump #swagger #MAGA','2020-02-17 19:06:17',474,'un','Iran '),(3,'194755852','HipHopBling.com','1229480947550171138','Kite Small Gold CZ Micro Pave Bling Earrings! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/WcwBuaqDvK https://t.co/ds2zgRzpl4','2020-02-17 19:01:15',2658,'en',''),(4,'762214078190350336','Mian Usman Zarin','1229478604440031232','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 18:51:56',191,'in','Riyadh, Kingdom of Saudi Arabia'),(5,'2904916176','【Tune in】蕨ダンス','1229476510936879104','HIPHOP (swagger)\nhttps://t.co/6h2PBFvaMP      \n今までは、振り入れされた振り付けをただただ踊っただけになっていませんか？一人一人それぞれの個性を強化して行きます！\n#HIPHOP　#swagger #dance #hiphopdance #lesson #saitama #tokyo #japan https://t.co/HiukqHfQVw','2020-02-17 18:43:37',134,'ja','埼玉県川口市青木5-18-30 '),(6,'2904916176','【Tune in】蕨ダンス','1229476466397564928','HIPHOP (swagger)\nhttps://t.co/6h2PBFvaMP      \n最初っから上手なダンサーなんていません。自分も皆さんと共に成長出来て、楽しく沢山笑ってレッスン出来たら、と思います(^-^)\n#HIPHOP　#swagger #dance #hiphopdance #lesson #saitama #tokyo #japan https://t.co/GBrh3fAUDB','2020-02-17 18:43:26',134,'ja','埼玉県川口市青木5-18-30 '),(7,'1041205694463004673','وقاص خان پی ٹی آئی سعودیہ','1229476403718041603','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 18:43:11',5000,'in','مكة المكرمة, المملكة العربية '),(8,'1050819863059554305','Sohrabkhan','1229476110125146123','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 18:42:01',100,'in','Malta'),(9,'813043465881796608','Shary khan','1229470704464207873','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 18:20:33',367,'in','Lahore, Pakistan'),(10,'1080992698360840194','bordelinparis','1229469375725494273','RT @bordelinparis: ma #boutiqueetsy : candy shop ice cream beads long earrings https://t.co/cZKDdizPiY\n#bouclesdoreilles #bijoux #bijouxfan…','2020-02-17 18:15:16',34,'en','France'),(11,'973546997201416197','〽','1229467996499955712','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 18:09:47',3092,'in','Faisalabad '),(12,'773294905397481473','Carlos ??','1229466790218158082','#swagger https://t.co/CRwfGzinqS','2020-02-17 18:04:59',54,'un','Montréal, Québec'),(13,'822279865030148098','P44n_D4','1229464741166247937','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 17:56:51',16,'en','เชียงราย. ประเทศ'),(14,'1143843077372743681','Bilal Afridi 10?????','1229461733720367106','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 17:44:54',75,'in','Gulistan e johar pehlwan ghot'),(15,'1228952751146582016','??คิมคอปจงเจริญ??','1229461345684164608','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 17:43:21',0,'en','กรุงเทพมหานคร, ประเทศไทย'),(16,'984829666044399616','Ghumman','1229454682793369600','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 17:16:53',3028,'in',''),(17,'1076498645820805120','Muhammad Arslan','1229452917192712194','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 17:09:52',50,'in','عجمان, الامارات العربية المتحد'),(18,'194755852','HipHopBling.com','1229450601316134915','Happy President Day! Save 30% Coupon Code: PD30#hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new #PRESIDENTS #PRESIDENTSDAY #HAPPYPRESIDENTSDAY https://t.co/ENcMDdQR1E','2020-02-17 17:00:40',2658,'en',''),(19,'194755852','HipHopBling.com','1229450578381692928','Iced Out Gold Micro Jesus Pendant Solid Back! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/1uxs1mu6H9 https://t.co/D5BhKyEOOC','2020-02-17 17:00:34',2658,'en',''),(20,'903430580800331778','jjoyployz','1229447063378649088','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:46:36',163,'en','ประเทศไทย'),(21,'769575308638904322','BravoEchoLimaLimaEcho?','1229444877932302338','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:37:55',33,'en',''),(22,'1089829213283078144','พัชรี อุดม','1229444497693495297','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:36:24',183,'en','กาญจนบุรี, ประเทศไทย'),(23,'769575308638904322','BravoEchoLimaLimaEcho?','1229444471051276288','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:36:18',33,'en',''),(24,'938702586605051904','Nuttha','1229444344630796288','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:35:48',50,'en','ปทุมธานี'),(25,'1099587453675945984','ต่าย','1229443835039711233','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:33:46',122,'en',''),(26,'1643584538','แมะเด็กอ้วน High Five ☜☆☞ ♥ǝʇıuıɟuı','1229442633396670464','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:29:00',235,'en',''),(27,'1038056696285880320','Kanomwarn','1229442301715288066','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:27:41',11,'en',''),(28,'1177517467674890240','สมองเหงา °BSRD°~♡~','1229442211302920192','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:27:19',215,'en',''),(29,'1183350906299002880','Rashid Hassan?????','1229441292335243264','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 16:23:40',136,'in','Sindh, Pakistan'),(30,'1066167585601769473','?แห่งด้อมSBFIVE','1229441198089048067','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:23:18',72,'en','Roi Et, Thailand'),(31,'1176872754089316352','Ja_jahvii','1229441182423371776','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:23:14',92,'en','กรุงเทพมหานคร, ประเทศไทย'),(32,'748136596730372096','Seekram Lupin','1229441031067668487','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:22:38',112,'en',''),(33,'212183361','สายชิปแบบพอร์ตหุ้น ลงทุกลำเพื่อกระจายความสุข','1229440861223579648','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:21:57',113,'en','Thai'),(34,'748136596730372096','Seekram Lupin','1229440640569630720','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:21:05',112,'en',''),(35,'212183361','สายชิปแบบพอร์ตหุ้น ลงทุกลำเพื่อกระจายความสุข','1229440604368539649','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:20:56',113,'en','Thai'),(36,'812313130541793281','บาสคือที่หนึ่งของแมะ','1229440189174403073','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:19:17',990,'en','บางยี่ขัน, ประเทศไทย'),(37,'1129755309285601280','Shueduan Chuednok','1229439786840014848','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:17:41',16,'en',''),(38,'1129755309285601280','Shueduan Chuednok','1229439730669903872','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:17:28',16,'en',''),(39,'812313130541793281','บาสคือที่หนึ่งของแมะ','1229439609387376640','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:16:59',990,'en','บางยี่ขัน, ประเทศไทย'),(40,'1092245917422350337','สร้อยมณี  บัวล้อม','1229438244112093184','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:11:33',25,'en',''),(41,'276946030','? ? ? ? ? ?? ~ มีลูกชายชื่อบาส❤️#แมะน้อนไง','1229438150134489088','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:11:11',415,'en','Thailand'),(42,'1024682198639603712','แมะฟ.ฟอ? ㅑลัทธิเด็กอ้วนㅕ','1229438102558539777','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:11:00',33,'en',''),(43,'800236117429600256','KrantPeppermint','1229437911302455296','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:10:14',36,'en',''),(44,'1024682198639603712','แมะฟ.ฟอ? ㅑลัทธิเด็กอ้วนㅕ','1229437888674222080','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:10:09',33,'en',''),(45,'1025911229540270080','Supanwan','1229437876158357509','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:10:06',29,'en',''),(46,'1090553591545221121','L❤B??','1229437723506724864','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:09:29',21,'en',''),(47,'1197099724752338944','kanok_bas','1229437655869534208','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:09:13',19,'en',''),(48,'623028130','WƎIᴚ∀W (肖战 ?) สมองเหงา♪','1229437473819746306','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:08:30',279,'en','2017-09-10 '),(49,'306204577','จะเก็บมันเอาไว้ในใจ ????','1229437367997517824','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:08:05',236,'en','อ.เมืองสระบุรี, จ.สระบุรี'),(50,'1097491219859398656','โมเมย์ B-)','1229437238972317697','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:07:34',104,'en','เชียงใหม่, ประเทศไทย'),(51,'244014181','ChiChi?','1229437152280244224','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #supe…','2020-02-17 16:07:13',43,'en',''),(52,'1092245917422350337','สร้อยมณี  บัวล้อม','1229437028896407552','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:06:44',25,'en',''),(53,'827910202481479680','Bbasjtr Family','1229436939301900288','[IG​ axlstep]​\n• • • • • •\nWhen it’s time to pass the T O R C H down to the new blood ?? #swagger #xlstep #sbfive #superboy5 #family #boyband #musicproducer #artist #recordingartist #superboysbfive #บาสเด็กอ้วนที่แท้จริง https://t.co/cN0IzkTiEf','2020-02-17 16:06:22',5000,'en',''),(54,'306204577','จะเก็บมันเอาไว้ในใจ ????','1229436909828501504','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:06:15',236,'en','อ.เมืองสระบุรี, จ.สระบุรี'),(55,'1099587453675945984','ต่าย','1229436520446164992','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:04:42',122,'en',''),(56,'825025676486905856','I am oi','1229436469938466817','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:04:30',24,'en','บางกะปิ, กรุงเทพมหานคร'),(57,'1180548831806550017','ThankYouForSmiling_Bas','1229436440515248129','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:04:23',105,'en',''),(58,'1038056696285880320','Kanomwarn','1229436371254706177','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:04:07',11,'en',''),(59,'811576291799416836','คุณป้ายุ่น','1229436289490927616','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:03:47',9,'en','อ.เมืองสุรินทร์, จ.สุรินทร์'),(60,'928810454217998338','bas?SBFIVE?','1229436102181699585','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:03:03',53,'en',''),(61,'1015951839815012352','Kaew','1229436041901178880','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:02:48',39,'en',''),(62,'1091336842681565185','kanlaya_nang33','1229435959889948674','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:02:29',74,'en',''),(63,'903430580800331778','jjoyployz','1229435895914225666','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:02:14',163,'en','ประเทศไทย'),(64,'800236117429600256','KrantPeppermint','1229435560353075202','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:00:54',36,'en',''),(65,'717018022053957632','~~?????????~~シ','1229435496033443840','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:00:38',32,'en',''),(66,'1168783099116675072','BAS MYBROTHER ???','1229435435945996288','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:00:24',15,'en',''),(67,'1152902746946695169','tongtongbas','1229435378966204416','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:00:10',306,'en',''),(68,'623028130','WƎIᴚ∀W (肖战 ?) สมองเหงา♪','1229435367780016130','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 16:00:08',279,'en','2017-09-10 '),(69,'1089829213283078144','พัชรี อุดม','1229435331683835904','RT @bbasjtr_family: [IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #st…','2020-02-17 15:59:59',183,'en','กาญจนบุรี, ประเทศไทย'),(70,'827910202481479680','Bbasjtr Family','1229435112808280064','[IG​ axlstep]​\n• • • • • •\nWhen the groove is Logged- In ., That’s how we do !, ?? #sbfivesuperboy #swagger #xlstep #starhunter #recordingartist #musicproducer #happytime #bassbfive #energy #swag #swagger​ #บาสเด็กอ้วนที่แท้จริง https://t.co/6Uy0fAS7Fc','2020-02-17 15:59:07',5000,'en',''),(71,'76911983','Sailesh Jani','1229432786446102528','@YankeeGunner View from a few rows back on his side on the night, he was harrying, jumping and challenging for everything - he’s definitely more ‘up for it’ as they say in Stoke.  Ended the game with some #swagger too which we’ve been missing @clivepafc @Stillberto','2020-02-17 15:49:52',405,'en','London'),(72,'924610902791544833','Qaisar Bhatti','1229426103535722498','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 15:23:19',132,'in','Karachi, Pakistan'),(73,'194755852','HipHopBling.com','1229420518803202056','Full CZ Clasp Gold Cuban Chain 15MM Thick! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/J14NPRHmCu https://t.co/iyqJ0h5dmN','2020-02-17 15:01:07',2658,'en',''),(74,'2792983921','Shani ??','1229420003478429704','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 14:59:05',3827,'in','Pakistan'),(75,'3142961766','Irfan Khattak','1229417389806247938','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 14:48:41',228,'in','Jeddah, Kingdom of Saudi Arabi'),(76,'859407531097153536','Apicurio','1229411404962320385','RT @clearpattern: My favourite editor for OpenAPI definitions is Apicurio. It sure beats poring over raw JSON or YAML files! Thanks, @apicu…','2020-02-17 14:24:54',194,'en',''),(77,'246323966','Juan Larios C.','1229409079883206656','RT @campusMVP: Describiendo APIs https://t.co/1OlvXssjJa Core con #Swagger, en el blog de nuestro tutor @jmaguilar \nhttps://t.co/zBZ4yTfU10…','2020-02-17 14:15:40',367,'es','MX'),(78,'2541002005','Heart Healer®️','1229406792213520384','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 14:06:35',74,'in','jeopitor ?'),(79,'2929757918','Mohsin raza','1229404844575817733','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:58:50',223,'in','Lahore'),(80,'924223640773816320','Malik Hasnain ??','1229402011122139136','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:47:35',1212,'in','Peshawar, Pakistan'),(81,'1077963172877877250','کابی کاظمی(Syed Aqqab Ali Kazmi)','1229400639995883520','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:42:08',183,'in','Rawalpindi, Pakistan'),(82,'835443255030517760','Hamza crk','1229397823591976961','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:30:56',209,'in','Pakistan '),(83,'1127665573696032770','jehanzaib cricketer','1229396601006886913','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:26:05',80,'in',''),(84,'905955828523520000','Waqas Choudhary??','1229396421864034305','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:25:22',640,'in','Abbottabad, Pakistan'),(85,'940279476818206720','Ramzan Manik','1229396405019697153','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:25:18',170,'in','Islamabad '),(86,'1147081052751650816','Salman Khan','1229396360996282369','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:25:08',332,'in','سوات پاکستان '),(87,'1229346598787911680','Areeba Aijaz','1229396182583169025','RT @PeshawarZalmi: MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm','2020-02-17 13:24:25',4,'in','Lahore, Pakistan'),(88,'4478726652','PeshawarZalmi','1229395697973317632','MashAllah ?\n\n#swagger #Zalmi #TayyarHain #YellowStorm https://t.co/qP5dFaaN6e','2020-02-17 13:22:30',5000,'in',''),(89,'1219220883249618945','Parth Tiwari','1229393108380639232','RT @ParthTi09891927: Practice like u haven\'t Won\nPerform like u haven\'t Lost\n#tagblender #swagger','2020-02-17 13:12:12',0,'en',''),(90,'1219220883249618945','Parth Tiwari','1229392987240763397','Practice like u haven\'t Won\nPerform like u haven\'t Lost\n#tagblender #swagger','2020-02-17 13:11:43',0,'en',''),(91,'194755852','HipHopBling.com','1229390201253965824','Gold Plug Polished Hip Hop Pendant! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/4BY7Q5La7s https://t.co/m378HVyRTi','2020-02-17 13:00:39',2658,'en',''),(92,'811403646','Digit 1.0','1229387466701852672','#swagger #friendgothitched #coolbride https://t.co/fzyXxCCjy1','2020-02-17 12:49:47',76,'un','City of Nizams'),(93,'373652526','JmEnzor Creation','1229386261082841088','@jmraoul #boutiquejmenzor?? #cotonou ?63 50 00 47 ?\n#aibatin #tshirt #swag #style #supreme  #TagsForLikes #vans #swagger #benin229 #magasin #photooftheday #sale #pants #fidjrossè #instagood #lacoste #mocassin #polo… https://t.co/oDgS2XHonV','2020-02-17 12:45:00',108,'un','Paris'),(94,'373652526','JmEnzor Creation','1229372329756590082','@jmraoul #boutiquejmenzor?? #cotonou ?63 50 00 47 ?\n#aibatin #tshirt #swag #style #supreme  #TagsForLikes #vans #swagger #benin229 #magasin #photooftheday #sale #pants #fidjrossè #instagood #lacoste #mocassin #polo… https://t.co/syMMc7b2DN','2020-02-17 11:49:38',108,'un','Paris'),(95,'194755852','HipHopBling.com','1229360184813813760','Miami Cuban Chain Yellow Gold! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/M5Ei92PmNl https://t.co/Ht7iEWfITT','2020-02-17 11:01:23',2658,'en',''),(96,'261825957','Mrs Russell 1503','1229348277558153216','Why be normal when you can be fabulous! #neverchange #beyou #siblingzfashion siblingz_fashion #swagger #apparel #dontbenormal #whatisnormal #becool #coolkid #houseofikons #HOI #LFW #london #fashion #week… https://t.co/Rc7vAkvepX','2020-02-17 10:14:04',69,'en','Dorset'),(97,'1219162111781130240','Official Gabbarr','1229322184482590720','Still Single ❓\nTag the deserving person ?\nBuy @ https://t.co/Uz1WosqNJr\n.\n.\n#single #singlelife #dating #clothingbrand #clothingline #clothingcompany #clothing #tshirts #apparel #tshirt #shirt #kaos #tee #tees #jeans #pants #jacket #polo #swagg #swagger https://t.co/8Z0SSQ3xw0','2020-02-17 08:30:23',2,'en',''),(98,'3588502213','bert ☔️','1229309266504253442','#swagger https://t.co/c65A9d5mAz','2020-02-17 07:39:03',171,'un','Bay Area'),(99,'194755852','HipHopBling.com','1229299535278723074','Pre-Valentines Sale! Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/N6zsodp6Nb','2020-02-17 07:00:23',2658,'en',''),(100,'194755852','HipHopBling.com','1229299472557133824','Bling Bling All Day- 25% OFF EVERYTHING - PROMO CODE Save25 #hiphop #rap #hiphop #hiphopbling #blingbling #swagger #jewelry #sale #blingsale #hiphopsale #style #swag #rapper #luxury #new https://t.co/7uZrt1SS8B','2020-02-17 07:00:08',2658,'en','');
/*!40000 ALTER TABLE `swagger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 18:09:33
