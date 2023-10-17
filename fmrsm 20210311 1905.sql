-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema fmrsm
--

CREATE DATABASE IF NOT EXISTS fmrsm;
USE fmrsm;

--
-- Definition of table `do_files`
--

DROP TABLE IF EXISTS `do_files`;
CREATE TABLE `do_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `doid` varchar(45) NOT NULL,
  `doname` varchar(45) NOT NULL,
  `enc_data` longblob NOT NULL,
  `dkey` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `filekeyword` varchar(450) NOT NULL,
  `filename` longtext NOT NULL,
  `data` longblob NOT NULL,
  `enc_filekeyword` varchar(450) NOT NULL,
  `enc_time` varchar(85) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `do_files`
--

/*!40000 ALTER TABLE `do_files` DISABLE KEYS */;
INSERT INTO `do_files` (`id`,`doid`,`doname`,`enc_data`,`dkey`,`time`,`filekeyword`,`filename`,`data`,`enc_filekeyword`,`enc_time`) VALUES 
 (1,'1','abdul',0x3652474D2B55644F6B67626F68396D52487A6F55507354433146724E634754764338464A5367785954427A4F6F586D757752457551506979776C37527A79315736456565486258546D38312B0D0A337752734B72364A45375743376D6F4C62392B704D5847736769524E63486C37486D70776D7A55457A4B71483458743548313542,'mttJuVyMVEZjQET1F278Fw==','2021/03/09 12:27:27','test check','test.txt',0x5465737420466F722041204E6F76656C2046656174757265204D61746368696E672052616E6B6564205365617263684D656368616E69736D204F76657220456E6372797074656420436C6F756420446174612E,'U7+Efj1xx0HVNDWFvHkB4w==','1475.0'),
 (2,'1','abdul',0x6F7671336472516C703051354D37527077794C5244616A6A44494C30704C4F57486E537053466673396E694F4E4F687136787730766A706469517151393858626739644F2B6B6B316B6C37730D0A514B6D5A54734C6F36616849566D6831453374382B3656636F444D562F6C637242746B52725936426C5777433232317766633463567655657965596D62356A3173332B324B4556526A6F48350D0A367334654568414C335A4D5A62706A6A386D514C7062713473582F5655456D4550443663492B6A4D623361305266464A497A64724F78364A56466D37677236315A706E7435725244705559430D0A62343330365966616B6D767A434247496D617137724333584D6D62367443742F62443263386652396B2B30622B576F50663461554E6656496B746264506266735756734E514353782F4D346D0D0A632B3652596A4F58434F6C5379482B565436766F6772326D67324E43313065483150414F57413D3D,'7g0DRwaE6goCRCs4H5bIMA==','2021/03/11 18:59:25','technology','mobile.txt',0x47616C617879204D33317320283647422052414D290A0A534D5F4D333137465A42440A0A576973686C6973740A0A4E6F20436F737420454D49207374617274732066726F6D2052732E20313934342E3333206D6F6E74682E0A5374616E6461726420454D49207374617274732066726F6D2052732E203834382E3433206D6F6E74682E0A36344D5020517561642043616D65726120776974682053696E676C652054616B650A537570657220414D4F4C454420496E66696E6974795F4F20446973706C61790A36303030206D416820426174746572792C2032355720696E2D626F78204661737420436861726765720A,'QVmxknOic4kwVxAyHfLM1w==','2844.0');
/*!40000 ALTER TABLE `do_files` ENABLE KEYS */;


--
-- Definition of table `do_reg`
--

DROP TABLE IF EXISTS `do_reg`;
CREATE TABLE `do_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `do_reg`
--

/*!40000 ALTER TABLE `do_reg` DISABLE KEYS */;
INSERT INTO `do_reg` (`id`,`name`,`email`,`dob`,`gender`,`phone`,`address`,`password`) VALUES 
 (1,'abdul','abdulhathi.jpinfotech@gmail.com','1999-03-22','Male','6383527549','Pondy','abd');
/*!40000 ALTER TABLE `do_reg` ENABLE KEYS */;


--
-- Definition of table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `fileid` varchar(45) NOT NULL,
  `doname` varchar(45) NOT NULL,
  `doid` varchar(45) NOT NULL,
  `decrypt_time` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` (`id`,`uid`,`uname`,`filename`,`time`,`fileid`,`doname`,`doid`,`decrypt_time`) VALUES 
 (1,'1','abdul','test.txt','2021-03-09 12:48:31','1','abdul','1','1412.0'),
 (2,'1','abdul','mobile.txt','2021-03-11 19:02:06','2','abdul','1','2639.0');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;


--
-- Definition of table `du_reg`
--

DROP TABLE IF EXISTS `du_reg`;
CREATE TABLE `du_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `du_reg`
--

/*!40000 ALTER TABLE `du_reg` DISABLE KEYS */;
INSERT INTO `du_reg` (`id`,`name`,`email`,`dob`,`gender`,`phone`,`address`,`password`) VALUES 
 (1,'abdul','abdulhathi.jpinfotech@gmail.com','1999-03-22','Male','6383527549','Pondy','abd');
/*!40000 ALTER TABLE `du_reg` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fileid` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `doid` varchar(45) NOT NULL,
  `do_name` varchar(45) NOT NULL,
  `dkey` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`id`,`fileid`,`filename`,`time`,`status`,`uname`,`uid`,`umail`,`doid`,`do_name`,`dkey`) VALUES 
 (1,'1','test.txt','2021/03/09 12:43:51','Approved','abdul','1','abdulhathi.jpinfotech@gmail.com','1','abdul','mttJuVyMVEZjQET1F278Fw=='),
 (2,'2','mobile.txt','2021/03/11 19:00:06','Approved','abdul','1','abdulhathi.jpinfotech@gmail.com','1','abdul','7g0DRwaE6goCRCs4H5bIMA==');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
