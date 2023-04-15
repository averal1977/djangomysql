CREATE DATABASE  IF NOT EXISTS `reservacancha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reservacancha`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: reservacancha
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add horario',7,'add_horario'),(26,'Can change horario',7,'change_horario'),(27,'Can delete horario',7,'delete_horario'),(28,'Can view horario',7,'view_horario'),(29,'Can add persona',8,'add_persona'),(30,'Can change persona',8,'change_persona'),(31,'Can delete persona',8,'delete_persona'),(32,'Can view persona',8,'view_persona'),(33,'Can add pago',9,'add_pago'),(34,'Can change pago',9,'change_pago'),(35,'Can delete pago',9,'delete_pago'),(36,'Can view pago',9,'view_pago'),(37,'Can add reserva',10,'add_reserva'),(38,'Can change reserva',10,'change_reserva'),(39,'Can delete reserva',10,'delete_reserva'),(40,'Can view reserva',10,'view_reserva'),(41,'Can add cancha',11,'add_cancha'),(42,'Can change cancha',11,'change_cancha'),(43,'Can delete cancha',11,'delete_cancha'),(44,'Can view cancha',11,'view_cancha');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$S6W9k2ZVHxDqK4jfPErDPx$qSUFxyIxXgcqjsjxAbQXl4uGhmOaQDPBgXeqkR2LuI0=','2023-04-15 01:23:08.108514',1,'admin','','','vera_lucio@hotmail.com',1,1,'2023-04-06 02:59:27.700920');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-04-06 03:23:54.277617','1','Cancha object (1)',1,'[{\"added\": {}}]',11,1),(2,'2023-04-06 03:24:29.772025','2','Cancha object (2)',1,'[{\"added\": {}}]',11,1),(3,'2023-04-06 03:25:35.314040','3','Cancha object (3)',1,'[{\"added\": {}}]',11,1),(4,'2023-04-06 03:25:51.222570','2','Cancha object (2)',2,'[{\"changed\": {\"fields\": [\"Costo por hora\"]}}]',11,1),(5,'2023-04-06 03:26:38.259713','1','Cancha object (1)',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',11,1),(6,'2023-04-06 03:27:33.312630','1','Persona object (1)',1,'[{\"added\": {}}]',8,1),(7,'2023-04-06 03:29:53.456861','2','Persona object (2)',1,'[{\"added\": {}}]',8,1),(8,'2023-04-06 03:30:57.469976','3','Persona object (3)',1,'[{\"added\": {}}]',8,1),(9,'2023-04-06 03:31:55.504494','4','Persona object (4)',1,'[{\"added\": {}}]',8,1),(10,'2023-04-06 03:33:21.834961','5','Persona object (5)',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'Reserva','cancha'),(7,'Reserva','horario'),(9,'Reserva','pago'),(8,'Reserva','persona'),(10,'Reserva','reserva'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-06 02:56:26.956164'),(2,'auth','0001_initial','2023-04-06 02:56:27.247651'),(3,'admin','0001_initial','2023-04-06 02:56:27.325292'),(4,'admin','0002_logentry_remove_auto_add','2023-04-06 02:56:27.332123'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-06 02:56:27.339934'),(6,'contenttypes','0002_remove_content_type_name','2023-04-06 02:56:27.393615'),(7,'auth','0002_alter_permission_name_max_length','2023-04-06 02:56:27.430263'),(8,'auth','0003_alter_user_email_max_length','2023-04-06 02:56:27.454663'),(9,'auth','0004_alter_user_username_opts','2023-04-06 02:56:27.466375'),(10,'auth','0005_alter_user_last_login_null','2023-04-06 02:56:27.512799'),(11,'auth','0006_require_contenttypes_0002','2023-04-06 02:56:27.517679'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-06 02:56:27.528415'),(13,'auth','0008_alter_user_username_max_length','2023-04-06 02:56:27.574287'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-06 02:56:27.612891'),(15,'auth','0010_alter_group_name_max_length','2023-04-06 02:56:27.632411'),(16,'auth','0011_update_proxy_permissions','2023-04-06 02:56:27.642175'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-06 02:56:27.684139'),(18,'sessions','0001_initial','2023-04-06 02:56:27.706150'),(19,'Reserva','0001_initial','2023-04-06 03:10:35.852282');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6jbo9o9imrbw3dnqpov2cchke3pp6rs1','.eJxVjDEOwjAMRe-SGUVtk8g2IztniOw4pQWUSE07Ie4OlTrA-t97_2Uib-sUt5aXOKs5m96cfjfh9MhlB3rncqs21bIus9hdsQdt9lo1Py-H-3cwcZu-NRKHDgaXiEZiChKEYQAQJ-BHcIJee_WoPmEXcgYkDOTUZxyT9oN5fwDSnzeh:1pkFsf:9y_yM4vWrRFURc8wF4pkuYHN9PkvPAwkmCaBvlfMseE','2023-04-20 03:01:45.827336'),('z3pg40pwd5zt077lnqftknnofdcq9pr2','.eJxVjDEOwjAMRe-SGUVtk8g2IztniOw4pQWUSE07Ie4OlTrA-t97_2Uib-sUt5aXOKs5m96cfjfh9MhlB3rncqs21bIus9hdsQdt9lo1Py-H-3cwcZu-NRKHDgaXiEZiChKEYQAQJ-BHcIJee_WoPmEXcgYkDOTUZxyT9oN5fwDSnzeh:1pnUdA:xPq7H-2tQ43S-K-9HpZ1jXE5QUnpIRT74HWJVGB6wCE','2023-04-29 01:23:08.110514');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_cancha`
--

DROP TABLE IF EXISTS `reserva_cancha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_cancha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `costo_por_hora` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_cancha`
--

LOCK TABLES `reserva_cancha` WRITE;
/*!40000 ALTER TABLE `reserva_cancha` DISABLE KEYS */;
INSERT INTO `reserva_cancha` VALUES (1,'CANCHA 1','CANCHA DE TIERRA BATIDA O ARCILLA',50),(2,'CANCHA 2','CANCHA DE CESPED',55),(3,'CANCHA 3','CANCHA DE PISTA DURA',45);
/*!40000 ALTER TABLE `reserva_cancha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_horario`
--

DROP TABLE IF EXISTS `reserva_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_horario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hora_inicio` datetime(6) NOT NULL,
  `hora_fin` datetime(6) NOT NULL,
  `cancha_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Reserva_horario_cancha_id_55c2f8ed_fk_Reserva_cancha_id` (`cancha_id`),
  CONSTRAINT `Reserva_horario_cancha_id_55c2f8ed_fk_Reserva_cancha_id` FOREIGN KEY (`cancha_id`) REFERENCES `reserva_cancha` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_horario`
--

LOCK TABLES `reserva_horario` WRITE;
/*!40000 ALTER TABLE `reserva_horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_pago`
--

DROP TABLE IF EXISTS `reserva_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_pago` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL,
  `total` double NOT NULL,
  `reserva_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Reserva_pago_reserva_id_36b647d7_fk_Reserva_reserva_id` (`reserva_id`),
  CONSTRAINT `Reserva_pago_reserva_id_36b647d7_fk_Reserva_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reserva_reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_pago`
--

LOCK TABLES `reserva_pago` WRITE;
/*!40000 ALTER TABLE `reserva_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_persona`
--

DROP TABLE IF EXISTS `reserva_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_persona` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_persona`
--

LOCK TABLES `reserva_persona` WRITE;
/*!40000 ALTER TABLE `reserva_persona` DISABLE KEYS */;
INSERT INTO `reserva_persona` VALUES (1,'ALEX','VERA','0915932644','vera_lucio@hotmail.com','0960541132'),(2,'ALEXIS','VERA','0950590380','alexisjvm@gmail.com','0969378307'),(3,'ERICK','VERA','0932355472','eaveram@gmail.com','0994378016'),(4,'THIAGO','VERA','0960833317','thiagovm@gmail.com','0945732514'),(5,'VIVIANA','MORANTE','0919516039','jvmorantem@gmail.com','0980524308');
/*!40000 ALTER TABLE `reserva_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_reserva`
--

DROP TABLE IF EXISTS `reserva_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_reserva` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL,
  `esta_anulada` tinyint(1) NOT NULL,
  `horario_id` bigint NOT NULL,
  `persona_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Reserva_reserva_horario_id_c93daae2_fk_Reserva_horario_id` (`horario_id`),
  KEY `Reserva_reserva_persona_id_188c4509_fk_Reserva_persona_id` (`persona_id`),
  CONSTRAINT `Reserva_reserva_horario_id_c93daae2_fk_Reserva_horario_id` FOREIGN KEY (`horario_id`) REFERENCES `reserva_horario` (`id`),
  CONSTRAINT `Reserva_reserva_persona_id_188c4509_fk_Reserva_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `reserva_persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_reserva`
--

LOCK TABLES `reserva_reserva` WRITE;
/*!40000 ALTER TABLE `reserva_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reservacancha'
--

--
-- Dumping routines for database 'reservacancha'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 21:55:14
