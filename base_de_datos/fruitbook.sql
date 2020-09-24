-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 10:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruitbook`
--
CREATE DATABASE IF NOT EXISTS `fruitbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fruitbook`;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL,
  `idposts` int(11) NOT NULL,
  `idusuarios` int(11) NOT NULL,
  `texto_comentario` varchar(150) NOT NULL,
  `fecha_comentario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`idcomentarios`, `idposts`, `idusuarios`, `texto_comentario`, `fecha_comentario`) VALUES
(1, 1, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(2, 1, 3, 'Gracias por invitar....', '2020-10-03'),
(3, 1, 4, 'BUENARDOO', '2020-10-03'),
(4, 1, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(5, 2, 2, 'EPICARDOO', '2020-10-03'),
(6, 2, 3, 'esa facha se las robo', '2020-10-03'),
(7, 2, 4, 'xD xD xD', '2020-10-03'),
(8, 2, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(9, 3, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(10, 3, 3, 'EPICARDOO', '2020-10-03'),
(11, 3, 4, 'BUENARDOO', '2020-10-03'),
(12, 3, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(13, 4, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(14, 4, 3, 'BUENARDOO', '2020-10-03'),
(15, 4, 4, 'EPICARDOO', '2020-10-03'),
(16, 4, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(17, 5, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(18, 5, 3, 'EPICARDOO', '2020-10-03'),
(19, 5, 4, 'BUENARDOO', '2020-10-03'),
(20, 5, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(21, 6, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(22, 6, 3, 'EPICARDOO', '2020-10-03'),
(23, 6, 4, 'Lindass!', '2020-10-03'),
(24, 6, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(25, 7, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(26, 7, 3, 'BUENARDOO', '2020-10-03'),
(27, 7, 4, 'EPICARDOO', '2020-10-03'),
(28, 7, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(29, 8, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(30, 8, 3, 'BUENARDOO', '2020-10-03'),
(31, 8, 4, 'EPICARDOO', '2020-10-03'),
(32, 8, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(33, 9, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(34, 9, 3, 'EPICARDOO', '2020-10-03'),
(35, 9, 4, 'BUENARDOO', '2020-10-03'),
(36, 9, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(37, 10, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(38, 10, 3, 'EPICARDOO', '2020-10-03'),
(39, 10, 4, 'BUENARDOO', '2020-10-03'),
(40, 10, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(41, 11, 1, 'muy buena!', '2020-10-03'),
(42, 11, 3, 'Lindass!', '2020-10-03'),
(43, 11, 4, 'EPICARDOO', '2020-10-03'),
(44, 11, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(45, 12, 1, 'muy buena!', '2020-10-03'),
(46, 12, 3, 'BUENARDOO', '2020-10-03'),
(47, 12, 4, 'EPICARDOO', '2020-10-03'),
(48, 12, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(49, 13, 1, 'muy buena!', '2020-10-03'),
(50, 13, 3, 'BUENARDOO', '2020-10-03'),
(51, 13, 4, 'EPICARDOO', '2020-10-03'),
(52, 13, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(53, 14, 1, 'muy buena!', '2020-10-03'),
(54, 14, 3, 'BUENARDOO', '2020-10-03'),
(55, 14, 4, 'EPICARDOO', '2020-10-03'),
(56, 14, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(57, 15, 1, 'muy buena!', '2020-10-03'),
(58, 15, 3, 'BUENARDOO', '2020-10-03'),
(59, 15, 4, 'EPICARDOO', '2020-10-03'),
(60, 15, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(61, 16, 1, 'muy buena!', '2020-10-03'),
(62, 16, 3, 'BUENARDOO', '2020-10-03'),
(63, 16, 4, 'EPICARDOO', '2020-10-03'),
(64, 16, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(65, 17, 1, 'muy buena!', '2020-10-03'),
(66, 17, 3, 'EPICARDOO', '2020-10-03'),
(67, 17, 4, 'Lindass!', '2020-10-03'),
(68, 17, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(69, 18, 1, 'muy buena!', '2020-10-03'),
(70, 18, 3, 'BUENARDOO', '2020-10-03'),
(71, 18, 4, 'EPICARDOO', '2020-10-03'),
(72, 18, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(73, 19, 1, 'BUENARDOO', '2020-10-03'),
(74, 19, 3, 'BUENARDOO', '2020-10-03'),
(75, 19, 4, 'EPICARDOO', '2020-10-03'),
(76, 19, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(77, 20, 1, 'muy buena!', '2020-10-03'),
(78, 20, 3, 'BUENARDOO', '2020-10-03'),
(79, 20, 4, 'EPICARDOO', '2020-10-03'),
(80, 20, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(81, 21, 1, 'muy buena!', '2020-10-03'),
(82, 21, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(83, 21, 4, 'BUENARDOO', '2020-10-03'),
(84, 21, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(85, 22, 1, 'muy buena!', '2020-10-03'),
(86, 22, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(87, 22, 4, 'Lindass!', '2020-10-03'),
(88, 22, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(89, 23, 1, 'muy buena!', '2020-10-03'),
(90, 23, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(91, 23, 4, 'EPICARDOO', '2020-10-03'),
(92, 23, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(93, 24, 1, 'muy buena!', '2020-10-03'),
(94, 24, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(95, 24, 4, 'EPICARDOO', '2020-10-03'),
(96, 24, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(97, 25, 1, 'muy buena!', '2020-10-03'),
(98, 25, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(99, 25, 4, 'EPICARDOO', '2020-10-03'),
(100, 25, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(101, 26, 1, 'muy buena!', '2020-10-03'),
(102, 26, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(103, 26, 4, 'EPICARDOO', '2020-10-03'),
(104, 26, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(105, 27, 1, 'muy buena!', '2020-10-03'),
(106, 27, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(107, 27, 4, 'EPICARDOO', '2020-10-03'),
(108, 27, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(109, 28, 1, 'muy buena!', '2020-10-03'),
(110, 28, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(111, 28, 4, 'EPICARDOO', '2020-10-03'),
(112, 28, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(113, 29, 1, 'muy buena!', '2020-10-03'),
(114, 29, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(115, 29, 4, 'EPICARDOO', '2020-10-03'),
(116, 29, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(117, 30, 1, 'muy buena!', '2020-10-03'),
(118, 30, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(119, 30, 4, 'EPICARDOO', '2020-10-03'),
(120, 30, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(121, 31, 1, 'muy buena!', '2020-10-03'),
(122, 31, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(123, 31, 3, 'EPICARDOO', '2020-10-03'),
(124, 31, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(125, 32, 1, 'muy buena!', '2020-10-03'),
(126, 32, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(127, 32, 3, 'EPICARDOO', '2020-10-03'),
(128, 32, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(129, 33, 1, 'muy buena!', '2020-10-03'),
(130, 33, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(131, 33, 3, 'EPICARDOO', '2020-10-03'),
(132, 33, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(133, 34, 1, 'muy buena!', '2020-10-03'),
(134, 34, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(135, 34, 3, 'EPICARDOO', '2020-10-03'),
(136, 34, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(137, 35, 1, 'EPICARDOO', '2020-10-03'),
(138, 35, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(139, 35, 3, 'EPICARDOO', '2020-10-03'),
(140, 35, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(141, 36, 1, 'muy buena!', '2020-10-03'),
(142, 36, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(143, 36, 3, 'EPICARDOO', '2020-10-03'),
(144, 36, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(145, 37, 1, 'muy buena!', '2020-10-03'),
(146, 37, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(147, 37, 3, 'EPICARDOO', '2020-10-03'),
(148, 37, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(149, 38, 1, 'muy buena!', '2020-10-03'),
(150, 38, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(151, 38, 3, 'EPICARDOO', '2020-10-03'),
(152, 38, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(153, 39, 1, 'muy buena!', '2020-10-03'),
(154, 39, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(155, 39, 3, 'EPICARDOO', '2020-10-03'),
(156, 39, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(157, 40, 1, 'muy buena!', '2020-10-03'),
(158, 40, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(159, 40, 3, 'EPICARDOO', '2020-10-03'),
(160, 40, 5, 'el pueblo unido jamas sera vencido', '2020-10-03'),
(161, 41, 1, 'muy buena!', '2020-10-03'),
(162, 41, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(163, 41, 3, 'EPICARDOO', '2020-10-03'),
(164, 41, 4, 'Lindass!', '2020-10-03'),
(165, 42, 1, 'muy buena!', '2020-10-03'),
(166, 42, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(167, 42, 3, 'EPICARDOO', '2020-10-03'),
(168, 42, 4, 'Lindass!', '2020-10-03'),
(169, 43, 1, 'muy buena!', '2020-10-03'),
(170, 43, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(171, 43, 3, 'a todos les llega perita, tranquila', '2020-10-03'),
(172, 43, 4, 'EPICARDOO', '2020-10-03'),
(173, 44, 1, 'muy buena!', '2020-10-03'),
(174, 44, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(175, 44, 3, 'EPICARDOO', '2020-10-03'),
(176, 44, 4, 'EPICARDOO', '2020-10-03'),
(177, 45, 1, 'muy buena!', '2020-10-03'),
(178, 45, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(179, 45, 3, 'EPICARDOO', '2020-10-03'),
(180, 45, 4, 'EPICARDOO', '2020-10-03'),
(181, 46, 1, 'muy buena!', '2020-10-03'),
(182, 46, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(183, 46, 3, 'EPICARDOO', '2020-10-03'),
(184, 46, 4, 'EPICARDOO', '2020-10-03'),
(185, 47, 1, 'muy buena!', '2020-10-03'),
(186, 47, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(187, 47, 3, 'EPICARDOO', '2020-10-03'),
(188, 47, 4, 'EPICARDOO', '2020-10-03'),
(189, 48, 1, 'muy buena!', '2020-10-03'),
(190, 48, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(191, 48, 3, 'EPICARDOO', '2020-10-03'),
(192, 48, 4, 'EPICARDOO', '2020-10-03'),
(193, 49, 1, 'muy buena!', '2020-10-03'),
(194, 49, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(195, 49, 3, 'EPICARDOO', '2020-10-03'),
(196, 49, 4, 'EPICARDOO', '2020-10-03'),
(197, 50, 1, 'muy buena!', '2020-10-03'),
(198, 50, 2, 'a todos les llega perita, tranquila', '2020-10-03'),
(199, 50, 3, 'EPICARDOO', '2020-10-03'),
(200, 50, 4, 'EPICARDOO', '2020-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `idposts` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `url_imagen` varchar(45) NOT NULL,
  `texto_post` varchar(300) DEFAULT NULL,
  `texto_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idposts`, `idusuario`, `url_imagen`, `texto_post`, `texto_creacion`) VALUES
(1, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'Mira mi giff', '2020-10-03'),
(2, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'Aca con el mas banana', '2020-10-03'),
(3, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'BUENARDO', '2020-10-03'),
(4, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(5, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'soy geniaal', '2020-10-03'),
(6, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'BUENARDO', '2020-10-03'),
(7, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'soy geniaal', '2020-10-03'),
(8, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(9, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'soy geniaal', '2020-10-03'),
(10, 1, '\"https://media.giphy.com/media/ysSCIY215u80w/', 'soy geniaal', '2020-10-03'),
(11, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Lindass!', '2020-10-03'),
(12, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Lindass!', '2020-10-03'),
(13, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Lindass!', '2020-10-03'),
(14, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Lindass!', '2020-10-03'),
(15, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'A todos les llega perita,tranquila', '2020-10-03'),
(16, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'A todos les llega perita,tranquila', '2020-10-03'),
(17, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'A todos les llega perita,tranquila', '2020-10-03'),
(18, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'A todos les llega perita,tranquila', '2020-10-03'),
(19, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'A todos les llega perita,tranquila', '2020-10-03'),
(20, 2, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(21, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(22, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(23, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(24, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(25, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(26, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(27, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(28, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(29, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(30, 3, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'gracias por invitar....', '2020-10-03'),
(31, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'BUENARDO', '2020-10-03'),
(32, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(33, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Aca con el mas banana', '2020-10-03'),
(34, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(35, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'BUENARDO', '2020-10-03'),
(36, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(37, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(38, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Aca con el mas banana', '2020-10-03'),
(39, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(40, 4, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(41, 5, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'BUENARDO', '2020-10-03'),
(42, 5, '\"https://media.giphy.com/media/l3q2Fa0XM2SEci', 'soy geniaal', '2020-10-03'),
(43, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'Aca con el mas banana', '2020-10-03'),
(44, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'soy geniaal', '2020-10-03'),
(45, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(46, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'Aca con el mas banana', '2020-10-03'),
(47, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'BUENARDO', '2020-10-03'),
(48, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'Con esa palta te hago alto guacamole', '2020-10-03'),
(49, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'Aca con el mas banana', '2020-10-03'),
(50, 5, '\"https://i.pinimg.com/originals/63/64/fb/6364', 'BUENARDO', '2020-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre_usuario` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre_usuario`, `fecha_nacimiento`, `edad`) VALUES
(1, 'Manzana_Roja', '1996-04-11', 24),
(2, 'Naranja_Exprimida98', '1999-06-03', 21),
(3, 'SandiacOOL', '1999-12-20', 20),
(4, 'LaPeraQueTeEspera;)', '1997-05-20', 23),
(5, 'uvaDeVino', '1999-03-06', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentarios`),
  ADD KEY `idposts_idx` (`idposts`),
  ADD KEY `idusuarios_idx` (`idusuarios`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idposts`),
  ADD KEY `idusuario _idx` (`idusuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idcomentarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `idposts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `idposts` FOREIGN KEY (`idposts`) REFERENCES `posts` (`idposts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idusuarios` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `idusuario ` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
