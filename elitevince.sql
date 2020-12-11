/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - praticsboot
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`praticsboot` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `praticsboot`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL auto_increment,
  `email_id` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`email_id`,`password`,`status`) values (1,'thakkarsoham6@gmail.com','St2886615225',''),(2,'patelniket@gmail.com','Nk$5566223',''),(3,'thakkarsohamr@gmail.com','Sr@8866152259',''),(4,'abc@xyz.com','Nk$5566223',''),(5,'abc@xyz.com','Nk$5566223','');

/*Table structure for table `register_master` */

DROP TABLE IF EXISTS `register_master`;

CREATE TABLE `register_master` (
  `id` int(11) NOT NULL auto_increment,
  `birth_date` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `user_name` varchar(255) default NULL,
  `lvo` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKnxjjp14w1fjc2x16uy3l6w1x7` (`lvo`),
  CONSTRAINT `FKnxjjp14w1fjc2x16uy3l6w1x7` FOREIGN KEY (`lvo`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register_master` */

insert  into `register_master`(`id`,`birth_date`,`first_name`,`last_name`,`status`,`user_name`,`lvo`) values (1,'22-4-1999','Soham','Thakkar','\0','@sohamr',1),(2,'5-99-2000','Niket','patel','\0','@niket',2),(3,'22-4-1998','soham','Thakkar','','@sohamr',3),(4,'5-99-2000','Niket','patel','\0','@niket',4),(5,'5-99-2000','Niket','Langaliya','','@niket',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
