-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qlhddoan
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `chidoan`
--

DROP TABLE IF EXISTS `chidoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chidoan` (
  `machidoan` int(11) NOT NULL AUTO_INCREMENT,
  `tenchidoan` varchar(100) DEFAULT NULL,
  `hotencanbodoan` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sdt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`machidoan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chidoan`
--

LOCK TABLES `chidoan` WRITE;
/*!40000 ALTER TABLE `chidoan` DISABLE KEYS */;
INSERT INTO `chidoan` VALUES (1,'Chi đoàn 1','asdasdasd','asdasdasdasd','0123');
/*!40000 ALTER TABLE `chidoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangky`
--

DROP TABLE IF EXISTS `dangky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangky` (
  `mahd` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `ngaydangky` datetime DEFAULT NULL,
  `TinhTrang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`mahd`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `dangky_ibfk_2` FOREIGN KEY (`id`) REFERENCES `nguoidung` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangky`
--

LOCK TABLES `dangky` WRITE;
/*!40000 ALTER TABLE `dangky` DISABLE KEYS */;
/*!40000 ALTER TABLE `dangky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoatdong`
--

DROP TABLE IF EXISTS `hoatdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoatdong` (
  `mahd` int(11) NOT NULL AUTO_INCREMENT,
  `tenhd` varchar(255) DEFAULT NULL,
  `donvitochuc` varchar(100) DEFAULT NULL,
  `tgbatdau` date DEFAULT NULL,
  `tgketthuc` date DEFAULT NULL,
  `diemrl` int(11) DEFAULT NULL,
  `diemctxh` int(11) DEFAULT NULL,
  `noidung` varchar(1500) DEFAULT NULL,
  `urlhinhanh` varchar(100) DEFAULT NULL,
  `tomtat` varchar(50) DEFAULT NULL,
  `TrangChu` bit(1) DEFAULT NULL,
  PRIMARY KEY (`mahd`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoatdong`
--

LOCK TABLES `hoatdong` WRITE;
/*!40000 ALTER TABLE `hoatdong` DISABLE KEYS */;
INSERT INTO `hoatdong` VALUES (5,'Hoạt động 2','Đoàn khoa','2016-09-30','2016-10-29',5,5,'Curabitur condimentum tempus ornare. Curabitur sit amet quam egestas quam condimentum vestibulum quis at velit. Curabitur dictum ante ac arcu convallis, in tempor leo placerat. Aenean interdum nisi ut massa faucibus, sit amet rutrum est tempor. Vestibulum suscipit leo in arcu dignissim fringilla. Proin diam elit, porta eget dolor non, ultricies elementum orci. Ut non risus non mauris tempor dapibus. Curabitur faucibus pellentesque rhoncus. Suspendisse venenatis blandit ipsum, sit amet sollicitudin lectus placerat ac. Donec convallis, leo a placerat tincidunt, eros ligula vestibulum diam, at scelerisque metus orci nec lorem. Praesent pulvinar erat quis nisl lacinia, luctus egestas eros tristique. Sed suscipit dolor a auctor consectetur. ','caroul2.jpg','null',''),(6,'Hoạt động 1','Đoàn khoa','2016-10-29','2016-10-28',5,5,'Curabitur condimentum tempus ornare. Curabitur sit amet quam egestas quam condimentum vestibulum quis at velit. Curabitur dictum ante ac arcu convallis, in tempor leo placerat. Aenean interdum nisi ut massa faucibus, sit amet rutrum est tempor. Vestibulum suscipit leo in arcu dignissim fringilla. Proin diam elit, porta eget dolor non, ultricies elementum orci. Ut non risus non mauris tempor dapibus. Curabitur faucibus pellentesque rhoncus. Suspendisse venenatis blandit ipsum, sit amet sollicitudin lectus placerat ac. Donec convallis, leo a placerat tincidunt, eros ligula vestibulum diam, at scelerisque metus orci nec lorem. Praesent pulvinar erat quis nisl lacinia, luctus egestas eros tristique. Sed suscipit dolor a auctor consectetur. ','caroul2.jpg','null',''),(7,'Hoạt động 3','Đoàn khoa','2016-10-26','2016-10-29',5,5,'ABc XYZ','img/','null','');
/*!40000 ALTER TABLE `hoatdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `username` varchar(100) NOT NULL,
  `mssv` int(11) DEFAULT NULL,
  `hoten` varchar(50) DEFAULT NULL,
  `gioitinh` varchar(3) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `cmnd` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `khoa` varchar(50) DEFAULT NULL,
  `lop` varchar(20) DEFAULT NULL,
  `ngayvaodoan` date DEFAULT NULL,
  `diemrl` int(11) DEFAULT NULL,
  `diemctxh` int(11) DEFAULT NULL,
  `urlhinhanh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('abc',123,'a','Nam','2016-10-20',NULL,'asdasd','123456','abc','asdasd','asd',NULL,NULL,NULL,NULL),('admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('cbdk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('cbdt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('dv',123,'nguyễn a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `chucvu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('abc','123','dv'),('admin','123','admin'),('cbdk','123','cbdk'),('cbdt','123','cbdt'),('dv','123','dv');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thaoluan`
--

DROP TABLE IF EXISTS `thaoluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thaoluan` (
  `madetai` int(11) NOT NULL AUTO_INCREMENT,
  `tendetai` varchar(100) DEFAULT NULL,
  `manguoidang` varchar(100) DEFAULT NULL,
  `noidung` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`madetai`),
  KEY `manguoidang` (`manguoidang`),
  CONSTRAINT `thaoluan_ibfk_1` FOREIGN KEY (`manguoidang`) REFERENCES `nguoidung` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thaoluan`
--

LOCK TABLES `thaoluan` WRITE;
/*!40000 ALTER TABLE `thaoluan` DISABLE KEYS */;
/*!40000 ALTER TABLE `thaoluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongbao` (
  `matb` int(11) NOT NULL AUTO_INCREMENT,
  `tentb` varchar(500) DEFAULT NULL,
  `trichdoan` varchar(1000) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` varchar(5000) DEFAULT NULL,
  `idnguoidang` varchar(100) NOT NULL,
  PRIMARY KEY (`matb`,`idnguoidang`),
  KEY `idnguoidang` (`idnguoidang`),
  CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`idnguoidang`) REFERENCES `nguoidung` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (1,'thông báo 1','Curabitur condimentum tempus ornare. Curabitur sit amet quam egestas quam condimentum vestibulum quis at velit. Curabitur dictum ante ac arcu convallis, in tempor leo placerat. Aenean interdum nisi ut massa faucibus, sit amet rutrum est tempor. Vestibulum suscipit leo in arcu dignissim fringilla. Proin diam elit, porta eget dolor non, ultricies elementum orci. Ut non risus non mauris tempor dapibus. Curabitur faucibus pellentesque rhoncus. Suspendisse venenatis blandit ipsum, sit amet sollicitudin lectus placerat ac. Donec convallis, leo a placerat tincidunt, eros ligula vestibulum diam, at scelerisque metus orci nec lorem. Praesent pulvinar erat quis nisl lacinia, luctus egestas eros tristique. Sed suscipit dolor a auctor consectetur. ','2016-10-20 00:00:00',' Curabitur condimentum tempus ornare. Curabitur sit amet quam egestas quam condimentum vestibulum quis at velit. Curabitur dictum ante ac arcu convallis, in tempor leo placerat. Aenean interdum nisi ut massa faucibus, sit amet rutrum est tempor. Vestibulum suscipit leo in arcu dignissim fringilla. Proin diam elit, porta eget dolor non, ultricies elementum orci. Ut non risus non mauris tempor dapibus. Curabitur faucibus pellentesque rhoncus. Suspendisse venenatis blandit ipsum, sit amet sollicitudin lectus placerat ac. Donec convallis, leo a placerat tincidunt, eros ligula vestibulum diam, at scelerisque metus orci nec lorem. Praesent pulvinar erat quis nisl lacinia, luctus egestas eros tristique. Sed suscipit dolor a auctor consectetur.\r\n\r\nCurabitur in convallis mauris. Aliquam a facilisis lacus. Praesent blandit, felis ut dignissim sodales, turpis neque dignissim neque, at dictum orci ipsum porttitor libero. Vivamus sit amet luctus ligula. Suspendisse iaculis, urna eu consequat sodales, nisi felis rhoncus quam, vel scelerisque orci turpis at purus. Mauris placerat quam quis est interdum pretium. Vestibulum nibh tortor, tristique eu tristique et, eleifend nec ligula. Pellentesque vehicula, lacus eget ornare placerat, urna massa cursus mauris, nec interdum enim elit vitae justo. Nulla lacinia placerat faucibus. Donec aliquam consectetur turpis ac faucibus. Nulla at diam luctus, vulputate ligula et, iaculis mi. Praesent malesuada urna non massa ullamcorper vestibulum.\r\n\r\nIn eu elit eros. Aliquam eu pulvinar sem. Maecenas velit sapien, mollis sed tincidunt sed, tincidunt at sapien. Vivamus semper augue fermentum libero feugiat euismod. Praesent a diam non tortor eleifend posuere. Nam libero libero, interdum vitae erat sit amet, pulvinar rutrum odio. Suspendisse bibendum vel ex nec suscipit. Integer in dolor eu nibh ultricies gravida sed eget eros. Ut vitae est a nunc feugiat tincidunt non elementum turpis. Phasellus id metus sed arcu porttitor pellentesque eu ut justo. Praesent vel odio varius, viverra mi id, egestas arcu.\r\n\r\nProin eget sapien vitae dui eleifend lacinia. Ut finibus at neque sed placerat. Aenean tempus eu ex ac feugiat. Ut pulvinar consequat odio sed maximus. In hac habitasse platea dictumst. Nunc molestie, sapien ac tincidunt egestas, orci felis tincidunt ante, a commodo ex nisl eu sem. Duis pharetra iaculis ante maximus fermentum. Proin lacinia mi arcu, ut mattis enim elementum vel. Maecenas quis varius est. Integer lobortis dui vitae ipsum accumsan, id posuere augue tempor. Etiam faucibus, orci quis tristique ullamcorper, orci erat malesuada nibh, sit amet viverra diam lectus ut nibh. In hac habitasse platea dictumst. Vivamus elementum id magna sit amet efficitur. Etiam gravida cursus magna at aliquam. Integer et nunc vulputate, porttitor lectus nec, rhoncus ligula. ','admin');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinnhan`
--

DROP TABLE IF EXISTS `tinnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tinnhan` (
  `idnguoigui` varchar(100) NOT NULL,
  `idnguoinhan` varchar(100) NOT NULL,
  `tieude` varchar(100) DEFAULT NULL,
  `noidung` varchar(1500) DEFAULT NULL,
  `tggui` datetime DEFAULT NULL,
  PRIMARY KEY (`idnguoigui`,`idnguoinhan`),
  KEY `idnguoinhan` (`idnguoinhan`),
  CONSTRAINT `tinnhan_ibfk_1` FOREIGN KEY (`idnguoigui`) REFERENCES `nguoidung` (`username`),
  CONSTRAINT `tinnhan_ibfk_2` FOREIGN KEY (`idnguoinhan`) REFERENCES `nguoidung` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinnhan`
--

LOCK TABLES `tinnhan` WRITE;
/*!40000 ALTER TABLE `tinnhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traloi`
--

DROP TABLE IF EXISTS `traloi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traloi` (
  `username` varchar(100) NOT NULL,
  `noidung` varchar(100) DEFAULT NULL,
  `madetai` int(11) NOT NULL,
  PRIMARY KEY (`username`,`madetai`),
  KEY `madetai` (`madetai`),
  CONSTRAINT `traloi_ibfk_1` FOREIGN KEY (`madetai`) REFERENCES `thaoluan` (`madetai`),
  CONSTRAINT `traloi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `nguoidung` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traloi`
--

LOCK TABLES `traloi` WRITE;
/*!40000 ALTER TABLE `traloi` DISABLE KEYS */;
/*!40000 ALTER TABLE `traloi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-21  0:12:42
