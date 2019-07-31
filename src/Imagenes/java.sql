-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2019 a las 23:04:16
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `java`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `apellido` varchar(30) NOT NULL,
  `cedula` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `compraAnual` int(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `Provincia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`apellido`, `cedula`, `direccion`, `telefono`, `compraAnual`, `nombre`, `Provincia`) VALUES
('Vega', '123-455-96', 'Los Angeles', '66987930', 250, 'Daniel ', '8'),
('Rodrigiez', '2-222-222', 'Bugaba', '65588742', 300, 'Manuela ', '4'),
('Azakura', '6-665-555', 'Parita', '365-9852', 500, 'Meliodas ', '6'),
('Eart', '7-891-23', 'La Villa', '669854', 150, 'Diana ', '7'),
('Lopez', '6-12-378', 'Las Lajas', '123656', 600, 'Emiko', '4'),
('Concepcion', '9-111-111', 'Las Palmas', '2365455', 600, 'Kimura', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `Departamento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`Departamento`) VALUES
('Contabilidad'),
('Tecnologia'),
('Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Provincia` varchar(20) NOT NULL,
  `Codigo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`Provincia`, `Codigo`) VALUES
('Bocas del Toro', 1),
('Cocle ', 2),
('Colon', 3),
('Chiriqui', 4),
('Darien ', 5),
('Herrera', 6),
('Los Santos ', 7),
('Panama', 8),
('Veraguas', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `departamento` varchar(20) DEFAULT NULL,
  `ventamensual` int(5) NOT NULL,
  `ventaanual` int(8) NOT NULL,
  `codigo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`nombre`, `apellido`, `cargo`, `departamento`, `ventamensual`, `ventaanual`, `codigo`) VALUES
('Christian ', 'Gomez', 'Gerente IT', '2', 0, 0, 7),
('Marie ', 'Gaitan', 'Vendedora', '3', 800, 9600, 8),
('Mateo', 'Lopez', 'Vendedor', '3', 500, 6000, 9),
('Hakim', 'Moreno', 'Vendedor', '3', 1500, 18000, 10),
('Oyuki', 'Aguilar', 'Gerente ', '1', 0, 0, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
