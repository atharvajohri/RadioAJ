-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: radioaj
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,0,'2014-12-10 13:47:20','alternative rock'),(2,0,'2014-12-10 13:47:20','rock'),(3,0,'2014-12-10 13:47:20','all-time favorite'),(4,0,'2014-12-10 13:47:20','catchy'),(5,0,'2014-12-10 13:47:20','i could listen to this all day'),(6,0,'2014-12-10 13:48:50','metal'),(7,0,'2014-12-10 13:48:50','stoner'),(8,0,'2014-12-10 13:48:50','stoner rock'),(9,0,'2014-12-10 13:48:50','psychedelic rock'),(10,0,'2014-12-10 13:48:56','heavy metal'),(11,0,'2014-12-10 13:48:56','classic rock'),(12,0,'2014-12-10 13:48:56','psychedelic'),(13,0,'2014-12-10 13:48:56','hard rock'),(14,0,'2014-12-10 13:55:10','90s'),(15,0,'2014-12-10 13:55:10','alternative'),(16,0,'2014-12-10 13:55:10','pop'),(17,0,'2014-12-10 13:55:13','electronic'),(18,0,'2014-12-10 13:55:13','indie'),(19,0,'2014-12-10 13:55:13','indie electronic'),(20,0,'2014-12-10 13:55:13','australian'),(21,0,'2014-12-10 14:14:58','remix'),(22,0,'2014-12-10 14:14:58','idioteque'),(23,0,'2014-12-10 14:14:58','favorite remixes'),(24,0,'2014-12-10 14:14:58','twelves'),(25,0,'2014-12-10 14:14:58','favourite remixes'),(26,0,'2014-12-10 14:17:33','morning songs'),(27,0,'2014-12-10 14:17:33','childhood memories'),(28,0,'2014-12-10 14:17:33','led zeppelin-1973-houses of the holy'),(29,0,'2014-12-10 14:19:46','french'),(30,0,'2014-12-10 14:19:46','cimx-fm'),(31,0,'2014-12-10 14:19:46','dance'),(32,0,'2014-12-10 14:20:29','indie rock'),(33,0,'2014-12-10 14:21:58','british'),(34,0,'2014-12-10 14:21:58','music choice: alternative'),(35,0,'2014-12-10 14:23:50','weezer'),(36,0,'2014-12-10 14:24:03','happy'),(37,0,'2014-12-10 14:24:03','power pop'),(38,0,'2014-12-10 14:24:48','indietronica'),(39,0,'2014-12-10 14:24:48','electronica'),(40,0,'2014-12-10 14:24:51','folk'),(41,0,'2014-12-10 14:24:51','indie folk'),(42,0,'2014-12-10 14:24:51','country'),(43,0,'2014-12-10 14:24:59','indie pop'),(44,0,'2014-12-10 14:24:59','hipster indie'),(45,0,'2014-12-10 14:25:07','queen'),(46,0,'2014-12-10 14:25:07','70s'),(47,0,'2014-12-10 14:25:07','80s'),(48,0,'2014-12-10 14:25:09','great'),(49,0,'2014-12-10 14:25:09','epic'),(50,0,'2014-12-10 14:25:09','beautifull'),(51,0,'2014-12-10 14:25:09','sunflower983'),(52,0,'2014-12-10 14:25:19','house'),(53,0,'2014-12-10 14:25:19','progressive house'),(54,0,'2014-12-10 14:25:19','pe 100'),(55,0,'2014-12-10 14:26:17','party'),(56,0,'2014-12-10 14:26:17','chilling'),(57,0,'2014-12-10 14:26:31','60s'),(58,0,'2014-12-10 14:26:31','the beatles'),(59,0,'2014-12-10 14:26:36','oldies'),(60,0,'2014-12-10 14:26:38','shoegaze'),(61,0,'2014-12-10 14:26:40','progressive rock'),(62,0,'2014-12-10 14:26:54','cover'),(63,0,'2014-12-10 14:26:54','female vocalists'),(64,0,'2014-12-10 14:26:54','easy listening'),(65,0,'2014-12-10 14:26:54','love at first listen'),(66,0,'2014-12-10 14:26:54','great cover'),(67,0,'2014-12-10 14:26:56','pure-belly'),(68,0,'2014-12-10 14:26:56','4 of 10 stars'),(69,0,'2014-12-10 14:26:56','pure-0p'),(70,0,'2014-12-10 14:27:22','britpop'),(71,0,'2014-12-10 14:27:22','2010'),(72,0,'2014-12-10 14:34:25','american'),(73,0,'2014-12-10 14:34:25','male vocalists'),(74,0,'2014-12-10 14:34:25','hairy chest'),(75,0,'2014-12-10 14:34:25','hunks'),(76,0,'2014-12-10 14:34:25','us-singer'),(77,0,'2014-12-10 14:34:35','metal ballad'),(78,0,'2014-12-10 14:34:35','judas priest'),(79,0,'2014-12-10 14:34:35','ballad'),(80,0,'2014-12-10 14:34:49','2014'),(81,0,'2014-12-10 14:34:49','eletronic'),(82,0,'2014-12-10 14:34:53','singer-songwriter'),(83,0,'2014-12-10 14:34:58','acoustic'),(84,0,'2014-12-10 14:34:58','let her go'),(85,0,'2014-12-10 14:34:58','2012'),(86,0,'2014-12-10 14:35:00','melancholia'),(87,0,'2014-12-10 14:35:00','dobre brzmienie'),(88,0,'2014-12-17 06:11:26','10s'),(89,0,'2014-12-18 06:16:44','geek rock'),(90,0,'2014-12-18 14:06:53','led zeppelin'),(91,0,'2014-12-18 14:06:53','led zeppelin'),(92,0,'2014-12-20 08:12:53','the killers'),(93,0,'2014-12-20 08:14:16','pink floyd'),(94,0,'2014-12-20 08:14:56','dire straits'),(95,0,'2014-12-20 08:14:56','guitar'),(96,0,'2014-12-20 08:15:07','blues'),(97,0,'2014-12-20 08:15:07','blues rock'),(98,0,'2014-12-20 08:15:15','oasis'),(99,0,'2014-12-20 08:23:03','radiohead'),(100,0,'2014-12-20 08:23:15','harmonica'),(101,0,'2014-12-22 06:05:58','grunge'),(102,0,'2014-12-22 06:05:58','pearl jam'),(103,0,'2014-12-22 06:09:27','guns n\' roses'),(104,0,'2014-12-22 06:09:27','november rain'),(105,0,'2014-12-22 06:09:27','hurting'),(106,0,'2014-12-22 06:09:27','axl rose'),(107,0,'2014-12-22 06:09:27','guns n roses-2003-greatest hits'),(108,0,'2014-12-22 09:19:59','r&b'),(109,0,'2014-12-22 09:19:59','jjf'),(110,0,'2015-01-23 10:25:08','chillout'),(111,0,'2015-01-23 10:25:08','fip'),(112,0,'2015-01-23 10:25:08','youyouyou'),(113,0,'2015-02-03 07:12:59','beautiful'),(114,0,'2015-02-03 07:22:11','trance'),(115,0,'2015-02-03 07:22:11','armin van buuren'),(116,0,'2015-02-03 07:23:15','electro trance'),(117,0,'2015-02-03 07:23:15','melodic trance'),(118,0,'2015-02-03 07:23:15','violin trance'),(119,0,'2015-02-03 07:23:26','vocal trance'),(120,0,'2015-02-03 07:28:32','instrumental'),(121,0,'2015-02-03 07:28:58','light'),(122,0,'2015-02-03 07:29:18','electro house'),(123,0,'2015-02-03 07:29:18','electro'),(124,0,'2015-02-03 07:29:35','progressive'),(125,0,'2015-02-03 07:29:35','deadmau5'),(126,0,'2015-02-03 07:30:09','paul van dyk'),(127,0,'2015-02-03 07:30:09','progressive trance'),(128,0,'2015-02-03 07:30:37','dubstep'),(129,0,'2015-02-03 07:30:37','skrillex'),(130,0,'2015-02-03 07:31:48','mellow'),(131,0,'2015-02-03 07:32:00','progressive metal'),(132,0,'2015-02-03 07:32:09','porcupine tree'),(133,0,'2015-02-03 07:32:43','wdzh-fm'),(134,0,'2015-02-03 07:32:43','upbeat'),(135,0,'2015-02-03 07:32:52','train'),(136,0,'2015-02-03 07:33:00','pop rock'),(137,0,'2015-02-03 07:33:28','wkqi-fm'),(138,0,'2015-02-03 07:33:28','love'),(139,0,'2015-02-03 07:35:09','southern rock'),(140,0,'2015-02-03 07:35:09','lynyrd skynyrd');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2cti3sraxh89slbk5mbjutogk` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
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
  `enabled` bit(1) NOT NULL,
  `infourls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mil4stu7wk3b9vfwiwiv2mw2r` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,0,'Out of the Vein','Third Eye Blind',NULL,239570,NULL,0,'Forget Myself','KHpNolrNQWw','',NULL),(2,0,'Visions for the Celestial','Datura',NULL,4196,NULL,0,'Voyage','LaUdgcb-W0Y','',NULL),(3,1,'Paranoid','Black Sabbath',NULL,2075851,NULL,0,'Planet Caravan','O63COyZlTyU','',NULL),(4,2,'Maybe You\'ve Been Brainwashed Too','New Radicals',NULL,1971049,NULL,1,'You Get What You Give','DL7-CKirWZE','',NULL),(5,1,'Walking On A Dream (Special Edition)','Empire of the Sun',NULL,5552523,NULL,0,'Walking on a Dream','eimgRedLkkU','',NULL),(6,0,NULL,'The Naked and Famous',NULL,654,NULL,0,'Punching In A Dream (Alexander Lindblom Remix)','F07lR5Vv-20','',NULL),(7,2,NULL,'Florence + the Machine',NULL,1207,NULL,0,'No Light (Ben Macklin Remix)','TVZ02XZLuFk','',NULL),(8,0,NULL,'Radiohead',NULL,36840,NULL,0,'Reckoner (the Twelves Remix)','L0NznPmISpo','',NULL),(9,0,NULL,'Led Zeppelin',NULL,110312,NULL,0,'Dyer Maker','UWxdGJR_foY','\0',NULL),(10,2,'Wolfgang Amadeus Phoenix','Phoenix',NULL,6736254,NULL,1,'Lisztomania','uF3reVVUbio','',NULL),(11,1,'Hot Fuss','The Killers',NULL,15115055,NULL,0,'Mr. Brightside','gGdGFtwCNBE','',NULL),(12,0,'The 1975','The 1975',NULL,929261,NULL,0,'Sex','UKIhXi-yiw8','\0',NULL),(13,0,'The Green Album','Weezer',NULL,5055475,NULL,0,'Island in the Sun','0C3zgYW_FAM','',NULL),(14,0,'Weezer','Weezer',NULL,3933294,NULL,0,'Say It Ain\'t So','ENXvZ9YRjbo','',NULL),(15,0,'Make Believe (International Version)','Weezer',NULL,1715291,NULL,0,'Perfect Situation','jwv-iRvyDZg','',NULL),(16,2,NULL,'My Name is Jonas w/Lyrics',NULL,62,NULL,0,'Weezer','VoAnLHSLHGQ','',NULL),(17,0,'Raditude','Weezer',NULL,1115204,NULL,0,'(If You\'re Wondering If I Want You To) I Want You To','cDIzMGh94vo','',NULL),(18,0,NULL,'L. A. Woman',NULL,1552,NULL,0,'The Doors','JskztPPSJwY','',NULL),(19,0,'Oracular Spectacular','MGMT',NULL,10795889,NULL,0,'Time to Pretend','B9dSYgd5Elk','',NULL),(20,1,'Babel','Mumford & Sons',NULL,3663999,NULL,0,'I Will Wait','rGKfrgqWcv0','',NULL),(21,1,'Hot Fuss','The Killers',NULL,7564255,NULL,0,'All These Things That I\'ve Done','sZTpLvsYYHw','',NULL),(22,1,'Never Trust A Happy Song','Grouplove',NULL,2016998,NULL,0,'Tongue Tied','1x1wjGKHjBI','',NULL),(23,2,'A Night at the Opera','Queen',NULL,7895098,NULL,1,'Bohemian Rhapsody','fJ9rUzIMcZQ','',NULL),(24,0,NULL,'David Bowie',NULL,4598,NULL,0,'Bring Me The Disco King (Lohn','nJNYNg3Oc7w','',NULL),(25,1,'Dreaming Remix EP','Smallpools',NULL,32853,NULL,0,'Dreaming (The Chainsmokers Remix)','jfSc58Jk4zg','',NULL),(26,0,NULL,'Lana Del Rey',NULL,603,NULL,0,'Lana Del Rey vs Cedric Gervais','akhmS1D2Ce4','',NULL),(27,0,NULL,'Daft Punk',NULL,59491,NULL,0,'Random Access Memories (Vanderway Edit)','nqi8tv4P7R4','',NULL),(28,0,NULL,'Aaron Smith',NULL,77390,NULL,0,'Dancin (KRONO Remix)','0XFudmaObLI','',NULL),(29,0,NULL,'Calvin Harris',NULL,11160,NULL,0,'Summer (Extended)','jj2JyGwbeQ4','',NULL),(30,0,NULL,'Two Door Cinema Club',NULL,346,NULL,0,'Sleeps Alone (The Chainsmokers Remix)','m-Z5uLowENM','',NULL),(31,0,NULL,'Vance Joy',NULL,3683,NULL,0,'Riptide /// FlicFlac [REMASTERED VERSION OUT NOW on iTunes]','NI2IzZxVaFU','',NULL),(32,0,NULL,'Kaskade',NULL,1129,NULL,0,'Atmosphere (Neon Trees & Wild Children Remix)','0SaQDbtl13k','',NULL),(33,2,NULL,'Nicky Romero vs Krewella',NULL,6520,NULL,0,'Legacy (Vicetone Remix)','EfXXWMXGItQ','',NULL),(34,1,'1','The Beatles',NULL,5413249,NULL,1,'Hey Jude','eDdI7GhZSQA','',NULL),(35,2,'Surrealistic Pillow','Jefferson Airplane',NULL,4112595,NULL,1,'White Rabbit','WANNqr-vcx0','',NULL),(36,1,'If You Can Believe Your Eyes And Ears','The Mamas & the Papas',NULL,3350069,NULL,0,'California Dreamin\'','qhZULM69DIw','',NULL),(37,0,'Tepid Peppermint Wonderland - A Retrospective','The Brian Jonestown Massacre',NULL,278618,NULL,0,'Anenome','StV9lElcvAY','',NULL),(38,0,'Greatest Hits','The Moody Blues',NULL,1315544,NULL,0,'Nights in White Satin','9muzyOd4Lh8','',NULL),(39,1,NULL,'Robert Plant & Jimmy Page \'Gallows Pole\'',NULL,25,NULL,0,'Jools Holland Show 1994 BBC','X9DuDgzGjtE','',NULL),(40,1,NULL,'Babe I\'m gonna leave you',NULL,3454,NULL,0,'Led Zeppelin','iP9xMobANJM','',NULL),(41,1,'Live In London','Birdy',NULL,610275,NULL,0,'Young Blood','h7ZBygcSBzE','',NULL),(42,1,'13','Solace',NULL,4444,NULL,0,'Try','7DgotHBwmBM','',NULL),(43,1,NULL,'I Want You Back',NULL,2140,NULL,0,'The Jackson 5','s3Q80mk7bxE','',NULL),(44,1,'Tourist History','Two Door Cinema Club',NULL,5447116,NULL,0,'Something Good Can Work','Wxu02vp_Vm0','',NULL),(45,2,NULL,'\"Alive\"',NULL,202,NULL,1,'Empire of the Sun (Live)','vVoO66XZGcM','',NULL),(46,1,NULL,'Atmosphere',NULL,94,NULL,0,'KASKADE','sXQVicNodMw','',NULL),(47,0,NULL,'Trying To Be Cool',NULL,2303,NULL,0,'Phoenix','OePvsCfKHJg','',NULL),(48,0,'Oh, What A Life','American Authors',NULL,116870,NULL,0,'Luck','Uc0mJJHYrHM','',NULL),(49,0,NULL,'Two Door Cinema Club',NULL,256,NULL,0,'Changing Of The Seasons ft. Madeon','ovnCXhogusc','',NULL),(50,1,NULL,'The Kooks',NULL,25455,NULL,0,'\'Naive\'','jkaMiaRLgvY','',NULL),(51,1,'Angel Of Retribution','Judas Priest',NULL,522760,NULL,0,'Angel','UtNBKX4Dtwc','',NULL),(52,0,NULL,'Carl Sagan',NULL,365,NULL,0,'Profound Words of Wisdom','ECuarAmpK00','',NULL),(53,2,'Ghost Stories','Coldplay',NULL,2033743,NULL,0,'A Sky Full of Stars','VPRjCeoBqrI','',NULL),(54,0,'Greatest Hits','Simon & Garfunkel',NULL,6033029,NULL,0,'The Sound of Silence','L-JQ1q-13Ek','',NULL),(55,0,'All the Little Lights','Passenger',NULL,4195496,NULL,0,'Let Her Go','RBumgq5yVrA','',NULL),(56,0,NULL,'Pink Floyd',NULL,1808,NULL,0,'Coming Back to Life - Division Bell','uhV4me_k8Y8','',NULL),(57,1,'The 1975','The 1975',NULL,1764860,NULL,0,'Chocolate','FfBKqaVk2Co','',NULL),(58,1,'1994-09-09: 1st Avenue, Minneapolis, MN, USA','Weezer',NULL,152218,NULL,0,'The Sweater Song','LHQqqM5sr7g','',NULL),(59,2,'Led Zeppelin II','Led Zeppelin',NULL,3340517,NULL,1,'Heartbreaker','hhS6isyG2gk','',NULL),(61,1,'The Wall (disc 2)','Pink Floyd',NULL,8210263,NULL,1,'Comfortably Numb','_FrOQC-zEog','',NULL),(62,0,'Dire Straits','Dire Straits',NULL,5524880,NULL,0,'Sultans of Swing','8Pa9x9fZBtY','',NULL),(63,2,'Eric Clapton\'s Rainbow Concert','Eric Clapton',NULL,2964019,NULL,0,'Layla','fX5USg8_1gA','',NULL),(64,1,'Don\'t Believe the Truth','Oasis',NULL,1773765,NULL,0,'Lyla','oHQL7BoeDbA','',NULL),(65,0,'Tears in Heaven','Eric Clapton',NULL,3521119,NULL,0,'Tears in Heaven','JxPj3GAYYZ0','',NULL),(66,1,'Led Zeppelin','Led Zeppelin',NULL,1495537,NULL,0,'Your Time Is Gonna Come','rnmjFNcbv7I','',NULL),(67,0,'Led Zeppelin IV','Led Zeppelin',NULL,4801274,NULL,0,'Black Dog','cN3ABDzdLls','',NULL),(68,0,'Houses of the Holy','Led Zeppelin',NULL,1620880,NULL,0,'The Ocean','MrV6exi1WlM','',NULL),(69,0,NULL,'Led Zeppelin',NULL,2,NULL,0,'Np Quarter','8vEQPKzp7Dw','\0',NULL),(70,2,'Houses of the Holy','Led Zeppelin',NULL,2348415,NULL,1,'No Quarter','JJm8fZ6WS5Y','',NULL),(71,1,'Pablo Honey','Radiohead',NULL,11168503,NULL,1,'Creep','XFkzRNyygfk','',NULL),(72,2,'Four','Blues Traveler',NULL,620750,NULL,1,'Hook','pdz5kCaCRFM','',NULL),(73,1,'rearviewmirror (greatest hits 1991-2003)','Pearl Jam',NULL,2057812,NULL,1,'Yellow Ledbetter','hs8y3kneqrs','',NULL),(74,0,'Ten','Pearl Jam',NULL,4884291,NULL,0,'Alive','wGiTPgvKktM','',NULL),(75,1,NULL,'Guns N Roses',NULL,111212,NULL,0,'November Rain','8SbUC-UaAxE','',NULL),(76,0,'(What\'s the Story) Morning Glory?','Oasis',NULL,13781045,NULL,0,'Wonderwall','6hzrDeceEKc','',NULL),(77,0,'(What\'s the Story) Morning Glory?','Oasis',NULL,4737229,NULL,0,'Champagne Supernova','tI-5uv4wryI','',NULL),(78,2,'(What\'s the Story) Morning Glory?','Oasis',NULL,6795472,NULL,0,'Don\'t Look Back in Anger','r8OipmKFDeM','',NULL),(79,0,'Definitely Maybe','Oasis',NULL,4162527,NULL,0,'Live Forever','i_2mWhfOhGU','',NULL),(80,1,'Led Zeppelin IV','Led Zeppelin',NULL,2996760,NULL,0,'When the Levee Breaks','9NaQZojWi6U','',NULL),(81,1,NULL,'The Chainsmokers',NULL,23,NULL,0,'The Chainsmokers Megamix','95g5UP7RnbU','',NULL),(82,1,NULL,'B.o.B ft Hayley Williams',NULL,58570,NULL,0,'Airplanes','kn6-c223DUU','',NULL),(83,2,'Surrealistic Pillow','Jefferson Airplane',NULL,3692320,NULL,0,'Somebody to Love','YIkoSPqjaU4','',NULL),(84,2,NULL,'Billy Boyd',NULL,185,NULL,0,'Last Goodbye','q8ir8rVl2Z4','',NULL),(85,2,'Down The Way','Angus and Julia Stone',NULL,479451,NULL,0,'Big Jet Plane','AR8D2yqgQ1U','',NULL),(86,0,'Led Zeppelin III','Led Zeppelin',NULL,3650305,NULL,0,'Since I\'ve Been Loving You','SAR7KmiCHto','',NULL),(87,1,'In Rainbows','Radiohead',NULL,8090369,NULL,1,'Reckoner','rOoCixFA8OI','',NULL),(88,1,'OK Computer','Radiohead',NULL,8806542,NULL,0,'No Surprises','u5CVsCnxyXg','',NULL),(89,0,'Down The Way','Angus and Julia Stone',NULL,480954,NULL,0,'Big Jet Plane','yFTvbcNhEgc','',NULL),(91,0,'In Rainbows','Radiohead',NULL,7521820,NULL,0,'Nude','BbWBRnDK_AE','',NULL),(92,0,'OK Computer','Radiohead',NULL,9216421,NULL,0,'Paranoid Android','sPLEbAVjiLA','',NULL),(93,0,'Kid A','Radiohead',NULL,6783611,NULL,0,'Everything in Its Right Place','onRk0sjSgFU','',NULL),(94,0,'The Bends','Radiohead',NULL,4973679,NULL,0,'Street Spirit (Fade Out)','IrTB-iiecqk','',NULL),(95,0,'OK Computer','Radiohead',NULL,12016939,NULL,0,'Karma Police','IBH97ma9YiI','',NULL),(96,0,'Electronic Dance Music Euphoria (2013)','Armin van Buuren',NULL,1000642,NULL,0,'This Is What It Feels Like','BR_DFMUzX4E','',NULL),(97,0,NULL,'Armin van Buuren',NULL,178412,NULL,0,'Intense','0PuGIcokRWc','',NULL),(98,0,'The Music Videos 1997-2010','Armin van Buuren',NULL,455945,NULL,0,'In And Out Of Love','VrKNb5uwjxQ','',NULL),(99,0,'Future Trance, Volume 63','Armin van Buuren',NULL,90456,NULL,0,'Waiting For The Night','dU26cGlmkRg','',NULL),(100,0,NULL,'Armin van Buuren',NULL,37361,NULL,0,'Reprise','R2zFgWnsw84','',NULL),(101,0,'The Video Year Mix 2011','Avicii',NULL,234210,NULL,0,'Fade Into Darkness','KQYzF84xocw','',NULL),(102,0,'Electro','Nicky Romero',NULL,109927,NULL,0,'Toulouse','KrVC5dm5fFc','',NULL),(103,0,'Ministry of Sound: Sessions Six','deadmau5',NULL,919412,NULL,0,'Ghosts N Stuff','h7ArUgxtlJs','',NULL),(104,0,'Animals','Martin Garrix',NULL,875821,NULL,0,'Animals','gCYcHz2k5x0','',NULL),(105,0,'45 RPM','Paul van Dyk',NULL,531504,NULL,0,'For an Angel','qM5q1o7ofnc','',NULL),(106,0,'100 X Zomer 2012','deadmau5',NULL,655646,NULL,0,'I Remember','zK1mLIeXwsQ','',NULL),(107,0,NULL,'Skrillex',NULL,134188,NULL,0,'Cinema','k6lVhGeyXuw','',NULL),(108,0,'For Lack of a Better Name','deadmau5',NULL,1415065,NULL,0,'Strobe','tKi9Z-f6qX4','',NULL),(109,0,'In Absentia','Porcupine Tree',NULL,2669145,NULL,0,'Trains','0UHwkfhwjsk','',NULL),(110,0,'Deadwing','Porcupine Tree',NULL,1889045,NULL,0,'Lazarus','nTjc1sPktlY','',NULL),(111,0,'Fear of a Blank Planet','Porcupine Tree',NULL,1279672,NULL,0,'Anesthetize','MSEQZ8reJA4','',NULL),(112,0,'In Absentia','Porcupine Tree',NULL,1444358,NULL,0,'The Sound of Muzak','hp0OXICuZek','',NULL),(113,0,'Save Me, San Francisco','Train',NULL,3973628,NULL,0,'Hey, Soul Sister','kVpv8-5XWOI','',NULL),(114,0,'Drops of Jupiter','Train',NULL,2976644,NULL,0,'Drops of Jupiter','7Xf-Lesrkuc','',NULL),(115,0,'Drive By','Train',NULL,2681623,NULL,0,'Drive By','oxqnFJ3lp5k','',NULL),(116,0,'California 37','Train',NULL,734780,NULL,0,'50 Ways to Say Goodbye','GSBFehvLJDc','',NULL),(117,0,'Save Me, San Francisco','Train',NULL,768670,NULL,0,'Marry Me','ghZt2cILcCU','',NULL),(118,0,'Pronounced Leh-Nerd Skin-Nerd','Lynyrd Skynyrd',NULL,3726704,NULL,0,'Free Bird','np0solnL1XY','',NULL);
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
INSERT INTO `song_genre` VALUES (1,3),(1,5),(1,4),(1,2),(1,1),(2,2),(2,7),(2,9),(2,6),(2,8),(3,11),(3,13),(3,6),(3,12),(3,10),(4,1),(4,15),(4,14),(4,16),(4,2),(5,19),(5,17),(5,16),(5,18),(5,20),(8,21),(8,25),(8,23),(8,24),(8,22),(9,11),(9,2),(9,27),(9,26),(9,28),(10,18),(10,31),(10,4),(10,30),(10,29),(11,2),(11,1),(11,15),(11,18),(11,32),(12,34),(12,15),(12,33),(12,18),(12,32),(13,15),(13,18),(13,1),(13,2),(13,35),(14,1),(14,15),(14,35),(14,14),(14,2),(15,18),(15,15),(15,2),(15,35),(15,1),(17,2),(17,16),(17,1),(17,37),(17,36),(19,18),(19,17),(19,38),(19,15),(19,39),(20,41),(20,40),(20,18),(20,42),(20,33),(21,18),(21,32),(21,15),(21,1),(21,2),(22,18),(22,43),(22,44),(22,15),(22,32),(23,45),(23,47),(23,46),(23,2),(23,11),(24,51),(24,48),(24,50),(24,49),(25,52),(25,54),(25,53),(28,52),(28,55),(28,56),(34,11),(34,58),(34,33),(34,57),(34,2),(35,9),(35,11),(35,2),(35,57),(35,12),(36,2),(36,57),(36,59),(36,16),(36,11),(37,12),(37,9),(37,60),(37,32),(37,2),(38,61),(38,59),(38,2),(38,11),(38,57),(41,63),(41,62),(41,66),(41,64),(41,65),(42,69),(42,2),(42,67),(42,68),(42,8),(44,71),(44,70),(44,33),(44,18),(44,17),(48,74),(48,73),(48,72),(48,76),(48,75),(51,77),(51,6),(51,10),(51,79),(51,78),(53,16),(53,1),(53,81),(53,80),(53,17),(54,82),(54,40),(54,57),(54,59),(54,11),(55,85),(55,83),(55,84),(55,40),(55,33),(56,87),(56,86),(57,33),(57,18),(57,32),(57,88),(57,65),(58,89),(58,2),(58,1),(58,18),(58,15),(59,91),(59,13),(59,11),(59,2),(59,46),(61,93),(61,11),(61,9),(61,2),(61,61),(62,2),(62,94),(62,11),(62,47),(62,95),(63,97),(63,95),(63,96),(63,11),(63,2),(64,70),(64,33),(64,98),(64,15),(64,2),(65,83),(65,11),(65,2),(65,96),(65,95),(66,90),(66,2),(66,57),(66,13),(66,11),(67,46),(67,2),(67,13),(67,90),(67,11),(68,46),(68,2),(68,90),(68,13),(68,11),(70,61),(70,2),(70,13),(70,11),(70,90),(71,15),(71,18),(71,1),(71,99),(71,2),(72,2),(72,96),(72,97),(72,14),(72,100),(73,101),(73,14),(73,102),(73,1),(73,2),(74,101),(74,102),(74,14),(74,2),(74,1),(75,103),(75,107),(75,104),(75,106),(75,105),(76,15),(76,70),(76,98),(76,14),(76,2),(77,2),(77,33),(77,14),(77,15),(77,70),(78,98),(78,70),(78,2),(78,33),(78,14),(79,98),(79,2),(79,70),(79,14),(79,33),(80,46),(80,2),(80,11),(80,13),(80,90),(82,109),(82,108),(83,57),(83,2),(83,11),(83,9),(83,12),(85,40),(85,112),(85,41),(85,111),(85,110),(86,2),(86,90),(86,13),(86,96),(86,11),(87,33),(87,18),(87,1),(87,15),(87,2),(88,18),(88,99),(88,2),(88,15),(88,1),(89,112),(89,110),(89,40),(89,111),(89,41),(91,113),(91,2),(91,1),(91,15),(91,18),(92,1),(92,15),(92,99),(92,18),(92,2),(93,15),(93,99),(93,2),(93,1),(93,17),(94,99),(94,2),(94,18),(94,15),(94,1),(95,1),(95,99),(95,2),(95,15),(95,18),(96,115),(96,17),(96,31),(96,52),(96,114),(97,118),(97,117),(97,116),(97,114),(97,115),(98,119),(98,31),(98,114),(98,117),(98,17),(99,114),(99,31),(99,119),(99,39),(100,120),(100,114),(101,121),(101,114),(101,52),(101,31),(101,53),(102,31),(102,123),(102,17),(102,52),(102,122),(103,52),(103,17),(103,124),(103,53),(103,125),(104,31),(104,52),(104,55),(104,53),(104,17),(105,17),(105,31),(105,114),(105,127),(105,126),(106,52),(106,110),(106,114),(106,53),(106,17),(107,123),(107,129),(107,128),(108,53),(108,125),(108,17),(108,52),(108,49),(109,15),(109,61),(109,113),(109,124),(109,2),(110,113),(110,2),(110,130),(110,61),(110,124),(111,124),(111,61),(111,49),(111,131),(111,2),(112,132),(112,9),(112,124),(112,61),(112,2),(113,134),(113,36),(113,133),(113,2),(113,16),(114,15),(114,16),(114,135),(114,1),(114,2),(115,136),(115,15),(115,16),(115,2),(115,135),(116,135),(116,16),(116,15),(116,2),(116,1),(117,135),(117,137),(117,83),(117,16),(117,138),(118,140),(118,46),(118,11),(118,139),(118,2);
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
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8rhowfphadib7v77ts33w4u00` (`profile_id`),
  CONSTRAINT `FK_8rhowfphadib7v77ts33w4u00` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`)
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
-- Table structure for table `station_genre`
--

DROP TABLE IF EXISTS `station_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station_genre` (
  `station_genres_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  KEY `FK_efae70c8ppnfmsnomwx0n1tbm` (`genre_id`),
  KEY `FK_qhgtayqovt3blf88ldhgons6q` (`station_genres_id`),
  CONSTRAINT `FK_qhgtayqovt3blf88ldhgons6q` FOREIGN KEY (`station_genres_id`) REFERENCES `station` (`id`),
  CONSTRAINT `FK_efae70c8ppnfmsnomwx0n1tbm` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_genre`
--

LOCK TABLES `station_genre` WRITE;
/*!40000 ALTER TABLE `station_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_genre` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,0,'\0','\0','','$2a$10$INW1WDPyUqfYkfn5DthP/uaC2ZnIGsUQIVsLLXZNZcRc3kAGbp2sO','\0','admin.aj');
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

-- Dump completed on 2015-02-03  7:36:09
