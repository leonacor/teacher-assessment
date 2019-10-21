-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2019 at 03:55 PM
-- Server version: 5.7.27
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domestic_dbTeAsMx`
--

DELIMITER $$
--
-- Procedures
--
$$

--
-- Functions
--
$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `BLUE_CURSOS_V`
--

CREATE TABLE `BLUE_CURSOS_V` (
  `ID_CURSO` int(11) DEFAULT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `MATERIA_ID_NOMBRE` varchar(266) COLLATE utf8_spanish_ci DEFAULT NULL,
  `MATERIA_ID` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `UNIDAD_ACADEMICA` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TIPO` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CARRERA` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PLAN` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Vista de cursos';

-- --------------------------------------------------------

--
-- Table structure for table `BLUE_PROFESORES_V`
--

CREATE TABLE `BLUE_PROFESORES_V` (
  `PROF_ID` int(11) DEFAULT NULL,
  `RFC` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NUM_EXP` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE_COMPLETO` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `A_PATERNO` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `A_MATERNO` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EMAIL` varchar(69) COLLATE utf8_spanish_ci DEFAULT NULL,
  `BASEOCONTRATO` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SEXO` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CATEGORIA` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESC_CAT` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `UBPP_ID` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DEPARTAMENTO` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE_CORTO` varchar(38) COLLATE utf8_spanish_ci DEFAULT NULL,
  `AREA` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ACADEMIA` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TIEMPO` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `BLUEROLE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Vitsta de profesores';

-- --------------------------------------------------------

--
-- Table structure for table `BLUE_REL_CURSO_ALUMNO_V`
--

CREATE TABLE `BLUE_REL_CURSO_ALUMNO_V` (
  `ID_CURSO` int(11) DEFAULT NULL,
  `MATRICULA` varchar(29) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Vista de relacion de curso-alumno\n';

-- --------------------------------------------------------

--
-- Table structure for table `BLUE_REL_CURSO_PROFESOR_V`
--

CREATE TABLE `BLUE_REL_CURSO_PROFESOR_V` (
  `ID_CURSO` int(11) DEFAULT NULL,
  `PROF_ID` int(11) DEFAULT NULL,
  `NOMAT` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Vista de relacion de curso-profesor';

-- --------------------------------------------------------

--
-- Table structure for table `catAs`
--

CREATE TABLE `catAs` (
  `idcatAs` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `yearAcademic` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alive` int(11) DEFAULT NULL,
  `numAdmin` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dateToDo` timestamp NULL DEFAULT NULL,
  `dateDoing` timestamp NULL DEFAULT NULL,
  `dateDone` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de evaluaciones';

--
-- Dumping data for table `catAs`
--

INSERT INTO `catAs` (`idcatAs`, `_status`, `_dateReg`, `num`, `nam`, `yearAcademic`, `alive`, `numAdmin`, `dateToDo`, `dateDoing`, `dateDone`) VALUES
(1, 1, '2019-09-12 20:56:29', 'JLMYSBLDM', 'La evaluacion de profesores', '2019/sep', 11, '1004', '2019-09-12 20:56:29', '2019-09-12 20:56:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catGr`
--

CREATE TABLE `catGr` (
  `idcatGr` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de carreras';

--
-- Dumping data for table `catGr`
--

INSERT INTO `catGr` (`idcatGr`, `_status`, `_dateReg`, `num`, `nam`) VALUES
(1, 1, '2019-08-28 22:06:43', 'BACOGY', 'BACHELOR OF ARTS IN ORGANIZATIONAL PSYCHOLOGY'),
(2, 1, '2019-08-28 22:06:43', 'BACING', 'BACHELOR OF SCIENCE IN AEROSPACE ENGINEERING'),
(3, 1, '2019-08-28 22:06:43', 'BACIAL', 'BACHELOR OF SCIENCE IN ACTUARIAL'),
(4, 1, '2019-08-28 22:06:43', 'BACURE', 'BACHELOR OF SCIENCE IN AGRICULTURE'),
(5, 1, '2019-08-28 22:06:43', 'BACURE', 'BACHELOR OF SCIENCE IN ARCHITECTURE');

-- --------------------------------------------------------

--
-- Table structure for table `catPrSk`
--

CREATE TABLE `catPrSk` (
  `idcatPrSk` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numAdmin` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de competencias';

--
-- Dumping data for table `catPrSk`
--

INSERT INTO `catPrSk` (`idcatPrSk`, `_status`, `_dateReg`, `num`, `nam`, `numAdmin`) VALUES
(1, 1, '2019-08-28 21:36:40', 'PRECLA', 'Preparación de clase', NULL),
(2, 1, '2019-08-28 21:36:40', 'TECAPDI', 'Técnicas y apoyos didácticos', NULL),
(3, 1, '2019-08-28 21:36:40', 'EVAPRE', 'Evaluación de aprendizaje', NULL),
(4, 1, '2019-08-28 21:36:40', 'DOMASI', 'Dominio de asignatura', NULL),
(5, 1, '2019-08-28 21:36:40', 'ORDRES', 'Orden y Respeto', NULL),
(6, 1, '2019-08-28 21:36:40', 'MOTI', 'Motivación', NULL),
(7, 3, '2019-09-08 06:51:12', 'TJMYSBJB2', 'La competencia', '683435878'),
(8, 3, '2019-09-08 06:52:09', 'UXHIGNVBX', 'La competencia', '683435878'),
(9, 3, '2019-09-08 06:56:33', 'ZNMYSBJB2', 'La competencia', '683435878'),
(10, 2, '2019-09-08 18:21:37', 'ZZMYSBJB2', 'La competencia', '683435878'),
(11, 2, '2019-09-09 19:04:59', 'TLMYSBJB2', 'La competencia', '1004'),
(12, 1, '2019-09-12 20:55:08', 'EXHIGNVBX', 'La competencia', '1004');

-- --------------------------------------------------------

--
-- Table structure for table `catSt`
--

CREATE TABLE `catSt` (
  `idcatSt` int(11) NOT NULL,
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de estatus';

--
-- Dumping data for table `catSt`
--

INSERT INTO `catSt` (`idcatSt`, `_dateReg`, `num`, `nam`) VALUES
(1, '2019-08-28 20:53:00', 'ACT', 'ACTIVE'),
(2, '2019-08-28 20:53:00', 'DRO', 'DROP'),
(3, '2019-08-28 20:53:00', 'TES', 'TEST'),
(4, '2019-08-28 20:53:00', 'EST', 'ESTUDIANTE'),
(5, '2019-08-28 20:53:00', 'PRO', 'PROFESOR'),
(6, '2019-08-28 20:53:00', 'ADM', 'ADMIN'),
(7, '2019-08-28 20:53:00', 'EPR', 'EVALUACIÓN EN PROCESO'),
(8, '2019-08-28 20:53:00', 'ECE', 'EVALUACIÓN EN LINEA/CERRADA'),
(9, '2019-08-28 20:53:00', 'EPE', 'EVALUACIÓN PREPARADA'),
(10, '2019-09-06 10:48:52', 'EVACAN', 'EVALUACIÓN CANCELADA'),
(11, '2019-09-09 00:06:59', 'EVAPUB', 'EVALUACIÓN PUBLICADA'),
(12, '2019-09-10 01:24:31', 'EVATER', 'EVALUACIÓN TERMINADA'),
(13, '2019-09-10 01:24:31', 'ESTPEN', 'ESTATUS PENDIENTE');

-- --------------------------------------------------------

--
-- Table structure for table `catSu`
--

CREATE TABLE `catSu` (
  `idcatSu` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcatGr` int(11) DEFAULT NULL,
  `curriculum` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de materias';

--
-- Dumping data for table `catSu`
--

INSERT INTO `catSu` (`idcatSu`, `_status`, `_dateReg`, `num`, `nam`, `idcatGr`, `curriculum`) VALUES
(1, 1, '2019-08-28 22:18:20', 'OCUSMO', 'OCULTISMO', 1, NULL),
(2, 1, '2019-08-28 22:18:20', 'MAGICO', 'MAGIA, ALQUIMIA Y PENSAMIENTO HERMÉTICO', 2, NULL),
(3, 1, '2019-08-28 22:18:20', 'BRURÍA', 'BRUJERÍA', 3, NULL),
(4, 1, '2019-08-28 22:18:20', 'SATGÍA', 'SATANISMO Y DEMONOLOGÍA', 4, NULL),
(5, 1, '2019-08-28 22:18:20', 'SOCLES', 'SOCIEDAD Y CIENCIAS SOCIALES', 5, NULL),
(6, 1, '2019-08-28 22:18:20', 'SOCRAL', 'SOCIEDAD Y CULTURA: GENERAL', 6, NULL),
(7, 1, '2019-08-28 22:18:20', 'ESTLES', 'ESTUDIOS CULTURALES', 1, NULL),
(8, 1, '2019-08-28 22:18:20', 'CULLAR', 'CULTURA POPULAR', 2, NULL),
(9, 1, '2019-08-28 22:18:20', 'CULIAL', 'CULTURA MATERIAL', 3, NULL),
(10, 1, '2019-08-28 22:18:20', 'MODDAD', 'MODA Y SOCIEDAD', 4, NULL),
(11, 1, '2019-08-28 22:18:20', 'COMDAD', 'COMIDA Y SOCIEDAD', 5, NULL),
(12, 1, '2019-08-28 22:18:20', 'HISEAS', 'HISTORIA DE LAS IDEAS', 6, NULL),
(13, 1, '2019-08-28 22:18:20', 'ESTCOS', 'ESTUDIOS MEDIÁTICOS', 1, NULL),
(14, 1, '2019-08-28 22:18:20', 'TELDAD', 'TELEVISIÓN Y SOCIEDAD', 2, NULL),
(15, 1, '2019-08-28 22:18:20', 'PUBDAD', 'PUBLICIDAD Y SOCIEDAD', 3, NULL),
(16, 1, '2019-08-28 22:18:20', 'CUELES', 'CUESTIONES Y PROCESOS SOCIALES', 4, NULL),
(17, 1, '2019-08-28 22:18:20', 'POBLEO', 'POBREZA Y DESEMPLEO', 5, NULL),
(18, 1, '2019-08-28 22:18:20', 'VIVSMO', 'VIVIENDA Y LOS SINTECHO/SINHOGARISMO', 6, NULL),
(19, 1, '2019-08-28 22:18:20', 'IMPRES', 'IMPACTO SOCIAL DE LOS DESASTRES', 1, NULL),
(20, 1, '2019-08-28 22:18:20', 'HAMNAS', 'HAMBRUNAS', 2, NULL),
(21, 1, '2019-08-28 22:18:20', 'REFICO', 'REFUGIADOS Y ASILO POLÍTICO', 3, NULL),
(22, 1, '2019-08-28 22:18:20', 'VIODAD', 'VIOLENCIA EN LA SOCIEDAD', 4, NULL),
(23, 1, '2019-08-28 22:18:20', 'MALTIL', 'MALTRATO INFANTIL', 5, NULL),
(24, 1, '2019-08-28 22:18:20', 'ABUUAL', 'ABUSO Y ACOSO SEXUAL', 6, NULL),
(25, 1, '2019-08-28 22:18:20', 'VIOICA', 'VIOLENCIA DOMÉSTICA', 1, NULL),
(26, 1, '2019-08-28 22:18:20', 'DISLES', 'DISCAPACIDAD: ASPECTOS SOCIALES', 2, NULL),
(27, 1, '2019-08-28 22:18:20', 'ENFLES', 'ENFERMEDAD Y ADICCIÓN: ASPECTOS SOCIALES', 3, NULL),
(28, 1, '2019-08-28 22:18:20', 'DROLES', 'DROGAS Y ABUSO DE SUSTANCIAS TÓXICAS: ASPECTOS SOCIALES', 4, NULL),
(29, 1, '2019-08-28 22:18:20', 'VIHLES', 'VIH/SIDA: ASPECTOS SOCIALES', 5, NULL),
(30, 1, '2019-08-28 22:18:20', 'DISDAD', 'DISCRIMINACIÓN SOCIAL Y DESIGUALDAD', 6, NULL),
(31, 1, '2019-08-28 22:18:20', 'FEMSTA', 'FEMINISMO Y TEORÍA FEMINISTA', 1, NULL),
(32, 1, '2019-08-28 22:18:20', 'CORICA', 'CORRECCIÓN POLÍTICA', 2, NULL),
(33, 1, '2019-08-28 22:18:20', 'MOVIAL', 'MOVILIDAD SOCIAL', 3, NULL),
(34, 1, '2019-08-28 22:18:20', 'MIGIÓN', 'MIGRACIÓN, INMIGRACIÓN Y EMIGRACIÓN', 4, NULL),
(35, 1, '2019-08-28 22:18:20', 'INTIAL', 'INTERACCIÓN SOCIAL', 5, NULL),
(36, 1, '2019-08-28 22:18:20', 'PROGÍA', 'PROSPECTIVA SOCIAL, FUTUROLOGÍA', 6, NULL),
(37, 1, '2019-08-28 22:18:20', 'GLOIÓN', 'GLOBALIZACIÓN', 1, NULL),
(38, 1, '2019-08-28 22:18:20', 'CONSMO', 'CONSUMISMO', 2, NULL),
(39, 1, '2019-08-28 22:18:20', 'CUEICA', 'CUESTIONES DE SEGURIDAD PÚBLICA', 3, NULL),
(40, 1, '2019-08-28 22:18:20', 'CORDAD', 'CORRUPCIÓN EN LA SOCIEDAD', 4, NULL),
(41, 1, '2019-08-28 22:18:20', 'ANIDAD', 'ANIMALES Y SOCIEDAD', 5, NULL),
(42, 1, '2019-08-28 22:18:20', 'CRECOS', 'CREENCIAS POPULARES Y SABERES POLÉMICOS', 6, NULL),
(43, 1, '2019-08-28 22:18:20', 'TEOIÓN', 'TEORÍAS DE LA CONSPIRACIÓN', 1, NULL),
(44, 1, '2019-08-28 22:18:20', 'FOLDAS', 'FOLCLORE, MITOS Y LEYENDAS', 2, NULL),
(45, 1, '2019-08-28 22:18:20', 'INFÑOS', 'INFUNDIOS Y ENGAÑOS', 3, NULL),
(46, 1, '2019-08-28 22:18:20', 'CUECOS', 'CUESTIONES Y DEBATES ÉTICOS', 4, NULL),
(47, 1, '2019-08-28 22:18:20', 'CUEDAD', 'CUESTIONES ÉTICAS: ABORTO Y CONTROL DE LA NATALIDAD', 5, NULL),
(48, 1, '2019-08-28 22:18:20', 'CUERTE', 'CUESTIONES ÉTICAS: PENA DE MUERTE', 6, NULL),
(49, 1, '2019-08-28 22:18:20', 'CUEURA', 'CUESTIONES ÉTICAS: CENSURA', 1, NULL),
(50, 1, '2019-08-28 22:18:20', 'CUERIR', 'CUESTIONES ÉTICAS: EUTANASIA Y EL DERECHO A MORIR', 2, NULL),
(51, 1, '2019-08-28 22:18:20', 'CUECOS', 'CUESTIONES ÉTICAS: DESCUBRIMIENTOS CIENTÍFICOS Y TECNOLÓGICOS', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catUs`
--

CREATE TABLE `catUs` (
  `idcatUs` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile` int(11) DEFAULT NULL,
  `access` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rfc` varchar(13) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='catalogo de usuarios';

--
-- Dumping data for table `catUs`
--

INSERT INTO `catUs` (`idcatUs`, `_status`, `_dateReg`, `num`, `nam`, `profile`, `access`, `rfc`, `email`) VALUES
(1, 1, '2019-08-28 21:57:39', '518373132', 'LEONARDO ACOSTA ORTEGA', 4, '1215', 'GEO704', NULL),
(2, 1, '2019-08-28 21:57:39', '1004', 'Ricardo Acosta López', 6, '1', 'BEZ724', NULL),
(3, 1, '2019-08-28 21:57:39', '2000', 'Estudiante Javier Gomez Gobantez', 4, '1', 'PAR589', NULL),
(4, 1, '2019-08-28 21:57:39', '2001', 'Estudiante Xavier Gomez Ortega', 4, '1', 'CHI621', NULL),
(5, 1, '2019-08-28 21:57:39', '2002', 'Estudiante Susana Castañeda Ortega', 4, '1', 'KYO982', NULL),
(6, 1, '2019-08-28 21:57:39', '2003', 'Estudiante Rebeca Gomez Ortega', 4, '1', 'ANN668', NULL),
(7, 1, '2019-08-28 21:57:39', '827616308', 'TZVETAN ZIELINSKI', 4, NULL, 'TZV606', NULL),
(8, 1, '2019-08-28 21:57:39', '566596604', 'SANIYA KALLOUFI', 4, NULL, 'SAN680', NULL),
(9, 1, '2019-08-28 21:57:39', '421096518', 'SUMANT PEAC', 4, NULL, 'SUM861', NULL),
(10, 1, '2019-08-28 21:57:39', '584542438', 'DUANGKAEW PIVETEAU', 4, NULL, 'DUA920', NULL),
(11, 1, '2019-08-28 21:57:39', '570715402', 'MARY SLUIS', 4, NULL, 'MAR893', NULL),
(12, 1, '2019-08-28 21:57:39', '623520538', 'PATRICIO BRIDGLAND', 4, NULL, 'PAT580', NULL),
(13, 1, '2019-08-28 21:57:39', '664397125', 'EBERHARDT TERKKI', 4, NULL, 'EBE856', NULL),
(14, 1, '2019-08-28 21:57:39', '763214863', 'BERNI GENIN', 4, NULL, 'BER774', NULL),
(15, 1, '2019-08-28 21:57:39', '797725795', 'GUOXIANG NOOTEBOOM', 4, NULL, 'GUO891', NULL),
(16, 1, '2019-08-28 21:57:39', '456448715', 'KAZUHITO CAPPELLETTI', 4, NULL, 'KAZ751', NULL),
(17, 1, '2019-08-28 21:57:39', '518623490', 'CRISTINEL BOULOUCOS', 4, NULL, 'CRI930', NULL),
(18, 1, '2019-08-28 21:57:39', '459299958', 'KAZUHIDE PEHA', 4, NULL, 'KAZ943', NULL),
(19, 1, '2019-08-28 21:57:39', '474430613', 'LILLIAN HADDADI', 4, NULL, 'LIL591', NULL),
(20, 1, '2019-08-28 21:57:39', '621105093', 'MAYUKO WARWICK', 4, NULL, 'MAY926', NULL),
(21, 1, '2019-08-28 21:57:39', '677568654', 'RAMZI ERDE', 4, NULL, 'RAM751', NULL),
(22, 1, '2019-08-28 21:57:39', '522539069', 'SHAHAF FAMILI', 4, NULL, 'SHA870', NULL),
(23, 1, '2019-08-28 21:57:39', '897317181', 'BOJAN MONTEMAYOR', 4, NULL, 'BOJ711', NULL),
(24, 1, '2019-08-28 21:57:39', '485782166', 'SUZETTE PETTEY', 4, NULL, 'SUZ910', NULL),
(25, 1, '2019-08-28 21:57:39', '447826177', 'PRASADRAM HEYERS', 4, NULL, 'PRA575', NULL),
(26, 1, '2019-08-28 21:57:39', '447935299', 'YONGQIAO BERZTISS', 4, NULL, 'YON977', NULL),
(27, 1, '2019-08-28 21:57:39', '457018685', 'DIVIER REISTAD', 4, NULL, 'DIV950', NULL),
(28, 1, '2019-08-28 21:57:39', '896418222', 'DOMENICK TEMPESTI', 4, NULL, 'DOM626', NULL),
(29, 1, '2019-08-28 21:57:39', '398413128', 'OTMAR HERBST', 4, NULL, 'OTM933', NULL),
(30, 1, '2019-08-28 21:57:39', '590944885', 'ELVIS DEMEYER', 4, NULL, 'ELV666', NULL),
(31, 1, '2019-08-28 21:57:39', '600983433', 'KARSTEN JOSLIN', 4, NULL, 'KAR590', NULL),
(32, 1, '2019-08-28 21:57:39', '543960250', 'JEONG REISTAD', 4, NULL, 'JEO665', NULL),
(33, 1, '2019-08-28 21:57:39', '621304165', 'ARIF MERLO', 4, NULL, 'ARI945', NULL),
(34, 1, '2019-08-28 21:57:39', '787302231', 'BADER SWAN', 4, NULL, 'BAD960', NULL),
(35, 1, '2019-08-28 21:57:39', '392161559', 'ALAIN CHAPPELET', 4, NULL, 'ALA863', NULL),
(36, 1, '2019-08-28 21:57:39', '898858390', 'ADAMANTIOS PORTUGALI', 4, NULL, 'ADA777', NULL),
(37, 1, '2019-08-28 21:57:39', '942897661', 'PRADEEP MAKRUCKI', 4, NULL, 'PRA598', NULL),
(38, 1, '2019-08-28 21:57:39', '562298436', 'HUAN LORTZ', 4, NULL, 'HUA680', NULL),
(39, 1, '2019-08-28 21:57:39', '730229629', 'ALEJANDRO BRENDER', 4, NULL, 'ALE942', NULL),
(40, 1, '2019-08-28 21:57:39', '602776404', 'WEIYI MERISTE', 4, NULL, 'WEI834', NULL),
(41, 1, '2019-08-28 21:57:39', '714077328', 'URI LENART', 4, NULL, 'URI821', NULL),
(42, 1, '2019-08-28 21:57:39', '606654159', 'MAGY STAMATIOU', 4, NULL, 'MAG624', NULL),
(43, 1, '2019-08-28 21:57:39', '858757281', 'YISHAY TZVIELI', 4, NULL, 'YIS686', NULL),
(44, 1, '2019-08-28 21:57:39', '757184669', 'MINGSEN CASLEY', 4, NULL, 'MIN589', NULL),
(45, 1, '2019-08-28 21:57:39', '532050975', 'MOSS SHANBHOGUE', 4, NULL, 'MOS847', NULL),
(46, 1, '2019-08-28 21:57:39', '679137581', 'LUCIEN ROSENBAUM', 4, NULL, 'LUC693', NULL),
(47, 1, '2019-08-28 21:57:39', '639123943', 'ZVONKO NYANCHAMA', 4, NULL, 'ZVO661', NULL),
(48, 1, '2019-08-28 21:57:39', '665609868', 'FLORIAN SYROTIUK', 4, NULL, 'FLO814', NULL),
(49, 1, '2019-08-28 21:57:39', '643541274', 'BASIL TRAMER', 4, NULL, 'BAS956', NULL),
(50, 1, '2019-08-28 21:57:39', '607977522', 'YINGHUA DREDGE', 4, NULL, 'YIN748', NULL),
(51, 1, '2019-08-28 21:57:39', '512263142', 'HIDEFUMI CAINE', 4, NULL, 'HID839', NULL),
(52, 1, '2019-08-28 21:57:39', '477675530', 'HEPING NITSCH', 4, NULL, 'HEP908', NULL),
(53, 1, '2019-08-28 21:57:39', '541820452', 'SANJIV ZSCHOCHE', 4, NULL, 'SAN904', NULL),
(54, 1, '2019-08-28 21:57:39', '647366764', 'MAYUMI SCHUELLER', 4, NULL, 'MAY618', NULL),
(55, 1, '2019-08-28 21:57:39', '801725207', 'GEORGY DREDGE', 4, NULL, 'GEO669', NULL),
(56, 1, '2019-08-28 21:57:39', '792190084', 'BRENDON BERNINI', 4, NULL, 'BRE926', NULL),
(57, 1, '2019-08-28 21:57:39', '588608013', 'EBBE CALLAWAY', 4, NULL, 'EBB924', NULL),
(58, 1, '2019-08-28 21:57:39', '825483835', 'BERHARD MCFARLIN', 4, NULL, 'BER664', NULL),
(59, 1, '2019-08-28 21:57:39', '821782855', 'ALEJANDRO MCALPINE', 4, NULL, 'ALE706', NULL),
(60, 1, '2019-08-28 21:57:39', '930697013', 'BREANNDA BILLINGSLEY', 4, NULL, 'BRE891', NULL),
(61, 1, '2019-08-28 21:57:39', '544887311', 'TSE HERBER', 4, NULL, 'TSE816', NULL),
(62, 1, '2019-08-28 21:57:39', '421258072', 'ANOOSH PEYN', 4, NULL, 'ANO887', NULL),
(63, 1, '2019-08-28 21:57:39', '566902961', 'GINO LEONHARDT', 4, NULL, 'GIN641', NULL),
(64, 1, '2019-08-28 21:57:39', '525159900', 'UDI JANSCH', 4, NULL, 'UDI818', NULL),
(65, 1, '2019-08-28 21:57:39', '783503569', 'SATOSI AWDEH', 4, NULL, 'SAT837', NULL),
(66, 1, '2019-08-28 21:57:39', '452065821', 'KWEE SCHUSLER', 4, NULL, 'KWE910', NULL),
(67, 1, '2019-08-28 21:57:39', '605166231', 'CLAUDI STAVENOW', 4, NULL, 'CLA829', NULL),
(68, 1, '2019-08-28 21:57:39', '563509921', 'CHARLENE BRATTKA', 4, NULL, 'CHA838', NULL),
(69, 1, '2019-08-28 21:57:39', '836926914', 'MARGARETA BIERMAN', 4, NULL, 'MAR657', NULL),
(70, 1, '2019-08-28 21:57:39', '671332674', 'REUVEN GARIGLIANO', 4, NULL, 'REU935', NULL),
(71, 1, '2019-08-28 21:57:39', '904334138', 'HISAO LIPNER', 4, NULL, 'HIS814', NULL),
(72, 1, '2019-08-28 21:57:39', '740339527', 'HIRONOBY SIDOU', 4, NULL, 'HIR841', NULL),
(73, 1, '2019-08-28 21:57:39', '768895651', 'SHIR MCCLURG', 4, NULL, 'SHI852', NULL),
(74, 1, '2019-08-28 21:57:39', '404873469', 'MOKHTAR BERNATSKY', 4, NULL, 'MOK806', NULL),
(75, 1, '2019-08-28 21:57:39', '515137147', 'GAO DOLINSKY', 4, NULL, 'GAO948', NULL),
(76, 1, '2019-08-28 21:57:39', '612355935', 'EREZ RITZMANN', 4, NULL, 'ERE906', NULL),
(77, 1, '2019-08-28 21:57:39', '973746351', 'MONA AZUMA', 4, NULL, 'MON855', NULL),
(78, 1, '2019-08-28 21:57:39', '485420791', 'DANEL MONDADORI', 4, NULL, 'DAN932', NULL),
(79, 1, '2019-08-28 21:57:39', '615596690', 'KSHITIJ GILS', 4, NULL, 'KSH888', NULL),
(80, 1, '2019-08-28 21:57:39', '403381556', 'PREMAL BAEK', 4, NULL, 'PRE696', NULL),
(81, 1, '2019-08-28 21:57:39', '346302975', 'ZHONGWEI ROSEN', 4, NULL, 'ZHO577', NULL),
(82, 1, '2019-08-28 21:57:39', '607862897', 'PARVIZ LORTZ', 4, NULL, 'PAR674', NULL),
(83, 1, '2019-08-28 21:57:39', '846526040', 'VISHV ZOCKLER', 4, NULL, 'VIS937', NULL),
(84, 1, '2019-08-28 21:57:39', '665043904', 'TUVAL KALLOUFI', 4, NULL, 'TUV642', NULL),
(85, 1, '2019-08-28 21:57:39', '982858824', 'KENROKU MALABARBA', 4, NULL, 'KEN686', NULL),
(86, 1, '2019-08-28 21:57:39', '576779259', 'SOMNATH FOOTE', 4, NULL, 'SOM888', NULL),
(87, 1, '2019-08-28 21:57:39', '880829863', 'XINGLIN EUGENIO', 4, NULL, 'XIN578', NULL),
(88, 1, '2019-08-28 21:57:39', '554009215', 'JUNGSOON SYRZYCKI', 4, NULL, 'JUN955', NULL),
(89, 1, '2019-08-28 21:57:39', '510627533', 'SUDHARSAN FLASTERSTEIN', 4, NULL, 'SUD920', NULL),
(90, 1, '2019-08-28 21:57:39', '757413894', 'KENDRA HOFTING', 4, NULL, 'KEN750', NULL),
(91, 1, '2019-08-28 21:57:39', '437714713', 'AMABILE GOMATAM', 4, NULL, 'AMA919', NULL),
(92, 1, '2019-08-28 21:57:39', '536041629', 'VALDIODIO NIIZUMA', 4, NULL, 'VAL817', NULL),
(93, 1, '2019-08-28 21:57:39', '398574554', 'SAILAJA DESIKAN', 4, NULL, 'SAI923', NULL),
(94, 1, '2019-08-28 21:57:39', '542173092', 'ARUMUGAM OSSENBRUGGEN', 4, NULL, 'ARU787', NULL),
(95, 1, '2019-08-28 21:57:39', '472250183', 'HILARI MORTON', 4, NULL, 'HIL774', NULL),
(96, 1, '2019-08-28 21:57:39', '521225312', 'JAYSON MANDELL', 4, NULL, 'JAY679', NULL),
(97, 1, '2019-08-28 21:57:39', '932271832', 'REMZI WASCHKOWSKI', 4, NULL, 'REM898', NULL),
(98, 1, '2019-08-28 21:57:39', '800057260', 'SREEKRISHNA SERVIERES', 4, NULL, 'SRE704', NULL),
(99, 1, '2019-08-28 21:57:39', '369666619', 'VALTER SULLINS', 4, NULL, 'VAL856', NULL),
(100, 1, '2019-08-28 21:57:39', '802481769', 'HIRONOBU HARALDSON', 4, NULL, 'HIR835', NULL),
(101, 1, '2019-08-28 21:59:06', '467704195', 'PERLA HEYERS', 5, NULL, 'PER971', NULL),
(102, 1, '2019-08-28 21:59:06', '460154719', 'PARASKEVI LUBY', 5, NULL, 'PAR684', NULL),
(103, 1, '2019-08-28 21:59:06', '775834269', 'AKEMI BIRCH', 5, NULL, 'AKE803', NULL),
(104, 1, '2019-08-28 21:59:06', '490686567', 'XINYU WARWICK', 5, NULL, 'XIN984', NULL),
(105, 1, '2019-08-28 21:59:06', '704736912', 'HIRONOBY PIVETEAU', 5, NULL, 'HIR843', NULL),
(106, 1, '2019-08-28 21:59:06', '647844497', 'EBEN AINGWORTH', 5, NULL, 'EBE812', NULL),
(107, 1, '2019-08-28 21:59:06', '978243200', 'DUNG BACA', 5, NULL, 'DUN634', NULL),
(108, 1, '2019-08-28 21:59:06', '487446510', 'LUNJIN GIVEON', 5, NULL, 'LUN752', NULL),
(109, 1, '2019-08-28 21:59:06', '851125584', 'MARIUSZ PRAMPOLINI', 5, NULL, 'MAR851', NULL),
(110, 1, '2019-08-28 21:59:06', '924233842', 'XUEJIA ULLIAN', 5, NULL, 'XUE700', NULL),
(111, 1, '2019-08-28 21:59:06', '768852098', 'HUGO ROSIS', 5, NULL, 'HUG856', NULL),
(112, 1, '2019-08-28 21:59:06', '532133327', 'YUICHIRO SWICK', 5, NULL, 'YUI851', NULL),
(113, 1, '2019-08-28 21:59:06', '594377366', 'JAEWON SYRZYCKI', 5, NULL, 'JAE923', NULL),
(114, 1, '2019-08-28 21:59:06', '944349933', 'MUNIR DEMEYER', 5, NULL, 'MUN588', NULL),
(115, 1, '2019-08-28 21:59:06', '503373015', 'CHIKARA RISSLAND', 5, NULL, 'CHI931', NULL),
(116, 1, '2019-08-28 21:59:06', '623240626', 'DAYANAND CZAP', 5, NULL, 'DAY657', NULL),
(117, 1, '2019-08-28 21:59:06', '978953198', 'KIYOTOSHI BLOKDIJK', 5, NULL, 'KIY750', NULL),
(118, 1, '2019-08-28 21:59:06', '405351792', 'ZHONGHUI ZYDA', 5, NULL, 'ZHO886', NULL),
(119, 1, '2019-08-28 21:59:06', '832340004', 'DOMENICK PELTASON', 5, NULL, 'DOM876', NULL),
(120, 1, '2019-08-28 21:59:06', '674853115', 'ARMOND FAIRTLOUGH', 5, NULL, 'ARM670', NULL),
(121, 1, '2019-08-28 22:00:03', '1000', 'Admin Javier Gomez Gobantez', 6, '1', 'GUO933', NULL),
(122, 1, '2019-08-28 22:00:03', '1001', 'Admin Xavier Gomez Ortega', 6, '1', 'OHA582', NULL),
(123, 1, '2019-08-28 22:00:03', '1002', 'Admin Susana Castañeda Ortega', 6, '1', 'HIN913', NULL),
(124, 1, '2019-08-28 22:00:03', '1003', 'Admin Rebeca Gomez Ortega', 6, '1', 'GER783', NULL),
(125, 1, '2019-08-28 22:00:03', '365387528', 'SYOZO HILTGEN', 6, NULL, 'SYO645', NULL),
(126, 1, '2019-08-28 22:00:03', '919867407', 'KAYOKO VALTORTA', 6, NULL, 'KAY987', NULL),
(127, 1, '2019-08-28 22:00:03', '397529177', 'SUBIR BAJA', 6, NULL, 'SUB894', NULL),
(128, 1, '2019-08-28 22:00:03', '820031876', 'BABETTE LAMBA', 6, NULL, 'BAB587', NULL),
(129, 1, '2019-08-28 22:00:03', '400491169', 'ARMOND PEIR', 6, NULL, 'ARM625', NULL),
(130, 1, '2019-08-28 22:00:03', '736798581', 'NISHIT CASPERSON', 6, NULL, 'NIS639', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chQuPrSk`
--

CREATE TABLE `chQuPrSk` (
  `idchQuPrSk` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nam` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcatPrSk` int(11) DEFAULT NULL,
  `numAdmin` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='preguntas-competencias';

--
-- Dumping data for table `chQuPrSk`
--

INSERT INTO `chQuPrSk` (`idchQuPrSk`, `_status`, `_dateReg`, `num`, `nam`, `idcatPrSk`, `numAdmin`) VALUES
(1, 1, '2019-08-28 21:49:08', 'ch001', '¿Es puntual al iniciar su clase?', 5, NULL),
(2, 1, '2019-08-28 21:49:08', 'ch002', '¿Utiliza diferentes técnicas para evaluar su aprendizaje?', 3, NULL),
(3, 1, '2019-08-28 21:49:08', 'ch003', '¿Muestra dominio de los conocimientos de la materia?', 4, NULL),
(4, 1, '2019-08-28 21:49:08', 'ch004', '¿Proporcionó el programa al inicio del curso?', 1, NULL),
(5, 1, '2019-08-28 21:49:08', 'ch005', '¿Impulsa el trabajo en equipo?', 2, NULL),
(6, 1, '2019-08-28 21:49:08', 'ch006', '¿Explica claramente los contenidos del curso?', 4, NULL),
(7, 1, '2019-08-28 21:49:08', 'ch007', '¿Promueve la participción de los alumnos?', 6, NULL),
(8, 1, '2019-08-28 21:49:08', 'ch008', '¿Logra los objetivos establecidos hasta el momento?', 1, NULL),
(9, 1, '2019-08-28 21:49:08', 'ch009', '¿Mantiene el estunsiasmo del grupo?', 6, NULL),
(10, 1, '2019-08-28 21:49:08', 'ch010', '¿Aclara las dudas en clase?', 4, NULL),
(11, 1, '2019-08-28 21:49:08', 'ch011', '¿Presenta sus clases en forma ordenada y lógica', 1, NULL),
(12, 1, '2019-08-28 21:49:08', 'ch012', '¿Califica y entrega los examenes y trabajos oportunamente?', 3, NULL),
(13, 1, '2019-08-28 21:49:08', 'ch013', '¿Promueve el respeto, la honestidad y la responsabilidad entre los alumnos?', 5, NULL),
(14, 1, '2019-08-28 21:49:08', 'ch014', '¿Recomienda material de consulta en relación con el tema?', 2, NULL),
(15, 1, '2019-08-28 21:49:08', 'ch015', '¿Dio a conocer las estrategias y criterios de evaluación?', 3, NULL),
(16, 1, '2019-08-28 21:49:08', 'ch016', '¿Sostiene un ambiente de cordialidad?', 5, NULL),
(17, 1, '2019-08-28 21:49:08', 'ch017', '¿Estimula el esfuerzo de los alumnos?', 6, NULL),
(18, 1, '2019-08-28 21:49:08', 'ch018', '¿Complementa su clase con material audiovisual, lecturas adicionales u otras actividades didácticas?', 2, NULL),
(19, 3, '2019-09-04 08:27:30', 'GEGCHJLZ3w', 'la pregunta', 1, '683435878'),
(20, 3, '2019-09-06 23:27:41', 'GEGCHJLZ32', 'La pregunta 2', 1, '683435878'),
(21, 3, '2019-09-07 00:12:58', 'GEGDGVYY2', 'La tercera pregunta para el desempeño del profesor', 1, '683435878'),
(22, 3, '2019-09-07 00:21:40', 'GEGY3VHCN', 'La cuarta pregunta para la evauluación', 1, '683435878'),
(23, 3, '2019-09-07 00:23:40', 'GEGCXVPBN', 'La quinta pregunta de la evaluación', 1, '683435878'),
(24, 3, '2019-09-07 05:26:23', 'GEGCHJLZ3v', 'La pregunta chida', 1, '683435878'),
(25, 3, '2019-09-07 05:26:34', 'GEGCHJLZ32m', 'La pregunta chida', 1, '683435878'),
(26, 3, '2019-09-07 06:11:01', 'GEGCHJLZ3', 'la pregunta', 1, '683435878'),
(27, 3, '2019-09-07 06:13:19', 'TLSYSBWCM', 'la pregunta', 1, '683435878'),
(28, 3, '2019-09-07 06:13:35', 'ZRSYSBWCM', 'la pregunta', 1, '683435878'),
(29, 3, '2019-09-07 06:13:48', 'DHSYSBWCM', 'la pregunta', 1, '683435878'),
(30, 3, '2019-09-08 06:45:25', 'JVSYSBWCM', 'la pregunta competencia 1', 0, '683435878'),
(31, 2, '2019-09-08 18:21:46', 'DZSYSBWCM', 'la pregunta', 0, '683435878'),
(32, 2, '2019-09-09 19:03:55', 'TRSYSBWCM', 'la pregunta', 0, '1004'),
(33, 1, '2019-09-12 20:55:19', 'THSYSBWCM', 'la pregunta', 0, '1004');

-- --------------------------------------------------------

--
-- Table structure for table `chUsSu`
--

CREATE TABLE `chUsSu` (
  `idchUsSu` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idcatUsTe` int(11) DEFAULT NULL,
  `idcatUsSt` int(11) DEFAULT NULL,
  `idcatSu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='profesores-estudiantes-materias';

--
-- Dumping data for table `chUsSu`
--

INSERT INTO `chUsSu` (`idchUsSu`, `_status`, `_dateReg`, `idcatUsTe`, `idcatUsSt`, `idcatSu`) VALUES
(1, 1, '2019-08-28 22:48:46', 101, 1, 1),
(2, 1, '2019-08-28 22:48:46', 102, 1, 49),
(3, 1, '2019-08-28 22:48:46', 103, 1, 43),
(4, 1, '2019-08-28 22:48:46', 104, 1, 7),
(5, 1, '2019-08-28 22:48:46', 105, 1, 37),
(6, 1, '2019-08-28 22:48:46', 106, 1, 31),
(7, 1, '2019-08-28 22:48:46', 107, 1, 13),
(8, 1, '2019-08-28 22:48:46', 108, 1, 25),
(9, 1, '2019-08-28 22:48:46', 109, 1, 19),
(10, 1, '2019-08-28 22:48:46', 106, 2, 1),
(11, 1, '2019-08-28 22:48:46', 107, 2, 49),
(12, 1, '2019-08-28 22:48:46', 108, 2, 43),
(13, 1, '2019-08-28 22:48:46', 109, 2, 7),
(14, 1, '2019-08-28 22:48:46', 110, 2, 37),
(15, 1, '2019-08-28 22:48:46', 111, 2, 31),
(16, 1, '2019-08-28 22:48:46', 112, 2, 13),
(17, 1, '2019-08-28 22:48:46', 113, 2, 25),
(18, 1, '2019-08-28 22:48:46', 114, 2, 19),
(19, 1, '2019-08-28 22:48:46', 112, 3, 1),
(20, 1, '2019-08-28 22:48:46', 113, 3, 49),
(21, 1, '2019-08-28 22:48:46', 114, 3, 43),
(22, 1, '2019-08-28 22:48:46', 115, 3, 7),
(23, 1, '2019-08-28 22:48:46', 116, 3, 37),
(24, 1, '2019-08-28 22:48:46', 117, 3, 31),
(25, 1, '2019-08-28 22:48:46', 118, 3, 13),
(26, 1, '2019-08-28 22:48:46', 119, 3, 25),
(27, 1, '2019-08-28 22:48:46', 120, 3, 19),
(28, 1, '2019-08-28 22:48:46', 101, 4, 1),
(29, 1, '2019-08-28 22:48:46', 102, 4, 49),
(30, 1, '2019-08-28 22:48:46', 103, 4, 43),
(31, 1, '2019-08-28 22:48:46', 104, 4, 7),
(32, 1, '2019-08-28 22:48:46', 105, 4, 37),
(33, 1, '2019-08-28 22:48:46', 106, 4, 31),
(34, 1, '2019-08-28 22:48:46', 107, 4, 13),
(35, 1, '2019-08-28 22:48:46', 108, 4, 25),
(36, 1, '2019-08-28 22:48:46', 109, 4, 19),
(37, 1, '2019-08-28 22:48:46', 106, 5, 1),
(38, 1, '2019-08-28 22:48:46', 107, 5, 49),
(39, 1, '2019-08-28 22:48:46', 108, 5, 43),
(40, 1, '2019-08-28 22:48:46', 109, 5, 7),
(41, 1, '2019-08-28 22:48:46', 110, 5, 37),
(42, 1, '2019-08-28 22:48:46', 111, 5, 31),
(43, 1, '2019-08-28 22:48:46', 112, 5, 13),
(44, 1, '2019-08-28 22:48:46', 113, 5, 25),
(45, 1, '2019-08-28 22:48:46', 114, 5, 19),
(46, 1, '2019-08-28 22:48:46', 112, 6, 1),
(47, 1, '2019-08-28 22:48:46', 113, 6, 49),
(48, 1, '2019-08-28 22:48:46', 114, 6, 43),
(49, 1, '2019-08-28 22:48:46', 115, 6, 7),
(50, 1, '2019-08-28 22:48:46', 116, 6, 37),
(51, 1, '2019-08-28 22:48:46', 117, 6, 31),
(52, 1, '2019-08-28 22:48:46', 118, 6, 13),
(53, 1, '2019-08-28 22:48:46', 119, 6, 25),
(54, 1, '2019-08-28 22:48:46', 120, 6, 19),
(55, 1, '2019-08-28 22:48:46', 101, 7, 1),
(56, 1, '2019-08-28 22:48:46', 102, 7, 49),
(57, 1, '2019-08-28 22:48:46', 103, 7, 43),
(58, 1, '2019-08-28 22:48:46', 104, 7, 7),
(59, 1, '2019-08-28 22:48:46', 105, 7, 37),
(60, 1, '2019-08-28 22:48:46', 106, 7, 31),
(61, 1, '2019-08-28 22:48:46', 107, 7, 13),
(62, 1, '2019-08-28 22:48:46', 108, 7, 25),
(63, 1, '2019-08-28 22:48:46', 109, 7, 19),
(64, 1, '2019-08-28 22:48:46', 106, 8, 1),
(65, 1, '2019-08-28 22:48:46', 107, 8, 49),
(66, 1, '2019-08-28 22:48:46', 108, 8, 43),
(67, 1, '2019-08-28 22:48:46', 109, 8, 7),
(68, 1, '2019-08-28 22:48:46', 110, 8, 37),
(69, 1, '2019-08-28 22:48:46', 111, 8, 31),
(70, 1, '2019-08-28 22:48:46', 112, 8, 13),
(71, 1, '2019-08-28 22:48:46', 113, 8, 25),
(72, 1, '2019-08-28 22:48:46', 114, 8, 19),
(73, 1, '2019-08-28 22:48:46', 112, 9, 1),
(74, 1, '2019-08-28 22:48:46', 113, 9, 49),
(75, 1, '2019-08-28 22:48:46', 114, 9, 43),
(76, 1, '2019-08-28 22:48:46', 115, 9, 7),
(77, 1, '2019-08-28 22:48:46', 116, 9, 37),
(78, 1, '2019-08-28 22:48:46', 117, 9, 31),
(79, 1, '2019-08-28 22:48:46', 118, 9, 13),
(80, 1, '2019-08-28 22:48:46', 119, 9, 25),
(81, 1, '2019-08-28 22:48:46', 120, 9, 19),
(82, 1, '2019-08-28 22:48:46', 101, 10, 2),
(83, 1, '2019-08-28 22:48:46', 102, 10, 50),
(84, 1, '2019-08-28 22:48:46', 103, 10, 44),
(85, 1, '2019-08-28 22:48:46', 104, 10, 38),
(86, 1, '2019-08-28 22:48:46', 105, 10, 32),
(87, 1, '2019-08-28 22:48:46', 106, 10, 26),
(88, 1, '2019-08-28 22:48:46', 107, 10, 20),
(89, 1, '2019-08-28 22:48:46', 108, 10, 14),
(90, 1, '2019-08-28 22:48:46', 109, 10, 8),
(91, 1, '2019-08-28 22:48:46', 106, 11, 2),
(92, 1, '2019-08-28 22:48:46', 107, 11, 50),
(93, 1, '2019-08-28 22:48:46', 108, 11, 44),
(94, 1, '2019-08-28 22:48:46', 109, 11, 38),
(95, 1, '2019-08-28 22:48:46', 110, 11, 32),
(96, 1, '2019-08-28 22:48:46', 111, 11, 26),
(97, 1, '2019-08-28 22:48:46', 112, 11, 20),
(98, 1, '2019-08-28 22:48:46', 113, 11, 14),
(99, 1, '2019-08-28 22:48:46', 114, 11, 8),
(100, 1, '2019-08-28 22:48:46', 112, 12, 2),
(101, 1, '2019-08-28 22:48:46', 113, 12, 50),
(102, 1, '2019-08-28 22:48:46', 114, 12, 44),
(103, 1, '2019-08-28 22:48:46', 115, 12, 38),
(104, 1, '2019-08-28 22:48:46', 116, 12, 32),
(105, 1, '2019-08-28 22:48:46', 117, 12, 26),
(106, 1, '2019-08-28 22:48:46', 118, 12, 20),
(107, 1, '2019-08-28 22:48:46', 119, 12, 14),
(108, 1, '2019-08-28 22:48:46', 120, 12, 8),
(109, 1, '2019-08-28 22:48:46', 101, 13, 2),
(110, 1, '2019-08-28 22:48:46', 102, 13, 50),
(111, 1, '2019-08-28 22:48:46', 103, 13, 44),
(112, 1, '2019-08-28 22:48:46', 104, 13, 38),
(113, 1, '2019-08-28 22:48:46', 105, 13, 32),
(114, 1, '2019-08-28 22:48:46', 106, 13, 26),
(115, 1, '2019-08-28 22:48:46', 107, 13, 20),
(116, 1, '2019-08-28 22:48:46', 108, 13, 14),
(117, 1, '2019-08-28 22:48:46', 109, 13, 8),
(118, 1, '2019-08-28 22:48:46', 106, 14, 2),
(119, 1, '2019-08-28 22:48:46', 107, 14, 50),
(120, 1, '2019-08-28 22:48:46', 108, 14, 44),
(121, 1, '2019-08-28 22:48:46', 109, 14, 38),
(122, 1, '2019-08-28 22:48:46', 110, 14, 32),
(123, 1, '2019-08-28 22:48:46', 111, 14, 26),
(124, 1, '2019-08-28 22:48:46', 112, 14, 20),
(125, 1, '2019-08-28 22:48:46', 113, 14, 14),
(126, 1, '2019-08-28 22:48:46', 114, 14, 8),
(127, 1, '2019-08-28 22:48:46', 112, 15, 2),
(128, 1, '2019-08-28 22:48:46', 113, 15, 50),
(129, 1, '2019-08-28 22:48:46', 114, 15, 44),
(130, 1, '2019-08-28 22:48:46', 115, 15, 38),
(131, 1, '2019-08-28 22:48:46', 116, 15, 32),
(132, 1, '2019-08-28 22:48:46', 117, 15, 26),
(133, 1, '2019-08-28 22:48:46', 118, 15, 20),
(134, 1, '2019-08-28 22:48:47', 119, 15, 14),
(135, 1, '2019-08-28 22:48:47', 120, 15, 8);

-- --------------------------------------------------------

--
-- Table structure for table `prodQuPrSkAs`
--

CREATE TABLE `prodQuPrSkAs` (
  `idprodQuPrSkAs` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idchQuPrSk` int(11) DEFAULT NULL,
  `idcatAs` int(11) DEFAULT NULL,
  `numAdmin` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='produccion preguntas-competencias-evaluacion';

--
-- Dumping data for table `prodQuPrSkAs`
--

INSERT INTO `prodQuPrSkAs` (`idprodQuPrSkAs`, `_status`, `_dateReg`, `idchQuPrSk`, `idcatAs`, `numAdmin`) VALUES
(1, 1, '2019-09-12 20:56:36', 1, 1, '1004'),
(2, 1, '2019-09-12 20:56:36', 2, 1, '1004'),
(3, 1, '2019-09-12 20:56:36', 3, 1, '1004'),
(4, 1, '2019-09-12 20:56:36', 4, 1, '1004'),
(5, 1, '2019-09-12 20:56:36', 5, 1, '1004'),
(6, 1, '2019-09-12 20:56:36', 6, 1, '1004'),
(7, 1, '2019-09-12 20:56:36', 7, 1, '1004'),
(8, 1, '2019-09-12 20:56:36', 8, 1, '1004'),
(9, 1, '2019-09-12 20:56:36', 9, 1, '1004'),
(10, 1, '2019-09-12 20:56:36', 10, 1, '1004'),
(11, 1, '2019-09-12 20:56:36', 11, 1, '1004'),
(12, 1, '2019-09-12 20:56:36', 12, 1, '1004'),
(13, 1, '2019-09-12 20:56:36', 13, 1, '1004'),
(14, 1, '2019-09-12 20:56:36', 14, 1, '1004'),
(15, 1, '2019-09-12 20:56:36', 15, 1, '1004'),
(16, 1, '2019-09-12 20:56:36', 16, 1, '1004'),
(17, 1, '2019-09-12 20:56:36', 17, 1, '1004'),
(18, 1, '2019-09-12 20:56:36', 18, 1, '1004'),
(19, 1, '2019-09-12 20:56:36', 33, 1, '1004');

-- --------------------------------------------------------

--
-- Table structure for table `prodRe`
--

CREATE TABLE `prodRe` (
  `idprodRe` int(11) NOT NULL,
  `_status` int(11) DEFAULT '1',
  `_dateReg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idprodQuPrSkAs` int(11) DEFAULT NULL,
  `idUsSu` int(11) DEFAULT NULL,
  `eval` int(11) DEFAULT NULL,
  `noTeacher` int(11) DEFAULT NULL,
  `evaluated` int(11) DEFAULT NULL,
  `idcatAs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='resultados de evaluacion';

--
-- Dumping data for table `prodRe`
--

INSERT INTO `prodRe` (`idprodRe`, `_status`, `_dateReg`, `idprodQuPrSkAs`, `idUsSu`, `eval`, `noTeacher`, `evaluated`, `idcatAs`) VALUES
(1, 1, '2019-09-12 21:32:14', 1, 1, 7, NULL, 1, NULL),
(2, 1, '2019-09-12 21:32:14', 2, 1, 7, NULL, 1, NULL),
(3, 1, '2019-09-12 21:32:14', 3, 1, 7, NULL, 1, NULL),
(4, 1, '2019-09-12 21:32:14', 4, 1, 9, NULL, 1, NULL),
(5, 1, '2019-09-12 21:32:14', 5, 1, 5, NULL, 1, NULL),
(6, 1, '2019-09-12 21:32:14', 6, 1, 7, NULL, 1, NULL),
(7, 1, '2019-09-12 21:32:14', 7, 1, 7, NULL, 1, NULL),
(8, 1, '2019-09-12 21:32:14', 8, 1, 7, NULL, 1, NULL),
(9, 1, '2019-09-12 21:32:14', 9, 1, 9, NULL, 1, NULL),
(10, 1, '2019-09-12 21:32:14', 10, 1, 8, NULL, 1, NULL),
(11, 1, '2019-09-12 21:32:14', 11, 1, 7, NULL, 1, NULL),
(12, 1, '2019-09-12 21:32:14', 12, 1, 8, NULL, 1, NULL),
(13, 1, '2019-09-12 21:32:14', 13, 1, 10, NULL, 1, NULL),
(14, 1, '2019-09-12 21:32:14', 14, 1, 6, NULL, 1, NULL),
(15, 1, '2019-09-12 21:32:14', 15, 1, 8, NULL, 1, NULL),
(16, 1, '2019-09-12 21:32:14', 16, 1, 9, NULL, 1, NULL),
(17, 1, '2019-09-12 21:32:14', 17, 1, 9, NULL, 1, NULL),
(18, 1, '2019-09-12 21:32:14', 18, 1, 9, NULL, 1, NULL),
(19, 1, '2019-09-12 21:32:14', 19, 1, 9, NULL, 1, NULL),
(20, 1, '2019-09-12 21:33:21', 1, 2, 6, NULL, 1, NULL),
(21, 1, '2019-09-12 21:33:21', 2, 2, 7, NULL, 1, NULL),
(22, 1, '2019-09-12 21:33:21', 3, 2, 7, NULL, 1, NULL),
(23, 1, '2019-09-12 21:33:21', 4, 2, 6, NULL, 1, NULL),
(24, 1, '2019-09-12 21:33:21', 5, 2, 7, NULL, 1, NULL),
(25, 1, '2019-09-12 21:33:21', 6, 2, 7, NULL, 1, NULL),
(26, 1, '2019-09-12 21:33:21', 7, 2, 8, NULL, 1, NULL),
(27, 1, '2019-09-12 21:33:21', 8, 2, 7, NULL, 1, NULL),
(28, 1, '2019-09-12 21:33:21', 9, 2, 7, NULL, 1, NULL),
(29, 1, '2019-09-12 21:33:21', 10, 2, 7, NULL, 1, NULL),
(30, 1, '2019-09-12 21:33:21', 11, 2, 7, NULL, 1, NULL),
(31, 1, '2019-09-12 21:33:21', 12, 2, 9, NULL, 1, NULL),
(32, 1, '2019-09-12 21:33:21', 13, 2, 8, NULL, 1, NULL),
(33, 1, '2019-09-12 21:33:21', 14, 2, 6, NULL, 1, NULL),
(34, 1, '2019-09-12 21:33:21', 15, 2, 8, NULL, 1, NULL),
(35, 1, '2019-09-12 21:33:21', 16, 2, 8, NULL, 1, NULL),
(36, 1, '2019-09-12 21:33:21', 17, 2, 7, NULL, 1, NULL),
(37, 1, '2019-09-12 21:33:21', 18, 2, 9, NULL, 1, NULL),
(38, 1, '2019-09-12 21:33:21', 19, 2, 7, NULL, 1, NULL),
(39, 1, '2019-09-12 21:41:49', 1, 3, 6, NULL, 1, NULL),
(40, 1, '2019-09-12 21:41:49', 2, 3, 6, NULL, 1, NULL),
(41, 1, '2019-09-12 21:41:49', 3, 3, 7, NULL, 1, NULL),
(42, 1, '2019-09-12 21:41:49', 4, 3, 5, NULL, 1, NULL),
(43, 1, '2019-09-12 21:41:49', 5, 3, 7, NULL, 1, NULL),
(44, 1, '2019-09-12 21:41:49', 6, 3, 7, NULL, 1, NULL),
(45, 1, '2019-09-12 21:41:49', 7, 3, 8, NULL, 1, NULL),
(46, 1, '2019-09-12 21:41:50', 8, 3, 7, NULL, 1, NULL),
(47, 1, '2019-09-12 21:41:50', 9, 3, 7, NULL, 1, NULL),
(48, 1, '2019-09-12 21:41:50', 10, 3, 7, NULL, 1, NULL),
(49, 1, '2019-09-12 21:41:50', 11, 3, 6, NULL, 1, NULL),
(50, 1, '2019-09-12 21:41:50', 12, 3, 8, NULL, 1, NULL),
(51, 1, '2019-09-12 21:41:50', 13, 3, 7, NULL, 1, NULL),
(52, 1, '2019-09-12 21:41:50', 14, 3, 6, NULL, 1, NULL),
(53, 1, '2019-09-12 21:41:50', 15, 3, 8, NULL, 1, NULL),
(54, 1, '2019-09-12 21:41:50', 16, 3, 7, NULL, 1, NULL),
(55, 1, '2019-09-12 21:41:50', 17, 3, 8, NULL, 1, NULL),
(56, 1, '2019-09-12 21:41:50', 18, 3, 7, NULL, 1, NULL),
(57, 1, '2019-09-12 21:41:50', 19, 3, 8, NULL, 1, NULL),
(58, 1, '2019-09-12 21:42:34', 1, 9, 6, NULL, 1, NULL),
(59, 1, '2019-09-12 21:42:34', 2, 9, 6, NULL, 1, NULL),
(60, 1, '2019-09-12 21:42:34', 3, 9, 7, NULL, 1, NULL),
(61, 1, '2019-09-12 21:42:34', 4, 9, 5, NULL, 1, NULL),
(62, 1, '2019-09-12 21:42:34', 5, 9, 7, NULL, 1, NULL),
(63, 1, '2019-09-12 21:42:34', 6, 9, 7, NULL, 1, NULL),
(64, 1, '2019-09-12 21:42:34', 7, 9, 8, NULL, 1, NULL),
(65, 1, '2019-09-12 21:42:34', 8, 9, 7, NULL, 1, NULL),
(66, 1, '2019-09-12 21:42:34', 9, 9, 7, NULL, 1, NULL),
(67, 1, '2019-09-12 21:42:34', 10, 9, 7, NULL, 1, NULL),
(68, 1, '2019-09-12 21:42:34', 11, 9, 6, NULL, 1, NULL),
(69, 1, '2019-09-12 21:42:34', 12, 9, 8, NULL, 1, NULL),
(70, 1, '2019-09-12 21:42:34', 13, 9, 7, NULL, 1, NULL),
(71, 1, '2019-09-12 21:42:34', 14, 9, 6, NULL, 1, NULL),
(72, 1, '2019-09-12 21:42:34', 15, 9, 8, NULL, 1, NULL),
(73, 1, '2019-09-12 21:42:34', 16, 9, 7, NULL, 1, NULL),
(74, 1, '2019-09-12 21:42:34', 17, 9, 8, NULL, 1, NULL),
(75, 1, '2019-09-12 21:42:34', 18, 9, 7, NULL, 1, NULL),
(76, 1, '2019-09-12 21:42:34', 19, 9, 8, NULL, 1, NULL),
(77, 1, '2019-09-12 21:42:41', 1, 8, 6, NULL, 1, NULL),
(78, 1, '2019-09-12 21:42:41', 2, 8, 6, NULL, 1, NULL),
(79, 1, '2019-09-12 21:42:41', 3, 8, 7, NULL, 1, NULL),
(80, 1, '2019-09-12 21:42:41', 4, 8, 5, NULL, 1, NULL),
(81, 1, '2019-09-12 21:42:41', 5, 8, 7, NULL, 1, NULL),
(82, 1, '2019-09-12 21:42:41', 6, 8, 7, NULL, 1, NULL),
(83, 1, '2019-09-12 21:42:41', 7, 8, 8, NULL, 1, NULL),
(84, 1, '2019-09-12 21:42:41', 8, 8, 7, NULL, 1, NULL),
(85, 1, '2019-09-12 21:42:41', 9, 8, 7, NULL, 1, NULL),
(86, 1, '2019-09-12 21:42:41', 10, 8, 7, NULL, 1, NULL),
(87, 1, '2019-09-12 21:42:41', 11, 8, 6, NULL, 1, NULL),
(88, 1, '2019-09-12 21:42:41', 12, 8, 8, NULL, 1, NULL),
(89, 1, '2019-09-12 21:42:41', 13, 8, 7, NULL, 1, NULL),
(90, 1, '2019-09-12 21:42:41', 14, 8, 6, NULL, 1, NULL),
(91, 1, '2019-09-12 21:42:41', 15, 8, 8, NULL, 1, NULL),
(92, 1, '2019-09-12 21:42:41', 16, 8, 7, NULL, 1, NULL),
(93, 1, '2019-09-12 21:42:41', 17, 8, 8, NULL, 1, NULL),
(94, 1, '2019-09-12 21:42:41', 18, 8, 7, NULL, 1, NULL),
(95, 1, '2019-09-12 21:42:41', 19, 8, 8, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewAssesmentReady`
-- (See below for the actual view)
--
CREATE TABLE `viewAssesmentReady` (
`L1` varchar(15)
,`L2` varchar(200)
,`L3` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewQuPrSkAs`
-- (See below for the actual view)
--
CREATE TABLE `viewQuPrSkAs` (
`L1` varchar(15)
,`L2` varchar(200)
,`L3` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewQuTeSk`
-- (See below for the actual view)
--
CREATE TABLE `viewQuTeSk` (
`L1` varchar(15)
,`L2` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectCatAsAlive`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectCatAsAlive` (
`L1` varchar(15)
,`L2` varchar(200)
,`L3` varchar(10)
,`L4` varchar(10)
,`L5` bigint(21)
,`L6` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectCatGr`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectCatGr` (
`L1` varchar(200)
,`L2` varchar(200)
,`L3` varchar(200)
,`L4` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectCatUs`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectCatUs` (
`L1` varchar(10)
,`L2` varchar(200)
,`L3` varchar(13)
,`L4` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectProdQuPrSkAs`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectProdQuPrSkAs` (
`L1` varchar(200)
,`L2` varchar(15)
,`L3` varchar(10)
,`L4` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectPrSK`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectPrSK` (
`L1` varchar(15)
,`L2` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectQuAs`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectQuAs` (
`L1` varchar(200)
,`L2` varchar(15)
,`L3` varchar(10)
,`L4` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewSelectStTeEvaluated`
-- (See below for the actual view)
--
CREATE TABLE `viewSelectStTeEvaluated` (
`L1` varchar(10)
,`L2` varchar(10)
,`L3` int(11)
,`L4` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewStTeSu`
-- (See below for the actual view)
--
CREATE TABLE `viewStTeSu` (
`L0` varchar(10)
,`L1` varchar(200)
,`L2` varchar(200)
,`L3` varchar(200)
,`L4` varchar(10)
,`L5` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewUsNam`
-- (See below for the actual view)
--
CREATE TABLE `viewUsNam` (
`L1` varchar(200)
,`L2` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `viewAssesmentReady`
--
DROP TABLE IF EXISTS `viewAssesmentReady`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewAssesmentReady`  AS  select `catAs`.`num` AS `L1`,`catAs`.`nam` AS `L2`,`catAs`.`yearAcademic` AS `L3` from `catAs` where ((`catAs`.`_status` = 1) and (`catAs`.`alive` = 9)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewQuPrSkAs`
--
DROP TABLE IF EXISTS `viewQuPrSkAs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewQuPrSkAs`  AS  select `chQuPrSk`.`num` AS `L1`,`chQuPrSk`.`nam` AS `L2`,`catAs`.`num` AS `L3` from ((`catAs` join `prodQuPrSkAs` on((`catAs`.`idcatAs` = `prodQuPrSkAs`.`idcatAs`))) join `chQuPrSk` on((`prodQuPrSkAs`.`idchQuPrSk` = `chQuPrSk`.`idchQuPrSk`))) where ((`prodQuPrSkAs`.`_status` = 1) and (`chQuPrSk`.`_status` = 1) and (`catAs`.`_status` = 1) and (`catAs`.`alive` = 11)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewQuTeSk`
--
DROP TABLE IF EXISTS `viewQuTeSk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewQuTeSk`  AS  select `chQuPrSk`.`num` AS `L1`,`chQuPrSk`.`nam` AS `L2` from `chQuPrSk` where (`chQuPrSk`.`_status` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectCatAsAlive`
--
DROP TABLE IF EXISTS `viewSelectCatAsAlive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectCatAsAlive`  AS  select `catAs`.`num` AS `L1`,`catAs`.`nam` AS `L2`,`catAs`.`yearAcademic` AS `L3`,date_format(cast(`catAs`.`dateDoing` as date),'%Y-%m-%d') AS `L4`,count(`prodQuPrSkAs`.`idchQuPrSk`) AS `L5`,`catAs`.`alive` AS `L6` from (`catAs` join `prodQuPrSkAs` on((`catAs`.`idcatAs` = `prodQuPrSkAs`.`idcatAs`))) where ((`catAs`.`_status` = 1) and (`catAs`.`alive` in (8,11)) and (`prodQuPrSkAs`.`_status` = 1)) group by `L1`,`L2`,`L3`,`L4`,`L6` ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectCatGr`
--
DROP TABLE IF EXISTS `viewSelectCatGr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectCatGr`  AS  select `t1`.`nam` AS `L1`,`t2`.`nam` AS `L2`,`catSu`.`nam` AS `L3`,`catGr`.`nam` AS `L4` from ((((`chUsSu` join `catUs` `t1` on((`chUsSu`.`idcatUsTe` = `t1`.`idcatUs`))) join `catUs` `t2` on((`chUsSu`.`idcatUsSt` = `t2`.`idcatUs`))) join `catSu` on((`chUsSu`.`idcatSu` = `catSu`.`idcatSu`))) join `catGr` on((`catSu`.`idcatGr` = `catGr`.`idcatGr`))) where ((`catGr`.`_status` = 1) and (`catSu`.`_status` = 1) and (`t1`.`_status` = 1) and (`chUsSu`.`_status` = 1) and (`catSu`.`_status` = 1) and (`catGr`.`_status` = 1) and (`t2`.`_status` = 1) and (`t1`.`profile` = 5) and (`t2`.`profile` = 4)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectCatUs`
--
DROP TABLE IF EXISTS `viewSelectCatUs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectCatUs`  AS  select `catUs`.`num` AS `L1`,`catUs`.`nam` AS `L2`,ifnull(`catUs`.`access`,'No hay acceso') AS `L3`,`catUs`.`profile` AS `L4` from `catUs` where (`catUs`.`_status` = 1) order by `catUs`.`profile` ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectProdQuPrSkAs`
--
DROP TABLE IF EXISTS `viewSelectProdQuPrSkAs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectProdQuPrSkAs`  AS  select `catAs`.`nam` AS `L1`,`catAs`.`num` AS `L2`,`catAs`.`yearAcademic` AS `L3`,count(`prodQuPrSkAs`.`idprodQuPrSkAs`) AS `L4` from (`prodQuPrSkAs` join `catAs` on((`prodQuPrSkAs`.`idcatAs` = `catAs`.`idcatAs`))) where ((`prodQuPrSkAs`.`_status` = 1) and (`catAs`.`_status` = 1) and (`catAs`.`alive` = 7)) group by `catAs`.`nam`,`catAs`.`num`,`catAs`.`yearAcademic` ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectPrSK`
--
DROP TABLE IF EXISTS `viewSelectPrSK`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectPrSK`  AS  select `catPrSk`.`num` AS `L1`,`catPrSk`.`nam` AS `L2` from `catPrSk` where (`catPrSk`.`_status` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectQuAs`
--
DROP TABLE IF EXISTS `viewSelectQuAs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectQuAs`  AS  select `catAs`.`nam` AS `L1`,`catAs`.`num` AS `L2`,`catAs`.`yearAcademic` AS `L3`,0 AS `L4` from `catAs` where ((`catAs`.`_status` = 1) and (`catAs`.`alive` = 9)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewSelectStTeEvaluated`
--
DROP TABLE IF EXISTS `viewSelectStTeEvaluated`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewSelectStTeEvaluated`  AS  select distinct `t1`.`num` AS `L1`,`t2`.`num` AS `L2`,`prodRe`.`noTeacher` AS `L3`,`prodRe`.`evaluated` AS `L4` from (((`prodRe` join `chUsSu` on((`prodRe`.`idUsSu` = `chUsSu`.`idchUsSu`))) join `catUs` `t1` on((`chUsSu`.`idcatUsSt` = `t1`.`idcatUs`))) join `catUs` `t2` on((`chUsSu`.`idcatUsTe` = `t2`.`idcatUs`))) where ((`chUsSu`.`_status` = 1) and (`t1`.`_status` = 1) and (`t2`.`_status` = 1) and (`prodRe`.`_status` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewStTeSu`
--
DROP TABLE IF EXISTS `viewStTeSu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewStTeSu`  AS  select `t1`.`num` AS `L0`,`t1`.`nam` AS `L1`,`t2`.`nam` AS `L2`,`catSu`.`nam` AS `L3`,`t2`.`num` AS `L4`,`catSu`.`num` AS `L5` from (((`catUs` `t1` join `chUsSu` on((`t1`.`idcatUs` = `chUsSu`.`idcatUsSt`))) join `catUs` `t2` on((`chUsSu`.`idcatUsTe` = `t2`.`idcatUs`))) join `catSu` on((`chUsSu`.`idcatSu` = `catSu`.`idcatSu`))) where ((`t1`.`_status` = 1) and (`chUsSu`.`_status` = 1) and (`t2`.`_status` = 1) and (`t2`.`profile` = 5) and (`t1`.`profile` = 4) and (`catSu`.`_status` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewUsNam`
--
DROP TABLE IF EXISTS `viewUsNam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`domestic`@`%` SQL SECURITY DEFINER VIEW `viewUsNam`  AS  select `catUs`.`nam` AS `L1`,`catUs`.`num` AS `L2` from `catUs` where (`catUs`.`_status` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catAs`
--
ALTER TABLE `catAs`
  ADD PRIMARY KEY (`idcatAs`);

--
-- Indexes for table `catGr`
--
ALTER TABLE `catGr`
  ADD PRIMARY KEY (`idcatGr`);

--
-- Indexes for table `catPrSk`
--
ALTER TABLE `catPrSk`
  ADD PRIMARY KEY (`idcatPrSk`);

--
-- Indexes for table `catSt`
--
ALTER TABLE `catSt`
  ADD PRIMARY KEY (`idcatSt`);

--
-- Indexes for table `catSu`
--
ALTER TABLE `catSu`
  ADD PRIMARY KEY (`idcatSu`);

--
-- Indexes for table `catUs`
--
ALTER TABLE `catUs`
  ADD PRIMARY KEY (`idcatUs`);

--
-- Indexes for table `chQuPrSk`
--
ALTER TABLE `chQuPrSk`
  ADD PRIMARY KEY (`idchQuPrSk`);

--
-- Indexes for table `chUsSu`
--
ALTER TABLE `chUsSu`
  ADD PRIMARY KEY (`idchUsSu`);

--
-- Indexes for table `prodQuPrSkAs`
--
ALTER TABLE `prodQuPrSkAs`
  ADD PRIMARY KEY (`idprodQuPrSkAs`);

--
-- Indexes for table `prodRe`
--
ALTER TABLE `prodRe`
  ADD PRIMARY KEY (`idprodRe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catAs`
--
ALTER TABLE `catAs`
  MODIFY `idcatAs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catGr`
--
ALTER TABLE `catGr`
  MODIFY `idcatGr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catPrSk`
--
ALTER TABLE `catPrSk`
  MODIFY `idcatPrSk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `catSt`
--
ALTER TABLE `catSt`
  MODIFY `idcatSt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `catSu`
--
ALTER TABLE `catSu`
  MODIFY `idcatSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `catUs`
--
ALTER TABLE `catUs`
  MODIFY `idcatUs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `chQuPrSk`
--
ALTER TABLE `chQuPrSk`
  MODIFY `idchQuPrSk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `chUsSu`
--
ALTER TABLE `chUsSu`
  MODIFY `idchUsSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `prodQuPrSkAs`
--
ALTER TABLE `prodQuPrSkAs`
  MODIFY `idprodQuPrSkAs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prodRe`
--
ALTER TABLE `prodRe`
  MODIFY `idprodRe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
