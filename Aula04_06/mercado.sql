CREATE DATABASE  IF NOT EXISTS `mercado` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mercado`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mercado
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_CLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) NOT NULL,
  `NASCIMENTO` date NOT NULL,
  `SEXO` char(1) NOT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  KEY `INDEX_NOME_CLIENTE` (`NOME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'JAMBIRA SOUZA','1978-04-23','F',NULL,'(28) 4445-9009'),(2,'ASDRUBAL SOARES','1967-03-25','M','ASDRUBAL@GMAIL.COM','(27) 3225-2552'),(3,'JOSEFINA DUARTE RAMOS','1986-07-13','F',NULL,'(28) 4445-8811'),(4,'XIMENE BIVAR','1981-05-25','F','XIMENE81@YAHOO.COM','(31) 3335-1026'),(5,'AGAMENON MENDES','1997-10-03','M',NULL,'(28) 4445-8811');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ID_PRODUTO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `ESTOQUE` decimal(8,2) NOT NULL,
  `PRECO_UNITARIO` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID_PRODUTO`),
  KEY `INDEX_NOME_PRODUTO` (`NOME`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (100,'COCA-COLA 350 ML',400.00,3.50),(110,'PAO DE FORMA (PACOTE)',200.00,3.50),(120,'CAFE EM PO 500 G (PACOTE)',600.00,8.99),(130,'BATATA INGLESA (KG)',900.00,1.99),(140,'DETERGENTE GRUDE SÓ',1000.00,1.55),(150,'SABONETE (UNIDADE)',800.00,1.00),(160,'ESCOVA DE DENTES - BOCA SUJA',350.00,10.99),(170,'PASTA DENTAL - DENTRIFRICIO',600.00,2.99),(180,'COTONETES - KUTUCA',600.00,3.22),(190,'SABONETE',400.00,3.50),(200,'SHAMPOO - SOMENTEIVEZ',200.00,10.00),(201,'DESODORANTE LOTACAO',1000.00,9.99);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_vendido`
--

DROP TABLE IF EXISTS `produto_vendido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_vendido` (
  `NR_VENDA` int NOT NULL,
  `ID_PRODUTO` int NOT NULL,
  `QUANTIDADE` decimal(5,2) NOT NULL,
  PRIMARY KEY (`NR_VENDA`,`ID_PRODUTO`),
  KEY `ID_PRODUTO` (`ID_PRODUTO`),
  CONSTRAINT `produto_vendido_ibfk_1` FOREIGN KEY (`NR_VENDA`) REFERENCES `venda` (`NR_VENDA`) ON DELETE RESTRICT,
  CONSTRAINT `produto_vendido_ibfk_2` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `produto` (`ID_PRODUTO`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_vendido`
--

LOCK TABLES `produto_vendido` WRITE;
/*!40000 ALTER TABLE `produto_vendido` DISABLE KEYS */;
INSERT INTO `produto_vendido` VALUES (1000,100,10.00),(1000,110,2.00),(1000,120,1.00),(1000,140,1.00),(1000,150,1.00),(1000,170,1.00),(1001,100,2.00),(1002,100,1.00),(1002,140,5.00),(1002,160,1.00),(1002,170,1.00),(1003,140,1.00),(1003,150,1.00),(1004,110,1.00),(1004,150,1.00),(1004,160,1.00);
/*!40000 ALTER TABLE `produto_vendido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `NR_VENDA` int NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` int NOT NULL,
  `DATA_VENDA` date NOT NULL,
  PRIMARY KEY (`NR_VENDA`),
  KEY `ID_CLIENTE` (`ID_CLIENTE`),
  KEY `INDEX_DATA_VENDA` (`DATA_VENDA`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1000,5,'2017-01-30'),(1001,1,'2017-05-15'),(1002,3,'2017-05-15'),(1003,5,'2018-09-24'),(1004,5,'2018-09-25'),(1005,1,'2018-09-25'),(1006,2,'2018-09-25'),(1007,5,'2018-09-26');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 17:40:20

/*QUESTÃO 01: Traga todas as informações dos produtos que não foram vendidos. 
Utilize junção externa.*/
select p.*
from produto p left join produto_vendido pv on p.id_produto = pv.id_produto
where nr_venda is null;

/*QUESTÃO 01_1: Traga todas as informações dos produtos que não foram vendidos. 
Utilize subconsultas.*/
select *
from produto
where id_produto not in(select id_produto from produto_vendido);

/*QUESTÃO 02:Traga todas as informações dos clientes que não efetuaram 
nenhuma compra. Utilize junção externa.*/
select c.*
from cliente c left join venda v on c.id_cliente = v.id_cliente
where nr_venda is null;

/*QUESTÃO 02:Traga todas as informações dos clientes que não efetuaram 
nenhuma compra. Utilize subconsultas.*/
select *
from cliente
where id_cliente not in(select id_cliente from venda);

/*QUESTÃO 03: Traga as informações do produto que possui 
maior quantidade em estoque.*/
select *
from produto
where estoque=(select max(estoque) from produto);

/*QUESTÃO 04:Traga as informações do produto que 
possui o menor valor.*/
select *
from produto
where preco_unitario=(select min(preco_unitario) from produto);

/*
Recupere o número da venda e a quantidade de produtos que foram vendidos por venda. Traga apenas as vendas que tiveram mais de 5 produtos vendidos. Ordene da maior para menor quantidade de produtos vendidos.
Por exemplo: o produto 100 vendeu 13 unidades
*/
select nr_venda, sum(quantidade) as qdade_produtos
from produto_vendido
group by nr_venda;

/*
Recupere as informações dos clientes e a quantidade de compras que eles efetuaram. Caso o cliente não tenha efetuado nenhuma compra, o valor 0 deverá ser mostrado na frente das informações do cliente.
OBS: Quando efetuamos a contagem de uma coluna, a coluna que tiver o valor nulo é contada com o valor 0.
*/

select c.*, count(nr_venda) as qdade_comprada
from cliente c left join venda v on c.id_cliente = v.id_cliente
group by c.id_cliente;

