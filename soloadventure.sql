-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `story_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'The description',1,1),(2,'desc',2,2),(3,NULL,3,3),(4,NULL,4,4),(5,NULL,5,5),(6,NULL,6,6),(7,NULL,7,7),(8,NULL,8,8);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeps`
--

DROP TABLE IF EXISTS `meeps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeps` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeps`
--

LOCK TABLES `meeps` WRITE;
/*!40000 ALTER TABLE `meeps` DISABLE KEYS */;
INSERT INTO `meeps` VALUES (1,0,'Hello world!','2020-09-25 08:57:33','2020-09-25 08:57:33'),(3,0,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod doloremque cumque corporis repellendus, enim, excepturi harum commodi rem esse recusandae quam similique praesentium tempore itaque dolorem, veritatis tenetur hic? Eligendi.','2020-09-29 10:47:12','2020-09-29 10:47:12');
/*!40000 ALTER TABLE `meeps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  `alt1` text,
  `alt2` text,
  `alt1id` bigint unsigned NOT NULL,
  `alt2id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  `alt1` text,
  `alt2` text,
  `alt2id` int unsigned NOT NULL,
  `alt1id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'En gång för länge sedan fanns det en liten flicka, som alla tyckte mycket om, men mest av alla hennes mormor. Hon skulle kunna ge detta barn vad som helst. En gång gav hon henne en liten röd luva, som passade henne så bra att hon aldrig ville ha på sig något annat. Hon kallades därför för Rödluvan.\r\n\r\nEn dag sa hennes mor till henne ”Kom Rödluvan, här är en bit av den nybakade kakan och en flaska vin. Tag med dem till din mormor, hon är lite sjuk och det skulle göra henne gott. Gå innan det blir för varmt. Gå försiktigt och lämna inte vägen, för då kan du ramla och slå sönder flaskan. När du kommer in i hennes rum, skall du inte glömma att säga god morgon, innan du springer runt i varje hörn.”\r\n\r\nVad ska Rödluvan svara?','Jag ska vara försiktig','Sluta vara så orolig kärring',3,2),(2,'Rödluvan gav sig iväg.\r\nMormor bodde ute i skogen långt från byn där Rödluvan bodde. Just när Rödluvan gick in i skogen mötte en varg henne. Rödluvan visste inte vad det var för en konstig figur och blev inte alls rädd för honom.\r\n\r\n”God dag, lilla Rödluvan, hur mår du min lilla vän”, sa han.\r\n\r\nVad vill du att Rödluvan ska svara vargen?','Tack, jag mår bra.','Det angår inte dig!',5,4),(3,'Rödluvans mamma blev arg och gick därifrån.\r\nMormor bodde ute i skogen långt från byn där Rödluvan bodde. Just när Rödluvan gick in i skogen mötte en varg henne. Rödluvan visste inte vad det var för en konstig figur och blev inte alls rädd för honom.\r\n\r\n”God dag, lilla Rödluvan, hur mår du min lilla vän”, sa han.\r\n\r\nVad vill du att Rödluvan ska svara vargen?','Tack, jag mår bra.','Det angår inte dig!',5,4),(4,'\"Okej\" sa vargen. \"Vart skall du ta vägen så tidigt?” frågade vargen nyfikt. Vad vill du att Rödluvan ska svara vargen?','Till min mormor.','Skulle inte du vilja veta',5,5),(5,'Vargen fnös och visade framtänderna. \"Vart skall du ta vägen så tidigt?” frågade vargen surt. Vad vill du att Rödluvan ska svara vargen?','Till min mormor','Skulle inte du vilja veta',7,6),(6,'\"Så trevligt\" sa vargen. \"Vad har du i korgen?”, frågade vargen. Vad vill du att Rödluvan ska svara vargen?','Kaka och vin. Igår var det bak-dag och min stackars sjuka mormor skall få något gott så att hon blir bättre.','Jag har med mig en bazooka som jag ska skjuta ihjäl dig med om jag ser dig igen.',8,7),(8,' \"Var bor din mormor?”, frågade vargen.','\"Hon bor en bra bit in i skogen. Hennes hus står under tre stora ekträd. Du känner säkert till det”, svarade Rödluvan.\r\n\r\n','Be om ursäkt till vargen',0,0),(9,'Vargens ansiktsuttryck blev rödare och Rödluvan såg på honom att vargen höll på att bli rasande.  \"Var bor din mormor?”, frågade vargen.','\"Hon bor en bra bit in i skogen. Hennes hus står under tre stora ekträd. Du känner säkert till det”, svarade Rödluvan.\r\n\r\n','Be om ursäkt till vargen',0,0);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'Default',' ',NULL,NULL,NULL);
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

-- Dump completed on 2020-10-15  9:35:41
