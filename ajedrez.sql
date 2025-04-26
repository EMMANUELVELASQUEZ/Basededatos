-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2024 a las 00:36:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ajedrez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `federaciones`
--

CREATE TABLE `federaciones` (
  `PAIS` int(11) NOT NULL,
  `ID_FEDERACION` varchar(30) DEFAULT NULL,
  `NOM` varchar(30) DEFAULT NULL,
  `TEL` varchar(10) DEFAULT NULL,
  `FECHA_FUND` date DEFAULT NULL,
  `PAIS_SUB` int(11) DEFAULT NULL,
  `ID_FEDERACION_SUB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegan`
--

CREATE TABLE `juegan` (
  `NUM_PARTIDA` int(11) NOT NULL,
  `NUM_FEDERADO` int(11) NOT NULL,
  `COLOR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `NUM_FEDERADO` int(11) NOT NULL,
  `NOM` varchar(30) DEFAULT NULL,
  `APELLIDOS` varchar(20) DEFAULT NULL,
  `DIR_POSTAL` varchar(50) DEFAULT NULL,
  `DIR_ELECTROMICA` varchar(50) DEFAULT NULL,
  `PAIS` int(11) DEFAULT NULL,
  `ID_FEDERACION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `ORDINAL` int(11) NOT NULL,
  `CASILLA_ORIGEN` int(11) DEFAULT NULL,
  `CASILLA_DESTINO` int(11) DEFAULT NULL,
  `NUM_PARTIDA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `NUM_PARTIDAS` int(11) NOT NULL,
  `FECHAINI` date DEFAULT NULL,
  `DURACION` int(11) DEFAULT NULL,
  `ID_TORNEO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `ID_TORNEO` int(11) NOT NULL,
  `NOM` varchar(30) DEFAULT NULL,
  `PERIODICIDAD` varchar(50) DEFAULT NULL,
  `FECHA_CREA` date DEFAULT NULL,
  `FECHAINI` date DEFAULT NULL,
  `CUANTIA` int(11) DEFAULT NULL,
  `GANADOR` varchar(30) DEFAULT NULL,
  `PAIS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `federaciones`
--
ALTER TABLE `federaciones`
  ADD PRIMARY KEY (`PAIS`),
  ADD KEY `federacion_fede` (`ID_FEDERACION_SUB`);

--
-- Indices de la tabla `juegan`
--
ALTER TABLE `juegan`
  ADD PRIMARY KEY (`NUM_PARTIDA`,`NUM_FEDERADO`),
  ADD KEY `FK_JUEGAN_JUGADORES` (`NUM_FEDERADO`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`NUM_FEDERADO`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`ORDINAL`),
  ADD KEY `FK_MOVIMIENTOS_PARTIDAS` (`NUM_PARTIDA`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`NUM_PARTIDAS`),
  ADD KEY `FK_PARTIDAS_TORNEOS` (`ID_TORNEO`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`ID_TORNEO`),
  ADD KEY `FK_TORNEOS_FEDERACIONES` (`PAIS`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `federaciones`
--
ALTER TABLE `federaciones`
  ADD CONSTRAINT `FEDERACIONES_JUGADORES` FOREIGN KEY (`ID_FEDERACION_SUB`) REFERENCES `jugadores` (`NUM_FEDERADO`),
  ADD CONSTRAINT `federacion_fede` FOREIGN KEY (`ID_FEDERACION_SUB`) REFERENCES `federaciones` (`PAIS`);

--
-- Filtros para la tabla `juegan`
--
ALTER TABLE `juegan`
  ADD CONSTRAINT `FK_JUEGAN_JUGADORES` FOREIGN KEY (`NUM_FEDERADO`) REFERENCES `jugadores` (`NUM_FEDERADO`),
  ADD CONSTRAINT `FK_JUEGAN_PARTIDAS` FOREIGN KEY (`NUM_PARTIDA`) REFERENCES `partidas` (`NUM_PARTIDAS`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `FK_MOVIMIENTOS_PARTIDAS` FOREIGN KEY (`NUM_PARTIDA`) REFERENCES `partidas` (`NUM_PARTIDAS`);

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `FK_PARTIDAS_TORNEOS` FOREIGN KEY (`ID_TORNEO`) REFERENCES `torneos` (`ID_TORNEO`);

--
-- Filtros para la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD CONSTRAINT `FK_TORNEOS_FEDERACIONES` FOREIGN KEY (`PAIS`) REFERENCES `federaciones` (`PAIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
