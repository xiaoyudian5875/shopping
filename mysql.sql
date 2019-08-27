/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.15 : Database - bj1901
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bj1901` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bj1901`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `cid` VARCHAR(32) NOT NULL COMMENT '商品编号',
  `cname` VARCHAR(256) NOT NULL COMMENT '商品名字',
  `cprice` DOUBLE NOT NULL COMMENT '商品价格',
  `image` VARCHAR(256) NOT NULL COMMENT '商品图片',
  `count` VARCHAR(25) NOT NULL COMMENT '产品数量',
  PRIMARY KEY (`cid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `car` */

INSERT  INTO `car`(`cid`,`cname`,`cprice`,`image`,`count`) VALUES ('1001','三鹿奶粉',89.99,'图片','1'),('1002','遥控飞机',150.99,'图片','8'),('1003','溜溜车',89.99,'图片','2'),('1004','病毒',1999,'图片','2');

/*Table structure for table `cc` */

DROP TABLE IF EXISTS `cc`;

CREATE TABLE `cc` (
  `class` VARCHAR(20) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `score` INT(200) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `cc` */

INSERT  INTO `cc`(`class`,`name`,`score`) VALUES ('1班','小明',79),('2班','小红',65),('3班','小白',38),('1班','小剑',67);

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptno` INT(5) NOT NULL,
  `dname` VARCHAR(32) NOT NULL,
  `loc` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

INSERT  INTO `dept`(`deptno`,`dname`,`loc`) VALUES (1001,'设计部','深圳'),(1002,'研发部','上海'),(1003,'采购部','南昌'),(1004,'市场部','北京'),(1005,'客服部','武汉'),(1006,'后勤部','天津');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `empno` INT(5) NOT NULL,
  `ename` VARCHAR(8) NOT NULL,
  `job` VARCHAR(12) NOT NULL,
  `mgr` INT(2) NOT NULL,
  `hiredate` DATE NOT NULL,
  `sal` DOUBLE(8,2) NOT NULL,
  `deptno` INT(10) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

/*Data for the table `emp` */

INSERT  INTO `emp`(`empno`,`ename`,`job`,`mgr`,`hiredate`,`sal`,`deptno`) VALUES (1001,'刘备','战士',5,'2018-12-01',8528.00,1004),(1002,'李白','刺客',1,'2018-12-01',852.00,1001),(1003,'上官婉','法师',1,'2018-12-01',963.00,1002),(1004,'赵云','刺客',1,'2018-12-01',888.00,1001),(1005,'梦琪','坦克',1,'2018-12-01',5233.00,1002),(1006,'后裔','射手',1,'2018-12-01',3600.00,1005),(1007,'嫦娥','法师',1,'2018-12-01',1800.00,1007),(1008,'蔡文姬','辅助',1,'2018-12-01',522.00,1001),(1009,'白起','战士',1,'2018-12-01',3800.00,1002);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` INT(8) DEFAULT NULL,
  `ename` VARCHAR(50) DEFAULT NULL,
  `salary` INT(11) DEFAULT NULL,
  `deptid` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

INSERT  INTO `employee`(`eid`,`ename`,`salary`,`deptid`) VALUES (1,'df',456,12),(2,'er',436,11),(3,'ds',789,12),(4,'df',456,14),(5,'ty',715,12),(6,'uy',123,75),(7,'df',789,11);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` VARCHAR(32) NOT NULL COMMENT '产品id',
  `pname` VARCHAR(50) DEFAULT NULL COMMENT '产品名',
  `price` DOUBLE(10,2) DEFAULT NULL COMMENT '折扣价',
  `pimage` VARCHAR(200) DEFAULT NULL COMMENT '产品图片',
  `descc` VARCHAR(200) DEFAULT NULL COMMENT '产品描述',
  PRIMARY KEY (`pid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

product
/*Table structure for table `test_tb_grade` */

DROP TABLE IF EXISTS `test_tb_grade`;

CREATE TABLE `test_tb_grade` (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `USER_NAME` VARCHAR(20) DEFAULT NULL,
  `COURSE` VARCHAR(20) DEFAULT NULL,
  `SCORE` FLOAT DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `test_tb_grade` */

INSERT  INTO `test_tb_grade`(`ID`,`USER_NAME`,`COURSE`,`SCORE`) VALUES (1,'张三','数学',34),(2,'张三','语文',58),(3,'李四','英语',45),(4,'王五','数学',76),(5,'王五','语文',34),(6,'王五','英语',89);

/*Table structure for table `test_tb_grade2` */

DROP TABLE IF EXISTS `test_tb_grade2`;

CREATE TABLE `test_tb_grade2` (
  `USER_NAME` VARCHAR(20) DEFAULT NULL,
  `math` INT(10) DEFAULT NULL COMMENT '数学',
  `chinese` INT(10) DEFAULT NULL COMMENT '语文',
  `english` INT(10) DEFAULT NULL COMMENT '英语'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `test_tb_grade2` */

INSERT  INTO `test_tb_grade2`(`USER_NAME`,`math`,`chinese`,`english`) VALUES ('张三',34,58,0),('张三',0,0,45),('张三',76,34,89);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` BIGINT(20) NOT NULL COMMENT '主键ID',
  `name` VARCHAR(30) DEFAULT NULL COMMENT '姓名',
  `age` INT(11) DEFAULT NULL COMMENT '年龄',
  `email` VARCHAR(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

INSERT  INTO `user`(`id`,`name`,`age`,`email`) VALUES (1,'sayli',27,'test1@baomidou.com01'),(2,'zhangsan',19,'test2@baomidou.com01'),(3,'Tom',28,'test3@baomidou.com01'),(4,'Sandy',21,'test4@baomidou.com01'),(5,'Billie',24,'test5@baomidou.com01');

/*Table structure for table `user_copy` */

DROP TABLE IF EXISTS `user_copy`;

CREATE TABLE `user_copy` (
  `id` BIGINT(20) NOT NULL COMMENT '主键ID',
  `name` VARCHAR(30) DEFAULT NULL COMMENT '姓名',
  `age` INT(11) DEFAULT NULL COMMENT '年龄',
  `email` VARCHAR(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `user_copy` */

INSERT  INTO `user_copy`(`id`,`name`,`age`,`email`) VALUES (1,'sayli',27,'test1@baomidou.com'),(2,'zhangsan',19,'test2@baomidou.com'),(3,'Tom',28,'test3@baomidou.com'),(4,'Sandy',21,'test4@baomidou.com'),(5,'Billie',24,'test5@baomidou.com');

/*Table structure for table `user_t` */

DROP TABLE IF EXISTS `user_t`;

CREATE TABLE `user_t` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(40) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `age` INT(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user_t` */

INSERT  INTO `user_t`(`id`,`user_name`,`password`,`age`) VALUES (1,'测试','345',24),(2,'javen','123',10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
