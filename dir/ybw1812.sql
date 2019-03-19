-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: Ybw1812
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Cart_goods_id_a1226e28_fk_ybw_goods_id` (`goods_id`),
  KEY `Cart_user_id_c44ac99e_fk_User_id` (`user_id`),
  CONSTRAINT `Cart_goods_id_a1226e28_fk_ybw_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `ybw_goods` (`id`),
  CONSTRAINT `Cart_user_id_c44ac99e_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'123456','123456','JL8K'),(2,'123456','e10adc3949ba59abbe56e057f20f883e','X1mZ'),(3,'123456','123456','w2w9'),(4,'123456','123456','oTT3'),(5,'123456','123456','3P5F'),(6,'123456','e10adc3949ba59abbe56e057f20f883e','k04a'),(7,'123456','e10adc3949ba59abbe56e057f20f883e','v15a'),(8,'123456','e10adc3949ba59abbe56e057f20f883e','u8zs'),(9,'123456','e10adc3949ba59abbe56e057f20f883e','u8zs'),(10,'123456','e10adc3949ba59abbe56e057f20f883e','95gf'),(11,'123456','e10adc3949ba59abbe56e057f20f883e','95gf'),(12,'123456','e10adc3949ba59abbe56e057f20f883e','95gf'),(13,'123456','e10adc3949ba59abbe56e057f20f883e','kf2h'),(14,'123456','e10adc3949ba59abbe56e057f20f883e','kf2h'),(15,'123456','e10adc3949ba59abbe56e057f20f883e','qdut'),(16,'123456','e10adc3949ba59abbe56e057f20f883e','cb97'),(17,'123456','123456','m0dm'),(18,'1234567','1234567','32e1'),(19,'123456','e10adc3949ba59abbe56e057f20f883e','oqeu'),(20,'123456','e10adc3949ba59abbe56e057f20f883e','oqeu'),(21,'123456','e10adc3949ba59abbe56e057f20f883e','up18'),(22,'123456','123456','TZ8m'),(23,'654321','654321','x5zr'),(24,'111111','111111','FPZI'),(25,'123456','123456','p9ul'),(26,'654321','c33367701511b4f6020ec61ded352059','b57q'),(27,'123456','e10adc3949ba59abbe56e057f20f883e','3lo2'),(28,'123456','e10adc3949ba59abbe56e057f20f883e','3lo2'),(29,'123456','e10adc3949ba59abbe56e057f20f883e','mosq'),(30,'123456','e10adc3949ba59abbe56e057f20f883e','TLHO'),(31,'123456','123456','1yxe'),(32,'123456','123456','m2yx'),(33,'222222','222222','lgdi'),(34,'123456','123456','rv54'),(35,'222222','222222','rg68'),(36,'12345678','12345678','hbtm'),(37,'123456','123456','5q5y'),(38,'123456','123456','x4g2'),(39,'123456','123456','1y8m'),(40,'123456','123456','1y8m'),(41,'1234567','1234567','3g38'),(42,'123456','123456','o8g1'),(43,'123456','e10adc3949ba59abbe56e057f20f883e','5xj6'),(44,'123456','e10adc3949ba59abbe56e057f20f883e','8ug4'),(45,'123456','e10adc3949ba59abbe56e057f20f883e','32n7'),(46,'123456','123456','yx4z'),(47,'123456','e10adc3949ba59abbe56e057f20f883e','T4R5'),(48,'123456','123456','7gi3'),(49,'123456','e10adc3949ba59abbe56e057f20f883e','2xi5'),(50,'123456','e10adc3949ba59abbe56e057f20f883e','30yu'),(51,'123456','e10adc3949ba59abbe56e057f20f883e','62zp'),(52,'123456','123456','8p0l'),(53,'123456','123456','cwjq'),(54,'123456','123456','v615'),(55,'12345678','12345678','5l2g'),(56,'555555','5b1b68a9abf4d2cd155c81a9225fd158','tknd'),(57,'555555','5b1b68a9abf4d2cd155c81a9225fd158','k8jy'),(58,'555555','5b1b68a9abf4d2cd155c81a9225fd158','qmcb'),(59,'555555','5b1b68a9abf4d2cd155c81a9225fd158','2xg6'),(60,'555555','555555','54ri'),(61,'123456','2rpb',''),(62,'123456','123456','nm74'),(63,'aaaaaa','aaaaaa','9mud'),(64,'123456','123456','aiw8'),(65,'123456','123456','0qmb'),(66,'123456','123456','sulw'),(67,'123456','123456','mk11'),(68,'123456','123456','7uoe'),(69,'123456','123456','TF8a'),(70,'123456','123456','0Zmr'),(71,'123456','e10adc3949ba59abbe56e057f20f883e','4kzm'),(72,'123456','e10adc3949ba59abbe56e057f20f883e','4kzm'),(73,'123456','e10adc3949ba59abbe56e057f20f883e','4kzm'),(74,'123456','e10adc3949ba59abbe56e057f20f883e','fmir'),(75,'123456','e10adc3949ba59abbe56e057f20f883e','i1m7'),(76,'123456','e10adc3949ba59abbe56e057f20f883e','i1m7'),(77,'123456','e10adc3949ba59abbe56e057f20f883e','i1m7'),(78,'123123','4297f44b13955235245b2497399d7a93','l4yp'),(79,'123123','4297f44b13955235245b2497399d7a93','fm2a'),(80,'123456','e10adc3949ba59abbe56e057f20f883e','ztv2'),(81,'123456','e10adc3949ba59abbe56e057f20f883e','3y1c'),(82,'123456','e10adc3949ba59abbe56e057f20f883e','uyq6'),(83,'123456','e10adc3949ba59abbe56e057f20f883e','ysau'),(84,'123456','e10adc3949ba59abbe56e057f20f883e','r53a'),(85,'123456','e10adc3949ba59abbe56e057f20f883e','xw9p'),(86,'123456','e10adc3949ba59abbe56e057f20f883e','i6jh'),(87,'123456','e10adc3949ba59abbe56e057f20f883e','4xym'),(88,'123123','4297f44b13955235245b2497399d7a93','pgn6'),(89,'123456','e10adc3949ba59abbe56e057f20f883e','nhe7'),(90,'111111','96e79218965eb72c92a549dd5a330112','xz8o'),(91,'111111','96e79218965eb72c92a549dd5a330112','p2vf'),(92,'111111','96e79218965eb72c92a549dd5a330112','ris3'),(93,'111111','96e79218965eb72c92a549dd5a330112','ris3'),(94,'123456','e10adc3949ba59abbe56e057f20f883e','yzat');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add swiper1',7,'add_swiper1'),(20,'Can change swiper1',7,'change_swiper1'),(21,'Can delete swiper1',7,'delete_swiper1'),(22,'Can add swiper',8,'add_swiper'),(23,'Can change swiper',8,'change_swiper'),(24,'Can delete swiper',8,'delete_swiper'),(25,'Can add detail',9,'add_detail'),(26,'Can change detail',9,'change_detail'),(27,'Can delete detail',9,'delete_detail'),(28,'Can add user',10,'add_user'),(29,'Can change user',10,'change_user'),(30,'Can delete user',10,'delete_user'),(31,'Can add shop',11,'add_shop'),(32,'Can change shop',11,'change_shop'),(33,'Can delete shop',11,'delete_shop'),(34,'Can add s shop',11,'add_sshop'),(35,'Can change s shop',11,'change_sshop'),(36,'Can delete s shop',11,'delete_sshop'),(37,'Can add m shop',12,'add_mshop'),(38,'Can change m shop',12,'change_mshop'),(39,'Can delete m shop',12,'delete_mshop'),(40,'Can add c shop',13,'add_cshop'),(41,'Can change c shop',13,'change_cshop'),(42,'Can delete c shop',13,'delete_cshop'),(43,'Can add goods',14,'add_goods'),(44,'Can change goods',14,'change_goods'),(45,'Can delete goods',14,'delete_goods'),(46,'Can add cart',15,'add_cart'),(47,'Can change cart',15,'change_cart'),(48,'Can delete cart',15,'delete_cart'),(49,'Can add order',16,'add_order'),(50,'Can change order',16,'change_order'),(51,'Can delete order',16,'delete_order'),(52,'Can add order model',17,'add_ordermodel'),(53,'Can change order model',17,'change_ordermodel'),(54,'Can delete order model',17,'delete_ordermodel');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cShop`
