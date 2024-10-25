/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongsiyuangong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongsiyuangong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongsiyuangong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-25 10:41:04'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-25 10:41:04'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-03-25 10:41:04'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-03-25 10:41:04'),(5,'bumen_types','部门',1,'部门1',NULL,NULL,'2023-03-25 10:41:04'),(6,'bumen_types','部门',2,'部门2',NULL,NULL,'2023-03-25 10:41:04'),(7,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2023-03-25 10:41:04'),(8,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2023-03-25 10:41:04'),(9,'yuangong_kaoqin_types','员工考勤类型',1,'日常考勤',NULL,NULL,'2023-03-25 10:41:04'),(10,'yuangong_kaoqin_types','员工考勤类型',2,'考勤类型2',NULL,NULL,'2023-03-25 10:41:04'),(11,'yuangong_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-03-25 10:41:04'),(12,'yuangong_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-03-25 10:41:04'),(13,'yuangongqingjia_types','请假类型',1,'生病',NULL,NULL,'2023-03-25 10:41:04'),(14,'yuangongqingjia_types','请假类型',2,'有事',NULL,NULL,'2023-03-25 10:41:04'),(15,'yuangongqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-25 10:41:04'),(16,'yuangongqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-25 10:41:04'),(17,'yuangongqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-25 10:41:04'),(18,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-25 10:41:04'),(19,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-25 10:41:04'),(21,'zhiwei_types','职位',3,'职位3',NULL,'','2023-03-25 10:55:34');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',1,'2023-03-25 10:42:47','公告详情1','2023-03-25 10:42:47'),(2,'公告名称2',1,'2023-03-25 10:42:47','公告详情2','2023-03-25 10:42:47'),(3,'公告名称3',2,'2023-03-25 10:42:47','公告详情3','2023-03-25 10:42:47'),(4,'公告名称4',2,'2023-03-25 10:42:47','公告详情4','2023-03-25 10:42:47'),(5,'公告名称5',1,'2023-03-25 10:42:47','公告详情5','2023-03-25 10:42:47'),(6,'公告名称6',2,'2023-03-25 10:42:47','公告详情6','2023-03-25 10:42:47'),(7,'公告名称7',1,'2023-03-25 10:42:47','公告详情7','2023-03-25 10:42:47'),(8,'公告名称8',1,'2023-03-25 10:42:47','公告详情8','2023-03-25 10:42:47'),(9,'公告名称9',2,'2023-03-25 10:42:47','公告详情9','2023-03-25 10:42:47'),(10,'公告名称10',1,'2023-03-25 10:42:47','公告详情10','2023-03-25 10:42:47'),(11,'公告名称11',2,'2023-03-25 10:42:47','公告详情11','2023-03-25 10:42:47'),(12,'公告名称12',1,'2023-03-25 10:42:47','公告详情12','2023-03-25 10:42:47'),(13,'公告名称13',2,'2023-03-25 10:42:47','公告详情13','2023-03-25 10:42:47'),(14,'公告名称14',2,'2023-03-25 10:42:47','<p>公告详情14换个哈哈哈</p>','2023-03-25 10:42:47');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','w774v3m1lg9xwgfiisxb2klbqun7szqc','2023-03-25 10:49:35','2023-03-25 12:01:53'),(2,1,'a1','yuangong','员工','az5ugssamsk85g4fhcqj65acxbqclyeu','2023-03-25 10:58:26','2023-03-25 11:58:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-25 10:41:04');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yuangong_id`,`xinzi_uuid_number`,`xinzi_name`,`xinzi_month`,`jiben_jine`,`jiangjin_jine`,`jixiao_jine`,`butie_jine`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,2,'1679712167405','标题1','2023-02','827.05','542.70','81.70','898.76','73.35','备注1','2023-03-25 10:42:47','2023-03-25 10:42:47'),(2,1,'1679712167391','标题2','2023-02','229.11','309.76','33.00','442.10','190.06','备注2','2023-03-25 10:42:47','2023-03-25 10:42:47'),(3,1,'1679712167332','标题3','2023-02','603.40','162.53','707.11','581.27','510.48','备注3','2023-03-25 10:42:47','2023-03-25 10:42:47'),(4,2,'1679712167317','标题4','2023-02','299.94','553.33','260.99','252.51','763.44','备注4','2023-03-25 10:42:47','2023-03-25 10:42:47'),(5,1,'1679712167394','标题5','2023-02','873.81','162.74','972.73','841.05','375.40','备注5','2023-03-25 10:42:47','2023-03-25 10:42:47'),(6,1,'1679712167369','标题6','2023-02','468.50','814.57','121.97','320.08','658.34','备注6','2023-03-25 10:42:47','2023-03-25 10:42:47'),(7,3,'1679712167355','标题7','2023-02','407.21','215.03','528.42','850.15','236.41','备注7','2023-03-25 10:42:47','2023-03-25 10:42:47'),(8,2,'1679712167348','标题8','2023-02','445.28','787.32','935.64','728.97','588.83','备注8','2023-03-25 10:42:47','2023-03-25 10:42:47'),(9,3,'1679712167347','标题9','2023-02','757.28','353.71','974.21','690.96','898.22','备注9','2023-03-25 10:42:47','2023-03-25 10:42:47'),(10,3,'1679712167345','标题10','2023-02','678.59','270.40','831.55','494.08','355.14','备注10','2023-03-25 10:42:47','2023-03-25 10:42:47'),(11,1,'1679712167344','标题11','2023-02','516.84','777.75','623.00','725.76','623.79','备注11','2023-03-25 10:42:47','2023-03-25 10:42:47'),(12,3,'1679712167409','标题12','2023-02','699.73','568.60','844.03','166.48','353.30','备注12','2023-03-25 10:42:47','2023-03-25 10:42:47'),(13,3,'1679712167397','标题13','2023-02','101.13','109.52','265.46','620.58','484.36','备注13','2023-03-25 10:42:47','2023-03-25 10:42:47'),(14,2,'1679712167323','标题14','2023-02','106.43','954.47','826.20','96.20','711.92','备注14','2023-03-25 10:42:47','2023-03-25 10:42:47'),(15,1,'1679712958928','员工姓名1的3月份工资','2023-03','300.00','440.00','500.00','600.00','1840.00','<p>回复地方都是发达杀手</p>','2023-03-25 10:56:23','2023-03-25 10:56:23'),(16,2,'1679712992489','员工姓名1的3月工资','2023-03','800.00','900.00','5400.00','111.00','7211.00','<p>个搭嘎</p>','2023-03-25 10:56:55','2023-03-25 10:56:55');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`zhiwei_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,1,2,'1@qq.com',1,'2023-03-25 10:42:47'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,2,1,'2@qq.com',1,'2023-03-25 10:42:47'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,1,2,'3@qq.com',2,'2023-03-25 10:42:47');

