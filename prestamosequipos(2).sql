-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2025 a las 20:11:30
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
-- Base de datos: `prestamosequipos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `idaprendiz` varchar(20) NOT NULL,
  `tipodoc` varchar(4) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nficha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`idaprendiz`, `tipodoc`, `nombres`, `apellidos`, `celular`, `email`, `nficha`) VALUES
('10635874152', 'CC', 'Andres Felipe', 'Torres', '3698527410', 'andres@yahoo.com', 2846574),
('1066598743', 'CE', 'Jesus David', 'Vergara Suarez', '3113113614', 'jesusvrg@gmail.com', 2846574),
('10698742', 'TI', 'Kevin', 'Ojeda', '3255896974', 'koj@hotmail.com', 2854786),
('1069874523', 'CC', 'Geordyn', 'Gutierrez', '3259687410', 'georguti@hotmail.com', 2147483647),
('585963', 'CE', 'Miguel Angel', 'Bula', '3698521474', 'bulaproxd@gmail.com', 856425),
('7417417', 'CC', 'Jorge', 'Camargo', '3698520123', 'jorgepvpfree@gmail.com', 2846574),
('852741', 'CC', 'Maria', 'Calle', '3214568790', 'mariacrack@hotmail.com', 2846574),
('85296341852', 'CC', 'Charledis', 'Oyola', '3216549871', 'west@gmail.com', 2846574),
('963963', 'CC', 'Nicolas', 'Gaibao Montes', '3212556987', 'nicolas@hotmail.com', 7124852);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `descripcion`) VALUES
(1, 'Electrodomesticos'),
(2, 'Ceramica'),
(3, 'Automotriz'),
(4, 'Libros'),
(5, 'Domesticos '),
(6, 'Limpieza'),
(7, 'Electronicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idequipo` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idequipo`, `nombre`, `descripcion`, `idcategoria`) VALUES
('1', 'Cafetera', 'Cafetera marca MABEL, evaluada en 2.380.000$ de dolares', 1),
('11', 'Pistola de agua', 'Pistola de agua para lavar vehiculos', 3),
('2', 'Impresora', 'Impresora a láser ', 1),
('3', 'Televisor', 'Televiso SAMSUMG DE 100 PULGADAS FUL 4K ', 1),
('55', 'Ventilador', 'Ventilador marca SAMSUMG de 200.000$ pesos', 5),
('6', 'Linterna', 'Linterna recargable para uso de vigilancia', 7),
('8', 'Mesa de plastico', 'Mesa de plastico de 4 puestos', 5),
('9', 'Olla presion', 'Olla marca Master Chef', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `nficha` int(11) NOT NULL,
  `idprograma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`nficha`, `idprograma`) VALUES
(856425, 1),
(2846574, 1),
(2058400, 5),
(12354, 6),
(7124852, 7),
(852963, 8),
(2854786, 9),
(58921752, 10),
(2147483647, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `idprestamos` int(11) NOT NULL,
  `idequipo` varchar(20) NOT NULL,
  `idaprendiz` varchar(20) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `estadoentrega` varchar(100) DEFAULT NULL,
  `fechamaxima` datetime DEFAULT NULL,
  `fechadevolucion` datetime DEFAULT NULL,
  `estadodevolucion` varchar(100) DEFAULT NULL,
  `usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idprestamos`, `idequipo`, `idaprendiz`, `fecha`, `estadoentrega`, `fechamaxima`, `fechadevolucion`, `estadodevolucion`, `usuario`) VALUES
(1, '6', '10635874152', '2025-06-20 15:52:52', 'Entregado', '2025-06-26 05:04:00', '2025-07-05 06:06:00', 'Devuelto', 'yos'),
(2, '1', '10635874152', '2025-06-20 15:53:45', 'Pendiente', '2025-06-27 03:33:00', '2025-06-30 21:09:00', 'Pendiente', 'yos'),
(3, '2', '85296341852', '2025-06-20 16:02:37', 'Entregado', '2025-06-23 05:05:00', '2025-06-23 21:09:00', 'Devuelto', 'yos'),
(4, '3', '7417417', '2025-06-23 23:21:29', 'Pendiente', '2025-06-26 22:02:00', '2025-06-27 05:05:00', 'Pendiente', 'yos'),
(5, '55', '852741', '2025-06-23 23:51:55', 'Entregado', '2025-06-28 04:04:00', '2025-06-29 04:04:00', 'Pendiente', 'yos'),
(6, '6', '585963', '2025-06-23 23:52:39', 'Entregado', '2025-06-28 07:07:00', '2025-06-30 20:08:00', 'Pendiente', 'yos'),
(7, '9', '963963', '2025-06-23 23:58:25', 'Entregado', '2025-06-25 18:57:00', '2025-08-08 05:05:00', 'Pendiente', 'yos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `idprograma` int(11) NOT NULL,
  `nombreprograma` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`idprograma`, `nombreprograma`) VALUES
(1, 'Analisis y Desarrollo de Software'),
(2, 'Cocina'),
(3, 'Monitoreo ambiental'),
(4, 'Gestión administrativa'),
(5, 'Coordinación de servicios hoteleros'),
(6, 'Excel avanzado'),
(7, 'Inglés básico'),
(8, 'Comercio electrónico'),
(9, 'Auxiliar en logística'),
(10, 'Operario en confección industrial de ropa exterior'),
(11, 'Operario en procesamiento de alimentos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(30) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `nombre`, `password`, `email`) VALUES
('eje', 'nohay', '$2y$10$F.lrBZpLfKZZ9clFARj90eJoAXwB7f3jOtd7rcjwgBGDCCjew4FcK', 'jorgepvpfree@gmail.com'),
('jefe', 'Example', '$2y$10$quJnF8ZeDw0nsMPOhi5/iOrWTw5yd9VYcmmgNRklMXQxpxAUGkk.W', 'prueba@hotmail.com'),
('Profe', 'Paulo Acosta', '$2y$10$sX260RzNB5ndZqHgRoUWx.qIzAUUagQREaL03mAYu9oPlqeBpK4kq', 'pauloacosta@gmail.com'),
('yos', 'yos', '$2y$10$KhT0XdfwPPtixRYiP8oNBu/2E0r0RMg7WeJFxaQuwAHNcMsjrxfuy', 'yos@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`idaprendiz`),
  ADD KEY `fk_aprendiz_ficha1_idx` (`nficha`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idequipo`),
  ADD KEY `fk_equipo_categorias1_idx` (`idcategoria`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`nficha`),
  ADD KEY `fk_ficha_programa_idx` (`idprograma`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`idprestamos`),
  ADD KEY `fk_prestamos_equipo1_idx` (`idequipo`),
  ADD KEY `fk_prestamos_usuarios1_idx` (`usuario`),
  ADD KEY `fk_prestamos_aprendiz1_idx` (`idaprendiz`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`idprograma`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `idprestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `idprograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD CONSTRAINT `fk_aprendiz_ficha1` FOREIGN KEY (`nficha`) REFERENCES `ficha` (`nficha`);

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk_equipo_categorias1` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`);

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `fk_ficha_programa` FOREIGN KEY (`idprograma`) REFERENCES `programa` (`idprograma`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_prestamos_aprendiz1` FOREIGN KEY (`idaprendiz`) REFERENCES `aprendiz` (`idaprendiz`),
  ADD CONSTRAINT `fk_prestamos_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`),
  ADD CONSTRAINT `fk_prestamos_usuarios1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
