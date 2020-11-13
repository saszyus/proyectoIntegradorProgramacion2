-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 13, 2020 at 11:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fruitbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `idposts` int(11) NOT NULL,
  `idusuarios` int(11) NOT NULL,
  `texto_comentario` varchar(150) NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `idposts`, `idusuarios`, `texto_comentario`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 'no te enojes manzana', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(2, 1, 3, 'no le des bola al helado', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(3, 1, 4, 'jajajajaj', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(6, 2, 3, 'estas bien?', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(7, 2, 4, 'necesitas ayuda?', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(8, 2, 5, 'Mejorate!', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(9, 3, 2, 'que lindo gatito', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(10, 3, 3, 'jajajaj gracias', '2020-11-13 19:14:23', '2020-11-12 18:59:27'),
(11, 3, 1, 'wooow', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(12, 4, 1, 'buena frase', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(13, 4, 2, 'me gusto, muy sabia', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(14, 4, 3, 'alta frase', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(15, 5, 1, 'jajaj las tortugiuitas', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(16, 5, 2, 'muy tiernas', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(17, 5, 3, 'mandales saludos!', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(18, 5, 4, 'deberian estar en un refugio', '2020-11-13 19:14:23', '2020-11-13 22:01:35'),
(19, 1, 1, 'gracias', '2020-11-13 22:22:03', '2020-11-13 22:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `url_imagen` varchar(500) NOT NULL,
  `texto_post` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `idusuario`, `url_imagen`, `texto_post`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://media.giphy.com/media/CfxNnwHaOayFW/giphy.gif', 'heladooo', '2020-11-12 14:04:30', '2020-11-13 19:11:39'),
(2, 2, 'https://media.giphy.com/media/l3q2Fa0XM2SEciHaU/giphy.gif', 'me mordieron!', '2020-11-12 14:04:30', '2020-11-13 19:11:39'),
(3, 3, 'https://media.giphy.com/media/7SWMPHg462IbxdFzrd/giphy.gif', 'con mi gatitoo', '2020-11-12 14:04:30', '2020-11-13 19:11:39'),
(4, 4, 'https://media.giphy.com/media/XV0oUIBrHfwic/giphy.gif ', 'Frase del dia', '2020-11-12 14:04:30', '2020-11-13 19:11:39'),
(5, 5, 'https://media.giphy.com/media/wGJGVTbZSvAL6/giphy.gif ', 'Me estan comiendo!', '2020-11-12 14:04:30', '2020-11-13 19:11:38'),
(9, 10, 'https://okdiario.com/img/2018/04/12/como-arreglar-fotos-borrosas.jpg', 'prueba', '2020-11-13 22:23:55', '2020-11-13 22:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL,
  `foto_perfil` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `email`, `contraseña`, `fecha_nacimiento`, `pregunta`, `respuesta`, `foto_perfil`, `created_at`, `updated_at`) VALUES
(1, 'Manzana_Roja', 'manzanita@gmail.com', '$2a$10$LiU81AH/8jZ.Xgf8k6JpvOlMXvk3fJyfwPyt8GXP.b.gWDbxiB9Om', '2017-06-29', '1', 'Ort', 'https://media.giphy.com/media/L62bJobKh6EiA/giphy.gif', NULL, '2020-11-11 16:42:20'),
(2, 'laPeraQueTeEspera;)', 'perita@gmail.com', '$2a$10$RjMdV3XGeSB7UfaI1RCjjePNhVnIc/qpHyevDgZSguRgnYQn89ySG', '2020-10-08', '2', 'Simba', 'https://media.giphy.com/media/ln2604BTkCXuRX7Xnp/giphy.gif', NULL, NULL),
(3, 'bananita_Aa ', 'bananita@gmail.com', '$2a$10$XTxcTbdzWxGfVrFBD2kJMO2DU7SffpBSwMBXhOsqrW8XEO6TX19Xm', '2020-10-09', '3', 'This is us', 'https://media.giphy.com/media/3o7TKWKHCUtXZXvj9K/giphy.gif', NULL, NULL),
(4, 'frufru ', 'frutilla@gmail.com', '$2a$10$PJZvv0nxOQQIkwij3E8tk.lfCZVcxNenfoHj3ZWMWr1R2GXl8aNHO', '2011-06-29', '3', 'Rick and Morty', 'https://media.giphy.com/media/1K55aTdYIYsa4/giphy.gif', NULL, NULL),
(5, 'SandiacOOL', 'sandia@gmail.com', '$2a$10$zAzmPvm62Ox8LYd.ZA4fFOfJHhltT9kGnt8BIRqn/ronwVNhm.Oby', '2010-02-11', '1', 'NEA', 'https://media.giphy.com/media/xT1XGTaTeovBeLdrRS/giphy.gif', NULL, NULL),
(7, 'NaranjaPicante', 'naranjita@gmail.com', '$2a$10$/Tbn8mJs21g/GGNj3pXzTewjiCSl8k7dogaCuWK4M/.ZoDeD1aal2', '2011-06-05', '3', 'This is us', 'https://media.giphy.com/media/l0IpXwyCXikRK9Yl2/giphy.gif', NULL, NULL),
(8, 'Morita', 'morita@gmail.com', '$2a$10$nN4qlCA1eON2xYuGGkGfpOTRaBMqvhZJ40Ix2HH16mrBIhU.I.rYS', '2013-02-09', '2', 'Lupe', 'https://media.giphy.com/media/xk5wubM71Rs7ZNXcjX/giphy.gif', NULL, NULL),
(9, 'kiwi', 'kiwi@gmail.com', '$2a$10$6cp/gedwoAenFptXEjFwcu1qu49dpGp08kNWU1DKF8ndNvDG1END2', '2020-08-14', '2', 'Rosa', 'https://media.giphy.com/media/10nqF5fv6hssk8/giphy.gif', '2020-11-11 18:37:25', '2020-11-11 18:37:25'),
(10, 'guacamole', 'guaca@hotmail.com', '$2a$10$IwBtm.T9lmau9LbZFPd31eurRTgJHaXmLSytWDP0sU5Z0TpBPSKZm', '2020-11-13', '2', 'ASAWO', 'https://media.giphy.com/media/ln2604BTkCXuRX7Xnp/giphy.gif', '2020-11-13 22:23:24', '2020-11-13 22:23:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idposts_idx` (`idposts`),
  ADD KEY `idusuarios_idx` (`idusuarios`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario_idx` (`idusuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `idposts` FOREIGN KEY (`idposts`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idusuarios` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
