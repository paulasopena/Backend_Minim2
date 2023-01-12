-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rooms
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abuse`
--

DROP TABLE IF EXISTS `abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abuse` (
  `date` varchar(100) DEFAULT NULL,
  `informer` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abuse`
--

LOCK TABLES `abuse` WRITE;
/*!40000 ALTER TABLE `abuse` DISABLE KEYS */;
INSERT INTO `abuse` VALUES
('2023-01-12','guillem','things'),
('2023-01-12','guillem','hola que tal'),
('2023-01-12','alberto','hay cosas bacanas');
/*!40000 ALTER TABLE `abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatmessage`
--

DROP TABLE IF EXISTS `chatmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatmessage` (
  `name` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmessage`
--

LOCK TABLES `chatmessage` WRITE;
/*!40000 ALTER TABLE `chatmessage` DISABLE KEYS */;
INSERT INTO `chatmessage` VALUES
('Guillem','hey there'),
('Guillem','hola'),
('Alberto','hola como andas');
/*!40000 ALTER TABLE `chatmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadget`
--

DROP TABLE IF EXISTS `gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadget` (
  `idGadget` varchar(100) DEFAULT NULL,
  `cost` int(255) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `unityShape` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `idGadget` (`idGadget`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadget`
--

LOCK TABLES `gadget` WRITE;
/*!40000 ALTER TABLE `gadget` DISABLE KEYS */;
INSERT INTO `gadget` VALUES
('1',3,'Ojo volador','https://img.freepik.com/vector-premium/objeto-volador-no-identificado-pixel-estilo_475147-433.jpg?w=2000'),
('2',8,'Espada sin filo','https://img.freepik.com/vector-premium/pixel-art-espada-vaina_475147-473.jpg'),
('3',550,'Caminacielos','https://img.freepik.com/vector-premium/pixel-art-arcoiris-dos-nubes_475147-164.jpg?w=2000'),
('4',2,'Percha sonica','https://media.istockphoto.com/id/1441010991/es/vector/s%C3%ADmbolo-de-pixel-art-de-poncho-de-punto-rojo-sobre-una-percha-aislada-sobre-fondo-blanco.jpg?b=1&s=612x612&w=0&k=20&c=F4wO3fjq8aXxpT2pRYj4hca3T8Zlv4ZZCtZRv5OPXJY=');
/*!40000 ALTER TABLE `gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `idUser` varchar(100) DEFAULT NULL,
  `idGadget` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES
('mwajoXOV01159126995','1'),
('mwajoXOV01159126995','2'),
('mwajoXOV01159126995','1'),
('mwajoXOV01159126995','1');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` varchar(100) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `currentlyPlaying` tinyint(1) DEFAULT NULL,
  `coins` int(255) DEFAULT NULL,
  `experience` int(255) DEFAULT NULL,
  `profilePicture` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `idUser` (`idUser`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('E6400','Guillem','Purti','02112001','guille@gmail.com','123456',0,47,81,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTty5Z4hEeNEUICuhCAREChxEOhLSAL3KthnN9Cul7zs_gmb73Gcjz09LMFcC-R1q8d2Zc&usqp=CAU'),
('gezwd40706300','Anabel','Pantoja','23/04/2000','chabelita@gmail.com','123456',0,50,10,'https://i.pinimg.com/236x/e9/57/2a/e9572a70726980ed5445c02e1058760b.jpg'),
('jS3Y6634888','Alba','Roma','23112001','albaroma@gmail.com','123456',0,50,44,'https://i.pinimg.com/236x/56/77/62/5677627c338956d1cb9bbdb7f49ae79e.jpg'),
('qL3E008571063072','Maria','Ubiergo','02112001','meri@gmail.com','123456',0,50,9,'https://i.pinimg.com/236x/e9/57/2a/e9572a70726980ed5445c02e1058760b.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12 12:52:22
