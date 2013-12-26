-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.13


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `eid`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eid`;
USE `eid`;

--
-- Table structure for table `eid`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eid`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`version`,`date_created`,`email`,`first_name`,`last_name`,`last_updated`,`middle_name`,`password`,`role`) VALUES 
 (1,0,'2013-11-20 19:16:43','nagraj.rao@sigmainfo.net','nagraj','rao','2013-11-20 19:16:43','r','test','test'),
 (2,0,'2013-11-20 19:19:35','n@n.com','n','n','2013-11-20 19:19:35','n','nnn','n');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Table structure for table `eid`.`user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `addr1` varchar(255) NOT NULL,
  `addr2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `fax` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `secondary_email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `FK1437D8A24476214` (`user_id`),
  CONSTRAINT `FK1437D8A24476214` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eid`.`user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`id`,`version`,`addr1`,`addr2`,`city`,`country`,`date_created`,`fax`,`last_updated`,`mobile`,`phone`,`pin`,`secondary_email`,`state`,`user_id`) VALUES 
 (1,0,'a1','a2','bangalore','IN','2013-11-20 19:16:43','123456','2013-11-20 19:16:43','9887654321','34534534','23232','n@n.com','KA',1),
 (2,0,'nnn','nnagraj','nnn','n','2013-11-20 19:20:17','77897987','2013-11-20 19:20:17','87978','78977879','87798','n1@nn.com','nn',2);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
