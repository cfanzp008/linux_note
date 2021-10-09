-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: gamedb
-- ------------------------------------------------------
-- Server version	5.6.45

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
-- Dumping routines for database 'gamedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `login`(in a_platform int,
   in a_account varchar(64), in a_password varchar(32))
begin
   select * from gamedb.t_account where account=a_account AND platform=a_platform  AND `password`=a_password AND nullity = '0'  AND android = '0';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `register`(IN `a_uid` int,IN `a_account` varchar(64),IN `a_nickname` varchar(64),IN `a_password` varchar(32),IN `a_openId` varchar(255),IN `a_platform` int,IN `a_icon` varchar(200),IN `a_sex` int,IN `a_device_type` varchar(60),IN `a_device_id` varchar(100),IN `a_channel_id` int,IN `a_channel_token` varchar(200),IN `a_register_ip` varchar(16),IN `a_wx_openid` varchar(200), IN `a_client_version` varchar(20))
BEGIN
  DECLARE t_user_count INT;
  DECLARE t_error_code INT;
  DECLARE t_error_msg VARCHAR(60);
  SET t_user_count=0;
  SET t_error_code=0;
  SET t_error_msg='';
  #SET NAMES 'utf8';
  SELECT COUNT(*) INTO t_user_count from t_account where account=a_account or userid = a_uid;
  IF t_user_count > 0 THEN
    SET t_error_code=1;
    #SET a_error_msg='account exsits';
    SET t_error_msg='账号已存在';
    SELECT t_error_code as error_code,t_error_msg as error_msg;
  ELSE
    SET t_error_code=0;
    SET t_error_msg='';
    INSERT INTO t_account(userid,account,nickname,`password`,openId,platform,icon,sex,device_type,device_id,channel_id,channel_token,register_ip,wx_openid,client_version)
    VALUES(a_uid,a_account,a_nickname,a_password,a_openId,a_platform,a_icon,a_sex,a_device_type,a_device_id,a_channel_id,a_channel_token,a_register_ip,a_wx_openid,a_client_version);
    SELECT t_error_code as error_code,t_error_msg as error_msg;
  END IF;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_game_rules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `select_game_rules`(in a_gameId int, in a_ruleId int)
BEGIN
	SET @tb='';
  select gameRulesTable INTO @tb from t_gametype where gameId=a_gameId;

  SET @sql1 = CONCAT('SELECT * FROM ', @tb);
  SET @sql2 = CONCAT(@sql1, ' where ruleId= ',a_ruleId);
  PREPARE st FROM @sql2;
  EXECUTE st;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `write_record_game_score` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `write_record_game_score`(IN `a_uid` int,IN `a_change_score` bigint,IN `a_reason` int,IN `a_record_key`  varchar(60))
BEGIN
  DECLARE t_before_score BIGINT;
  DECLARE t_after_score BIGINT;
  SET t_before_score = 10;
  SET t_after_score = t_before_score + a_change_score;
  SELECT score INTO t_before_score FROM t_account WHERE userid = a_uid;

  SET t_after_score = t_before_score + a_change_score;
  UPDATE t_account SET score=t_after_score WHERE userid = a_uid;

  INSERT INTO t_record_game_score(userid,score,before_score,after_score,change_type,record_key)
  VALUES(a_uid,a_change_score,t_before_score,t_after_score,a_reason,a_record_key);
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

-- Dump completed on 2019-08-28 17:56:44
