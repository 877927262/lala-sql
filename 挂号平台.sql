-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: registration
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `doctor` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_idx` (`user`),
  KEY `doctor_idx` (`doctor`),
  CONSTRAINT `appointment-doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointment-user` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2017-12-22 00:00:00','上午',1,1),(2,'2017-12-22 00:00:00','上午',1,2),(3,'2017-12-22 00:00:00','上午',1,3),(4,'2017-12-22 00:00:00','上午',1,4),(5,'2017-12-22 00:00:00','上午',1,5),(6,'2017-12-22 00:00:00','下午',1,6),(7,'2017-12-22 00:00:00','下午',1,7),(8,'2017-12-22 00:00:00','下午',1,8),(9,'2017-12-22 00:00:00','下午',1,9),(10,'2017-12-22 00:00:00','下午',1,10);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `banner` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'外科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513415850088&di=85c5e46f1b20b80623d4173dd7719fa7&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd0c8a786c9177f3ee431e72a7bcf3bc79f3d568b.jpg'),(2,'内科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513415909358&di=55bab6350f58221211a3e680624f29ed&imgtype=0&src=http%3A%2F%2Fimage.cnpp.cn%2Fupload%2Fimages%2F20170816%2F1502863320_125461_2.jpg'),(3,'儿科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416007935&di=08d639006a403e6bc416fb66979c30be&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd53f8794a4c27d1e7c5f145a11d5ad6eddc43836.jpg'),(4,'骨科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416050603&di=bdf518025afb5faf30eb3a9ede8c7170&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F37d3d539b6003af37214e05a3e2ac65c1038b659.jpg'),(5,'眼科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416131841&di=27b37d621c6f9b3d0f407e01493762d6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fe824b899a9014c08234cda80007b02087bf4f4a4.jpg'),(6,'口腔科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416500713&di=2d13eee0fc5ea265d0f80e8d4b2aa5d0&imgtype=0&src=http%3A%2F%2Fsmt.114chn.com%2FWebpub%2F652200%2F120520000002%2Fupload%2F201306271247325688.jpg'),(7,'耳鼻喉科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416253798&di=907bc21a433f98dc3d53580ef5a5eb3b&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3Dc841891d798da9775a228e68d838926c%2F3812b31bb051f81904c94964d0b44aed2e73e734.jpg'),(8,'肿瘤科','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2778499974,3682192024&fm=27&gp=0.jpg'),(9,'精神科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416549757&di=f8f6d29115e5e521d9c64d94714273bf&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F9c16fdfaaf51f3de2e66604c9feef01f3b2979c6.jpg'),(10,'皮肤科','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416577042&di=62d51a5f79c7bab76232aacbace92c31&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F242dd42a2834349bc7aadd71c3ea15ce37d3be92.jpg');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_idx` (`department`),
  CONSTRAINT `department` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'外科张一',1,NULL,NULL),(2,'内科张二',2,NULL,NULL),(3,'儿科张三',3,NULL,NULL),(4,'骨科李四',4,NULL,NULL),(5,'眼科王五',5,NULL,NULL),(6,'口腔科什么六',6,NULL,NULL),(7,'耳鼻喉什么七',7,NULL,NULL),(8,'肿瘤什么八',8,NULL,NULL),(9,'精神什么九',9,NULL,NULL),(10,'肿瘤什么十',10,NULL,NULL),(11,'外科李五',1,NULL,NULL);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_illness`
--

DROP TABLE IF EXISTS `doctor_illness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_illness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` int(11) DEFAULT NULL,
  `illness` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_idx` (`doctor`),
  KEY `illness_idx` (`illness`),
  CONSTRAINT `doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `illness` FOREIGN KEY (`illness`) REFERENCES `illness` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_illness`
--

LOCK TABLES `doctor_illness` WRITE;
/*!40000 ALTER TABLE `doctor_illness` DISABLE KEYS */;
INSERT INTO `doctor_illness` VALUES (1,1,1),(2,1,9),(3,1,3),(4,2,2),(5,2,3),(6,3,4),(7,4,3),(8,5,6),(9,6,6),(10,7,4),(11,8,8),(12,9,5),(13,10,7),(14,6,3),(15,5,1);
/*!40000 ALTER TABLE `doctor_illness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `illness`
--

DROP TABLE IF EXISTS `illness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `illness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `banner` longtext,
  `discribe` longtext,
  `method` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illness`
--

LOCK TABLES `illness` WRITE;
/*!40000 ALTER TABLE `illness` DISABLE KEYS */;
INSERT INTO `illness` VALUES (1,'感冒','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416698326&di=459d886ae7564cf8dde8bc551af06fa7&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3D12e0d9cd2d7f9e2f6438154b77598351%2F060828381f30e9240bf2f71a46086e061d95f743.jpg',NULL,NULL),(2,'头疼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416754149&di=2a0889e80174cd8003a7ca373be2609e&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Ffd039245d688d43f5b0d4ccb761ed21b0ef43b67.jpg',NULL,NULL),(3,'牙疼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416777079&di=28e24b0a1674497d11edec45161fa052&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F78310a55b319ebc49f218ab08926cffc1e1716b9.jpg',NULL,NULL),(4,'腿疼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416813366&di=269d9b82f1fb424b1493a2694fe3d77f&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fdcc451da81cb39db716b5a6cdb160924ab183064.jpg',NULL,NULL),(5,'腰疼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513417071645&di=4be1b2e7474ef90a0c8a211bffafc51b&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fdbb44aed2e738bd44be7890baa8b87d6267ff9c2.jpg',NULL,NULL),(6,'眼睛疼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513416913904&di=40c088281dc621066638bba2abb34206&imgtype=0&src=http%3A%2F%2Fpic.7y7.com%2F201512%2F20151207181001918.jpg',NULL,NULL),(7,'失眠','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513417181477&di=090aef3cc538fb34996db416cd33445f&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fb812c8fcc3cec3fdd6120552dc88d43f879427ec.jpg',NULL,NULL),(8,'帕金森','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513417210336&di=474cc0fc9fb5d72a38b4fc9318a1e102&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201704%2F11%2F7b1e275d581cae0d8e667f9257c9c7eb.jpg',NULL,NULL),(9,'耳鸣','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513417453293&di=102a1b113326241d93f5e2a533f16ce1&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8ad4b31c8701a18b1fc955ba942f07082838fe21.jpg',NULL,NULL),(10,'高血压','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2444309520,3600566461&fm=27&gp=0.jpg',NULL,NULL);
/*!40000 ALTER TABLE `illness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1','张一','11','男'),(2,'2','张二','23','女'),(3,'3','张三','43','男'),(4,'4','李四','43','女'),(5,'5','王五','45','男'),(6,'6','什么六','43','男'),(7,'7','什么七','32','男'),(8,'8','王八','43','女'),(9,'9','什么九','65','女'),(10,'10','什么十','54','女'),(11,'11','张呵','34','女'),(12,'23','张哈','23','女'),(13,'12','张拉','34','男');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-25 10:16:28
