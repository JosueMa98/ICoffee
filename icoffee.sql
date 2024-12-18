-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2024 a las 05:49:15
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
-- Base de datos: `icoffee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `invitado_id` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `entregado` tinyint(1) DEFAULT 0,
  `tipo_entrega` varchar(50) DEFAULT 'Recoger',
  `edificio` varchar(50) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT 'Efectivo',
  `tiempo_estimado` int(11) DEFAULT NULL,
  `tipo_usuario` enum('usuario','invitado') DEFAULT 'usuario',
  `confirmado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `usuario_id`, `invitado_id`, `fecha`, `entregado`, `tipo_entrega`, `edificio`, `metodo_pago`, `tiempo_estimado`, `tipo_usuario`, `confirmado`) VALUES
(1, 2, NULL, '2024-11-27 04:38:45', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(2, 2, NULL, '2024-11-27 05:46:49', 1, 'Recoger', NULL, 'Efectivo', 1, 'usuario', 0),
(3, 2, NULL, '2024-11-27 05:51:11', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(4, 2, NULL, '2024-11-27 05:56:29', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(5, 2, NULL, '2024-11-27 06:05:47', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(6, 2, NULL, '2024-11-27 06:05:51', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(7, 2, NULL, '2024-11-27 06:06:29', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(8, 2, NULL, '2024-11-27 06:07:47', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(9, 2, NULL, '2024-11-27 06:21:12', 1, 'Entrega', 'Edificio A', 'Efectivo', NULL, 'usuario', 0),
(10, 2, NULL, '2024-11-27 06:25:19', 1, 'Entrega', 'Edificio B', 'Efectivo', NULL, 'usuario', 0),
(11, 2, NULL, '2024-11-27 06:38:45', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(12, 2, NULL, '2024-11-27 06:39:00', 1, 'Entrega', 'Edificio C', 'Efectivo', NULL, 'usuario', 0),
(13, 3, NULL, '2024-11-27 06:40:27', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(14, 3, NULL, '2024-11-27 06:40:43', 1, 'Recoger', NULL, 'PayPal', NULL, 'usuario', 0),
(20, 3, NULL, '2024-11-27 07:16:56', 1, 'Recoger', NULL, 'Efectivo', NULL, 'invitado', 0),
(21, 2, NULL, '2024-11-27 07:26:04', 1, 'Entrega', 'Edificio A', 'PayPal', 10, 'usuario', 0),
(31, NULL, 6, '2024-11-27 08:38:52', 1, 'Entrega', 'Edificio B', 'Efectivo', NULL, 'invitado', 0),
(32, NULL, 7, '2024-11-27 08:51:32', 1, 'Entrega', 'Edificio C', 'Efectivo', NULL, 'invitado', 0),
(33, NULL, 8, '2024-11-27 08:54:04', 1, 'Recoger', NULL, 'Efectivo', NULL, 'invitado', 0),
(34, 4, NULL, '2024-11-27 09:30:17', 1, 'Entrega', 'Edificio C', 'Efectivo', NULL, 'usuario', 0),
(35, 2, NULL, '2024-11-27 09:31:27', 1, 'Entrega', 'Edificio B', 'Efectivo', NULL, 'usuario', 0),
(36, 2, NULL, '2024-11-27 09:36:07', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(37, 2, NULL, '2024-11-27 09:36:18', 1, 'Recoger', NULL, 'Efectivo', 10, 'usuario', 0),
(38, 4, NULL, '2024-11-27 09:37:36', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(39, 4, NULL, '2024-11-27 09:37:44', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(40, 6, NULL, '2024-11-27 09:38:20', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(41, 6, NULL, '2024-11-27 09:38:39', 1, 'Entrega', 'Edificio B', 'PayPal', NULL, 'usuario', 0),
(42, 2, NULL, '2024-11-29 17:43:43', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(43, 2, NULL, '2024-11-29 17:44:01', 1, 'Recoger', NULL, 'Efectivo', 5, 'usuario', 1),
(44, 3, NULL, '2024-11-29 17:44:55', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 0),
(45, 3, NULL, '2024-11-29 17:46:24', 1, 'Entrega', 'Edificio A', 'PayPal', NULL, 'usuario', 1),
(46, 2, NULL, '2024-11-29 17:54:46', 1, 'Recoger', NULL, 'Efectivo', 10, 'usuario', 1),
(47, 4, NULL, '2024-11-29 18:45:54', 1, 'Entrega', 'Edificio B', 'Efectivo', 10, 'usuario', 1),
(48, 2, NULL, '2024-11-29 20:11:44', 1, 'Entrega', 'Edificio C', 'PayPal', 20, 'usuario', 1),
(49, 4, NULL, '2024-12-09 17:57:57', 1, 'Entrega', 'Edificio B', 'Efectivo', NULL, 'usuario', 1),
(50, 7, NULL, '2024-12-09 18:29:21', 1, 'Recoger', NULL, 'Efectivo', NULL, 'usuario', 1),
(51, 10, NULL, '2024-12-12 15:54:00', 0, 'Entrega', 'Edificio B', 'Efectivo', 15, 'usuario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_detalle`
--

CREATE TABLE `carrito_detalle` (
  `id` int(11) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `nota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrito_detalle`
--

INSERT INTO `carrito_detalle` (`id`, `carrito_id`, `producto_id`, `cantidad`, `precio_unitario`, `nota`) VALUES
(7, 1, 1, 1, 90.00, NULL),
(8, 1, 2, 1, 20.00, NULL),
(9, 1, 1, 1, 90.00, NULL),
(10, 2, 4, 1, 18.00, NULL),
(11, 3, 1, 1, 90.00, NULL),
(12, 4, 1, 1, 90.00, NULL),
(13, 4, 2, 1, 20.00, NULL),
(14, 5, 1, 1, 90.00, NULL),
(15, 6, 1, 1, 90.00, NULL),
(16, 6, 2, 1, 20.00, NULL),
(17, 7, 1, 1, 90.00, NULL),
(18, 7, 2, 1, 20.00, NULL),
(20, 8, 2, 1, 20.00, NULL),
(21, 9, 2, 1, 20.00, NULL),
(22, 10, 2, 1, 20.00, NULL),
(23, 11, 1, 1, 90.00, 'sin cebolla'),
(24, 11, 2, 1, 20.00, NULL),
(25, 12, 1, 1, 90.00, 'sin cebolla'),
(26, 12, 2, 1, 20.00, NULL),
(28, 13, 6, 1, 25.00, NULL),
(29, 13, 5, 1, 20.00, NULL),
(30, 14, 6, 1, 25.00, NULL),
(31, 14, 5, 1, 20.00, NULL),
(33, 20, 2, 1, 20.00, NULL),
(34, 12, 1, 1, 90.00, 'sin cebolla'),
(35, 12, 6, 1, 25.00, NULL),
(36, 21, 1, 1, 90.00, 'sin cebolla'),
(37, 21, 2, 1, 20.00, NULL),
(38, 21, 1, 1, 90.00, 'sin cebolla'),
(39, 21, 6, 1, 25.00, NULL),
(43, 31, 2, 1, 20.00, NULL),
(44, 32, 8, 1, 18.00, NULL),
(45, 33, 7, 1, 18.00, NULL),
(46, 34, 1, 1, 90.00, NULL),
(47, 34, 2, 1, 20.00, NULL),
(48, 35, 4, 1, 18.00, NULL),
(49, 35, 9, 1, 22.00, NULL),
(50, 36, 5, 1, 20.00, NULL),
(51, 36, 4, 1, 18.00, NULL),
(52, 37, 5, 1, 20.00, NULL),
(53, 37, 4, 1, 18.00, NULL),
(55, 38, 15, 1, 25.00, NULL),
(56, 39, 15, 1, 25.00, NULL),
(57, 40, 13, 1, 20.00, NULL),
(58, 41, 13, 1, 20.00, NULL),
(59, 42, 2, 1, 20.00, NULL),
(60, 42, 4, 1, 18.00, NULL),
(65, 45, 33, 1, 90.00, 'sin'),
(66, 43, 2, 1, 20.00, NULL),
(68, 45, 29, 1, 90.00, 'sin crema'),
(69, 45, 18, 3, 30.00, NULL),
(71, 47, 6, 1, 25.00, 'sin'),
(73, 49, 10, 1, 10.00, NULL),
(75, 50, 7, 1, 18.00, NULL),
(76, 48, 35, 1, 80.00, NULL),
(77, 48, 5, 1, 20.00, NULL),
(78, 51, 3, 1, 45.00, NULL),
(79, 51, 4, 1, 18.00, NULL),
(80, 51, 29, 1, 90.00, 'sin cebolla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id` int(11) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id`, `celular`, `fecha_registro`) VALUES
(1, '6674159532', '2024-11-27 06:54:18'),
(2, '6674159532', '2024-11-27 07:10:40'),
(3, '6674159532', '2024-11-27 07:10:47'),
(4, '6674159532', '2024-11-27 07:29:24'),
(5, '6672102080', '2024-11-27 07:30:22'),
(6, '6674129682', '2024-11-27 07:30:42'),
(7, '6672303030', '2024-11-27 08:51:23'),
(8, '6672303030', '2024-11-27 08:53:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `disponible`) VALUES
(2, 'Agua', 20.00, 'Botella de agua de 500ml.', 'imagenes/agua2.jpg', 1),
(3, 'Burrito', 45.00, 'Delicioso burrito de carne deshebrada y vegetales.', 'imagenes/Burrito.jpeg', 1),
(4, 'Chetos Flama', 18.00, 'Bolsa de Chetos Flama, sabor intenso.', 'imagenes/Chetos_flama.jpeg', 1),
(5, 'Coca-Cola', 20.00, 'Lata de Coca-Cola de 355ml.', 'imagenes/Coca.jpeg', 1),
(6, 'Dona', 25.00, 'Dona glaseada con chispas de chocolate.', 'imagenes/Dona.jpeg', 1),
(7, 'Doritos Dinamita', 18.00, 'Bolsa de Doritos Dinamita sabor chile y limón.', 'imagenes/Doritos_dinamita.jpeg', 1),
(8, 'Doritos Rojos', 18.00, 'Bolsa de Doritos Nacho de 45g.', 'imagenes/Doritos_rojos.jpeg', 1),
(9, 'Jaztea', 22.00, 'Botella de Jaztea sabor durazno.', 'imagenes/Jaztea.jpeg', 1),
(10, 'Orbit', 10.00, 'Chicles Orbit menta sin azúcar.', 'imagenes/Orbit.jpeg', 1),
(11, 'Papas', 35.00, 'Papas fritas con aderezo.', 'imagenes/Papas.jpeg', 1),
(12, 'Rufles', 18.00, 'Bolsa de papas Rufles sabor queso.', 'imagenes/Rufles.jpeg', 1),
(13, 'Tostitos', 20.00, 'Bolsa de Tostitos salsa verde.', 'imagenes/Tostitos.jpeg', 1),
(14, 'Adobadas', 18.00, 'Bolsa de papas sabor adobadas.', 'imagenes/adobadas.jpg', 1),
(15, 'Banderillas', 25.00, 'Deliciosas banderillas empanizadas.', 'imagenes/banderillas.jpg', 1),
(16, 'Doritos Negros', 20.00, 'Doritos Negros sabor intenso.', 'imagenes/doritosnegros.jpg', 1),
(17, 'Emperador Chocolate', 30.00, 'Galletas Emperador rellenas de chocolate.', 'imagenes/empcho.jpg', 1),
(18, 'Emperador Combinado', 30.00, 'Galletas Emperador rellenas de chocolate y vainilla.', 'imagenes/empcom.jpg', 1),
(19, 'Emperador Nuez', 35.00, 'Galletas Emperador rellenas de nuez.', 'imagenes/empnuez.jpg', 1),
(20, 'Enredos', 22.00, 'Enredos crujientes sabor natural.', 'imagenes/enredos.jpg', 1),
(21, 'Maravillas', 18.00, 'Galletas Maravillas con relleno.', 'imagenes/maravillas.jpg', 1),
(22, 'paketaxo', 22.00, 'Paketaxo: una mezcla perfecta de botanas.', 'imagenes/paketaxo.jpg', 1),
(23, 'Quesadillas', 40.00, 'Quesadillas hechas al momento.', 'imagenes/quesadillas.jpg', 1),
(24, 'Sabritas', 18.00, 'Bolsa de Sabritas clásicas.', 'imagenes/sabritas.jpg', 1),
(25, 'Sabritas Flaming hot', 20.00, '60 gr', 'imagenes/sabritasmoradas.jpg', 1),
(26, 'Sándwich', 35.00, 'Sándwich de jamón con queso.', 'imagenes/sandwitch.jpg', 1),
(27, 'Emperador Senzo', 25.00, 'Botana Senzo crujiente y salada.', 'imagenes/senzo.jpg', 1),
(29, 'Chilaquiles', 90.00, 'Deliciosos', 'imagenes/chilaquiles.jpg', 1),
(30, 'Torta ahogada', 85.00, 'Con jamon y queso', 'imagenes/torta.jpg', 1),
(31, 'Molletes', 60.00, 'Dos molletes con frijol puerco y queso chihuahua', 'imagenes/molletes.jpg', 1),
(32, 'Jugo jumex', 20.00, '355ml', 'imagenes/jugo.jpg', 1),
(33, 'Hamburguesa', 90.00, '150 gr arrachera, queso, verduras y mezcla de aderezos', 'imagenes/hamburguesa.jpg', 1),
(34, 'Ensalada', 70.00, 'De pollo y tomate', 'imagenes/ensalada.jpg', 1),
(35, 'Flautas', 80.00, 'flautas tipicas de cdmx', 'imagenes/flautas.jpg', 1),
(37, 'Tacos al pastor', 90.00, 'Orden de 3 tacos', 'imagenes/tacos.webp', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `numero_control` char(8) NOT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `contrasena` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `numero_control`, `celular`, `contrasena`) VALUES
(1, '00000000', '6674129682', '123'),
(2, '20171583', '6672102080', '123'),
(3, '20171586', '6674159532', '123'),
(4, '11111111', '6672303030', '123'),
(6, '11111111', '6672303031', '123'),
(7, '11111111', '6672606060', '123'),
(8, '20171588', '6674252525', '123'),
(9, '20171580', '6672404040', '123'),
(10, '11111111', '6672858585', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `fk_invitado_id` (`invitado_id`);

--
-- Indices de la tabla `carrito_detalle`
--
ALTER TABLE `carrito_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_id` (`carrito_id`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `celular` (`celular`),
  ADD UNIQUE KEY `numero_control_2` (`numero_control`,`celular`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `carrito_detalle`
--
ALTER TABLE `carrito_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_invitado_id` FOREIGN KEY (`invitado_id`) REFERENCES `invitados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `carrito_detalle`
--
ALTER TABLE `carrito_detalle`
  ADD CONSTRAINT `carrito_detalle_ibfk_1` FOREIGN KEY (`carrito_id`) REFERENCES `carrito` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
