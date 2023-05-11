-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 17:54:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_Producto` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Unidad` varchar(45) NOT NULL,
  `Existencia` varchar(45) NOT NULL,
  `Costo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_Producto`, `Nombre`, `Precio`, `Unidad`, `Existencia`, `Costo`) VALUES
(1, 'Coca Cola', '18', '355ml', '80', '2880'),
(2, 'Arizona', '20', '660ml', '80', '3200'),
(3, 'FuzeTea', '20', '600ml', '20', '800'),
(4, 'Brownies', '17', '1 pieza', '40', '1360'),
(5, 'Gomitas', '15', '100gr', '25', '600'),
(6, 'Tamborcitos', '1', '4.5gr', '50', '100'),
(7, 'Pizza', '20', 'Caja', '20', '1980'),
(8, 'Powerade', '22', '955ml', '15', '270'),
(9, 'Onigiri', '35', '1 pieza', '50', '2000'),
(10, 'PicaFresa', '1', '1 pieza', '40', '80'),
(11, 'Mazapan', '10', '1 pieza', '', '200'),
(12, 'Burritos', '20', '1 pieza', '50', '600'),
(13, 'Torta de Bistec', '35', '1 pieza', '30', '510'),
(14, 'Hotdogs', '15', '1 pieza', '', '1'),
(15, 'Cacahuates', '13', '1 pieza', '30', '390'),
(16, 'Troll', '18', '1 pieza', '', '180'),
(17, 'Agua Natural', '12', '1 pieza', '', '240'),
(18, 'Agua de Limon', '18', '1 pieza', '', '180'),
(19, 'Taquitos', '10', '1 pieza', '50', '400'),
(20, 'Molletes', '25', '1 pieza', '20', '180');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
