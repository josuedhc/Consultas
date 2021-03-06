-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2021 a las 01:17:10
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siaf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprometido`
--

CREATE TABLE `comprometido` (
  `idCompromiso` int(11) NOT NULL,
  `MesAfectado` varchar(15) NOT NULL,
  `Operacion` varchar(20) NOT NULL,
  `Folio` varchar(30) NOT NULL,
  `Version` varchar(10) NOT NULL,
  `Genera_poliza` varchar(10) NOT NULL,
  `ClavePresupuestal` varchar(80) NOT NULL,
  `Total` decimal(20,2) NOT NULL,
  `FechaAuto` date NOT NULL,
  `Estatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla se lo comprometido';

--
-- Volcado de datos para la tabla `comprometido`
--

INSERT INTO `comprometido` (`idCompromiso`, `MesAfectado`, `Operacion`, `Folio`, `Version`, `Genera_poliza`, `ClavePresupuestal`, `Total`, `FechaAuto`, `Estatus`) VALUES
(29, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '16-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '4507277.60', '2021-01-31', 'AUTORIZADO'),
(30, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '16-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '166345.20', '2021-01-31', 'AUTORIZADO'),
(31, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '9495452.40', '2021-01-31', 'AUTORIZADO'),
(32, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '17-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '359553.60', '2021-01-31', 'AUTORIZADO'),
(33, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '10457706.00', '2021-01-31', 'AUTORIZADO'),
(34, 'ENERO', 'COMPROMETIDO BSO', '2021-05-069-0515-03-0039', '1', 'VERDADERO', '18-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '1033.20', '2021-01-31', 'AUTORIZADO'),
(35, 'ENERO', 'COMPROMETIDO BSO', '2021-20-127-0515-03-0003', '1', 'VERDADERO', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '1344.95', '2021-01-31', 'AUTORIZADO'),
(36, 'ENERO', 'COMPROMETIDO BSO', '2021-20-127-0515-03-0004', '1', 'VERDADERO', '20-02-002-7100-1-3-1-M001-00-002-1-7-1-902-001-3151-1-24-114-000000', '537.98', '2021-01-31', 'AUTORIZADO'),
(37, 'ENERO', 'COMPROMETIDO BSO', '2021-20-127-0515-03-0017', '1', 'VERDADERO', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '2262.12', '2021-01-31', 'AUTORIZADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devengo`
--

CREATE TABLE `devengo` (
  `idDevengo` int(11) NOT NULL,
  `MesAfectado` varchar(15) NOT NULL,
  `Operacion` varchar(15) NOT NULL,
  `Folio` varchar(30) NOT NULL,
  `FolioCompro` varchar(30) NOT NULL,
  `TipoTramite` varchar(35) NOT NULL,
  `ClavePresupuestal` varchar(80) NOT NULL,
  `ImporteTotal` decimal(20,2) NOT NULL,
  `ImporteIva` decimal(20,4) NOT NULL,
  `5alMillar` decimal(20,4) NOT NULL,
  `ImporteAnticipo` decimal(20,4) NOT NULL,
  `ImporteAntiAnte` decimal(20,2) NOT NULL,
  `ImporteISR` decimal(20,4) NOT NULL,
  `ImportePago` decimal(20,4) NOT NULL,
  `FechaAutorizado` date NOT NULL,
  `Estatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de documento de devengo';

--
-- Volcado de datos para la tabla `devengo`
--

INSERT INTO `devengo` (`idDevengo`, `MesAfectado`, `Operacion`, `Folio`, `FolioCompro`, `TipoTramite`, `ClavePresupuestal`, `ImporteTotal`, `ImporteIva`, `5alMillar`, `ImporteAnticipo`, `ImporteAntiAnte`, `ImporteISR`, `ImportePago`, `FechaAutorizado`, `Estatus`) VALUES
(1, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0020', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '34727.00', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '34727.0000', '2021-06-15', 'AUTORIZADO'),
(2, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0004', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '16-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '166345.20', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '166345.2000', '2021-06-04', 'AUTORIZADO'),
(3, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0005', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3004-1-7-1-E013-01-013-1-5-1-115-002-2216-1-18-169-000000', '1247416.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1247416.8000', '2021-06-04', 'AUTORIZADO'),
(4, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0013', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '1106270.20', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1106270.2000', '2021-06-04', 'AUTORIZADO'),
(5, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0013', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '1033.20', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1033.2000', '2021-06-04', 'AUTORIZADO'),
(6, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0006', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '2298525.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '2298525.6000', '2021-06-04', 'AUTORIZADO'),
(7, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0019', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3006-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '192467.20', '26547.2000', '0.0000', '0.0000', '0.00', '0.0000', '192467.2000', '2021-06-15', 'AUTORIZADO'),
(8, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0010', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '22960.00', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '22960.0000', '2021-06-04', 'AUTORIZADO'),
(9, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0014', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '49249.20', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '49249.2000', '2021-06-15', 'AUTORIZADO'),
(10, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0012', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3005-1-7-1-E013-01-013-1-5-1-115-002-2216-1-11-045-000000', '92069.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '92069.6000', '2021-06-04', 'AUTORIZADO'),
(11, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0011', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3006-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '198128.00', '27328.0000', '0.0000', '0.0000', '0.00', '0.0000', '198128.0000', '2021-06-04', 'AUTORIZADO'),
(12, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0012', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3004-1-7-1-E013-01-013-1-5-1-115-002-2216-1-18-169-000000', '413968.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '413968.8000', '2021-06-04', 'AUTORIZADO'),
(13, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0018', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3004-1-7-1-E013-01-013-1-5-1-115-002-2216-1-18-169-000000', '1282143.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1282143.8000', '2021-06-15', 'AUTORIZADO'),
(14, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0014', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-2-131-002-2216-1-24-114-000000', '359553.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '359553.6000', '2021-06-15', 'AUTORIZADO'),
(15, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0004', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '16-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '4507277.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '4507277.6000', '2021-06-04', 'AUTORIZADO'),
(16, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0009', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '38572.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '38572.8000', '2021-06-04', 'AUTORIZADO'),
(17, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0023', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3005-1-7-1-E013-01-013-1-5-1-115-002-2216-1-11-045-000000', '525439.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '525439.6000', '2021-06-18', 'AUTORIZADO'),
(18, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0024', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '8750687.40', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '8750687.4000', '2021-06-18', 'AUTORIZADO'),
(19, 'JUNIO', 'SOLICITUD BSO', '2021-05-069-0523-06-0022', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '25370.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '25370.8000', '2021-06-18', 'AUTORIZADO'),
(20, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0019', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '38745.00', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '38745.0000', '2021-05-19', 'AUTORIZADO'),
(21, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0018', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '209449.60', '28889.6000', '0.0000', '0.0000', '0.00', '0.0000', '209449.6000', '2021-05-20', 'AUTORIZADO'),
(22, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0020', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '41672.40', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '41672.4000', '2021-05-20', 'AUTORIZADO'),
(23, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0017', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '1294083.00', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1294083.0000', '2021-05-20', 'AUTORIZADO'),
(24, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0071', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '403062.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '403062.8000', '2021-04-29', 'AUTORIZADO'),
(25, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0072', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '6569372.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '6569372.6000', '2021-04-30', 'AUTORIZADO'),
(26, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0022', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '520445.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '520445.8000', '2021-05-20', 'AUTORIZADO'),
(27, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0073', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '31684.80', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '31684.8000', '2021-04-30', 'AUTORIZADO'),
(28, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0008', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '21-05-069-3006-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '147180.80', '20300.8000', '634.4000', '0.0000', '0.00', '0.0000', '146546.4000', '2021-04-08', 'AUTORIZADO'),
(29, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0069', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '48445.60', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '48445.6000', '2021-04-29', 'AUTORIZADO'),
(30, 'ABRIL', 'SOLICITUD BSO', '2021-05-069-0523-04-0067', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '18-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '1004844.40', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '1004844.4000', '2021-04-29', 'AUTORIZADO'),
(31, 'MAYO', 'SOLICITUD BSO', '2021-05-069-0523-05-0021', '2021-05-069-0515-03-0039', '02 RECEPCION PARCIAL O ESTIMACIÓN', '17-05-069-3003-1-7-1-E013-01-013-2-5-1-131-002-2216-1-24-114-000000', '8635887.40', '0.0000', '0.0000', '0.0000', '0.00', '0.0000', '8635887.4000', '2021-05-19', 'AUTORIZADO'),
(32, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0008', '2021-20-127-0515-03-0003', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(33, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0006', '2021-20-127-0515-03-0003', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(34, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0009', '2021-20-127-0515-03-0003', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(35, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0007', '2021-20-127-0515-03-0003', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-12', 'AUTORIZADO'),
(36, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0010', '2021-20-127-0515-03-0003', '03 RECEPCION O ESTIMACIÓN FINAL', '20-02-002-1003-1-3-1-E001-00-004-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(37, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0011', '2021-20-127-0515-03-0004', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-02-002-7100-1-3-1-M001-00-002-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(38, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-03-0012', '2021-20-127-0515-03-0004', '03 RECEPCION O ESTIMACIÓN FINAL', '20-02-002-7100-1-3-1-M001-00-002-1-7-1-902-001-3151-1-24-114-000000', '268.99', '37.1000', '0.0000', '0.0000', '0.00', '0.0000', '268.9900', '2021-03-16', 'AUTORIZADO'),
(39, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-04-0014', '2021-20-127-0515-03-0017', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', '78.0000', '0.0000', '0.0000', '0.00', '0.0000', '565.5300', '2021-03-23', 'AUTORIZADO'),
(40, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-04-0018', '2021-20-127-0515-03-0017', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', '78.0000', '0.0000', '0.0000', '0.00', '0.0000', '565.5300', '2021-03-23', 'AUTORIZADO'),
(41, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-04-0017', '2021-20-127-0515-03-0017', '02 RECEPCION PARCIAL O ESTIMACIÓN', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', '78.0000', '0.0000', '0.0000', '0.00', '0.0000', '565.5300', '2021-03-23', 'AUTORIZADO'),
(42, 'MARZO', 'SOLICITUD BSO', '2021-20-127-0523-04-0019', '2021-20-127-0515-03-0017', '03 RECEPCION O ESTIMACIÓN FINAL', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', '78.0000', '0.0000', '0.0000', '0.00', '0.0000', '565.5300', '2021-03-23', 'AUTORIZADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechacompromiso`
--

CREATE TABLE `fechacompromiso` (
  `idFechaCom` int(11) NOT NULL,
  `idCom` int(11) NOT NULL,
  `ENERO` decimal(20,2) NOT NULL,
  `FEBRERO` decimal(20,2) NOT NULL,
  `MARZO` decimal(20,2) NOT NULL,
  `ABRIL` decimal(20,2) NOT NULL,
  `MAYO` decimal(20,2) NOT NULL,
  `JUNIO` decimal(20,2) NOT NULL,
  `JULIO` decimal(20,2) NOT NULL,
  `AGOSTO` decimal(20,2) NOT NULL,
  `SEPTIEMBRE` decimal(20,2) NOT NULL,
  `OCTUBRE` decimal(20,2) NOT NULL,
  `NOVIEMBRE` decimal(20,2) NOT NULL,
  `DICIEMBRE` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de fechas de compromiso';

--
-- Volcado de datos para la tabla `fechacompromiso`
--

INSERT INTO `fechacompromiso` (`idFechaCom`, `idCom`, `ENERO`, `FEBRERO`, `MARZO`, `ABRIL`, `MAYO`, `JUNIO`, `JULIO`, `AGOSTO`, `SEPTIEMBRE`, `OCTUBRE`, `NOVIEMBRE`, `DICIEMBRE`) VALUES
(10, 29, '0.00', '2253638.80', '2253638.80', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(11, 30, '0.00', '83172.60', '83172.60', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(12, 31, '0.00', '4747726.20', '4747726.20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(13, 32, '0.00', '179776.80', '179776.80', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(14, 33, '0.00', '5228853.00', '5228853.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(15, 34, '0.00', '516.60', '516.60', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(16, 35, '1344.95', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(17, 36, '537.98', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(18, 37, '2262.12', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagado`
--

CREATE TABLE `pagado` (
  `idPagado` int(11) NOT NULL,
  `CLC` varchar(30) NOT NULL,
  `ProgramaPago` varchar(5) NOT NULL,
  `FechaPagado` date NOT NULL,
  `ClavePresupuestal` varchar(80) NOT NULL,
  `Importe` decimal(20,2) NOT NULL,
  `Estatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de pagos aplicados se une con la tabla devengo';

--
-- Volcado de datos para la tabla `pagado`
--

INSERT INTO `pagado` (`idPagado`, `CLC`, `ProgramaPago`, `FechaPagado`, `ClavePresupuestal`, `Importe`, `Estatus`) VALUES
(65814, '2021-05-069-0523-06-0006', '001', '2021-06-07', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '2298525.60', 'PAGADO'),
(65815, '2021-05-069-0523-06-0009', '001', '2021-06-07', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '38572.80', 'PAGADO'),
(65816, '2021-05-069-0523-06-0010', '001', '2021-06-07', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '22960.00', 'PAGADO'),
(65817, '2021-05-069-0523-06-0020', '001', '2021-06-17', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '34727.00', 'PAGADO'),
(65818, '2021-05-069-0523-06-0022', '001', '2021-06-23', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '25370.80', 'PAGADO'),
(65819, '2021-05-069-0523-06-0024', '001', '2021-06-23', '21-05-069-3003-1-7-1-E013-01-013-1-5-1-115-002-2216-1-24-114-000000', '8750687.40', 'PAGADO'),
(65820, '2021-20-127-0523-03-0011', '001', '2021-03-19', '20-02-002-7100-1-3-1-M001-00-002-1-7-1-902-001-3151-1-24-114-000000', '268.99', 'PAGADO'),
(65821, '2021-20-127-0523-03-0012', '001', '2021-03-19', '20-02-002-7100-1-3-1-M001-00-002-1-7-1-902-001-3151-1-24-114-000000', '268.99', 'PAGADO'),
(65822, '2021-20-127-0523-04-0014', '001', '2021-03-23', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', 'PAGADO'),
(65823, '2021-20-127-0523-04-0017', '001', '2021-03-23', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', 'PAGADO'),
(65824, '2021-20-127-0523-04-0018', '001', '2021-03-23', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', 'PAGADO'),
(65825, '2021-20-127-0523-04-0019', '001', '2021-03-23', '20-04-004-A001-1-8-1-M001-00-032-1-7-1-902-003-3151-1-24-114-000000', '565.53', 'PAGADO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprometido`
--
ALTER TABLE `comprometido`
  ADD PRIMARY KEY (`idCompromiso`) USING BTREE;

--
-- Indices de la tabla `devengo`
--
ALTER TABLE `devengo`
  ADD PRIMARY KEY (`idDevengo`);

--
-- Indices de la tabla `fechacompromiso`
--
ALTER TABLE `fechacompromiso`
  ADD PRIMARY KEY (`idFechaCom`);

--
-- Indices de la tabla `pagado`
--
ALTER TABLE `pagado`
  ADD PRIMARY KEY (`idPagado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprometido`
--
ALTER TABLE `comprometido`
  MODIFY `idCompromiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `devengo`
--
ALTER TABLE `devengo`
  MODIFY `idDevengo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `fechacompromiso`
--
ALTER TABLE `fechacompromiso`
  MODIFY `idFechaCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pagado`
--
ALTER TABLE `pagado`
  MODIFY `idPagado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65826;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
