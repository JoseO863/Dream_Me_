-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 23:41:30
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

# DROP DATABASE STORE;
-- -----------------------------------------------------
-- ESTRUCTURA STORE
-- -----------------------------------------------------
CREATE DATABASE STORE DEFAULT CHARACTER SET utf8 ;
USE STORE ;

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Alejo57', 'f993cc50e693130d91721bdd6157cdb6'),
(12, 'andres', '7c088727eb7948dbd2756a9c27de7571');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('001', 'Chaqueta beisbolera hombre', 'Deportivo'),
('002', 'Chaqueta beisbolera mujer', 'Deportivo'),
('003', 'Jeans hombre', 'Casual'),
('004', 'Jeans de mujer', 'Elegantes y casuales'),
('005', 'Blusas de mujer', 'Situcion casual'),
('006', 'Camisas hombre manga larga', 'Situacion casual'),
('007', 'Camisas hombre manga corta', 'Situacion casual'),
('008', 'Camiseta hombre', 'Tipo polo'),
('009', 'Chaqueta hombre casual', 'Situacion casual y elegante'),
('010', 'Top mujer', 'Escotados, elegantes, casuales'),
('011', 'Vestido mujer', 'Casual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('1000473620', 'davi', 'david', 'diaz', '4aa606997465fd6fc4e825ff8695fcdf', 'calle 52 # 32 -34', '3125351239', 'alee@gmail.com'),
('111100001111', 'cristian', 'Cristian', 'Murcia', '81dc9bdb52d04dc20036dbd8313ed055', 'fatima', '3101110000|', 'djcrissguzman@gmaill.com'),
('11111111', 'EJEMPLO', 'EJEMPLoooooo', 'EJEMPLO', '8f37c42895e84932ee690428df86cd1d', 'el carmen', '764586398589', 'EJEMPLO@GMAIL.COM'),
('3333333', 'ejemplo2', 'jhbfs', 'kbgljbsl', 'c1a2cffb24ed92823e966e1af12dd045', 'fatima', '45356', 'notiene@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '12345678910', 'Banco agropecuario', 'Alejandro Diaz Quimbaya', 'Cuenta de Ahorros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(8, '106', 1, '179550.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(6, '0001', 'Blusa elegante a cuadros', '005', '75000.00', 5, 'bls-01', 'sara', 5, '8976794651', '0001.jpg', 'admin', 'Activo'),
(7, '0002', 'Blusa elegante cuello V', '005', '80000.00', 5, 'bls-02', 'FDS', 5, '8927993781', '0002.jpg', 'admin', 'Activo'),
(8, '0003', 'Blusa Elegante', '005', '120.00', 5, 'bls-03', 'Sara', 5, '8976794651', '0003.jpg', 'admin', 'Activo'),
(9, '0004', 'Blusa casual azul', '005', '130.00', 60, 'bls-04', 'Koaj', 5, '9807683541', '0004.jpg', 'admin', 'Activo'),
(10, '0005', 'Body negro en malla', '005', '35900.00', 10, 'bls-05', 'FDS', 5, '8927993781', '0005.jpg', 'admin', 'Activo'),
(11, '0006', 'Blusa popenina marron', '005', '58900.00', 2, 'bls-06', 'Rosktar', 5, '8927993781', '0006.jpg', 'admin', 'Activo'),
(15, '001', 'Camisa manga larga', '006', '75000.00', 10, 'cms-01', 'Koaj', 5, '9807683541', '001.jpg', 'admin', 'Activo'),
(16, '002', 'Camisa cuadros blanco y negro', '006', '80000.00', 5, 'cms-02', 'kenzon', 5, '8907862541', '002.jpg', 'admin', 'Activo'),
(23, '005', 'Camisa cuadros', '006', '120.00', 10, 'Cms-005', 'Koaj', 5, '9807683541', '005.jpg', 'admin', 'Activo'),
(24, '006', 'Camisa color bino tinto', '006', '120.00', 10, 'Cms-006', 'kenzon', 5, '8907862541', '006.jpg', 'admin', 'Activo'),
(25, '010', 'Camisa casual de hojas', '007', '109000.00', 5, 'Cms_c01', 'Koaj', 5, '9807683541', '010.jpg', 'admin', 'Activo'),
(26, '011', 'Camisa Elegante Negra', '007', '99000.00', 5, 'Cms_c02', 'kenzon', 8, '8907862541', '011.jpg', 'admin', 'Activo'),
(27, '012', 'Camisa Elegante colores azules', '007', '79000.00', 5, 'Cms_c03', 'Koaj', 3, '9807683541', '012.jpg', 'admin', 'Activo'),
(28, '014', 'Camisa Casual colores rojos', '007', '79000.00', 5, 'Cms_c04', 'Koaj', 3, '9807683541', '014.jpg', 'admin', 'Activo'),
(29, '015', 'Camisa elegante color bino tin', '007', '69000.00', 5, 'Cms_c05', 'kenzon', 5, '8907862541', '015.jpg', 'admin', 'Activo'),
(30, '016', 'Camisa a rayas anaranjada', '007', '79000.00', 5, 'Cms_c06', 'Rosktar', 5, '9807683541', '016.jpg', 'admin', 'Activo'),
(31, '050', 'Camiseta tipo polo negra', '008', '69000.00', 5, 'Art-01', 'Armatura', 10, '8917826751', '050.jpg', 'admin', 'Activo'),
(32, '051', 'Camiseta tipo polo azul', '008', '69000.00', 5, 'Art-02', 'kenzon', 5, '8907862541', '051.jpg', 'admin', 'Activo'),
(33, '053', 'Camiseta Polo Race', '008', '99000.00', 5, 'Pl-01', 'Polo', 3, '8908679210', '053.jpg', 'admin', 'Activo'),
(34, '054', 'Camiseta Tipo Polo Casual', '008', '79000.00', 5, 'cmk-01', 'kenzon', 5, '8907862541', '054.jpg', 'admin', 'Activo'),
(35, '055', 'Camiseta Polo Club', '008', '109000.00', 5, 'Pl-02', 'Polo', 4, '8908679210', '055.jpg', 'admin', 'Activo'),
(36, '056', 'Camiseta Tipo Polo Gris', '008', '79000.00', 5, 'cmk-02', 'kenzon', 5, '8907862541', '056.jpg', 'admin', 'Activo'),
(37, '101', 'Beisbolera roja', '001', '129000.00', 5, 'B01', 'Rosktar', 5, '8907862541', '101.jpg', 'admin', 'Activo'),
(38, '102', 'Beisbolera no label', '001', '159000.00', 5, 'B02', 'No label', 1, '8907862541', '102.jpg', 'admin', 'Activo'),
(39, '103', 'Beisbolera Slud', '001', '159000.00', 5, 'B03', 'Rosktar', 5, '8907862541', '103.jpg', 'admin', 'Activo'),
(40, '104', 'Beisbolera Black', '001', '139000.00', 10, 'Bk-01', 'Koaj', 5, '9807683541', '104.jpg', 'admin', 'Activo'),
(41, '105', 'Beisbolera New york', '001', '139000.00', 5, 'Bk-02', 'Rosktar', 5, '8907862541', '105.jpg', 'admin', 'Activo'),
(42, '106', 'Beisbolera Anarqui', '001', '189000.00', 5, 'Bk-03', 'Rosktar', 1, '8907862541', '106.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('8907862541', 'Kenzon sas', 'calle 67 # 14 7 Bogota', '6965734', 'https://www.kenzon.com.co'),
('8908679210', 'Polo Club', 'Calle 129  # 21 # 98', '7865652', 'https://www.poloclub.com.co'),
('8917826751', 'ArmaTura', 'Calle 79 # 07 - 46', '8797682', 'https://www.armatura.com.es'),
('8927993781', 'Fuera de Serie (FDS)', 'carrera 23 # 46 26 Bogota', '7869876', 'https://www.fds.com.co'),
('8976794651', 'Sara sas', 'calle 13 # 56 - 23', '7834652', 'https://www.sara.com.co'),
('9807683541', 'Koaj sas', 'calle 89 # 23 67 Bogota', '8765876', 'https://www.Koaj.com.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(8, '27-03-2023', '11111111', '179550.00', 'Enviado', '3452563', 'Envio Por Currier', 'comprobante_1.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
