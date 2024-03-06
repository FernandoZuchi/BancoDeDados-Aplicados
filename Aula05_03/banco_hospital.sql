CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico` (
  `cpf` decimal(11,0) NOT NULL,
  `crm` decimal(10,0) NOT NULL,
  `cid` char(5) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`cpf`,`crm`,`cid`),
  KEY `fk_diag_crm` (`crm`),
  KEY `fk_doenca_paciente` (`cid`),
  CONSTRAINT `fk_diag_crm` FOREIGN KEY (`crm`) REFERENCES `medico` (`crm`),
  CONSTRAINT `fk_diag_paciente` FOREIGN KEY (`cpf`) REFERENCES `paciente` (`cpf`),
  CONSTRAINT `fk_doenca_paciente` FOREIGN KEY (`cid`) REFERENCES `doenca` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (11223344556,20169,'B05','2014-10-26'),(12345678901,18130,'L20.9','2015-06-23'),(12345678901,23232,'Q51.3','2012-08-20'),(12345678901,43641,'T78.4','2015-01-16'),(22334455667,20169,'J15','2015-08-19'),(23456789012,13753,'J01.1','2015-11-04'),(23456789012,23232,'N30.9','2015-08-04'),(33445566778,36046,'R01.1','2014-12-29'),(33445566778,41674,'N47','2015-04-23'),(34567890123,25096,'M81','2013-02-06'),(45678901234,26945,'C50.8','2007-04-17'),(45678901234,31727,'F50','2010-07-03'),(45678901234,31727,'F50.2','2011-05-30'),(56789012345,31727,'F33','2015-08-08'),(56789012345,41674,'Z30.2','2014-09-22'),(67890123456,34930,'E03.9','2009-10-14'),(67890123456,34930,'E66.0','2006-12-03'),(78901234567,31727,'F31.1','2008-07-15'),(78901234567,31727,'F42','2008-05-31'),(78901234567,36046,'I10','2005-03-09'),(89012345678,13753,'J01.1','1990-10-20'),(89012345678,34930,'E10.4','2003-11-18'),(90123456789,25096,'G30.1','2015-10-09');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doenca`
--

