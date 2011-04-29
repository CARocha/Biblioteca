-- MySQL dump 10.13  Distrib 5.1.55, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: biblio
-- ------------------------------------------------------
-- Server version	5.1.55

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Biblioteca');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,28),(2,1,29),(3,1,30),(4,1,31),(5,1,32),(6,1,33),(7,1,34),(8,1,35),(9,1,36),(10,1,37),(11,1,38),(12,1,39),(13,1,40),(14,1,41),(15,1,42),(16,1,43),(17,1,44),(18,1,45),(19,1,46),(20,1,47),(21,1,48),(22,1,49),(23,1,50),(24,1,51),(25,1,52),(26,1,53),(27,1,54);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add departamento',10,'add_departamento'),(29,'Can change departamento',10,'change_departamento'),(30,'Can delete departamento',10,'delete_departamento'),(31,'Can add municipio',11,'add_municipio'),(32,'Can change municipio',11,'change_municipio'),(33,'Can delete municipio',11,'delete_municipio'),(34,'Can add comunidad',12,'add_comunidad'),(35,'Can change comunidad',12,'change_comunidad'),(36,'Can delete comunidad',12,'delete_comunidad'),(37,'Can add tematica',13,'add_tematica'),(38,'Can change tematica',13,'change_tematica'),(39,'Can delete tematica',13,'delete_tematica'),(40,'Can add editorial',14,'add_editorial'),(41,'Can change editorial',14,'change_editorial'),(42,'Can delete editorial',14,'delete_editorial'),(43,'Can add tipo documento',15,'add_tipodocumento'),(44,'Can change tipo documento',15,'change_tipodocumento'),(45,'Can delete tipo documento',15,'delete_tipodocumento'),(46,'Can add Organización',16,'add_organizacion'),(47,'Can change Organización',16,'change_organizacion'),(48,'Can delete Organización',16,'delete_organizacion'),(49,'Can add libro',17,'add_libro'),(50,'Can change libro',17,'change_libro'),(51,'Can delete libro',17,'delete_libro'),(52,'Can add archivos',18,'add_archivos'),(53,'Can change archivos',18,'change_archivos'),(54,'Can delete archivos',18,'delete_archivos'),(55,'Can add registration profile',19,'add_registrationprofile'),(56,'Can change registration profile',19,'change_registrationprofile'),(57,'Can delete registration profile',19,'delete_registrationprofile'),(58,'Can add disponibilidad',20,'add_disponibilidad'),(59,'Can change disponibilidad',20,'change_disponibilidad'),(60,'Can delete disponibilidad',20,'delete_disponibilidad'),(61,'Can add tag',21,'add_tag'),(62,'Can change tag',21,'change_tag'),(63,'Can delete tag',21,'delete_tag'),(64,'Can add tagged item',22,'add_taggeditem'),(65,'Can change tagged item',22,'change_taggeditem'),(66,'Can delete tagged item',22,'delete_taggeditem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'cidoc','','','carlos@simas.org.ni','sha1$4475a$c30ef00250e1d261e0170c2f8efbe491350865fc',1,1,1,'2011-04-28 22:51:58','2011-03-15 22:03:25'),(9,'byroncorrales','','','byroncorrales@gmail.com','sha1$117b5$50feddfaa47b2404ed52ac6bbc93d34dadb40d79',1,1,0,'2011-03-17 18:02:00','2011-03-17 18:00:41'),(8,'crocha','','','crocha09.09@gmail.com','sha1$528f7$3b30436c89d2742788e963e660dec06a6d58f170',1,1,0,'2011-03-16 10:37:31','2011-03-16 10:23:51'),(10,'simas','','','carlos@simas.org.ni','sha1$126ff$016d0c4b9d178b2fe4b811d404a69efac382f311',1,1,0,'2011-03-24 16:40:57','2011-03-22 10:26:30'),(11,'UNAG_Nacional','','','cedoc@unag.org.ni','sha1$91b00$3a53988e703922fc2a9ed4fa151b8fc7d4fd9258',1,1,0,'2011-03-24 09:58:01','2011-03-22 11:47:56');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (8,9,1),(7,8,1),(9,10,1),(10,11,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-03-15 22:18:15',1,2,'1','Biblioteca',1,''),(2,'2011-03-16 10:18:18',1,7,'1','simas.org.ni',2,'Modificado/a domain y name.'),(3,'2011-03-16 10:18:39',1,19,'5','Registration information for cidoc1',3,''),(4,'2011-03-16 10:18:39',1,19,'4','Registration information for prueba',3,''),(5,'2011-03-16 10:18:39',1,19,'3','Registration information for eos87',3,''),(6,'2011-03-16 10:18:39',1,19,'2','Registration information for juan',3,''),(7,'2011-03-16 10:18:39',1,19,'1','Registration information for pepe',3,''),(8,'2011-03-16 10:19:14',1,3,'6','cidoc1',3,''),(9,'2011-03-16 10:19:14',1,3,'4','eos87',3,''),(10,'2011-03-16 10:19:14',1,3,'3','juan',3,''),(11,'2011-03-16 10:19:14',1,3,'2','pepe',3,''),(12,'2011-03-16 10:19:14',1,3,'5','prueba',3,''),(13,'2011-03-16 10:22:05',1,7,'1','bibliotecas.simas.org.ni',2,'Modificado/a domain y name.'),(14,'2011-03-16 10:22:46',1,19,'6','Registration information for crocha',3,''),(15,'2011-03-16 10:23:01',1,3,'7','crocha',3,''),(16,'2011-03-16 18:29:50',1,10,'55','Managua',1,''),(17,'2011-03-16 18:30:21',1,16,'1','SIMAS',1,''),(18,'2011-03-16 18:30:43',1,14,'1','Edisa',1,''),(19,'2011-03-16 18:31:25',1,13,'1','Tecnologia',1,''),(20,'2011-03-16 18:31:57',1,15,'1','Libro',1,''),(21,'2011-03-16 18:34:40',1,17,'1','Aprender Linux',1,''),(22,'2011-03-16 19:00:25',1,17,'1','Aprender Linux',2,'Modificado/a descritores.'),(23,'2011-04-12 18:19:17',1,13,'2','COOPERACIÓN INTERNACIONAL',1,''),(24,'2011-04-12 18:19:37',1,13,'1','TECNOLOGIAS',2,'Modificado/a nombre.'),(25,'2011-04-12 18:20:01',1,13,'3','PROYECTOS DE DESARROLLO',1,''),(26,'2011-04-12 18:20:17',1,13,'4','RELACIONES INTERNACIONALES',1,''),(27,'2011-04-12 18:20:32',1,13,'5','ONG',1,''),(28,'2011-04-12 18:21:03',1,13,'6','POLÍTICA ECONÓMICA. PLANIFICACIÓN',1,''),(29,'2011-04-28 23:20:09',1,15,'1','Libro',2,'Modificado/a logo.'),(30,'2011-04-28 23:23:52',1,14,'2','Sin editorial',1,''),(31,'2011-04-28 23:25:31',1,19,'8','Registration information for byroncorrales',3,''),(32,'2011-04-28 23:41:36',1,16,'2','UNAG NACIONAL',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'departamento','lugar','departamento'),(11,'municipio','lugar','municipio'),(12,'comunidad','lugar','comunidad'),(13,'tematica','libros','tematica'),(14,'editorial','libros','editorial'),(15,'tipo documento','libros','tipodocumento'),(16,'Organización','libros','organizacion'),(17,'libro','libros','libro'),(18,'archivos','libros','archivos'),(19,'registration profile','registration','registrationprofile'),(20,'disponibilidad','libros','disponibilidad'),(21,'tag','tagging','tag'),(22,'tagged item','tagging','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dd894d6d47096d2e8866d4c4afa287d2','gAJ9cQEuZmM1ZjgyMTUzYzU3YTMzMTQ4MDEyZmM4NjAxMTk2Y2U=\n','2011-03-30 15:26:30'),('a290aff9f84dec60aaa227e37746fd74','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEJdS44N2RmYTdiM2YyZTNmY2Y5MDE0\nZTdlMmUwMzBhNGQ5Yg==\n','2011-03-31 18:02:00'),('38bf2442f97e56a1de41147c6c02f077','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEKdS4yODkyZGEyYTEwYTg3ODQzYjAx\nMTYzMjI5NjY4YmQ0NQ==\n','2011-04-07 16:40:57'),('e6a0dfbd8ef3597b390b04532c6eb130','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigELdS5jNGYwMWQ4ZmNkM2I3NjI0MDQx\nZDEzMjdhNDRmODk2Ng==\n','2011-04-07 09:58:01'),('3396843e525e94d19e1f8c8b4c970471','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEKdS4yODkyZGEyYTEwYTg3ODQzYjAx\nMTYzMjI5NjY4YmQ0NQ==\n','2011-04-06 20:07:54'),('9d408960936a6b6b32dca462e35ce129','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigELdS5jNGYwMWQ4ZmNkM2I3NjI0MDQx\nZDEzMjdhNDRmODk2Ng==\n','2011-04-05 12:06:34'),('9dc26bc33972e377962d29c168f5fead','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigELdS5jNGYwMWQ4ZmNkM2I3NjI0MDQx\nZDEzMjdhNDRmODk2Ng==\n','2011-04-05 11:55:44'),('34a4295615ca5de204211b3265a74a2a','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4wYjEyODc3N2Q1YjIzNTVkODMz\nYWUxNTQ1ZjU1OTdiNw==\n','2011-04-26 15:38:37'),('8f860e293bcb38f9f3d3f8452d6e0fff','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4wYjEyODc3N2Q1YjIzNTVkODMz\nYWUxNTQ1ZjU1OTdiNw==\n','2011-04-26 18:18:32'),('7f40d78b20608fb9401a0b21d976722e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4wYjEyODc3N2Q1YjIzNTVkODMz\nYWUxNTQ1ZjU1OTdiNw==\n','2011-04-27 15:15:32'),('91321622a1db08a156c67a6d113653a5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4wYjEyODc3N2Q1YjIzNTVkODMz\nYWUxNTQ1ZjU1OTdiNw==\n','2011-05-12 23:17:42'),('e288aae84007f326bae4627906925a6b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4wYjEyODc3N2Q1YjIzNTVkODMz\nYWUxNTQ1ZjU1OTdiNw==\n','2011-05-12 22:51:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'bibliotecas.simas.org.ni','bibliotecas.simas.org.ni');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_archivos`
--

DROP TABLE IF EXISTS `libros_archivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_archivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  `libro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `libros_archivos_9587e74b` (`libro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_archivos`
--

LOCK TABLES `libros_archivos` WRITE;
/*!40000 ALTER TABLE `libros_archivos` DISABLE KEYS */;
INSERT INTO `libros_archivos` VALUES (1,'Aprende Linux','attachments/archivos/Beginning_the_Linux_Command_Line__Apress_2009_.pdf',1);
/*!40000 ALTER TABLE `libros_archivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_disponibilidad`
--

DROP TABLE IF EXISTS `libros_disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_disponibilidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_disponibilidad`
--

LOCK TABLES `libros_disponibilidad` WRITE;
/*!40000 ALTER TABLE `libros_disponibilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros_disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_editorial`
--

DROP TABLE IF EXISTS `libros_editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_editorial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_editorial`
--

LOCK TABLES `libros_editorial` WRITE;
/*!40000 ALTER TABLE `libros_editorial` DISABLE KEYS */;
INSERT INTO `libros_editorial` VALUES (1,'Edisa'),(2,'Sin editorial');
/*!40000 ALTER TABLE `libros_editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_libro`
--

DROP TABLE IF EXISTS `libros_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_libro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL DEFAULT '1',
  `organizacion_id` int(11) NOT NULL,
  `codigo` varchar(200) DEFAULT NULL,
  `edicion` varchar(200) DEFAULT NULL,
  `tematica_id` int(11) NOT NULL,
  `fecha_pub` date DEFAULT NULL,
  `lugar_pub` varchar(200) DEFAULT NULL,
  `editorial_id` int(11) NOT NULL,
  `pagina` int(11) DEFAULT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `nota_descriptiva` varchar(200) DEFAULT NULL,
  `resumen` longtext,
  `portada` varchar(100) DEFAULT NULL,
  `tipo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `publicar` tinyint(1) NOT NULL,
  `idioma` int(11) NOT NULL,
  `descriptores` varchar(255) NOT NULL,
  `No_acceso` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `libros_libro_48753264` (`organizacion_id`),
  KEY `libros_libro_9ed09f06` (`tematica_id`),
  KEY `libros_libro_93eab40e` (`editorial_id`),
  KEY `libros_libro_d81b0b6e` (`tipo_id`),
  KEY `libros_libro_c9c24747` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_libro`
--

LOCK TABLES `libros_libro` WRITE;
/*!40000 ALTER TABLE `libros_libro` DISABLE KEYS */;
INSERT INTO `libros_libro` VALUES (1,'Aprender Linux','',1,'','',1,'2011-03-16','EEUU',1,NULL,'',NULL,'','','attachments/portadas/linux1.jpg',1,1,0,1,'',NULL),(2,'\"Tercer Encuentro de Directores de Instituciones Contrapartes del PROASEL - INTERCOOPERATION: memoria\"','\"PROASEL; INTERCOOPERATION\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Tegucigalpa\"',2,0,'\"NULL\"',0,'\"Lago Yojoa, Honduras. 5 - 6 oct. 1998\"','\"Contiene una evaluaci?n  de las experiencias de cooperaci?n de las instituciones contrapartes con el PROASEL.\"','',1,11,1,1,'1','\"0001\"'),(3,'\"Mas alla de la cooperacion al desarrollo: hacia un enfoque cultural.\"','\"Sizoo, Edith; Redac.\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Soesterberg\"',2,0,'\"NULL\"',0,'','\"Aborda enfoque cultural de la cooperaci?n y los procesos de desarrollo\"','',1,11,1,1,'1','\"0002\"'),(4,'\"Estrategia regional para America Latina 2007 - 2011\"','\"Centro Cooperativo Sueco. [SCC]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Solna\"',2,0,'\"NULL\"',0,'','\"Documento de trabajo cuyo prop?sito es orientar el enfoque general y las actividades que ejecuta la instituci?n. Adem?s recoge un an?lisis contextual sobre la situaci?n en Am?rica Latina y las  causas de la pobreza y la injusticia en la regi?n.\"','',1,11,1,1,'1','\"0003\"'),(5,'\"Estrategia regional para America Latina 2002 - 2006\"','\"Centro Cooperativo Sueco. [SCC]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta de forma estructurada el pensamiento y prioridades de la organizaci?n para la regi?n, teniendo como objetivos promover el desarrollo cooperativo, rural, ahorro y cr?dito y la comercializaci?n de productos b?sicos de consumo\"','',1,11,1,1,'1','\"0003\"'),(6,'\"Coordinacion de la cooperacion para el desarrollo\"','\"Nicaragua, Ministerio de Relaciones Exteriores\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Nicaragua\"',2,0,'\"NULL\"',0,'','\"Recopila valiosa informaci?n hist?rica y conceptual sobre el tema, as? como los principales documentos que fueron presentados durante el foro de Coordinaci?n de la Cooperaci?n Internacional  y el Foro sobre Enfoque Sectorial una Alternativa para la Coordinaci?n Internacional que se efectuaron en junio 2002 y junio 2003.\"','',1,11,1,1,'1','\"0004\"'),(7,'\"La sostenibilidad vista desde las organizaciones de desarrollo: notas y reflexiones a partir de un encuentro de contrapartes de Ayuda Popular Noruega / APN - Nicaragua\"','\"Ulloa, Luis Felipe\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Nicaragua\"',2,0,'\"NULL\"',0,'','\"Contiene el concepto sostenibilidad dentro de la cooperacion para el desarrollo, incluye significados muy amplios y variados, en leguaje de algunas organizaciones donante, sostenibilidad vino a sustituir  en los a?os 90 a lo que fue solidaridad en los 70 y 80 como principio de la cooperaci?n\"','',1,11,1,1,'1','\"0005\"'),(8,'\"Notas sobre la coherencia entre la politica de cooperaci?n al desarrollo y la pol?tica agr?cola\"','\"Holanda. Ministerio de Agricultura, Naturaleza y Pesca\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"La Haya\"',2,0,'\"NULL\"',0,'','\"Expone el deseo de los Pa?ses Bajos de fortalecer la  coherencia entre sus diversas pol?ticas dentro de sus estrategias.\"','',1,11,1,1,'1','\"0006\"'),(9,'\"La situacion internacional en la decada del noventa: ciclo de conferencias ofrecido por Bernad Cassen\"','\"Roca de Torres, Irma\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"San Juan, Puerto Rico\"',2,0,'\"NULL\"',0,'','\"Analiza la situaci?n de la comunidad Europea su unidad y la pol?tica exterior de Francia\"','',1,11,1,1,'1','\"0007\"'),(10,'\"Regards du Sud: des soci?tes qui bougent, une coop?ration ? refonder\"','\"L?Institut de Recherches et d?Aplications des M?thodes de D?veloppement. [IRAM]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Par?s\"',2,0,'\"2-7384-7376 8\"',0,'','\"Contiene entrevistas realizadas a gerentes y l?deres campesinos de diez pa?ses de ?frica, Am?rica Latina y el Caribe, los entrevistados hablan de las diversas formas de evoluci?n de sus Par?s, del papel de las organizaciones campesinas, intelectuales, j?venes, de la importancia de la religi?n, la descentralizaci?n\"','',1,11,1,1,'3','\"0008\"'),(11,'\"Solidaridad  a trav?s del acompa?amiento\"','\"Asociacion Danesa para la Cooperacion Internacional\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"San Salvador\"',2,0,'\"NULL\"',0,'','\"Contiene los objetivos principales del programa de MS entre los  que est?n: erradicaci?n de la pobreza y la cooperaci?n intercultural.\"','',1,11,1,1,'1','\"0009\"'),(12,'\"Norges Vel: experiencias de Nicaragua  y Guatemala de  1998 a 2006, informe period?stico de Mona Thowsen y  Roy Krovel.\"','\"Thowsen, Mona; Krovel, Roy; Redacts.',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene una investigaci?n period?stica sobre cooperaci?n,  entrevistas de l?deres de UNAG, comentarios de pueblos ind?genas y de mujeres de negocio. \"','',1,11,1,1,'1','\"0010\"'),(13,'\"Memoria reunion anual 1995 MS: rol y perspectivas en el di?logo Sur - Norte\"','\"MS Centroam?rica y Organismos  Asociados\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'\"Managua, 21 al 24 feb. 1995\"','\"Es una gu?a ?til tanto para los participantes del evento, como para la oficina regional de MS CA en la l?nea de promover la producci?n y divulgaci?n de informaci?n sobre el quehacer  de los Organismos Asociados en la Regi?n.\"','',1,11,1,1,'1','\"0011\"'),(14,'\"Dossier Proyecto Fomento de Capacidades en Alianza Comunitaria para el Desarrollo Territorial Rural en Nicaragua \"','\"Japan International Cooperation Agency [JICA]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene documento de intenci?n, reuniones y perfil de proyectos a ser financiados por el gobierno de Jap?n al gobierno de Nicaragua.\"','',1,11,1,1,'1','\"0017\"'),(15,'\"Informe evaluativo cooperacion Es - 44 Solidaridad Francia - Nicaragua\"','\"L?pez, Marcial; Zamora, Eduardo\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[Managua]\"',2,0,'\"NULL\"',0,'','\"Contiene el resultado del trabajo de campo y entrevistas realizadas a 39 personas entre dirigentes y productores apoyados por ES -44.\"','',1,11,1,1,'1','\"0015\"'),(16,'\"Acompañamiento contra la pobreza. (MS en el sur: cambio del enfoque de la cooperaci?n con recursos humanos). Borrador de documentos de pol?ticas \"','\"MS\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"El documento  consta de tres partes:La primera resume los enfoques que forman parte de la nueva orientaci?n hacia la pobreza como el objetivo a largo plazo de MS y aborda los conceptos  sobre pobreza, el criterio y la direcci?n para un enfoque m?s pol?tico del trabajo de MS.La segunda parte  hace la propuesta de un programa de cooperaci?n con recursos humanos.El tercer y ?ltimo documento resume las principales recomendaciones para la acci?n.\"','',1,11,1,1,'1','\"0012\"'),(17,'\"Evolutions et Cooperation Regards du Sud: 12 - 13 d?cembre 1997\"','\"L?Institut de Recherches et d?Applications des  M?thodes de D?veloppement [IRAM]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Paris \"',2,0,'\"NULL\"',0,'\"12- 13 d?cember 1997\"','\"Contiene an?lisis de la evoluci?n de la cooperaci?n internacional dentro del contexto de globalizaci?n mundial\"','',1,11,1,1,'3','\"0013\"'),(18,'\"Dossier de politicas y guias del Banco Interamericano de Desarrollo\"','\"Banco Interamericano de Desarrollo [BID]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene cuatro documentos:1. Pol?ticas y procedimientos para adquisici?n de servicios de consultor?a.2. Pol?ticas  del Banco sobre auditor?as de proyectos y entidades.3. Gu?as para la preparaci?n de estados financieros y requisitos de auditor?as independiente.4. Pol?ticas y procedimientos para la adquisici?n de bien y obras.\"','',1,11,1,1,'1','\"0014\"'),(19,'\"Posibles areas de Intervencion de la cooperaci?n Canadiense en el sector agr?cola: documento preliminar para discusi?n\"','\"Winter, Roger de; PROFORIA\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene  informe sobre dos escenarios posibles para la ejecuci?n de un nuevo proyecto financiado por el gobierno de Canad? en el sector agr?cola de Nicaragua.\"','',1,11,1,1,'1','\"0018\"'),(20,'\"Nuevas  formas e instrumentos de Cooperacion Internacional. Problemas, desaf?os y visiones de los pa?ses en desarrollo. Estudio de caso: Nicaragua\"','\"Gianotten, Vera; Mart?nez Cruz, Jessica Mar?a; ',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta los resultados de una investigaci?n que pretende contribuir a la renovaci?n de la cooperaci?n al desarrollo muy especialmente la manera c?mo donantes y receptores  se consideran y se tratan mutuamente y c?mo dan forma a la cooperaci?n.\"','',1,11,1,1,'1','\"0016\"'),(21,'\"Central American market opportunities and the competetiveness of the Nicaraguan agricultural sector\"','\"Santa Cruz, Ricardo\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'\"Titulo en ingles  pero contenido en espa?ol. Incluye directorio de compradores Centroamericanos\"','\"Constituye el informe final y contiene los principales  hallazgos del estudio del mercados Centroamericanos para productos agropecuarios y agro industriales Nicaraguenses.\"','',1,11,1,1,'1','\"0019\"'),(22,'\"Propuesta de colaboracion PASOLAC para el a?o 1997 (analizadas por la UAP y expertos  independientes  y sometidos al  CCPA para su aprobaci?n)\"','\"[s.a]\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene los perfiles de proyectos  de 14 organismos y / o instituciones para recibir financiamiento de PASOLAC.\"','',1,11,1,1,'1','\"0020\"'),(23,'\"Draf  sector programme support document: suport to the agricultural sector. Nicaragua\"','\"Minitry of Foreign Affairs of Denmark\"',2,'\"01.01\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'\"Incluye mapa de Nicaragua\"','\"Presenta borrador del programa de ayuda al desarrollo del gobierno de Dinamarca para el sector agr?cola de Nicaragua\"','',1,11,1,1,'1','\"0021\"'),(24,'\"Proyecto Mejoramiento del Manejo, Conservaci?n y Recuperaci?n de los Recursos Naturales en tres Comarcas de la Subcuenca II del municipio de Managua (proyecto Subcuenca II UNAG - POSAF - Managua)\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG Managua]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene propuesta de proyecto de la UNAG Managua para promover el uso racional de los recursos naturales, facilitando cambios en el uso de la tierra, enmarcado en el ordenamiento territorial\"','',1,11,1,1,'1','\"0001\"'),(25,'\"Evaluacion del Programa Campesino a Campesino: a solicitud de OXFAM / Inglaterra\"','\"Baumeister, Eduardo\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta an?lisis de m?s de 100 entrevistas realizadas en los primeros meses de 1996 en Masaya, Santa Luc?a, Siuna, Somoto y Santa Rosa del Pe??n a promotores del PCAC\"','',1,11,1,1,'1','\"0002\"'),(26,'\"Perfil Formulacion de un Programa de Modernizaci?n de la Uni?n Nacional de Agricultores y Ganaderos (UNAG)\"','\"Union Nacional De Agricultores Y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene perfil de proyecto para la puesta en marcha de un proceso de cambio organizacional que permita consolidar el liderazgo gremial de la UNAG en base a una mayo eficiencia y eficacia del accionar institucional\"','',1,11,1,1,'1','\"003\"'),(27,'\"Fortalecimiento de la UNAG: Zona Norte de Chinandega, Nicaragua. Proyecto presentado a la Junta de Andalucia, convocatoria 2000\"','\"Solidaridad Internacional [SI]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Sevilla\"',2,0,'\"NULL\"',0,'','\"Presenta proyecto para capacitar a los cuadros locales y los promotores de UNAG en liderazgo campesino, para, desde una sede rehabilitada de los da?os causados por el hurac?n Mitch, reorganizar su actuaci?n como instituci?n representativa de campesinos y ganaderos de la zona\"','',1,11,1,1,'1','\"0004\"'),(28,'\"Proyecto de Desarrollo de Servicios Empresariales para Productores Afiliados a la Uni?n Nacional de Agricultores y Ganaderos UNAG - Rivas\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'\"Incluye manual administrativo\"','\"Propuesta para la conformaci?n de un centro de agro negocios y gesti?n empresarial en la ciudad de Rivas, como una forma de contribuir al preceso de toma de decisiones acertadas a trav?s del mejoramiento y acceso a  la  informaci?n y a la integraci?n de herramientas para el control de la gesti?n\"','',1,11,1,1,'1','\"0005\"'),(29,'\"Proyecto Fortalecimiento a Unidad Tecnica de Formulaci?n y Evaluaci?n de Proyectos de UNAG\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene perfil de proyecto con el objetivo de potenciar la capacidad t?cnica en formulaci?n y gesti?n de proyectos del nivel nacional y departamental que le permita a UNAG dar respueta oportuna a la creciente demanda de estos servicios por los agremiados\"','',1,11,1,1,'1','\"006\"'),(30,'\"Nota tecnica: gerencia de proyectos\"','\"Morales, Ram?n; Buschting, Juana Mar?a\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene teor?a, conceptos, clasificaci?n de terminolog?a empleada en el ambito de los proyectos\"','',1,11,1,1,'1','\"0007\"'),(31,'\"Manual resumen para la formulacion de proyectos de comunicaci?n de la UNAG con enfoque de marco l?gico\"','\"[s.a]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene breve resumen de metodolog?a para el dise?o de proyectos, as? como una pr?ctica\"','',1,11,1,1,'1','\"0008\"'),(32,'\"Strengthening the quality of life of rural women in maternal health and social rights = Fortaleciendo la calidad de vida de la mujer rural en salud materna y derechos sociales\"','\"National Union of Farmers and Ranchers; National Maternal Centers Program\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Presenta propuesta que pretende aportar al cumplimiento del objetivo No. 5 de desarrollo del milenio referido a la reducci?n de la mortalidad materna y facilitar el acceso a los servicios de salud materna a la poblaci?n m?s necesitada del ?rea rural de Nicaragua\"','',1,11,1,1,'2','\"0009\"'),(33,'\"Sistematizacion: los procesos organizativos en la experiencia de PESA - Nicaragua\"','\"Mart?n, Mar?a del Mar; Coord.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Analiza uno de los aspectos m?s interesantes en la ejecuci?n del proyecto: el fortalecimiento de la organizaci?n comunitaria y explica como se ha orientado la asociatividad entre los participantes para fomentar un desarrollo global y sostenible\"','',1,11,1,1,'1','\"0010\"'),(34,'\"Proyecto de Capacitaci?n UNAG - IDR \"\"evaluaci?n del proyecto \"\". Departamentos Matagalpa y Jinotega\"','\"Union Nacional de Agricultores y Ganaderos  [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene evaluaci?n del proceso de capacitaci?n que beneficio a profesionales, t?cnicos y lideres de la organizaci?n en 2 departamentos del pa?s\"','',1,11,1,1,'1','\"0012\"'),(35,'\"Informe final de consultoria: autoevaluacion y definici?n de objetivos para la nueva fase de los componentes ejecutados por la UNAG, del programa de apoyo al sector agr?cola PASA - DANIDA\"','\"Riba, Carlos\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Analiza la ejecuci?n del proyecto para la definici?n de una nueva etapa, dado los problemas presentados en la fase inicial del mismo\"','',1,11,1,1,'1','\"0013\"'),(36,'\"Notas tecnicas para taller de capacitacion: formulaci?n de proyectos con enfoque del marco l?gico\"','\"Herrera Canales, Jaime; Comp.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene material did?ctico de apoyo para facilitar el an?lisis y autoestudio de tem?tica abordada en la jornada de capacitaci?n para mandos intemedios y t?cnicos de la UNAG\"','',1,11,1,1,'1','\"0014\"'),(37,'\"Informe final evaluaci?n de impacto: proyecto de Capacitaci?n para la Peque?a y Mediana Producci?n Agropecuaria UNAG - IDR - BID. Departamentos UNAG Estel? y Nueva Segovia\"','\"Union Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene los resultados del proceso de medici?n de impacto del plan de capacitaci?n destinado a la dirigencia, t?cnicos, y productores de base de los dos departamentos\"','',1,11,1,1,'1','\"0015\"'),(38,'\"Documentando, evaluando y aprendiendo de nuestros proyectos de desarrollo: manual de sistematizaci?n participativa\"','\"Selener, Daniel; Zapata, Gabriela; Purdy, Christopher\"',2,'\"01.01.06\"','\"2da. ed.\"',3,'2011-04-01','\"Quito\"',2,0,'\"9978 - 04 - 199 - 0\"',0,'','\"Explica y conduce en el proceso de sistematizaci?n de proyectos de desarrollo de como han sido dise?ados y ejecutados y como a trav?s de procesos de reflexi?n con los beneficiarios pueden ser mejorados\"','',1,11,1,1,'1','\"0016\"'),(39,'\"Sistematizaci?n: tipolog?a de familias como estrategia de intervenci?n en  PESA - Nicaragua\"','\"Mart?n, Mar?a del Mar; Coord.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Analiza la importancia de establecer los par?metros de la intervenci?n y graduar sus acciones de acuerdo a la tipificaci?n de su poblaci?n meta\"','',1,11,1,1,'1','\"0011\"'),(40,'\"Globalizacion participativa: solidaridad, diversidad y cooperaci?n en el siglo XXI\"','\"Asociaci?n Danesa para la Cooperaci?n Internacional [MS]\"',2,'\"01.02\"','\"NULL\"',4,'2011-04-01','\"Copenhague \"',2,0,'\"87- 7907- 039 - 6\"',0,'','\"Contiene estrategias resultado del amplio di?logo  entre todas las secciones del sistema de MS, incluyendo miembros en el norte y organismos asociados en el Sur con el prop?sito de elaborar borrador para posici?n conjunta sobre la globalizaci?n que pueda guiarlos hacia el siglo  XXI\"','',1,11,1,1,'1','\"0001\"'),(41,'\"Conferencia magistral: el campo mexicano ante la globalizaci?n\"','\"Bartra Verges, Armando\"',2,'\"01.02\"','\"NULL\"',4,'2011-04-01','\"M?xico\"',2,0,'\"NULL\"',0,'','\"Contiene la problem?tica actual que enfrenta el campo y los campesinos mexicanos ante los embates de las pol?ticas neoliberales, consustanciales al proceso de globalizaci?n.\"','',1,11,1,1,'1','\"0002\"'),(42,'\"Integraci?n centroamericana, globalizaci?n y sociedad civil. Diagnostico: participaci?n de la integraci?n centroamericana\"','\"ALOP - CESADE\"',2,'\"01.02\"','\"NULL\"',2,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene diagn?stico para identificar los avances, oportunidades y propuestas para la participaci?n de la sociedad civil en el proceso de integraci?n, incluye recomendaciones sobre la apertura, involucramiento e inclusi?n de temas esenciales en las negociaciones y definici?n de prioridades.\"','',1,11,1,1,'1','\"0003\"'),(43,'\"Mesa Nacional Campesina: por el derecho a seguir siendo productores\"','\"Mesa Nacional Campesina\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"San Jos?, C.R\"',2,0,'\"NULL\"',0,'','\"Contiene informaci?n general sobre la Mesa Nacional Campesina.\"','',1,11,1,1,'1','\"0006\"'),(44,'\"C?digo de conducta de las ONG de desarrollo de la  Coordinadora de ONGD - Espa?a\"','\"Coordinadora de ONG para el desarrollo\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Madrid\"',2,0,'\"NULL\"',0,'','\"Contiene la identidad de las ONGD, sus campos de trabajo, los criterios  generales de actuaci?n  y de organizaci?n interna y las pautas a seguir en cuanto a publicidad, comunicaci?n y uso de im?genes, adem?s  hace referencia a la aplicaci?n, difusi?n y cumplimiento del c?digo.\"','',1,11,1,1,'1','\"0004\"'),(45,'\"10 a?os trabajando pela agroecologia \"','\"Grupo de Assessoria em  Agroecolog?a na Amazonia\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Belem\"',2,0,'\"NULL\"',0,'','\"Contiene el producto de la articulaci?n de diversos conocimientos, experimentos, debates en los que participaron t?cnicos, agricultores, ind?genas, mujeres y hombres que luchan  por una agricultura sostenible y justa.\"','',1,11,1,1,'3','\"0005\"'),(46,'\"Una casa para niñas y adolescente mujeres: sistematizaci?n de experiencia','\"Instituto de Promoci?n Humana [INPRHU]\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene vivencias de ni?as y adolescentes que desde muy temprana edad son v?ctimas de incesto y abusos, embarazos precoces, rechazos familiares, violencia e inducci?n a la prostituci?n.\"','',1,11,1,1,'1','\"0007\"'),(47,'\"Evaluaci?n participativa por beneficiarios, 1996\"','\"Neyrat,  Alain\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'\"Contiene Fotos\"','\"Resume 3 evaluaciones regionales realizadas por un facilitador nacional, reforzado con un taller de verificaci?n. La informaci?n obtenida servira de insumo para la planificaci?n de la nueva fase del PASALAC\"','',1,11,1,1,'1','\"0017\"'),(48,'\"Evaluaci?n participativa por productores, 1999\"','\"Neyrat,  Alain\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'\"Contiene Fotos\"','\"Presenta informe final del proyecto, el que esta integrado por 4 informes evaluativos regionales generados y verificados por los promotores - evaluadores\"','',1,11,1,1,'1','\"0017\"'),(49,'\"El dise?o de proyectos integrados de conservaci?n y desarrollo\"','\"Brown, Michael; Wyckoff - Baird, Barbara\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Maryland\"',2,0,'\"NULL\"',0,'','\"resalta algunas de las conclusiones m?s recientes acerca del dise?o exitoso de los proyectos integrados de conservaci?n y desarrollo (PICD) enfocando primordialmente los aspectos no biol?gicos\"','',1,11,1,1,'1','\"0018\"'),(50,'\"Organizandonos para administrar nuestros proyectos comunitarios\"','\"Chenier, Jacqueline; Nu?ez, Cayetano\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Choluteca\"',2,0,'\"NULL\"',0,'','\"Comparte experiencias de campesinos hondure?os en el desarrollo y administraci?n de proyectos comunitarios, as? como sus ?xitos y dificultades\"','',1,11,1,1,'1','\"0019\"'),(51,'\"Evaluaci?n final proyecto post Mitch 2000 - 2001\"','\"Programa Campesino a Campesino. UNAG\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta logros y dificultades en la ejecuci?n del proyecto en 70 comunidades afectadas por el hurac?n Mitch\"','',1,11,1,1,'1','\"0020\"'),(52,'\"Evaluacion del proyecto piloto Programa Campesino a Campesino UNAG - Siuna\"','\"Union Nacional De Agricultores Y Ganaderos [UNAG]; OXFAN; UKI\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Analiza los resultados del trabajo ejecutado en la zona de la Reserva de Bosawas, Nicaragua\"','',1,11,1,1,'1','\"0021\"'),(53,'\"Proyecto de Apoyo Institucional al Fortalecimiento del Programa Campesino a Campesino a nivel central presentado a INTERMON\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene solicitud de apoyo al proyecto de car?cter regional y la ampliaci?n territorial del programa al municipio de Pueblo Nuevo, Estel?\"','',1,11,1,1,'1','\"0022\"'),(54,'\"Directrices para la preparaci?n del informe trimestral de seguimiento de planes de acci?n y/o proyectos por parte de los organismos receptores\"','\"Secretaria del Programa PL - 480\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene gu?a para presentaci?n de informes a la USAID\"','',1,11,1,1,'1','\"0023\"'),(55,'\"Evolution of beef and dairy production systems in Nicaragua\"','\"Randal, Ronald D.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta investigaci?n realizada para ARAP sobre la situaci?n de la industria lechera y de la carne en Nicaragua\"','',1,11,1,1,'1','\"0024\"'),(56,'\"Propuesta para una III fase: Fortalecimiento de la Capacidad Pol?tica de las Comunidades Rurales Latinoamericanas para la Defensa, Uso, Manejo, Mejoramiento y Conservaci?n de la Biodiversidad\"','\"Instituto Mayor Campesino - IMCA; Red CBDC Latinoamericana\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Valle del Cauca, Colombia\"',2,0,'\"NULL\"',0,'','\"Presenta trabajo colectivo para construir una propuesta para la tercera fase de la Red, que fortalezca la din?mica regional sin perder la  articulaci?n con los procesos y movimientos de car?cter global\"','',1,11,1,1,'1','\"0025\"'),(57,'\"Proyecto de Desarrollo Agropecuario del Sureste: evaluaci?n enero - mayo 2003\"','\"Uni?n Nacional De Agricultores Y Ganaderos [UNAG]; AMURS; SNV\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Describe los principales logros y dificultades referiras en cada componente del proyecto y la situaci?n actual de la aplicaci?n del proceso de transferencia\"','',1,11,1,1,'1','\"0026\"'),(58,'\"Rep?blica de Nicaragua. Programa Nacional de Tecnolog?as Agropecuaria. Fondo de Asistencia T?cnica (FAT): misi?n de evaluaci?n ex - ante. Volumen II - anexos\"','\"Fondo Internacional de Desarrollo Agr?cola [FIDA]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[Rome]\"',2,0,'\"NULL\"',0,'','\"Contiene propuesta para establecer un programa nacional de tecnolog?a y formaci?n agropecuaria para integrar la generaci?n, transferencia y formaci?n tecnol?gica en el sector agropecuario de Nicaragua\"','',1,11,1,1,'1','\"0027\"'),(59,'\"Registro e avaliacao colectiva: formacao de formadores - 1.er. modulo\"','\"Pascualato, Dersi; Coord.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Florianopolis\"',2,0,'\"NULL\"',0,'','\"Contiene proceso de evaluaci?n participativa del proyecto \"\"Tierra Solidaria\"\" de Brasil\"','',1,11,1,1,'3','\"0028\"'),(60,'\"Final report of the Steering Committe for the evaluation of the co - financing programme\"','\"Ruijter, A. de; Coord.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene informe final del programa de co financiamiento del gobierno de Los Pa?ses Bajos\"','',1,11,1,1,'1','\"0029\"'),(61,'\"Cooling technologies for the development of the nicaraguan produce industry\"','\"Picha, David\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene an?lisis de la situaci?n tecnol?gica y de infraestructura de la industria de enfriamiento de Nicaragua, en funci?n de la comercializaci?n de productos agropecuarios a los nuevos mercados del pa?s\"','',1,11,1,1,'1','\"0030\"'),(62,'\"Programa de informaci?n y capacitaci?n: manual de gesti?n para proyectos comunitarios\"','',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Ciudad de la Habana\"',2,0,'\"NULL\"',0,'','\"Contiene teor?a y algunas herramientas y metodolog?as concretas de todas las etapas de un proyecto\"','',1,11,1,1,'1','\"0039\"'),(63,'\"Preparacion de proyectos agricolas para  profesionales que trabajan en desarrollo rural\"','\"Moreno, Ra?l; comp.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua \"',2,0,'\"NULL\"',0,'','\"Contiene material did?ctico para capacitaci?n en dise?o de solicitud de proyectos.\"','',1,11,1,1,'1','\"0038\"'),(64,'\"Segunda fase del Proyecto de Fortalecimiento de la  Capacidad de Incidencia Pol?tica de la Uni?n Nacional de Agricultores y Ganaderos - UNAG, 2001 - 2004\"','\"Union Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene propuestas de  nueva  fase del proyecto ante los cambios pol?ticos del pa?s donde se hace necesario reforzar aun mas la capacidad de concertaci?n, incidencia y gesti?n de la UNAG.\"','',1,11,1,1,'1','\"0037\"'),(65,'\"Proyecto Capacitaci?n  y Formaci?n a Distancia en el Medio  Rural: segundo borrador\"','\"UNAG Nacional\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta propuesta de UNAG  en funci?n de organizar  programa de educaci?n  sustentado en los conocimientos, experiencias y necesidades de los productores afiliados.\"','',1,11,1,1,'1','\"0036\"'),(66,'\"Fase previa de experimentaci?n para la formulaci?n del proyecto de formaci?n y capacitaci?n\"','\"[s.a]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene la reformulaci?n del proyecto para la Escuela T?cnica Campesina (ETC) del departamento de Matagalpa, establece el rol de UNAG como contraparte.\"','',1,11,1,1,'1','\"0035\"'),(67,'\"Taller Latinoamericano  sobre Peque?os Proyectos ( FPP): memoria\"','\"Fondo de de Microproyectos Costarricenses [ FOMIC]; EZE; Centro de Estudios Ecum?nicos\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'\"San Jos?, costa Rica. 27- 30 mar. 1995\"','\"Presenta los resultados de la reflexi?n de los participantes al taller, as? como el documento base que comprende la auto sistematizaci?n global de todas las experiencias participantes sobre fondos de peque?os proyectos (FPP)\"','',1,11,1,1,'1','\"0034\"'),(68,'\"Programa de Capacitaci?n para la Peque?a y Mediana  Producci?n Agropecuaria: memoria sobre gerencia de proyecto\"','\"[s.a]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Le?n\"',2,0,'\"NULL\"',0,'','\"Contiene informe sobre capacitaci?n a miembros de  UNAG - Le?n\"','',1,11,1,1,'1','\"0033\"'),(69,'\"Informe: taller de Capacitaci?n sobre Formulaci?n de Proyectos con Enfoque del Marco L?gico\"','\"Herrera Canales, Jaime\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene s?ntesis de los aspectos m?s relevantes de la jornada de capacitaci?n brindada a 22 mandos intermedios  y t?cnicos de UNAG.\"','',1,11,1,1,'1','\"0032\"'),(70,'\"Proyecto de Apoyo al Desarrollo Empresarial de la Cooperativa San Isidro R.L.. UNAG - Boaco\"','\"UNAG - Boaco\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Reune informaci?n necesaria para la ejecuci?n de un proyecto que le permita a la cooperativa alcanzar su punto de equilibrio, lograr rentabilidad en sus operaciones, alcanzando sostenibilidad financiera.\"','',1,11,1,1,'1','\"0031\"'),(71,'\"Forestadores  Asociados de Nicaragua','\"Forestadores Asociados de Nicaragua\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene la historia de la organizaci?n e informaci?n de sus diferentes proyectos ejecutados.\"','',1,11,1,1,'1','\"0003\"'),(72,'\"?Cuales fueron los avances en el año 2008?: informe de los cambios m?s significativos del programa VECO MA en Centroam?rica ','\"VECO MA\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene los alcances de las tres nuevas l?neas de trabajo estrat?gicas de VECOMA:1. Relaciones equitativas en cadenas de producci?n sostenible y org?nica.2. Incidencia pol?tica hacia actores p?blicos y privados.3. Consumo responsable en las dimensiones econ?micas y pol?ticas.\"','',1,11,1,1,'1','\"0009\"'),(73,'\"El FIDA y las 5: asociaciones din?micas para luchar contra la pobreza Rural\"','\"Fondo Internacional de Desarrollo Agr?cola\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Roma\"',2,0,'\"NULL\"',0,'','\"Contiene informaci?n general del FIDA, sus or?genes, estrategias,estructura y la manera como colabora con las ONG.\"','',1,11,1,1,'1','\"0008\"'),(74,'\"Instituto de Investigacion y de Aplicacion de los M?todos del Desarrollo \"','\"Instituto de Investigaci?n y de Aplicaci?n de los M?todos del Desarrollo [IRAM]\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Par?s \"',2,0,'\"NULL\"',0,'','\"Contiene informaci?n general acerca de la Asociaci?n IRAM\"','',1,11,1,1,'1','\"0001\"'),(75,'\"Documento de politicas 2003 - 2007\"','\"Asociaci?n Danesa para la Cooperaci?n Internacional [MS]\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene el resultado de un proceso amplio y acumulativo de discusi?n del Consejo  Consultivo de Pol?ticas, de los participantes de la reuni?n anual y de las distintas actividades de consulta conducida con las organizaciones asociadas, actores actuales y potenciales del programa durante su formulaci?n. \"','',1,11,1,1,'1','\"0002\"'),(76,'\"El papel de la organizaciones no gubernamentales y  federaciones de cooperativas en la generaci?n y transferencia de tecnolog?as agropecuaria: el caso de El Salvador\"','\"Rodr?guez Sandoval,  Roberto\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"San Jos?, C.R\"',2,0,'\"NULL\"',0,'','\"Presenta investigaci?n sobre el rol, los problemas y el potencial de las ONG?s en la generaci?n de tecnolog?a y en la difusi?n y rescate de t?cnicas apropiadas para la producci?n de granos b?sicos\"','',1,11,1,1,'1','\"0010\"'),(77,'\"Federacion Internacional de Trabajadores de las Plantaciones, Agr?colas  y Similares (FITPAS)\"','\"Federaci?n Internacional de Trabajadores de las Plantaciones, Agr?colas  y Similares (FITPAS)\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Ginebra\"',2,0,'',0,'','\"Contiene informaci?n del papel que desempe?a la FITPAS, para apoyar a los trabajadores de plantaciones agr?colas contra la explotaci?n econ?mica, la opresi?n pol?tica y la violaci?n o limitaci?n de sus derechos sindicales.\"','',1,11,1,1,'1','\"0011\"'),(78,'\"The International Co-operative Alliance and its development  programme\"','\"International Co-Operative Alliance [ICA]\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"[Geneva]\"',2,0,'\"NULL\"',0,'','\"Contiene el programa de desarrollo del ICA,  que es una organizaci?n de apoya  a cooperativas en todo el mundo.\"','',1,11,1,1,'2','\"0012\"'),(79,'\"Las organizaciones no gubernamentales ONGs en la generaci?n  y transferencia de tecnolog?a: el caso  de Nicaragua\"','\"Miranda Abaunza, Byron\"',2,'\"01.03.04\"','\"NULL\"',5,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene an?lisis cualitativo de 18 organizaciones no gubernamentales que impulsan  programas  institucionales de apoyo y servicios  al sector rural,  en el desarrollo y promoci?n de tecnolog?a.\"','',1,11,1,1,'1','\"0013\"'),(80,'\"Proyecto \"\"Fortalecimiento de la Capacidad de Incidencia Pol?tica de la Uni?n Nacional de Agricultores y Ganaderos - UNAG\"\"\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Presenta  proyecto encaminado a reforzar la capacidad de concertaci?n, incidencia y gesti?n de la UNAG desarrollando .sus capacidades propositivas, sobre todo las propuestas t?cnicas\"','',1,11,1,1,'1','\"0037\"'),(81,'\"Participacion: las personas tras los proyectos\"','\"Fondo Internacional de Desarrollo Agr?cola [FIDA]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[Roma]\"',2,0,'\"NULL\"',0,'\"Contiene fotos\"','\"Contiene ejemplos concretos de participaci?n popular no solo en el dise?o y la planificaci?n de los proyectos, sino tambi?n, lo que es m?s importante, en la ejecuci?n de los mismos\"','',1,11,1,1,'1','\"0040\"'),(82,'\"Proyecto de Mejoramiento del Manejo, Conservaci?n y Recuperaci?n de los Recursos Naturales en cuatro Comarcas del Municipio de San Francisco Libre (Proyecto San Franciso Libre UNAG - POSAF - Managua)','\"Union Nacional de Agricultores y Ganaderos [UNAG Managua]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene propuesta para promover el uso racional de los recursos naturales, procurando cambios en el uso de la tierra enmarcado en el ordenamiento territorial, en utilizaci?n de bosque bajo planes de manejo adecuado y la implementaci?n de sistema de reforestaci?n y conservaci?n de suelo y agua\"','',1,11,1,1,'1','\"0041\"'),(83,'\"Notas conceptuales sobre proyecto en alianza estrat?gica para la investigaci?n\"','\"Universidad Polit?cnica de Nicaragua [UPOLI]; Escuela Internacional de Agricultura y Ganaderia de Rivas [EIAG]; UNAG\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Contiene justificaci?n te?rica para proyecto que busca fortalecer las capacidades de investigaci?n de la UPOLI y aliados en el ?rea de nutrici?n animal con la utilizaci?n de ca?a de azucar por parte de los peque?os y medianos productores\"','',1,11,1,1,'1','\"0042\"'),(84,'\"!Yo puedo formular proyectos!: gu?a para la elaboraci?n de proyectos comunitarios\"','\"Servicios de Informaci?n Mesoamericano sobre Agricultura Sostenible [SIMAS]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Muestra los pasos y momentos importantes para elaborar un proyecto desde la definici?n del problema hasta la evaluaci?n del mismo\"','',1,11,1,1,'1','\"0043\"'),(85,'\"Guia metologica para la formulacion, monitoreo y verificaci?n de proyectos de mitigaci?n de gases de efecto invernadero\"','\"Viteri, Jos? Antonio; Ed.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Material did?ctico publicado por el proyecto \"\"formaci?n de capacidades en ?reas prioritarias de cambio cl?m?tico\"\", con ello pretende avanzar en la diseminaci?n de las oportunidades de negocios y de facilitar el dise?o de este tipo de proyectos\"','',1,11,1,1,'1','\"0044\"'),(86,'\"Propuesta para el fortalecimiento de los centros de agronegocios Siuna y Chinandega y la apertura del centro de agronegocios de Mulukuku\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[s.l]\"',2,0,'\"NULL\"',0,'','\"Presenta iniciativa de UNAG para el desarrollo agroempresarial de peque?os y medianos productores, con enfoque territorial y la participaci?n de los actores relevantes al agronegocio en Nicaragua\"','',1,11,1,1,'1','\"0045\"'),(87,'\"Proyecto \"\"Apoyo al Trabajo Organizativo de UNAG\"\"\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene propuesta que busca el apoyo financiero por parte de HIVOS para el per?odo enero - junio 1997, con el fin de continuar avazando en el fortalecimiento gremial e institucional\"','',1,11,1,1,'1','\"0046\"'),(88,'\"Informe de consultoria del Proyecto de Capacitaci?n para la Peque?a y Mediana Producci?n Agropecuaria UNAG - IDR / BID Boaco - Chontales\"','\"[s.a]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Boaco\"',2,0,'\"NULL\"',0,'','\"Presenta resultado de evaluaci?n altamente participativa, enfocada principalmente a los beneficiarios del mismo\"','',1,11,1,1,'1','\"0047\"'),(89,'\"Formulacion primera fase Programa de Modernizaci?n de Uni?n Nacional de Agricultores y Ganaderos: UNAG - Carazo\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Jinotepe\"',2,0,'\"NULL\"',0,'','\"Presenta solicitud de programa de modernizaci?n institucional que impulsar? el proyecto PROFORIA\"','',1,11,1,1,'1','\"0048\"'),(90,'\"Perfil formulacion de un Programa de Modernizaci?n de la Uni?n Nacional de Agricultores y Ganaderos: UNAG - Estel?\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Estel?\"',2,0,'\"NULL\"',0,'','\"Presenta solicitud de programa de modernizaci?n institucional que impulsar? el proyecto PROFORIA\"','',1,11,1,1,'1','\"0049\"'),(91,'\"Como planeamos nuestro proyecto economico?\"','\"Roy,  Louise; Paquin, Martine; D?az, Morena\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"[Managua]\"',2,0,'\"NULL\"',0,'','\"Contiene metodolog?a concebida para mujeres del tercer mundo para la realizaci?n de estudios de factibilidad con el m?todo \"\"aprender haciendo\"\"\"','',1,11,1,1,'1','\"0050\"'),(92,'\"Proyecto de Asistencia Tecnica en la Producci?n de Caf? Org?nico Certificado - UNAG PL - 480 T III.  Evaluaci?n final: departamento de Nueva Segovia\"','\"Torres L., Alfredo; Coord.\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'\"En 01.01.06 - 0060 se encuentra la evaluaci?n intermedia del proyecto\"','\"Analiza con profundidad las acciones y resultados del proyecto desde 1998 hasta el 2002, as? como las causas e emprevistos que dificultaron su avance y las situaciones propicias que lo favorecieron\"','',1,11,1,1,'1','\"0051\"'),(93,'\"\"\"De vender machetes a desarrollar recursos humanos\"\": evaluaci?n del proyecto NDR - UNAG / ECODEPA\"','\"Ockerman, Torbjorn; Hern?ndez, Julio Ricardo; Zamora, Martha\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Presenta evaluaci?n del desarrollo de la fase II del proyecto con el objetivo de conseguir m?s datos cualitativos que servir?n como insumos a la planificaci?n de la tercera etapa\"','',1,11,1,1,'1','\"0052\"'),(94,'\"Informe final de la evaluacion externa PCAC - UNAG - PPM\"','\"Blanco, Myriam; Gonzalvez, V?ctor\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contine informe que mide el nivel de cumplimiento de las actividades propuestas por el programa, sus resultados, nivel de incidencia, as? como el cambio tecnol?gico y organizativo del campesinado beneficiario\"','',1,11,1,1,'1','\"0053\"'),(95,'\"Informe evaluativo proyecto \"\"Credito para Peque?os(as) y  Medianos(as) Productores(as) Organizados(as) en el Programa de Campesino a Campesino UNAG - Boaco\"','\"Uni?n Nacional de Agricultores y Ganaderos [UNAG]\"',2,'\"01.01.06\"','\"NULL\"',3,'2011-04-01','\"Boaco\"',2,0,'\"NULL\"',0,'','\"Valora los logros y las dificultades en la ejecuci?n del proyecto\"','',1,11,1,1,'1','\"0054\"'),(96,'\"Maiz o mel?n?: las respuestas del agro Centroam?ricano a los cambios de la pol?tica econ?mica \"','\"Organizaci?n Internacional del trabajo (OIT)\"',2,'\"02.01\"','\"NULL\"',6,'2011-04-01','\"Panam?\"',2,0,'\"92-2-309009-01\"',0,'','\"Presenta en forma general las principales tendencias  registradas durante los a?os 80, ademas contiene   documento  de la UNAG que refleja la situaci?n pol?tica  y  econ?mica  de los agricultores de la regi?n y plantea campos de acci?n de la organizaci?n, como  son empresas comercializadoras y procesadoras, el papel de la mujer, recursos naturales, salud, educaci?n y capacitaci?n.\"','',1,11,1,1,'1','\"0001\"'),(97,'\"Pensamiento estrategico: construya los cimientos  de su planeaci?n\"','\"Morrisey, George L .\"',2,'\"02.01\"','\"NULL\"',6,'2011-04-01','\"[s.l]\"',2,0,'\"968-880-734 -6\"',0,'','\"Contiene gu?a para  la planeaci?n estrat?gica, la cual  ayudar? a  crear equipos de planeaci?n, estableciendo principios y valores de la organizaci?n\"','',1,11,1,1,'1','\"0002\"'),(98,'\"Auto diagnostico, planificacion y presupuesto\"','\"Instituto Cooperativo Interamericano (ICI)\"',2,'\"02.01\"','\"NULL\"',6,'2011-04-01','\"Panam?\"',2,0,'\"NULL\"',0,'','\"contiene aspectos esenciales de los m?todos y las t?cnicas requeridas para la realizaci?n del auto diagn?stico, la planificaci?n y la elaboraci?n de presupuesto, su importancia y c?mo ponerlos en pr?ctica en las organizaciones.\"','',1,11,1,1,'1','\"0003\"'),(99,'\"Que es la estrategia reforzada de crecimiento económico y reducción de  la pobreza?: version ilustrada\"','\"Nicaragua. Secretar?a T?cnica de la Presidencia\"',2,'\"02.01\"','\"NULL\"',6,'2011-04-01','\"Managua\"',2,0,'\"NULL\"',0,'','\"Contiene estrategia, cuyo objetivo es superar la situaci?n de pobreza en la que viven muchos nicarag?enses.Las ideas, programas y acciones expuestas se enmarcan dentro de dicha estrategia y son los instrumentos de trabajo que guiaran los esfuerzos para mejorar el bienestar de la poblaci?n.\"','',1,11,1,1,'1','\"0004\"');
/*!40000 ALTER TABLE `libros_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_libro_disponibilidad`
--

DROP TABLE IF EXISTS `libros_libro_disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_libro_disponibilidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` int(11) NOT NULL,
  `disponibilidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libros_libro_disponibilidad_libro_id_95ae4d50e9edb3d_uniq` (`libro_id`,`disponibilidad_id`),
  KEY `libros_libro_disponibilidad_9587e74b` (`libro_id`),
  KEY `libros_libro_disponibilidad_c5390e13` (`disponibilidad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_libro_disponibilidad`
--

LOCK TABLES `libros_libro_disponibilidad` WRITE;
/*!40000 ALTER TABLE `libros_libro_disponibilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros_libro_disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_organizacion`
--

DROP TABLE IF EXISTS `libros_organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_organizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fax` int(11) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `direccion` longtext NOT NULL,
  `correo_electronico` varchar(75) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `libros_organizacion_8865b15a` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_organizacion`
--

LOCK TABLES `libros_organizacion` WRITE;
/*!40000 ALTER TABLE `libros_organizacion` DISABLE KEYS */;
INSERT INTO `libros_organizacion` VALUES (1,'SIMAS',22682302,22682144,NULL,'Reparto El Carmen, costado oeste parque el Carmen, Managua, Nicaragua','simas@simas.org.ni',55,'attachments/logos/logo_4p.jpg','http://www.simas.org.ni/'),(2,'UNAG NACIONAL',12345678,NULL,NULL,'Frente al bac las palmas','unagsiuna81@hotmail.com',55,'','');
/*!40000 ALTER TABLE `libros_organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_tematica`
--

DROP TABLE IF EXISTS `libros_tematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_tematica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_tematica`
--

LOCK TABLES `libros_tematica` WRITE;
/*!40000 ALTER TABLE `libros_tematica` DISABLE KEYS */;
INSERT INTO `libros_tematica` VALUES (1,'TECNOLOGIAS'),(2,'COOPERACIÓN INTERNACIONAL'),(3,'PROYECTOS DE DESARROLLO'),(4,'RELACIONES INTERNACIONALES'),(5,'ONG'),(6,'POLÍTICA ECONÓMICA. PLANIFICACIÓN');
/*!40000 ALTER TABLE `libros_tematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_tipodocumento`
--

DROP TABLE IF EXISTS `libros_tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros_tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_tipodocumento`
--

LOCK TABLES `libros_tipodocumento` WRITE;
/*!40000 ALTER TABLE `libros_tipodocumento` DISABLE KEYS */;
INSERT INTO `libros_tipodocumento` VALUES (1,'Libro','attachments/tipodoc/libro.png');
/*!40000 ALTER TABLE `libros_tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_comunidad`
--

DROP TABLE IF EXISTS `lugar_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_comunidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lugar_comunidad_f3143aaa` (`municipio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_comunidad`
--

LOCK TABLES `lugar_comunidad` WRITE;
/*!40000 ALTER TABLE `lugar_comunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_departamento`
--

DROP TABLE IF EXISTS `lugar_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `extension` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_departamento`
--

LOCK TABLES `lugar_departamento` WRITE;
/*!40000 ALTER TABLE `lugar_departamento` DISABLE KEYS */;
INSERT INTO `lugar_departamento` VALUES (55,'Managua','managua','123.00');
/*!40000 ALTER TABLE `lugar_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_municipio`
--

DROP TABLE IF EXISTS `lugar_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_municipio` (
  `id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `latitud` decimal(8,5) DEFAULT NULL,
  `longitud` decimal(8,5) DEFAULT NULL,
  `extension` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`),
  KEY `lugar_municipio_8865b15a` (`departamento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_municipio`
--

LOCK TABLES `lugar_municipio` WRITE;
/*!40000 ALTER TABLE `lugar_municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (7,8,'ALREADY_ACTIVATED'),(9,10,'ALREADY_ACTIVATED'),(10,11,'ALREADY_ACTIVATED');
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'lugar','0001_initial','2011-03-16 03:03:41'),(2,'lugar','0002_auto__add_field_departamento_extension','2011-03-16 03:03:42'),(3,'lugar','0003_auto__add_field_municipio_extension','2011-03-16 03:03:42'),(4,'libros','0001_initial','2011-03-16 03:03:43'),(5,'libros','0002_auto__chg_field_libro_descritores','2011-03-16 23:58:42'),(6,'libros','0003_auto__add_field_tipodocumento_logo','2011-03-17 22:59:39'),(7,'libros','0004_auto__chg_field_libro_nota_descriptiva','2011-03-22 23:32:19'),(8,'libros','0005_auto__add_field_libro_publicar','2011-03-22 23:32:20'),(9,'libros','0006_auto__add_disponibilidad','2011-03-22 23:32:22'),(10,'libros','0007_auto__add_field_libro_idioma__chg_field_libro_autor__chg_field_libro_l','2011-03-24 21:27:45'),(11,'libros','0008_auto__del_field_libro_descritores__add_field_libro_descriptores','2011-04-13 20:04:27'),(12,'libros','0009_auto__add_field_libro_No_acceso','2011-04-13 20:04:27'),(13,'tagging','0001_initial','2011-04-13 20:04:28');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tag`
--

DROP TABLE IF EXISTS `tagging_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_taggeditem`
--

DROP TABLE IF EXISTS `tagging_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagging_taggeditem_tag_id_2ccbe9f5fed37043_uniq` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_e4470c6e` (`content_type_id`),
  KEY `tagging_taggeditem_829e37fd` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_taggeditem`
--

LOCK TABLES `tagging_taggeditem` WRITE;
/*!40000 ALTER TABLE `tagging_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-28 23:33:23
