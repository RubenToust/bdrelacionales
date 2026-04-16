-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 16:32:44
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
-- Base de datos: `redsocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 8, 2, 'Jaja, me identifico Xdddd', '2026-04-20 07:58:15'),
(2, 2, 4, 'Amiga que te pasa', '2026-01-08 07:59:04'),
(3, 1, 3, 'Ruben borra la cuenta', '2025-06-18 07:59:50'),
(4, 4, 2, 'Piratealo, comprate una switch chipeada LOL', '2025-11-27 08:00:22'),
(5, 9, 1, 'fELIS CUM UWU', '2026-02-16 08:01:12'),
(6, 6, 2, 'perdon mama no fui loque quisistes yose que orita tu te encuentras tristre', '2026-02-10 08:02:07'),
(7, 7, 3, 'Deja de jugar eso wey', '2026-02-25 08:04:40'),
(8, 5, 5, 'Curate ese cerebro', '2018-11-24 08:05:11'),
(9, 3, 2, 'Te salvo jesucristo', '2025-06-04 08:05:45'),
(10, 1, 4, 'Alto porfabor', '2025-06-07 08:07:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#armyy', '2018-07-13'),
(2, '#teamo', '2001-10-23'),
(3, '#lololyoosung', '2016-09-10'),
(4, '#peppapigXruben', '2021-02-14'),
(5, '#InstaGood', '2019-06-01'),
(6, '#lifestyle', '2023-07-01'),
(7, '#XD', '2019-06-18'),
(8, '#FreeFire', '2019-02-17'),
(9, '#fyp', '2018-08-11'),
(10, '#Anime', '2014-02-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 2, 'jeje... XDDDDD', 'https://share.google/da8Tz5MO1DdZV1WSQ', '2026-04-15 16:35:44', 0),
(2, 3, 'Soy esta, kyaa.. uwu', 'https://share.google/2imay40iwldvscbx4', '2026-04-15 16:36:59', 4673),
(3, 5, 'Yano soy Aidan Army', 'https://share.google/NXBrg09myUgDsKHjh', '2026-04-12 23:59:25', 10000),
(4, 4, 'Donde puedo comprar Undertale ToT', 'https://share.google/30kcGeCtjwQaBrwEo', '2019-04-04 07:39:47', 15),
(5, 4, 'Free es caca con ojos asi que mejor fortnite porque en free fire los monos estan horribles >//<', 'https://share.google/iJaPNwACvEHgcd7EF', '2020-04-27 07:41:09', 1792349027),
(6, 1, 'descargas carpeta ema', 'https://share.google/YDh85mcjhKSbVTNLE', '2025-06-15 07:44:18', 19),
(7, 2, 'estaba aburrido lol', 'https://share.google/hAxgNJFTszLyOMrIt', '2022-01-20 07:46:45', 27843),
(8, 5, 'Amo a dios mucho mucho', 'https://share.google/i7AYSH8DHhjbGBGKq', '2025-12-25 07:48:19', 666),
(9, 3, 'feliz cumpleaños amigo yisus', '', '2026-02-16 07:50:06', 120),
(10, 1, 'Hola amigos tengo mucha hambre', '', '2025-10-15 07:50:53', 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(8, 5),
(6, 3),
(4, 9),
(7, 4),
(9, 7),
(5, 8),
(10, 7),
(1, 2),
(2, 10),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(8, 5, '2025-09-20 08:09:35'),
(6, 1, '2026-01-16 08:09:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(3, 2, '2024-10-24'),
(2, 1, '2024-11-06'),
(5, 1, '2024-09-17'),
(2, 4, '2025-04-29'),
(3, 1, '2025-06-09'),
(5, 3, '2025-10-03'),
(3, 2, '2025-08-18'),
(4, 5, '2025-11-27'),
(1, 4, '2026-01-28'),
(1, 2, '2026-01-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'mamasitasexyhot', 'emaemiem0oo@gmail.com', 'holi amigos esta es mi cuenta privada', '2025-04-21'),
(2, 'ruben.toust', 'rubenties@gmail.com', 'Hola, chicos!!', '2024-07-06'),
(3, 'emmitasus', 'montoyatorresemmasofia@gmail.com', 'queteimporta', '2021-03-15'),
(4, 'mourn.me2.0', 'fridayy123@gmail.com', 'hola soi frida denme femboys', '2021-02-10'),
(5, 'clarens_duarte', 'alisitakawaii@gmail.com', '<3', '2021-10-17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
