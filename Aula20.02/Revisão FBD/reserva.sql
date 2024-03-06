CREATE DATABASE  IF NOT EXISTS `reserva` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reserva`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: reserva
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aeronave`
--

DROP TABLE IF EXISTS `aeronave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeronave` (
  `codigoaeronave` decimal(4,0) NOT NULL,
  `prefixo` varchar(10) DEFAULT NULL,
  `fabricante` varchar(20) DEFAULT NULL,
  `anofabricacao` year DEFAULT NULL,
  PRIMARY KEY (`codigoaeronave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeronave`
--

LOCK TABLES `aeronave` WRITE;
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` VALUES (1111,'PT-MXC','FABE',2014),(2222,'PR-AZS','AIRBUS',2012),(3333,'PT-MZV','BOING',2013),(4444,'PT-SEA','AIRBUS',2014),(5555,'PR-AZL','BOING',2011),(6666,'PR-AZB','AIRBUS',2010),(7777,'PT-ONB','EMBRAER',2011);
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assento`
--

DROP TABLE IF EXISTS `assento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assento` (
  `numeroassento` varchar(4) NOT NULL,
  `classe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numeroassento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assento`
--

LOCK TABLES `assento` WRITE;
/*!40000 ALTER TABLE `assento` DISABLE KEYS */;
INSERT INTO `assento` VALUES ('A01','Primeira Classe'),('A02','Primeira Classe'),('A03','Primeira Classe'),('A04','Primeira Classe'),('A05','Primeira Classe'),('A06','Primeira Classe'),('A16','Econômica'),('A17','Econômica'),('A18','Econômica'),('A19','Econômica'),('A20','Econômica'),('A21','Econômica'),('A22','Econômica'),('A23','Econômica'),('A24','Econômica'),('A25','Econômica'),('A26','Econômica'),('A27','Econômica'),('A28','Econômica'),('A29','Econômica'),('B01','Primeira Classe'),('B02','Primeira Classe'),('B03','Primeira Classe'),('B04','Primeira Classe'),('B05','Primeira Classe'),('B06','Primeira Classe'),('B16','Econômica'),('B17','Econômica'),('B18','Econômica'),('B19','Econômica'),('B20','Econômica'),('B21','Econômica'),('B22','Econômica'),('D01','Primeira Classe'),('D02','Primeira Classe'),('D03','Primeira Classe'),('D04','Primeira Classe'),('D05','Primeira Classe'),('D06','Primeira Classe'),('D16','Econômica'),('D17','Econômica'),('D18','Econômica'),('D19','Econômica'),('D20','Econômica'),('D21','Econômica'),('D22','Econômica'),('E16','Econômica'),('E17','Econômica'),('E18','Econômica'),('E19','Econômica'),('E20','Econômica'),('E21','Econômica'),('E22','Econômica'),('F16','Econômica'),('F17','Econômica'),('F18','Econômica'),('F19','Econômica'),('F20','Econômica'),('F21','Econômica'),('F22','Econômica'),('K01','Primeira Classe'),('K02','Primeira Classe'),('K03','Primeira Classe'),('K04','Primeira Classe'),('K05','Primeira Classe'),('K06','Primeira Classe'),('K16','Econômica'),('K17','Econômica'),('K18','Econômica'),('K19','Econômica'),('K20','Econômica'),('K21','Econômica'),('K22','Econômica'),('L01','Primeira Classe'),('L02','Primeira Classe'),('L03','Primeira Classe'),('L04','Primeira Classe'),('L05','Primeira Classe'),('L06','Primeira Classe'),('L16','Econômica'),('L17','Econômica'),('L18','Econômica'),('L19','Econômica'),('L20','Econômica'),('L21','Econômica'),('L22','Econômica');
/*!40000 ALTER TABLE `assento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigocliente` decimal(5,0) NOT NULL,
  `nomecliente` varchar(50) DEFAULT NULL,
  `cpf` varchar(13) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigocliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (11111,'Carla Soares','12345678901','Moraes Sarmento, Juiz de Fora- MG','(32)3234-3434'),(11112,'Angela Silveira','23456789012','Av. Sete de Setembro, São Paulo - SP','(11)3333-4455'),(11122,'Marcelo Souza','34567890123','Padre Frederico, Rio de Janeiro - RJ','(21)4032-3232'),(11223,'Raimundo Oliveira','45678901234','Av. Itamar Franco, Juiz de Fora - MG','(32)3211-1111'),(22222,'Alicia Rosa','56789012345','Moraes e Castro, Juiz de Fora - MG','(32)3231-3131'),(22223,'Sandra Alvarenga','67890123456','Rei Alberto, São Paulo - SP','(11)3456-5656'),(22233,'José Castilho','78901234567','Oscar Freire, Juiz de Fora - MG','(32)3215-5554'),(33333,'Alice Ferreira','89012345678','Ibitiguaia, Juiz de Fora - MG','(32)3232-8887'),(33334,'Maria Tereza','90123456789','Av. Santa Luzia, Juiz de Fora - MG','(32)3025-2020'),(33344,'Silvio Albuquerque','11122233344','Oscar Vidal, Rio de Janeiro - RJ','(21)4009-1415'),(33445,'Margarida de Jesus','22233344455','Pasteur, Juiz de Fora - MG','(32)3222-2525'),(44445,'Iara Cristina','33344455566','Porto das Flores, São Paulo - SP','(11)3003-3030'),(44455,'Alex Alves','44455566677','Manoel Honório, Juiz de Fora - MG','(32)3235-5252'),(55556,'Adriane Santana','55566677788','Av. Deusdedith Salgado, Rio de Janeiro - RJ','(21)2454-5457'),(55566,'Matheus Reis','66677788899','Padre Café,Juiz de Fora - MG','(32)3226-4578'),(55667,'Argemiro Braga','77788899900','Oswaldo Aranha, São Paulo - SP','(11)5254-6532'),(66666,'Tamara Jesus','88899900011','Mariano Procópio, Juiz de Fora - MG','(32)3223-5050'),(66667,'Laura Leme','99900011122','Av. Itamar Franco, Rio de Janeiro - RJ','(21)5005-1040'),(66677,'Gisele Almeida','10110110111','Av. Costa e Silva, São Paulo - SP','(11)4001-5040'),(66778,'Joice Leite','10210210202','Gil Horta, Juiz de Fora - MG','(32)3216-3598'),(77777,'Adriana Alves','20120120122','Olípio Costa, Rio de Janeiro - RJ','(21)2233-1236'),(77778,'Luisa Antunes','30130130113','Braz Bernardino, Juiz de Fora - MG','(32)3218-4352'),(77889,'Luiz de Paula','31231231212','Av. Barão do Rio Branco, Juiz de Fora - MG','(32)3231-8989'),(88889,'Romero Santos','43243243214','Av. Juscelino Kubitschek, Rio de Janeiro - RJ','(21)3356-7878');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `codigoreserva` decimal(5,0) NOT NULL,
  `codigocliente` decimal(5,0) DEFAULT NULL,
  `numeroassento` varchar(4) DEFAULT NULL,
  `codigovoo` decimal(4,0) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `datareserva` date DEFAULT NULL,
  PRIMARY KEY (`codigoreserva`),
  KEY `fk_codcliente` (`codigocliente`),
  KEY `fk_numeroassento` (`numeroassento`),
  KEY `fk_codigovoo` (`codigovoo`),
  CONSTRAINT `fk_codcliente` FOREIGN KEY (`codigocliente`) REFERENCES `cliente` (`codigocliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_codigovoo` FOREIGN KEY (`codigovoo`) REFERENCES `voo` (`codigovoo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_numeroassento` FOREIGN KEY (`numeroassento`) REFERENCES `assento` (`numeroassento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (10101,33445,'L16',1100,1423,'2014-12-01'),(10102,66778,'A04',3000,1040,'2014-01-05'),(10103,77777,'B02',4000,1100,'2014-02-11'),(10104,77778,'A27',5000,832,'2014-08-03'),(10105,77889,'D18',6000,312,'2014-05-23'),(10106,88889,'A25',7000,200,'2014-06-30'),(10107,88889,'A23',1000,208,'2014-07-18'),(10202,44445,'B19',1200,1492,'2014-10-13'),(10303,44455,'B04',1300,2568,'2014-12-05'),(10404,55556,'B05',1400,3600,'2014-12-05'),(10505,55566,'D22',1500,434,'2014-11-10'),(10606,55667,'L22',1600,504,'2014-03-23'),(10707,66666,'A29',1700,534,'2014-02-28'),(10808,66667,'E22',1000,221,'2014-02-14'),(10909,66677,'E17',2000,154,'2014-01-01'),(11223,11112,'A16',2000,133,'2014-12-07'),(22334,11122,'B21',1000,208,'2014-10-15'),(33445,11111,'K17',3000,173,'2014-11-23'),(44556,11223,'D01',4000,589,'2014-09-15'),(55667,22222,'A01',5000,745,'2014-12-09'),(66778,22223,'K19',6000,238,'2014-05-22'),(77889,22233,'K21',7000,258,'2014-04-22'),(88990,33333,'F18',8000,210,'2014-04-10'),(99001,33334,'F21',9000,1283,'2014-11-24');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voo`
--

DROP TABLE IF EXISTS `voo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voo` (
  `codigovoo` decimal(4,0) NOT NULL,
  `numerovoo` varchar(6) DEFAULT NULL,
  `cidadeorigem` decimal(4,0) DEFAULT NULL,
  `cidadedestino` decimal(4,0) DEFAULT NULL,
  `horariosaida` time DEFAULT NULL,
  `horariochegada` time DEFAULT NULL,
  PRIMARY KEY (`codigovoo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voo`
--

LOCK TABLES `voo` WRITE;
/*!40000 ALTER TABLE `voo` DISABLE KEYS */;
INSERT INTO `voo` VALUES (1000,'GIG-32',2345,1234,'22:50:00','23:55:00'),(1100,'CON-11',2345,5678,'08:50:00','10:20:00'),(1200,'JDF-12',5678,2345,'09:10:00','10:40:00'),(1300,'JDF-12',5678,2345,'11:20:00','12:50:00'),(1400,'VCP-75',3456,4567,'18:51:00','20:36:00'),(1500,'VCP-75',3456,4567,'14:18:00','15:58:00'),(1600,'BSB-76',4567,3456,'17:47:00','19:31:00'),(1700,'BSB-76',4567,3456,'10:52:00','12:33:00'),(2000,'GIG-32',2345,1234,'09:20:00','10:25:00'),(3000,'CON-26',1234,2345,'11:39:00','12:44:00'),(4000,'CON-26',1234,2345,'14:33:00','15:37:00'),(5000,'CNF-16',3456,1234,'17:10:00','18:20:00'),(6000,'CNF-16',3456,1234,'19:45:00','20:55:00'),(7000,'GIG-17',1234,3456,'21:30:00','22:40:00'),(8000,'GIG-17',1234,3456,'00:15:00','01:25:00'),(9000,'CON-11',2345,5678,'04:26:00','05:56:00');
/*!40000 ALTER TABLE `voo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30 15:29:37
