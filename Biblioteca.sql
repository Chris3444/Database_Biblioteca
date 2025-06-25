-- MySQL dump 10.13  Distrib 8.4.4, for Linux (x86_64)
--
-- Host: localhost    Database: Biblioteca
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTORE`
--

DROP TABLE IF EXISTS `AUTORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTORE` (
  `id_autore` char(36) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `nato_a` varchar(20) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  PRIMARY KEY (`id_autore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTORE`
--

LOCK TABLES `AUTORE` WRITE;
/*!40000 ALTER TABLE `AUTORE` DISABLE KEYS */;
INSERT INTO `AUTORE` VALUES ('e8cd8166-50ec-11f0-9e7d-00155d921656','Francesco','Mattei','Roma','1965-03-15'),('e8cd8793-50ec-11f0-9e7d-00155d921656','Alessandro','Antonietti','Milano','1960-07-22'),('e8cd8a7c-50ec-11f0-9e7d-00155d921656','Giuseppe','Furnari','Palermo','1955-11-08'),('e8cd8b06-50ec-11f0-9e7d-00155d921656','Michael T.','Madigan','New York','1949-04-12'),('e8cd8b62-50ec-11f0-9e7d-00155d921656','Leonardo','Benevolo','Orta San Giulio','1923-09-25'),('e8cd8bba-50ec-11f0-9e7d-00155d921656','Donatella','Calabi','Venezia','1940-06-18'),('e8cd8c0d-50ec-11f0-9e7d-00155d921656','Carlo M.','Cipolla','Pavia','1922-08-15'),('e8cd8c5c-50ec-11f0-9e7d-00155d921656','Sheldon M.','Ross','New York','1943-01-20'),('e8cd8dd0-50ec-11f0-9e7d-00155d921656','Douglas C.','Montgomery','Phoenix','1948-12-06'),('e8cd8e4e-50ec-11f0-9e7d-00155d921656','Lev D.','Landau','Baku','1908-01-22'),('e8cd8eb6-50ec-11f0-9e7d-00155d921656','Malcolm S.','Longair','Dundee','1941-05-13'),('e8cd9290-50ec-11f0-9e7d-00155d921656','Raffaele','Cantone','Napoli','1963-07-30'),('e8cd9329-50ec-11f0-9e7d-00155d921656','Roberto','Bin','Torino','1952-10-14'),('e8cd9395-50ec-11f0-9e7d-00155d921656','Mario','Talamanca','Roma','1929-03-08'),('e8cd93f9-50ec-11f0-9e7d-00155d921656','William H.','Brown','Philadelphia','1940-09-05'),('e8cd9454-50ec-11f0-9e7d-00155d921656','Antonello','Venditti','Roma','1962-11-30'),('e8cd94b7-50ec-11f0-9e7d-00155d921656','Peter J.','Russell','San Francisco','1944-02-28'),('e8cd9502-50ec-11f0-9e7d-00155d921656','Donald','Voet','Boston','1938-04-15'),('e8cd9552-50ec-11f0-9e7d-00155d921656','Marco','Bramanti','Milano','1960-08-12'),('e8cd95a0-50ec-11f0-9e7d-00155d921656','Camil','Demetrescu','Bucuresti','1965-05-20'),('e8cd95f6-50ec-11f0-9e7d-00155d921656','Giuseppe','Albertoni','Bologna','1935-12-03'),('e8cd9646-50ec-11f0-9e7d-00155d921656','Romano','Luperini','Siena','1940-01-25'),('e8cd9692-50ec-11f0-9e7d-00155d921656','Paolo','Mazzoldi','Padova','1938-06-10'),('e8cd96e0-50ec-11f0-9e7d-00155d921656','Carmelo','Monaco','Catania','1955-09-18'),('e8cd972c-50ec-11f0-9e7d-00155d921656','Paul A.','Samuelson','Gary','1915-05-15'),('e8cd9779-50ec-11f0-9e7d-00155d921656','Philip','Kotler','Chicago','1931-05-27');
/*!40000 ALTER TABLE `AUTORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COPIA`
--

DROP TABLE IF EXISTS `COPIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COPIA` (
  `codice` char(36) NOT NULL,
  `lingua` varchar(20) NOT NULL,
  `isbn` char(13) NOT NULL,
  `cod_suc` char(36) NOT NULL,
  PRIMARY KEY (`codice`),
  KEY `isbn` (`isbn`),
  KEY `cod_suc` (`cod_suc`),
  CONSTRAINT `COPIA_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `LIBRO` (`isbn`),
  CONSTRAINT `COPIA_ibfk_2` FOREIGN KEY (`cod_suc`) REFERENCES `SUCCURSALE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COPIA`
