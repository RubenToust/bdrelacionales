-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:17:34
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Máscara de Gas', 299, 'BTOOTD', 'Mascarilla Respiratoria Reutilizable con Gafas de Seguridad y Filtro, protección respiratoria profesional, a prueba de polvo, apta para pintar, lijar, renovar, soldar, pulir y otras protecciones laborales.', 300),
(2, 'Mouse Inalámbrico', 394.78, 'Logitech', 'Navegación Fácil, Control Preciso: el mouse inalámbrico M317 posee un desplazamiento línea a línea y un seguimiento óptico suave. Control de cursor preciso sobre la mayoría de las superficies.\r\nLarga Duración de Batería: este ratón inalámbrico de computadora puede funcionar todo un año sin que tengas que cambiar las baterías.\r\nDiseño Cómodo y Compacto: con laterales suaves de goma y una forma contorneada, este mouse para computadora es cómodo, para usuarios zurdos y diestros.', 2300),
(3, 'Samsung Galaxy Tab S10+ Gris 12GB RAM 512GB', 14999, 'Samsung', 'Creatividad potencializada con AI ahora en las nuevas Tab S10 Ultra y Tab S10+.\r\nTab S10 Ultra, la opción ideal para los pioneros electrónicos, que buscan potenciar su creatividad y Tab S10+, para los buscadores de eficacia, ya que te ayuda a completar más tareas con menos esfuerzo incluso en movimiento.\r\nDespreocúpate con su nueva función de Resumen de voz con AI, que te permite grabar conferencias, reuniones y mucho más convirtiéndolas en texto.', 4825),
(4, 'Pistola Cerámica de Adhesivo, para Barras de Silicon, DWHTGR50', 340.6, 'DEWALT', 'Pistola de pegamento de cerámica de calentamiento rápido Dewalt\r\nResistente base de soporte plegable y mango evitar contratiempos\r\nProprietary cerámica calentador se calienta rápido y mantiene caliente durante más tiempo', 9798),
(5, 'Mario Kart 8 Deluxe - Standard Edition', 862.33, 'Nintendo', 'Gracias a Nintendo Switch, los aficionados pueden disfrutar de la versión definitiva de Mario Kart 8 donde quieran y cuando quieran\r\nLos populares circuitos y personajes de la versión de Wii U están de vuelta, junto a los circuitos y personajes descargables, y además se unen a la parrilla personajes nuevos: Inkling chico e Inkling chica, de Splatoon; el Rey Boo; Huesitos y Bowsy\r\nel modo batalla se renueva por completo con la batalla de globos y el Bob-ombardeo.', 300),
(6, 'Pasta Dental Blanqueadora Luminous White Brilliant White 2x75 ml.', 47.3, 'Colgate', 'REMUEVE MANCHAS: Remueve hasta el 100% de manchas superficiales*\r\nSONRISA BRILLANTE: Revela el poder de una sonrisa blanca e irresistible\r\nPROTEGE EL ESMALTE: Remineraliza y protege el esmalte\r\nBLANQUEAMIENTO CLÍNICO: Dientes más blancos, clínicamente comprobado\r\nPROTECCIÓN ANTICARIES: Crema dental anticaries con flúor.', 12345),
(7, 'Fursuits cabeza gato peludo lindo perro', 4998, 'tursuit', 'Excelente material: Se selecciona peluche de alta calidad, que es suave y duradero, y no causará molestias incluso cuando durante mucho tiempo\r\nExcelente efecto visual. Los ojos están hechos de material de malla, que tiene un efecto de perspectiva\r\nAmplia aplicabilidad. Adecuado para varios eventos de anime, reuniones temáticas, cosplay y otras ocasiones\r\nNota especial. La mayoría de los productos son hechos a mano, y los defectos hechos a mano no se pueden evitar. ¡Por favor considere si puede ', 76),
(8, 'AirPods Max', 8280.9, 'Apple', 'Este producto de segunda mano no está certificado por Apple, pero se ha revisado, probado y limpiado profesionalmente por parte de proveedores cualificados por Amazon.\r\nSignos de daños estéticos (arañazos, abolladuras, etc.) no serán visibles cuando el producto se mantenga a 30 centímetros de distancia.\r\nEste producto tiene una batería que supera el 80 % de capacidad con respecto a uno nuevo.\r\nPuede que los accesorios no sean originales, pero son compatibles y totalmente funcionales. ', 784),
(9, 'Este producto de segunda mano no está certificado por Apple, pero se ha revisado, probado y limpiado profesionalmente por parte de proveedores cualificados por Amazon.\r\nSignos de daños estéticos (arañ', 599.99, 'LUNK', 'Figura de Frieren: La linda figura del popular anime manga japonés, figura de Frieren con diseño de toalla de baño en rodillas, y detalles como la expresión facial también están muy bien pensados, vívidamente recreados\r\nMaterial y Tamaño: Material de PVC ecológico, estatua modelo de figura de acción de anime Frieren de 13cm/5.1in, colores brillantes, segura y resistente\r\nRegalos creativos: Regalos creativos para quienes les gustan los personajes de Fern Stark Frieren', 456),
(10, 'Jojo\'s Bizarre: Steel Ball Run N.1 - Manga ', 219, 'Panini', 'En el nuevo arco de Jojo\'s Bizarre Adventure, Hirohiko Araki nos transporta a los Estados Unidos de 1890, para sumergirnos en la más grandiosa carrera que había existido hasta entonces: la Steel Ball Run, una competencia de los más diestros jinetes que recorre el país de costa a costa, desde San Diego Beach hasta Nueva York, ¡con un premio de 50 millones de dólares! Narrada como una crónica deportiva, esta palpitante historia acelerará tu corazón desde la primera página.', 157);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
