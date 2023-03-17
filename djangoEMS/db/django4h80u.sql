-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django4h80u
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/django4h80u/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/django4h80u/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/django4h80u/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeifenlei`
--

DROP TABLE IF EXISTS `shebeifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941357801 DEFAULT CHARSET=utf8 COMMENT='设备分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeifenlei`
--

LOCK TABLES `shebeifenlei` WRITE;
/*!40000 ALTER TABLE `shebeifenlei` DISABLE KEYS */;
INSERT INTO `shebeifenlei` VALUES (21,'2021-03-05 10:34:49','分类1'),(22,'2021-03-05 10:34:49','分类2'),(23,'2021-03-05 10:34:49','分类3'),(24,'2021-03-05 10:34:49','分类4'),(25,'2021-03-05 10:34:49','分类5'),(26,'2021-03-05 10:34:49','分类6'),(1614941357800,'2021-03-05 10:49:17','11');
/*!40000 ALTER TABLE `shebeifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeiguihai`
--

DROP TABLE IF EXISTS `shebeiguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeiguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `guihaibeizhu` varchar(200) DEFAULT NULL COMMENT '归还备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941523062 DEFAULT CHARSET=utf8 COMMENT='设备归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeiguihai`
--

LOCK TABLES `shebeiguihai` WRITE;
/*!40000 ALTER TABLE `shebeiguihai` DISABLE KEYS */;
INSERT INTO `shebeiguihai` VALUES (1614941523061,'2021-03-05 10:52:03','设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian3.jpg','生产商3',1,'2021-03-29','1111','001','小李','13456545981','是','1');
/*!40000 ALTER TABLE `shebeiguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeijieyong`
--

DROP TABLE IF EXISTS `shebeijieyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeijieyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jieyongtianshu` int(11) NOT NULL COMMENT '借用天数',
  `jieyongriqi` date DEFAULT NULL COMMENT '借用日期',
  `jieyongbeizhu` varchar(200) DEFAULT NULL COMMENT '借用备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941497043 DEFAULT CHARSET=utf8 COMMENT='设备借用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeijieyong`
--

LOCK TABLES `shebeijieyong` WRITE;
/*!40000 ALTER TABLE `shebeijieyong` DISABLE KEYS */;
INSERT INTO `shebeijieyong` VALUES (41,'2021-03-05 10:34:49','设备编号1','设备名称1','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian1.jpg','生产商1',1,1,'2021-03-05','借用备注1','用户名1','姓名1','13823888881','是',''),(42,'2021-03-05 10:34:49','设备编号2','设备名称2','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian2.jpg','生产商2',2,2,'2021-03-05','借用备注2','用户名2','姓名2','13823888882','是',''),(43,'2021-03-05 10:34:49','设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian3.jpg','生产商3',3,3,'2021-03-05','借用备注3','用户名3','姓名3','13823888883','是',''),(44,'2021-03-05 10:34:49','设备编号4','设备名称4','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian4.jpg','生产商4',4,4,'2021-03-05','借用备注4','用户名4','姓名4','13823888884','是',''),(45,'2021-03-05 10:34:49','设备编号5','设备名称5','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian5.jpg','生产商5',5,5,'2021-03-05','借用备注5','用户名5','姓名5','13823888885','是',''),(46,'2021-03-05 10:34:49','设备编号6','设备名称6','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian6.jpg','生产商6',6,6,'2021-03-05','借用备注6','用户名6','姓名6','13823888886','是',''),(1614941497042,'2021-03-05 10:51:37','设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian3.jpg','生产商3',0,2,'2021-03-25','11111','001','小李','13456545981',NULL,'');
/*!40000 ALTER TABLE `shebeijieyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeirenling`
--

DROP TABLE IF EXISTS `shebeirenling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeirenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `zhejiulv` varchar(200) DEFAULT NULL COMMENT '折旧率',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `caigouriqi` varchar(200) DEFAULT NULL COMMENT '采购日期',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `dangqianweizhi` varchar(200) DEFAULT NULL COMMENT '当前位置',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941396416 DEFAULT CHARSET=utf8 COMMENT='设备认领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeirenling`
--

LOCK TABLES `shebeirenling` WRITE;
/*!40000 ALTER TABLE `shebeirenling` DISABLE KEYS */;
INSERT INTO `shebeirenling` VALUES (1614941396415,'2021-03-05 10:49:56','设备编号6','设备名称6','分类6','折旧率6','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian6.jpg',1,'生产商6','2021-03-05','所属部门6','当前位置6','001','小李','13456545981','是','收到认领设备');
/*!40000 ALTER TABLE `shebeirenling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-05 10:34:49'),(2,'000','000','','2021-03-05 10:50:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiushenbao`
--

DROP TABLE IF EXISTS `weixiushenbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiushenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuwenti` longtext COMMENT '报修问题',
  `baoxiushuliang` int(11) DEFAULT NULL COMMENT '报修数量',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `baoxiubeizhu` varchar(200) DEFAULT NULL COMMENT '报修备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941557943 DEFAULT CHARSET=utf8 COMMENT='维修申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiushenbao`
--

LOCK TABLES `weixiushenbao` WRITE;
/*!40000 ALTER TABLE `weixiushenbao` DISABLE KEYS */;
INSERT INTO `weixiushenbao` VALUES (51,'2021-03-05 10:34:49','设备编号1','设备名称1','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian1.jpg','报修问题1',1,'2021-03-05','报修备注1','用户名1','姓名1','13823888881','是',''),(52,'2021-03-05 10:34:49','设备编号2','设备名称2','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian2.jpg','报修问题2',2,'2021-03-05','报修备注2','用户名2','姓名2','13823888882','是',''),(53,'2021-03-05 10:34:49','设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian3.jpg','报修问题3',3,'2021-03-05','报修备注3','用户名3','姓名3','13823888883','是',''),(54,'2021-03-05 10:34:49','设备编号4','设备名称4','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian4.jpg','报修问题4',4,'2021-03-05','报修备注4','用户名4','姓名4','13823888884','是',''),(55,'2021-03-05 10:34:49','设备编号5','设备名称5','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian5.jpg','报修问题5',5,'2021-03-05','报修备注5','用户名5','姓名5','13823888885','是',''),(56,'2021-03-05 10:34:49','设备编号6','设备名称6','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian6.jpg','报修问题6',6,'2021-03-05','报修备注6','用户名6','姓名6','13823888886','是',''),(1614941557942,'2021-03-05 10:52:37','设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian3.jpg','这里进行维修申报',1,'2021-03-27','1','001','小李','13456545981','是','已派人处理');
/*!40000 ALTER TABLE `weixiushenbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614941468069 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-05 10:34:49','用户1','123456','姓名1','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-03-05 10:34:49','用户2','123456','姓名2','女','http://localhost:8080/django4h80u/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-03-05 10:34:49','用户3','123456','姓名3','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-03-05 10:34:49','用户4','123456','姓名4','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-03-05 10:34:49','用户5','123456','姓名5','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-03-05 10:34:49','用户6','123456','姓名6','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1614941468068,'2021-03-05 10:51:08','001','001','小李','女','http://localhost:8080/django4h80u/upload/1614941479842.jpeg','13456545981','132@12.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanxinxi`
--

DROP TABLE IF EXISTS `zichanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `zhejiulv` varchar(200) DEFAULT NULL COMMENT '折旧率',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `dangqianweizhi` varchar(200) DEFAULT NULL COMMENT '当前位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='资产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanxinxi`
--

LOCK TABLES `zichanxinxi` WRITE;
/*!40000 ALTER TABLE `zichanxinxi` DISABLE KEYS */;
INSERT INTO `zichanxinxi` VALUES (31,'2021-03-05 10:34:49','设备编号1','设备名称1','分类1','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian1.jpg',1,'生产商1','折旧率1','2021-03-05','所属部门1','当前位置1'),(32,'2021-03-05 10:34:49','设备编号2','设备名称2','分类2','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian2.jpg',2,'生产商2','折旧率2','2021-03-05','所属部门2','当前位置2'),(33,'2021-03-05 10:34:49','设备编号3','设备名称3','分类3','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian3.jpg',3,'生产商3','折旧率3','2021-03-05','所属部门3','当前位置3'),(34,'2021-03-05 10:34:49','设备编号4','设备名称4','分类4','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian4.jpg',4,'生产商4','折旧率4','2021-03-05','所属部门4','当前位置4'),(35,'2021-03-05 10:34:49','设备编号5','设备名称5','分类5','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian5.jpg',5,'生产商5','折旧率5','2021-03-05','所属部门5','当前位置5'),(36,'2021-03-05 10:34:49','设备编号6','设备名称6','分类6','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian6.jpg',5,'生产商6','折旧率6','2021-03-05','所属部门6','当前位置6');
/*!40000 ALTER TABLE `zichanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 10:18:51
