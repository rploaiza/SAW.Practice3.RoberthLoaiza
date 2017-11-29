-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2014 a las 21:14:25
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `user` varchar(30) COLLATE latin1_bin NOT NULL,
  `password` varchar(32) COLLATE latin1_bin NOT NULL,
  `tarjeta` varchar(50) COLLATE latin1_bin NOT NULL,
  `IV` varchar(16) COLLATE latin1_bin NOT NULL,
  `Nombre` varchar(30) COLLATE latin1_bin NOT NULL,
  `Apellidos` varchar(50) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`user`, `password`, `tarjeta`, `IV`, `Nombre`, `Apellidos`) VALUES
('admin', '204d2d5fdb4f3debd702fbc93cdd1ea1', 'MTIzNCA1Njc4IDkwMTIgMzQ1Ng==', '', '', ''),
('alberto', 'ae90e9a414cba62ac06dc8724fcd9601', ' U0upaDz4eTeuvv5eLnAN2J1MgdJ/f6H4qgfRS7GKjtI=', 'abcd12344321dcba', 'J. Alberto', 'de Frutos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `imagen` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `talla`, `imagen`) VALUES
(1, 'pantalones', 45, 42, 'img1'),
(2, 'camiseta', 20, 42, 'img2'),
(3, 'chaqueta', 125, 6, 'img3'),
(4, 'zapatos', 60, 40, 'img4'),
(5, 'sombrero', 28, 55, 'img5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
