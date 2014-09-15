CREATE DATABASE  IF NOT EXISTS `lfg` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lfg`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: lfg
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `ad_hoc`
--

DROP TABLE IF EXISTS `ad_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_hoc` (
  `ad_hoc_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `client_campaign_id` int(11) DEFAULT NULL,
  `ad_hoc_name` varchar(255) DEFAULT NULL,
  `ad_hoc_quarter` tinyint(4) DEFAULT NULL,
  `ad_hoc_year` smallint(4) DEFAULT NULL,
  PRIMARY KEY (`ad_hoc_id`),
  KEY `client_campaigns_id` (`client_campaign_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_hoc`
--

LOCK TABLES `ad_hoc` WRITE;
/*!40000 ALTER TABLE `ad_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `address_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `source_id` (`source_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (0000000001,9,'bozo','Jonh Smitrh','PimCo',NULL,'1 Main','Suite 300','Ny','Ny','99999'),(0000000002,9,'bozo2','John Jones','PimCo',NULL,'1 Main','Suite 400','Ny','Ny','99999'),(0000000003,8,'bozo3','John Jones','PimCo',NULL,'1 Main','Suite 400','Ny','Ny','99999'),(0000000004,9,'bozo4','John Jones','PimCo',NULL,'1 Main','Suite 400','Ny','Ny','99999'),(0000000006,9,'chester','','','','','','','',''),(0000000007,9,'chester1','','','','','','','',''),(0000000008,9,'chester3','','','Richard Holleran','15 Anthony Dr','','Londonderry','NH','03053'),(0000000009,9,'JJ','','','JJ','1 main','','NY','NY','90999'),(0000000010,9,'fred','freds','freds co','fred','1 main','suite 200','Littletown','NH','04044'),(0000000011,9,'chester6','LL','LLC','Richard Holleran','15 Anthony Dr','','Londonderry','NH','03053'),(0000000012,9,'new guy','h','h','h','129 nave st','','NY','NY','99999'),(0000000015,11,'My office','Impact Marketing Specialists','IMS Services','Melissa','19093 Pauling','','Foothill Ranch','CA','92626'),(0000000016,11,'IMS Office','Impact Marketing Specialists','IMS Services','Melissa','19093 Pauling','','Foothill Ranch','CA','92626');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `calendar_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `campaign_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `campaign_category_id` int(10) unsigned zerofill DEFAULT NULL,
  `implementation_guide` varchar(255) DEFAULT NULL COMMENT 'file link',
  `campaign_form` varchar(255) DEFAULT NULL COMMENT 'file link',
  `order_form` varchar(255) DEFAULT NULL,
  `collateral_id` int(10) unsigned DEFAULT NULL,
  `campaign_active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`campaign_id`),
  KEY `order` (`order_form`),
  KEY `category` (`campaign_category_id`),
  CONSTRAINT `category` FOREIGN KEY (`campaign_category_id`) REFERENCES `category` (`campaign_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (0000000001,'Increase Participation',0000000001,'Increase Participation IG.pdf','Increase Participation.pdf','Increase Participation OF.pdf',NULL,1),(0000000002,'Planning Ahead: Basics and Benefits',0000000001,'Basics and Benefits IG.pdf','Basics and Benefits.pdf','Basics and Benefits OF.pdf',NULL,1),(0000000003,'Increase Contributions',0000000002,'Increase Contributions IG.pdf','Increase Contributions.pdf','Increase Contributions OF.pdf',NULL,1),(0000000004,'Save More',0000000002,NULL,NULL,NULL,NULL,1),(0000000005,'Retirement Reality - Realize Your Dreams\r\n',0000000002,'Realize Your Retirement Savings Dreams IG.pdf','Realize Your Retirement Savings Dreams.pdf','Realize Your Retirement Savings Dreams OF.pdf',NULL,1),(0000000006,'Save For Retirement Week',0000000002,'campaign','Save For Retirement Week.pdf','Save For Retirement Week OF.pdf',NULL,1),(0000000007,'Annual Review',0000000003,'Annual Review IG.pdf','Annual Review.pdf','Annual Review OF.pdf',NULL,1),(0000000008,'Asset Allocation',0000000003,'Asset Allocation IG.pdf','Asset Allocation.pdf','Asset Allocation OF.pdf',NULL,1),(0000000009,'Asset Consolidation',0000000003,NULL,NULL,NULL,NULL,1),(0000000010,'Retirement Reality - Envision Your Future',0000000003,'Retirement Reality IG.pdf','Retirement Reality.pdf','Retirement Reality OF.pdf',NULL,1),(0000000011,'Market Volatility',0000000003,NULL,NULL,NULL,NULL,1),(0000000012,'Generational Investor',0000000003,NULL,NULL,NULL,NULL,1),(0000000013,'Retirement Readiness Day',0000000004,NULL,NULL,NULL,NULL,1),(0000000014,'Retirement Reality - Get Real',0000000004,NULL,NULL,NULL,NULL,1),(0000000015,'Retirement Reality - Take Charge',0000000004,NULL,NULL,NULL,NULL,1),(0000000016,'Rollover IRA',0000000004,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `campaign_category_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `campaign_category_name` varchar(255) DEFAULT NULL,
  `campaign_category_active` tinyint(3) unsigned DEFAULT NULL,
  `campaign_category_color` varchar(7) DEFAULT NULL COMMENT '#hex color for highlights',
  PRIMARY KEY (`campaign_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0000000001,'Get Started',1,'#9A9200'),(0000000002,'Save More',1,'#005F8A'),(0000000003,'Invest Wisely',1,'#E36E00'),(0000000004,'Step Into Retirement',1,'#33B373'),(0000000005,'Manage Life Events',1,'#920000'),(0000000006,'Service',1,'#405A5C'),(0000000007,'Ad Hoc',1,'#CC6699');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_campaigns`
--

DROP TABLE IF EXISTS `client_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_campaigns` (
  `client_campaign_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned zerofill DEFAULT NULL,
  `result_id` int(10) unsigned zerofill DEFAULT NULL,
  `client_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `presenter_name` varchar(255) DEFAULT NULL,
  `presenter_firm` varchar(255) DEFAULT NULL,
  `presentation_date` varchar(255) DEFAULT NULL,
  `plan_year` varchar(20) DEFAULT NULL,
  `start_quarter` tinyint(1) DEFAULT NULL,
  `education` tinyint(1) DEFAULT NULL COMMENT '0=policy 1=',
  `plan_403b` tinyint(1) DEFAULT '0',
  `plan_457` tinyint(1) DEFAULT '0',
  `plan_defined` tinyint(1) DEFAULT '0',
  `plan_401k` tinyint(1) DEFAULT '0',
  `plan_401a` tinyint(1) DEFAULT '0',
  `plan_single` tinyint(1) DEFAULT NULL,
  `plan_multiple` tinyint(1) DEFAULT NULL,
  `goal_participation` tinyint(1) DEFAULT '0',
  `goal_deferral` tinyint(1) DEFAULT '0',
  `goal_allocation` tinyint(1) DEFAULT '0',
  `goal_balance` tinyint(1) DEFAULT '0',
  `goal_consolidation` tinyint(1) DEFAULT '0',
  `goal_not` tinyint(1) DEFAULT '0',
  `contribution_sal` tinyint(1) DEFAULT '0',
  `contribution_sal_match` tinyint(1) DEFAULT '0',
  `contribution_one` tinyint(1) DEFAULT '0',
  `contribution_sep` tinyint(4) DEFAULT '0',
  `contribution_403b` tinyint(4) DEFAULT '0',
  `contribution_401k` tinyint(4) DEFAULT '0',
  `contribution_457` tinyint(4) DEFAULT '0',
  `multiple_other` tinyint(4) DEFAULT NULL,
  `multiple_assets` tinyint(4) DEFAULT NULL,
  `automatic_enrollment` tinyint(4) DEFAULT '0',
  `automatic_escalation` tinyint(4) DEFAULT '0',
  `target_participation` varchar(5) DEFAULT NULL,
  `target_deferral` varchar(5) DEFAULT NULL,
  `target_allocation` varchar(5) DEFAULT NULL,
  `target_balance` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`client_campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_campaigns`
--

LOCK TABLES `client_campaigns` WRITE;
/*!40000 ALTER TABLE `client_campaigns` DISABLE KEYS */;
INSERT INTO `client_campaigns` VALUES (0000000040,0000000099,NULL,'MyCo','Myco Plan','Chester O\'hara','my company','02/18/2014','2014',2,1,0,0,0,0,1,0,0,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,'1','2','3','4'),(0000000041,0000000099,NULL,'Staples','A New Beginning','Fred','my company','05/01/2015','2015',2,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000042,0000000099,NULL,'Office Depot','A Plan to Behold','Barney','my company','11/11/2014','2014',1,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,1,0,0,'','','',''),(0000000043,0000000099,NULL,'Johnson Inboards','J&N','Chester O\'hara','my company','02/20/2014','2015',3,0,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'1','2','3','4'),(0000000044,0000000099,NULL,'test','','','','','2014',1,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000045,0000000099,NULL,'New company','New Plan','Chester H','My Company','','2015',2,0,1,0,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000046,0000000099,NULL,'','','','','','2014',1,9,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000047,0000000099,NULL,'noname','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000048,0000000099,NULL,'test','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000049,0000000099,NULL,'test','','','','','2014',1,0,0,0,0,0,0,0,0,1,1,1,1,0,1,0,0,0,0,0,0,0,0,1,0,0,'','','',''),(0000000050,0000000099,NULL,'test select','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000051,0000000099,NULL,'test select','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000052,0000000099,NULL,'test select','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,'','','',''),(0000000053,0000000099,NULL,'8','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000054,0000000099,NULL,'update','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,'','','',''),(0000000055,0000000099,NULL,'','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,'','','',''),(0000000056,0000000099,NULL,'','','','','','2014',1,9,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000057,0000000099,NULL,'','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000058,0000000009,NULL,'test1','test plan','Chester','MyCo','06/18/2014','2014',1,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,1,0,1,0,'1','2','3','4'),(0000000059,0000000009,NULL,'Test Co','The big plan','Tom','inco','06/17/2014','2014',1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000060,0000000009,NULL,'n','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000061,0000000009,NULL,'4','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000062,0000000009,NULL,'5','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000063,0000000009,NULL,'nre','','','','','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000064,0000000009,NULL,'test more','','','','06/22/2014','2014',2,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000065,0000000009,NULL,'c','','','','','2014',1,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000066,0000000009,NULL,'x','','','','','2014',1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000067,0000000009,NULL,'h','h','h','h','06/17/2014','2014',1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000068,0000000009,NULL,'Market Masters','MM Master Plan','Chester Holleran','RTLLC','06/27/2014','2014',2,0,0,0,0,1,0,0,0,1,1,1,1,1,1,0,0,1,0,0,0,0,1,0,1,0,'1','2','3','1'),(0000000069,0000000009,NULL,'','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000070,0000000009,NULL,'new','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000071,0000000009,NULL,'h','','','','','2014',1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'','','',''),(0000000072,0000000009,NULL,'Newco','401K Newco','chester','Ridgeline LLC','08/28/2014','2014',3,0,1,0,0,0,0,0,0,1,0,1,0,0,1,1,0,0,0,1,0,0,1,1,1,1,'2','2','2','2'),(0000000073,0000000011,NULL,'Impact Marketing Specialists','IMS Employees','Danny Graham','IMS Services','07/18/2014','2014',3,0,0,0,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1,0,0,0,'20','2','','5'),(0000000074,0000000011,NULL,'ACME Company','Employee Update','Danny Graham','IMS Services','','2014',1,0,0,0,0,1,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,'20','5','','25400'),(0000000075,0000000011,NULL,'New Co','New Plan','My Name','My firm','07/25/2014','2014',1,0,0,0,0,1,0,0,0,1,1,1,1,1,1,0,1,1,0,0,1,0,0,0,1,1,'2','12','','550');
/*!40000 ALTER TABLE `client_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collateral`
--

DROP TABLE IF EXISTS `collateral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collateral` (
  `collateral_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) unsigned zerofill DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collateral_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collateral`
--

LOCK TABLES `collateral` WRITE;
/*!40000 ALTER TABLE `collateral` DISABLE KEYS */;
INSERT INTO `collateral` VALUES (0000000001,0000000001,'Poster 16 x 20','DC-ENROL-PTR001'),(0000000002,0000000001,'Poster 8.5 x 11','DC-ENROL-PTR003'),(0000000003,0000000001,'Flier: Be an Early Bird','DC-FLY-FLI001'),(0000000004,0000000001,'Flier: Build Your Nest Egg','DC-EGG-FLI005'),(0000000005,0000000001,'Flier: Get Started in the\r\n Right Direction','DC-DIREC-FLI005'),(0000000006,0000000001,'Brochure: First steps, lasting effects','DC-ENROL-BRC002'),(0000000007,0000000001,'Brochure: First steps, lasting effects\r\n (Spanish)','DC-ENROL-BRC003'),(0000000008,0000000002,'Flier: Understanding your 401(k)\r\n retirement plan','DC-401k-BRC240'),(0000000009,0000000002,'Flier: Understanding your 401(k)\r\n retirement plan (Spanish)','DC-401ks-BRC240'),(0000000010,0000000002,'Flier: Understanding your Roth 401(k)\r\n retirement plan','DC-R401k-BRC253'),(0000000011,0000000002,'Flier: Understanding your Roth 401(k)\r\n retirement plan (Spanish)','DC-R401s-BRC253'),(0000000012,0000000002,'Flier: Understanding your 403(b)\r\n retirement plan','DC-403B-BRC001'),(0000000013,0000000002,'Flier: Understanding your 403(b)\r\n retirement plan (Spanish)','DC-SP-BRC242'),(0000000014,0000000002,'Flier: Understanding your Roth 403(b)\r\n retirement plan','DC-R403B-BRC001'),(0000000015,0000000002,'Flier: Understanding your 457\r\n retirement plan','DC-457-BRC001'),(0000000016,0000000002,'Flier: Understanding the Roth feature of\r\n your Governmental 457(b) retirement plan','DC-R457-BRC001'),(0000000017,0000000002,'Flier: Understanding your 457 \"Top Hat\"\r\n retirement plan','DC-457TH-BRC001'),(0000000018,0000000003,'Poster 16 x 20 English/Spanish','DC-SAVE-PTR001'),(0000000019,0000000003,'Poster 8.5 x 11 English/Spanish','DC-SAVE-PTR002'),(0000000020,0000000003,'Flier: Five ways to save','DC-SAVE-FLI001'),(0000000021,0000000003,'Brochure: Little boost, big impact','DC-SAVE-BRC001'),(0000000022,0000000004,'Poster 16 x 20 English/Spanish','DC-SAVE-PTR001'),(0000000023,0000000004,'Poster 8.5 x 11  English/Spanish','DC-SAVE-PTR002'),(0000000024,0000000004,'Flier: It adds up','DC-INCR-FLI005'),(0000000025,0000000004,'Brochure: Little boost, big impact','DC-SAVE-BRC001'),(0000000026,0000000005,'Poster: 16 x 20','DC-RR-PTR046'),(0000000027,0000000005,'Seminar invitation: one seminar','DC-CHG-INV001'),(0000000028,0000000005,'Seminar invitation: multiple seminars','DC-CHG2-INV001'),(0000000029,0000000005,'Brochure: Risk assessment questionnaire','DC-RTQ-BRC001'),(0000000030,0000000006,'Flier: Give your retirement savings\r\n a boost','DC-NSRW-FLI001'),(0000000031,0000000006,'Flier: Working with a financial\r\n professional','DC-NSRW-FLI002'),(0000000032,0000000006,'Flier: Too many retirement accounts?','DC-NSRW-FLI003'),(0000000033,0000000006,'Flier: Ensuring a consistent investment\r\n mix over time','DC-NSRW-FLI004'),(0000000034,0000000006,'Flier: Control what you can—stay\r\n invested','DC-NSRW-FLI005'),(0000000035,0000000007,'Flier','DC-AR-FLI002'),(0000000036,0000000007,'Annual review guide','DC-AR-BRC001'),(0000000037,0000000007,'Agenda-blank','DC-AR-AGD001'),(0000000038,0000000007,'Agenda-Introductory meeting','DC-AR-AGD002'),(0000000039,0000000007,'Agenda-Preparing for retirement','DC-AR-AGD003'),(0000000040,0000000007,'Agenda-General','DC-AR-AGD004'),(0000000041,0000000008,'Flier: Rebalancing','DC-TIP4-FLI004'),(0000000042,0000000008,'Brochure: Asset allocation','DC-AA-BRC001'),(0000000043,0000000008,'Brochure: Diversification','DC-DIVER-BRC001'),(0000000044,0000000008,'Brochure: Rebalancing','DC-REBL-BRC001'),(0000000045,0000000009,'Poster: RC','DC-AC-PTR001'),(0000000046,0000000009,'Poster: Advisor','DC-AC-PTR002'),(0000000047,0000000009,'Poster: No RC','DC-AC-PTR004'),(0000000048,0000000009,'Flier: Too many retirement accounts?','DC-TIP3-FLI003'),(0000000049,0000000010,'Poster: 16 x 20','DC-RR-PTR046'),(0000000050,0000000010,'Seminar invitation: one seminar','DC-CHG-INV001'),(0000000051,0000000010,'Seminar invitation: multiple seminars','DC-CHG2-INV001'),(0000000052,0000000010,'Worksheet: Reducing discretionary expenses','DC-EDE-BRC001'),(0000000053,0000000010,'Brochure: Risk assessment questionnaire','DC-RTQ-BRC001'),(0000000054,0000000011,'Flier: Dealing with market declines ','DC-FLI484'),(0000000055,0000000011,'Flier: Dealing with market declines (Spanish)','DC-DECL-FLI001'),(0000000056,0000000011,'Flier: How to handle market volatility ','DC-HANDL-FLI002'),(0000000057,0000000011,'Flier: How to handle market volatility (Spanish)','DC-HANDL-FLI001'),(0000000058,0000000011,'Flier: Keep a long-term perspective','DC-FLI486'),(0000000059,0000000011,'Flier: Keep a long-term perspective (Spanish)','DC-LONG-FLI001'),(0000000060,0000000012,'Flier: Generational Investor Profile flier','DC-3GEN-FLI001'),(0000000061,0000000012,'Brochure: Generational Investor Brochure: Generational Investor ','EM-3GEN-BRC001'),(0000000062,0000000013,'Poster 16 x 20','DC-RR-PTR045'),(0000000063,0000000013,'Flier: 20 minutes','DC-20MIN-FLI005'),(0000000064,0000000013,'Table tent: 20 minutes','DC-RR-TNT008'),(0000000065,0000000014,'Poster: 16 x 20','DC-RR-PTR046'),(0000000066,0000000014,'Flier: Seminar sign-in sheet','DC-SIGN-FLI001'),(0000000067,0000000014,'Seminar invitation: one seminar','DC-CHG-INV001'),(0000000068,0000000014,'Seminar invitation: multiple seminars','DC-CHG2-INV001'),(0000000069,0000000014,'Brochure: Reducing discretionary expenses worksheet','DC-EDE-BRC001'),(0000000070,0000000014,'Brochure: Calculating living expenses worksheet','DC-RR-BRC001'),(0000000071,0000000014,'Brochure: Sources of retirement income worksheet','DC-RR-BRC003'),(0000000072,0000000014,'Brochure: Top retirement priorities and related expenses','DC-RR-BRC004'),(0000000073,0000000014,'Brochure: Risk assessment questionnaire','DC-RTQ-BRC001'),(0000000074,0000000015,'Poster: 16 x 20','DC-RR-PTR046'),(0000000075,0000000015,'Flier: Seminar sign-in sheet','DC-SIGN-FLI001'),(0000000076,0000000015,'Seminar invitation: one seminar','DC-CHG-INV001'),(0000000077,0000000015,'Seminar invitation: multiple seminars','DC-CHG2-INV001'),(0000000078,0000000015,'Brochure: The 4% rule and you worksheet','DC-RR-BRC002'),(0000000079,0000000016,'Cover letter','DC-FF-LTR002'),(0000000080,0000000016,'Brochure: Foundation Funds risk tolerance questionnaire','DC-FF-BRC259'),(0000000081,0000000016,'Brochure: Foundation IRA guide','DC-FF-BRC260');
/*!40000 ALTER TABLE `collateral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `detail_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `collateral_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `arrival_date` varchar(50) DEFAULT NULL,
  `presentation_date` varchar(50) DEFAULT NULL,
  `address_id` int(11) DEFAULT '0',
  `order_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `campaign_id` (`campaign_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (0000000030,1,58,1,11000,'06/30/2014','',0,NULL),(0000000031,1,58,2,2000,'06/30/2014','',0,NULL),(0000000032,1,58,3,3000,'06/30/2014','',0,NULL),(0000000033,1,58,4,4000,'06/30/2014','',0,NULL),(0000000034,1,58,5,5000,'06/30/2014','',0,NULL),(0000000035,1,58,6,6000,'06/30/2014','',0,NULL),(0000000036,1,58,7,7000,'06/30/2014','',0,NULL),(0000000037,1,58,22,0,'','',0,NULL),(0000000038,1,58,23,0,'','',0,NULL),(0000000039,1,58,24,0,'','',0,NULL),(0000000040,1,58,25,0,'','',0,NULL),(0000000041,1,58,8,1,'06/18/2014','06/17/2014',0,NULL),(0000000042,1,58,9,2,'06/18/2014','06/17/2014',0,NULL),(0000000043,1,58,10,3,'06/18/2014','06/17/2014',0,NULL),(0000000044,1,58,11,4,'06/18/2014','06/17/2014',0,NULL),(0000000045,1,58,12,5,'06/18/2014','06/17/2014',0,NULL),(0000000046,1,58,13,6,'06/18/2014','06/17/2014',0,NULL),(0000000047,1,58,14,7,'06/18/2014','06/17/2014',0,NULL),(0000000048,1,58,15,8,'06/18/2014','06/17/2014',0,NULL),(0000000049,1,58,16,9,'06/18/2014','06/17/2014',0,NULL),(0000000050,1,58,17,10,'06/18/2014','06/17/2014',0,NULL),(0000000051,1,58,18,0,'','',0,NULL),(0000000052,1,58,19,0,'','',0,NULL),(0000000053,1,58,20,0,'','',0,NULL),(0000000054,1,58,21,0,'','',0,NULL),(0000000055,1,58,26,0,'','',0,NULL),(0000000056,1,58,27,0,'','',0,NULL),(0000000057,1,58,28,0,'','',0,NULL),(0000000058,1,58,29,0,'','',0,NULL),(0000000059,1,58,41,0,NULL,NULL,0,NULL),(0000000060,1,58,42,0,NULL,NULL,0,NULL),(0000000061,1,58,43,0,NULL,NULL,0,NULL),(0000000062,1,58,44,0,NULL,NULL,0,NULL),(0000000063,1,58,62,111111111,'06/26/2014','',2,NULL),(0000000064,1,58,63,2222222,'06/26/2014','',2,NULL),(0000000065,1,58,64,3333,'06/26/2014','',2,NULL),(0000000066,1,58,65,0,NULL,NULL,0,NULL),(0000000067,1,58,66,0,NULL,NULL,0,NULL),(0000000068,1,58,67,0,NULL,NULL,0,NULL),(0000000069,1,58,68,0,NULL,NULL,0,NULL),(0000000070,1,58,69,0,NULL,NULL,0,NULL),(0000000071,1,58,70,0,NULL,NULL,0,NULL),(0000000072,1,58,71,0,NULL,NULL,0,NULL),(0000000073,1,58,72,0,NULL,NULL,0,NULL),(0000000074,1,58,73,0,NULL,NULL,0,NULL),(0000000075,1,58,30,11,'10/02/2014','06/29/2014',8,NULL),(0000000076,1,58,31,120,'10/02/2014','06/29/2014',8,NULL),(0000000077,1,58,32,40,'10/02/2014','06/29/2014',8,NULL),(0000000078,1,58,33,220,'10/02/2014','06/29/2014',8,NULL),(0000000079,1,58,34,5550,'10/02/2014','06/29/2014',8,NULL),(0000000080,1,58,45,0,NULL,NULL,0,NULL),(0000000081,1,58,46,0,NULL,NULL,0,NULL),(0000000082,1,58,47,0,NULL,NULL,0,NULL),(0000000083,1,58,48,0,NULL,NULL,0,NULL),(0000000084,1,58,35,0,NULL,NULL,0,NULL),(0000000085,1,58,36,0,NULL,NULL,0,NULL),(0000000086,1,58,37,0,NULL,NULL,0,NULL),(0000000087,1,58,38,0,NULL,NULL,0,NULL),(0000000088,1,58,39,0,NULL,NULL,0,NULL),(0000000089,1,58,40,0,NULL,NULL,0,NULL),(0000000090,1,58,49,0,NULL,NULL,0,NULL),(0000000091,1,58,50,0,NULL,NULL,0,NULL),(0000000092,1,58,51,0,NULL,NULL,0,NULL),(0000000093,1,58,52,0,NULL,NULL,0,NULL),(0000000094,1,58,53,0,NULL,NULL,0,NULL),(0000000095,1,58,60,0,NULL,NULL,0,NULL),(0000000096,1,58,61,0,NULL,NULL,0,NULL),(0000000097,1,58,54,0,NULL,NULL,0,NULL),(0000000098,1,58,55,0,NULL,NULL,0,NULL),(0000000099,1,58,56,0,NULL,NULL,0,NULL),(0000000100,1,58,57,0,NULL,NULL,0,NULL),(0000000101,1,58,58,0,NULL,NULL,0,NULL),(0000000102,1,58,59,0,NULL,NULL,0,NULL),(0000000103,1,58,79,0,NULL,NULL,0,NULL),(0000000104,1,58,80,0,NULL,NULL,0,NULL),(0000000105,1,58,81,0,NULL,NULL,0,NULL),(0000000106,2,59,1,0,'','',0,NULL),(0000000107,2,59,2,0,'','',0,NULL),(0000000108,2,59,3,0,'','',0,NULL),(0000000109,2,59,4,0,'','',0,NULL),(0000000110,2,59,5,0,'','',0,NULL),(0000000111,2,59,6,0,'','',0,NULL),(0000000112,2,59,7,0,'','',0,NULL),(0000000113,2,59,8,0,'','',0,NULL),(0000000114,2,59,9,0,'','',0,NULL),(0000000115,2,59,10,0,'','',0,NULL),(0000000116,2,59,11,0,'','',0,NULL),(0000000117,2,59,12,0,'','',0,NULL),(0000000118,2,59,13,0,'','',0,NULL),(0000000119,2,59,14,0,'','',0,NULL),(0000000120,2,59,15,0,'','',0,NULL),(0000000121,2,59,16,0,'','',0,NULL),(0000000122,2,59,17,0,'','',0,NULL),(0000000123,2,59,18,0,'Not Set','Not Set',0,NULL),(0000000124,2,59,19,0,'Not Set','Not Set',0,NULL),(0000000125,2,59,20,0,'Not Set','Not Set',0,NULL),(0000000126,2,59,21,0,'Not Set','Not Set',0,NULL),(0000000127,3,60,1,0,'06/30/2014','Not Set',0,NULL),(0000000128,3,60,2,999,'06/30/2014','Not Set',0,NULL),(0000000129,3,60,3,2,'06/30/2014','Not Set',0,NULL),(0000000130,3,60,4,8883,'06/30/2014','Not Set',0,NULL),(0000000131,3,60,5,4,'06/30/2014','Not Set',0,NULL),(0000000132,3,60,6,5,'06/30/2014','Not Set',0,NULL),(0000000133,3,60,7,6,'06/30/2014','Not Set',0,NULL),(0000000134,3,60,8,0,'06/19/2014','Not Set',0,NULL),(0000000135,3,60,9,8,'06/19/2014','Not Set',0,NULL),(0000000136,3,60,10,0,'06/19/2014','Not Set',0,NULL),(0000000137,3,60,11,0,'06/19/2014','Not Set',0,NULL),(0000000138,3,60,12,0,'06/19/2014','Not Set',0,NULL),(0000000139,3,60,13,0,'06/19/2014','Not Set',0,NULL),(0000000140,3,60,14,0,'06/19/2014','Not Set',0,NULL),(0000000141,3,60,15,0,'06/19/2014','Not Set',0,NULL),(0000000142,3,60,16,0,'06/19/2014','Not Set',0,NULL),(0000000143,3,60,17,0,'06/19/2014','Not Set',0,NULL),(0000000144,4,61,1,0,'06/30/2014','Not Set',0,NULL),(0000000145,4,61,2,0,'06/30/2014','Not Set',0,NULL),(0000000146,4,61,3,0,'06/30/2014','Not Set',0,NULL),(0000000147,4,61,4,0,'06/30/2014','Not Set',0,NULL),(0000000148,4,61,5,0,'06/30/2014','Not Set',0,NULL),(0000000149,4,61,6,6,'06/30/2014','Not Set',0,NULL),(0000000150,4,61,7,0,'06/30/2014','Not Set',0,NULL),(0000000151,4,61,18,0,'Not Set','Not Set',0,NULL),(0000000152,4,61,19,0,'Not Set','Not Set',0,NULL),(0000000153,4,61,20,0,'Not Set','Not Set',0,NULL),(0000000154,4,61,21,7,'Not Set','Not Set',0,NULL),(0000000155,4,61,45,0,'06/25/2014','',0,NULL),(0000000156,4,61,46,0,'06/25/2014','',0,NULL),(0000000157,4,61,47,0,'06/25/2014','',0,NULL),(0000000158,4,61,48,0,'06/25/2014','',0,NULL),(0000000159,5,62,1,1,'06/30/2014','Not Set',0,NULL),(0000000160,5,62,2,0,'06/30/2014','Not Set',0,NULL),(0000000161,5,62,3,0,'06/30/2014','Not Set',0,NULL),(0000000162,5,62,4,0,'06/30/2014','Not Set',0,NULL),(0000000163,5,62,5,0,'06/30/2014','Not Set',0,NULL),(0000000164,5,62,6,0,'06/30/2014','Not Set',0,NULL),(0000000165,5,62,7,0,'06/30/2014','Not Set',0,NULL),(0000000166,6,63,1,99,'Not Set','Not Set',0,NULL),(0000000167,6,63,2,99,'Not Set','Not Set',0,NULL),(0000000168,6,63,3,99,'Not Set','Not Set',0,NULL),(0000000169,6,63,4,99,'Not Set','Not Set',0,NULL),(0000000170,6,63,5,99,'Not Set','Not Set',0,NULL),(0000000171,6,63,6,99,'Not Set','Not Set',0,NULL),(0000000172,6,63,7,99,'Not Set','Not Set',0,NULL),(0000000173,6,63,18,0,'Not Set','Not Set',0,NULL),(0000000174,6,63,19,0,'Not Set','Not Set',0,NULL),(0000000175,6,63,20,0,'Not Set','Not Set',0,NULL),(0000000176,6,63,21,0,'Not Set','Not Set',0,NULL),(0000000177,6,63,41,0,'','',0,NULL),(0000000178,6,63,42,0,'','',0,NULL),(0000000179,6,63,43,0,'','',0,NULL),(0000000180,6,63,44,0,'','',0,'June 18, 2014, 7:43 pm'),(0000000181,7,64,1,5,'06/24/2014','Not Set',4,NULL),(0000000182,7,64,2,6,'06/24/2014','Not Set',4,NULL),(0000000183,7,64,3,1,'06/24/2014','Not Set',4,NULL),(0000000184,7,64,4,2,'06/24/2014','Not Set',4,NULL),(0000000185,7,64,5,3,'06/24/2014','Not Set',4,NULL),(0000000186,7,64,6,7,'06/24/2014','Not Set',4,NULL),(0000000187,7,64,7,8,'06/24/2014','Not Set',4,'June 18, 2014, 7:49 pm'),(0000000188,7,64,18,55,'09/24/2014','Not Set',0,NULL),(0000000189,7,64,19,550,'09/24/2014','Not Set',0,NULL),(0000000190,7,64,20,550,'09/24/2014','Not Set',0,NULL),(0000000191,7,64,21,660,'09/24/2014','Not Set',0,'June 18, 2014, 7:48 pm'),(0000000192,7,64,45,0,'Not Set','Not Set',2,NULL),(0000000193,7,64,46,0,'Not Set','Not Set',2,NULL),(0000000194,7,64,47,0,'Not Set','Not Set',2,NULL),(0000000195,7,64,48,0,'Not Set','Not Set',2,'June 18, 2014, 7:56 pm'),(0000000196,8,65,1,0,'Not Set','Not Set',0,NULL),(0000000197,8,65,2,0,'Not Set','Not Set',0,NULL),(0000000198,8,65,3,0,'Not Set','Not Set',0,NULL),(0000000199,8,65,4,0,'Not Set','Not Set',0,NULL),(0000000200,8,65,5,0,'Not Set','Not Set',0,NULL),(0000000201,8,65,6,0,'Not Set','Not Set',0,NULL),(0000000202,8,65,7,0,'Not Set','Not Set',0,'June 18, 2014, 8:17 pm'),(0000000203,8,65,8,0,'Not Set','Not Set',0,NULL),(0000000204,8,65,9,0,'Not Set','Not Set',0,NULL),(0000000205,8,65,10,0,'Not Set','Not Set',0,NULL),(0000000206,8,65,11,0,'Not Set','Not Set',0,NULL),(0000000207,8,65,12,0,'Not Set','Not Set',0,NULL),(0000000208,8,65,13,0,'Not Set','Not Set',0,NULL),(0000000209,8,65,14,0,'Not Set','Not Set',0,NULL),(0000000210,8,65,15,0,'Not Set','Not Set',0,NULL),(0000000211,8,65,16,0,'Not Set','Not Set',0,NULL),(0000000212,8,65,17,0,'Not Set','Not Set',0,NULL),(0000000213,9,66,1,0,'06/23/2014','06/02/2014',1,NULL),(0000000214,9,66,2,0,'06/23/2014','06/02/2014',1,NULL),(0000000215,9,66,3,0,'06/23/2014','06/02/2014',1,NULL),(0000000216,9,66,4,0,'06/23/2014','06/02/2014',1,NULL),(0000000217,9,66,5,0,'06/23/2014','06/02/2014',1,NULL),(0000000218,9,66,6,0,'06/23/2014','06/02/2014',1,NULL),(0000000219,9,66,7,0,'06/23/2014','06/02/2014',1,'June 18, 2014, 9:06 pm'),(0000000220,9,66,18,0,'Not Set','Not Set',0,NULL),(0000000221,9,66,19,0,'Not Set','Not Set',0,NULL),(0000000222,9,66,20,0,'Not Set','Not Set',0,NULL),(0000000223,9,66,21,0,'Not Set','Not Set',0,'June 18, 2014 '),(0000000224,9,66,62,0,NULL,NULL,0,NULL),(0000000225,9,66,63,0,NULL,NULL,0,NULL),(0000000226,9,66,64,0,NULL,NULL,0,NULL),(0000000227,10,67,1,20,'06/30/2014','06/30/2014',0,NULL),(0000000228,10,67,2,2,'06/30/2014','06/30/2014',0,NULL),(0000000229,10,67,3,2,'06/30/2014','06/30/2014',0,NULL),(0000000230,10,67,4,2,'06/30/2014','06/30/2014',0,NULL),(0000000231,10,67,5,2,'06/30/2014','06/30/2014',0,NULL),(0000000232,10,67,6,2,'06/30/2014','06/30/2014',0,NULL),(0000000233,10,67,7,22222,'06/30/2014','06/30/2014',0,'June 18, 2014 '),(0000000234,10,67,18,2,'06/30/2014','06/30/2014',0,NULL),(0000000235,10,67,19,2,'06/30/2014','06/30/2014',0,NULL),(0000000236,10,67,20,2,'06/30/2014','06/30/2014',0,NULL),(0000000237,10,67,21,2,'06/30/2014','06/30/2014',0,'June 18, 2014 '),(0000000238,10,67,35,6,'06/25/2014','Not Set',1,NULL),(0000000239,10,67,36,6,'06/25/2014','Not Set',1,NULL),(0000000240,10,67,37,6,'06/25/2014','Not Set',1,NULL),(0000000241,10,67,38,6,'06/25/2014','Not Set',1,NULL),(0000000242,10,67,39,6,'06/25/2014','Not Set',1,NULL),(0000000243,10,67,40,6,'06/25/2014','Not Set',1,'June 18, 2014 '),(0000000244,10,67,62,0,'Not Set','Not Set',0,NULL),(0000000245,10,67,63,0,'Not Set','Not Set',0,NULL),(0000000246,10,67,64,0,'Not Set','Not Set',0,NULL),(0000000247,11,68,1,2,'06/26/2014','07/16/2014',0,NULL),(0000000248,11,68,2,2,'06/26/2014','07/16/2014',0,NULL),(0000000249,11,68,3,32354,'06/26/2014','07/16/2014',0,NULL),(0000000250,11,68,4,2,'06/26/2014','07/16/2014',0,NULL),(0000000251,11,68,5,2,'06/26/2014','07/16/2014',0,NULL),(0000000252,11,68,6,2,'06/26/2014','07/16/2014',0,NULL),(0000000253,11,68,7,2222,'06/26/2014','07/16/2014',0,'June 18, 2014 '),(0000000254,11,68,18,2,'06/27/2014','Not Set',1,NULL),(0000000255,11,68,19,4,'06/27/2014','Not Set',1,NULL),(0000000256,11,68,20,6,'06/27/2014','Not Set',1,NULL),(0000000257,11,68,21,8,'06/27/2014','Not Set',1,'June 18, 2014 '),(0000000258,11,68,41,5,'09/25/2014','Not Set',4,NULL),(0000000259,11,68,42,5,'09/25/2014','Not Set',4,NULL),(0000000260,11,68,43,5,'09/25/2014','Not Set',4,NULL),(0000000261,11,68,44,5,'09/25/2014','Not Set',4,'June 18, 2014 '),(0000000262,11,68,45,5,'06/29/2014','06/24/2014',0,NULL),(0000000263,11,68,46,5,'06/29/2014','06/24/2014',0,NULL),(0000000264,11,68,47,5,'06/29/2014','06/24/2014',0,NULL),(0000000265,11,68,48,5,'06/29/2014','06/24/2014',0,'June 18, 2014 '),(0000000266,11,68,60,0,'Not Set','Not Set',0,NULL),(0000000267,11,68,61,0,'Not Set','Not Set',0,'June 18, 2014 '),(0000000268,11,68,62,10,'11/19/2014','',0,NULL),(0000000269,11,68,63,10,'11/19/2014','',0,NULL),(0000000270,11,68,64,10,'11/19/2014','',0,NULL),(0000000271,14,72,1,0,'08/13/2014','07/31/2014',0,NULL),(0000000272,14,72,2,0,'08/13/2014','07/31/2014',0,NULL),(0000000273,14,72,3,0,'08/13/2014','07/31/2014',0,NULL),(0000000274,14,72,4,0,'08/13/2014','07/31/2014',0,NULL),(0000000275,14,72,5,0,'08/13/2014','07/31/2014',0,NULL),(0000000276,14,72,6,0,'08/13/2014','07/31/2014',0,NULL),(0000000277,14,72,7,0,'08/13/2014','07/31/2014',0,'July 14, 2014 '),(0000000278,14,72,41,0,'Not Set','Not Set',0,NULL),(0000000279,14,72,42,0,'Not Set','Not Set',0,NULL),(0000000280,14,72,43,0,'Not Set','Not Set',0,NULL),(0000000281,14,72,44,0,'Not Set','Not Set',0,NULL),(0000000282,15,73,1,20,'07/18/2014','07/18/2014',0,NULL),(0000000283,15,73,2,20,'07/18/2014','07/18/2014',0,NULL),(0000000284,15,73,3,20,'07/18/2014','07/18/2014',0,NULL),(0000000285,15,73,4,20,'07/18/2014','07/18/2014',0,NULL),(0000000286,15,73,5,20,'07/18/2014','07/18/2014',0,NULL),(0000000287,15,73,6,20,'07/18/2014','07/18/2014',0,NULL),(0000000288,15,73,7,20,'07/18/2014','07/18/2014',0,'July 17, 2014 '),(0000000289,15,73,18,0,'07/19/2014','07/20/2014',15,NULL),(0000000290,15,73,19,0,'07/19/2014','07/20/2014',15,NULL),(0000000291,15,73,20,0,'07/19/2014','07/20/2014',15,NULL),(0000000292,15,73,21,0,'07/19/2014','07/20/2014',15,'July 20, 2014 '),(0000000293,16,74,1,12,'07/18/2014','07/23/2014',15,NULL),(0000000294,16,74,2,11,'07/18/2014','07/23/2014',15,NULL),(0000000295,16,74,3,5,'07/18/2014','07/23/2014',15,NULL),(0000000296,16,74,4,4,'07/18/2014','07/23/2014',15,NULL),(0000000297,16,74,5,5,'07/18/2014','07/23/2014',15,NULL),(0000000298,16,74,6,2,'07/18/2014','07/23/2014',15,NULL),(0000000299,16,74,7,20,'07/18/2014','07/23/2014',15,'July 20, 2014 '),(0000000300,16,74,74,0,'07/20/2014','07/21/2014',15,NULL),(0000000301,16,74,75,0,'07/20/2014','07/21/2014',15,NULL),(0000000302,16,74,76,0,'07/20/2014','07/21/2014',15,NULL),(0000000303,16,74,77,0,'07/20/2014','07/21/2014',15,NULL),(0000000304,16,74,78,0,'07/20/2014','07/21/2014',15,NULL),(0000000305,16,74,18,1,'07/24/2014','07/25/2014',15,NULL),(0000000306,16,74,19,5,'07/24/2014','07/25/2014',15,NULL),(0000000307,16,74,20,21,'07/24/2014','07/25/2014',15,NULL),(0000000308,16,74,21,0,'07/24/2014','07/25/2014',15,'July 24, 2014 '),(0000000309,15,73,41,0,'07/21/2014','07/22/2014',15,NULL),(0000000310,15,73,42,0,'07/21/2014','07/22/2014',15,NULL),(0000000311,15,73,43,0,'07/21/2014','07/22/2014',15,NULL),(0000000312,15,73,44,0,'07/21/2014','07/22/2014',15,'July 20, 2014 '),(0000000313,15,73,60,0,'07/22/2014','07/31/2014',15,NULL),(0000000314,15,73,61,0,'07/22/2014','07/31/2014',15,NULL);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `client_campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `plan_id` (`client_campaign_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (0000000001,58),(0000000002,59),(0000000003,60),(0000000004,61),(0000000005,62),(0000000006,63),(0000000007,64),(0000000008,65),(0000000009,66),(0000000010,67),(0000000011,68),(0000000012,69),(0000000013,70),(0000000014,72),(0000000015,73),(0000000016,74);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `result_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `client_campaign_id` int(11) DEFAULT NULL,
  `include_timeline` tinyint(1) NOT NULL DEFAULT '1',
  `campaign_1_id` tinyint(4) DEFAULT NULL,
  `campaign_1_selected` tinyint(4) DEFAULT NULL,
  `campaign_1_rec` tinyint(4) DEFAULT NULL,
  `campaign_1_quarter` tinyint(4) DEFAULT NULL,
  `campaign_1_year` smallint(4) DEFAULT NULL,
  `campaign_1_ordered` tinyint(2) DEFAULT NULL,
  `campaign_2_id` tinyint(4) DEFAULT NULL,
  `campaign_2_selected` tinyint(4) DEFAULT NULL,
  `campaign_2_rec` tinyint(4) DEFAULT NULL,
  `campaign_2_quarter` tinyint(4) DEFAULT NULL,
  `campaign_2_year` smallint(4) DEFAULT NULL,
  `campaign_2_ordered` tinyint(2) DEFAULT NULL,
  `campaign_3_id` tinyint(4) DEFAULT NULL,
  `campaign_3_selected` tinyint(4) DEFAULT NULL,
  `campaign_3_rec` tinyint(4) DEFAULT NULL,
  `campaign_3_quarter` tinyint(4) DEFAULT NULL,
  `campaign_3_year` smallint(4) DEFAULT NULL,
  `campaign_3_ordered` tinyint(2) DEFAULT NULL,
  `campaign_4_id` tinyint(4) DEFAULT NULL,
  `campaign_4_selected` tinyint(4) DEFAULT NULL,
  `campaign_4_rec` tinyint(4) DEFAULT NULL,
  `campaign_4_quarter` tinyint(4) DEFAULT NULL,
  `campaign_4_year` smallint(4) DEFAULT NULL,
  `campaign_4_ordered` tinyint(2) DEFAULT NULL,
  `campaign_5_id` tinyint(4) DEFAULT NULL,
  `campaign_5_selected` tinyint(4) DEFAULT NULL,
  `campaign_5_rec` tinyint(4) DEFAULT NULL,
  `campaign_5_quarter` tinyint(4) DEFAULT NULL,
  `campaign_5_year` smallint(4) DEFAULT NULL,
  `campaign_5_ordered` tinyint(2) DEFAULT NULL,
  `campaign_6_id` tinyint(4) DEFAULT NULL,
  `campaign_6_selected` tinyint(4) DEFAULT NULL,
  `campaign_6_rec` tinyint(4) DEFAULT NULL,
  `campaign_6_quarter` tinyint(4) DEFAULT NULL,
  `campaign_6_year` smallint(4) DEFAULT NULL,
  `campaign_6_ordered` tinyint(2) DEFAULT NULL,
  `campaign_7_id` tinyint(4) DEFAULT NULL,
  `campaign_7_selected` tinyint(4) DEFAULT NULL,
  `campaign_7_rec` tinyint(4) DEFAULT NULL,
  `campaign_7_quarter` tinyint(4) DEFAULT NULL,
  `campaign_7_year` smallint(4) DEFAULT NULL,
  `campaign_7_ordered` tinyint(2) DEFAULT NULL,
  `campaign_8_id` tinyint(4) DEFAULT NULL,
  `campaign_8_selected` tinyint(4) DEFAULT NULL,
  `campaign_8_rec` tinyint(4) DEFAULT NULL,
  `campaign_8_quarter` tinyint(4) DEFAULT NULL,
  `campaign_8_year` smallint(4) DEFAULT NULL,
  `campaign_8_ordered` tinyint(2) DEFAULT NULL,
  `campaign_9_id` tinyint(4) DEFAULT NULL,
  `campaign_9_selected` tinyint(4) DEFAULT NULL,
  `campaign_9_rec` tinyint(4) DEFAULT NULL,
  `campaign_9_quarter` tinyint(4) DEFAULT NULL,
  `campaign_9_year` smallint(4) DEFAULT NULL,
  `campaign_9_ordered` tinyint(2) DEFAULT NULL,
  `campaign_10_id` tinyint(4) DEFAULT NULL,
  `campaign_10_selected` tinyint(4) DEFAULT NULL,
  `campaign_10_rec` tinyint(4) DEFAULT NULL,
  `campaign_10_quarter` tinyint(4) DEFAULT NULL,
  `campaign_10_year` smallint(4) DEFAULT NULL,
  `campaign_10_ordered` tinyint(2) DEFAULT NULL,
  `campaign_11_id` tinyint(4) DEFAULT NULL,
  `campaign_11_selected` tinyint(4) DEFAULT NULL,
  `campaign_11_rec` tinyint(4) DEFAULT NULL,
  `campaign_11_quarter` tinyint(4) DEFAULT NULL,
  `campaign_11_year` smallint(4) DEFAULT NULL,
  `campaign_11_ordered` tinyint(2) DEFAULT NULL,
  `campaign_12_id` tinyint(4) DEFAULT NULL,
  `campaign_12_selected` tinyint(4) DEFAULT NULL,
  `campaign_12_rec` tinyint(4) DEFAULT NULL,
  `campaign_12_quarter` tinyint(4) DEFAULT NULL,
  `campaign_12_year` smallint(4) DEFAULT NULL,
  `campaign_12_ordered` tinyint(2) DEFAULT NULL,
  `campaign_13_id` tinyint(4) DEFAULT NULL,
  `campaign_13_selected` tinyint(4) DEFAULT NULL,
  `campaign_13_rec` tinyint(4) DEFAULT NULL,
  `campaign_13_quarter` tinyint(4) DEFAULT NULL,
  `campaign_13_year` smallint(4) DEFAULT NULL,
  `campaign_13_ordered` tinyint(2) DEFAULT NULL,
  `campaign_14_id` tinyint(4) DEFAULT NULL,
  `campaign_14_selected` tinyint(4) DEFAULT NULL,
  `campaign_14_rec` tinyint(4) DEFAULT NULL,
  `campaign_14_quarter` tinyint(4) DEFAULT NULL,
  `campaign_14_year` smallint(4) DEFAULT NULL,
  `campaign_14_ordered` tinyint(2) DEFAULT NULL,
  `campaign_15_id` tinyint(4) DEFAULT NULL,
  `campaign_15_selected` tinyint(4) DEFAULT NULL,
  `campaign_15_rec` tinyint(4) DEFAULT NULL,
  `campaign_15_quarter` tinyint(4) DEFAULT NULL,
  `campaign_15_year` smallint(4) DEFAULT NULL,
  `campaign_15_ordered` tinyint(2) DEFAULT NULL,
  `campaign_16_id` tinyint(4) DEFAULT NULL,
  `campaign_16_selected` tinyint(4) DEFAULT NULL,
  `campaign_16_rec` tinyint(4) DEFAULT NULL,
  `campaign_16_quarter` tinyint(4) DEFAULT NULL,
  `campaign_16_year` smallint(4) DEFAULT NULL,
  `campaign_16_ordered` tinyint(2) DEFAULT NULL,
  `campaign_17_id` tinyint(4) DEFAULT NULL,
  `campaign_17_selected` tinyint(4) DEFAULT NULL,
  `campaign_17_rec` tinyint(4) DEFAULT NULL,
  `campaign_17_quarter` tinyint(4) DEFAULT NULL,
  `campaign_17_year` smallint(4) DEFAULT NULL,
  `campaign_17_ordered` tinyint(2) DEFAULT NULL,
  `campaign_18_id` tinyint(4) DEFAULT NULL,
  `campaign_18_selected` tinyint(4) DEFAULT NULL,
  `campaign_18_rec` tinyint(4) DEFAULT NULL,
  `campaign_18_quarter` tinyint(4) DEFAULT NULL,
  `campaign_18_year` smallint(4) DEFAULT NULL,
  `campaign_18_ordered` tinyint(2) DEFAULT NULL,
  `campaign_19_id` tinyint(4) DEFAULT NULL,
  `campaign_19_selected` tinyint(4) DEFAULT NULL,
  `campaign_19_rec` tinyint(4) DEFAULT NULL,
  `campaign_19_quarter` tinyint(4) DEFAULT NULL,
  `campaign_19_year` smallint(4) DEFAULT NULL,
  `campaign_19_ordered` tinyint(2) DEFAULT NULL,
  `campaign_20_id` tinyint(4) DEFAULT NULL,
  `campaign_20_selected` tinyint(4) DEFAULT NULL,
  `campaign_20_rec` tinyint(4) DEFAULT NULL,
  `campaign_20_quarter` tinyint(4) DEFAULT NULL,
  `campaign_20_year` smallint(4) DEFAULT NULL,
  `campaign_20_ordered` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `client_campaign_id` (`client_campaign_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (00028,40,0,1,1,1,2,2014,NULL,2,1,1,3,2014,NULL,3,1,1,2,2015,NULL,4,1,NULL,1,2015,NULL,5,1,NULL,3,2014,NULL,6,1,NULL,3,2014,NULL,7,1,NULL,2,2014,NULL,8,0,0,0,0,NULL,9,1,1,3,2014,NULL,10,1,NULL,4,2014,NULL,11,1,NULL,3,2014,NULL,12,1,1,1,2016,NULL,13,0,NULL,0,0,NULL,14,1,NULL,3,2015,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00029,41,0,1,1,1,2,2016,NULL,2,0,NULL,0,0,NULL,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,1,NULL,2,2015,NULL,6,1,NULL,3,2015,NULL,7,1,NULL,4,2015,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,0,1,2016,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00030,42,0,1,NULL,0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,0,NULL,NULL,NULL,9,NULL,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,1,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00031,43,0,1,0,1,0,0,NULL,2,0,NULL,0,0,NULL,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,1,NULL,3,2015,NULL,7,1,NULL,4,2015,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,0,1,2016,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00032,44,0,1,NULL,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,1,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,1,NULL,NULL,NULL,9,NULL,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,1,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00033,45,0,1,0,1,0,0,NULL,2,0,NULL,0,0,NULL,3,0,1,0,0,NULL,4,0,NULL,0,0,NULL,5,1,NULL,2,2015,NULL,6,1,NULL,3,2015,NULL,7,1,NULL,4,2015,NULL,8,0,1,0,0,NULL,9,0,1,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,1,2016,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00034,46,0,1,NULL,0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,0,NULL,NULL,NULL,9,NULL,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00035,47,0,1,NULL,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,0,NULL,NULL,NULL,9,NULL,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00036,48,0,1,NULL,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,0,NULL,NULL,NULL,9,NULL,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00037,49,0,1,1,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,1,1,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,1,1,NULL,NULL,NULL,9,1,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,1,1,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00038,50,0,1,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00039,51,0,1,1,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,0,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00040,52,0,1,1,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,1,NULL,NULL,NULL,9,1,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00041,53,0,1,0,0,0,0,NULL,2,0,NULL,0,0,NULL,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00042,54,0,1,1,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,1,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00043,55,0,1,0,0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,1,1,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00044,56,0,1,0,0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,0,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00045,57,0,1,1,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,0,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,1,1,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00046,58,0,1,1,1,1,2014,1,2,1,NULL,2,2014,1,3,1,0,3,2014,1,4,1,NULL,4,2014,1,5,1,NULL,1,2015,1,6,0,NULL,0,0,1,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00047,59,0,1,1,0,1,2014,1,2,1,NULL,2,2014,1,3,1,0,3,2014,1,4,1,NULL,4,2014,NULL,5,1,NULL,1,2015,NULL,6,1,NULL,2,2015,NULL,7,1,NULL,3,2015,NULL,8,1,0,4,2015,NULL,9,1,0,4,2015,NULL,10,1,NULL,4,2015,NULL,11,1,NULL,4,2015,NULL,12,1,0,4,2015,NULL,13,1,NULL,4,2015,NULL,14,1,NULL,4,2015,NULL,15,1,NULL,4,2015,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00048,60,0,1,1,0,1,2014,1,2,0,NULL,0,0,1,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00049,61,0,1,1,1,1,2014,1,2,0,NULL,0,0,NULL,3,1,0,2,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,1,0,3,2014,1,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00050,62,0,1,1,0,1,2014,1,2,0,NULL,0,0,NULL,3,0,0,0,0,NULL,4,1,NULL,2,2014,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,3,2014,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,1,2015,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,1,NULL,3,2015,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00051,63,0,1,1,1,1,2014,1,2,0,NULL,0,0,NULL,3,1,0,2,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,0,3,2014,1,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00052,64,0,1,1,0,2,2014,1,2,0,NULL,0,0,NULL,3,1,0,3,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,1,1,4,2014,1,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00053,65,0,1,1,1,1,2014,1,2,1,NULL,2,2014,NULL,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00054,66,0,1,0,1,0,0,1,2,0,NULL,0,0,NULL,3,1,1,2,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,3,2014,NULL,9,1,1,4,2014,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,1,2015,NULL,13,1,NULL,2,2015,NULL,14,1,NULL,1,2014,NULL,15,1,NULL,1,2014,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00055,67,0,1,1,1,1,2014,1,2,0,NULL,0,0,NULL,3,1,0,2,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,1,NULL,3,2014,1,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,1,NULL,4,2014,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00056,68,0,1,1,1,2,2014,1,2,1,NULL,1,2016,NULL,3,1,1,3,2014,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,1,2015,1,9,1,1,3,2015,1,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,3,2015,1,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00057,69,0,1,0,0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,0,0,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,8,0,0,NULL,NULL,NULL,9,0,0,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,12,0,0,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00058,70,0,1,1,0,1,2014,NULL,2,1,NULL,4,2015,NULL,3,1,0,2,2014,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,1,NULL,3,2014,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,1,NULL,2,2015,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00059,71,0,1,1,0,2,2014,NULL,2,1,NULL,4,2015,NULL,3,1,0,3,2014,NULL,4,1,NULL,2,2015,NULL,5,0,NULL,0,0,NULL,6,1,NULL,3,2015,NULL,7,0,NULL,0,0,NULL,8,0,0,0,0,NULL,9,0,0,0,0,NULL,10,1,NULL,1,2014,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,1,NULL,1,2014,NULL,14,1,NULL,4,2015,NULL,15,0,NULL,0,0,NULL,16,1,NULL,1,2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00060,72,0,1,1,1,4,2014,1,2,0,NULL,0,0,NULL,3,0,0,0,0,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,1,2015,NULL,9,1,1,3,2015,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,0,0,0,0,NULL,13,1,NULL,4,2015,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00061,73,0,1,1,1,4,2014,1,2,0,NULL,0,0,NULL,3,1,1,1,2015,1,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,3,2015,1,9,1,1,3,2015,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,1,2016,NULL,13,0,NULL,0,0,NULL,14,0,NULL,0,0,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00062,74,1,1,1,1,1,2014,1,2,1,NULL,1,2014,NULL,3,1,1,2,2014,1,4,1,NULL,2,2014,NULL,5,1,NULL,3,2014,NULL,6,1,NULL,4,2014,NULL,7,1,NULL,1,2014,NULL,8,1,1,2,2014,NULL,9,1,1,3,2014,NULL,10,1,NULL,4,2014,NULL,11,1,NULL,1,2015,NULL,12,1,1,4,2014,NULL,13,1,NULL,2,2015,NULL,14,1,NULL,3,2015,NULL,15,1,NULL,3,2015,NULL,16,1,NULL,3,2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00063,75,0,1,1,1,1,2014,NULL,2,0,NULL,0,0,NULL,3,1,1,2,2014,NULL,4,0,NULL,0,0,NULL,5,0,NULL,0,0,NULL,6,0,NULL,0,0,NULL,7,0,NULL,0,0,NULL,8,1,1,3,2014,NULL,9,1,1,4,2014,NULL,10,0,NULL,0,0,NULL,11,0,NULL,0,0,NULL,12,1,1,1,2015,NULL,13,0,NULL,0,0,NULL,14,1,NULL,2,2015,NULL,15,0,NULL,0,0,NULL,16,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `active` tinyint(255) unsigned DEFAULT '1' COMMENT 'Active =1 Inactive = 0',
  `address` varchar(100) DEFAULT NULL,
  `first` varchar(100) DEFAULT NULL,
  `last` varchar(100) DEFAULT NULL,
  `secret` char(32) DEFAULT NULL COMMENT 'MD5 ',
  `phone` varchar(20) DEFAULT NULL,
  `priv` tinyint(1) unsigned DEFAULT '0',
  `rc` tinyint(255) DEFAULT NULL COMMENT 'Retirement consultant? or "other" user',
  `force` tinyint(255) DEFAULT NULL COMMENT 'force password change',
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (0009,1,'chesterh@chesterh.com','Chester','Holleran','816878ced37da5172dd05edc0097e28d','6034340451',1,NULL,NULL,'15 Anthony Dr',NULL,'Londonderry','NH','03053'),(0010,1,'youa@joijsf',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(0011,1,'good.midget@gmail.com','Danny','Graham','7ecc19e1a0be36ba2c6f05d06b5d3058','9494134352',1,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-25  1:13:25
