CREATE DATABASE  IF NOT EXISTS `tsw` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tsw`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: squishy_muffins
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `cod_categoria` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

--
-- Table structure for table `composizione`
--

DROP TABLE IF EXISTS `composizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composizione` (
  `codi_prodotto` int NOT NULL,
  `num_ordine` int NOT NULL,
  `quantita` double NOT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `prezzo` double(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`codi_prodotto`,`num_ordine`),
  KEY `codi_prodotto_idx` (`codi_prodotto`),
  KEY `num_ordine_idx` (`num_ordine`),
  CONSTRAINT `codi_prodotto` FOREIGN KEY (`codi_prodotto`) REFERENCES `prodotto` (`cod_prodotto`),
  CONSTRAINT `num_ordine` FOREIGN KEY (`num_ordine`) REFERENCES `ordine` (`id_ordine`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composizione`
--

--
-- Table structure for table `consegna`
--

DROP TABLE IF EXISTS `consegna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consegna` (
  `id_consegna` int NOT NULL,
  `via` varchar(45) NOT NULL,
  `cap` int NOT NULL,
  `numero` int NOT NULL,
  `citta` varchar(45) NOT NULL,
  `utente` varchar(50) NOT NULL,
  PRIMARY KEY (`id_consegna`),
  KEY `email_utente_idx` (`utente`),
  CONSTRAINT `email` FOREIGN KEY (`utente`) REFERENCES `utente` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consegna`
--

--
-- Table structure for table `immagine`
--

DROP TABLE IF EXISTS `immagine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immagine` (
  `nome_immagine` varchar(45) NOT NULL,
  `path` varchar(60) NOT NULL,
  PRIMARY KEY (`nome_immagine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immagine`
--

--
-- Table structure for table `metodo_pagamento`
--

DROP TABLE IF EXISTS `metodo_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_pagamento` (
  `id_pagamento` int NOT NULL,
  `nominativo` varchar(80) NOT NULL,
  `CVV` int NOT NULL,
  `meseScadenza` int NOT NULL,
  `codice_carta` varchar(16) NOT NULL,
  `annoScadenza` int NOT NULL,
  `e_utente` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `e_utente_idx` (`e_utente`),
  CONSTRAINT `e_utente` FOREIGN KEY (`e_utente`) REFERENCES `utente` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pagamento`
--

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `id_ordine` int NOT NULL,
  `data_ordine` date NOT NULL,
  `stato_ordine` varchar(45) NOT NULL,
  `cod_consegna` int NOT NULL,
  `cod_pagamento` int NOT NULL,
  `cod_utente` varchar(50) NOT NULL,
  `prezzo_totale` double(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_ordine`),
  KEY `consegna_idx` (`cod_consegna`),
  KEY `cod_pagamento_idx` (`cod_pagamento`),
  KEY `cod_utente_idx` (`cod_utente`),
  CONSTRAINT `cod_consegna` FOREIGN KEY (`cod_consegna`) REFERENCES `consegna` (`id_consegna`),
  CONSTRAINT `cod_pagamento` FOREIGN KEY (`cod_pagamento`) REFERENCES `metodo_pagamento` (`id_pagamento`),
  CONSTRAINT `cod_utente` FOREIGN KEY (`cod_utente`) REFERENCES `utente` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

--
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `cod_prodotto` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `prezzo` double(6,2) NOT NULL,
  `descrizione` varchar(800) NOT NULL,
  `quantita` int NOT NULL,
  `cod_immagine` varchar(45) DEFAULT NULL,
  `codi_categoria` int NOT NULL,
  `rimosso` int NOT NULL DEFAULT '0',
  `iva` double NOT NULL DEFAULT '22',
  PRIMARY KEY (`cod_prodotto`),
  KEY `cod_immagine_idx` (`cod_immagine`),
  KEY `codi_categoria_idx` (`codi_categoria`),
  CONSTRAINT `cod_immagine` FOREIGN KEY (`cod_immagine`) REFERENCES `immagine` (`nome_immagine`),
  CONSTRAINT `codi_categoria` FOREIGN KEY (`codi_categoria`) REFERENCES `categoria` (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipo_account` tinyint DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(35) NOT NULL,
  `codice_fiscale` varchar(16) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--


--
-- Table structure for table `utilizzo`
--

DROP TABLE IF EXISTS `utilizzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizzo` (
  `codi_pagamento` int NOT NULL,
  `codi_utente` varchar(50) NOT NULL,
  KEY `cod_pagamento_idx` (`codi_pagamento`),
  KEY `codi_utente_idx` (`codi_utente`),
  CONSTRAINT `codi_pagamento` FOREIGN KEY (`codi_pagamento`) REFERENCES `metodo_pagamento` (`id_pagamento`),
  CONSTRAINT `codi_utente` FOREIGN KEY (`codi_utente`) REFERENCES `utente` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizzo`
--

LOCK TABLES `utilizzo` WRITE;
/*!40000 ALTER TABLE `utilizzo` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizzo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-08 13:07:07