DROP TABLE IF EXISTS `doenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doenca` (
  `cid` char(5) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doenca`
--

LOCK TABLES `doenca` WRITE;
/*!40000 ALTER TABLE `doenca` DISABLE KEYS */;
INSERT INTO `doenca` VALUES ('B01','Varicela (Catapora)'),('B05','Sarampo'),('C18.2','Neoplasia maligna do cólon ascendente'),('C50.8','Neoplasia maligna da mama com lesão invasiva'),('C61','Neoplasia maligna da próstata'),('C92','Leucemia mielóide'),('E03.9','Hipotireoidismo não especificado'),('E05','Tireotoxicose (hipertireoidismo)'),('E10.4','Diabetes mellitus insulino-dependente - com complicações neurológicas'),('E66.0','Obesidade devida a excesso de calorias'),('F20','Esquizofrenia'),('F31.1','Transtorno afetivo bipolar'),('F33','Transtorno depressivo recorrente'),('F42','Transtorno obsessivo-compulsivo'),('F50','Anorexia nervosa'),('F50.2','Bulimia nervosa'),('G03.1','Meningite crônica'),('G05.8','Encefalite, mielite e encefalomielite em outras doenças classificadas em outra parte'),('G20','Doença de Parkinson'),('G30.1','Doença de Alzheimer de início tardio'),('H26.2','Catarata complicada'),('H44.2','Miopia degenerativa'),('H44.6','Corpo estranho retido (antigo) intra-ocular de natureza magnética'),('I10','Hipertensão essencial (primária)'),('I73.9','Doenças vasculares periféricas não especificada'),('I83.9','Varizes dos membros inferiores sem úlcera ou inflamação'),('J01.1','Sinusite frontal aguda'),('J15','Pneumonia bacteriana não classificada em outra parte'),('K29.7',NULL),('L20.9','Dermatite atópica, não especificada'),('M81','Osteoporose sem fratura patológica'),('N18.9','Insuficiência renal crônica não especificada'),('N20.9','Calculose urinária, não especificada'),('N30.9','Cistite, não especificada'),('N47','Hipertrofia do prepúcio, fimose e parafimose'),('Q51.3','Útero bicórneo'),('R01.1','Sopro cardíaco, não especificado'),('T78.4','Alergia não especificada'),('Z30.2','Esterilização');
/*!40000 ALTER TABLE `doenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `rqe` decimal(5,0) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rqe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (977,'Anestegiologia'),(2261,'CIRURGIA PLÁSTICA'),(2740,'Neurologia'),(6520,'GINECOLOGIA E OBSTETRÍCIA'),(7379,'Alergia e Imunologia'),(9229,'PSIQUIATRIA'),(9990,'Clínica Médica'),(12557,'Acumpuntura'),(15688,'Dermatologia'),(17981,'Canceriologia'),(18086,'Oftamologia'),(19072,'Angiologia'),(20160,'Pediatria'),(22344,'Urologia'),(25270,'Geriatria'),(25832,'Cardiologia'),(29607,'Endocrinologia e Metabologia'),(31760,'NEFROLOGIA');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `cnpj` decimal(14,0) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `telefone` char(13) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (17268871000193,'HOSPITAL ALBERT SABIN','RUA DOUTOR EDGARD CARLOS PEREIRA','Santa Tereza','Juiz de Fora','36020-200','(32)3249-7000'),(18338178000102,'Hospital de Pronto Dr. Mozart Teixeira','Av. Barão do Rio Branco','Centro','Juiz de Fora','36025-020','(32)3690-7152'),(21575709000195,'Santa Casa De Misericordia De Juiz De Fora','Av. Barão do Rio Branco','Centro','Juiz de Fora','36021-630','(32)2104-2000'),(21583042000172,'HOSPITAL E MATERNIDADE THEREZINHA DE JESUS','R Dr Dirceu De Andrade','São Mateus','Juiz de Fora','36025-330','(32)4009-2277'),(21599824000108,'Hospital Asconcer','Av. Presidente Itamar Franco','Cascatinha','Juiz de Fora','36025-290','(32)3311-4000'),(25415993000193,'HOSPITAL MONTE SINAI','RUA VICENTE BEGHELLI','Dom Bosco','Juiz de Fora','36025-550','(32)3239-4455');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `crm` decimal(10,0) NOT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (7683,76543210987,'MARCIO GRILLO DE BRETAS','Rua Dr Constantino Paleta','Centro','Juiz de Fora','36025-144'),(10874,87654321098,'FLAVIO RIBEIRO MARTINS','Rua Dr Edgard Carlos Pereira','Santa Tereza','Juiz de Fora','36022-441'),(11024,65432109876,'LUIZ KINGMA LANZIOTTI','Rua Padre Cafe','São Mateus','Juiz de Fora','36012-850'),(13127,44455566677,'PAULO SERGIO CURZIO','Av. Barão do Rio Branco','Centro','Juiz de Fora','36027-145'),(13753,32109876543,'RONALDO MULLER','Rua Halfeld','Centro','Juiz de Fora','36088-512'),(18130,21098765432,'SUMAYA MATTAR','Av. Barão do Rio Branco','Centro','Juiz de Fora','36044-220'),(20169,66677788899,'JAIR PIRES DE OLIVEIRA','Av. Barão do Rio Branco','Centro','Juiz de Fora','36074-560'),(23232,22233344455,'MARCELO VITOR MENDES CONDE','Av. Barão do Rio Branco','Centro','Juiz de Fora','36022-113'),(25096,11122233344,'ELIANE BAIAO GUILHERMINO','Rua Rei Alberto','Centro','Juiz de Fora','36089-774'),(26945,54321098765,'CHRISTIANE MARIA MEURER ALVES','Av Pres Itamar Franco','São Mateus','Juiz de Fora','36015-230'),(26989,33344455566,'ADRIANA DE ALMEIDA PASCINI BREGA','Av. Barão do Rio Branco','São Mateus','Juiz de Fora','36011-223'),(30539,55566677788,'ALBA FABIANE CARVALHO TAROCO','Av. Barão do Rio Branco','Bom Pastor','Juiz de Fora','36066-450'),(31727,77788899901,'CESAR AUGUSTO SOUZA LIMA DE MELLO','Santo Antônio','Centro','Juiz de Fora','36022-444'),(34930,10987654321,'LUIZ GUILHERME LOPES JUNIOR','Av Pres Itamar Franco','Dom Bosco','Juiz de Fora','36025-654'),(36046,43210987654,'RODRIGO DA SILVA OLIVEIRA GOMES','Av. Barão do Rio Branco','Centro','Juiz de Fora','36055-330'),(41674,88899900011,'FELIPE TORRES RABELO','Rua Santos Dumont','Grambery','Juiz de Fora','36011-236'),(43641,98765432109,'AIRTON ESMERIO FERNANDES JUNIOR','Tiradentes','Centro','Juiz de Fora','36021-148');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_especialidade`
--

DROP TABLE IF EXISTS `medico_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_especialidade` (
  `crm` decimal(10,0) NOT NULL,
  `rqe` decimal(5,0) NOT NULL,
  PRIMARY KEY (`crm`,`rqe`),
  KEY `fk_especialidade` (`rqe`),
  CONSTRAINT `fk_especialidade` FOREIGN KEY (`rqe`) REFERENCES `especialidade` (`rqe`),
  CONSTRAINT `fk_medico_especialidade` FOREIGN KEY (`crm`) REFERENCES `medico` (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_especialidade`
--

LOCK TABLES `medico_especialidade` WRITE;
/*!40000 ALTER TABLE `medico_especialidade` DISABLE KEYS */;
INSERT INTO `medico_especialidade` VALUES (10874,977),(13127,2740),(23232,6520),(43641,7379),(31727,9229),(13753,9990),(7683,12557),(18130,15688),(26945,17981),(30539,18086),(11024,19072),(20169,20160),(41674,22344),(25096,25270),(36046,25832),(34930,29607),(26989,31760);
/*!40000 ALTER TABLE `medico_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_hospital`
--

DROP TABLE IF EXISTS `medico_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_hospital` (
  `cnpj` decimal(14,0) NOT NULL,
  `crm` decimal(10,0) NOT NULL,
  `dataInicio` date DEFAULT NULL,
  PRIMARY KEY (`cnpj`,`crm`),
  KEY `fk_hosp_medico` (`crm`),
  CONSTRAINT `fk_hosp_medico` FOREIGN KEY (`crm`) REFERENCES `medico` (`crm`),
  CONSTRAINT `fk_hospital` FOREIGN KEY (`cnpj`) REFERENCES `hospital` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_hospital`
--

LOCK TABLES `medico_hospital` WRITE;
/*!40000 ALTER TABLE `medico_hospital` DISABLE KEYS */;
INSERT INTO `medico_hospital` VALUES (17268871000193,10874,'2011-01-22'),(17268871000193,11024,'2000-11-03'),(17268871000193,13753,'1998-04-08'),(17268871000193,25096,'2007-08-16'),(17268871000193,26945,'2003-02-08'),(17268871000193,36046,'1999-03-10'),(17268871000193,41674,'2006-04-20'),(18338178000102,13753,'2008-07-18'),(18338178000102,26989,'2011-12-07'),(18338178000102,31727,'2010-12-15'),(21575709000195,23232,'1995-06-05'),(21575709000195,31727,'2013-12-01'),(21583042000172,13127,'2012-03-13'),(21583042000172,23232,'2003-05-26'),(21599824000108,26945,'2006-09-14'),(25415993000193,10874,'2010-02-16'),(25415993000193,11024,'2002-10-19'),(25415993000193,20169,'2014-05-27'),(25415993000193,23232,'2009-04-23'),(25415993000193,31727,'2002-06-30');
/*!40000 ALTER TABLE `medico_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `cpf` decimal(11,0) NOT NULL,
  `rg` char(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (11223344556,'MG12345678','Isadora de Freitas','Padre Frederico','Santa Catarina','Juiz de Fora','36022-450','2013-08-13'),(12345678901,'MG11222333','Maria das Dores','Prof. Cunha Figueiredo','Mundo Novo','Juiz de Fora','36033-143','1995-03-11'),(22334455667,'MG23456789','Maria Fernanda de Oliveira','Barão de São João Nepomuceno','Centro','Juiz de Fora','36020-655','2014-02-16'),(23456789012,'MG22333444','Otávia Neto Braga','Moraes e Castro','São Mateus','Juiz de Fora','35044-123','1990-08-15'),(33445566778,'MG34567890','Pedro Henrique Miranda','Rua Moraes e Castro','São Mateus','Juiz de Fora','36015-077','2012-01-26'),(34567890123,'MG33444555','Geralda Paiva Britto','Dr. Paulo Japiassu Coelho','Cascatinha','Juiz de Fora','36033-215','1942-12-22'),(45678901234,'MG44555666','Natália Almeida Pascoalino','Av. Rio Branco','Centro','Juiz de Fora','36036-123','1974-01-23'),(56789012345,'MG55666777','Antônio dos Santos Martins','Olegário Maciel','Paineiras','Juiz de Fora','36035-444','1964-05-06'),(67890123456,'MG66777888','Freddy Alexandre Silva','Oswaldo Aranha','Centro','Juiz de Fora','36022-111','1955-04-12'),(78901234567,'MG77888999','Maria Perpétua Natalina','Osório Tristão','Santa Candida','Juiz de Fora','36044-123','1974-12-11'),(89012345678,'MG88999000','Feliciana Margarida de Jesus','Capitão Arnaldo de Carvalho','Vale do Ipê','Juiz de Fora','36066-789','1964-06-22'),(90123456789,'MG99888777','Gláucia Almeida Pascoalino','Av. dos Andradas','Centro','Juiz de Fora','36054-123','1947-09-04');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 15:33:30
