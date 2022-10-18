-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: leantime
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `zp_account`
--

DROP TABLE IF EXISTS `zp_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `projectId` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_account`
--

LOCK TABLES `zp_account` WRITE;
/*!40000 ALTER TABLE `zp_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_action_tabs`
--

DROP TABLE IF EXISTS `zp_action_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_action_tabs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabRights` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_action_tabs`
--

LOCK TABLES `zp_action_tabs` WRITE;
/*!40000 ALTER TABLE `zp_action_tabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_action_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_audit`
--

DROP TABLE IF EXISTS `zp_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `projectId` int DEFAULT NULL,
  `action` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entityId` int DEFAULT NULL,
  `values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`),
  KEY `projectAction` (`projectId`,`action`),
  KEY `projectEntityEntityId` (`projectId`,`entity`,`entityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_audit`
--

LOCK TABLES `zp_audit` WRITE;
/*!40000 ALTER TABLE `zp_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_calendar`
--

DROP TABLE IF EXISTS `zp_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `dateFrom` datetime DEFAULT NULL,
  `dateTo` datetime DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allDay` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_calendar`
--

LOCK TABLES `zp_calendar` WRITE;
/*!40000 ALTER TABLE `zp_calendar` DISABLE KEYS */;
INSERT INTO `zp_calendar` VALUES (1,2,'2022-09-20 08:50:00','2022-09-20 09:00:00','General Meeting',NULL,'false');
/*!40000 ALTER TABLE `zp_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_canvas`
--

DROP TABLE IF EXISTS `zp_canvas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_canvas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `projectId` int DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProjectIdType` (`projectId`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_canvas`
--

LOCK TABLES `zp_canvas` WRITE;
/*!40000 ALTER TABLE `zp_canvas` DISABLE KEYS */;
INSERT INTO `zp_canvas` VALUES (1,'Lean Canvas',1,'2015-11-13 13:03:46',3,'leancanvas'),(2,'Analytics',1,'2022-09-13 07:46:15',4,'idea'),(3,'Users',1,'2022-09-13 07:49:33',4,'idea'),(5,'Budget',2,'2022-10-18 08:39:40',5,'idea');
/*!40000 ALTER TABLE `zp_canvas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_canvas_items`
--

DROP TABLE IF EXISTS `zp_canvas_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_canvas_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assumptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conclusion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `box` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `canvasId` int DEFAULT NULL,
  `sortindex` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `milestoneId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_canvas_items`
--

LOCK TABLES `zp_canvas_items` WRITE;
/*!40000 ALTER TABLE `zp_canvas_items` DISABLE KEYS */;
INSERT INTO `zp_canvas_items` VALUES (1,'Another chart on Analytics','','<p>On Analytics page, more charts are needed to create more meaningful data.</p>','','idea',1,'2022-09-13 07:47:59','2022-09-13 07:47:59',2,NULL,'idea',''),(2,'Display Data montly ','','<p>Would make more sense if data are displayed montly. Instead of random</p>','','idea',1,'2022-09-13 07:49:11','2022-09-13 07:49:11',2,NULL,'idea',''),(3,'Delete button','','<p>If there was ways of delete permently my account. That would be great</p>','','research',1,'2022-09-13 07:50:08','2022-09-13 07:50:08',3,NULL,'idea',''),(4,'More profile info needed','','<p>I think we should have more profile information displayed</p>','','idea',1,'2022-09-13 07:51:11','2022-09-13 07:51:11',3,NULL,'idea',''),(6,'Revise the budget','','','','idea',2,'2022-10-18 08:39:50','2022-10-18 08:39:50',5,NULL,'idea','');
/*!40000 ALTER TABLE `zp_canvas_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_clients`
--

DROP TABLE IF EXISTS `zp_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internet` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_clients`
--

LOCK TABLES `zp_clients` WRITE;
/*!40000 ALTER TABLE `zp_clients` DISABLE KEYS */;
INSERT INTO `zp_clients` VALUES (1,'DRD','',0,'','','','','',NULL,NULL,'');
/*!40000 ALTER TABLE `zp_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_comment`
--

DROP TABLE IF EXISTS `zp_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_comment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `commentParent` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `moduleId` int DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_comment`
--

LOCK TABLES `zp_comment` WRITE;
/*!40000 ALTER TABLE `zp_comment` DISABLE KEYS */;
INSERT INTO `zp_comment` VALUES (1,'ticket',2,0,'2022-10-06 14:00:27',26,'<p>The first milestone is the development cycle where all development related will take place. This includes:</p>\r\n<ul>\r\n<li>Database design</li>\r\n<li>System Architecture</li>\r\n<li>Frontend development</li>\r\n<li>Backend integration</li>\r\n<li>Bug fixing (Recurring)</li>\r\n</ul>'),(2,'ticket',2,0,'2022-10-06 14:04:32',27,'<p>After development, this milestone is where all the aftermath of the project will come in. This includes:</p>\r\n<ul>\r\n<li>Dockerization, Pipelines, and Deployments.&nbsp;</li>\r\n<li>Documentation&nbsp;</li>\r\n<li>Training to the beneficiaries.</li>\r\n</ul>');
/*!40000 ALTER TABLE `zp_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_dashboard_widgets`
--

DROP TABLE IF EXISTS `zp_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_dashboard_widgets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_dashboard_widgets`
--

LOCK TABLES `zp_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `zp_dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_file`
--

DROP TABLE IF EXISTS `zp_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `module` enum('project','ticket','client','user','lead','export','private') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moduleId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_file`
--

LOCK TABLES `zp_file` WRITE;
/*!40000 ALTER TABLE `zp_file` DISABLE KEYS */;
INSERT INTO `zp_file` VALUES (1,'project',4,2,'png','15831d1dedc75e37adb53837d9556fd7','Screenshot from 2022-08-31 11-43-43','2022-09-20 06:29:13');
/*!40000 ALTER TABLE `zp_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_gcallinks`
--

DROP TABLE IF EXISTS `zp_gcallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_gcallinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colorClass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_gcallinks`
--

LOCK TABLES `zp_gcallinks` WRITE;
/*!40000 ALTER TABLE `zp_gcallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_gcallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_lead`
--

DROP TABLE IF EXISTS `zp_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_lead` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('lead','opportunity','client') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refSource` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `potentialMoney` int DEFAULT NULL,
  `actualMoney` int DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  `proposal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creatorId` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_lead`
--

LOCK TABLES `zp_lead` WRITE;
/*!40000 ALTER TABLE `zp_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_message`
--

DROP TABLE IF EXISTS `zp_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_message` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `to_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_sent` datetime DEFAULT NULL,
  `last_message` int DEFAULT '0',
  `read` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_message`
--

LOCK TABLES `zp_message` WRITE;
/*!40000 ALTER TABLE `zp_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_modulerights`
--

DROP TABLE IF EXISTS `zp_modulerights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_modulerights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module` text,
  `roleIds` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49739 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_modulerights`
--

LOCK TABLES `zp_modulerights` WRITE;
/*!40000 ALTER TABLE `zp_modulerights` DISABLE KEYS */;
INSERT INTO `zp_modulerights` VALUES (49660,'calendar/class.addEvent.php','2,4,5,3'),(49661,'calendar/class.delEvent.php','2,4,5,3'),(49662,'calendar/class.delGCal.php','2,4,5,3'),(49663,'calendar/class.editEvent.php','2,4,5,3'),(49664,'calendar/class.editGCal.php','2,4,5,3'),(49665,'calendar/class.importGCal.php','2,4,5,3'),(49666,'calendar/class.showAllGCals.php','2,4,5,3'),(49667,'calendar/class.showMyCalendar.php','2,4,5,3'),(49668,'clients/class.delClient.php','2'),(49669,'clients/class.editClient.php','2'),(49670,'clients/class.newClient.php','2'),(49671,'clients/class.showAll.php','2'),(49672,'clients/class.showClient.php','2'),(49673,'comments/class.showAll.php','2,4,5,3'),(49674,'dashboard/class.addWidget.php','2,4,5'),(49675,'dashboard/class.show.php','2,4,5,3'),(49676,'dashboard/class.widgets.php','2,4,5,3'),(49677,'files/class.showAll.php','2,4,5,3'),(49678,'general/class.footer.php','2'),(49679,'general/class.header.php','2'),(49680,'general/class.main.php','2'),(49681,'general/class.menu.php','2'),(49682,'general/class.showMenu.php','2'),(49683,'leads/class.addLead.php','2,5'),(49684,'leads/class.addLeadContact.php','2,5'),(49685,'leads/class.addReferralSource.php','2,5'),(49686,'leads/class.convertToUser.php','2,5'),(49687,'leads/class.deleteLead.php','2,5'),(49688,'leads/class.editLead.php','2,5'),(49689,'leads/class.showAll.php','2,5'),(49690,'leads/class.showLead.php','2,5'),(49691,'leads/class.statistics.php','2,5'),(49692,'leancanvas/class.delCanvas.php','2,4,5'),(49693,'leancanvas/class.delCanvasItem.php','2,4,5'),(49694,'leancanvas/class.showCanvas.php','2,4,5'),(49695,'messages/class.compose.php','2,4,5,3'),(49696,'messages/class.showAll.php','2,4,5,3'),(49697,'projects/class.delProject.php','2,4,5,3'),(49698,'projects/class.editAccount.php','2,4,5,3'),(49699,'projects/class.editProject.php','2,4,5'),(49700,'projects/class.newProject.php','2,4,5'),(49701,'projects/class.showAll.php','2,4,5,3'),(49702,'projects/class.showProject.php','2,4,5,3'),(49703,'setting/class.addMenu.php','2'),(49704,'setting/class.delMenu.php','2'),(49705,'setting/class.delRole.php','2'),(49706,'setting/class.delSystemOrg.php','2'),(49707,'setting/class.editMenu.php','2'),(49708,'setting/class.editRole.php','2'),(49709,'setting/class.editSettings.php','2'),(49710,'setting/class.editSystemOrg.php','2'),(49711,'setting/class.editTabRights.php','2'),(49712,'setting/class.menuUser.php','2'),(49713,'setting/class.newRole.php','2'),(49714,'setting/class.newSystemOrg.php','2'),(49715,'setting/class.setModuleRights.php','2'),(49716,'setting/class.showAllMenu.php','2'),(49717,'setting/class.showAllRoles.php','2'),(49718,'setting/class.showAllSubmodules.php','2'),(49719,'setting/class.showAllSystemOrg.php','2'),(49720,'setting/class.userMenu.php','2'),(49721,'tickets/class.delTicket.php','2,5'),(49722,'tickets/class.editTicket.php','2,4,5,3'),(49723,'tickets/class.newTicket.php','2,4,5,3'),(49724,'tickets/class.showAll.php','2,4,5,3'),(49725,'tickets/class.showKanban.php','2,4,5,3'),(49726,'tickets/class.showMy.php','2,4,5,3'),(49727,'tickets/class.showTicket.php','2,4,5,3'),(49728,'timesheets/class.addTime.php','2,4,5'),(49729,'timesheets/class.delTime.php','2,4,5'),(49730,'timesheets/class.editTime.php','2,4,5'),(49731,'timesheets/class.showAll.php','2,5'),(49732,'timesheets/class.showMy.php','2,4,5'),(49733,'users/class.delUser.php','2'),(49734,'users/class.editOwn.php','2,4,5,3'),(49735,'users/class.editUser.php','2'),(49736,'users/class.newUser.php','2'),(49737,'users/class.showAll.php','2'),(49738,'users/class.showUser.php','2,3');
/*!40000 ALTER TABLE `zp_modulerights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_note`
--

DROP TABLE IF EXISTS `zp_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_note` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_note`
--

LOCK TABLES `zp_note` WRITE;
/*!40000 ALTER TABLE `zp_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_projects`
--

DROP TABLE IF EXISTS `zp_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `timelineFrom` date DEFAULT NULL,
  `timelineTo` date DEFAULT NULL,
  `state` int DEFAULT NULL,
  `hourBudget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dollarBudget` int DEFAULT NULL,
  `active` int DEFAULT NULL,
  `psettings` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_projects`
--

LOCK TABLES `zp_projects` WRITE;
/*!40000 ALTER TABLE `zp_projects` DISABLE KEYS */;
INSERT INTO `zp_projects` VALUES (4,'Logistics System',1,'<p>A logistics system (LS) is a network of organizations, people, activities, information, and resources involved in the physical flow of products from supplier to customer.</p>','2022-10-12','2022-10-28',0,'2000',100,NULL,NULL),(5,'Petty Cash System',1,'<p>The Petty Cash System(PCS) is an internal system that different levels of DRD will use to manage, monitor, and report the petty cash flow of the institution.</p>\r\n<p>The project is divided into <strong>2</strong> Milestones which are:</p>\r\n<ul>\r\n<li><strong>Development Process</strong></li>\r\n<li><strong> Dev Ops, Documentation and Training</strong>.</li>\r\n</ul>\r\n<p>Inside the Milestones, the tasks are divided into <strong>3</strong> main sprints:</p>\r\n<ul>\r\n<li><strong>First Sprint:</strong> Which has Local setups, Databases, and UI Development.</li>\r\n<li><strong>Second Sprint:&nbsp;</strong>Backend Developement.</li>\r\n<li><strong>Third Sprint</strong>: DevOps, Testing and Documentation.&nbsp;</li>\r\n</ul>\r\n<p>The following acronyms are keywords used to describe the tasks:</p>\r\n<ul>\r\n<li><strong>UI</strong>: User Interface</li>\r\n<li><strong>BE</strong>: Backend</li>\r\n<li><strong>SA:&nbsp;</strong>System Architecture</li>\r\n<li><strong>BUG:&nbsp;</strong>Bug</li>\r\n<li><strong>SA:&nbsp;</strong>Software Testing</li>\r\n<li><strong>DO:&nbsp;</strong>DevOps operations</li>\r\n<li><strong>FT:&nbsp;</strong>Feature</li>\r\n</ul>','2022-10-15','2022-11-03',0,'120',0,NULL,NULL);
/*!40000 ALTER TABLE `zp_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_punch_clock`
--

DROP TABLE IF EXISTS `zp_punch_clock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_punch_clock` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `minutes` int DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `punchIn` int DEFAULT NULL,
  PRIMARY KEY (`id`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_punch_clock`
--

LOCK TABLES `zp_punch_clock` WRITE;
/*!40000 ALTER TABLE `zp_punch_clock` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_punch_clock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_read`
--

DROP TABLE IF EXISTS `zp_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_read` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `module` enum('ticket','message') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moduleId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_read`
--

LOCK TABLES `zp_read` WRITE;
/*!40000 ALTER TABLE `zp_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_relationuserproject`
--

DROP TABLE IF EXISTS `zp_relationuserproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_relationuserproject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `projectId` int DEFAULT NULL,
  `wage` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_relationuserproject`
--

LOCK TABLES `zp_relationuserproject` WRITE;
/*!40000 ALTER TABLE `zp_relationuserproject` DISABLE KEYS */;
INSERT INTO `zp_relationuserproject` VALUES (91,3,4,NULL),(92,2,4,NULL),(93,4,4,NULL),(94,1,4,NULL),(98,5,5,NULL),(99,2,5,NULL),(100,1,5,NULL);
/*!40000 ALTER TABLE `zp_relationuserproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_roles`
--

DROP TABLE IF EXISTS `zp_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sysOrg` int DEFAULT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_roles`
--

LOCK TABLES `zp_roles` WRITE;
/*!40000 ALTER TABLE `zp_roles` DISABLE KEYS */;
INSERT INTO `zp_roles` VALUES (2,'admin','Administrators',14,'zypro'),(3,'user','Clients',14,'zypro'),(4,'developer','Developer',14,'zypro'),(5,'manager','Manager',14,'zypro');
/*!40000 ALTER TABLE `zp_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_settings`
--

DROP TABLE IF EXISTS `zp_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_settings` (
  `key` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_settings`
--

LOCK TABLES `zp_settings` WRITE;
/*!40000 ALTER TABLE `zp_settings` DISABLE KEYS */;
INSERT INTO `zp_settings` VALUES ('companysettings.language','en-US'),('companysettings.logoPath','/userfiles/81af1f3fb455410c7c49b4a54e7b50fe.png'),('companysettings.primarycolor','#1b75bb'),('companysettings.secondarycolor','#81b1a8'),('companysettings.sitename','Defence Research and Development'),('companysettings.telemetry.active','true'),('companysettings.telemetry.anonymousId','3b138c11-0128-494d-9004-bb043fad5695'),('companysettings.telemetry.lastUpdate','2022-10-18'),('db-version','2.1.7'),('projectsettings.4.commentOrder','0'),('projectsettings.4.ticketlabels','a:6:{i:3;a:5:{s:4:\"name\";s:3:\"New\";s:5:\"class\";s:10:\"label-info\";s:10:\"statusType\";s:3:\"NEW\";s:9:\"kanbanCol\";b:1;s:7:\"sortKey\";i:1;}i:1;a:5:{s:4:\"name\";s:7:\"Blocked\";s:5:\"class\";s:15:\"label-important\";s:10:\"statusType\";s:10:\"INPROGRESS\";s:9:\"kanbanCol\";b:1;s:7:\"sortKey\";i:2;}i:4;a:5:{s:4:\"name\";s:11:\"In Progress\";s:5:\"class\";s:13:\"label-warning\";s:10:\"statusType\";s:10:\"INPROGRESS\";s:9:\"kanbanCol\";b:1;s:7:\"sortKey\";i:3;}i:2;a:5:{s:4:\"name\";s:20:\"Waiting for Approval\";s:5:\"class\";s:13:\"label-warning\";s:10:\"statusType\";s:10:\"INPROGRESS\";s:9:\"kanbanCol\";b:1;s:7:\"sortKey\";i:4;}i:0;a:5:{s:4:\"name\";s:4:\"Done\";s:5:\"class\";s:13:\"label-success\";s:10:\"statusType\";s:4:\"DONE\";s:9:\"kanbanCol\";b:1;s:7:\"sortKey\";i:5;}i:-1;a:5:{s:4:\"name\";s:8:\"Archived\";s:5:\"class\";s:13:\"label-default\";s:10:\"statusType\";s:4:\"DONE\";s:9:\"kanbanCol\";b:0;s:7:\"sortKey\";i:6;}}'),('projectsettings.4.ticketLayout','0'),('projectsettings.5.commentOrder','0'),('projectsettings.5.ticketLayout','0'),('usersettings.1.lastProject','4'),('usersettings.2.lastProject','5'),('usersettings.3.lastProject','4'),('usersettings.4.lastProject','4'),('usersettings.5.lastProject','5');
/*!40000 ALTER TABLE `zp_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_sprints`
--

DROP TABLE IF EXISTS `zp_sprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_sprints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectId` int DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_sprints`
--

LOCK TABLES `zp_sprints` WRITE;
/*!40000 ALTER TABLE `zp_sprints` DISABLE KEYS */;
INSERT INTO `zp_sprints` VALUES (1,4,'First','2022-09-13 00:00:00','2022-09-26 00:00:00'),(2,5,'First Sprint ','2022-10-06 00:00:00','2022-10-14 00:00:00'),(3,5,'Second Sprint','2022-10-17 00:00:00','2022-10-24 00:00:00'),(4,5,'Third Sprint','2022-10-25 00:00:00','2022-10-31 00:00:00');
/*!40000 ALTER TABLE `zp_sprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_stats`
--

DROP TABLE IF EXISTS `zp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_stats` (
  `sprintId` int DEFAULT NULL,
  `projectId` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sum_todos` int DEFAULT NULL,
  `sum_open_todos` int DEFAULT NULL,
  `sum_progres_todos` int DEFAULT NULL,
  `sum_closed_todos` int DEFAULT NULL,
  `sum_planned_hours` float DEFAULT NULL,
  `sum_estremaining_hours` float DEFAULT NULL,
  `sum_logged_hours` float DEFAULT NULL,
  `sum_points` int DEFAULT NULL,
  `sum_points_done` int DEFAULT NULL,
  `sum_points_progress` int DEFAULT NULL,
  `sum_points_open` int DEFAULT NULL,
  `sum_todos_xs` int DEFAULT NULL,
  `sum_todos_s` int DEFAULT NULL,
  `sum_todos_m` int DEFAULT NULL,
  `sum_todos_l` int DEFAULT NULL,
  `sum_todos_xl` int DEFAULT NULL,
  `sum_todos_xxl` int DEFAULT NULL,
  `sum_todos_none` int DEFAULT NULL,
  `tickets` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `daily_avg_hours_booked_todo` float DEFAULT NULL,
  `daily_avg_hours_booked_point` float DEFAULT NULL,
  `daily_avg_hours_planned_todo` float DEFAULT NULL,
  `daily_avg_hours_planned_point` float DEFAULT NULL,
  `daily_avg_hours_remaining_point` float DEFAULT NULL,
  `daily_avg_hours_remaining_todo` float DEFAULT NULL,
  `sum_teammembers` int DEFAULT NULL,
  KEY `projectId` (`projectId`,`sprintId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_stats`
--

LOCK TABLES `zp_stats` WRITE;
/*!40000 ALTER TABLE `zp_stats` DISABLE KEYS */;
INSERT INTO `zp_stats` VALUES (-1,3,'2022-09-11 00:00:00',1,1,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,1,'9',NULL,NULL,0,NULL,NULL,0,1),(-1,3,'2022-09-12 00:00:00',1,1,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,1,'9',NULL,NULL,0,NULL,NULL,0,1),(1,4,'2022-09-12 00:00:00',5,3,2,0,0,0,NULL,8,0,6,2,0,1,2,0,0,0,2,'10,11,12,13,14',NULL,NULL,0,0,0,0,2),(-1,4,'2022-09-12 00:00:00',5,3,2,0,0,0,NULL,8,0,6,2,0,1,2,0,0,0,2,'10,11,12,13,14',NULL,NULL,0,0,0,0,2),(1,4,'2022-09-13 00:00:00',6,3,2,1,0,0,NULL,10,3,5,2,0,2,2,0,0,0,2,'10,11,12,13,14,19',NULL,NULL,0,0,0,0,4),(-1,4,'2022-09-13 00:00:00',10,7,2,1,0,0,NULL,10,3,5,2,0,2,2,0,0,0,6,'10,11,12,13,14,15,16,17,18,19',NULL,NULL,0,0,0,0,4),(-1,3,'2022-09-13 00:00:00',1,1,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,1,'9',NULL,NULL,0,NULL,NULL,0,1),(1,4,'2022-09-14 00:00:00',8,4,2,2,0,0,0.35,14,6,5,3,1,2,3,0,0,0,2,'10,11,12,13,14,19,23,25',0.04,0.02,0,0,0,0,4),(-1,4,'2022-09-14 00:00:00',14,10,2,2,0,0,0.35,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',0.02,0.02,0,0,0,0,4),(1,4,'2022-09-19 00:00:00',8,4,2,2,0,0,0.35,14,6,5,3,1,2,3,0,0,0,2,'10,11,12,13,14,19,23,25',0.04,0.02,0,0,0,0,4),(-1,4,'2022-09-19 00:00:00',14,10,2,2,0,0,0.35,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',0.02,0.02,0,0,0,0,4),(-1,4,'2022-09-27 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(-1,4,'2022-10-05 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(-1,5,'2022-10-06 00:00:00',21,21,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,20,'28,29,30,31,32,33,34,35,39,43,47,50,51,52,53,54,55,56,57,58,59',NULL,NULL,0,0,0,0,4),(-1,4,'2022-10-06 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(2,5,'2022-10-09 00:00:00',1,1,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,0,'28',NULL,NULL,0,0,0,0,5),(-1,5,'2022-10-09 00:00:00',21,21,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,20,'28,29,30,31,32,33,34,35,39,43,47,50,51,52,53,54,55,56,57,58,59',NULL,NULL,0,0,0,0,5),(-1,4,'2022-10-09 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(2,5,'2022-10-10 00:00:00',1,1,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,0,'28',NULL,NULL,0,0,0,0,5),(-1,5,'2022-10-10 00:00:00',21,21,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,20,'28,29,30,31,32,33,34,35,39,43,47,50,51,52,53,54,55,56,57,58,59',NULL,NULL,0,0,0,0,5),(-1,4,'2022-10-10 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(-1,4,'2022-10-11 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(2,5,'2022-10-11 00:00:00',1,1,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,0,'28',NULL,NULL,0,0,0,0,4),(-1,5,'2022-10-11 00:00:00',21,21,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,20,'28,29,30,31,32,33,34,35,39,43,47,50,51,52,53,54,55,56,57,58,59',NULL,NULL,0,0,0,0,4),(-1,4,'2022-10-17 00:00:00',14,10,2,2,0,0,134.62,17,6,5,6,1,2,4,0,0,0,7,'10,11,12,13,14,15,16,17,18,19,22,23,24,25',9.62,7.92,0,0,0,0,4),(-1,5,'2022-10-17 00:00:00',21,21,0,0,0,0,NULL,3,0,0,3,0,0,1,0,0,0,20,'28,29,30,31,32,33,34,35,39,43,47,50,51,52,53,54,55,56,57,58,59',NULL,NULL,0,0,0,0,3);
/*!40000 ALTER TABLE `zp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_submodulerights`
--

DROP TABLE IF EXISTS `zp_submodulerights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_submodulerights` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submodule` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleIds` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_submodulerights`
--

LOCK TABLES `zp_submodulerights` WRITE;
/*!40000 ALTER TABLE `zp_submodulerights` DISABLE KEYS */;
INSERT INTO `zp_submodulerights` VALUES (1,'comments-generalComment','COMMENTS','comments','generalComment.sub.php','2,4,5,3'),(2,'dashboard-calendar','CALENDAR','dashboard','calendar.sub.php','2,4,5,3'),(3,'dashboard-escalatingTickets','ESCALATING_TICKETS','dashboard','escalatingTickets.sub.php','2,4,5'),(4,'dashboard-hotLeads','HOT_LEADS','dashboard','hotLeads.sub.php','2,4,5'),(5,'dashboard-myHours','MY_HOURS','dashboard','myHours.sub.php','2,4,5'),(6,'dashboard-myProjects','MY_PROJECTS','dashboard','myProjects.sub.php','2,4,5'),(7,'dashboard-myTickets','MY_TICKETS','dashboard','myTickets.sub.php','2,4,5,3'),(8,'dashboard-notes','NOTES','dashboard','notes.sub.php','2,4,5,3'),(9,'dashboard-projectsProgress','PROJECT_PROGRESS','dashboard','projectsProgress.sub.php','2,4,5,3'),(10,'dashboard-statistics','STATISTICS','dashboard','statistics.sub.php','2,4,5'),(11,'dashboard-supportInfo','SUPPORT_INFO','dashboard','supportInfo.sub.php','2,4,5,3'),(12,'dashboard-timeTracker','','dashboard','timeTracker.sub.php','2,4,5'),(13,'projects-budgeting','BUDGETING','projects','budgeting.sub.php','2,5'),(14,'projects-tickets','TICKETS','projects','tickets.sub.php','2,4,5,3'),(15,'projects-timeline','TIMELINE','projects','timeline.sub.php','2,4,5,3'),(16,'projects-timesheet','TIMESHEET','projects','timesheet.sub.php','2,4,5'),(17,'tickets-assignUsers','ASSIGN_USERS','tickets','assignUsers.sub.php',NULL),(18,'tickets-attachments','FILES','tickets','attachments.sub.php','2,4,5,3'),(19,'tickets-comments','COMMENTS','tickets','comments.sub.php','2,4,5,3'),(20,'tickets-technicalDetails','TECHNICAL_DETAILS','tickets','technicalDetails.sub.php','2,4,5,3'),(21,'tickets-ticketDetails','TICKET_DETAILS','tickets','ticketDetails.sub.php','2,4,5,3'),(22,'tickets-ticketHistory','TICKET_HISTORY','tickets','ticketHistory.sub.php','2,4,5'),(23,'tickets-timesheet','TIMESHEET','tickets','timesheet.sub.php','2,4,5'),(24,'tickets-subTasks','SUBTASKS','tickets','subTasks.sub.php','2,4,5,3');
/*!40000 ALTER TABLE `zp_submodulerights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_tickethistory`
--

DROP TABLE IF EXISTS `zp_tickethistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_tickethistory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `ticketId` int DEFAULT NULL,
  `changeType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changeValue` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_tickethistory`
--

LOCK TABLES `zp_tickethistory` WRITE;
/*!40000 ALTER TABLE `zp_tickethistory` DISABLE KEYS */;
INSERT INTO `zp_tickethistory` VALUES (1,1,14,'type','task','2022-09-13 09:31:05'),(2,1,14,'description','<p>Make sure the pipelines (CD/CD) are all set up. Load balancing is also set up.</p>','2022-09-13 09:31:05'),(3,1,11,'status','4','2022-09-13 09:31:17'),(4,1,10,'status','1','2022-09-13 09:31:21'),(5,1,11,'status','2','2022-09-13 09:31:57'),(6,1,11,'status','0','2022-09-13 09:32:11'),(7,1,10,'status','2','2022-09-13 09:32:13'),(8,1,19,'type','task','2022-09-13 09:54:00'),(9,1,19,'status','2','2022-09-13 09:54:09'),(10,1,19,'priority','4','2022-09-13 09:54:21'),(11,2,13,'type','task','2022-09-14 14:28:06'),(12,2,23,'type','task','2022-09-14 14:40:04'),(13,2,23,'editors','3','2022-09-14 14:40:04'),(14,2,25,'type','task','2022-09-14 14:42:03'),(15,2,25,'deadline','2022-10-16 00:00:00','2022-09-14 14:42:03'),(16,2,25,'editors','4','2022-09-14 14:42:03'),(17,2,24,'type','task','2022-09-14 14:42:28'),(18,2,24,'deadline','2022-10-16 00:00:00','2022-09-14 14:42:28'),(19,2,23,'status','0','2022-09-14 14:42:57'),(20,3,19,'status','0','2022-09-20 08:34:54'),(21,3,19,'status','2','2022-09-20 08:34:58'),(22,2,28,'type','task','2022-10-06 14:16:39'),(23,2,29,'headline','SA: Database Design','2022-10-06 14:17:36'),(24,2,29,'type','task','2022-10-06 14:17:36'),(25,2,34,'headline','UI: Analytics/Reports Page','2022-10-06 14:27:56'),(26,2,34,'type','task','2022-10-06 14:27:56'),(27,2,38,'deadline','Invalid date','2022-10-06 14:29:09'),(28,2,35,'type','task','2022-10-06 14:29:18'),(29,2,50,'headline','BE: Analytics Integration','2022-10-06 14:52:59'),(30,2,50,'type','task','2022-10-06 14:52:59'),(31,2,59,'headline','DO: Deployment','2022-10-06 14:58:12'),(32,2,59,'type','task','2022-10-06 14:58:12'),(33,2,28,'editors','1','2022-10-07 11:07:31'),(34,2,28,'editors','2','2022-10-07 11:07:47');
/*!40000 ALTER TABLE `zp_tickethistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_tickets`
--

DROP TABLE IF EXISTS `zp_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectId` int DEFAULT NULL,
  `headline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `acceptanceCriteria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  `dateToFinish` datetime DEFAULT NULL,
  `priority` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `os` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependingTicketId` int DEFAULT NULL,
  `editFrom` datetime DEFAULT NULL,
  `editTo` datetime DEFAULT NULL,
  `editorId` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planHours` float DEFAULT NULL,
  `hourRemaining` float DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production` int DEFAULT '0',
  `staging` int DEFAULT '0',
  `storypoints` float DEFAULT NULL,
  `sprint` int DEFAULT NULL,
  `sortindex` bigint DEFAULT NULL,
  `kanbanSortIndex` bigint DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `milestoneid` int DEFAULT NULL,
  `leancanvasitemid` int DEFAULT NULL,
  `retrospectiveid` int DEFAULT NULL,
  `ideaid` int DEFAULT NULL,
  `zp_ticketscol` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProjectUserId` (`projectId`,`userId`),
  KEY `StatusSprint` (`status`,`sprint`),
  KEY `Sorting` (`sortindex`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_tickets`
--

LOCK TABLES `zp_tickets` WRITE;
/*!40000 ALTER TABLE `zp_tickets` DISABLE KEYS */;
INSERT INTO `zp_tickets` VALUES (9,3,'Getting Started with Leantime','Look around and make yourself familiar with the system. ','','2015-11-30 00:00:00','1969-12-31 00:00:00',NULL,3,1,NULL,NULL,NULL,NULL,'',NULL,NULL,'1969-12-31 00:00:00','1969-12-31 00:00:00','1',0,0,'Story',0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,4,'API: Project Setup','<p>Project Setup will be conducted by the backend team. Determining backend languages and databases to use and set them up.</p>','','2022-09-13 09:23:52','0000-00-00 00:00:00','1',2,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,3,1,0,100,'',NULL,NULL,NULL,NULL,NULL),(11,4,'Architecture design, Database design , Devops process design and others','<p>Architecture design, Database design , Devops process design and others</p>','','2022-09-13 09:25:13','0000-00-00 00:00:00','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'task',0,0,3,1,0,0,'',NULL,NULL,NULL,NULL,NULL),(12,4,'Web: Project setup','<p>Web: Project setup</p>','','2022-09-13 09:26:05','0000-00-00 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,2,1,0,300,'',NULL,NULL,NULL,NULL,NULL),(13,4,'Wireframes and mockups design','','','2022-09-13 09:30:26','0000-00-00 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'task',0,0,0,1,0,200,'',NULL,NULL,NULL,NULL,NULL),(14,4,'Dev Ops: Project setup','<p>Make sure the pipelines (CD/CD) are all set up. Load balancing is also set up.</p>','','2022-09-13 09:30:50','0000-00-00 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'task',0,0,1,1,0,100,'',NULL,NULL,NULL,NULL,NULL),(15,4,'Application Analyitcs','','','2022-09-13 09:35:30','2022-09-16 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(16,4,'Excel Export','','','2022-09-13 09:36:08','2022-09-16 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(17,4,'Re-Design ','','','2022-09-13 09:36:18','2022-09-16 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(18,4,'Front-end: System Settings','','','2022-09-13 09:36:44','2022-09-16 00:00:00','3',3,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(19,4,'Backend: System Settings','','','2022-09-13 09:36:57','2022-09-16 00:00:00','4',2,1,NULL,NULL,NULL,NULL,NULL,NULL,20,'0000-00-00 00:00:00','0000-00-00 00:00:00','1',0,0,'task',0,0,2,1,0,0,'',NULL,NULL,NULL,NULL,NULL),(20,4,'Software Development','','','2022-09-14 14:22:16','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-09-13 00:00:00','2022-10-31 00:00:00','2',0,0,'milestone',0,0,0,0,0,0,'#00814A',NULL,NULL,NULL,NULL,NULL),(21,4,'Software Testing','','','2022-09-14 14:31:13','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,20,'2022-11-01 00:00:00','2022-11-23 00:00:00','2',0,0,'milestone',0,0,0,0,0,0,'#BC3600',NULL,NULL,NULL,NULL,NULL),(22,4,'A/B Testing','','','2022-09-14 14:39:05','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,21,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,3,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(23,4,'Beta Testing','','','2022-09-14 14:39:31','0000-00-00 00:00:00','3',0,2,NULL,NULL,NULL,NULL,NULL,NULL,21,'0000-00-00 00:00:00','0000-00-00 00:00:00','3',0,0,'task',0,0,3,1,0,100,'',NULL,NULL,NULL,NULL,NULL),(24,4,'User manual','','','2022-09-14 14:41:04','2022-10-16 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,21,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(25,4,'Security test','','','2022-09-14 14:41:31','2022-10-16 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,21,'0000-00-00 00:00:00','0000-00-00 00:00:00','4',0,0,'task',0,0,0,1,0,0,'',NULL,NULL,NULL,NULL,NULL),(26,5,'Development Process Milestone','','','2022-10-06 13:58:43','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-10-10 00:00:00','2022-10-21 00:00:00','2',0,0,'milestone',0,0,0,0,0,0,'#1B76BB',NULL,NULL,NULL,NULL,NULL),(27,5,'DevOps & Documentation and Training','','','2022-10-06 14:02:08','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,26,'2022-10-24 00:00:00','2022-10-31 00:00:00','2',0,0,'milestone',0,0,0,0,0,0,'#00814A',NULL,NULL,NULL,NULL,NULL),(28,5,'Local Environment Setup','','','2022-10-06 14:15:45','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,26,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,3,2,0,0,'',NULL,NULL,NULL,NULL,NULL),(29,5,'SA: Database Design','','','2022-10-06 14:16:59','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(30,5,'UI: Setup Boiler plate ','','','2022-10-06 14:18:55','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(31,5,'UI: Login Page','','','2022-10-06 14:19:11','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(32,5,'UI: Forgot Password Page','','','2022-10-06 14:19:28','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(33,5,'UI: Reset Password Page','','','2022-10-06 14:19:41','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(34,5,'UI: Analytics/Reports Page','','','2022-10-06 14:27:12','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(35,5,'UI: Application/Request Page','','','2022-10-06 14:27:44','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(36,5,'UI: View Page','','','2022-10-06 14:28:39','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,35,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(37,5,'UI: Add Page','','','2022-10-06 14:28:50','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,35,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(38,5,'UI: Edit Page','','','2022-10-06 14:29:05','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,35,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(39,5,'UI: Categories Page','','','2022-10-06 14:29:43','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(40,5,'UI: View Page','','','2022-10-06 14:30:03','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,39,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(41,5,'UI: Edit Page','','','2022-10-06 14:30:35','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,39,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(42,5,'UI: Add Page','','','2022-10-06 14:30:52','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,39,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(43,5,'UI: Accounts Page','','','2022-10-06 14:31:28','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(44,5,'UI: View','','','2022-10-06 14:43:39','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,43,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(45,5,'UI: Add','','','2022-10-06 14:43:48','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,43,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(46,5,'UI: Edit','','','2022-10-06 14:43:57','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,43,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(47,5,'UI: Settings','','','2022-10-06 14:44:55','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(48,5,'UI: View','','','2022-10-06 14:45:13','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,47,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(49,5,'UI: Edit','','','2022-10-06 14:45:29','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,47,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'subtask',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(50,5,'BE: Analytics Integration','','','2022-10-06 14:52:24','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(51,5,'BE: Applications/Request Integration','','','2022-10-06 14:52:48','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(52,5,'BE: Categories Integration','','','2022-10-06 14:53:27','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(53,5,'BE: Accounts Integration','','','2022-10-06 14:53:43','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(54,5,'BE: Settings Integration','','','2022-10-06 14:53:57','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(55,5,'FT: Email Integration','','','2022-10-06 14:54:58','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(56,5,'ST: Local Software Testing','','','2022-10-06 14:55:28','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(57,5,'DO: Dockerization and Containerization','','','2022-10-06 14:57:00','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(58,5,'DO: Pipelines creation','','','2022-10-06 14:57:15','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'Task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL),(59,5,'DO: Deployment','','','2022-10-06 14:57:55','0000-00-00 00:00:00','3',3,2,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2',0,0,'task',0,0,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zp_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_timesheets`
--

DROP TABLE IF EXISTS `zp_timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_timesheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `ticketId` int DEFAULT NULL,
  `workDate` datetime DEFAULT NULL,
  `hours` float DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kind` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoicedEmpl` int DEFAULT NULL,
  `invoicedComp` int DEFAULT NULL,
  `invoicedEmplDate` datetime DEFAULT NULL,
  `invoicedCompDate` datetime DEFAULT NULL,
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`userId`,`ticketId`,`workDate`,`kind`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_timesheets`
--

LOCK TABLES `zp_timesheets` WRITE;
/*!40000 ALTER TABLE `zp_timesheets` DISABLE KEYS */;
INSERT INTO `zp_timesheets` VALUES (1,2,14,'2022-09-14 00:00:00',0.35,NULL,'GENERAL_BILLABLE',NULL,NULL,NULL,NULL,NULL),(2,2,19,'2022-09-14 00:00:00',134.27,NULL,'GENERAL_BILLABLE',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zp_timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_user`
--

DROP TABLE IF EXISTS `zp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastlogin` datetime DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `expires` datetime DEFAULT NULL,
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessiontime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wage` int DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clientId` int DEFAULT NULL,
  `notifications` int DEFAULT NULL,
  `pwReset` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwResetExpiration` datetime DEFAULT NULL,
  `pwResetCount` int DEFAULT NULL,
  `forcePwReset` tinyint DEFAULT NULL,
  `lastpwd_change` datetime DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twoFAEnabled` tinyint(1) DEFAULT '0',
  `twoFASecret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_user`
--

LOCK TABLES `zp_user` WRITE;
/*!40000 ALTER TABLE `zp_user` DISABLE KEYS */;
INSERT INTO `zp_user` VALUES (1,'vianosone@gmail.com','$2y$10$AaL9g6.zEexUCYUmpZ53VOYfJzE6WjfmhfKAbXrZwjDoAEcx8p7ZS','JMV','Sendanyoye','','','2022-10-06 08:41:29','a',NULL,'50','','1665045689',0,0,NULL,1,1,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','a:2:{s:6:\"modals\";a:7:{s:9:\"dashboard\";i:1;s:10:\"newProject\";i:1;s:12:\"showProjects\";i:1;s:6:\"kanban\";i:1;s:7:\"backlog\";i:1;s:9:\"ideaBoard\";i:1;s:7:\"roadmap\";s:1:\"1\";}s:5:\"views\";a:1:{s:7:\"roadmap\";s:5:\"Month\";}}',0,NULL,'2022-09-12 14:59:38',NULL),(2,'ekagabo@minadef.gov.rw','$2y$10$aQfdCRWAZN9tv/9hlPjPEuyZoZpHKfhBQG5D1HL5N8nqYF8Stdl/m','Elie','Kagabo','0789794261','','2022-10-18 08:51:36','A',NULL,'50','c0b17217f226853c710e0b8f4ee94435b2251af4-2ae3bb6061a59bca700e08a9e2b9aedc6860b436','1666083096',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,'a:2:{s:6:\"modals\";a:7:{s:9:\"dashboard\";s:1:\"1\";s:7:\"roadmap\";s:1:\"1\";s:6:\"kanban\";i:1;s:9:\"ideaBoard\";s:1:\"1\";s:12:\"showProjects\";s:1:\"1\";s:11:\"showClients\";s:1:\"1\";s:10:\"newProject\";i:1;}s:5:\"views\";a:1:{s:7:\"roadmap\";s:5:\"Month\";}}',0,NULL,NULL,''),(3,'imaniragabajob4@gmail.com','$2y$10$F62jGkMyiWfmGtb1F6gaWu3pCuVCZvhfcQnMZkTh62Ilm2PVwoTTC','Job','Imaniragaba','','','2022-10-11 12:28:47','a',NULL,'60','','1665491327',0,0,NULL,1,1,NULL,NULL,NULL,NULL,NULL,'a:2:{s:6:\"modals\";a:5:{s:9:\"dashboard\";s:1:\"1\";s:6:\"kanban\";i:1;s:7:\"roadmap\";s:1:\"1\";s:9:\"ideaBoard\";s:1:\"1\";s:12:\"showProjects\";s:1:\"1\";}s:5:\"views\";a:1:{s:7:\"roadmap\";s:5:\"Month\";}}',0,NULL,NULL,''),(4,'joyeusemah@gmail.com','$2y$10$C/sXwQqK8.6k3ZtUUZ2cYeY6QLodLMpZ5dYmiRicN3Gee802WsZ6q','Joyeuse','Mahoro','','','2022-10-12 09:28:54','a',NULL,'20','','1665566934',0,0,NULL,1,1,NULL,NULL,NULL,NULL,NULL,'a:1:{s:6:\"modals\";a:1:{s:9:\"dashboard\";s:1:\"1\";}}',0,NULL,NULL,''),(5,'hello@gmail.com','$2y$10$TFJ9Vj/Hu14t7TV1VPoZ/O4.HHryBcuiyKoZq9igp1CVzIoyICFFm','Hello','','','','2022-10-12 06:20:26','a',NULL,'60','','1665555626',0,0,NULL,1,1,NULL,NULL,NULL,NULL,NULL,'a:2:{s:6:\"modals\";a:5:{s:6:\"kanban\";i:1;s:9:\"dashboard\";i:1;s:7:\"roadmap\";i:1;s:12:\"showProjects\";i:1;s:9:\"ideaBoard\";s:1:\"1\";}s:5:\"views\";a:1:{s:7:\"roadmap\";s:5:\"Month\";}}',0,NULL,NULL,'');
/*!40000 ALTER TABLE `zp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_wiki`
--

DROP TABLE IF EXISTS `zp_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_wiki` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `projectId` int DEFAULT NULL,
  `authorId` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_wiki`
--

LOCK TABLES `zp_wiki` WRITE;
/*!40000 ALTER TABLE `zp_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_wiki_articles`
--

DROP TABLE IF EXISTS `zp_wiki_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_wiki_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `headline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorId` int DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_wiki_articles`
--

LOCK TABLES `zp_wiki_articles` WRITE;
/*!40000 ALTER TABLE `zp_wiki_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_wiki_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_wiki_categories`
--

DROP TABLE IF EXISTS `zp_wiki_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_wiki_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_wiki_categories`
--

LOCK TABLES `zp_wiki_categories` WRITE;
/*!40000 ALTER TABLE `zp_wiki_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_wiki_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zp_wiki_comments`
--

DROP TABLE IF EXISTS `zp_wiki_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zp_wiki_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `userId` int DEFAULT NULL,
  `articleId` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `commentParent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zp_wiki_comments`
--

LOCK TABLES `zp_wiki_comments` WRITE;
/*!40000 ALTER TABLE `zp_wiki_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `zp_wiki_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18  8:59:30
