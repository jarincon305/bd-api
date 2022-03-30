/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - users_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`users_data` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `users_data`;

/*Table structure for table `personal` */

DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `identificacion` int(11) DEFAULT NULL,
  `donde_vive` varchar(255) DEFAULT NULL,
  `donde_trabaja` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `cuanto_gana` varchar(255) DEFAULT NULL,
  `jefe_inmediato` varchar(255) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `correo_personal` varchar(255) DEFAULT NULL,
  `correo_corporativo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `personal` */

insert  into `personal`(`id`,`nombre`,`identificacion`,`donde_vive`,`donde_trabaja`,`cargo`,`cuanto_gana`,`jefe_inmediato`,`telefono`,`correo_personal`,`correo_corporativo`) values 
(1,'Jefferson Andres',1234791503,'SAN BENITO','COLPEGASUS','DESARROLLADOR WEB','1.800.000','INGENIERO',2147483647,'jefferrincon2016@hotmail.com','jarincon305@misena.edu.co');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