--

LOCK TABLES `COPIA` WRITE;
/*!40000 ALTER TABLE `COPIA` DISABLE KEYS */;
INSERT INTO `COPIA` VALUES ('e8d7cdcb-50ec-11f0-9e7d-00155d921656','Italiano','9788842013075','e8c702e0-50ec-11f0-9e7d-00155d921656'),('e8d7d686-50ec-11f0-9e7d-00155d921656','Italiano','9788861592506','e8c702e0-50ec-11f0-9e7d-00155d921656'),('e8d7da89-50ec-11f0-9e7d-00155d921656','Italiano','9788815131256','e8c702e0-50ec-11f0-9e7d-00155d921656'),('e8d7defc-50ec-11f0-9e7d-00155d921656','Italiano','9788815286536','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8d7e9d8-50ec-11f0-9e7d-00155d921656','Italiano','9788838668559','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8d7eb35-50ec-11f0-9e7d-00155d921656','Italiano','9788899302252','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8d7ec76-50ec-11f0-9e7d-00155d921656','Italiano','9788880084129','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8d7eda8-50ec-11f0-9e7d-00155d921656','Italiano','9788877114105','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8d7eedf-50ec-11f0-9e7d-00155d921656','Italiano','9788829007431','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8d7f011-50ec-11f0-9e7d-00155d921656','Italiano','9788808621092','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8d7f144-50ec-11f0-9e7d-00155d921656','Italiano','9788838668542','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8d7f394-50ec-11f0-9e7d-00155d921656','Italiano','9788838695582','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8d7f55d-50ec-11f0-9e7d-00155d921656','Italiano','9788868121846','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7f7ab-50ec-11f0-9e7d-00155d921656','Italiano','9788842063841','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7f94d-50ec-11f0-9e7d-00155d921656','Italiano','9788815139429','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7faa5-50ec-11f0-9e7d-00155d921656','Italiano','9788815271853','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7fbde-50ec-11f0-9e7d-00155d921656','Italiano','9788815299239','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7fd11-50ec-11f0-9e7d-00155d921656','Italiano','9788891904652','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7fe46-50ec-11f0-9e7d-00155d921656','Italiano','9788815287465','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d7ff76-50ec-11f0-9e7d-00155d921656','Italiano','9788891904850','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8d800b2-50ec-11f0-9e7d-00155d921656','Italiano','9788808182142','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d801eb-50ec-11f0-9e7d-00155d921656','Italiano','9788838664991','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d8040a-50ec-11f0-9e7d-00155d921656','Italiano','9788899302252','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d80590-50ec-11f0-9e7d-00155d921656','Italiano','9788880084129','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d80e52-50ec-11f0-9e7d-00155d921656','Italiano','9788808182142','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d81102-50ec-11f0-9e7d-00155d921656','Italiano','9788838664991','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8d8152c-50ec-11f0-9e7d-00155d921656','Italiano','9788838668016','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8d81702-50ec-11f0-9e7d-00155d921656','Italiano','9788808621146','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8d81855-50ec-11f0-9e7d-00155d921656','Inglese','9780750627689','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8d819a1-50ec-11f0-9e7d-00155d921656','Inglese','9780521829519','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8d81add-50ec-11f0-9e7d-00155d921656','Italiano','9788808182142','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8de1c32-50ec-11f0-9e7d-00155d921656','Francese','9788815131256','e8c702e0-50ec-11f0-9e7d-00155d921656'),('e8de297c-50ec-11f0-9e7d-00155d921656','Francese','9788815286536','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8de2c90-50ec-11f0-9e7d-00155d921656','Francese','9788842063841','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8de2e5b-50ec-11f0-9e7d-00155d921656','Spagnolo','9788838668559','e8c70769-50ec-11f0-9e7d-00155d921656'),('e8de2fed-50ec-11f0-9e7d-00155d921656','Spagnolo','9788815139429','e8c70c7c-50ec-11f0-9e7d-00155d921656'),('e8de3178-50ec-11f0-9e7d-00155d921656','Spagnolo','9788808182142','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8de33e1-50ec-11f0-9e7d-00155d921656','Tedesco','9788838664991','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8de35f1-50ec-11f0-9e7d-00155d921656','Tedesco','9788838668016','e8c70978-50ec-11f0-9e7d-00155d921656'),('e8de37b4-50ec-11f0-9e7d-00155d921656','Tedesco','9788829007431','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8de3954-50ec-11f0-9e7d-00155d921656','Inglese','9788838664991','e8c70a38-50ec-11f0-9e7d-00155d921656'),('e8de3c1b-50ec-11f0-9e7d-00155d921656','Inglese','9788808621092','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8de3e47-50ec-11f0-9e7d-00155d921656','Inglese','9788838668542','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8de3ffc-50ec-11f0-9e7d-00155d921656','Inglese','9788838695582','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('e8de4332-50ec-11f0-9e7d-00155d921656','Inglese','9788891906298','e8c70c4d-50ec-11f0-9e7d-00155d921656'),('ea9b87de-50ec-11f0-9e7d-00155d921656','Italiano','9788838699900','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9b99da-50ec-11f0-9e7d-00155d921656','Italiano','9788838699901','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9b9dfa-50ec-11f0-9e7d-00155d921656','Italiano','9788838699902','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9ba01a-50ec-11f0-9e7d-00155d921656','Italiano','9788838699903','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9ba1f6-50ec-11f0-9e7d-00155d921656','Italiano','9788838699904','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9ba3cb-50ec-11f0-9e7d-00155d921656','Inglese','9788838699900','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9ba587-50ec-11f0-9e7d-00155d921656','Inglese','9788838699901','e8c70769-50ec-11f0-9e7d-00155d921656'),('ea9ba904-50ec-11f0-9e7d-00155d921656','Inglese','9788838699903','e8c70769-50ec-11f0-9e7d-00155d921656');
/*!40000 ALTER TABLE `COPIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIBRO`
--

DROP TABLE IF EXISTS `LIBRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIBRO` (
  `isbn` char(13) NOT NULL,
  `titolo` varchar(128) NOT NULL,
  `anno` year DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIBRO`
--

LOCK TABLES `LIBRO` WRITE;
/*!40000 ALTER TABLE `LIBRO` DISABLE KEYS */;
INSERT INTO `LIBRO` VALUES ('9780521829519','General Relativity: An Introduction for Physicists',2006),('9780750627689','The Classical Theory of Fields: Volume 2',1987),('9788808182142','General Mathematics',2019),('9788808621092','Genetics',2017),('9788808621146','Structural Geology',2021),('9788815131256','Economic History of Pre-Industrial Europe',2009),('9788815139429','Medieval History',2016),('9788815271853','Italian Literature',2020),('9788815286536','Political Economy',2022),('9788815287465','History of Roman Law',2019),('9788815299239','Anti-Corruption. Policies, Rules, Models',2023),('9788829007431','General and Molecular Pharmacology',2018),('9788838664991','Algorithms and Data Structures',2018),('9788838668016','General Physics',2019),('9788838668542','Biochemistry',2020),('9788838668559','Marketing',2020),('9788838695582','Organic Chemistry',2021),('9788838699900','Principles of Marketing',2020),('9788838699901','Marketing Management',2019),('9788838699902','Kotler on Marketing',2018),('9788838699903','Marketing 4.0: Moving from Traditional to Digital',2017),('9788838699904','Brand Activism: From Purpose to Action',2021),('9788842013075','History of Urban Planning. Vol. 22: The Nineteenth Century.',1977),('9788842063841','Introduction to the Psychology of Emotions',2006),('9788861592506','History of European Urban Planning',2008),('9788868121846','Itineraries of Social History of Western Education. Vol. 1: From Classical Humanism to Anthropological Humanism.',2013),('9788877114105','Compendium of Legal Medicine',2016),('9788880084129','Statistics for Economic and Business Sciences',2023),('9788891904652','Constitutional Law',2020),('9788891904850','Civil Law',2021),('9788891906298','Brock. Biology of Microorganisms. General, Environmental and Industrial Microbiology. MyLab Edition. With Online Updates',2022),('9788899302252','Solved Exercises in Statistics and Probability Calculus',2019);
/*!40000 ALTER TABLE `LIBRO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRESTITO`
--

DROP TABLE IF EXISTS `PRESTITO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRESTITO` (
  `cod_suc` char(36) NOT NULL,
  `cod_copia` char(36) NOT NULL,
  `cod_matricola` int NOT NULL,
  `data_prestito` date NOT NULL,
  `data_restituzione` date NOT NULL,
  PRIMARY KEY (`cod_suc`,`cod_copia`,`cod_matricola`,`data_prestito`),
  KEY `cod_copia` (`cod_copia`),
  KEY `cod_matricola` (`cod_matricola`),
  CONSTRAINT `PRESTITO_ibfk_1` FOREIGN KEY (`cod_suc`) REFERENCES `SUCCURSALE` (`id`),
  CONSTRAINT `PRESTITO_ibfk_2` FOREIGN KEY (`cod_copia`) REFERENCES `COPIA` (`codice`),
  CONSTRAINT `PRESTITO_ibfk_3` FOREIGN KEY (`cod_matricola`) REFERENCES `UTENTE` (`cod_matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRESTITO`
--

LOCK TABLES `PRESTITO` WRITE;
/*!40000 ALTER TABLE `PRESTITO` DISABLE KEYS */;
INSERT INTO `PRESTITO` VALUES ('e8c702e0-50ec-11f0-9e7d-00155d921656','e8d7cdcb-50ec-11f0-9e7d-00155d921656',195996,'2025-01-05','2025-02-04'),('e8c702e0-50ec-11f0-9e7d-00155d921656','e8d7d686-50ec-11f0-9e7d-00155d921656',195912,'2024-07-10','2024-08-20'),('e8c702e0-50ec-11f0-9e7d-00155d921656','e8d7da89-50ec-11f0-9e7d-00155d921656',195931,'2024-04-10','2024-05-02'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7defc-50ec-11f0-9e7d-00155d921656',195957,'2025-06-24','2025-07-24'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7defc-50ec-11f0-9e7d-00155d921656',195987,'2024-12-01','2024-12-31'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7e9d8-50ec-11f0-9e7d-00155d921656',195935,'2024-09-15','2024-10-05'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7e9d8-50ec-11f0-9e7d-00155d921656',195943,'2025-06-24','2025-07-08'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7eb35-50ec-11f0-9e7d-00155d921656',195999,'2024-11-01','2024-11-25'),('e8c70769-50ec-11f0-9e7d-00155d921656','e8d7ec76-50ec-11f0-9e7d-00155d921656',195964,'2024-10-25','2024-12-05'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7eda8-50ec-11f0-9e7d-00155d921656',195902,'2024-12-10','2025-01-09'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7eda8-50ec-11f0-9e7d-00155d921656',195903,'2025-06-24','2025-07-24'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7eedf-50ec-11f0-9e7d-00155d921656',195961,'2024-10-01','2024-11-10'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7f011-50ec-11f0-9e7d-00155d921656',195903,'2024-06-15','2024-07-15'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7f144-50ec-11f0-9e7d-00155d921656',195954,'2024-09-05','2024-09-25'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','e8d7f394-50ec-11f0-9e7d-00155d921656',195957,'2025-01-20','2025-02-19'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7f55d-50ec-11f0-9e7d-00155d921656',195923,'2024-11-15','2024-12-15'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7f7ab-50ec-11f0-9e7d-00155d921656',195915,'2024-12-15','2025-01-14'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7f94d-50ec-11f0-9e7d-00155d921656',195922,'2025-06-24','2025-07-24'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7f94d-50ec-11f0-9e7d-00155d921656',195941,'2024-08-20','2024-09-10'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7faa5-50ec-11f0-9e7d-00155d921656',195922,'2024-05-20','2024-06-25'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7fbde-50ec-11f0-9e7d-00155d921656',195936,'2025-01-10','2025-02-09'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7fd11-50ec-11f0-9e7d-00155d921656',195920,'2024-12-28','2025-01-27'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7fe46-50ec-11f0-9e7d-00155d921656',195943,'2025-02-01','2025-03-03'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','e8d7ff76-50ec-11f0-9e7d-00155d921656',195978,'2025-02-10','2025-03-12');
/*!40000 ALTER TABLE `PRESTITO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCRITTO_DA`
--

DROP TABLE IF EXISTS `SCRITTO_DA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCRITTO_DA` (
  `cod_lib` char(13) NOT NULL,
  `cod_autore` char(36) NOT NULL,
  PRIMARY KEY (`cod_lib`,`cod_autore`),
  KEY `cod_autore` (`cod_autore`),
  CONSTRAINT `SCRITTO_DA_ibfk_1` FOREIGN KEY (`cod_lib`) REFERENCES `LIBRO` (`isbn`),
  CONSTRAINT `SCRITTO_DA_ibfk_2` FOREIGN KEY (`cod_autore`) REFERENCES `AUTORE` (`id_autore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCRITTO_DA`
--

LOCK TABLES `SCRITTO_DA` WRITE;
/*!40000 ALTER TABLE `SCRITTO_DA` DISABLE KEYS */;
INSERT INTO `SCRITTO_DA` VALUES ('9788868121846','e8cd8166-50ec-11f0-9e7d-00155d921656'),('9788842063841','e8cd8793-50ec-11f0-9e7d-00155d921656'),('9788877114105','e8cd8a7c-50ec-11f0-9e7d-00155d921656'),('9788891906298','e8cd8b06-50ec-11f0-9e7d-00155d921656'),('9788842013075','e8cd8b62-50ec-11f0-9e7d-00155d921656'),('9788861592506','e8cd8bba-50ec-11f0-9e7d-00155d921656'),('9788815131256','e8cd8c0d-50ec-11f0-9e7d-00155d921656'),('9788899302252','e8cd8c5c-50ec-11f0-9e7d-00155d921656'),('9788880084129','e8cd8dd0-50ec-11f0-9e7d-00155d921656'),('9780750627689','e8cd8e4e-50ec-11f0-9e7d-00155d921656'),('9780521829519','e8cd8eb6-50ec-11f0-9e7d-00155d921656'),('9788815299239','e8cd9290-50ec-11f0-9e7d-00155d921656'),('9788891904652','e8cd9329-50ec-11f0-9e7d-00155d921656'),('9788891904850','e8cd9329-50ec-11f0-9e7d-00155d921656'),('9788815287465','e8cd9395-50ec-11f0-9e7d-00155d921656'),('9788838695582','e8cd93f9-50ec-11f0-9e7d-00155d921656'),('9788829007431','e8cd9454-50ec-11f0-9e7d-00155d921656'),('9788808621092','e8cd94b7-50ec-11f0-9e7d-00155d921656'),('9788838668542','e8cd9502-50ec-11f0-9e7d-00155d921656'),('9788808182142','e8cd9552-50ec-11f0-9e7d-00155d921656'),('9788838664991','e8cd95a0-50ec-11f0-9e7d-00155d921656'),('9788815139429','e8cd95f6-50ec-11f0-9e7d-00155d921656'),('9788815271853','e8cd9646-50ec-11f0-9e7d-00155d921656'),('9788838668016','e8cd9692-50ec-11f0-9e7d-00155d921656'),('9788808621146','e8cd96e0-50ec-11f0-9e7d-00155d921656'),('9788815286536','e8cd972c-50ec-11f0-9e7d-00155d921656'),('9788838668559','e8cd9779-50ec-11f0-9e7d-00155d921656'),('9788838699900','e8cd9779-50ec-11f0-9e7d-00155d921656'),('9788838699901','e8cd9779-50ec-11f0-9e7d-00155d921656'),('9788838699902','e8cd9779-50ec-11f0-9e7d-00155d921656'),('9788838699903','e8cd9779-50ec-11f0-9e7d-00155d921656'),('9788838699904','e8cd9779-50ec-11f0-9e7d-00155d921656');
/*!40000 ALTER TABLE `SCRITTO_DA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUCCURSALE`
--

DROP TABLE IF EXISTS `SUCCURSALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUCCURSALE` (
  `id` char(36) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `indirizzo` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUCCURSALE`
--

LOCK TABLES `SUCCURSALE` WRITE;
/*!40000 ALTER TABLE `SUCCURSALE` DISABLE KEYS */;
INSERT INTO `SUCCURSALE` VALUES ('e8c702e0-50ec-11f0-9e7d-00155d921656','Architettura','Via Ghiara, 36 - 44121 Ferrara'),('e8c70769-50ec-11f0-9e7d-00155d921656','Economia e Management','Via Voltapaletto n. 11 - 44121 Ferrara'),('e8c70978-50ec-11f0-9e7d-00155d921656','Fisica e Scienze della Terra','Via Saragat, 1 - 44122 Ferrara'),('e8c709cb-50ec-11f0-9e7d-00155d921656','Giurisprudenza','Corso Ercole I d\'Este n. 37 - 44121 Ferrara'),('e8c70a03-50ec-11f0-9e7d-00155d921656','Ingegneria','Via Saragat, 1 - 44122 Ferrara'),('e8c70a38-50ec-11f0-9e7d-00155d921656','Matematica e Informatica','Via Machiavelli, 30 - 44121 Ferrara'),('e8c70b30-50ec-11f0-9e7d-00155d921656','Medicina Traslazionale e per la Romagna','Via Luigi Borsari, 46 - 44121 Ferrara'),('e8c70b76-50ec-11f0-9e7d-00155d921656','Neuroscienze e Riabilitazione','Via Luigi Borsari, 46 - 44121 Ferrara'),('e8c70bb6-50ec-11f0-9e7d-00155d921656','Scienze Chimiche, Farmaceutiche ed Agrarie','Via Luigi Borsari, 46 - 44121 Ferrara'),('e8c70be8-50ec-11f0-9e7d-00155d921656','Scienze dell\'Ambiente e della Prevenzione','Via Luigi Borsari, 46 - 44121 Ferrara'),('e8c70c1b-50ec-11f0-9e7d-00155d921656','Scienze della Vita e Biotecnologie','Via Luigi Borsari, 46 - 44121 Ferrara'),('e8c70c4d-50ec-11f0-9e7d-00155d921656','Scienze Mediche','Via Fossato di Mortara, 64/B - 44121 Ferrara'),('e8c70c7c-50ec-11f0-9e7d-00155d921656','Studi Umanistici','Via Paradiso, 12 - 44121 Ferrara');
/*!40000 ALTER TABLE `SUCCURSALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UTENTE`
--

DROP TABLE IF EXISTS `UTENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UTENTE` (
  `cod_matricola` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `indirizzo` varchar(40) DEFAULT NULL,
  `num_telefono` varchar(13) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  PRIMARY KEY (`cod_matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UTENTE`
--

LOCK TABLES `UTENTE` WRITE;
/*!40000 ALTER TABLE `UTENTE` DISABLE KEYS */;
INSERT INTO `UTENTE` VALUES (195902,'Marco','Esposito','Viale Europa 8, Napoli','3409876543','1992-09-15'),(195903,'Elisa','Conti','Via Garibaldi 45, Bari','3601237894','1996-02-17'),(195905,'Beatrice','Marchetti','Via Mantova 15, Mantova','3390876543','1995-10-01'),(195908,'Angela','Orlando','Via Roma 56, Catania','3387901234','1992-04-18'),(195911,'Lorenzo','Bianco','Via Cavour 15, Siena','3293847561','1993-10-04'),(195912,'Chiara','Fontana','Via Mazzini 19, Venezia','3394561230','1991-01-20'),(195913,'Giovanna','Grassi','Via Napoli 31, Benevento','3194872031','1987-12-03'),(195915,'Anna','Russo','Corso Italia 5, Firenze','3501928374','1990-12-01'),(195917,'Silvia','Neri','Via Piave 14, Vicenza','3214802931','1992-01-11'),(195920,'Giorgio','Lombardi','Via Firenze 6, Prato','3463457832','1994-07-21'),(195922,'Stefano','Mancini','Via Manzoni 12, Lecce','3129087456','1993-08-03'),(195923,'Luca','Rossi','Via Roma 10, Milano','3201234567','1995-04-10'),(195926,'Dario','Amato','Via Foggia 7, Foggia','3104789201','1991-07-08'),(195931,'Martina','Barbieri','Via Petrarca 3, Pisa','3319082736','1990-12-29'),(195934,'Simone','Colombo','Via Appia 20, Salerno','3217654321','1995-01-25'),(195935,'Francesco','Romano','Via Napoli 12, Roma','3284739201','1985-07-14'),(195936,'Andrea','Sartori','Via Venezia 11, Mestre','3489127345','1992-03-19'),(195937,'Paola','Coppola','Via Adda 12, Sondrio','3328471920','1988-09-13'),(195941,'Davide','Costa','Via Po 4, Torino','3341209876','1994-05-30'),(195943,'Ilaria','De Luca','Via Bari 9, Andria','3374567832','1991-12-13'),(195944,'Pietro','Longo','Via Latina 10, Latina','3445678910','1986-06-27'),(195950,'Federica','Palmieri','Via Udine 7, Udine','3236547890','1997-06-15'),(195951,'Roberto','Ricci','Via Brenta 5, Belluno','3287491032','1989-03-07'),(195954,'Valentina','Marino','Via Trento 20, Trento','3229871302','1998-06-07'),(195957,'Laura','Greco','Via Bologna 2, Reggio Emilia','3367892341','1986-11-05'),(195959,'Matilda','De Angelis','Via Palermo 10, Ragusa','3123098745','1996-05-17'),(195960,'Nicola','Barone','Via Isonzo 6, Caserta','3309874123','1993-04-16'),(195961,'Sara','Gallo','Via Dante 7, Genova','3451239087','1999-11-11'),(195964,'Matteo','Rizzo','Via Leopardi 88, Pavia','3337482910','1989-04-02'),(195966,'Gabriele','Caruso','Via Trieste 33, Trieste','3357689301','1989-08-11'),(195967,'Alessia','Ferretti','Via Torino 89, Aosta','3319082735','1999-09-30'),(195973,'Tommaso','Fabbri','Via Como 2, Como','3249087123','1988-02-28'),(195977,'Emanuele','Testa','Via Milano 23, Lodi','3250987123','1985-03-22'),(195978,'Riccardo','Martini','Via Latina 14, Roma','3498765432','1983-09-08'),(195981,'Fabio','De Santis','Via Aquila 3, L’Aquila','3369801274','1990-08-19'),(195987,'Maria','Bianchi','Via Verdi 22, Torino','3312345678','1988-06-21'),(195990,'Elena','Vitale','Via Trento 10, Bolzano','3264789012','1990-11-29'),(195994,'Veronica','Gentile','Via Taranto 8, Taranto','3298456712','1994-02-06'),(195996,'Giulia','Ferrari','Piazza Duomo 3, Bologna','3276543210','1997-03-25'),(195999,'Alessandro','Moretti','Via Emilia 1, Parma','3208765432','1987-10-10');
/*!40000 ALTER TABLE `UTENTE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 14:00:43
