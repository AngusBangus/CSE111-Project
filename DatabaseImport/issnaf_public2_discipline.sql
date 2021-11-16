-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: issnaf_public2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `discipline_id` int NOT NULL AUTO_INCREMENT,
  `discipline_full_name` varchar(255) NOT NULL DEFAULT '6: Unknown',
  `discipline_branch` varchar(160) NOT NULL DEFAULT '6',
  `discipline_area` varchar(160) NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`discipline_id`),
  UNIQUE KEY `discipline_id` (`discipline_id`),
  UNIQUE KEY `discipline_full_name` (`discipline_full_name`),
  KEY `discipline_full_name_2` (`discipline_full_name`),
  KEY `discipline_branch` (`discipline_branch`),
  KEY `discipline_area` (`discipline_area`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'3. Life Sciences: Medicine','3. Life Sciences','Medicine'),(2,'4. Physical Sciences & Mathematics: Chemistry','4. Physical Sciences & Mathematics','Chemistry'),(3,'5. Social & Behavioral Sciences: Other','5. Social & Behavioral Sciences','Other'),(4,'1. Arts & Humanities: Language and Literature - Italian','1. Arts & Humanities','Language and Literature - Italian'),(5,'6: Unknown','6. Unknown','Unknown'),(6,'2. Engineering: Computer/Electrical Engineering','2. Engineering','Computer/Electrical Engineering'),(7,'3. Life Sciences: Physiology','3. Life Sciences','Physiology'),(8,'5. Social & Behavioral Sciences: Law','5. Social & Behavioral Sciences','Law'),(9,'3. Life Sciences: Biochemistry and Biophysics and Structural Biology','3. Life Sciences','Biochemistry and Biophysics and Structural Biology'),(10,'4. Physical Sciences & Mathematics: Computer Science','4. Physical Sciences & Mathematics','Computer Science'),(11,'4. Physical Sciences & Mathematics: Astrophysics and Astronomy','4. Physical Sciences & Mathematics','Astrophysics and Astronomy'),(12,'5. Social & Behavioral Sciences: Public Affairs and Public Policy and Public Administration','5. Social & Behavioral Sciences','Public Affairs and Public Policy and Public Administration'),(13,'2. Engineering: Biomedical Engineering & Bioengineering','2. Engineering','Biomedical Engineering & Bioengineering'),(14,'2. Engineering: Chemical Engineering','2. Engineering','Chemical Engineering'),(15,'4. Physical Sciences & Mathematics: Materials Science','4. Physical Sciences & Mathematics','Materials Science'),(16,'4. Physical Sciences & Mathematics: Statistics and Probability','4. Physical Sciences & Mathematics','Statistics and Probability'),(17,'3. Life Sciences: Genetics and Genomics','3. Life Sciences','Genetics and Genomics'),(18,'1. Arts & Humanities: Theater and Performance Studies','1. Arts & Humanities','Theater and Performance Studies'),(19,'3. Life Sciences: Neuroscience and Neurobiology','3. Life Sciences','Neuroscience and Neurobiology'),(20,'3. Life Sciences: Cell and Developmental Biology','3. Life Sciences','Cell and Developmental Biology'),(21,'3. Life Sciences: Other','3. Life Sciences','Other'),(22,'1. Arts & Humanities: Music Studies','1. Arts & Humanities','Music Studies'),(23,'5. Social & Behavioral Sciences: Economics','5. Social & Behavioral Sciences','Economics'),(24,'3. Life Sciences: Bioinformatics','3. Life Sciences','Bioinformatics'),(25,'3. Life Sciences: Immunology and Infectious Disease','3. Life Sciences','Immunology and Infectious Disease'),(26,'5. Social & Behavioral Sciences: Communication','5. Social & Behavioral Sciences','Communication'),(27,'1. Arts & Humanities: Visual Arts','1. Arts & Humanities','Visual Arts'),(28,'3. Life Sciences: Pharmacology and Toxicology and Environmental Health','3. Life Sciences','Pharmacology and Toxicology and Environmental Health'),(29,'2. Engineering: Aerospace Engineering','2. Engineering','Aerospace Engineering'),(30,'2. Engineering: Mechanical Engineering','2. Engineering','Mechanical Engineering'),(31,'1. Arts & Humanities: Language and Literature - Other','1. Arts & Humanities','Language and Literature - Other'),(32,'3. Life Sciences: Ecology and Evolutionary Biology','3. Life Sciences','Ecology and Evolutionary Biology'),(33,'2. Engineering: Nanoscience and Nanotechnology','2. Engineering','Nanoscience and Nanotechnology'),(34,'1. Arts & Humanities: Other','1. Arts & Humanities','Other'),(35,'3. Life Sciences: Dentistry','3. Life Sciences','Dentistry'),(36,'4. Physical Sciences & Mathematics: Physics','4. Physical Sciences & Mathematics','Physics'),(37,'4. Physical Sciences & Mathematics: Oceanography and Atmospheric Sciences and Meteorology','4. Physical Sciences & Mathematics','Oceanography and Atmospheric Sciences and Meteorology'),(38,'4. Physical Sciences & Mathematics: Mathematics','4. Physical Sciences & Mathematics','Mathematics'),(39,'5. Social & Behavioral Sciences: Sociology','5. Social & Behavioral Sciences','Sociology'),(40,'3. Life Sciences: Biotechnology','3. Life Sciences','Biotechnology'),(41,'3. Life Sciences: Nutrition','3. Life Sciences','Nutrition'),(42,'3. Life Sciences: Nursing','3. Life Sciences','Nursing'),(43,'4. Physical Sciences & Mathematics: Applied Mathematics','4. Physical Sciences & Mathematics','Applied Mathematics'),(44,'5. Social & Behavioral Sciences: Political Science','5. Social & Behavioral Sciences','Political Science'),(45,'3. Life Sciences: Food Science','3. Life Sciences','Food Science'),(46,'3. Life Sciences: Plant Sciences','3. Life Sciences','Plant Sciences'),(47,'2. Engineering: Nuclear Engineering','2. Engineering','Nuclear Engineering'),(48,'2. Engineering: Civil and Environmental Engineering','2. Engineering','Civil and Environmental Engineering'),(49,'5. Social & Behavioral Sciences: Anthropology','5. Social & Behavioral Sciences','Anthropology'),(50,'4. Physical Sciences & Mathematics: Computer Sciences','4. Physical Sciences & Mathematics','Computer Sciences'),(51,'3. Life Sciences: Microbiology','3. Life Sciences','Microbiology'),(52,'5. Social & Behavioral Sciences: Psychology','5. Social & Behavioral Sciences','Psychology'),(53,'5. Social & Behavioral Sciences: Business','5. Social & Behavioral Sciences','Business'),(54,'2. Engineering: Operations Research and Systems Eng. and Industrial Eng.','2. Engineering','Operations Research and Systems Eng. and Industrial Eng.'),(55,'4. Physical Sciences & Mathematics: Earth Sciences','4. Physical Sciences & Mathematics','Earth Sciences'),(56,'4. Physical Sciences & Mathematics: Other','4. Physical Sciences & Mathematics','Other'),(57,'2. Engineering: Materials Science and Engineering','2. Engineering','Materials Science and Engineering'),(58,'1. Arts & Humanities: Philosophy','1. Arts & Humanities','Philosophy'),(59,'1. Arts & Humanities: History','1. Arts & Humanities','History'),(60,'1. Arts & Humanities: Religion','1. Arts & Humanities','Religion'),(61,'2. Engineering: Other','2. Engineering','Other'),(62,'3. Life Sciences: Animal Sciences','3. Life Sciences','Animal Sciences'),(63,'2. Engineering: Computational Engineering','2. Engineering','Computational Engineering'),(64,'3. Life Sciences: Public Health','3. Life Sciences','Public Health'),(65,'7. Other','7. Other','Other'),(66,'2. Engineering: Electrical Engineering','2. Engineering','Electrical Engineering'),(67,'5.  Social & Behavioral Sciences: Public Affairs and Public Policy and Public Administration','5.  Social & Behavioral Sciences','Public Affairs and Public Policy and Public Administration'),(69,'1. Arts & Humanities: Classics','1. Arts & Humanities','Classics'),(70,'1. Arts & Humanities: History of Art and Architecture and Archaeology','1. Arts & Humanities','History of Art and Architecture and Archaeology'),(72,'1. Arts & Humanities: Film Studies','1. Arts & Humanities','Film Studies'),(73,'5. Social & Behavioral Sciences: Geospatial Technology applied to Cultural Heritage ','5. Social & Behavioral Sciences','Geospatial Technology applied to Cultural Heritage '),(74,'1. Arts & Humanities: Archaeology','1. Arts & Humanities','Archaeology'),(75,'1. Arts & Humanities: Language and Literature - English','1. Arts & Humanities','Language and Literature - English'),(76,'1. Arts & Humanities: Comparative Literature','1. Arts & Humanities','Comparative Literature'),(77,'1. Arts & Humanities: Language and Literature - Spanish','1. Arts & Humanities','Language and Literature - Spanish'),(78,'3. Life Sciences: Systems Biology','3. Life Sciences','Systems Biology'),(79,'5. Social & Behavioral Sciences: Urban Studies and Planning','5. Social & Behavioral Sciences','Urban Studies and Planning'),(80,'1. Arts & Humanities: Architecture','1. Arts & Humanities','Architecture'),(81,'3. Engineering: Computer Engineering','3. Engineering','Computer Engineering'),(82,'5. Social & Behavioral Sciences: Linguistics','5. Social & Behavioral Sciences','Linguistics'),(83,'2. Engineering: Information Science','2. Engineering','Information Science'),(84,'3. Life Sciences: Immuno-oncology','3. Life Sciences','Immuno-oncology'),(85,'5. Social & Behavioral Sciences: Science and Technology Studies','5. Social & Behavioral Sciences','Science and Technology Studies');
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 16:00:03
