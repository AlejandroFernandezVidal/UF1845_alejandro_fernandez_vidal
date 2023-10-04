CREATE DATABASE  IF NOT EXISTS `notes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `notes`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: notes
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `persones`
--

DROP TABLE IF EXISTS `persones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persones` (
  `dni` varchar(10) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `cognoms` varchar(45) NOT NULL,
  `data_naixement` date NOT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persones`
--

LOCK TABLES `persones` WRITE;
/*!40000 ALTER TABLE `persones` DISABLE KEYS */;
INSERT INTO `persones` VALUES ('01234567J','Llucia','García','1993-12-25','F'),('01234567N','Adrià','Ruiz','1990-08-31','M'),('01234567T','Hugo','García','1989-02-18','M'),('01234567X','Joana','Soler','2004-09-09','F'),('12345670E','Marina','Fernández','1981-12-04','F'),('12345678A','Joan','Martínez','1985-03-15','M'),('12345678K','Marta','López','1999-01-30','F'),('12345678O','Alexandra','Fernández','1996-07-18','F'),('12345678U','Clara','Ruiz Pérez','1991-11-07','F'),('12345678Y','Joan Pau','Ruíz','2000-06-22','M'),('23456780F','Jordi','Ruiz','1977-05-23','M'),('23456789B','Anna','López','1990-07-22','F'),('23456789L','Àlex','Pérez','1979-04-08','M'),('23456789P','Antonio','Pujol','2001-06-10','M'),('23456789V','Joan','Pujol','1984-01-16','M'),('23456789Z','Marta','Martínez','1975-11-03','F'),('3256322A','Mateu','Tres','1975-07-08','M'),('34567890A','Nil','López','1985-07-25','M'),('34567890C','Pere','Sánchez','1980-11-05','M'),('34567890G','Marcos','Pujol','1998-02-02','M'),('34567890M','Mireia','Sànchez','1986-05-17','F'),('34567890Q','Inés','Soler','1980-04-07','F'),('34567890W','Carles','López','1976-12-09','M'),('45678901B','Laia','Soler','1999-08-19','F'),('45678901D','Carla','Ruiz','1995-09-12','F'),('45678901H','Anna','Gómez','2007-04-20','F'),('45678901N','Janet','Martínez','2001-09-21','F'),('45678901R','Isaac','Martínez','1989-05-27','M'),('45678901X','Júlia','Soler','2003-03-24','F'),('56789012C','Bruno','Gómez','1983-02-07','M'),('56789012E','David','Martí','1977-02-28','M'),('56789012I','Laura','Soler','1979-07-28','F'),('56789012O','Pau','Fernàndez','1982-03-01','M'),('56789012S','Carolina','Gómez','1976-02-13','F'),('56789012Y','Abril','Gómez','2006-07-02','F'),('67890123D','Raquel','Pérez','1981-04-29','F'),('67890123F','Clàudia','Soler','1988-06-19','F'),('67890123J','Oriol','Sànchez','1988-03-06','M'),('67890123P','Antoni','Soler','1978-08-11','M'),('67890123T','Judit','López','1984-10-28','F'),('67890123Z','Max','Martínez','1974-04-14','M'),('78901230A','Lea','Pérez','1996-06-26','F'),('78901234E','Samuel','Martí','1982-05-01','M'),('78901234G','Albert','Pujol','2002-04-03','M'),('78901234K','Lola','Martínez','1993-11-15','F'),('78901234Q','Emma','Sánchez','1992-07-10','F'),('78901234U','Natàlia','Sànchez','1992-12-16','F'),('89012340B','Lucas','López','1997-08-02','M'),('89012345F','Clàudia','Fernández','2005-12-30','F'),('89012345H','Laia','Gómez','1975-10-07','F'),('89012345L','Aleix','López','2002-10-03','M'),('89012345R','Enric','Gómez','2005-06-06','M'),('89012345V','Pol','Fernández','2003-03-02','M'),('90123450C','Irene','Sànchez','1987-09-13','F'),('90123456G','Luis','Sánchez','2006-10-14','M'),('90123456I','Marc','Fernández','2000-08-14','M'),('90123456M','Aina','Pérez','1983-09-09','F'),('90123456S','Olivia','Martí','1994-10-29','F'),('90123456W','Ariadna','Pujol','1997-01-05','F');
/*!40000 ALTER TABLE `persones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-24 10:23:41
