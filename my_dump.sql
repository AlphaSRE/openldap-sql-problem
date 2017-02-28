-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `authors_docs`
--

DROP TABLE IF EXISTS `authors_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_docs` (
  `pers_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  PRIMARY KEY (`pers_id`,`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_docs`
--

LOCK TABLES `authors_docs` WRITE;
/*!40000 ALTER TABLE `authors_docs` DISABLE KEYS */;
INSERT INTO `authors_docs` VALUES (1,1),(1,2),(2,1);
/*!40000 ALTER TABLE `authors_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certs`
--

DROP TABLE IF EXISTS `certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certs` (
  `id` int(11) NOT NULL,
  `cert` longblob NOT NULL,
  `pers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certs`
--

LOCK TABLES `certs` WRITE;
/*!40000 ALTER TABLE `certs` DISABLE KEYS */;
INSERT INTO `certs` VALUES (1,'0Çk0Ç‘†0\r	*ÜHÜ˜\r\00w10	UUS10U\nCalifornia10U\nOpenLDAP Example, Ltd.10U\nExample CA10	*ÜHÜ˜\r	ca@example.com0\r031017163319Z\r041016163319Z0~10	UUS10U\nCalifornia10U\nOpenLDAP Example, Ltd.10UUrsula Hampster10	*ÜHÜ˜\r	uham@example.com0Åü0\r	*ÜHÜ˜\r\0Åç\00ÅâÅÅ\0\Ó\∆\nyµ}.hqX\ U\Óß8\”oA=˛\œ1C^\Z\Óπq;é-ß\›-\ﬁk\∆\Œ¿;IáÍß∞7π\ÎP\·qÂÄà\Ã((É,\ÿ2úo$ˆ^k\È\“ëê\»))ò&z_y)-\È6&\'G´Kv®äcá,Aböi\”.âMD»ñ®\–o´\n\«\ﬁ4<lXGè)\0£Åˇ0Å¸0	U0\00,	`ÜHÜ¯B\rOpenSSL Generated Certificate0U£#\ﬁlÆGîP\ËÇﬂ±\n\—GÙ^0Å°U#Åô0ÅñÄKo!\Z6$“ê˘C∞SG-}\·¿\Êò#°{§y0w10	UUS10U\nCalifornia10U\nOpenLDAP Example, Ltd.10U\nExample CA10	*ÜHÜ˜\r	ca@example.comÇ\00\r	*ÜHÜ˜\r\0ÅÅ\0àp[\‹\ÈV`\÷\ÊØY\Ê®DÆƒπı\Í\Íà\‘\ÎzZG\n˙duÅ£\‰}\0˝9∆ö°\∆m)\”o\Ì\≈7åY\"9\¬\‘\⁄U˚?Hé{#á≠*UΩ\Î\n\È\‡ ©Fru\À(yäªLøˇò›≥Ò\Áhõpr9%ª[[\Ï+\¬∑∂≤u\ƒrHÚö\Õ',3);
/*!40000 ALTER TABLE `certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'book1','abstract1'),(2,'book2','abstract2');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutes`
--

DROP TABLE IF EXISTS `institutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutes`
--

LOCK TABLES `institutes` WRITE;
/*!40000 ALTER TABLE `institutes` DISABLE KEYS */;
INSERT INTO `institutes` VALUES (1,'Example');
/*!40000 ALTER TABLE `institutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_attr_mappings`
--

DROP TABLE IF EXISTS `ldap_attr_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_attr_mappings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oc_map_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sel_expr` varchar(255) NOT NULL,
  `sel_expr_u` varchar(255) DEFAULT NULL,
  `from_tbls` varchar(255) NOT NULL,
  `join_where` varchar(255) DEFAULT NULL,
  `add_proc` varchar(255) DEFAULT NULL,
  `delete_proc` varchar(255) DEFAULT NULL,
  `param_order` tinyint(4) NOT NULL,
  `expect_return` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_attr_mappings`
--

LOCK TABLES `ldap_attr_mappings` WRITE;
/*!40000 ALTER TABLE `ldap_attr_mappings` DISABLE KEYS */;
INSERT INTO `ldap_attr_mappings` VALUES (1,1,'cn','concat(persons.name,\' \',persons.surname)',NULL,'persons',NULL,NULL,NULL,3,0),(2,1,'telephoneNumber','phones.phone',NULL,'persons,phones','phones.pers_id=persons.id',NULL,NULL,3,0),(3,1,'givenName','persons.name',NULL,'persons',NULL,NULL,NULL,3,0),(4,1,'sn','persons.surname',NULL,'persons',NULL,NULL,NULL,3,0),(5,1,'userPassword','persons.password',NULL,'persons','persons.password IS NOT NULL',NULL,NULL,3,0),(6,1,'seeAlso','seeAlso.dn',NULL,'ldap_entries AS seeAlso,documents,authors_docs,persons','seeAlso.keyval=documents.id AND seeAlso.oc_map_id=2 AND authors_docs.doc_id=documents.id AND authors_docs.pers_id=persons.id',NULL,NULL,3,0),(7,2,'description','documents.abstract',NULL,'documents',NULL,NULL,NULL,3,0),(8,2,'documentTitle','documents.title',NULL,'documents',NULL,NULL,NULL,3,0),(9,2,'documentAuthor','documentAuthor.dn',NULL,'ldap_entries AS documentAuthor,documents,authors_docs,persons','documentAuthor.keyval=persons.id AND documentAuthor.oc_map_id=1 AND authors_docs.doc_id=documents.id AND authors_docs.pers_id=persons.id',NULL,NULL,3,0),(10,2,'documentIdentifier','concat(\'document \',documents.id)',NULL,'documents',NULL,NULL,NULL,3,0),(11,3,'o','institutes.name',NULL,'institutes',NULL,NULL,NULL,3,0),(12,3,'dc','lower(institutes.name)',NULL,'institutes,ldap_entries AS dcObject,ldap_entry_objclasses as auxObjectClass','institutes.id=dcObject.keyval AND dcObject.oc_map_id=3 AND dcObject.id=auxObjectClass.entry_id AND auxObjectClass.oc_name=\'dcObject\'',NULL,NULL,3,0),(13,4,'ou','referrals.name',NULL,'referrals',NULL,NULL,NULL,3,0),(14,4,'ref','referrals.url',NULL,'referrals',NULL,NULL,NULL,3,0),(15,1,'userCertificate','certs.cert',NULL,'persons,certs','certs.pers_id=persons.id',NULL,NULL,3,0);
/*!40000 ALTER TABLE `ldap_attr_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_entries`
--

DROP TABLE IF EXISTS `ldap_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dn` varchar(255) NOT NULL,
  `oc_map_id` int(10) unsigned NOT NULL,
  `parent` int(11) NOT NULL,
  `keyval` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq1_ldap_entries` (`oc_map_id`,`keyval`),
  UNIQUE KEY `unq2_ldap_entries` (`dn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_entries`
--

LOCK TABLES `ldap_entries` WRITE;
/*!40000 ALTER TABLE `ldap_entries` DISABLE KEYS */;
INSERT INTO `ldap_entries` VALUES (1,'dc=example,dc=com',3,0,1),(2,'cn=Mitya Kovalev,dc=example,dc=com',1,1,1),(3,'cn=Torvlobnor Puzdoy,dc=example,dc=com',1,1,2),(4,'cn=Akakiy Zinberstein,dc=example,dc=com',1,1,3),(5,'documentTitle=book1,dc=example,dc=com',2,1,1),(6,'documentTitle=book2,dc=example,dc=com',2,1,2),(7,'ou=Referral,dc=example,dc=com',4,1,1);
/*!40000 ALTER TABLE `ldap_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_entry_objclasses`
--

DROP TABLE IF EXISTS `ldap_entry_objclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_entry_objclasses` (
  `entry_id` int(11) NOT NULL,
  `oc_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_entry_objclasses`
--

LOCK TABLES `ldap_entry_objclasses` WRITE;
/*!40000 ALTER TABLE `ldap_entry_objclasses` DISABLE KEYS */;
INSERT INTO `ldap_entry_objclasses` VALUES (1,'dcObject'),(4,'pkiUser'),(7,'extensibleObject');
/*!40000 ALTER TABLE `ldap_entry_objclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_oc_mappings`
--

DROP TABLE IF EXISTS `ldap_oc_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_oc_mappings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `keytbl` varchar(64) NOT NULL,
  `keycol` varchar(64) NOT NULL,
  `create_proc` varchar(255) DEFAULT NULL,
  `delete_proc` varchar(255) DEFAULT NULL,
  `expect_return` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_oc_mappings`
--

LOCK TABLES `ldap_oc_mappings` WRITE;
/*!40000 ALTER TABLE `ldap_oc_mappings` DISABLE KEYS */;
INSERT INTO `ldap_oc_mappings` VALUES (1,'inetOrgPerson','persons','id',NULL,NULL,0),(2,'document','documents','id',NULL,NULL,0),(3,'organization','institutes','id',NULL,NULL,0),(4,'referral','referrals','id',NULL,NULL,0);
/*!40000 ALTER TABLE `ldap_oc_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Mitya','Kovalev','mit'),(2,'Torvlobnor','Puzdoy',NULL),(3,'Akakiy','Zinberstein',NULL);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,'332-2334',1),(2,'222-3234',1),(3,'545-4563',2);
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
INSERT INTO `referrals` VALUES (1,'Referral','ldap://localhost:9012/');
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28 10:09:08
