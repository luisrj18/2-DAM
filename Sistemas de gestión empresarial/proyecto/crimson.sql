-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2025 a las 13:17:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crimson`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones`
--

CREATE TABLE `aplicaciones` (
  `Identificador` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `icono` varchar(255) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aplicaciones`
--

INSERT INTO `aplicaciones` (`Identificador`, `nombre`, `descripcion`, `icono`, `ruta`, `activa`) VALUES
(1, 'CRM', 'Un CRM es un sistema de gestión de la relación con el cliente. Con este sistema vas a poder realizar un seguimiento de tus clientes y de sus pedidos', 'crm.png', 'crm', 1),
(2, 'CMS', 'Un CMS, o Content Management System, es un sistema de gestión de contenidos donde varias personas de la empresa pueden introducir contenidos en texto', 'cms.png', 'cms', 1),
(4, 'Blog', 'Un blog es un sistema en el cual los usuarios pueden introducir noticias', 'blog.png', 'blog', 1),
(5, 'Blog', 'Un blog es un sistema en el cual los usuarios pueden introducir noticias', 'blog.png', 'blog', 1),
(6, 'Blog', 'Un blog es un sistema en el cual los usuarios pueden introducir noticias', 'blog.png', 'blog', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clavesapi`
--

CREATE TABLE `clavesapi` (
  `Identificador` int(255) NOT NULL,
  `suscriptor` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `cp` varchar(20) NOT NULL,
  `poblacion` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='En esta tabla guardamos los clientes de la aplicacion';

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Identificador`, `nombre`, `apellidos`, `email`, `direccion`, `cp`, `poblacion`, `pais`) VALUES
(10, 'María2', 'Rodríguez2', 'maria.rodriguez@example.com', 'Calle del Sol 5', '41001', 'Sevilla', 'ES'),
(11, 'José2', 'López2', 'jose.lopez@example.com', 'Avenida de América 22', '08001', 'Barcelona', 'ES'),
(23, 'Pedro', 'Muñoz', 'pedro.munoz@example.com', 'Avenida Príncipe 2', '15001', 'A Coruña', 'ES'),
(24, 'Marta', 'Romero', 'marta.romero@example.com', 'Calle Jardines 3', '20001', 'San Sebastián', 'ES'),
(27, 'Juan', 'Domínguez', 'juan.dominguez@example.com', 'Calle Olmos 6', '41018', 'Sevilla', 'ES'),
(29, 'John', 'Doe', 'john.doe@example.com', '123 Main St', '28001', 'Madrid', 'ES'),
(30, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak Ave', '08002', 'Barcelona', 'ES'),
(32, 'Laura', 'Gonzalez', 'laura.gonzalez@example.com', '321 Elm St', '50003', 'Zaragoza', 'ES'),
(34, 'Isabel', 'Lopez', 'isabel.lopez@example.com', '987 Birch Blvd', '33006', 'Oviedo', 'ES'),
(36, 'Andres', 'Perez', 'andres.perez@example.com', '852 Olive Ct', '15008', 'A Coruña', 'ES'),
(37, 'Marta', 'Torres', 'marta.torres@example.com', '963 Maple Pl', '30009', 'Murcia', 'ES'),
(39, 'Ana', 'Ramirez', 'ana.ramirez@example.com', '258 Cherry Ln', '24011', 'León', 'ES'),
(41, 'Paula', 'Navarro', 'paula.navarro@example.com', '111 Palm St', '37013', 'Salamanca', 'ES'),
(42, 'Oscar', 'Castillo', 'oscar.castillo@example.com', '222 Oak Ave', '41014', 'Sevilla', 'ES'),
(43, 'Julia', 'Campos', 'julia.campos@example.com', '333 Cedar Ln', '29015', 'Málaga', 'ES'),
(44, 'Vicente', 'Sanchez', 'vicente.sanchez@example.com', '444 Maple Ct', '46016', 'Valencia', 'ES'),
(45, 'Clara', 'Jimenez', 'clara.jimenez@example.com', '555 Birch Blvd', '08017', 'Barcelona', 'ES'),
(46, 'Rafael', 'Gil', 'rafael.gil@example.com', '666 Olive Ct', '28018', 'Madrid', 'ES'),
(47, 'Teresa', 'Mendez', 'teresa.mendez@example.com', '777 Aspen Rd', '20019', 'San Sebastián', 'ES'),
(48, 'Hugo', 'Ortega', 'hugo.ortega@example.com', '888 Cherry Ln', '08020', 'Barcelona', 'ES'),
(49, 'Manuel', 'Rojas', 'manuel.rojas@example.com', '123 Willow St', '45001', 'Toledo', 'ES'),
(50, 'Sara', 'Medina', 'sara.medina@example.com', '789 Lakeview Ave', '35002', 'Las Palmas', 'ES'),
(51, 'Raul', 'Herrera', 'raul.herrera@example.com', '456 Blossom Rd', '22003', 'Huesca', 'ES'),
(52, 'Lucia', 'Ramos', 'lucia.ramos@example.com', '321 Pine St', '52004', 'Ceuta', 'ES'),
(53, 'Pablo', 'Ortiz', 'pablo.ortiz@example.com', '654 Oak Blvd', '30005', 'Murcia', 'ES'),
(54, 'Patricia', 'Moreno', 'patricia.moreno@example.com', '987 Palm Dr', '28006', 'Madrid', 'ES'),
(55, 'Alberto', 'Vega', 'alberto.vega@example.com', '741 Pine Ct', '41007', 'Sevilla', 'ES'),
(56, 'Andrea', 'Serrano', 'andrea.serrano@example.com', '852 Maple Way', '25008', 'Lleida', 'ES'),
(57, 'Juan', 'Morales', 'juan.morales@example.com', '963 Birch St', '31009', 'Pamplona', 'ES'),
(58, 'Carmen', 'Iglesias', 'carmen.iglesias@example.com', '147 Oak Ln', '50010', 'Zaragoza', 'ES'),
(59, 'Daniel', 'Campos', 'daniel.campos@example.com', '258 Cedar Ave', '36011', 'Ourense', 'ES'),
(60, 'Beatriz', 'Nunez', 'beatriz.nunez@example.com', '369 Maple Dr', '21012', 'Huelva', 'ES'),
(61, 'Santiago', 'Garcia', 'santiago.garcia@example.com', '111 Cherry Pl', '40013', 'Segovia', 'ES'),
(62, 'Maria', 'Reyes', 'maria.reyes@example.com', '222 Willow Ct', '29014', 'Málaga', 'ES'),
(63, 'Jorge', 'Silva', 'jorge.silva@example.com', '333 Palm Ave', '42015', 'Soria', 'ES'),
(64, 'Nuria', 'Castro', 'nuria.castro@example.com', '444 Blossom Blvd', '45016', 'Toledo', 'ES'),
(65, 'Ivan', 'Cruz', 'ivan.cruz@example.com', '555 Lakeview St', '28017', 'Madrid', 'ES'),
(66, 'Claudia', 'Fuentes', 'claudia.fuentes@example.com', '666 Willow Rd', '49018', 'Zamora', 'ES'),
(67, 'Felipe', 'Cabrera', 'felipe.cabrera@example.com', '777 Oak Dr', '33019', 'Oviedo', 'ES'),
(68, 'Elena', 'Molina', 'elena.molina@example.com', '888 Cedar Ln', '08020', 'Barcelona', 'ES'),
(69, 'Laura', 'Garcia', 'laura.garcia@example.com', '123 Palm St', '28001', 'Madrid', 'ES'),
(70, 'Francisco', 'Gomez', 'francisco.gomez@example.com', '456 Cedar Ave', '08002', 'Barcelona', 'ES'),
(71, 'Cristina', 'Santos', 'cristina.santos@example.com', '789 Maple Rd', '29003', 'Málaga', 'ES'),
(72, 'Javier', 'Cortez', 'javier.cortez@example.com', '321 Oak St', '50004', 'Zaragoza', 'ES'),
(73, 'Veronica', 'Roldan', 'veronica.roldan@example.com', '654 Willow Ave', '41005', 'Sevilla', 'ES'),
(74, 'Raquel', 'Ponce', 'raquel.ponce@example.com', '987 Pine Dr', '33006', 'Oviedo', 'ES'),
(75, 'Miguel', 'Bravo', 'miguel.bravo@example.com', '741 Birch Ct', '46007', 'Valencia', 'ES'),
(76, 'Lorena', 'Pena', 'lorena.pena@example.com', '852 Maple Blvd', '15008', 'A Coruña', 'ES'),
(77, 'Jesus', 'Navas', 'jesus.navas@example.com', '963 Cherry St', '30009', 'Murcia', 'ES'),
(78, 'Teresa', 'Lara', 'teresa.lara@example.com', '147 Willow Dr', '41010', 'Sevilla', 'ES'),
(79, 'Fernando', 'Salas', 'fernando.salas@example.com', '258 Palm Rd', '24011', 'León', 'ES'),
(80, 'Daniela', 'Sierra', 'daniela.sierra@example.com', '369 Oak Pl', '01012', 'Vitoria', 'ES'),
(81, 'Ramon', 'Vargas', 'ramon.vargas@example.com', '111 Cedar Ct', '37013', 'Salamanca', 'ES'),
(82, 'Clara', 'Leon', 'clara.leon@example.com', '222 Birch Ave', '28014', 'Madrid', 'ES'),
(83, 'Eva', 'Gutierrez', 'eva.gutierrez@example.com', '333 Maple Dr', '08015', 'Barcelona', 'ES'),
(84, 'Ricardo', 'Lozano', 'ricardo.lozano@example.com', '444 Palm Blvd', '41016', 'Sevilla', 'ES'),
(85, 'Luis', 'Navarro', 'luis.navarro@example.com', '555 Oak Ln', '46017', 'Valencia', 'ES'),
(86, 'Victoria', 'Arias', 'victoria.arias@example.com', '666 Willow Way', '08018', 'Barcelona', 'ES'),
(87, 'Gabriel', 'Campos', 'gabriel.campos@example.com', '777 Pine Blvd', '28019', 'Madrid', 'ES'),
(88, 'Nina', 'Gil', 'nina.gil@example.com', '888 Birch Rd', '47020', 'Valladolid', 'ES'),
(110, 'Luis', 'Rojas Jimenez', 'luisroji.10@gmail.com', 'La calle de Luis', '41710', 'Sevilla', 'ES'),
(111, 'Jose', 'Lopez Sanchez', 'joselosa@gmail.com', 'La calle de Jose', '41006', 'Sevilla', 'ES'),
(123, 'Juan', 'Pérez', 'juan.perez@email.com', 'Calle Falsa 123', '13001', 'Ciudad Real', 'ES'),
(124, 'María', 'López', 'maria.lopez@email.com', 'Avenida Siempre Viva 456', '28001', 'Madrid', 'ES'),
(125, 'Carlos', 'García', 'carlos.garcia@email.com', 'Calle de la Paz 789', '08001', 'Barcelona', 'ES'),
(126, 'Ana', 'Martínez', 'ana.martinez@email.com', 'Boulevard Sol 321', '46001', 'Valencia', 'ES'),
(127, 'Luis', 'Fernández', 'luis.fernandez@email.com', 'Plaza Luna 654', '41001', 'Sevilla', 'ES'),
(128, 'Sofía', 'Gómez', 'sofia.gomez@email.com', 'Calle Estrella 987', '48001', 'Bilbao', 'ES'),
(131, '', '', '', '', '', '', ''),
(141, 'Manuel', 'Perez Martin', 'manupema@gmail.com', 'La calle de Manuel', '56311', 'Rennes', 'Francia'),
(165, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa'),
(166, 'bbb', 'bbbb', 'bbbb', 'bbbb', 'bbbb', 'bbb', 'bbb'),
(167, 'ggg', 'ggg', 'ggg', 'ggg', 'ggg', 'ggg', 'ggg'),
(168, 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd'),
(169, 'ghgf', 'gfhgfh', 'fghfg', 'gfhfg', 'gfhfg', 'fggh', 'gfhfg'),
(170, 'dfggh', 'hjhjghk', 'jhkghjh', 'jhgkgjh', 'jhkjhjh', 'jhjhghj', 'jhkjh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentosaplicaciones`
--

CREATE TABLE `departamentosaplicaciones` (
  `Identificador` int(255) NOT NULL,
  `departamentos_nombre` int(255) NOT NULL,
  `aplicaciones_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedido`
--

CREATE TABLE `lineaspedido` (
  `Identificador` int(11) NOT NULL,
  `pedidos_fecha` int(255) NOT NULL,
  `productos_nombre` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineaspedido`
--

INSERT INTO `lineaspedido` (`Identificador`, `pedidos_fecha`, `productos_nombre`, `cantidad`) VALUES
(1, 1, 1, 1),
(2, 5, 1, 1),
(3, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Identificador` int(255) NOT NULL,
  `fecha` date DEFAULT NULL,
  `clientes_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='En esta tabla guardamos los pedidos que se gestionan en la aplicacion';

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Identificador`, `fecha`, `clientes_nombre`) VALUES
(1, '2024-11-01', 10),
(2, '0000-00-00', 10),
(3, '2024-11-28', 11),
(4, '2024-11-22', 11),
(5, '2024-11-23', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fotografia` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Identificador`, `nombre`, `descripcion`, `precio`, `fotografia`) VALUES
(1, 'Mochila de niño', 'Mochila muy grande', 10.00, NULL),
(3, 'prueba', 'prueba', 20.00, 0x4172726179);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `Identificador` int(255) NOT NULL,
  `epoch` int(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`Identificador`, `epoch`, `ip`, `navegador`, `url`) VALUES
(1, 1736960586, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/109-Cargo%20solo%20las%20tablas%20que%20me%20corresponden/servidor/?o=buscar&tabla=usuarios'),
(2, 1736960592, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/109-Cargo%20solo%20las%20tablas%20que%20me%20corresponden/servidor/?o=tabla&tabla=aplicaciones'),
(3, 1736960604, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/109-Cargo%20solo%20las%20tablas%20que%20me%20corresponden/servidor/?o=buscar&tabla=usuarios'),
(4, 1736960609, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/109-Cargo%20solo%20las%20tablas%20que%20me%20corresponden/servidor/?o=tabla&tabla=aplicaciones'),
(5, 1736962458, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/110-aplicaciones%20por%20usuario/servidor/?o=buscar&tabla=usuarios'),
(6, 1736963304, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '/2DAM/Sistemas%20de%20gesti%c3%b3n%20empresarial/proyecto/112-Cerrar%20sesion%20manual/servidor/?o=buscar&tabla=usuarios');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `seleccion_clientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `seleccion_clientes` (
`nombrecompleto` varchar(201)
,`email` varchar(255)
,`direccion` varchar(255)
,`poblacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablasaplicaciones`
--

CREATE TABLE `tablasaplicaciones` (
  `Identificador` int(255) NOT NULL,
  `aplicaciones_nombre` int(255) NOT NULL,
  `tabla` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `usuario`, `contrasena`, `nombre`, `apellidos`) VALUES
(1, 'luroji', 'luroji', 'Luis', 'Rojas Jiménez');

-- --------------------------------------------------------

--
-- Estructura para la vista `seleccion_clientes`
--
DROP TABLE IF EXISTS `seleccion_clientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `seleccion_clientes`  AS SELECT concat(`clientes`.`nombre`,' ',`clientes`.`apellidos`) AS `nombrecompleto`, `clientes`.`email` AS `email`, `clientes`.`direccion` AS `direccion`, `clientes`.`poblacion` AS `poblacion` FROM `clientes` WHERE `clientes`.`nombre` like '%ma%' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `clavesapi`
--
ALTER TABLE `clavesapi`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `departamentosaplicaciones`
--
ALTER TABLE `departamentosaplicaciones`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `lineaspedidoapedido` (`pedidos_fecha`),
  ADD KEY `lineaspedidoproducto` (`productos_nombre`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `pedidosaclientes` (`clientes_nombre`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `tablasaplicaciones`
--
ALTER TABLE `tablasaplicaciones`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  MODIFY `Identificador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clavesapi`
--
ALTER TABLE `clavesapi`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentosaplicaciones`
--
ALTER TABLE `departamentosaplicaciones`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tablasaplicaciones`
--
ALTER TABLE `tablasaplicaciones`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  ADD CONSTRAINT `lineaspedidoapedido` FOREIGN KEY (`pedidos_fecha`) REFERENCES `pedidos` (`Identificador`),
  ADD CONSTRAINT `lineaspedidoproducto` FOREIGN KEY (`productos_nombre`) REFERENCES `productos` (`Identificador`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidosaclientes` FOREIGN KEY (`clientes_nombre`) REFERENCES `clientes` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
