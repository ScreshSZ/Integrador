-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 00:31:07
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zeniquel_s`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'jorge', 'lopez', 'usuario1', 'ejemplo@gmail.com', '$2y$10$2oKASi1kU3fxYlGJVcgJkOxgXb.oEkMlq1HNDWSES36OdKSlFztl6', 2, 'NO'),
(2, 'jorge', 'dsadsa', 'usuario1', 'email@lopez.com', '$2y$10$X.jtA38WCpHbcfDGto39Z.OOFjeg3FdKJh1PTR.tkH.yiB/x8aVRm', 2, 'NO'),
(3, 'ryan', 'weles', 'rookie', 'kayn@hotmail.com', '$2y$10$LAKjEyuZ2O71XU1e5veGZer32qlBy7bvwU9wAuN3wAy4fZUFGsMaG', 2, 'NO'),
(4, 'dsa', 'dsadas', 'usuario1', 'prueba@hotmail.com', '$2y$10$DeHB2hWcuOtP8LQfVq4zn.MgpWiK119VAmLQDOQDCMU3myTJvg8Km', 2, 'NO'),
(5, 'lee ', 'Sin', 'lee22', 'leesin@gmail.com', '$2y$10$9V8whKhzV2wC866RPoHBwOy25Ti8I9p6K3L.GGczQwMla58rsvdSa', 2, 'NO'),
(6, 'syndra', 'jinx', 'syn1', 'syn1@lopez.com', '$2y$10$EsFDS5jDNIyF3iFa958sduuQZCdZHj2B69VchAS2ubU/wZiRNMKYi', 2, 'NO'),
(7, 'lucia', 'ojeda', 'lucia1', 'lucia@hotmail.com', '$2y$10$d4sG8hMLZScFnu6OP08Im.DVPbou7d0LYcar3bn65E9GXvadGZqg6', 2, 'NO'),
(8, 'kiko', 'chavez', 'kiko2', 'kiko@gmail.com', '$2y$10$QrEbiLIJ97irTGGyZ0fkse/z1ajq9yod9pugdJoSpiHIYqefk6qUe', 2, 'NO'),
(9, 'rico', 'perez', 'rico1', 'rico1@gmail.com', '$2y$10$qdFk7cSU01W.Tedup3FPD.bNZllFAg5tdNO9XJ6DDZm.AY6y6kICm', 2, 'NO'),
(10, 'geronimo', 'gomez', 'gero1', 'gero1@gmail.com', '$2y$10$4vovBV8OcG3nfn8KFUSwSOa33hke0QsvtIkcb7VOs4f2licjKhZ4m', 2, 'NO'),
(11, 'martin', 'perez', 'martin2', 'martin@gmail.com', '$2y$10$RGOvGtEnp1Uf.8r0W6cOCu1PfgIEyekUqNr7TI37lXJVq5W5JBlK2', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
