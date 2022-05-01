-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_torcedores
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_time`
--

DROP TABLE IF EXISTS `tb_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(140) NOT NULL,
  `abreviacao` varchar(10) NOT NULL,
  `informacao` text NOT NULL,
  `dt_cadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_time`
--

LOCK TABLES `tb_time` WRITE;
/*!40000 ALTER TABLE `tb_time` DISABLE KEYS */;
INSERT INTO `tb_time` VALUES (1,'Corinthians','SCCP','Fundado','2022-04-30'),(2,'Sao Paulo','SPFC','eeifij ','2022-04-30'),(3,' Palmeiras','PAL',' OIeji','2022-04-30'),(4,'Cruzeiro','CRU','Foi rebaixado e espero que demore muito pra voltar.','2022-05-01');
/*!40000 ALTER TABLE `tb_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_torcedor`
--

DROP TABLE IF EXISTS `tb_torcedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_torcedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_torcedor` varchar(130) NOT NULL,
  `sexo` enum('masculino','feminino','outro') NOT NULL,
  `dt_nascimento` date NOT NULL,
  `dt_cadastro` date NOT NULL,
  `id_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_time` (`id_time`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_torcedor`
--

LOCK TABLES `tb_torcedor` WRITE;
/*!40000 ALTER TABLE `tb_torcedor` DISABLE KEYS */;
INSERT INTO `tb_torcedor` VALUES (1,'Erik Ribeiro Cafe','masculino','2003-11-19','2022-04-30',1),(2,' Edicarlos Souza Cafe','masculino','1977-12-28','2022-04-30',2),(3,' Iago Custodio','masculino','2005-12-21','2022-04-30',3),(4,' Maria Gabrielly Melo Nunes','feminino','2003-06-26','2022-04-30',1);
/*!40000 ALTER TABLE `tb_torcedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 15:11:01