/*Table structure for table `yuangong_kaoqin` */

DROP TABLE IF EXISTS `yuangong_kaoqin`;

CREATE TABLE `yuangong_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yuangong_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yuangong_kaoqin_types` int(11) DEFAULT NULL COMMENT '员工考勤类型 Search111',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `yuangong_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='员工考勤';

/*Data for the table `yuangong_kaoqin` */

insert  into `yuangong_kaoqin`(`id`,`yuangong_kaoqin_uuid_number`,`yuangong_kaoqin_name`,`yuangong_kaoqin_types`,`bumen_types`,`yuangong_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'1679712167389','考勤标题1',1,2,'考勤详情1','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(2,'1679712167365','考勤标题2',2,1,'考勤详情2','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(3,'1679712167337','考勤标题3',1,2,'考勤详情3','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(4,'1679712167368','考勤标题4',2,1,'考勤详情4','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(5,'1679712167333','考勤标题5',2,2,'考勤详情5','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(6,'1679712167360','考勤标题6',1,1,'考勤详情6','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(7,'1679712167378','考勤标题7',1,2,'考勤详情7','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(8,'1679712167403','考勤标题8',2,2,'考勤详情8','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(9,'1679712167332','考勤标题9',2,1,'考勤详情9','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(10,'1679712167413','考勤标题10',1,2,'考勤详情10','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(11,'1679712167367','考勤标题11',1,2,'考勤详情11','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(12,'1679712167397','考勤标题12',1,1,'考勤详情12','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(13,'1679712167345','考勤标题13',1,1,'考勤详情13','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(14,'1679712167386','考勤标题14',2,1,'考勤详情14','2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(15,'1679713037895','考勤1111',1,1,'<p>广东省发生固定死感受到</p>','2023-03-25 10:57:29','2023-03-26 00:00:00','2023-03-25 10:57:29');

/*Table structure for table `yuangong_kaoqin_list` */

DROP TABLE IF EXISTS `yuangong_kaoqin_list`;

CREATE TABLE `yuangong_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yuangong_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `yuangong_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工考勤详情';

/*Data for the table `yuangong_kaoqin_list` */

insert  into `yuangong_kaoqin_list`(`id`,`yuangong_id`,`yuangong_kaoqin_id`,`yuangong_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,3,1,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(2,1,2,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(3,2,3,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(4,1,4,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(5,3,5,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(6,1,6,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(7,1,7,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(8,2,8,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(9,1,9,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(10,3,10,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(11,1,11,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(12,3,12,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(13,3,13,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(14,2,14,1,'2023-03-25 10:42:47','2023-03-25 10:42:47','2023-03-25 10:42:47'),(15,1,15,2,'2023-03-25 10:57:29','2023-03-25 10:59:04','2023-03-25 10:57:29'),(16,3,15,1,'2023-03-25 10:57:29',NULL,'2023-03-25 10:57:29');

/*Table structure for table `yuangongqingjia` */

DROP TABLE IF EXISTS `yuangongqingjia`;

CREATE TABLE `yuangongqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(200) DEFAULT NULL COMMENT '员工',
  `yuangongqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `yuangongqingjia_text` longtext COMMENT '请假缘由',
  `yuangongqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yuangongqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yuangongqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yuangongqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `yuangongqingjia_yesno_text` longtext COMMENT '处理意见',
  `yuangongqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='员工请假';

/*Data for the table `yuangongqingjia` */

insert  into `yuangongqingjia`(`id`,`yuangong_id`,`yuangongqingjia_name`,`yuangongqingjia_text`,`yuangongqingjia_types`,`insert_time`,`yuangongqingjia_time`,`yuangongqingjia_number`,`yuangongqingjia_yesno_types`,`yuangongqingjia_yesno_text`,`yuangongqingjia_shenhe_time`,`create_time`) values (1,1,'请假标题1','请假缘由1',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',490,1,NULL,NULL,'2023-03-25 10:42:47'),(2,3,'请假标题2','请假缘由2',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',195,1,NULL,NULL,'2023-03-25 10:42:47'),(3,3,'请假标题3','请假缘由3',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',400,1,NULL,NULL,'2023-03-25 10:42:47'),(4,3,'请假标题4','请假缘由4',2,'2023-03-25 10:42:47','2023-03-25 10:42:47',354,1,NULL,NULL,'2023-03-25 10:42:47'),(5,2,'请假标题5','请假缘由5',2,'2023-03-25 10:42:47','2023-03-25 10:42:47',245,1,NULL,NULL,'2023-03-25 10:42:47'),(6,2,'请假标题6','请假缘由6',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',453,1,NULL,NULL,'2023-03-25 10:42:47'),(7,3,'请假标题7','请假缘由7',2,'2023-03-25 10:42:47','2023-03-25 10:42:47',115,1,NULL,NULL,'2023-03-25 10:42:47'),(8,1,'请假标题8','请假缘由8',2,'2023-03-25 10:42:47','2023-03-25 10:42:47',224,1,NULL,NULL,'2023-03-25 10:42:47'),(9,1,'请假标题9','请假缘由9',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',118,1,NULL,NULL,'2023-03-25 10:42:47'),(10,3,'请假标题10','请假缘由10',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',41,1,NULL,NULL,'2023-03-25 10:42:47'),(11,1,'请假标题11','请假缘由11',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',42,1,NULL,NULL,'2023-03-25 10:42:47'),(12,1,'请假标题12','请假缘由12',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',177,1,NULL,NULL,'2023-03-25 10:42:47'),(13,2,'请假标题13','请假缘由13',1,'2023-03-25 10:42:47','2023-03-25 10:42:47',178,1,NULL,NULL,'2023-03-25 10:42:47'),(14,3,'请假标题14','请假缘由14',2,'2023-03-25 10:42:47','2023-03-25 10:42:47',360,2,'和京津冀军军','2023-03-25 10:57:47','2023-03-25 10:42:47'),(15,1,'请假111','给对方广东省固定死更合适的',1,'2023-03-25 10:59:27','2023-03-25 10:59:21',2,3,'和京津冀军','2023-03-25 10:59:47','2023-03-25 10:59:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
