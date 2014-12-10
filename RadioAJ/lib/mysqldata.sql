-- MySQL dump 10.13  Distrib 5.6.21, for Win64 (x86_64)
--
-- Host: localhost    Database: radioaj
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,0,'2014-12-10 13:47:20','alternative rock'),(2,0,'2014-12-10 13:47:20','rock'),(3,0,'2014-12-10 13:47:20','all-time favorite'),(4,0,'2014-12-10 13:47:20','catchy'),(5,0,'2014-12-10 13:47:20','i could listen to this all day'),(6,0,'2014-12-10 13:48:50','metal'),(7,0,'2014-12-10 13:48:50','stoner'),(8,0,'2014-12-10 13:48:50','stoner rock'),(9,0,'2014-12-10 13:48:50','psychedelic rock'),(10,0,'2014-12-10 13:48:56','heavy metal'),(11,0,'2014-12-10 13:48:56','classic rock'),(12,0,'2014-12-10 13:48:56','psychedelic'),(13,0,'2014-12-10 13:48:56','hard rock'),(14,0,'2014-12-10 13:55:10','90s'),(15,0,'2014-12-10 13:55:10','alternative'),(16,0,'2014-12-10 13:55:10','pop'),(17,0,'2014-12-10 13:55:13','electronic'),(18,0,'2014-12-10 13:55:13','indie'),(19,0,'2014-12-10 13:55:13','indie electronic'),(20,0,'2014-12-10 13:55:13','australian'),(21,0,'2014-12-10 14:14:58','remix'),(22,0,'2014-12-10 14:14:58','idioteque'),(23,0,'2014-12-10 14:14:58','favorite remixes'),(24,0,'2014-12-10 14:14:58','twelves'),(25,0,'2014-12-10 14:14:58','favourite remixes'),(26,0,'2014-12-10 14:17:33','morning songs'),(27,0,'2014-12-10 14:17:33','childhood memories'),(28,0,'2014-12-10 14:17:33','led zeppelin-1973-houses of the holy'),(29,0,'2014-12-10 14:19:46','french'),(30,0,'2014-12-10 14:19:46','cimx-fm'),(31,0,'2014-12-10 14:19:46','dance'),(32,0,'2014-12-10 14:20:29','indie rock'),(33,0,'2014-12-10 14:21:58','british'),(34,0,'2014-12-10 14:21:58','music choice: alternative'),(35,0,'2014-12-10 14:23:50','weezer'),(36,0,'2014-12-10 14:24:03','happy'),(37,0,'2014-12-10 14:24:03','power pop'),(38,0,'2014-12-10 14:24:48','indietronica'),(39,0,'2014-12-10 14:24:48','electronica'),(40,0,'2014-12-10 14:24:51','folk'),(41,0,'2014-12-10 14:24:51','indie folk'),(42,0,'2014-12-10 14:24:51','country'),(43,0,'2014-12-10 14:24:59','indie pop'),(44,0,'2014-12-10 14:24:59','hipster indie'),(45,0,'2014-12-10 14:25:07','queen'),(46,0,'2014-12-10 14:25:07','70s'),(47,0,'2014-12-10 14:25:07','80s'),(48,0,'2014-12-10 14:25:09','great'),(49,0,'2014-12-10 14:25:09','epic'),(50,0,'2014-12-10 14:25:09','beautifull'),(51,0,'2014-12-10 14:25:09','sunflower983'),(52,0,'2014-12-10 14:25:19','house'),(53,0,'2014-12-10 14:25:19','progressive house'),(54,0,'2014-12-10 14:25:19','pe 100'),(55,0,'2014-12-10 14:26:17','party'),(56,0,'2014-12-10 14:26:17','chilling'),(57,0,'2014-12-10 14:26:31','60s'),(58,0,'2014-12-10 14:26:31','the beatles'),(59,0,'2014-12-10 14:26:36','oldies'),(60,0,'2014-12-10 14:26:38','shoegaze'),(61,0,'2014-12-10 14:26:40','progressive rock'),(62,0,'2014-12-10 14:26:54','cover'),(63,0,'2014-12-10 14:26:54','female vocalists'),(64,0,'2014-12-10 14:26:54','easy listening'),(65,0,'2014-12-10 14:26:54','love at first listen'),(66,0,'2014-12-10 14:26:54','great cover'),(67,0,'2014-12-10 14:26:56','pure-belly'),(68,0,'2014-12-10 14:26:56','4 of 10 stars'),(69,0,'2014-12-10 14:26:56','pure-0p'),(70,0,'2014-12-10 14:27:22','britpop'),(71,0,'2014-12-10 14:27:22','2010'),(72,0,'2014-12-10 14:34:25','american'),(73,0,'2014-12-10 14:34:25','male vocalists'),(74,0,'2014-12-10 14:34:25','hairy chest'),(75,0,'2014-12-10 14:34:25','hunks'),(76,0,'2014-12-10 14:34:25','us-singer'),(77,0,'2014-12-10 14:34:35','metal ballad'),(78,0,'2014-12-10 14:34:35','judas priest'),(79,0,'2014-12-10 14:34:35','ballad'),(80,0,'2014-12-10 14:34:49','2014'),(81,0,'2014-12-10 14:34:49','eletronic'),(82,0,'2014-12-10 14:34:53','singer-songwriter'),(83,0,'2014-12-10 14:34:58','acoustic'),(84,0,'2014-12-10 14:34:58','let her go'),(85,0,'2014-12-10 14:34:58','2012'),(86,0,'2014-12-10 14:35:00','melancholia'),(87,0,'2014-12-10 14:35:00','dobre brzmienie');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_irsamgnera6angm0prq1kemt2` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,0,'ROLE_ADMIN'),(2,0,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `lastfmpopuplarity` bigint(20) NOT NULL,
  `lyrics` varchar(255) DEFAULT NULL,
  `play_count` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mil4stu7wk3b9vfwiwiv2mw2r` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,0,'Out of the Vein','Third Eye Blind',NULL,239570,NULL,0,'Forget Myself','KHpNolrNQWw'),(2,0,'Visions for the Celestial','Datura',NULL,4196,NULL,0,'Voyage','LaUdgcb-W0Y'),(3,0,'Paranoid','Black Sabbath',NULL,2075851,NULL,0,'Planet Caravan','O63COyZlTyU'),(4,0,'Maybe You\'ve Been Brainwashed Too','New Radicals',NULL,1971049,NULL,0,'You Get What You Give','DL7-CKirWZE'),(5,0,'Walking On A Dream (Special Edition)','Empire of the Sun',NULL,5552523,NULL,0,'Walking on a Dream','eimgRedLkkU'),(6,0,NULL,'The Naked and Famous',NULL,654,NULL,0,'Punching In A Dream (Alexander Lindblom Remix)','F07lR5Vv-20'),(7,0,NULL,'Florence + the Machine',NULL,1207,NULL,0,'No Light (Ben Macklin Remix)','TVZ02XZLuFk'),(8,0,NULL,'Radiohead',NULL,36840,NULL,0,'Reckoner (the Twelves Remix)','L0NznPmISpo'),(9,0,NULL,'Led Zeppelin',NULL,110312,NULL,0,'Dyer Maker','UWxdGJR_foY'),(10,0,'Wolfgang Amadeus Phoenix','Phoenix',NULL,6736254,NULL,0,'Lisztomania','uF3reVVUbio'),(11,0,'Hot Fuss','The Killers',NULL,15115055,NULL,0,'Mr. Brightside','gGdGFtwCNBE'),(12,0,'The 1975','The 1975',NULL,929261,NULL,0,'Sex','UKIhXi-yiw8'),(13,0,'The Green Album','Weezer',NULL,5055475,NULL,0,'Island in the Sun','0C3zgYW_FAM'),(14,0,'Weezer','Weezer',NULL,3933294,NULL,0,'Say It Ain\'t So','ENXvZ9YRjbo'),(15,0,'Make Believe (International Version)','Weezer',NULL,1715291,NULL,0,'Perfect Situation','jwv-iRvyDZg'),(16,0,NULL,'My Name is Jonas w/Lyrics',NULL,62,NULL,0,'Weezer','VoAnLHSLHGQ'),(17,0,'Raditude','Weezer',NULL,1115204,NULL,0,'(If You\'re Wondering If I Want You To) I Want You To','cDIzMGh94vo'),(18,0,NULL,'L. A. Woman',NULL,1552,NULL,0,'The Doors','JskztPPSJwY'),(19,0,'Oracular Spectacular','MGMT',NULL,10795889,NULL,0,'Time to Pretend','B9dSYgd5Elk'),(20,0,'Babel','Mumford & Sons',NULL,3663999,NULL,0,'I Will Wait','rGKfrgqWcv0'),(21,0,'Hot Fuss','The Killers',NULL,7564255,NULL,0,'All These Things That I\'ve Done','sZTpLvsYYHw'),(22,0,'Never Trust A Happy Song','Grouplove',NULL,2016998,NULL,0,'Tongue Tied','1x1wjGKHjBI'),(23,0,'A Night at the Opera','Queen',NULL,7895098,NULL,0,'Bohemian Rhapsody','fJ9rUzIMcZQ'),(24,0,NULL,'David Bowie',NULL,4598,NULL,0,'Bring Me The Disco King (Lohn','nJNYNg3Oc7w'),(25,0,'Dreaming Remix EP','Smallpools',NULL,32853,NULL,0,'Dreaming (The Chainsmokers Remix)','jfSc58Jk4zg'),(26,0,NULL,'Lana Del Rey',NULL,603,NULL,0,'Lana Del Rey vs Cedric Gervais','akhmS1D2Ce4'),(27,0,NULL,'Daft Punk',NULL,59491,NULL,0,'Random Access Memories (Vanderway Edit)','nqi8tv4P7R4'),(28,0,NULL,'Aaron Smith',NULL,77390,NULL,0,'Dancin (KRONO Remix)','0XFudmaObLI'),(29,0,NULL,'Calvin Harris',NULL,11160,NULL,0,'Summer (Extended)','jj2JyGwbeQ4'),(30,0,NULL,'Two Door Cinema Club',NULL,346,NULL,0,'Sleeps Alone (The Chainsmokers Remix)','m-Z5uLowENM'),(31,0,NULL,'Vance Joy',NULL,3683,NULL,0,'Riptide /// FlicFlac [REMASTERED VERSION OUT NOW on iTunes]','NI2IzZxVaFU'),(32,0,NULL,'Kaskade',NULL,1129,NULL,0,'Atmosphere (Neon Trees & Wild Children Remix)','0SaQDbtl13k'),(33,0,NULL,'Nicky Romero vs Krewella',NULL,6520,NULL,0,'Legacy (Vicetone Remix)','EfXXWMXGItQ'),(34,0,'1','The Beatles',NULL,5413249,NULL,0,'Hey Jude','eDdI7GhZSQA'),(35,0,'Surrealistic Pillow','Jefferson Airplane',NULL,4112595,NULL,0,'White Rabbit','WANNqr-vcx0'),(36,0,'If You Can Believe Your Eyes And Ears','The Mamas & the Papas',NULL,3350069,NULL,0,'California Dreamin\'','qhZULM69DIw'),(37,0,'Tepid Peppermint Wonderland - A Retrospective','The Brian Jonestown Massacre',NULL,278618,NULL,0,'Anenome','StV9lElcvAY'),(38,0,'Greatest Hits','The Moody Blues',NULL,1315544,NULL,0,'Nights in White Satin','9muzyOd4Lh8'),(39,0,NULL,'Robert Plant & Jimmy Page \'Gallows Pole\'',NULL,25,NULL,0,'Jools Holland Show 1994 BBC','X9DuDgzGjtE'),(40,0,NULL,'Babe I\'m gonna leave you',NULL,3454,NULL,0,'Led Zeppelin','iP9xMobANJM'),(41,0,'Live In London','Birdy',NULL,610275,NULL,0,'Young Blood','h7ZBygcSBzE'),(42,0,'13','Solace',NULL,4444,NULL,0,'Try','7DgotHBwmBM'),(43,0,NULL,'I Want You Back',NULL,2140,NULL,0,'The Jackson 5','s3Q80mk7bxE'),(44,0,'Tourist History','Two Door Cinema Club',NULL,5447116,NULL,0,'Something Good Can Work','Wxu02vp_Vm0'),(45,0,NULL,'\"Alive\"',NULL,202,NULL,0,'Empire of the Sun (Live)','vVoO66XZGcM'),(46,0,NULL,'Atmosphere',NULL,94,NULL,0,'KASKADE','sXQVicNodMw'),(47,0,NULL,'Trying To Be Cool',NULL,2303,NULL,0,'Phoenix','OePvsCfKHJg'),(48,0,'Oh, What A Life','American Authors',NULL,116870,NULL,0,'Luck','Uc0mJJHYrHM'),(49,0,NULL,'Two Door Cinema Club',NULL,256,NULL,0,'Changing Of The Seasons ft. Madeon','ovnCXhogusc'),(50,0,NULL,'The Kooks',NULL,25455,NULL,0,'\'Naive\'','jkaMiaRLgvY'),(51,0,'Angel Of Retribution','Judas Priest',NULL,522760,NULL,0,'Angel','UtNBKX4Dtwc'),(52,0,NULL,'Carl Sagan',NULL,365,NULL,0,'Profound Words of Wisdom','ECuarAmpK00'),(53,0,'Ghost Stories','Coldplay',NULL,2033743,NULL,0,'A Sky Full of Stars','VPRjCeoBqrI'),(54,0,'Greatest Hits','Simon & Garfunkel',NULL,6033029,NULL,0,'The Sound of Silence','L-JQ1q-13Ek'),(55,0,'All the Little Lights','Passenger',NULL,4195496,NULL,0,'Let Her Go','RBumgq5yVrA'),(56,0,NULL,'Pink Floyd',NULL,1808,NULL,0,'Coming Back to Life - Division Bell','uhV4me_k8Y8');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genre`
--

DROP TABLE IF EXISTS `song_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_genre` (
  `song_genres_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  KEY `FK_gjikdgj61m71mu5bfq8xf2sx7` (`genre_id`),
  KEY `FK_ioucescmx0hftmu6k92x2r1gs` (`song_genres_id`),
  CONSTRAINT `FK_gjikdgj61m71mu5bfq8xf2sx7` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `FK_ioucescmx0hftmu6k92x2r1gs` FOREIGN KEY (`song_genres_id`) REFERENCES `song` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genre`
--

LOCK TABLES `song_genre` WRITE;
/*!40000 ALTER TABLE `song_genre` DISABLE KEYS */;
INSERT INTO `song_genre` VALUES (1,3),(1,5),(1,4),(1,2),(1,1),(2,2),(2,7),(2,9),(2,6),(2,8),(3,11),(3,13),(3,6),(3,12),(3,10),(4,1),(4,15),(4,14),(4,16),(4,2),(5,19),(5,17),(5,16),(5,18),(5,20),(8,21),(8,25),(8,23),(8,24),(8,22),(9,11),(9,2),(9,27),(9,26),(9,28),(10,18),(10,31),(10,4),(10,30),(10,29),(11,2),(11,1),(11,15),(11,18),(11,32),(12,34),(12,15),(12,33),(12,18),(12,32),(13,15),(13,18),(13,1),(13,2),(13,35),(14,1),(14,15),(14,35),(14,14),(14,2),(15,18),(15,15),(15,2),(15,35),(15,1),(17,2),(17,16),(17,1),(17,37),(17,36),(19,18),(19,17),(19,38),(19,15),(19,39),(20,41),(20,40),(20,18),(20,42),(20,33),(21,18),(21,32),(21,15),(21,1),(21,2),(22,18),(22,43),(22,44),(22,15),(22,32),(23,45),(23,47),(23,46),(23,2),(23,11),(24,51),(24,48),(24,50),(24,49),(25,52),(25,54),(25,53),(28,52),(28,55),(28,56),(34,11),(34,58),(34,33),(34,57),(34,2),(35,9),(35,11),(35,2),(35,57),(35,12),(36,2),(36,57),(36,59),(36,16),(36,11),(37,12),(37,9),(37,60),(37,32),(37,2),(38,61),(38,59),(38,2),(38,11),(38,57),(41,63),(41,62),(41,66),(41,64),(41,65),(42,69),(42,2),(42,67),(42,68),(42,8),(44,71),(44,70),(44,33),(44,18),(44,17),(48,74),(48,73),(48,72),(48,76),(48,75),(51,77),(51,6),(51,10),(51,79),(51,78),(53,16),(53,1),(53,81),(53,80),(53,17),(54,82),(54,40),(54,57),(54,59),(54,11),(55,85),(55,83),(55,84),(55,40),(55,33),(56,87),(56,86);
/*!40000 ALTER TABLE `song_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_song`
--

DROP TABLE IF EXISTS `station_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station_song` (
  `station_songs_id` bigint(20) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  KEY `FK_3sgq2b7934hbcwb3b26y3rxvc` (`song_id`),
  KEY `FK_c9jinv5qmydfsinikak6x2bbv` (`station_songs_id`),
  CONSTRAINT `FK_3sgq2b7934hbcwb3b26y3rxvc` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`),
  CONSTRAINT `FK_c9jinv5qmydfsinikak6x2bbv` FOREIGN KEY (`station_songs_id`) REFERENCES `station` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_song`
--

LOCK TABLES `station_song` WRITE;
/*!40000 ALTER TABLE `station_song` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `FK_apcc8lxk2xnug8377fatvbn04` (`user_id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'\0','\0','','$2a$10$qpi92vJ4U/dAUI1cAnvnOuf5NdxRBM5WlRwGSL9jpNEHrAtvzKWgq','\0','admin.aj');
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

-- Dump completed on 2014-12-10 14:39:41
