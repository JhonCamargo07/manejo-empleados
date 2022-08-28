-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2022 a las 00:48:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manejo-empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_doc`
--

CREATE TABLE `type_doc` (
  `id_type_doc` int(11) NOT NULL,
  `name_type_doc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(30) NOT NULL,
  `last_name_user` varchar(30) NOT NULL,
  `type_doc` int(11) NOT NULL,
  `num_doc_user` varchar(15) NOT NULL,
  `tel_user` varchar(10) NOT NULL,
  `email_user` varchar(70) NOT NULL,
  `password_user` varchar(260) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `change_password_user` tinyint(4) NOT NULL DEFAULT 0,
  `rol_user` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `type_doc`
--
ALTER TABLE `type_doc`
  ADD PRIMARY KEY (`id_type_doc`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `num_doc_user` (`num_doc_user`),
  ADD UNIQUE KEY `email_user` (`email_user`),
  ADD KEY `type_doc` (`type_doc`),
  ADD KEY `type_doc_2` (`type_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `type_doc`
--
ALTER TABLE `type_doc`
  MODIFY `id_type_doc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type_doc`) REFERENCES `type_doc` (`id_type_doc`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
