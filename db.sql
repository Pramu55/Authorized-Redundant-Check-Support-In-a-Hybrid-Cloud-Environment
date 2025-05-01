/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - secureiot
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`secureiot` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `secureiot`;

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`profile`,`Gender`,`cont`,`address`) values (1,'001','praba','prba','praba@gmail.com','21/01/1998','20170111_104139.jpg','female','3983033983','chennai'),(2,'002','sathya','sathya','sarojini@gmail.com','21/01/1998','h9.jpg','female','9389898393','chennai'),(3,'2','Abi','1234','abi@gmail.com','12/05/1999','attack.png','Male','9847583893','Chennai');

/*Table structure for table `reqreg` */

DROP TABLE IF EXISTS `reqreg`;

CREATE TABLE `reqreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `keyy` int(20) DEFAULT '0',
  `skey` varchar(200) DEFAULT '0',
  `type` varchar(200) DEFAULT NULL,
  `statua` varchar(200) DEFAULT 'Waiting',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `reqreg` */

insert  into `reqreg`(`sno`,`id`,`name`,`mail_id`,`keyy`,`skey`,`type`,`statua`) values (1,1,'praba','praba@gmail.com',920,'0','Public Cloud','Accept'),(2,1,'praba','praba@gmail.com',9754,'114468','Private Cloud','Accept'),(3,1,'praba','praba@gmail.com',3423,'0','Public Cloud','Accept'),(4,1,'praba','praba@gmail.com',8255,'975386','Private Cloud','Accept'),(5,1,'praba','praba@gmail.com',5858,'321848','Private Cloud','Accept'),(6,2,'Abi','abi@gmail.com',2878,'0','Public Cloud','Access Sent'),(7,2,'Abi','abi@gmail.com',0,'0','Public Cloud','Waiting'),(8,2,'Abi','abi@gmail.com',1554,'0','Public Cloud','Access Sent');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reg` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  `skey` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT '--------',
  `request` varchar(200) DEFAULT '0',
  `downlad` varchar(200) DEFAULT '0',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`id`,`name`,`reg`,`oname`,`trap`,`image`,`type`,`status`,`skey`,`fkey`,`request`,`downlad`) values (1,'002','sathya','001','praba','C35965109555857D','sathya.txt','Private Cloud','Send Key','364507','7770','1','1'),(2,'002','sathya','001','praba','F2962AE96F20BF84','sathya.txt','Public Cloud','Send Key',NULL,'6498','1','1');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `reg` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `trapdoor` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`reg`,`name`,`fkey`,`dates`,`trapdoor`,`type`,`image`) values ('001','praba','6498','03/02/21 20:21:05','F2962AE96F20BF84','Public Cloud','sathya.txt'),('001','praba','7770','04/02/21 11:52:26','C35965109555857D','Private Cloud','sathya.txt'),('2','Abi','8509','24/04/23 15:02:20','877E8E22DA70BB44','Public Cloud','Topic Confrimation list.txt'),('2','Abi','3185','24/04/23 15:41:18','500FDC952E5CF17E','Public Cloud','time table.sql');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
