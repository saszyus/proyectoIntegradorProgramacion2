CREATE DATABASE  IF NOT EXISTS `fruitbook` /*!40100 DEFAULT CHARACTER SET utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,2,'no te enojes manzana','2020-11-13 19:14:23','2020-11-12 18:59:27'),(2,1,3,'no le des bola al helado','2020-11-13 19:14:23','2020-11-12 18:59:27'),(3,1,4,'jajajajaj','2020-11-13 19:14:23','2020-11-12 18:59:27'),(6,2,3,'estas bien?','2020-11-13 19:14:23','2020-11-12 18:59:27'),(7,2,4,'necesitas ayuda?','2020-11-13 19:14:23','2020-11-12 18:59:27'),(8,2,5,'Mejorate!','2020-11-13 19:14:23','2020-11-12 18:59:27'),(9,3,2,'que lindo gatito','2020-11-13 19:14:23','2020-11-12 18:59:27'),(10,3,3,'jajajaj gracias','2020-11-13 19:14:23','2020-11-12 18:59:27'),(11,3,1,'wooow','2020-11-13 19:14:23','2020-11-13 22:01:35'),(12,4,1,'buena frase','2020-11-13 19:14:23','2020-11-13 22:01:35'),(13,4,2,'me gusto, muy sabia','2020-11-13 19:14:23','2020-11-13 22:01:35'),(14,4,3,'alta frase','2020-11-13 19:14:23','2020-11-13 22:01:35'),(15,5,1,'jajaj las tortugiuitas','2020-11-13 19:14:23','2020-11-13 22:01:35'),(16,5,2,'muy tiernas','2020-11-13 19:14:23','2020-11-13 22:01:35'),(17,5,3,'mandales saludos!','2020-11-13 19:14:23','2020-11-13 22:01:35'),(18,5,4,'deberian estar en un refugio','2020-11-13 19:14:23','2020-11-13 22:01:35'),(19,1,1,'gracias','2020-11-13 22:22:03','2020-11-13 22:22:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'https://media.giphy.com/media/CfxNnwHaOayFW/giphy.gif','aca con heladito','2020-11-12 14:04:30','2020-11-15 20:40:09'),(2,2,'https://media.giphy.com/media/l3q2Fa0XM2SEciHaU/giphy.gif','me mordieron!','2020-11-12 14:04:30','2020-11-13 19:11:39'),(3,3,'https://media.giphy.com/media/7SWMPHg462IbxdFzrd/giphy.gif','con mi gatitoo','2020-11-12 14:04:30','2020-11-13 19:11:39'),(4,4,'https://media.giphy.com/media/XV0oUIBrHfwic/giphy.gif','Frase del dia','2020-11-12 14:04:30','2020-11-15 21:08:52'),(5,5,'https://media.giphy.com/media/wGJGVTbZSvAL6/giphy.gif ','Me estan comiendo!','2020-11-12 14:04:30','2020-11-13 19:11:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Manzana_Rojita','manzanita@gmail.com','$2a$10$LiU81AH/8jZ.Xgf8k6JpvOlMXvk3fJyfwPyt8GXP.b.gWDbxiB9Om','2017-06-29','1','Ort','https://media.giphy.com/media/L62bJobKh6EiA/giphy.gif',NULL,'2020-11-16 15:12:16'),(2,'laPeraQueTeEspera;)','perita@gmail.com','$2a$10$RjMdV3XGeSB7UfaI1RCjjePNhVnIc/qpHyevDgZSguRgnYQn89ySG','2020-10-08','2','Simba','https://media.giphy.com/media/ln2604BTkCXuRX7Xnp/giphy.gif',NULL,NULL),(3,'bananita_Aa ','bananita@gmail.com','$2a$10$XTxcTbdzWxGfVrFBD2kJMO2DU7SffpBSwMBXhOsqrW8XEO6TX19Xm','2020-10-09','3','This is us','https://media.giphy.com/media/3o7TKWKHCUtXZXvj9K/giphy.gif',NULL,NULL),(4,'frufru ','frutilla@gmail.com','$2a$10$PJZvv0nxOQQIkwij3E8tk.lfCZVcxNenfoHj3ZWMWr1R2GXl8aNHO','2011-06-29','3','Rick and Morty','https://media.giphy.com/media/1K55aTdYIYsa4/giphy.gif',NULL,NULL),(5,'SandiacOOL','sandia@gmail.com','$2a$10$zAzmPvm62Ox8LYd.ZA4fFOfJHhltT9kGnt8BIRqn/ronwVNhm.Oby','2010-02-11','1','NEA','https://media.giphy.com/media/xT1XGTaTeovBeLdrRS/giphy.gif',NULL,NULL),(7,'NaranjaPicante','naranjita@gmail.com','$2a$10$/Tbn8mJs21g/GGNj3pXzTewjiCSl8k7dogaCuWK4M/.ZoDeD1aal2','2011-06-05','3','This is us','https://media.giphy.com/media/l0IpXwyCXikRK9Yl2/giphy.gif',NULL,NULL),(8,'Morita','morita@gmail.com','$2a$10$nN4qlCA1eON2xYuGGkGfpOTRaBMqvhZJ40Ix2HH16mrBIhU.I.rYS','2013-02-09','2','Lupe','https://media.giphy.com/media/xk5wubM71Rs7ZNXcjX/giphy.gif',NULL,NULL),(9,'kiwi','kiwi@gmail.com','$2a$10$6cp/gedwoAenFptXEjFwcu1qu49dpGp08kNWU1DKF8ndNvDG1END2','2020-08-14','2','Rosa','https://media.giphy.com/media/10nqF5fv6hssk8/giphy.gif','2020-11-11 18:37:25','2020-11-11 18:37:25'),(10,'guacamole','guaca@hotmail.com','$2a$10$IwBtm.T9lmau9LbZFPd31eurRTgJHaXmLSytWDP0sU5Z0TpBPSKZm','2020-11-13','2','ASAWO','https://media.giphy.com/media/kf8083ZWj0GDS/giphy.gif','2020-11-13 22:23:24','2020-11-15 20:28:25'),(11,'mandarina1','mandarina@gmail.com','$2a$10$tEwnu11nimzyHUeewcWD3uAfmiE/pEyI0f3F9DnUDPWGIyYgQI6dC','2020-06-11','3','The office','https://media.giphy.com/media/fxbEa9dQK7B5vrm2by/giphy.gif','2020-11-15 19:02:48','2020-11-15 19:02:48'),(12,'cereza','cereza@gmail.com','$2a$10$v9tbc2tYPpT6flsDp/FEsOidZ8iSwJ9c.kj1QYW4bi3YTEkD0XwaW','2020-11-06','1','ort','https://media.giphy.com/media/10nqF5fv6hssk8/giphy.gif','2020-11-16 14:51:39','2020-11-16 15:21:12');
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

-- Dump completed on 2020-11-16 12:26:54
