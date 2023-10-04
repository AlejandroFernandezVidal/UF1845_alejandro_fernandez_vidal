-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: animals
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `sortida`
--

DROP TABLE IF EXISTS `sortida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sortida` (
  `idanimal` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `dia` date NOT NULL,
  `tipus_idtipus` int(11) NOT NULL,
  PRIMARY KEY (`idanimal`),
  KEY `id_persona_idx` (`idpersona`),
  KEY `id_animal_idx` (`idanimal`),
  KEY `fk_sortida_tipus1_idx` (`tipus_idtipus`),
  CONSTRAINT `fk_sortida_tipus1` FOREIGN KEY (`tipus_idtipus`) REFERENCES `tipus` (`idtipus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_animal_sortida` FOREIGN KEY (`idanimal`) REFERENCES `animal` (`idanimal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_persona_sortida` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sortida`
--

LOCK TABLES `sortida` WRITE;
/*!40000 ALTER TABLE `sortida` DISABLE KEYS */;
INSERT INTO `sortida` VALUES (1,3,'2023-07-22',1),(2,NULL,'2023-07-27',2);
/*!40000 ALTER TABLE `sortida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 19:25:33
