-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: ballantyne13432788
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidate_details`
--

DROP TABLE IF EXISTS `candidate_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_details` (
  `candidate_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_details`
--

LOCK TABLES `candidate_details` WRITE;
/*!40000 ALTER TABLE `candidate_details` DISABLE KEYS */;
INSERT INTO `candidate_details` VALUES (1,'Tom','Smith','Dublin','0465764527'),(2,'Paloma','Mcgowan','Drachten','0854091286'),(3,'Rooney','Mcintosh','Metairie','0857074887'),(4,'Mariam','Mckenzie','Bielefeld','0858783306'),(5,'Fallon','Pickett','Thame','0853480870'),(6,'Oscar','Hickman','Ophoven','0854769780'),(7,'Uta','Bullock','Kurgan','0857609905'),(8,'Georgia','Aguilar','Sambreville','0858069653'),(9,'Moana','Barrera','Lowestoft','0857609905'),(10,'Owen','Oneill','Mangalore','0859719223'),(11,'Nick','Cannon','Trim','0854681245'),(12,'John','Meyer','Dubai','856485234');
/*!40000 ALTER TABLE `candidate_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidate_id` int NOT NULL,
  `skills` varchar(45) NOT NULL,
  PRIMARY KEY (`candidate_id`,`skills`),
  KEY `candidate_id_idx` (`candidate_id`),
  CONSTRAINT `candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_details` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1,'Communication'),(1,'IT'),(2,'Management'),(2,'Problem-solving'),(3,'Interpersonal'),(3,'IT'),(4,'Communication'),(4,'Flexibility'),(4,'Initiative'),(4,'Teamwork'),(5,'Communication'),(5,'Creativity'),(5,'Interpersonal'),(5,'IT'),(6,'Teamwork'),(7,'Initiative'),(7,'Interpersonal'),(7,'IT'),(7,'Problem-solving'),(8,'Leadership'),(8,'Problem-solving'),(9,'Initiative'),(9,'Interpersonal'),(9,'Teamwork'),(10,'Flexibility'),(10,'Interpersonal'),(10,'IT'),(10,'Leadership'),(11,'Initiative'),(11,'Problem-solving'),(11,'Teamwork'),(12,'Interpersonal'),(12,'IT');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_details`
--

