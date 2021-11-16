CREATE DATABASE  IF NOT EXISTS `public` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `public`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 34.68.145.198    Database: public
-- ------------------------------------------------------
-- Server version	5.7.32-google

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
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter` (
  `chapter_id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_name` varchar(260) NOT NULL,
  PRIMARY KEY (`chapter_id`),
  UNIQUE KEY `chapter_id` (`chapter_id`),
  UNIQUE KEY `chapter_name` (`chapter_name`),
  KEY `chapter_name_2` (`chapter_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debug`
--

DROP TABLE IF EXISTS `debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debug` (
  `caller` varchar(60) DEFAULT NULL,
  `message` varchar(260) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `discipline_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_full_name` varchar(260) NOT NULL DEFAULT '6: Unknown',
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
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `person_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `institute` varchar(260) DEFAULT NULL,
  `department` varchar(260) DEFAULT NULL,
  `degree` varchar(260) DEFAULT NULL,
  `degree_spec` varchar(260) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `education_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `education_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issnaf_profile`
--

DROP TABLE IF EXISTS `issnaf_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issnaf_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `status_asof` date DEFAULT NULL,
  `last_contacted_on` date DEFAULT NULL,
  `why_join` varchar(260) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `working_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `profile_id` (`profile_id`),
  KEY `fk_chapter_id` (`chapter_id`),
  KEY `fk_working_group_id` (`working_group_id`),
  CONSTRAINT `fk_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`chapter_id`),
  CONSTRAINT `fk_working_group_id` FOREIGN KEY (`working_group_id`) REFERENCES `working_group` (`working_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3083 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `person_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `institute` varchar(260) DEFAULT NULL,
  `department` varchar(260) DEFAULT NULL,
  `job_title` varchar(260) NOT NULL DEFAULT 'Unknown',
  `job_description` varchar(260) DEFAULT NULL,
  `job_normalized_title` varchar(260) DEFAULT NULL,
  `job_email` varchar(60) DEFAULT NULL,
  `job_phone` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(60) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3085 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(260) NOT NULL,
  `organization_url` varchar(260) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `organization_type` enum('academia','medical school','research center','industry','other','undefined') DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  UNIQUE KEY `organization_id` (`organization_id`),
  KEY `organization_name` (`organization_name`),
  KEY `organization_url` (`organization_url`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3748 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `full_name` varchar(60) NOT NULL,
  `primary_email` varchar(60) DEFAULT NULL,
  `primary_phone` varchar(30) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` enum('male calculated','female calculated','male','female','other','decline to say','unknown') DEFAULT NULL,
  `image_url` varchar(260) DEFAULT NULL,
  `na_arrival` date DEFAULT NULL,
  `na_departure` date DEFAULT NULL,
  `linkedin_page` varchar(260) DEFAULT NULL,
  `web_page` varchar(260) DEFAULT NULL,
  `specialty_name` varchar(260) DEFAULT NULL,
  `discipline_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `diaspora_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_id` (`person_id`),
  UNIQUE KEY `profile_id` (`profile_id`),
  KEY `last_name` (`last_name`),
  KEY `full_name` (`full_name`),
  KEY `primary_email` (`primary_email`),
  KEY `discipline_id` (`discipline_id`),
  KEY `profile_id_2` (`profile_id`),
  KEY `fk_diaspora_id` (`diaspora_id`),
  CONSTRAINT `fk_diaspora_id` FOREIGN KEY (`diaspora_id`) REFERENCES `diaspora`.`raw_diaspora_data` (`id`),
  CONSTRAINT `person_ibfk_2` FOREIGN KEY (`discipline_id`) REFERENCES `discipline` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `person_ibfk_3` FOREIGN KEY (`profile_id`) REFERENCES `issnaf_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3083 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `volunteer_interest`
--

DROP TABLE IF EXISTS `volunteer_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer_interest` (
  `volunteer_interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `volunteer_interest` varchar(60) NOT NULL,
  PRIMARY KEY (`volunteer_interest_id`),
  UNIQUE KEY `volunteer_interest_id` (`volunteer_interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `volunteer_interest_profile_link`
--

DROP TABLE IF EXISTS `volunteer_interest_profile_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer_interest_profile_link` (
  `volunteer_interest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  KEY `volunteer_interest_id` (`volunteer_interest_id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `volunteer_interest_profile_link_ibfk_1` FOREIGN KEY (`volunteer_interest_id`) REFERENCES `volunteer_interest` (`volunteer_interest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `volunteer_interest_profile_link_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `issnaf_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `working_group`
--

DROP TABLE IF EXISTS `working_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_group` (
  `working_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(260) NOT NULL,
  PRIMARY KEY (`working_group_id`),
  UNIQUE KEY `working_group_id` (`working_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'public'
--

--
-- Dumping routines for database 'public'
--
/*!50003 DROP FUNCTION IF EXISTS `debug_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `debug_log`(_caller VARCHAR(60), _message VARCHAR(260)) RETURNS int(11)
BEGIN
	INSERT INTO public.debug (caller,message) VALUES(_caller, _message);
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `is_null`(text VARCHAR(260)) RETURNS tinyint(1)
BEGIN
IF LENGTH(text) > 0 THEN
RETURN false;
ELSE
RETURN true;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_for_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `check_for_null`(IN _Value VARCHAR(260))
BEGIN
SET @t1 =CONCAT("SELECT * FROM public.raw_diaspora_data where ",_Value,"='' OR ", _Value," IS NULL");
 PREPARE stmt3 FROM @t1;
 EXECUTE stmt3;
 DEALLOCATE PREPARE stmt3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `convert_diaspora_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `convert_diaspora_table`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE i, db, _location_id, _profile_id, _discipline_id, _chapter_id, _person_id INT;
  DECLARE	_First_name, _Last_name, _Primary_email, _City, _State_US_and_Canada, _Zip_Code, _Country VARCHAR(60);
  DECLARE	_Affiliation, _School_Institute_Center, _Division_Department, _Position_last_or_current VARCHAR(260);
  DECLARE _Work_email VARCHAR(60);
  DECLARE _Discipline, _Specialty, _Highest_degree, _Alma_Mater_highest_degree, _Alma_Mater_Italy, _Linkedin_ResearchGate_Profile VARCHAR(260);
  DECLARE _Webpage, _Reasons_to_Join, _Volunteering, _Membership_Status VARCHAR(260);
  DECLARE _Granted_on VARCHAR(60);
  DECLARE _Chapter, _Activity_Group, _Normalized_Position, _CV_Link VARCHAR(260);
  DECLARE _Email_Check_As_Of VARCHAR(60);

  DECLARE cur CURSOR FOR SELECT First_name, Last_name, Primary_email, City, State_US_and_Canada, Zip_Code, Country, Affiliation, School_Institute_Center,
    Division_Department, Position_last_or_current, Work_email, Discipline, Specialty, Highest_degree, Alma_Mater_highest_degree, Alma_Mater_Italy,Linkedin_ResearchGate_Profile,
    Webpage, Reasons_to_Join, Volunteering, Membership_Status, Granted_on, Chapter, Activity_Group, Normalized_Position, CV_Link, Email_Check_As_Of FROM diaspora.raw_diaspora_data;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    CALL public.create_diaspora_volunteer_interest();

  DELETE FROM public.debug;
  SET i=0;
  OPEN cur;
  read_loop: LOOP
    FETCH cur INTO _First_name, _Last_name, _Primary_email, _City, _State_US_and_Canada, _Zip_Code, _Country, _Affiliation, _School_Institute_Center,
    _Division_Department, _Position_last_or_current, _Work_email, _Discipline, _Specialty, _Highest_degree, _Alma_Mater_highest_degree, _Alma_Mater_Italy, 
    _Linkedin_ResearchGate_Profile,_Webpage, _Reasons_to_Join, _Volunteering, _Membership_Status, _Granted_on, _Chapter, _Activity_Group, 
    _Normalized_Position, _CV_Link, _Email_Check_As_Of;
    SET db = public.debug_log('Convert', CONCAT(_First_name, ' ', _Last_name));
    /*SET i=i+1;
    IF i=100 THEN
        LEAVE read_loop;
    END IF; */
    IF done = 1 THEN 
		LEAVE read_loop;
	END IF;
    CALL public.create_diaspora_location(_City, _State_US_and_Canada, _Zip_Code, _Country, _location_id);
    CALL public.create_diaspora_profile(_Membership_Status, _Granted_on, _Email_Check_As_Of, _profile_id);
    CALL public.create_diaspora_discipline(_Discipline, _discipline_id);
    CALL public.create_diaspora_chapter(_Chapter, _chapter_id);
    CALL public.create_diaspora_person(_First_name,_Last_name,_Primary_email,_location_id,_Linkedin_ResearchGate_Profile,_Webpage,_discipline_id,
        _profile_id,_chapter_id,_Reasons_to_Join, _person_id);
    CALL public.create_diaspora_volunteering_link(_Volunteering, _person_id);
    CALL public.create_diaspora_job(_person_id,_Affiliation,_School_Institute_Center,_Division_Department,_Position_last_or_current,_Work_email,
    _Normalized_Position);
    CALL public.create_diaspora_education(_person_id,_Alma_Mater_highest_degree,_Highest_degree);
    IF STRCMP(UPPER(_Alma_Mater_Italy), UPPER(_Alma_Mater_highest_degree)) = 0 THEN
        SET db = public.debug_log('Convert', 'Education is the same');
    ELSE
        CALL public.create_diaspora_education(_person_id,_Alma_Mater_Italy,'');
    END IF;

  END LOOP;
  CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_chapter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_chapter`(IN _chapter VARCHAR(260), OUT _Id INT)
BEGIN
	DECLARE db INT;
   	IF public.is_null(_chapter)  THEN
        SET db = public.debug_log('Chapter', 'Chapter is null!!!');
        SET _Id = null;
    ELSE
        SELECT chapter_id INTO _Id FROM public.chapter WHERE chapter_name=_chapter;
        IF _Id is null THEN
            INSERT INTO public.chapter(chapter_name) VALUES(_chapter);
            SELECT LAST_INSERT_ID() into _Id ;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_discipline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_discipline`(IN _discipline VARCHAR(260), OUT _Id INT)
BEGIN
	DECLARE db INT;
   	IF public.is_null(_discipline)  THEN
        SET db = public.debug_log('Discipline', 'Discipline is null!!!');
        SELECT discipline_id INTO _Id FROM public.discipline WHERE discipline_full_name='6: Unknown';
    ELSE
        SELECT discipline_id INTO _Id FROM public.discipline WHERE discipline_full_name=_discipline;
        IF _Id is null THEN
            INSERT INTO public.discipline(discipline_full_name, discipline_branch, discipline_area) VALUES(_discipline, 
                SUBSTRING_INDEX(_discipline, ':',1), SUBSTRING_INDEX(_discipline, ':',-1));
            SELECT LAST_INSERT_ID() into _Id ;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_education` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_education`(IN _person_id INT, IN _organization_name VARCHAR(260), IN _degree VARCHAR(260))
BEGIN
	DECLARE db INT;
    DECLARE _organization_id INT;
    CALL public.create_diaspora_organization(_organization_name, _organization_id);
   	IF _organization_id IS NULL  THEN
        SET db = public.debug_log('Education', 'Education organization name is null!!!');
    ELSE
        INSERT INTO public.education(person_id,organization_id,degree) VALUES(_person_id,_organization_id,_degree);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_job`(IN _person_id INT, IN _organization_name VARCHAR(260), IN _institute VARCHAR(260),
    IN _department VARCHAR(260), IN _position VARCHAR(260), IN _work_email VARCHAR(60), IN _normalized_position VARCHAR(260))
BEGIN
	DECLARE db INT;
    DECLARE _organization_id INT;
    CALL public.create_diaspora_organization(_organization_name, _organization_id);
   	IF _organization_id IS NULL  THEN
        SET db = public.debug_log('Job', 'Job organization name is null!!!');
    ELSE
        INSERT INTO public.job(person_id,organization_id,institute,department,job_title,job_normalaized_title,job_email) 
            VALUES(_person_id,_organization_id,_institute,_department,_position,_normalized_position,_work_email);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_location`(IN _city VARCHAR(60), IN _state VARCHAR(30), IN _zip_code VARCHAR(60), IN _country VARCHAR(45), OUT _Id INT)
BEGIN
	DECLARE db INT;
	IF public.is_null(_city) AND public.is_null(_state) AND public.is_null(_country) THEN
      SET db = public.debug_log('location', 'Everything is null!!!');
      SET _Id = null;
    ELSE
        INSERT INTO public.location(city, state, zip_code, country) VALUES(_city, _state, _zip_code, _country);
        SELECT LAST_INSERT_ID() into _Id ;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_organization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_organization`(IN _organization_name VARCHAR(260), OUT _Id INT)
BEGIN
	DECLARE db INT;
   	IF public.is_null(_organization_name)  THEN
        SET db = public.debug_log('Organization', 'Organization_name is null!!!');
        SET _Id = null;
    ELSE
        INSERT INTO public.organization(organization_name) VALUES(_organization_name);
        SELECT LAST_INSERT_ID() into _Id ;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_person`(IN _first_name VARCHAR(45), IN _last_name VARCHAR(45), IN _primary_email VARCHAR(60), IN _location_id INT,
    IN _linkedin_page VARCHAR(260), IN _web_page VARCHAR(260), IN _discipline_id INT, IN _profile_id INT, IN _chapter_id INT, IN _why_join VARCHAR(260), OUT _Id INT)
BEGIN
	DECLARE db INT;
    DECLARE _full_name VARCHAR(60);
    DECLARE _gender VARCHAR(60);
   	IF public.is_null(_first_name)  THEN
        SET db = public.debug_log('Person', 'First name is null!!!');
        SET _full_name = _last_name;
    ELSE
        SET _full_name = CONCAT(_first_name,' ',_last_name);
    END IF;
    CALL public.get_gender(_first_name, _gender);
    INSERT INTO public.person(first_name,last_name,full_name,primary_email,location_id,gender,linkedin_page,web_page,discipline_id,profile_id,chapter_id,why_join) 
        VALUES(_first_name,_last_name,_full_name,_primary_email,_location_id,_gender,_linkedin_page,_web_page,_discipline_id,_profile_id,_chapter_id,_why_join);
    SELECT LAST_INSERT_ID() into _Id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_profile`(IN _status VARCHAR(60), IN _as_of VARCHAR(30), IN _check_as_of VARCHAR(60), OUT _Id INT)
BEGIN
	DECLARE db INT;
    DECLARE _as_of_date, _check_date DATE;
    DECLARE CONTINUE HANDLER FOR 1411
      SET db = public.debug_log('profile', 'Wrong data format!!!');
	IF public.is_null(_status) THEN
      SET db = public.debug_log('profile', 'Status is null!!!');
      SET _status='Unknown';
    END IF;
    SET _as_of_date = STR_TO_DATE(_as_of,'%m/%d/%Y');
    IF _as_of_date IS NULL THEN
        SET _as_of_date = STR_TO_DATE(_as_of,'%m-%d-%Y');
    END IF;
    SET _check_date = STR_TO_DATE(_check_as_of,'%m/%d/%Y');
    IF _check_date IS NULL THEN
        SET _check_date = STR_TO_DATE(_check_as_of,'%m-%d-%Y');
    END IF;
    INSERT INTO public.issnaf_profile(profile_type, status_asof, last_contacted_on) VALUES(_status, _as_of_date, _check_date);
    SELECT LAST_INSERT_ID() into _Id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_volunteering_link` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_volunteering_link`(IN _Volunteering VARCHAR(260), IN _person_id INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE _vol_interest VARCHAR(60);
    DECLARE _volunteer_interest_id INT;
    DECLARE _found INT DEFAULT 0;
    DECLARE _other INT DEFAULT TRUE;
	DECLARE db INT;
    
    DECLARE cur CURSOR FOR SELECT volunteer_interest_id,volunteer_interest FROM public.volunteer_interest;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

   	IF public.is_null(_Volunteering)  THEN
        SET db = public.debug_log('Volunteering_link', 'No volunteering assign to a person!!!');
    ELSE
      OPEN cur;
      read_loop: LOOP
        FETCH cur INTO _volunteer_interest_id,_vol_interest;
        IF done = 1 THEN 
		    LEAVE read_loop;
	    END IF;
        SET _found=INSTR(_Volunteering, _vol_interest);
        IF _found > 0 THEN
            INSERT INTO public.volunteer_interest_person_link(volunteer_interest_id,person_id) VALUES(_volunteer_interest_id, _person_id);
            SET _other=FALSE;
        END IF;
      END LOOP;
      CLOSE cur;
      IF _other = 1 THEN
        SELECT volunteer_interest_id INTO _volunteer_interest_id FROM public.volunteer_interest WHERE volunteer_interest='Other';
        INSERT INTO public.volunteer_interest_person_link(volunteer_interest_id,person_id) VALUES(_volunteer_interest_id, _person_id);
        UPDATE public.person SET volunteer_interest_other=_Volunteering WHERE person_id=_person_id;
      END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_diaspora_volunteer_interest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `create_diaspora_volunteer_interest`()
BEGIN
    DELETE FROM public.volunteer_interest;
    INSERT INTO public.volunteer_interest(volunteer_interest) VALUES ('Events'), ('Young ISSNAF'), ('Development'), 
    ('Communication'), ('Membership'), ('Admin'), ('Not Interested'), ('Other');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_gender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_gender`(IN _first_name VARCHAR(60), OUT _gender VARCHAR(16))
BEGIN
    SELECT Gender INTO _gender FROM italian_names.names WHERE First_name=_first_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
