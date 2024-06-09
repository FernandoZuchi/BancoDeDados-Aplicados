CREATE DATABASE  IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	8.0.21

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
  `Cod_cliente` int NOT NULL,
  `Nome_cliente` varchar(50) NOT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Cidade` varchar(20) DEFAULT NULL,
  `Cep` char(8) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  `CPF` char(14) DEFAULT NULL,
  `RG` char(12) DEFAULT NULL,
  PRIMARY KEY (`Cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Marcelo Cruz','Rua Brasil, 35','Jundiaí','13124579','SP','7464563762','53425364'),(2,'Jose da Silva','Rua Argentina, 23','Buenos Aires','45876548','TY','4587412637','452145285'),(3,'Mia Bini','Alameda cavalcante, 12','Pindamonhangaba','45269887','SP','1542845798','687286464'),(4,'Nelson Nerd','Rua das Torres, 750','Araraquara','25412563','SP','654987985','984651698'),(5,'Rogério Silva','Avenida Castro Alves, 5500','Queluz','68416845','ES','0654987878','984165494'),(6,'Vinicius Beto','Rua Brasil, 42','São Paulo','15478452','SP','0640968109','981651988'),(7,'Cândido Tavares','Rua da Abolição, 350','Jundiaí','13215468','SP','0065498987','954165214'),(8,'Uioswaldo Neto','Rua Avestruz Limpa, 80','Araraquara','16789487','PR','987654613','774465546'),(9,'Ana Benedetti','Rua Antônio Limones, 90','Jundiaí','13215045','SP','6549879495','665421634'),(10,'Bruno Mezenga','Rua Major Mário Lacerda, 1340','Pindamonhangaba','22400485','SP','6549684851','968762461'),(11,'Silvia Popovic','Alameda Castro, 48','Jundiaí','13215064','SP','6324161878','416516547'),(12,'Fausto Silva','Avenida dos Ferroviários, 2000','Queluz','65498719','SP','6547841352','654849514'),(13,'Renata Polire','Rua do Retiro, 5400','São Paulo','65491878','PR','24165798787','165465787'),(14,'Adamastor Tio','Rua Entre Postes, 366','Jundiaí','13254687','ES','99887958416','6321654657'),(15,'Luke Skywalker','Rua Olivia Terceira, 240','São Paulo','68423546','SP','65495819518','3654621657'),(16,'Plínio Castro Mendes','Rua Padre Silveira, 750','Taubaté','26549879','SP','65498498425','6598798554'),(17,'Oswaldo Benegripe','Rua Daniel Mantovani, 987','São Paulo','32416579','PR','65498798415','6546549846'),(18,'Adamastor Filho','Avenida Antônio Ozanam, 5543','Jundiaí','13245124','SP','44564687951','3621654477'),(19,'Karina Bonamiga','Rua dos Expedicionários, 750','Jundiaí','13244457','SP','44798946546','9854654445'),(20,'Vanderlei Luís Silva','Rua Brasil, 75','São Paulo','11245788','SP','65498495158','6549874988');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pedido` (
  `num_pedido` int NOT NULL,
  `cod_produto` int NOT NULL,
  `quantidade` int DEFAULT NULL,
  `valor_item` double DEFAULT NULL,
  PRIMARY KEY (`num_pedido`,`cod_produto`),
  KEY `cod_produto` (`cod_produto`),
  CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`Num_pedido`),
  CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedido`
--

LOCK TABLES `item_pedido` WRITE;
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` VALUES (1,1,6,19.799999999999997),(1,2,13,15.99),(1,3,3,1.6800000000000002),(2,1,50,165),(2,2,8,9.84),(2,4,80,840),(3,1,66,217.79999999999998),(4,3,200,112.00000000000001),(4,7,3,422.93999999999994),(4,13,40,20),(4,14,40,420),(4,18,50,30525),(5,3,6,3.3600000000000003),(5,6,8,403.44),(5,13,6,3),(6,14,100,1050),(6,16,50,4537.5),(6,17,20,4210),(7,6,150,7564.5),(8,10,120,360),(9,1,40,132),(9,3,69,38.64),(9,16,45,4083.75),(9,19,120,9660),(10,2,80,98.4),(11,5,8,5.90);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Num_pedido` int NOT NULL,
  `data_compra` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `cod_cliente` int NOT NULL,
  `cod_vendedor` int NOT NULL,
  PRIMARY KEY (`Num_pedido`),
  KEY `cod_cliente` (`cod_cliente`),
  KEY `FK_VENDEDOR` (`cod_vendedor`),
  CONSTRAINT `FK_VENDEDOR` FOREIGN KEY (`cod_vendedor`) REFERENCES `vendedor` (`cod_vendedor`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`Cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2011-01-09','2011-01-09',2,3),(2,'2011-05-08','2011-05-18',2,1),(3,'2011-02-06','2011-02-16',4,3),(4,'2011-10-07','2011-10-27',10,15),(5,'2011-08-05','2011-08-25',17,13),(6,'2011-05-04','2011-05-14',1,8),(7,'2011-09-09','2011-09-11',6,9),(8,'2011-05-07','2011-05-08',18,13),(9,'2011-06-02','2011-06-12',13,17),(10,'2011-05-01','2001-05-21',10,9),(11,'2011-05-03','2011-05-05',15,14),(12,'2011-08-11','2011-09-09',7,6),(13,'2011-02-11','2011-03-05',12,18),(14,'2011-08-11','2011-08-12',9,4),(15,'2011-08-09','2011-08-11',14,13),(16,'2004-06-01','2004-06-01',7,3),(17,'2011-01-04','2011-01-14',11,14),(18,'2011-06-07','2011-06-08',7,15),(19,'2011-02-06','2011-02-09',14,16),(20,'2011-10-07','2011-10-09',18,17);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `cod_produto` int NOT NULL,
  `descricao` varchar(20) DEFAULT NULL,
  `Unidade` char(2) DEFAULT NULL,
  `Valor_unitario` double DEFAULT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Manteiga diet','UN',3.3),(2,'Toddynho','UN',1.23),(3,'Lapis de cor','CX',0.56),(4,'Barbeador','UN',10.5),(5,'Leite','LT',70.2),(6,'Danone','LT',50.43),(7,'Alcatra','KG',140.98),(8,'Pinga','UN',110.5),(9,'Alface','UN',2),(10,'Caderno','UN',3),(11,'Óculos','UN',4),(12,'Cinto','UN',81.5),(13,'Camisa','UN',0.5),(14,'Sapato','UN',10.5),(15,'Relógio','UN',50),(16,'Escada','MT',90.75),(17,'Porta','UN',210.5),(18,'Impressora','UN',610.5),(19,'Água','LT',80.5),(20,'Telefone','UN',60);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `cod_vendedor` int NOT NULL,
  `nome_vendedor` varchar(50) NOT NULL,
  `faixa_comissao` char(1) DEFAULT NULL,
  `salario_fixo` double DEFAULT NULL,
  PRIMARY KEY (`cod_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Sandra Bullock','A',200),(2,'Keanu Reeves','A',500),(3,'Matt Damon','B',1000),(4,'Alicia Silverstone','C',400),(5,'Marilyn Monroe','B',100),(6,'Ben Affleck','A',4000),(7,'Anna Nicole Smith','B',2200),(8,'Anna Kournikova','B',600),(9,'Paulo Zulu','C',800),(10,'Meg Ryan','A',1500),(11,'Tom Cruise','B',3200),(12,'Will Smith','C',30),(13,'Whitney Houston','A',1000),(14,'Nicole Kidman','B',2200),(15,'Nhá Barbina','A',200),(16,'Demi Moore','C',2000),(17,'Sharon Stone','A',7000),(18,'Carolina Dieckmann','D',1200),(19,'Giovana Antonelli','A',700),(20,'Kevin Costner','B',600);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 19:55:11

/* Recupere todas as informações dos vendedores que não efetuaram nenhuma venda. Utilize junção externa ou not in.(8 linhas retornadas) */
select v.*
from vendedor v left join pedido p on v.cod_vendedor = p.cod_vendedor
where p.cod_vendedor is null;

/* Traga todas as informações dos clientes, juntamente com a quantidade de pedidos que eles efetuaram. (14 linhas retornadas) */
select c.*, count(p.Num_pedido) as qdade_pedidos
from cliente c left join pedido p on c.Cod_cliente = p.cod_cliente
group by c.Cod_cliente
having qdade_pedidos > 0;

/* Recupere todas as informações do(s) produto(s) com maior valor unitário (1 linha retornada). */
select p.*
from produto p
where p.Valor_unitario = (select max(p.Valor_unitario) from produto p);

/*Crie e exiba uma visão que recupere todas as informações dos clientes, caso ele tenha realizado algum pedido, recupere também o número do pedido(26 linhas retornadas). */
create view tmj as
select c.*, p.Num_pedido
from cliente c left join pedido p on c.Cod_cliente = p.cod_cliente;

SELECT * FROM loja.tmj;

/* Recupere o número do pedido, o nome do cliente e o valor total. O valor total da compra deverá ser calculado multiplicando o valor de item pela quantidade comprada. 
Em seguida, deve-se somar todos os produtos que estão no pedido. (11 linhas retornadas). */
select p.Num_pedido, c.Nome_cliente, sum(ip.valor_item * ip.quantidade) as valor_total
from pedido p inner join cliente c on p.cod_cliente = c.Cod_cliente
inner join item_pedido ip on p.Num_pedido = ip.num_pedido
group by Num_pedido;

/* Recupere o nome do produto e a quantidade total de vendas realizadas de cada produto. Para os produtos que venderam mais de 100 unidades (7 linhas retornadas). */
select p.descricao, sum(ip.quantidade) as qdade 
from produto p inner join item_pedido ip on p.cod_produto = ip.cod_produto
group by p.cod_produto
having qdade > 100; 







