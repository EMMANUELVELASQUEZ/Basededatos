-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2024 a las 00:34:51
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
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `CLAVEDEPTO` char(3) NOT NULL,
  `NOMDEPTO` varchar(36) NOT NULL,
  `CLAVEJEFE` char(6) DEFAULT NULL,
  `CLAVEDEPSUP` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`CLAVEDEPTO`, `NOMDEPTO`, `CLAVEJEFE`, `CLAVEDEPSUP`) VALUES
('A00', 'DIVISION DE SERVICIOS EN TI', '000010', 'A00'),
('B01', 'PLANIFICACION', '000020', 'A00'),
('C01', 'CENTRO DE INFORMACION ', '000030', 'A00'),
('D01', 'CENTRO DE DESARROLLO', NULL, 'A00'),
('D11', 'PRODUCCION DE SISTEMAS', '000060', 'D01'),
('D21', 'ADMINISTRACION DE SISTEMAS', '000070', 'D01'),
('E01', 'SERVICIOS DE APOYO', '000050', 'A00'),
('E11', 'OPERACIONES', '000090', 'E01'),
('E21', 'SOFTWARE DE APOYO', '000100', 'E01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `MATRICULA` char(6) NOT NULL COMMENT 'Clave del empleado',
  `NOMBRE` varchar(12) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `NUMDEPTO` char(3) NOT NULL COMMENT 'Clave de departamento',
  `EXTENSION` char(4) DEFAULT NULL,
  `FECHAING` datetime DEFAULT NULL,
  `PUESTO` char(12) DEFAULT NULL,
  `NIVELEST` smallint(6) DEFAULT NULL,
  `GENERO` char(1) DEFAULT NULL,
  `FECHANAC` datetime DEFAULT NULL,
  `SALARIO` decimal(9,2) DEFAULT NULL,
  `COMISION` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`MATRICULA`, `NOMBRE`, `APELLIDO`, `NUMDEPTO`, `EXTENSION`, `FECHAING`, `PUESTO`, `NIVELEST`, `GENERO`, `FECHANAC`, `SALARIO`, `COMISION`) VALUES
