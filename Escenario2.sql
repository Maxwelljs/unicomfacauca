-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 23:46:54
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unicomfacauca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unic_department`
--

CREATE TABLE `unic_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unic_department`
--

INSERT INTO `unic_department` (`id`, `department_name`, `department_city`) VALUES
(1, 'cauca', 'popayan'),
(2, 'bogota', 'fusa'),
(3, 'valle del cauca', 'cali'),
(4, 'nariño', 'pasto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unic_educationlevel`
--

CREATE TABLE `unic_educationlevel` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unic_educationlevel`
--

INSERT INTO `unic_educationlevel` (`id`, `description`) VALUES
(1, 'primaria'),
(2, 'secundaria'),
(3, 'pregrado'),
(4, 'posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unic_employe`
--

CREATE TABLE `unic_employe` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `salary` double NOT NULL,
  `educationlevel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unic_employe`
--

INSERT INTO `unic_employe` (`id`, `firstname`, `lastname`, `department_id`, `salary`, `educationlevel_id`) VALUES
(1, 'jaider', 'mazabuel', 2, 400000, 3),
(2, 'luna', 'muñoz', 1, 500000, 2),
(3, 'gabriela', 'juspian', 1, 600000, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `unic_department`
--
ALTER TABLE `unic_department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unic_educationlevel`
--
ALTER TABLE `unic_educationlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unic_employe`
--
ALTER TABLE `unic_employe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_employee` (`department_id`),
  ADD KEY `educationlevel_employee` (`educationlevel_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `unic_employe`
--
ALTER TABLE `unic_employe`
  ADD CONSTRAINT `department_employee` FOREIGN KEY (`department_id`) REFERENCES `unic_department` (`id`),
  ADD CONSTRAINT `educationlevel_employee` FOREIGN KEY (`educationlevel_id`) REFERENCES `unic_educationlevel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
