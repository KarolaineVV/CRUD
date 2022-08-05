-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2022 a las 23:02:15
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
-- Base de datos: `sena_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices`
--

CREATE TABLE `aprendices` (
  `Apre_id` int(10) NOT NULL,
  `Apre_Tipoid` char(3) DEFAULT NULL,
  `Apre_Numid` char(20) DEFAULT NULL,
  `Apre_Nombres` char(60) DEFAULT NULL,
  `Apre_Apellidos` char(60) DEFAULT NULL,
  `Apre_Direccion` char(80) DEFAULT NULL,
  `Apre_Telefono` char(20) DEFAULT NULL,
  `Apre_ficha` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aprendices`
--

INSERT INTO `aprendices` (`Apre_id`, `Apre_Tipoid`, `Apre_Numid`, `Apre_Nombres`, `Apre_Apellidos`, `Apre_Direccion`, `Apre_Telefono`, `Apre_ficha`) VALUES
(6, 'CC', '1003379201', 'adalberto', 'vizcaino torres', 'cll3-cs225', '3023480799', 2235094);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `ficha_numero` int(10) NOT NULL,
  `ficha_progra` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fichas`
--

INSERT INTO `fichas` (`ficha_numero`, `ficha_progra`) VALUES
(2235094, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `Progra_id` int(10) NOT NULL,
  `Progra_Nombre` char(20) DEFAULT NULL,
  `Progra_tipo` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`Progra_id`, `Progra_Nombre`, `Progra_tipo`) VALUES
(1, 'ADSI', 2),
(2, 'ADSI', 2),
(4, 'AGRO', 1),
(5, 'atl', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposprograma`
--

CREATE TABLE `tiposprograma` (
  `tiposp_id` int(10) NOT NULL,
  `tipos` enum('Especializacion','tecnico','tecnologo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiposprograma`
--

INSERT INTO `tiposprograma` (`tiposp_id`, `tipos`) VALUES
(1, 'tecnico'),
(2, 'tecnologo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usua_id` int(10) NOT NULL,
  `usua_nomuser` char(50) DEFAULT NULL,
  `usua_contra` char(20) DEFAULT NULL,
  `usua_tipo` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usua_id`, `usua_nomuser`, `usua_contra`, `usua_tipo`) VALUES
(1003379201, 'adalberto', '12345', 'ADMINISTRADOR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD PRIMARY KEY (`Apre_id`),
  ADD KEY `FK_FICHAS` (`Apre_ficha`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`ficha_numero`),
  ADD KEY `FK_PROGRAMA` (`ficha_progra`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`Progra_id`),
  ADD KEY `FK_TIPOSPROGRAMA` (`Progra_tipo`);

--
-- Indices de la tabla `tiposprograma`
--
ALTER TABLE `tiposprograma`
  ADD PRIMARY KEY (`tiposp_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usua_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  MODIFY `Apre_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `Progra_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD CONSTRAINT `FK_FICHAS` FOREIGN KEY (`Apre_ficha`) REFERENCES `fichas` (`ficha_numero`);

--
-- Filtros para la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD CONSTRAINT `FK_PROGRAMA` FOREIGN KEY (`ficha_progra`) REFERENCES `programa` (`Progra_id`);

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `FK_TIPOSPROGRAMA` FOREIGN KEY (`Progra_tipo`) REFERENCES `tiposprograma` (`tiposp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