('100', 'ANA', 'HUERTA', 'B01', '3476', '2008-09-18 00:00:00', 'GERENTE', 18, 'F', '1980-04-01 00:00:00', 41250.00, 3300.00),
('101', 'EMILIO', 'ENRIQUEZ', 'C01', '4738', '2001-04-15 00:00:00', 'GERENTE', 20, 'M', '1974-08-12 00:00:00', 38250.00, 3060.00),
('102', 'ISABEL', 'KALIXTO', 'E01', '6789', '2010-11-13 00:00:00', 'GERENTE', 16, 'F', '1979-12-03 00:00:00', 40175.00, 3214.00),
('103', 'ARMANDO', 'MIRANDA', 'D11', '6423', '2000-05-24 00:00:00', 'GERENTE', 16, 'M', '1974-01-01 00:00:00', 32250.00, 2580.00),
('104', 'OMAR', 'PEREZ', 'D21', '7831', '2005-10-09 00:00:00', 'GERENTE', 16, 'M', '1979-05-12 00:00:00', 36170.00, 2893.00),
('105', 'EDUARDO', 'SANCHEZ', 'E11', '5498', '1993-07-11 00:00:00', 'GERENTE', 16, 'M', '1966-06-19 00:00:00', 29750.00, 2380.00),
('106', 'EMMANUEL', 'CONTRERAS', 'D01', '972', '1990-12-31 00:00:00', 'GERENTE', 14, 'M', '1960-09-14 00:00:00', 26150.00, 2092.00),
('107', 'ELENA', 'MARTINEZ', 'D11', '4510', '2003-08-12 00:00:00', 'DISEÑADOR', 16, 'F', '1970-03-23 00:00:00', 27740.00, 2217.00),
('108', 'JASMIN', 'BONILLA', 'E11', '8997', '2009-03-22 00:00:00', 'DEPENDIENTE', 17, 'F', '1976-03-12 00:00:00', 17750.00, 1420.00),
('109', 'MARIA', 'MARRUJO', 'A00', '3978', '1990-01-13 00:00:00', 'GERENTE', 18, 'F', '1963-12-20 00:00:00', 52750.00, 4220.00),
('110', 'ISAIAS', 'OCHOA', 'A00', '2167', '2007-09-07 00:00:00', 'VENDEDOR', 14, 'M', '1980-07-17 00:00:00', 22180.00, 1774.00),
('111', 'DANIEL', 'FERNANDEZ', 'D01', '9990', '2009-08-21 00:00:00', 'TECNICO', 16, 'M', '1980-11-09 00:00:00', 25370.00, 2030.00),
('112', 'MARIA', 'PEREZ', 'D11', '3782', '2004-04-24 00:00:00', 'DISEÑADOR', 17, 'F', '1979-01-17 00:00:00', 18270.00, 1462.00),
('113', 'ANGELICA', 'BASURTO', 'D11', '672', '2006-09-12 00:00:00', 'DISEÑADOR', 18, 'F', '1978-06-05 00:00:00', 24680.00, 1974.00),
('114', 'GABRIEL', 'MARTINEZ', 'C01', '4578', '2010-01-22 00:00:00', 'ANALISTA', 16, 'M', '1980-10-07 00:00:00', 28760.00, 2301.00),
('115', 'ESTEBAN', 'JIMENEZ', 'D21', '2094', '2000-08-22 00:00:00', 'VENDEDOR', 14, 'M', '1960-06-11 00:00:00', 46500.00, 3720.00),
('116', 'IVONNE', 'HERNANDEZ', 'D01', '2103', '2003-09-13 00:00:00', 'TECNICO', 14, 'F', '1969-11-09 00:00:00', 19180.00, 1534.00),
('117', 'MARCOS', 'HERRERA', 'D11', '2890', '2005-07-23 00:00:00', 'DISEÑADOR', 16, 'M', '1980-04-30 00:00:00', 20450.00, 1636.00),
('118', 'VIANEY', 'HUESCA', 'D11', '1682', '1999-10-21 00:00:00', 'DISEÑADOR', 17, 'F', '1970-11-11 00:00:00', 29840.00, 2387.00),
('119', 'SUSANA', 'RIVERA', 'C01', '1793', '1997-05-16 00:00:00', 'ANALISTA', 18, 'M', '1971-06-17 00:00:00', 28420.00, 2274.00),
('120', 'REBECA', 'RUIZ', 'D21', '3780', '2002-10-15 00:00:00', 'VENDEDOR', 17, 'M', '1975-07-13 00:00:00', 17250.00, 1380.00),
('121', 'PAOLA', 'PALMA', 'D01', '5698', '2006-02-24 00:00:00', 'TECNICO', 16, 'F', '1977-11-23 00:00:00', 23840.00, 1907.00),
('122', 'LUIS', 'MENDEZ', 'D11', '2896', '1993-07-25 00:00:00', 'DISEÑADOR', 16, 'M', '1976-04-21 00:00:00', 21340.00, 1707.00),
('123', 'SERGIO', 'LARA', 'E11', '4502', '1998-12-21 00:00:00', 'DEPENDIENTE', 12, 'M', '1970-04-14 00:00:00', 15340.00, 1227.00),
('124', 'IKAR', 'NANNI', 'C01', '1795', '2000-11-15 00:00:00', 'ANALISTA', 17, 'M', '1970-12-24 00:00:00', 27380.00, 2190.00),
('125', 'LILIA', 'NAVA', 'D21', '961', '2010-09-08 00:00:00', 'VENDEDOR', 15, 'F', '1980-03-18 00:00:00', 29250.00, 2340.00),
('126', 'TANIA', 'TERRONES', 'D01', '5765', '2007-09-22 00:00:00', 'TECNICO', 16, 'F', '1981-12-05 00:00:00', 19950.00, 1596.00),
('127', 'IGNACIO', 'BRAVO', 'D11', '4501', '2006-11-17 00:00:00', 'DISEÑADOR', 16, 'M', '1976-08-25 00:00:00', 22250.00, 1780.00),
('128', 'GUADALUPE', 'ENRIQUEZ', 'E11', '2095', '2009-03-19 00:00:00', 'DEPENDIENTE', 14, 'F', '1980-10-12 00:00:00', 26250.00, 2100.00),
('129', 'ERIK', 'MOLINA', 'C01', '1798', '2001-08-13 00:00:00', 'ANALISTA', 17, 'M', '1975-07-26 00:00:00', 28439.00, 1805.00),
('130', 'JOSE', 'VIDAÑA', 'E11', '3332', '2006-08-14 00:00:00', 'DEPENDIENTE', 12, 'M', '1980-04-15 00:00:00', 15900.00, 1272.00),
('131', 'ANA', 'MORAGA', 'D01', '5897', '2004-10-22 00:00:00', 'TECNICO', 17, 'F', '1978-10-23 00:00:00', 21250.00, 1986.00),
('132', 'MARIA', 'TORRES', 'D11', '942', '2010-07-22 00:00:00', 'DISEÑADOR', 17, 'F', '1976-06-17 00:00:00', 25280.00, 2022.00),
('133', 'CARLOS', 'SOLANO', 'E11', '2098', '2009-08-05 00:00:00', 'DEPENDIENTE', 13, 'M', '1977-11-03 00:00:00', 16755.00, 1675.00),
('134', 'MATEO', 'VAZQUEZ', 'D21', '9001', '2005-09-18 00:00:00', 'VENDEDOR', 15, 'M', '1973-08-13 00:00:00', 23800.00, 1904.00),
('135', 'RUBEN', 'REYES', 'D21', '8953', '2003-12-27 00:00:00', 'VENDEDOR', 16, 'M', '1965-08-06 00:00:00', 29250.00, 2340.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `NUMPROY` char(6) NOT NULL,
  `NOMPROY` varchar(45) NOT NULL,
  `CLAVEDEPTO` char(3) NOT NULL,
  `HORASHOMBRE` decimal(5,2) DEFAULT NULL,
  `FECHAINI` datetime DEFAULT NULL,
  `FECHAFIN` datetime DEFAULT NULL,
  `NUMPROYSUP` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`NUMPROY`, `NOMPROY`, `CLAVEDEPTO`, `HORASHOMBRE`, `FECHAINI`, `FECHAFIN`, `NUMPROYSUP`) VALUES