--

DROP TABLE IF EXISTS `cShop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cShop` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `shop` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `old_price` varchar(40) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `cart` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cShop`
--

LOCK TABLES `cShop` WRITE;
/*!40000 ALTER TABLE `cShop` DISABLE KEYS */;
INSERT INTO `cShop` VALUES (1,'ROOM0404 2016夏季韩版新款连衣裙','￥181.00','￥258.00','7.0折','加入购物车','static/img/201604062009482292.jpg'),(2,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\",','￥160.00','￥298.00','5.3折','加入购物车','static/img/201604271357074776.jpg'),(3,'佳美诗 2016欧美夏季新款印花连衣裙 女士假两件长裙不规则裙爆款','￥195.00','￥390.00','5折','加入购物车','static/img/201604281135206503.jpg'),(4,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥190.00','￥380.00','5折','加入购物车','static/img/201604281137225121.jpg'),(5,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥83.00','￥332.00','2.5折','加入购物车','static/img/201606011450012414.jpg'),(6,'2016夏季新款女装甜美小清新纯棉麻修身收腰短袖A字裙连衣裙','￥38.00','￥126.00','3.0折','加入购物车','static/img/201607071134225305.jpg'),(7,'艾芮尔 2016新款韩版胖MM200斤大码女装夏 加肥加大露肩两件套套装','￥79.00','￥188.00','4.2折','加入购物车','static/img/201607121522166102.jpg'),(8,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥179.00','￥760.00','2.3折','加入购物车','static/img/201607121548183741.jpg'),(9,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥135.00','￥480.00','4.5折','加入购物车','static/img/linke_14658659125222.jpg'),(10,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥148.00','￥369.00','3.6折','加入购物车','static/img/linke_14673387319957.jpg'),(11,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\"','￥305.00','￥898.00','2.8折','加入购物车','static/img/201604062009482292.jpg'),(12,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥269.00','￥746.00','3.2折','加入购物车','static/img/201604062009482292.jpg');
/*!40000 ALTER TABLE `cShop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `shop` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `old_price` varchar(40) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `cart` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,'ROOM0404 2016夏季韩版新款连衣裙','￥181.00','￥258.00','7.0折','加入购物车','img/201606211709019676.jpg'),(2,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\",','￥160.00','￥298.00','5.3折','加入购物车','img/04.jpg'),(3,'佳美诗 2016欧美夏季新款印花连衣裙 女士假两件长裙不规则裙爆款','￥195.00','￥390.00','5折','加入购物车','img/01.jpg'),(4,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥190.00','￥380.00','5折','加入购物车','img/06.jpg'),(5,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥83.00','￥332.00','2.5折','加入购物车','img/05.jpg'),(6,'2016夏季新款女装甜美小清新纯棉麻修身收腰短袖A字裙连衣裙','￥38.00','￥126.00','3.0折','加入购物车','img/01.jpg'),(7,'艾芮尔 2016新款韩版胖MM200斤大码女装夏 加肥加大露肩两件套套装','￥79.00','￥188.00','2.5折','加入购物车','img/02.jpg'),(8,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥179.00','￥760.00','2.3折','加入购物车','img/02.jpg');
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'ybw','cart'),(13,'ybw','cshop'),(9,'ybw','detail'),(14,'ybw','goods'),(12,'ybw','mshop'),(16,'ybw','order'),(17,'ybw','ordermodel'),(11,'ybw','sshop'),(8,'ybw','swiper'),(7,'ybw','swiper1'),(10,'ybw','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-15 02:48:48.315924'),(2,'auth','0001_initial','2019-03-15 02:48:49.584163'),(3,'admin','0001_initial','2019-03-15 02:48:49.758720'),(4,'admin','0002_logentry_remove_auto_add','2019-03-15 02:48:49.794625'),(5,'contenttypes','0002_remove_content_type_name','2019-03-15 02:48:49.903103'),(6,'auth','0002_alter_permission_name_max_length','2019-03-15 02:48:49.971836'),(7,'auth','0003_alter_user_email_max_length','2019-03-15 02:48:50.052289'),(8,'auth','0004_alter_user_username_opts','2019-03-15 02:48:50.078246'),(9,'auth','0005_alter_user_last_login_null','2019-03-15 02:48:50.124784'),(10,'auth','0006_require_contenttypes_0002','2019-03-15 02:48:50.132167'),(11,'auth','0007_alter_validators_add_error_messages','2019-03-15 02:48:50.153545'),(12,'auth','0008_alter_user_username_max_length','2019-03-15 02:48:50.485589'),(13,'sessions','0001_initial','2019-03-15 02:48:50.537390'),(14,'ybw','0001_initial','2019-03-15 02:48:50.576761'),(15,'ybw','0002_auto_20190314_0953','2019-03-15 02:48:50.601543'),(16,'ybw','0003_lby','2019-03-15 02:48:50.634162'),(17,'ybw','0004_auto_20190314_1409','2019-03-15 02:48:50.699907'),(18,'ybw','0005_shop','2019-03-15 02:48:50.728481'),(19,'ybw','0006_auto_20190315_0243','2019-03-15 02:48:50.778292'),(20,'ybw','0007_detail_name','2019-03-15 02:48:50.882815'),(21,'ybw','0008_remove_detail_name','2019-03-15 02:48:50.927026'),(22,'ybw','0009_detail_img','2019-03-15 03:00:08.221311'),(23,'ybw','0010_user','2019-03-15 03:30:21.534351'),(24,'ybw','0011_auto_20190315_0330','2019-03-15 03:31:00.758446'),(25,'ybw','0012_shop','2019-03-15 06:45:51.472361'),(26,'ybw','0013_auto_20190315_0651','2019-03-15 06:51:13.282806'),(27,'ybw','0014_auto_20190315_0710','2019-03-15 07:10:52.316396'),(28,'ybw','0015_auto_20190315_0807','2019-03-15 08:08:09.411298'),(29,'ybw','0016_auto_20190316_0215','2019-03-16 02:15:47.259364'),(30,'ybw','0017_order_ordermodel','2019-03-18 12:16:59.205113');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mShop`
--

DROP TABLE IF EXISTS `mShop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mShop` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `shop` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `old_price` varchar(40) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `cart` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mShop`
--