DROP TABLE IF EXISTS `hospital_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_details` (
  `hospital_identifier` int NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`hospital_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_details`
--

LOCK TABLES `hospital_details` WRITE;
/*!40000 ALTER TABLE `hospital_details` DISABLE KEYS */;
INSERT INTO `hospital_details` VALUES (100,'Grace Community Hospital','Oldcastle','0857847811'),(101,'Petunia Medical Clinic','Kilcoole','0856736650'),(102,'Oak Crest Hospital','Dublin','0854582491'),(103,'Silver Hill Clinic','Buncrana','0853537882'),(104,'Progress General Hospital','Carlow','0852029877'),(105,'Spring Hill Clinic','Midleton','0853232040'),(106,'Trinity Medical Center','Athlone','0853199450'),(107,'Citrus Community Hospital','Templemore','0856161335'),(108,'Rainbow Clinic','Duleek','0853714174'),(109,'Bayview Hospital Center','Skibbereen','0857940211'),(110,'Big River Community Hospital','Dungarvan','0852464461'),(111,'Peak View Hospital Center','Donegal','0856306380'),(112,'Rose Valley Hospital Center','Claremorris','0859887329'),(113,'Pinevale General Hospital','Killorglin','0852235548');
/*!40000 ALTER TABLE `hospital_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_details` (
  `interview_id` int NOT NULL,
  `position_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `hospital_id` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `application_status` varchar(45) NOT NULL,
  PRIMARY KEY (`interview_id`),
  KEY `candidate_id_idx` (`candidate_id`),
  KEY `candidate_id_idxx` (`candidate_id`),
  KEY `position_id_idx` (`position_id`),
  KEY `hospital_id_idx` (`hospital_id`),
  CONSTRAINT `candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_details` (`candidate_id`),
  CONSTRAINT `hospital` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_details` (`hospital_identifier`),
  CONSTRAINT `position` FOREIGN KEY (`position_id`) REFERENCES `position_details` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_details`
--

LOCK TABLES `interview_details` WRITE;
/*!40000 ALTER TABLE `interview_details` DISABLE KEYS */;
INSERT INTO `interview_details` VALUES (50,203,4,106,'10/03/2017','Denied'),(51,209,7,109,'12/02/2019','Pending Approval'),(52,212,10,100,'06/05/2012','Accepted'),(53,213,5,100,'02/02/2013','Denied'),(54,213,8,100,'16/02/2013','Accepted'),(55,207,2,113,'05/01/2020','Denied'),(56,208,1,113,'05/01/2013','Denied'),(57,204,4,103,'05/04/2018','Denied'),(58,205,6,103,'27/08/2017','Denied'),(59,213,1,100,'14/05/2015','Accepted'),(60,208,4,113,'21/07/2016','Accepted'),(61,201,9,106,'26/09/2019','Denied');
/*!40000 ALTER TABLE `interview_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_details`
--

DROP TABLE IF EXISTS `position_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_details` (
  `position_id` int NOT NULL,
  `type_of_position` varchar(45) NOT NULL,
  `hospital_advertising_pos` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_details`
--

LOCK TABLES `position_details` WRITE;
/*!40000 ALTER TABLE `position_details` DISABLE KEYS */;
INSERT INTO `position_details` VALUES (200,'Pharmacist','Trinity Medical Center'),(201,'Doctor','Trinity Medical Center'),(202,'Occupational Therapist','Trinity Medical Center'),(203,'Nurse','Trinity Medical Center'),(204,'Physician assistant','Silver Hill Clinic'),(205,'Surgeon','Silver Hill Clinic'),(206,'Anesthesiologist','Silver Hill Clinic'),(207,'Human Resources Manager','Pinevale General Hospital'),(208,'Radiologic technician','Pinevale General Hospital'),(209,'Dietician','Bayview Hospital Center'),(210,'Surgeon','Bayview Hospital Center'),(211,'Doctor','Bayview Hospital Center'),(212,'Nurse','Grace Community Hospital'),(213,'Anesthesiologist','Grace Community Hospital'),(214,'Pharmacist','Grace Community Hospital'),(215,'Human Resources Manager','Grace Community Hospital');
/*!40000 ALTER TABLE `position_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills_required`
--

DROP TABLE IF EXISTS `position_skills_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills_required` (
  `position_id` int NOT NULL,
  `skills` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`,`skills`),
  CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `position_details` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills_required`
--

LOCK TABLES `position_skills_required` WRITE;
/*!40000 ALTER TABLE `position_skills_required` DISABLE KEYS */;
INSERT INTO `position_skills_required` VALUES (200,'Communication'),(200,'IT'),(201,'Communication'),(201,'Interpersonal'),(201,'Problem-solving'),(202,'Initiative'),(202,'Leadership'),(203,'Creativity'),(203,'Nursing'),(204,'Flexibility'),(204,'Problem-solving'),(205,'Communication'),(205,'Initiative'),(205,'Leadership'),(206,'Flexibility'),(206,'Initiative'),(207,'Communication'),(207,'Creativity'),(207,'Leadership'),(208,'Communication'),(209,'Flexibility'),(209,'Initiative'),(210,'Communication'),(210,'Creativity'),(210,'Initiative'),(211,'Interpersonal'),(212,'Nursing'),(212,'Problem-solving'),(213,'Communication'),(213,'Flexibility'),(214,'Creativity'),(215,'Communication'),(215,'Flexibility');
/*!40000 ALTER TABLE `position_skills_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ballantyne13432788'
--

--
-- Dumping routines for database 'ballantyne13432788'
--
/*!50003 DROP PROCEDURE IF EXISTS `1.Hospitals_with_Given_HospitalID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `1.Hospitals_with_Given_HospitalID`(IN HospitalID int)
BEGIN
	Select * FROM hospital_details WHERE hospital_identifier = HospitalID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `10.CandID_Interviewed_Only_On_Specific_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `10.CandID_Interviewed_Only_On_Specific_Date`(in GivenDate varchar(45))
BEGIN
	SELECT candidate_id FROM interview_details WHERE date = GivenDate AND candidate_id NOT IN (SELECT DISTINCT candidate_id FROM interview_details WHERE date != GivenDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11.Candidates_interviewed_twice_or_more` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `11.Candidates_interviewed_twice_or_more`()
BEGIN
	SELECT d.first_name, d.surname, d.candidate_id FROM candidate_details d
	INNER JOIN interview_details 
    ON interview_details.candidate_id = d.candidate_id GROUP BY candidate_id
	HAVING COUNT(*) >= 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `2.Hospitals_with_Given_Name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `2.Hospitals_with_Given_Name`(in HospitalName varchar(45))
BEGIN
	Select * FROM hospital_details WHERE hospital_name = HospitalName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3.Candidates_with_Given_Surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3.Candidates_with_Given_Surname`(in LastName varchar(45))
BEGIN
	SELECT first_name from candidate_details where LastName = Surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4.Candidates_With_One_Skill_Required` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4.Candidates_With_One_Skill_Required`(in PositionID int)
BEGIN
		SELECT DISTINCT d.candidate_id, d.first_name, d.surname
		FROM candidate_details d
		INNER JOIN candidate_skills USING(candidate_id)
		INNER JOIN position_skills_required USING(skills)
		WHERE position_id = PositionID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `5.Number_of_Candidates_Accepted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `5.Number_of_Candidates_Accepted`()
BEGIN
	SELECT COUNT(candidate_id) AS Accepted_Applicants FROM interview_details WHERE application_status = 'Accepted';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `6.Positions_Requiring_Given_Skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `6.Positions_Requiring_Given_Skill`(in GivenSkill varchar(45))
BEGIN
    SELECT DISTINCT d.type_of_position FROM position_details d INNER JOIN position_skills_required USING(position_id)
    WHERE skills = GivenSkill;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `7.Number_Requiring_Nursing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `7.Number_Requiring_Nursing`()
BEGIN
	SELECT COUNT(DISTINCT position_id) AS "Number of Positions Requiring Nursing" FROM position_skills_required WHERE skills = 'Nursing';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `8.Positions_Sorted_By_Hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `8.Positions_Sorted_By_Hospital`()
BEGIN
	SELECT type_of_position FROM position_details order by hospital_advertising_pos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `9.Interviews_On_GivenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `9.Interviews_On_GivenDate`(in GivenDate varchar(45))
BEGIN
SELECT * FROM interview_details WHERE date = GivenDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidate_details_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidate_details_addrow`(in CandidateId int, in FirstName varchar(30), in LastName varchar(30), in Address varchar(50), in TelNum int)
BEGIN
	INSERT INTO `ballantyne13432788`.`candidate_details` (`candidate_id`, `first_name`, `surname`, `address`, `telephone_number`) VALUES (CandidateId, FirstName, LastName, Address, TelNum);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidate_skills_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidate_skills_addrow`(in candidate_id int, in skills varchar (45))
BEGIN
	INSERT INTO `ballantyne13432788`.`candidate_skills` (`candidate_id`, `skills`) VALUES (candidate_id, Skills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hospital_details_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hospital_details_addrow`(in HospitalIdentifier int, in HospitalName varchar(45), in Address varchar(45), in TelephoneNumber int)
BEGIN
	INSERT INTO `ballantyne13432788`.`hospital_details` (`hospital_identifier`, `hospital_name`, `address`, `telephone_number`) VALUES (HospitalIdentifier, HospitalName, Address, TelephoneNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interview_details_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interview_details_addrow`(in InterviewID int, in PositionID int, in CandidateID int, in HospitalID int, in InterviewDate varchar (45), in ApplicationStatus varchar(45))
BEGIN
	INSERT INTO `ballantyne13432788`.`interview_details` (`interview_id`, `position_id`, `candidate_id`, `hospital_id`, `date`, `application_status`) VALUES (InterviewID, PositionID, CandidateID, HospitalID, InterviewDate, ApplicationStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `position_details_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `position_details_addrow`(in PositionID int, in PositionType varchar(45), in HospitalAdvertisingPosition varchar(45))
BEGIN
	INSERT INTO `ballantyne13432788`.`position_details` (`position_id`, `type_of_position`, `hospital_advertising_pos`) VALUES (PositionID, PositionType, HospitalAdvertisingPosition);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `position_skills_addrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `position_skills_addrow`(in PositionID int, in Skills varchar (45))
BEGIN
	INSERT INTO `ballantyne13432788`.`position_skills_required` (`position_id`, `required_skills`) VALUES (PositionID, Skills);
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

-- Dump completed on 2020-11-23 23:14:50
