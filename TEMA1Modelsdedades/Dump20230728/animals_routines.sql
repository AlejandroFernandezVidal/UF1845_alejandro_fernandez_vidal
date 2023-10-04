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
-- Dumping routines for database 'animals'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `alta_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `alta_animal`(IN nomAnimal VARCHAR(20),IN nomRaça VARCHAR(45),In dia DATE, IN nomPoblacio VARCHAR(45), IN xip TINYINT(4))
BEGIN
INSERT INTO animals.animal(nom,xip,dia_entrada,poblacion_idpoblacion,raça_idraça)
VALUES (nomAnimal,xip,dia,(SELECT idpoblacion FROM poblacion WHERE nom=nomPoblacio),
(SELECT idraça FROM raça WHERE nom=nomRaça));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `alta_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `alta_persona`(IN nomPersona VARCHAR(20),IN cognomsPersona VARCHAR(50),IN dniPersona VARCHAR(10), IN emailPersona VARCHAR(50),IN nomPoblacio VARCHAR(45))
BEGIN
	INSERT INTO animals.persona(nom,cognoms,dni,email,poblacion_idpoblacion)
    VALUES (nomPersona,cognomsPersona,dniPersona,emailPersona,(SELECT idpoblacion FROM poblacion WHERE nom=nomPoblacio));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `listado_entradas`
--

DROP TABLE IF EXISTS `listado_entradas`;
/*!50001 DROP VIEW IF EXISTS `listado_entradas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listado_entradas` AS SELECT
 1 AS `dia_entrada`,
  1 AS `nom`,
  1 AS `poblacion`,
  1 AS `especie` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `listado_salidas`
--

DROP TABLE IF EXISTS `listado_salidas`;
/*!50001 DROP VIEW IF EXISTS `listado_salidas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listado_salidas` AS SELECT
 1 AS `nom`,
  1 AS `tipo`,
  1 AS `dia`,
  1 AS `persona` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `listado_animales`
--

DROP TABLE IF EXISTS `listado_animales`;
/*!50001 DROP VIEW IF EXISTS `listado_animales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listado_animales` AS SELECT
 1 AS `nom`,
  1 AS `xip`,
  1 AS `dia_entrada`,
  1 AS `poblacion`,
  1 AS `raça`,
  1 AS `especie` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `listado_personas`
--

DROP TABLE IF EXISTS `listado_personas`;
/*!50001 DROP VIEW IF EXISTS `listado_personas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listado_personas` AS SELECT
 1 AS `nom`,
  1 AS `cognoms`,
  1 AS `dni`,
  1 AS `email`,
  1 AS `poblacion` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `listado_entradas`
--

/*!50001 DROP VIEW IF EXISTS `listado_entradas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_entradas` AS select `animal`.`dia_entrada` AS `dia_entrada`,`animal`.`nom` AS `nom`,`poblacion`.`nom` AS `poblacion`,`especie`.`nom` AS `especie` from (((`animal` join `poblacion`) join `raça`) join `especie`) where `animal`.`poblacion_idpoblacion` = `poblacion`.`idpoblacion` and `animal`.`raça_idraça` = `raça`.`idraça` and `raça`.`especie_idespecie` = `especie`.`idespecie` order by `animal`.`dia_entrada` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listado_salidas`
--

/*!50001 DROP VIEW IF EXISTS `listado_salidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_salidas` AS select `animal`.`nom` AS `nom`,`tipus`.`definicio` AS `tipo`,`sortida`.`dia` AS `dia`,`persona`.`nom` AS `persona` from (((`sortida` join `persona`) join `animal`) join `tipus`) where `sortida`.`idanimal` = `animal`.`idanimal` and `sortida`.`tipus_idtipus` = `tipus`.`idtipus` and `sortida`.`idpersona` = `persona`.`idpersona` union select `animal`.`nom` AS `nom`,`tipus`.`definicio` AS `definicio`,`sortida`.`dia` AS `dia`,NULL AS `nompersona` from ((`sortida` join `animal`) join `tipus`) where `sortida`.`idanimal` = `animal`.`idanimal` and `sortida`.`tipus_idtipus` = `tipus`.`idtipus` and `sortida`.`tipus_idtipus` = '2' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listado_animales`
--

/*!50001 DROP VIEW IF EXISTS `listado_animales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_animales` AS select `animal`.`nom` AS `nom`,`animal`.`xip` AS `xip`,`animal`.`dia_entrada` AS `dia_entrada`,`poblacion`.`nom` AS `poblacion`,`raça`.`nom` AS `raça`,`especie`.`nom` AS `especie` from (((`animal` join `poblacion`) join `raça`) join `especie`) where `animal`.`poblacion_idpoblacion` = `poblacion`.`idpoblacion` and `animal`.`raça_idraça` = `raça`.`idraça` and `raça`.`especie_idespecie` = `especie`.`idespecie` order by `animal`.`idanimal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listado_personas`
--

/*!50001 DROP VIEW IF EXISTS `listado_personas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_personas` AS select `persona`.`nom` AS `nom`,`persona`.`cognoms` AS `cognoms`,`persona`.`dni` AS `dni`,`persona`.`email` AS `email`,`poblacion`.`nom` AS `poblacion` from (`persona` join `poblacion`) where `persona`.`poblacion_idpoblacion` = `poblacion`.`idpoblacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'animals'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 19:25:36
