-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 19-05-2023 a las 11:51:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito_martin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `id_Producto` int(11) NOT NULL,
  `Unidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `id_Folio` int(11) NOT NULL,
  `id_Producto` int(11) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado`
--

CREATE TABLE `encabezado` (
  `Folio` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` varchar(45) NOT NULL,
  `Estatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Medida` varchar(45) NOT NULL,
  `Unidad` varchar(45) NOT NULL,
  `Existencia` varchar(45) NOT NULL,
  `Costo` varchar(45) NOT NULL,
  `Descripcion` varchar(90) NOT NULL,
  `Categoria` varchar(45) NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `Nombre`, `Precio`, `Medida`, `Unidad`, `Existencia`, `Costo`, `Descripcion`, `Categoria`, `Imagen`) VALUES
(1, 'Coca Cola', '18', '355ml', '1', '80', '18', 'Bebida azucarada gaseosa.', 'Bebida', 'https://i0.wp.com/tuminisuper.mx/wp-content/uploads/2020/09/BYJ34.jpg?fit=600%2C600&ssl=1'),
(2, 'Arizona', '20', '660ml', '1', '80', '20', 'Jugos de variedad de sabores exoticos.', 'Bebida', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00061300876528L.jpg'),
(3, 'FuzeTea', '20', '600ml', '1', '20', '20', 'Tés y bebidas de frutas no gaseosas.', 'Bebida', 'https://m.media-amazon.com/images/I/61Gj3Fubv1L._AC_SX342_.jpg'),
(4, 'Brownies', '17', '1 pieza', '1', '40', '17', 'Bizcocho pequeño de chocolate.', 'Golosina', 'https://png.pngitem.com/pimgs/s/174-1740888_brownies-png-transparent-png.png'),
(5, 'Gomitas', '15', '100gr', '1', '25', '15', 'Caramelos masticables de azucar con sabores frutales.', 'Golosina', 'https://img2.freepng.es/20180629/thk/kisspng-gummy-bear-gummi-candy-gelatin-dessert-cotton-cand-gummy-bears-5b35edec377d51.7035623315302609722273.jpg'),
(6, 'Tamborcitos', '1', '4.5gr', '1', '50', '1', 'Golosinas enchiladas y acidas.', 'Golosina', 'https://pinatilandia.com.mx/wp-content/uploads/2020/06/tamborines.jpg'),
(7, 'Pizza', '20', 'Caja', '1', '20', '20', 'Rebanada de pizza.', 'Comida', 'https://pizzamas.com.mx/wp-content/uploads/2020/07/pizza-mas-pizzas-rebanada.png'),
(8, 'Powerade', '22', '955ml', '1', '15', '22', 'Bebida hidratante con sabores frutales.', 'Bebida', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw7a8deeae/images/product/7501055329267_A.jpg?sw=1000&sh=1000&sm=fit'),
(9, 'Onigiri', '35', '1 pieza', '1', '50', '35', 'Bola de arroz tringular rellena de otros ingredientes.', 'Comida', 'https://www.pngkit.com/png/detail/36-361963_29-images-about-png-icons-on-we-heart.png'),
(10, 'PicaFresa', '1', '1 pieza', '1', '40', '1', 'Gomitas confitadas con chile y azúcar sabor fresa.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0372/4450/2149/products/picafresa_gigante_766x460.png?v=1591397660'),
(11, 'Mazapan', '10', '1 pieza', '1', '20', '10', 'Pasta de almendras crudas molidas y azúcar pulverizada.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0430/5489/1157/products/Disenosintitulo-2021-05-20T163304.109_23c5de19-c79c-499b-bf75-8378be91896b_900x.png?v=1621565088'),
(12, 'Burritos', '20', '1 pieza', '1', '50', '20', 'Tortilla de harina rellena con carne vacuna deshebrada.', 'Comida', 'https://img2.freepng.es/20190519/iqw/kisspng-mission-burrito-taco-fajita-mexican-cuisine-greek-burritos-recipes-hubs-5ce1e4e07deb18.4770085515583080645158.jpg'),
(13, 'Torta de Bistec', '35', '1 pieza', '1', '30', '35', 'Bolillo relleno de bistec, chile, mayonesa, jitomate y aguacate.', 'Comida', 'https://p.kindpng.com/picc/s/208-2084827_beef-torta-png-download-torta-asada-png-transparent.png'),
(14, 'Hotdogs', '15', '1 pieza', '1', '15', '15', 'Pan con una salchicha, ketchup, mostaza, jitomate y cebolla.', 'Comida', 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c1b7.png'),
(15, 'Cacahuates', '13', '1 pieza', '1', '30', '13', 'Una legumbre salteada.', 'Golosina', 'https://http2.mlstatic.com/D_NQ_NP_812917-MLM51408908490_092022-V.jpg'),
(16, 'Troll', '18', '1 pieza', '1', '30', '18', 'Mangonada con chile.', 'Golosina', 'https://i.ytimg.com/vi/o0CiNrClEQo/maxresdefault.jpg'),
(17, 'Agua Natural', '12', '1 pieza', '1', '30', '12', 'Agua natural en vaso.', 'Bebida', 'https://chedrauimx.vtexassets.com/arquivos/ids/14505506/7501055310883_00.jpg?v=638183315737270000'),
(18, 'Agua de Limon', '18', '1 pieza', '1', '30', '18', 'Agua de limon natural.', 'Bebida', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105535246L.jpg'),
(19, 'Tacos dorados', '10', '1 pieza', '1', '50', '10', 'Tacos carne dorada.', 'Comida', 'https://lostacosdela6.com/wp-content/uploads/dorados.png'),
(20, 'Molletes', '25', '1 pieza', '1', '20', '25', 'Medio bolillo con frijoles y queso.', 'Comida', 'https://img1.freepng.es/20180405/ske/kisspng-baked-potato-stuffing-french-fries-clip-art-potato-5ac6a9ceb40b79.3395597115229690387375.jpg'),
(21, 'Hielitos', '18', '860gr', '1', '15', '18', 'Nieves de sabores frutales.', 'Golosina', 'https://i.pinimg.com/originals/16/7e/de/167ede7ebd5bb8dd8a67f67c774b461c.png'),
(22, 'Coca-cola sin azucar ', '16', '600ml', '1', '50', '16', 'Bebida gaseosa reducida en azucar.', 'Bebida', 'https://cdn.shopify.com/s/files/1/0279/8151/2798/products/RE0200_761x.jpg?v=1600970389'),
(23, 'Muffin de chocolate', '15', '160gr', '1', '25', '15', 'Pan chocolatado con chispas de chocolate. ', 'Golosina', 'https://img2.freepng.es/20180812/ra/kisspng-muffin-cupcake-chocolate-brownie-red-velvet-cake-product17-anna-tkach-patisserie-5b70ab31e50a58.4929903115341105139382.jpg'),
(24, 'Pelon mini', '12', '13gr', '1', '15', '12', 'Dulce picoso.', 'Golosina', 'https://mandalomarket.com/wp-content/uploads/2022/10/pelon_pelo_rico_719886211713_Mandalo_Market.jpg'),
(25, 'Bubulubu', '10', '20gr', '1', '25', '10', 'Barra de chocolate dulce con mermelada de fresa de relleno.', 'Golosina', 'https://farmaciadigitalff-media.azureedge.net/catalog/product/cache/a77266c1abf4147499139dcd165bfd03/0/6/061d96106c57345b586cc101561a74918701d29eef8e266ce00c777b0bc37d1c.jpg'),
(26, 'Tixtix', '6', '11gr', '1', '30', '6', 'Paleta de caramelo con polvos de sabores dulces.', 'Golosina', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750101117671L.jpg'),
(27, 'Snickers', '15', '52gr', '1', '10', '15', 'Galleta de chocolate de leche rellena de caramelo.', 'Golosina', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/mg/gm/1p/images/product-images/img_large/00750617451224l.jpg'),
(28, 'Chicles canels', '2', '5gr', '1', '60', '2', 'Chicles de sabores.', 'Golosina', 'https://cdn.shopify.com/s/files/1/2164/2083/products/0fee8844bfd22569048d286a18faecc1_800x.png?v=1551231815'),
(29, 'Kankry', '15', '15gr', '1', '25', '15', 'Galleta de chocolate.', 'Golosina', 'https://http2.mlstatic.com/D_NQ_NP_983637-MLM49360616564_032022-O.jpg'),
(30, 'Chicles bubbaloo', '2', '5.5gr', '1', '50', '2', 'Chicles sabor fresa.', 'Golosina', 'https://candymarket.com.mx/wp-content/uploads/2022/03/Bubbaloo.jpg'),
(31, 'Paleta tarrito', '8', '16gr', '1', '40', '8', 'Caramelo dulce con toques acidos.', 'Golosina', 'https://dulces.mx/wp-content/uploads/2019/12/tarritos-mexico-600x400.jpg'),
(33, 'Paleta mini chups', '6', '6gr', '1', '80', '6', 'Caramelo dulce.', 'Golosina', 'https://ibarramayoreo.com/images/IMAGENES/44493/02.jpg/A05'),
(34, 'Paleta rockaleta', '11', '24gr', '1', '18', '11', 'Paleta con capas de caramelo enchilado con goma de mascar en el centro.', 'Golosina', 'https://s.cornershopapp.com/product-images/1078874.jpg?versionId=RmEd0zKCpnkLPw_jga42JHT2Mrikp81Z'),
(35, 'Chiles clorets', '2', '2.8gr', '1', '60', '2', 'Chicles mentolados.', 'Golosina', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw80bde5eb/images/product/7622210595416_A.jpg?sw=1000&sh=1000&sm=fit'),
(36, 'Paleta tutsi pop', '7', '20gr', '1', '50', '7', 'Caramelo de fresa con chicle en el centro.', 'Golosina', 'https://m.media-amazon.com/images/I/71CYz68+OgL._AC_UF894,1000_QL80_.jpg'),
(37, 'Halls', ' 14', '25,3 gr', '1', '12', '14', 'Mentas con diferentes sabores.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0279/9265/3924/products/ga.png?v=1628950451'),
(38, 'Takis', '15', '62gr', '1', '20', '15', 'Frituras enchiladas.', 'Golosina', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750103042453L.jpg?odnHeight=264&odnWidth=264&odnBg=FFFFFF'),
(39, 'Duvalin', '5', '15gr', '1', '18', '5', 'Cremas de tres sabores por paquete.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0491/0759/9516/products/DUVALIN15GR..jpg?v=1622489679'),
(40, 'Chicles trident', '3', '5.2gr', '1', '40', '3', 'Goma de mascar mentolada.', 'Golosina', 'https://www.laranitadelapaz.com.mx/images/thumbs/0005548_chicle-trident-menta-18-paquetes-de-5-piezas_510.jpeg'),
(41, 'Galletas Oreo', '18', '114gr', '1', '15', '18', 'Galletas de chocolate.', 'Golosina', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00762221083366L.jpg'),
(42, 'Galletas TrikiTrakes', '17', '115gr', '1', '15', '17', 'Galletas de chocolate con chispas de chocolate.', 'Golosina', 'https://superfenix.mx/wp-content/uploads/2022/06/7501000140855.jpg'),
(43, 'Galletas Principe', '20', '225gr', '1', '20', '20', 'Galleta dulce con relleno de chocolate.', 'Golosina', 'https://detqhtv6m6lzl.cloudfront.net/wp-content/uploads/2021/07/7501000128167-1.jpg'),
(44, 'Rellerindo ', '5', '11gr', '1', '35', '5', 'Dulce de tamarindo con chile.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0372/4450/2149/products/rellerindo-dulces-vero_680x680.jpg?v=1600101982'),
(45, 'Jugo del valle', '18', '500ml', '1', '20', '18', 'Bebida azucarada de sabores frutales.', 'Bebida', 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105535692L.jpg'),
(46, 'Pulparindo', '8', '14gr', '1', '20', '8', 'Barra de tamarindo con chile.', 'Golosina', 'https://detqhtv6m6lzl.cloudfront.net/wp-content/uploads/2021/05/725226066660-1.jpg'),
(47, 'Cacahuates Japoneses', '11', '142gr', '1', '30', '11', 'Cacahuates con sal empaquetados.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0268/4046/5603/products/CapturadePantalla2020-10-28ala_s_10.36.35_600x.png?v=1603903021'),
(48, 'Rebanada de pastel', '15', '16gr', '1', '16', '15', 'Rebanada de pastel del dia.', 'Golosina', 'https://alchef.mx/wp-content/uploads/2020/11/DSF3496.jpg'),
(49, 'Galleta casera', '5', '50gr', '1', '25', '5', 'Galletas de chocolate y matequilla.', 'Golosina', 'https://recetadepostres.net/wp-content/uploads/2019/02/Galletas.jpg'),
(50, 'Chocolates ferrero', '6', '12.5 gr', '1', '40', '6', 'Chocolate con una avellana dentro.', 'Golosina', 'https://i0.wp.com/magenta.style/wp-content/uploads/2023/01/ferrero-rocher.png?fit=500%2C500&ssl=1'),
(51, 'Cocolate KitKat', '13', '100gr', '1', '10', '13', 'Barra de chocolate de leche.', 'Golosina', 'https://chedrauimx.vtexassets.com/arquivos/ids/14710191-800-450?v=638195292538100000&width=800&height=450&aspect=true'),
(53, 'Chocolate Kiss', '4', '10gr', '1', '30', '4', 'Bolita de chocolate de leche.', 'Golosina', 'https://m.media-amazon.com/images/I/41Wnh1DMoXL._AC_UF894,1000_QL80_.jpg'),
(54, 'Chocolate CarlosV', '16', '25gr', '1', '35', '16', 'Barra de chocolate de leche.', 'Golosina', 'https://i5.walmartimages.com.mx/mg/gm/1p/images/product-images/img_large/00750105863808l.jpg?odnHeight=612&odnWidth=612&odnBg=FFFFFF'),
(55, 'Skittles', '16', '61.5gr', '1', '25', '16', 'Dulces chiclosos con sabores exoticos.', 'Golosina', 'https://i5.walmartimages.com.mx/mg/gm/1p/images/product-images/img_large/00750222681717l.jpg'),
(56, 'Cheetos', '17', '48gr', '1', '20', '17', 'Frituras de queso.', 'Golosina', 'https://tiendasneto.com.mx/media/catalog/product/cache/cb1e6b076f68ee0ac6e5e542f63310fa/6/0/6060004896-1_10.jpg'),
(57, 'Doritos', '16', '58gr', '1', '20', '16', 'Frituras de queso con chile.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0266/6368/2128/products/7501011131064.jpg?v=1662563291'),
(58, 'Sabritas', '15', '45gr', '1', '25', '15', 'Frituras de papa con sal.', 'Golosina', 'https://farmaciadigitalff-media.azureedge.net/catalog/product/cache/a77266c1abf4147499139dcd165bfd03/a/b/ab80d6b77aa832772d9df4b3dab71d9cea083bcad22663bc6d56c0134ae637d5.jpg'),
(59, 'Pinguinos', '18', '80gr', '1', '20', '18', 'Panquesitos de chocolate de leche con crema batida.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0297/6812/2412/products/Fotos-tienda-en-linea-Feb2023_0041_6_600x.png?v=1676580612'),
(60, 'Donas', '15', '28gr', '1', '20', '15', 'Pan dulce con diferentes glaseados o solo azucar.', 'Golosina', 'https://comidaschilenas.com/wp-content/uploads/2020/04/Receta-de-donas-caseras.jpg'),
(61, 'Danonino', '14', '440gr', '1', '25', '14', 'Yogurt de fresa.', 'Golosina', 'https://oneiconn.vtexassets.com/arquivos/ids/185725/YOP-YOGURT-FRESA-330GR.jpg?v=638095094938300000'),
(62, 'Chips ', '17', '46gr', '1', '25', '17', 'Frituas de papa con chile jalapeño.', 'Golosina', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00750301854471L.jpg?odnHeight=612&odnWidth=612&odnBg=FFFFFF'),
(63, 'Fritos clasicos', '16', '86gr', '1', '20', '16', 'Frituras de harina con sal.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0266/6368/2128/products/7501011131125_800x.jpg?v=1662563293'),
(64, 'Yakult', '8', '80ml', '1', '35', '8', 'Bebida azucarada.', 'Bebida', 'https://myplacesuper.com/84-large_default/yakult.jpg'),
(65, 'Maruchan', '22', '64gr', '1', '15', '22', 'Sopa instantanea.', 'Comida', 'https://tiendasneto.com.mx/media/catalog/product/cache/cb1e6b076f68ee0ac6e5e542f63310fa/1/0/1040000800-1_12_1.jpg'),
(66, 'Sandwich', '30', '83gr', '1', '20', '30', 'Pan con jamon y queso.', 'Comida', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsG_dTuRFoa4H1Xf2DiZxKzfJEIbnG7ZueqSdcqtAePw-3b8AqH8kAfESeCz9XmAriVYA&usqp=CAU'),
(67, 'Ensaladas', '35', '55gr', '1', '10', '35', 'Charola con lechuga, jitomate y aguacate.', 'Comida', 'https://s1.eestatic.com/2021/03/02/cocinillas/recetas/ensaladas/562955653_174333694_1706x960.jpg'),
(68, 'Jugo de naranja', '18', '500ml', '1', '15', '18', 'Jugo natural de la naranja.', 'Bebida', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdzeBQl-PvHSijx1rD-0Rx0OIdfj8Pp30Q0Q&usqp=CAU'),
(69, 'Coctel de fruta', '28', '300gr', '1', '15', '28', 'Vaso con vaiedad de fruta picada.', 'Comida', 'https://static.onecms.io/wp-content/uploads/sites/21/2016/06/01/coctel-de-frutas-facil-2000.jpg'),
(70, 'Baguette', '48', '400gr', '1', '25', '48', 'Baguette con mayonesa, carne, jamon y queso.', 'Comida', 'https://cheforopeza.com.mx/wp-content/uploads/2017/07/baguette-para-consentirte_recetas_chef-oropeza-jpg'),
(71, 'Chocos', '18', '300ml', '1', '20', '18', 'Batido de leche, canela y el sabor que eliga el ciente.', 'Bebida', 'https://cdn0.recetasgratis.net/es/posts/5/6/7/batido_de_chocolate_47765_paso_4_600.jpg'),
(72, 'Papas a la francesa', '32', '300gr', '1', '20', '32', 'Papas fritas con queso amarillo derretido.', 'Golosina', 'https://imag.bonviveur.com/patatas-fritas-en-freidora-de-aire.jpg'),
(73, 'Tacos de Guiso', '12', '180gr', '1', '50', '12', 'Tortilla de maiz con algun guiso casero.', 'Comida', 'https://imagenescityexpress.scdn6.secure.raxcdn.com/sites/default/files/2019-10/tacos-guisado-comida-callejera-cdmx.jpg'),
(74, 'Bolillo de guiso', '34', '250gr', '1', '45', '34', 'Bolillo con mayonesa relleno de algun guiso.', 'Comida', 'https://i.ytimg.com/vi/LkYorvIVld0/maxresdefault.jpg'),
(75, 'Palomitas ', '17', '180gr', '1', '15', '17', 'Palomitas de maiz con mantequilla.', 'Golosina', 'https://i.blogs.es/78deb3/palomitas/840_560.jpg'),
(76, 'Agua embotellada', '17', '1L', '1', '30', '17', 'Botella de agua.', 'Bebida', 'https://tofuu.getjusto.com/orioneat-prod-resized/eYmtwKtsJPuNnEAzN-1200-1200.webp'),
(77, 'Café', '15', '200ml', '1', '15', '15', 'Vaso con cafe sin azucar.', 'Bebida', 'https://cdn7.kiwilimon.com/recetaimagen/36986/46349.jpg'),
(78, 'Quesadilla', '15', '130gr', '1', '10', '15', 'Tortilla de maiz con queso dentro.', 'Golosina', 'https://upload.wikimedia.org/wikipedia/commons/7/75/Quesadilla_2.jpg'),
(79, 'Sincronizada', '20', '200gr', '1', '15', '20', 'Tortilla de maiz con queso,jitomate y aguacate.', 'Comida', 'https://comerbonito.com/wp-content/uploads/Sincronizadas-de-Jamon-y-Queso.jpg'),
(80, 'Bolis', '12', '100gr', '1', '30', '12', 'Bolsa de hielo con un hielo de sabor frutal.', 'Golosina', 'https://i.blogs.es/0ae28b/bolis/450_1000.jpg'),
(81, 'Monster', '35', '473ml', '1', '20', '35', 'Bebida energizante.', 'Bebida', 'https://cdn.shopify.com/s/files/1/0270/5195/0134/products/e479f6da31b1e27d59380e539d085497.png?v=1591987741'),
(82, 'Gelatina', '15', '150gr', '1', '15', '15', 'Postre dulce empaquetado', 'Golosina', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpNhLhTDCkA7oh216e28G5U9xZpGla9-cPRw&usqp=CAU'),
(83, 'Chocolate M&M', '15', '43.8gr', '1', '25', '15', 'Chocolates empaquetados.', 'Golosina', 'https://coopidrogas.vtexassets.com/arquivos/ids/29289772-800-800?v=638182333981000000&width=800&height=800&aspect=true'),
(84, 'Chicles orbit', '1', '4.6gr', '1', '40', '1', 'Paquete de cuatro chicles mentolados.', 'Golosina', 'https://res.cloudinary.com/riqra/image/upload/w_656,h_656,c_limit,q_auto,f_auto/v1678811144/sellers/4/ojflag1iscpxef0f04ud.jpg'),
(85, 'Chicles Huba bubba', '20', '56.7gr', '1', '15', '20', 'Chicles sabor fresa.', 'Golosina', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dwda1dc5ca/images/product/0022110079806_A.jpg?sw=1000&sh=1000&sm=fit'),
(86, 'Mini ice', '17', '15gr', '1', '40', '17', 'Dulce carbonatado congelado.', 'Golosina', 'https://canels.com.mx/wp-content/uploads/2018/02/ind_MINI-CHERRY-ICEE.png'),
(87, 'Lucas Muecas', '9', '35gr', '1', '25', '9', 'Dulce enchilado.', 'Golosina', 'https://static.wixstatic.com/media/6fa1b0_129593b185144537a54ae10ccbd19887~mv2.jpeg/v1/fill/w_1000,h_1132,al_c,q_85/6fa1b0_129593b185144537a54ae10ccbd19887~mv2.jpeg'),
(88, 'Bocadines', '8', '10.5gr', '1', '40', '8', 'Barra de galleta chocolatada.', 'Golosina', 'https://surtitienda.vteximg.com.br/arquivos/ids/188876-2000-2000/00025046150137.1.jpg?v=637618265999730000'),
(89, 'Skwuinkles', '14', '19.5gr', '1', '26', '14', 'Gomitas enchiladas.', 'Golosina', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkQZttLCFXY_FT-KaoFlHCymyisS2Ws7IN_Q&usqp=CAU'),
(90, 'Bolsa polvo miguelito', '5', '4gr', '1', '40', '5', 'Polvo enchilado con azucar.', 'Golosina', 'https://m.media-amazon.com/images/I/41NGAfHDOqL._AC_.jpg'),
(91, 'Chocolate milky way', '10', '6gr', '1', '15', '10', 'Barra de chocolate con caramelo dentro.', 'Golosina', 'https://resources.claroshop.com/medios-plazavip/fotos/productos_sears1/original/3125678.jpg'),
(92, 'Papas caseras', '25', '35gr', '1', '15', '25', 'Hojas de papas fritas con aderezo.', 'Golosina', 'https://www.cardamomo.news/__export/1636655216652/sites/debate/img/2021/11/11/papas_fritas.png_976912859.png'),
(93, 'Pan cuernito', '6', '1 pieza', '1', '10', '6', 'Pan dulce.', 'Golosina', 'https://www.gastrolabweb.com/u/fotografias/m/2021/1/26/f1280x720-7688_139363_5050.jpg'),
(94, 'Paleta payaso', '12', '45gr', '1', '10', '12', 'Paletas de bombom cubierta de chocolates con gomitas sabor a frutas.', 'Golosina', 'https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw5403996a/images/product/7501000278404_A.jpg?sw=1000&sh=1000&sm=fit'),
(95, 'Dulce crayon', '12', '28gr', '1', '20', '12', 'Dulce con sabores frutales.', 'Golosina', 'https://sweetdreamsni.com/wp-content/uploads/2023/02/Crayon-dulce.png'),
(96, 'Chocolate winky', '3', '14gr', '1', '10', '3', 'Barra de nougat y caramelo de leche cubierta con chocolate', 'Golosina', 'https://cdn.shopify.com/s/files/1/0430/5489/1157/products/a_0001_460-Choc-724869001403-01_900x.jpg?v=1626900008'),
(97, 'Runners', '15', '200gr', '1', '20', '15', 'Frituras enchiladas.', 'Golosina', 'https://cdn.shopify.com/s/files/1/0270/4651/0663/products/757528039318_1200x1200.png?v=1605549816'),
(98, 'Totis', '12', '15gr', '1', '25', '12', 'Botana de harina con sal.', 'Golosina', 'https://www.totis.com.mx/wp-content/uploads/2021/08/donitas-limon-sal-totis-001.png'),
(99, 'Churrumais', '15', '200gr', '1', '20', '15', 'Fritura típica con limoncito y chilito.', 'Golosina', 'https://m.media-amazon.com/images/I/914y4p4D+pL.jpg'),
(100, 'Sabritones', '16', '260gr', '1', '15', '16', 'Frituras con chile y sal.', 'Golosina', 'https://s.cornershopapp.com/product-images/337576.jpg?versionId=zSoksEHWXBlofaVGZ7k9HoZ6LH8OcpIo'),
(101, 'Tostitos', '12', '65gr', '1', '30', '12', 'Chips de harina con sal.', 'Golosina', 'https://tostitos.com.mx/promocion/img/prod02.webp'),
(102, 'Nachos', '16', '100gr', '1', '20', '16', 'Tortilla de maiz frita con queso amarillo derretido.', 'Golosina', 'https://navolarestaurant.com/wp-content/uploads/2017/11/TOTILLA_NACHO-1080x675.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `Nombre_Completo` varchar(90) NOT NULL,
  `Usuario` varchar(60) NOT NULL,
  `Correo_Electronico` varchar(60) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Carrito_Producto1_idx` (`id_Producto`),
  ADD KEY `fk_Carrito_Usuario1_idx` (`id_Usuario`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Detalle_Encabezado_idx` (`id_Folio`),
  ADD KEY `fk_Detalle_Producto1_idx` (`id_Producto`);

--
-- Indices de la tabla `encabezado`
--
ALTER TABLE `encabezado`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_Carrito_Producto1` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carrito_Usuario1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `fk_Detalle_Encabezado` FOREIGN KEY (`id_Folio`) REFERENCES `encabezado` (`Folio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle_Producto1` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
