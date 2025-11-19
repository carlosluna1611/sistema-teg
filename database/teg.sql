-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2025 a las 22:18:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `teg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id_acceso` int(7) NOT NULL,
  `usuario_acceso` varchar(12) NOT NULL,
  `pass_acceso` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id_acceso`, `usuario_acceso`, `pass_acceso`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(7) NOT NULL,
  `titulo_registro` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorNombre_1_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorApellido_1_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorNombre_2_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorApellido_2_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorNombre_3_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autorApellido_3_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lineaIns_registro` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `resumen_registro` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `año_registro` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `asesorNombreMet_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `asesorApellidoMet_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `asesorNombreTec_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `asesorApellidoTec_registro` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `palabraKey_registro` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id_acceso`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id_acceso` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