('AD3100', 'SERVICIOS DE ADMINISTRACION', 'D01', 6.50, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL),
('AD3110', 'GENERAL Y SISTEMAS', 'D21', 6.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110'),
('AD3111', 'PROGRAMACION DE NOMINA', 'D21', 2.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110'),
('AD3112', 'PROGRAMACION DE RECURSOS HUMANOS', 'D21', 1.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110'),
('AD3113', 'PROGRAMACION DE CONTABILIDAD', 'D21', 2.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110'),
('IF1000', 'SERVICIOS DE CONSULTA', 'C01', 2.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL),
('IF2000', 'ENTRENAMIENTO DEL USUARIO', 'C01', 1.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL),
('MA2100', 'AUTOMATIZACION DE LINEA DE SOLDADURA', 'D01', 12.00, '1982-01-01 00:00:00', '1982-02-01 00:00:00', NULL),
('MA2110', 'PROGRAMACION DE LINEA DE SOLDADURA', 'D11', 9.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'MA2100'),
('MA2111', 'DISEÑO DE PROGRAMAS DE LINEA DE SOLDADURA', 'D11', 2.00, '1982-01-01 00:00:00', '1982-12-01 00:00:00', 'MA2110'),
('MA2112', 'DISEÑO DE ROBOT DE LINEA DE SOLDADURA', 'D11', 3.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'MA2110'),
('MA2113', 'PROGRAMACJON DE CONTROL DE PROD. DE LIN. SOLD', 'D11', 3.00, '1982-02-15 00:00:00', '1982-12-01 00:00:00', 'MA2110'),
('OP1000', 'APOYO DE OPERACIONES', 'E01', 6.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL),
('OP1010', 'OPERACION', 'E11', 5.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP1010'),
('OP2000', 'SERVICIOS DE SISTEMAS EN GENERAL', 'E01', 5.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL),
('OP2010', 'APOYO DE SISTEMAS', 'E21', 4.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2000'),
('OP2011', 'SOPORTE DE SISTEMAS XYZ', 'E21', 1.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010'),
('OP2012', 'APOYO DE APLICACIONES', 'E21', 1.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010'),
('OP2013', 'APOYO A BD/CD', 'E21', 1.00, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010'),
('PL2100', 'PLANEACION DE LINEA DE SOLDADURA', 'B01', 1.00, '1982-01-01 00:00:00', '1982-09-15 00:00:00', 'MA2100');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`CLAVEDEPTO`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`NUMPROY`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
