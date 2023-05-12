-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 12-05-2023 a las 01:31:58
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_Producto` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Unidad` varchar(45) NOT NULL,
  `Existencia` varchar(45) NOT NULL,
  `Costo` varchar(45) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_Producto`, `Nombre`, `Precio`, `Unidad`, `Existencia`, `Costo`, `Descripcion`, `Imagen`) VALUES
(1, 'Coca Cola', '18', '355ml', '80', '2880', 'Bebida azucarada gaseosa.', 'https://i0.wp.com/tuminisuper.mx/wp-content/uploads/2020/09/BYJ34.jpg?fit=600%2C600&ssl=1'),
(2, 'Arizona', '20', '660ml', '80', '3200', 'Jugos de variedad de sabores exoticos.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00061300876528L.jpg'),
(3, 'FuzeTea', '20', '600ml', '20', '800', 'Tés y bebidas de frutas no gaseosas.', 'https://m.media-amazon.com/images/I/61Gj3Fubv1L._AC_SX342_.jpg'),
(4, 'Brownies', '17', '1 pieza', '40', '1360', 'Bizcocho pequeño de chocolate.', 'https://png.pngitem.com/pimgs/s/174-1740888_brownies-png-transparent-png.png'),
(5, 'Gomitas', '15', '100gr', '25', '600', 'Caramelos masticables de azucar con sabores frutales.', 'https://img2.freepng.es/20180629/thk/kisspng-gummy-bear-gummi-candy-gelatin-dessert-cotton-cand-gummy-bears-5b35edec377d51.7035623315302609722273.jpg'),
(6, 'Tamborcitos', '1', '4.5gr', '50', '100', 'Golosinas enchiladas y acidas.', 'https://pinatilandia.com.mx/wp-content/uploads/2020/06/tamborines.jpg'),
(7, 'Pizza', '20', 'Caja', '20', '1980', 'Rebanada de pizza.', 'https://pizzamas.com.mx/wp-content/uploads/2020/07/pizza-mas-pizzas-rebanada.png'),
(8, 'Powerade', '22', '955ml', '15', '270', 'Bebida hidratante con sabores frutales.', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw7a8deeae/images/product/7501055329267_A.jpg?sw=1000&sh=1000&sm=fit'),
(9, 'Onigiri', '35', '1 pieza', '50', '2000', 'Bola de arroz tringular rellena de otros ingredientes.', 'https://www.pngkit.com/png/detail/36-361963_29-images-about-png-icons-on-we-heart.png'),
(10, 'PicaFresa', '1', '1 pieza', '40', '80', 'Gomitas confitadas con chile y azúcar sabor fresa.', 'https://cdn.shopify.com/s/files/1/0372/4450/2149/products/picafresa_gigante_766x460.png?v=1591397660'),
(11, 'Mazapan', '10', '1 pieza', '20', '200', 'Pasta de almendras crudas molidas y azúcar pulverizada.', 'https://cdn.shopify.com/s/files/1/0430/5489/1157/products/Disenosintitulo-2021-05-20T163304.109_23c5de19-c79c-499b-bf75-8378be91896b_900x.png?v=1621565088'),
(12, 'Burritos', '20', '1 pieza', '50', '600', 'Tortilla de harina rellena con carne vacuna deshebrada.', 'https://img2.freepng.es/20190519/iqw/kisspng-mission-burrito-taco-fajita-mexican-cuisine-greek-burritos-recipes-hubs-5ce1e4e07deb18.4770085515583080645158.jpg'),
(13, 'Torta de Bistec', '35', '1 pieza', '30', '510', 'Bolillo relleno de bistec, chile, mayonesa, jitomate y aguacate.', 'https://p.kindpng.com/picc/s/208-2084827_beef-torta-png-download-torta-asada-png-transparent.png'),
(14, 'Hotdogs', '15', '1 pieza', '15', '450', 'Pan con una salchicha, ketchup, mostaza, jitomate y cebolla.', 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c1b7.png'),
(15, 'Cacahuates', '13', '1 pieza', '30', '390', 'Una legumbre salteada.', 'https://http2.mlstatic.com/D_NQ_NP_812917-MLM51408908490_092022-V.jpg'),
(16, 'Troll', '18', '1 pieza', '30', '180', 'Mangonada con chile.', 'https://i.ytimg.com/vi/o0CiNrClEQo/maxresdefault.jpg'),
(17, 'Agua Natural', '12', '1 pieza', '30', '240', 'Agua natural en vaso.', 'https://chedrauimx.vtexassets.com/arquivos/ids/14505506/7501055310883_00.jpg?v=638183315737270000'),
(18, 'Agua de Limon', '18', '1 pieza', '30', '180', 'Agua de limon natural.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105535246L.jpg'),
(19, 'Tacos dorados', '10', '1 pieza', '50', '400', 'Tacos carne dorada.', 'https://lostacosdela6.com/wp-content/uploads/dorados.png'),
(20, 'Molletes', '25', '1 pieza', '20', '180', 'Medio bolillo con frijoles y queso.', 'https://img1.freepng.es/20180405/ske/kisspng-baked-potato-stuffing-french-fries-clip-art-potato-5ac6a9ceb40b79.3395597115229690387375.jpg'),
(21, 'Hielitos', '18', '860gr', '15', '540', 'Nieves de sabores frutales.', 'https://i.pinimg.com/originals/16/7e/de/167ede7ebd5bb8dd8a67f67c774b461c.png'),
(22, 'Coca-cola sin azucar ', '16', '600ml', '50', '1600', 'Bebida gaseosa reducida en azucar.', 'https://cdn.shopify.com/s/files/1/0279/8151/2798/products/RE0200_761x.jpg?v=1600970389'),
(23, 'Muffin de chocolate', '15', '160gr', '25', '750', 'Pan chocolatado con chispas de chocolate. ', 'https://img2.freepng.es/20180812/ra/kisspng-muffin-cupcake-chocolate-brownie-red-velvet-cake-product17-anna-tkach-patisserie-5b70ab31e50a58.4929903115341105139382.jpg'),
(24, 'Pelon mini', '12', '13gr', '15', '390', 'Dulce picoso.', 'https://mandalomarket.com/wp-content/uploads/2022/10/pelon_pelo_rico_719886211713_Mandalo_Market.jpg'),
(25, 'Bubulubu', '10', '20gr', '25', '500', 'Barra de chocolate dulce con mermelada de fresa de relleno.', 'https://farmaciadigitalff-media.azureedge.net/catalog/product/cache/a77266c1abf4147499139dcd165bfd03/0/6/061d96106c57345b586cc101561a74918701d29eef8e266ce00c777b0bc37d1c.jpg'),
(26, 'Tixtix', '6', '11gr', '30', '360', 'Paleta de caramelo con polvos de sabores dulces.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750101117671L.jpg'),
(27, 'Snickers', '15', '52gr', '10', '300', 'Galleta de chocolate de leche rellena de caramelo.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/mg/gm/1p/images/product-images/img_large/00750617451224l.jpg'),
(28, 'Chicles canels', '2', '5gr', '60', '240', 'Chicles de sabores.', 'https://cdn.shopify.com/s/files/1/2164/2083/products/0fee8844bfd22569048d286a18faecc1_800x.png?v=1551231815'),
(29, 'Kankry', '15', '15gr', '25', '750', 'Galleta de chocolate.', 'https://http2.mlstatic.com/D_NQ_NP_983637-MLM49360616564_032022-O.jpg'),
(30, 'Chicles bubbaloo', '2', '5.5gr', '50', '200', 'Chicles sabor fresa.', 'https://candymarket.com.mx/wp-content/uploads/2022/03/Bubbaloo.jpg'),
(31, 'Paleta tarrito', '8', '16gr', '40', '640', 'Caramelo dulce con toques acidos.', 'https://dulces.mx/wp-content/uploads/2019/12/tarritos-mexico-600x400.jpg'),
(33, 'Paleta mini chups', '6', '6gr', '80', '960', 'Caramelo dulce.', 'https://ibarramayoreo.com/images/IMAGENES/44493/02.jpg/A05'),
(34, 'Paleta rockaleta', '11', '24gr', '18', '366', 'Paleta con capas de caramelo enchilado con goma de mascar en el centro.', 'https://s.cornershopapp.com/product-images/1078874.jpg?versionId=RmEd0zKCpnkLPw_jga42JHT2Mrikp81Z'),
(35, 'Chiles clorets', '2', '2.8gr', '60', '240', 'Chicles mentolados.', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw80bde5eb/images/product/7622210595416_A.jpg?sw=1000&sh=1000&sm=fit'),
(36, 'Paleta tutsi pop', '7', '20gr', '50', '700', 'Caramelo de fresa con chicle en el centro.', 'https://m.media-amazon.com/images/I/71CYz68+OgL._AC_UF894,1000_QL80_.jpg'),
(37, 'Halls', ' 14', '25,3 gr', '12', '336', 'Mentas con diferentes sabores.', 'https://cdn.shopify.com/s/files/1/0279/9265/3924/products/ga.png?v=1628950451'),
(38, 'Takis', '15', '62gr', '20', '600', 'Frituras enchiladas.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750103042453L.jpg?odnHeight=264&odnWidth=264&odnBg=FFFFFF'),
(39, 'Duvalin', '5', '15gr', '18', '180', 'Cremas de tres sabores por paquete.', 'https://cdn.shopify.com/s/files/1/0491/0759/9516/products/DUVALIN15GR..jpg?v=1622489679'),
(40, 'Chicles trident', '3', '5.2gr', '40', '240', 'Goma de mascar mentolada.', 'https://www.laranitadelapaz.com.mx/images/thumbs/0005548_chicle-trident-menta-18-paquetes-de-5-piezas_510.jpeg'),
(41, 'Galletas Oreo', '18', '114gr', '15', '540', 'Galletas de chocolate.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00762221083366L.jpg'),
(42, 'Galletas TrikiTrakes', '17', '115gr', '15', '510', 'Galletas de chocolate con chispas de chocolate.', 'https://superfenix.mx/wp-content/uploads/2022/06/7501000140855.jpg'),
(43, 'Galletas Principe', '20', '225gr', '20', '800', 'Galleta dulce con relleno de chocolate.', 'https://detqhtv6m6lzl.cloudfront.net/wp-content/uploads/2021/07/7501000128167-1.jpg'),
(44, 'Rellerindo ', '5', '11gr', '35', '350', 'Dulce de tamarindo con chile.', 'https://cdn.shopify.com/s/files/1/0372/4450/2149/products/rellerindo-dulces-vero_680x680.jpg?v=1600101982'),
(45, 'Jugo del valle', '18', '500ml', '20', '720', 'Bebida azucarada de sabores frutales.', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105535692L.jpg'),
(46, 'Pulparindo', '8', '14gr', '20', '320', 'Barra de tamarindo con chile.', 'https://detqhtv6m6lzl.cloudfront.net/wp-content/uploads/2021/05/725226066660-1.jpg'),
(47, 'Cacahuates Japoneses', '11', '142gr', '30', '660', 'Cacahuates con sal empaquetados.', 'https://cdn.shopify.com/s/files/1/0268/4046/5603/products/CapturadePantalla2020-10-28ala_s_10.36.35_600x.png?v=1603903021'),
(48, 'Rebanada de pastel', '15', '16gr', '16', '480', 'Rebanada de pastel del dia.', 'https://alchef.mx/wp-content/uploads/2020/11/DSF3496.jpg'),
(49, 'Galleta casera', '5', '50gr', '25', '250', 'Galletas de chocolate y matequilla.', 'https://recetadepostres.net/wp-content/uploads/2019/02/Galletas.jpg'),
(50, 'Chocolates ferrero', '6', '12.5 gr', '40', '480', 'Chocolate con una avellana dentro.', 'https://i0.wp.com/magenta.style/wp-content/uploads/2023/01/ferrero-rocher.png?fit=500%2C500&ssl=1'),
(51, 'Cocolate KitKat', '13', '100gr', '10', '260', 'Barra de chocolate de leche.', ''),
(53, 'Chocolate Kiss', '4', '10gr', '30', '240', 'Bolita de chocolate de leche.', ''),
(54, 'Chocolate CarlosV', '16', '25gr', '35', '1120', 'Barra de chocolate de leche.', ''),
(55, 'Skittles', '16', '61.5gr', '25', '800', 'Dulces chiclosos con sabores exoticos.', ''),
(56, 'cheetos', '17', '48gr', '20', '680', 'Frituras de queso.', ''),
(57, 'Doritos', '16', '58gr', '20', '640', 'Frituras de queso con chile.', ''),
(58, 'Sabritas', '15', '45gr', '25', '900', 'Frituras de papa con sal.', ''),
(59, 'Pinguinos', '18', '80gr', '20', '720', 'Panquesitos de chocolate de leche con crema batida.', ''),
(60, 'Donas', '15', '28gr', '20', ' 600', 'Pan dulce con diferentes glaseados o solo azucar.', ''),
(61, 'Danonino', '14', '440gr', '25', '700', 'Yogurt de fresa.', ''),
(62, 'Chips ', '17', '46gr', '25', '850', 'Frituas de papa con chile jalapeño.', ''),
(63, 'Fritos clasicos', '16', '86gr', '20', '640', 'Frituras de harina con sal.', ''),
(64, 'Yakult', '8', '80ml', '35', '560', 'Bebida azucarada.', ''),
(65, 'Maruchan', '22', '64gr', '15', '660', 'Sopa instantanea.', ''),
(66, 'Sandwich', '30', '83gr', '20', '1200', 'Pan con jamon y queso.', ''),
(67, 'Ensaladas', '35', '55gr', '10', '700', 'Charola con lechuga, jitomate y aguacate.', ''),
(68, 'Jugo de naranja', '18', '500ml', '15', '540', 'Jugo natural de la naranja.', ''),
(69, 'Coctel de fruta', '28', '300gr', '15', '840', 'Vaso con vaiedad de fruta picada.', ''),
(70, 'Baguette', '48', '400gr', '25', '2400', 'Baguette con mayonesa, carne, jamon y queso.', ''),
(71, 'Chocos', '18', '300ml', '20', '720', 'Batido de leche, canela y el sabor que eliga el ciente.', ''),
(72, 'Papas a la francesa', '32', '300gr', '20', '1280', 'Papas fritas con queso amarillo derretido.', ''),
(73, 'tacos de guiso', '12', '180gr', '50', '1200', 'Tortilla de maiz con algun guiso casero.', ''),
(74, 'Bolillo de guiso', '34', '250gr', '45', '3060', 'Bolillo con mayonesa relleno de algun guiso.', ''),
(75, 'Palomitas ', '17', '180gr', '15', '510', 'Palomitas de maiz con mantequilla.', ''),
(76, 'Agua embotellada', '17', '1L', '30', '1020', 'Botella de agua.', ''),
(77, 'Café', '15', '200ml', '15', '450', 'Vaso con cafe sin azucar.', ''),
(78, 'Quesadilla', '15', '130gr', '10', '450', 'Tortilla de maiz con queso dentro.', ''),
(79, 'Sincronizada', '20', '200gr', '15', '600', 'Tortilla de maiz con queso,jitomate y aguacate.', ''),
(80, 'Bolis', '12', '100gr', '30', '720', 'Bolsa de hielo con un hielo de sabor frutal.', ''),
(81, 'Monster', '35', '473ml', '20', '1400', 'Bebida energizante.', ''),
(82, 'Gelatina', '15', '150gr', '15', '450', 'Postre dulce empaquetado', ''),
(83, 'Chocolate M&M', '15', '43.8gr', '25', '600', 'Chocolates empaquetados.', ''),
(84, 'Chicles orbit', '1', '4.6gr', '40', '80', 'Paquete de cuatro chicles mentolados.', ''),
(85, 'Chicles Huba bubba', '20', '56.7gr', '15', '600', 'Chicles sabor fresa.', ''),
(86, 'Mini ice', '17', '15gr', '40', '1360', 'Dulce carbonatado congelado.', ''),
(87, 'Lucas Muecas', '9', '35gr', '25', '450', 'Dulce enchilado.', ''),
(88, 'Bocadines', '8', '10.5gr', '40', '640', 'Barra de galleta chocolatada.', ''),
(89, 'Skwuinkles', '14', '19.5gr', '26', '728', 'Gomitas enchiladas.', ''),
(90, 'Bolsa polvo miguelito', '5', '4gr', '40', '400', 'Polvo enchilado con azucar.', ''),
(91, 'Chocolate milky way', '10', '6gr', '15', '300', 'Barra de chocolate con caramelo dentro.', ''),
(92, 'Papas caseras', '25', '35gr', '15', '750', 'Hojas de papas fritas con aderezo.', ''),
(93, 'Pan cuernito', '6', '1 pieza', '10', '120', 'Pan dulce.', ''),
(94, 'Paleta payaso', '12', '45gr', '10', '240', 'Paletas de bombom cubierta de chocolates con gomitas sabor a frutas.', ''),
(95, 'Dulce crayon', '12', '28gr', '20', '480', 'Dulce con sabores frutales.', ''),
(96, 'Chocolate winky', '3', '14gr', '10', '60', 'Barra de nougat y caramelo de leche cubierta con chocolate', ''),
(97, 'Runners', '15', '200gr', '20', '600', 'Frituras enchiladas.', ''),
(98, 'Totis', '12', '15gr', '25', '600', 'Botana de harina con sal.', ''),
(99, 'Churrumais', '15', '200gr', '20', '600', 'Fritura típica con limoncito y chilito.', ''),
(100, 'Sabritones', '16', '260gr', '15', '480', 'Frituras con chile y sal.', ''),
(101, 'Tostitos', '12', '65gr', '30', '720', 'Chips de harina con sal.', ''),
(102, 'Nachos', '16', '100gr', '20', '640', 'Tortilla de maiz frita con queso amarillo derretido.', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