LOCK TABLES `mShop` WRITE;
/*!40000 ALTER TABLE `mShop` DISABLE KEYS */;
INSERT INTO `mShop` VALUES (1,'ROOM0404 2016夏季韩版新款连衣裙','￥181.00','￥258.00','7.0折','加入购物车','static/img/201602260137028067.jpg'),(2,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\",','￥160.00','￥298.00','5.3折','加入购物车','static/img/201603081354339001.jpg'),(3,'佳美诗 2016欧美夏季新款印花连衣裙 女士假两件长裙不规则裙爆款','￥195.00','￥390.00','5折','加入购物车','static/img/201603111926478825.jpg'),(4,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥190.00','￥380.00','5折','加入购物车','static/img/201603232239264013.jpg'),(5,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥83.00','￥332.00','2.5折','加入购物车','static/img/201603291032029443.jpg'),(6,'2016夏季新款女装甜美小清新纯棉麻修身收腰短袖A字裙连衣裙','￥38.00','￥126.00','3.0折','加入购物车','static/img/201603291959591645.jpg'),(7,'艾芮尔 2016新款韩版胖MM200斤大码女装夏 加肥加大露肩两件套套装','￥79.00','￥188.00','4.2折','加入购物车','static/img/201605311415521305.jpg'),(8,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥179.00','￥760.00','2.3折','加入购物车','static/img/201607041610291958.jpg'),(9,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥135.00','￥480.00','4.5折','加入购物车','static/img/201607041618155728.jpg'),(10,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥148.00','￥369.00','3.6折','加入购物车','static/img/201606071100167732.jpg'),(11,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\"','￥305.00','￥898.00','2.8折','加入购物车','static/img/201607041454171754.jpg'),(12,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥269.00','￥746.00','3.2折','加入购物车','static/img/linke_14658723315531.jpg');
/*!40000 ALTER TABLE `mShop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swiper`
--

DROP TABLE IF EXISTS `swiper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swiper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swiper`
--

LOCK TABLES `swiper` WRITE;
/*!40000 ALTER TABLE `swiper` DISABLE KEYS */;
INSERT INTO `swiper` VALUES (1,'img/eal.jpg','001','0010'),(2,'img/llke.jpg','002','0020'),(3,'img/panmax.jpg','003','0030'),(4,'img/cs.jpg','0060','0040'),(5,'img/md.jpg','005','0050'),(6,'img/stella.jpg','006','0060');
/*!40000 ALTER TABLE `swiper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swiper1`
--

DROP TABLE IF EXISTS `swiper1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swiper1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swiper1`
--

LOCK TABLES `swiper1` WRITE;
/*!40000 ALTER TABLE `swiper1` DISABLE KEYS */;
INSERT INTO `swiper1` VALUES (1,'img/linke_14675991774937.jpg','01','￥170.00'),(2,'img/linke_14675985285998.jpg','02','￥79.00'),(3,'img/201606161639114423.jpg','03','￥56.00'),(4,'img/201606211709019676.jpg','04','￥62.00'),(5,'img/201606211734183033.jpg','05','￥57.00'),(6,'img/201606281622183043.jpg','06','￥86.00');
/*!40000 ALTER TABLE `swiper1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wShop`
--

DROP TABLE IF EXISTS `wShop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wShop` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `shop` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `old_price` varchar(40) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `cart` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wShop`
--

LOCK TABLES `wShop` WRITE;
/*!40000 ALTER TABLE `wShop` DISABLE KEYS */;
INSERT INTO `wShop` VALUES (1,'ROOM0404 2016夏季韩版新款连衣裙','￥181.00','￥258.00','7.0折','加入购物车','static/img/201606211709019676.jpg'),(2,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\",','￥160.00','￥298.00','5.3折','加入购物车','static/img/201606251754441282.jpg'),(3,'佳美诗 2016欧美夏季新款印花连衣裙 女士假两件长裙不规则裙爆款','￥195.00','￥390.00','5折','加入购物车','static/img/201606281405385445.jpg'),(4,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥190.00','￥380.00','5折','加入购物车','static/img/201606281422478849.jpg'),(5,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥83.00','￥332.00','2.5折','加入购物车','static/img/201606281656456293.jpg'),(6,'2016夏季新款女装甜美小清新纯棉麻修身收腰短袖A字裙连衣裙','￥38.00','￥126.00','3.0折','加入购物车','static/img/201607061357388108.jpg'),(7,'艾芮尔 2016新款韩版胖MM200斤大码女装夏 加肥加大露肩两件套套装','￥79.00','￥188.00','4.2折','加入购物车','static/img/201607111002315056.jpg'),(8,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥179.00','￥760.00','2.3折','加入购物车','static/img/201607271454072825.jpg'),(9,'RANRAN冉冉2016夏季女装新款蕾丝长裙子大摆型拼接绸缎真丝连衣裙','￥135.00','￥480.00','4.5折','加入购物车','static/img/201607061357388108.jpg'),(10,'2016夏季新款韩版时尚牛仔套装女显瘦背心上衣镶钻半身裙两件套','￥148.00','￥369.00','3.6折','加入购物车','static/img/linke_14657810706247.jpg'),(11,'\"ROOM0404 2016夏季连衣裙仿真丝中长宽松大摆裙 高端\"','￥305.00','￥898.00','2.8折','加入购物车','static/img/linke_14658678174906.jpg'),(12,'佳美诗 2016夏季新款纯色钉珠女式衬衫欧美中袖翻领上衣开衫品牌女装','￥269.00','￥746.00','3.2折','加入购物车','static/img/linke_14675998403299.jpg');
/*!40000 ALTER TABLE `wShop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ybw_goods`
--

DROP TABLE IF EXISTS `ybw_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ybw_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(200) NOT NULL,
  `productimg` varchar(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productlongname` varchar(256) NOT NULL,
  `isxf` int(11) NOT NULL,
  `pmdesc` int(11) NOT NULL,
  `specifics` varchar(100) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `marketprice` decimal(6,2) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `childcid` int(11) NOT NULL,
  `childcidname` varchar(100) NOT NULL,
  `dealerid` varchar(10) NOT NULL,
  `storenums` int(11) NOT NULL,
  `productnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ybw_goods`
--

LOCK TABLES `ybw_goods` WRITE;
/*!40000 ALTER TABLE `ybw_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybw_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ybw_order`
--

DROP TABLE IF EXISTS `ybw_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ybw_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(6) NOT NULL,
  `updatetime` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ybw_order_user_id_613eadbb_fk_User_id` (`user_id`),
  CONSTRAINT `ybw_order_user_id_613eadbb_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ybw_order`
--

LOCK TABLES `ybw_order` WRITE;
/*!40000 ALTER TABLE `ybw_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybw_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ybw_ordermodel`
--

DROP TABLE IF EXISTS `ybw_ordermodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ybw_ordermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ybw_ordermodel_goods_id_a5eb2271_fk_ybw_goods_id` (`goods_id`),
  KEY `ybw_ordermodel_order_id_7b878521_fk_ybw_order_id` (`order_id`),
  CONSTRAINT `ybw_ordermodel_goods_id_a5eb2271_fk_ybw_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `ybw_goods` (`id`),
  CONSTRAINT `ybw_ordermodel_order_id_7b878521_fk_ybw_order_id` FOREIGN KEY (`order_id`) REFERENCES `ybw_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ybw_ordermodel`
--

LOCK TABLES `ybw_ordermodel` WRITE;
/*!40000 ALTER TABLE `ybw_ordermodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybw_ordermodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 14:14:14
