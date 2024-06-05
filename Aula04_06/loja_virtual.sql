CREATE DATABASE  IF NOT EXISTS `loja_virtual` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja_virtual`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_virtual
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `CompraId` int NOT NULL,
  `ProdutoId` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`CompraId`,`ProdutoId`),
  KEY `ProdutoId` (`ProdutoId`),
  CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`CompraId`) REFERENCES `compra` (`CompraId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carrinho_ibfk_2` FOREIGN KEY (`ProdutoId`) REFERENCES `produto` (`ProdutoId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
INSERT INTO `carrinho` VALUES (1,4,1),(1,7,1),(1,9,1),(2,1,1),(2,4,2),(2,7,2),(2,10,1),(3,1,1),(3,2,1),(4,5,2),(5,1,1),(5,3,1),(6,6,2),(6,8,1),(7,11,2),(8,6,2),(8,9,2),(8,11,1);
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ClienteId` int NOT NULL,
  `PrimNome` varchar(32) NOT NULL,
  `UltNome` varchar(32) NOT NULL,
  `Endereco` varchar(64) NOT NULL,
  `Cidade` varchar(32) NOT NULL,
  `Cep` varchar(10) NOT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`ClienteId`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (107050,'Davi','Hudson','Avenida Brasil, 40','Gravatá','10105-504',98765432109),(130791,'Simone','Cozin','Rua Pau-a-pique,75','Paulista','52447-890',87654321098),(139159,'Ricardo','Ney','42 ThatchedWay','Camaragibe','40162-974',76543210987),(150056,'Bill','O\'Neill','Rua Padre Galdino, 2','Pombos','18150-150',65432109876),(159159,'Marcelo','Rodrigues','Beco do Bom Negócio,85','Goiana','17117-100',54321098765),(159753,'Ricardo','Soares','Avenida Boa Viagem,1523','Recife','18112-234',43210987654),(159951,'Neil','Matheus','Rua Castanhola, 5','Jaboatão dosGuararapes','22557-713',32109876543),(172839,'Andre','Soares','Avenida Oito de Maio, 52','SãoLourenço da Mata','15214-441',21098765432),(317931,'Laura','Martins','Avenida Francisco Viana,1277','Carpina','08174-502',10987654321),(456321,'Christina','Hickman','Rua do Sol,2248','Olinda','17128-964',99988877766),(740025,'Alex','Matheus','Rua Frei Jaboatão, 4','Jaboatão dosGuararapes','22557-913',88877766655),(753159,'Anna','Soares','Avenida Boa Viagem,1523','Recife','18112-234',77766655544),(794613,'Jandira','Soares','Avenida José Romão,27','Caruaru','036894-567',66655544433),(823971,'Davi','Jodaias','Avenida Caxangá, 267','Recife','18112-654',55544433322),(974631,'Adriano','Matheus','Rua Madeira, 171','Cabo de SantoAgostinho','66476-621',44433322211);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `CompraId` int NOT NULL,
  `ClienteId` int NOT NULL,
  `DataCompra` date NOT NULL,
  `DataEnt` date DEFAULT NULL,
  `frete` double DEFAULT '30',
  PRIMARY KEY (`CompraId`),
  KEY `ClienteId` (`ClienteId`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`ClienteId`) REFERENCES `cliente` (`ClienteId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,139159,'2022-03-13','2022-03-17',2.99),(2,456321,'2021-06-23','2021-06-24',0),(3,159951,'2021-09-02','2021-09-12',3.99),(4,823971,'2021-09-03','2021-09-10',2.99),(5,794613,'2021-07-21','2021-07-24',0),(6,823971,'2022-02-12','2022-02-18',0.59),(7,159753,'2022-05-16','2022-05-18',0),(8,753159,'2021-08-20','2021-08-21',0);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ProdutoId` int NOT NULL,
  `Descricao` varchar(64) NOT NULL,
  `PrecoCusto` double DEFAULT NULL,
  `PrecoVenda` double DEFAULT NULL,
  PRIMARY KEY (`ProdutoId`),
  CONSTRAINT `produto_chk_1` CHECK ((`PrecoCusto` >= 0)),
  CONSTRAINT `produto_chk_2` CHECK ((`PrecoVenda` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Palavas Cruzadas',15.23,21.95),(2,'Cubo mágico',7.45,11.49),(3,'CD Linux',1.99,2.49),(4,'Lenços',2.11,3.99),(5,'Porta-retratos',7.54,9.95),(6,'Ventilador pequeno',9.23,15.75),(7,'Ventilador grande',13.36,19.95),(8,'Escova de dentes',0.75,1.45),(9,'Moeda romana',2.34,2.45),(10,'Mochila',50,100),(11,'Caixas de som',19.73,25.32);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 16:59:53
