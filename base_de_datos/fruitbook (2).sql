CREATE DATABASE  IF NOT EXISTS `fruitbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `fruitbook`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: fruitbook
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idposts` int(11) NOT NULL,
  `idusuarios` int(11) NOT NULL,
  `texto_comentario` varchar(150) NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idposts_idx` (`idposts`),
  KEY `idusuarios_idx` (`idusuarios`),
  CONSTRAINT `idposts` FOREIGN KEY (`idposts`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idusuarios` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,2,'a todos les llega perita, tranquila','2020-11-12 18:59:27','2020-11-12 18:59:27'),(2,1,3,'Gracias por invitar....','2020-11-12 18:59:27','2020-11-12 18:59:27'),(3,1,4,'BUENARDOO','2020-11-12 18:59:27','2020-11-12 18:59:27'),(4,1,5,'el pueblo unido jamas sera vencido','2020-11-12 18:59:27','2020-11-12 18:59:27'),(5,2,2,'EPICARDOO','2020-11-12 18:59:27','2020-11-12 18:59:27'),(6,2,3,'esa facha se las robo','2020-11-12 18:59:27','2020-11-12 18:59:27'),(7,2,4,'xD xD xD','2020-11-12 18:59:27','2020-11-12 18:59:27'),(8,2,5,'el pueblo unido jamas sera vencido','2020-11-12 18:59:27','2020-11-12 18:59:27'),(9,3,2,'a todos les llega perita, tranquila','2020-11-12 18:59:27','2020-11-12 18:59:27'),(10,3,3,'EPICARDOO','2020-11-12 18:59:27','2020-11-12 18:59:27');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `url_imagen` varchar(500) NOT NULL,
  `texto_post` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'https://media.giphy.com/media/CfxNnwHaOayFW/giphy.gif','Mira mi giff','2020-11-12 14:04:30','2020-11-12 18:38:37'),(2,2,'https://media.giphy.com/media/l3q2Fa0XM2SEciHaU/giphy.gif','Aca con el mas banana','2020-11-12 14:04:30','2020-11-12 18:38:37'),(3,3,'https://media.giphy.com/media/7SWMPHg462IbxdFzrd/giphy.gif','BUENARDO','2020-11-12 14:04:30','2020-11-12 18:38:37'),(4,4,'https://media.giphy.com/media/XV0oUIBrHfwic/giphy.gif ','Con esa palta te hago alto guacamole','2020-11-12 14:04:30','2020-11-12 18:38:37'),(5,5,'https://media.giphy.com/media/wGJGVTbZSvAL6/giphy.gif ','soy geniaal','2020-11-12 14:04:30','2020-11-12 18:38:37'),(6,1,'https://media.giphy.com/media/MeCtzyYPiW8n7rWklM/giphy.gif','hola','2020-11-12 21:53:14','2020-11-12 21:53:14'),(7,1,'https://media.giphy.com/media/l3vRdf2ry9gs46Gu4/giphy.gif','buenas','2020-11-12 22:12:55','2020-11-12 22:12:55');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL,
  `foto_perfil` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Manzana_Roja','manzanita@gmail.com','$2a$10$LiU81AH/8jZ.Xgf8k6JpvOlMXvk3fJyfwPyt8GXP.b.gWDbxiB9Om','2017-06-29','1','Ort','https://media.giphy.com/media/L62bJobKh6EiA/giphy.gif',NULL,'2020-11-11 16:42:20'),(2,'laPeraQueTeEspera;)','perita@gmail.com','$2a$10$RjMdV3XGeSB7UfaI1RCjjePNhVnIc/qpHyevDgZSguRgnYQn89ySG','2020-10-08','2','Simba','https://media.giphy.com/media/ln2604BTkCXuRX7Xnp/giphy.gif',NULL,NULL),(3,'bananita_Aa ','bananita@gmail.com','$2a$10$XTxcTbdzWxGfVrFBD2kJMO2DU7SffpBSwMBXhOsqrW8XEO6TX19Xm','2020-10-09','3','This is us','https://media.giphy.com/media/3o7TKWKHCUtXZXvj9K/giphy.gif',NULL,NULL),(4,'frufru ','frutilla@gmail.com','$2a$10$PJZvv0nxOQQIkwij3E8tk.lfCZVcxNenfoHj3ZWMWr1R2GXl8aNHO','2011-06-29','3','Rick and Morty','https://media.giphy.com/media/1K55aTdYIYsa4/giphy.gif',NULL,NULL),(5,'SandiacOOL','sandia@gmail.com','$2a$10$zAzmPvm62Ox8LYd.ZA4fFOfJHhltT9kGnt8BIRqn/ronwVNhm.Oby','2010-02-11','1','NEA','https://media.giphy.com/media/xT1XGTaTeovBeLdrRS/giphy.gif',NULL,NULL),(7,'NaranjaPicante','naranjita@gmail.com','$2a$10$/Tbn8mJs21g/GGNj3pXzTewjiCSl8k7dogaCuWK4M/.ZoDeD1aal2','2011-06-05','3','This is us','https://media.giphy.com/media/l0IpXwyCXikRK9Yl2/giphy.gif',NULL,NULL),(8,'Morita','morita@gmail.com','$2a$10$nN4qlCA1eON2xYuGGkGfpOTRaBMqvhZJ40Ix2HH16mrBIhU.I.rYS','2013-02-09','2','Lupe','https://media.giphy.com/media/xk5wubM71Rs7ZNXcjX/giphy.gif',NULL,NULL),(9,'kiwi','kiwi@gmail.com','$2a$10$6cp/gedwoAenFptXEjFwcu1qu49dpGp08kNWU1DKF8ndNvDG1END2','2020-08-14','2','Rosa','https://media.giphy.com/media/10nqF5fv6hssk8/giphy.gif','2020-11-11 18:37:25','2020-11-11 18:37:25');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-12 19:43:39
