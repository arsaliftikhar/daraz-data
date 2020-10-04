-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql305.byetcluster.com
-- Generation Time: Oct 04, 2020 at 03:28 PM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_25897022_daraz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'arsal', 'arsalpass'),
(2, 'rizwan ali', 'Ali298'),
(3, 'naveed asghar', 'naveed4372'),
(4, 'irfan sadiq', 'irfansadiq123');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `size` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `description`, `code`, `type`, `size`, `quantity`, `price`, `image`) VALUES
(12, 'Aseel Body Perfume - 60399', '60399', 'Cosmetics', '-', '0', '270', 'images/2a6f64d65da468ad969e0fb494047184-Aseel Body Perfume - 60399.jpg'),
(11, 'Arabic Perfume - 57957', '57957', 'Cosmetics', '-', '1', '1250', 'images/eb4b6a53e9e88214196f78e5e2915aa8-Arabic Perfume - 57957.jpg'),
(4, 'Avengers Super Fighter-Red-58077', '58077', 'Toys', '-', '1', '650', 'images/5a255c17c5e3c27f90e4466846773b16-Avengers Super Fighter-Red-58077.jpg'),
(5, 'The Parrot Wings Have Action-Green-58013', '58013', 'Toys', '-', '1', '510', 'images/3665687dcc0baaaa3c80cb7733c347b6-The Parrot Wings Have Action-Green-58013.jpg'),
(6, 'Tank Radio Control-Green-58098', '58098', 'Toys', '-', '1', '1390', 'images/379bf480a5a7689331c4320dedcaf518-Tank Radio Control-Green-58098.jpg'),
(7, 'My Sweet Home-White Pink-58038', '58038', 'Toys', '-', '1', '550', 'images/a7d8ecd2b7576d04f87d355b28341334-My Sweet Home-White Pink-58038.jpg'),
(8, 'Saudi Arabian Airline-White-A380-Flash-Lovely-Electric-58014', '58014', 'Toys', '-', '1', '560', 'images/42b9d6556c0474de67d1c4e5d2dac6c3-Saudi Arabian Airline-White-A380-Flash-Lovely-Electric-58014.jpg'),
(9, 'Mecha Ares-Red Black-58076', '58076', 'Toys', '-', '0', '750', 'images/fc209fa8eafda0e3c3a81fa44518128e-Mecha Ares-Red Black-58076.jpg'),
(10, 'Electric Universal Car -White-56818', '56818', 'Toys', '-', '1', '540', 'images/64a5f4271d2049e6b99070e90f12bff6-Electric Universal Car -White-56818.jpg'),
(13, 'Best Wase (Guldan) Ferozi - 58479', '58479', 'Decoration', '-', '1', '1990', 'images/3d9c8a7e2fbb9f1cba8c364ea34cba5e-Best Wase (Guldan) Ferozi - 58479.jpg'),
(14, 'Crystal Bowl Large Black n Brown - 58568', '58568', 'Decoration', '-', '1', '1050', 'images/e50bb90f736ab74a92d442c18c929ee2-Crystal Bowl Large Black n Brown - 58568.jpg'),
(15, 'Crystal Bowl Small Black n Brown - 58570', '58570', 'Decoration', '-', '1', '780', 'images/d9b2427ccfab10d4ccb76d1f13b48daf-Crystal Bowl Small Black n Brown - 58570.jpg'),
(16, 'Dunhill Desire Blue Perfume - 57958', '57958', 'Cosmetics', '-', '1', '1350', 'images/1818a180f815a387ff7a674214f1982c-Dunhill Desire Blue Perfume - 57958.jpg'),
(17, 'Electronic Heavy Bike Blue n Black - 60077', '60077', 'Toys', '-', '1', '7100', 'images/f8250836fefd679b0f75f27dd954e03f-Electronic Heavy Bike Blue n Black - 60077.jpg'),
(18, 'Gents Wallet Red - 58255', '58255', 'Gents Accessories', '-', '1', '700', 'images/44ec6fcbd5295149a5f9a86334c3d329-Gents Wallet Red - 58255.jpg'),
(19, 'Gents Wallet-Brown 58267', '58267', 'Gents Accessories', '-', '1', '1750', 'images/97473b5445c80115587f02b5a20474b4-Gents Wallet-Brown 58267.jpg'),
(20, 'Kemi Hair clipper - 57797', '57797', 'Cosmetics', '-', '1', '890', 'images/d38f8f7a0c8c9504c56eb9d355528d04-Kemi Hair clipper - 57797.jpg'),
(21, 'Lichen Hair Color - 60848', '60848', 'Cosmetics', '-', '1', '600', 'images/e1fecc7ac51da4134900306cf0997bf6-Lichen Hair Color - 60848.jpg'),
(22, 'Network Body Perfume - 56795', '56795', 'Cosmetics', '-', '1', '350', 'images/10e463e5843c4c2cb8e38e48a365391e-Network Body Perfume - 56795.jpg'),
(23, 'Promise Body Perfume - 60939', '60939', 'Cosmetics', '-', '1', '450', 'images/679cc1daa0ecd1600dc14b98518124c7-Promise Body Perfume - 60939.jpg'),
(24, 'Vince Anti Acne Cream - 60548', '60548', 'Cosmetics', '-', '1', '1050', 'images/3ce6c67bb01932c8821d3a418d20d513-Vince Anti Acne Cream - 60548.jpg'),
(25, 'Vince Face Wash - 60549', '60549', 'Cosmetics', '-', '1', '860', 'images/fd8f3757b50a7c9717017e5230e255ef-Vince Face Wash - 60549.jpg'),
(26, 'Kemi Hair clipper - 57794', '57794', 'Gents Accessories', '-', '1', '1990', 'images/06efccb3e71b81902fb7a05c010732de-Kemi Hair clipper - 57794.jpg'),
(27, 'wall clock golden', '60030', 'wall clock', '-', '1', '780', 'images/2189d1291d55b73d360a9ca28e42705c-wall clock golden 60030 - 650.jpg'),
(28, 'wall clock black', '60052', 'wall clock', '-', '1', '1970', 'images/ea4bc892ac39b97ebde81c5b469da772-wall clock 60052- 1640.jpg'),
(29, 'sindhi shalwar', '60732', 'shalwar', 'free size', '1', '1060', 'images/2c2c67bdf5f4460cd2918ac41a46fbc0-Sindhi Shalwar Wool Karai-60732.jpg'),
(30, 'Shahsawar kurta shalwar purple', '40326', 'Mens shalwar kameez', '-', '1', '3470', 'images/46c8027d648afeec0c3c51c65e463aef-shahsawar kurta shalwar purple 40326 - 3150.jpg'),
(31, 'Shahsawar kurta shalwar pink', '40411', 'Mens shalwar kameez', '-', '1', '3470', 'images/e85a252774f5bb6a166a503c1a1b9712-shahsawar kurta shalwar pink - 40411-3150.jpg'),
(32, 'luxury white kurta', '39812', 'Mens shalwar kameez', '-', '1', '3750', 'images/27ad2bd36b482d505458bccd3cc707dc-luxury white kurta 39812 - 3400.jpg'),
(33, 'ladies watch red', '57694', 'ladies watch', '-', '1', '590', 'images/c1fe6c15049c3948c6967ef17b3e8768-Ladies Watch Red--57694.jpg'),
(34, 'ladies watch pink', '-57694', 'ladies watch', '-', '1', '590', 'images/cf8b428845ae336c1aff3ef96dbce877-Ladies Watch Pink--57694.jpg'),
(35, 'ladies watch black', '57696', 'ladies watch', '-', '1', '570', 'images/6c563bbdfb6764780299ef703b998ca3-Ladies Watch Black-57696.jpg'),
(36, 'ladies plazo bell bottom orange', '54216', 'ladies plazo', 'free size', '1', '840', 'images/2a820caa64771894f611b4d317f71cab-Ladies Plazo Bell Bottom Orange 54216.jpg'),
(37, 'ladies kurti red', '60634', 'ladies kurti', '-', '1', '1900', 'images/6ccb932f41cd4772cfbe81aaafac1e89-Ladies Kurti Red 60634.jpg'),
(38, 'ladies kurti pink', '59674', 'ladies kurti', '-', '1', '2050', 'images/588f28a501fc4fd017922daf2c19c7d1-Ladies Kurti Pink 59674.jpg'),
(39, 'ladies kurti N-Blue', '-60634', 'ladies kurti', '-', '1', '60634', 'images/0af2fa1b321ea43b39c0fa7f302dd4e9-Ladies Kurti N-Blue 60634.jpg'),
(40, 'ladies kurti musterd frill bazoo', '-59674', 'ladies kurti', '-', '1', '2050', 'images/f3fdae5164996f62c8eb9b9afeba3a17-Ladies Kurti Musterd Frill Bazoo 59674.jpg'),
(41, 'ladies kurti musterd ', '596742', 'ladies kurti', '-', '1', '2050', 'images/436b4435b0ee61b3857a443dabdbd464-Ladies Kurti Musterd 59674.jpg'),
(42, 'ladies kurti masoori', '59910', 'ladies kurti', 'free size', '1', '1750', 'images/e1601410f0fa56e5fefa12b0ebd3ebcb-Ladies Kurti Masoori 59910.jpg'),
(43, 'ladies kurti C-green', '60933', 'ladies kurti', '-', '1', '1950', 'images/4e52b58b677e3ffcf6a5f8ee4f6f26e6-Ladies Kurti C-Green 60933.jpg'),
(44, 'ladies kurti bell bzaoo gray', '57489', 'ladies kurti', '-', '1', '1750', 'images/34d6edcda7f37b35609d172bfb1c1a65-Ladies Kurti Bell Bazoo Gray 57489.jpg'),
(45, 'ladies 3 piece suit gray red', '60927', 'ladies kurti', '-', '1', '3470', 'images/c11a0a3cceeed716bc3ada77774358e4-Ladies 3P Suit Gray Red 60927.jpg'),
(46, 'ladies white kurti kids', '43525', 'ladies kurti', '24', '1', '2560', 'images/b2bcd423bed46547a8161b3ea68cea66-white kids 43525-2330-24.jpg'),
(47, 'purple kurti ladies kids', '34401', 'ladies kurti', '24', '1', '2700', 'images/e1b0038609d0cdc0a8d14105904823b7-purple kurti ladies kids 34401-2700-24.jpg'),
(48, 'grey shirt boy kids', '41945', 'boy kids shirt', '-', '1', '550', 'images/4fcf712c839a9fbb4c85c7f861c0e403-grey shirt boy kids 41945-450.jpg'),
(49, 'mehndi red embdroidry ladies kurti kids ', '42021', 'ladies kurti', '32', '1', '2150', 'images/0f3e9cf9510c75432a650c597688babb-mehndi red embdroidry ladies kurti kids 42021-1800-32.jpg'),
(50, 'white ajrak kurti ladies kids ', '-43525', 'ladies kurti', '26', '1', '2570', 'images/e2c1895ccbbce8b268853e1109c4e7d9-white ajrak kurti ladies kids 43525-2330-26.jpg'),
(51, 'yellow ladies kurti ', '34386', 'ladies kurti', '32', '1', '4350', 'images/be443f51fc5d00fc0c003a039b3c2100-yellow ladies kurti 34386-3975-32.jpg'),
(52, 'black ladies kurti ', '49786', 'ladies kurti', '-', '1', '970', 'images/42a9fe511b287112ce278674681d52db-black ladies kurti 49786-800.jpg'),
(53, 'white kurti ladies ', '-49786', 'ladies kurti', '-', '1', '960', 'images/b14ab2d1640b9230bb3f1ad6271f8052-white kurti ladies 49786-800.jpg'),
(54, 'pink ladies kurti ', '51257', 'ladies kurti', '-', '1', '1000', 'images/f1eebc7d8098b2e45893e77154734bd3-pink ladies kurti 51257-830.jpg'),
(55, 'yellow ladies kurti with red trouser ', '55108', 'ladies kurti', '-', '1', '3150', 'images/e89bb141a8878d8666f7835023b3ab05-yellow ladies kurti with red trouser 55108-2860.jpg'),
(56, 'red yellow contrast ladies kurti ', '55696', 'ladies kurti', '26', '1', '3000', 'images/16fededb81d7b964d1c83ffc08d656a9-red yellow contrast ladies kurti 55696-2726-26.jpg'),
(57, 'ladies kurti zink with border ', '56178', 'ladies kurti', '18', '1', '2850', 'images/2a8eab3e9eee676d0981e6e7f81b5355-ladies kurti zink with border 56178-2600-18.jpg'),
(58, 'balck ladies kurti ', '60906', 'ladies kurti', '28', '1', '1750', 'images/9f04653ccfc623e1a53f39ffeb833e20-balck ladies kurti 60906-1450-28.jpg'),
(59, 'golden decoration piece ', '58485', 'decotration', '-', '1', '1600', 'images/cf2cae30c357cac1a951cb548991431e-golden decoration piece 58485-1340.jpg'),
(60, 'clock with photo frame ', '60057', 'decotration', '-', '1', '1600', 'images/f5597f43b70fbe1cc36fdd7cb101a2d5-clock with photo frame 60057-1340.jpg'),
(61, 'decration table lamp black ', '60059', 'decotration', '-', '1', '3950', 'images/39553367dbe3e824985d81e39ad3b319-decration table lamp black 60059-3580.jpg'),
(62, 'baby cotton shirt print white ', '40737', 'shirt', '-', '1', '875', 'images/11f4dd3469291ca75bb7fdb814d22530-baby cotton shirt print white 40737-730.jpg'),
(63, 'baby fancy frok ', '55599', 'frok', '-', '1', '2630', 'images/42dedc38944116b9ba52445e16ab18d6-baby fancy frok 55599-2390.jpg'),
(64, 'baby shirt C green ', '10015', 'shirt', '-', '1', '970', 'images/0a64861db51b1d84691a9d3e1fe9c52d-baby shirt C green 10015-810.jpg'),
(65, 'baby shirt multi ball dots ', '-40737', 'shirt', '-', '1', '875', 'images/fcca4713cd4c4bfa031943fc3e22e9e5-baby shirt multi ball dots 40737-730.jpg'),
(66, 'baby shirt peach pink ', '-10015', 'shirt', '-', '1', '970', 'images/3d6d5c7ce423864aad7d0d560c99c5f0-baby shirt peach pink 10015-810.jpg'),
(67, 'baby shirt pink white dots ', '040737', 'shirt', '-', '1', '875', 'images/51393e2a53788b1b8ce07ead4946b368-baby shirt pink white dots 40737-730.jpg'),
(68, 'baby shirt yellow ', '010015', 'shirt', '-', '1', '970', 'images/2df6b34f236164bacef6623b1f346713-baby shirt yellow 10015-810.jpg'),
(69, 'baby t-shirt feroi ', '32436', 'shirt', '-', '1', '770', 'images/ae05b9f47de640099de731de4b844ef7-baby t-shirt feroi 32436-640.jpg'),
(70, 'baby t-shirt grey ', '-32436', 'shirt', '-', '1', '770', 'images/639324362962ecb9014d5f1e16c0e37c-baby t-shirt grey 32436-640.jpg'),
(71, 'baby t-shirt parrot yellow ', '30885', 'shirt', '-', '1', '670', 'images/64c4fa79fa20cead7a26a281f35eba56-baby t-shirt parrot yellow 30885-560.jpg'),
(72, 'baby t-shirt peach ', '032436', 'shirt', '-', '1', '770', 'images/4ec15c59738ff8879b469d349eb0a56b-baby t-shirt peach 32436-640.jpg'),
(73, 'baby t-shirt peach ', '42208', 'shirt', 'free size', '1', '890', 'images/8efebdf463870bfd255cfd0ff501f69e-baby t-shirt peach 42208-740.jpg'),
(74, 'baby t-shirt white ', '-42208', 'shirt', '-', '1', '890', 'images/9b64b4c7fdf642586661df75ddf0450a-baby t-shirt white 42208-740.jpg'),
(75, 'gamming mouse', '0001', 'electronic', '-', '2', '1450', 'images/0addf83f9ffffc1c0b300cb38704c942-1.JPG'),
(76, 'celbro hands free c-type', '0002', 'electronic', '-', '3', '1050', 'images/8abe335a402728940f06415476c655c8-1.JPG'),
(77, 'wireless earbuds tebaurry', '0003', 'electronic', '-', '2', '2350', 'images/fa66cb20e91ba15ea03f6c22713942fc-tebaurry.JPG'),
(78, 'wireless computer mouse ', '0004', 'electronic', '-', '2', '1350', 'images/96832a49d2a7f57f50396e122a5271e9-2.JPG'),
(79, 'tractor die cast metal', '0005', 'toy', '-', '4', '950', 'images/b011be09429fa16079e785d86d15762f-1.JPG'),
(80, 'cup set gift ', '58563', 'gift set', '-', '1', '890', 'images/5b64915624236e22c79f42b63ca104e0-cup set gift 58563-750.jpg'),
(81, 'Gents Stud Black Curve', '56788', 'stud', '-', '1', '690', 'images/2052c8e0ffec8f591623854cd4d1f10c-Gents Stud Black Curve-56788.jpg'),
(82, 'Gents Stud Black Rado', '-56788', 'stud', '-', '1', '690', 'images/53e8a27e369221bad3be1e0cd32e80cb-Gents Stud Black Rado-56788.jpg'),
(83, 'Gents Stud Black Rolex', '-056788', 'stud', '-', '1', '690', 'images/3847c157528b37697b0d9fcc5c03c98a-Gents Stud Black Rolex-56788.jpg'),
(84, 'Gents Stud Golden Chek-56788', '-0056788', 'stud', '-', '1', '690', 'images/8770eb1edfe51aedaa030223611e32c0-Gents Stud Golden Chek-56788.jpg'),
(85, 'Gents Stud Silver Shine', '-00056788', 'stud', '-', '1', '690', 'images/d3f01e25c83ddfdaf5f1752d3eb2139e-Gents Stud Silver Shine-56788.jpg'),
(86, 'Gents Stud Simple Black', '000056788', 'stud', '-', '1', '690', 'images/57090f8e7ed88ef7b30d825cb7375136-Gents Stud Simple Black-56788.jpg'),
(87, 'Gents Stud Silver', '56791', 'stud', '-', '1', '690', 'images/d02c6553d12aaba8476a396ef8682129-Gents Stud Silver-56791.jpg'),
(88, 'Gents Wallet', '58258', 'purse', '-', '1', '740', 'images/f92286072654427d80acce13708f35ed-Gents Wallet-58258.jpg'),
(89, 'Gents Wallet', '-58266', 'purse', '-', '1', '1390', 'images/69216c4e16488d0161c82bfa388463c1-Gents Wallet-58266.jpg'),
(90, 'Gents Watch', '41587', 'watch', '-', '1', '1250', 'images/033d3275fee2168958fa52c46b68303d-Gents Watch-41587.jpg'),
(91, 'Ladies Fancy Cluch Black Shine Texture', '54017', 'ladies bag', '-', '1', '1870', 'images/d20b3b2c76314bcf08d3050a0bc97896-Ladies Fancy Cluch Black Shine Texture-54017.jpg'),
(92, 'Ladies Hand Bag Black Lining', '57849', 'ladies watch', '-', '1', '2050', 'images/47a328d9718936e6cb18f4b91e142f5c-Ladies Hand Bag Black Lining-57849.jpg'),
(93, 'Ladies Hand Bag Blue', '-53986', 'ladies watch', '-', '1', '930', 'images/427909d9ff61fea2d26f27b1892b9e1a-Ladies Hand Bag Blue-53986.jpg'),
(94, 'Ladies Hand Bag Mehroon', '-56763', 'ladies bag', '-', '1', '2050', 'images/965333f55d8c9f649340f86326b70d1e-Ladies Hand Bag Mehroon-56763.jpg'),
(95, 'Gents Watch', '-57702', 'watch', '-', '1', '1250', 'images/9b46a19c477e26b4d9b4cb94cebf630e-Gents Watch-57702-.jpg'),
(96, 'Gracefull', '60141', 'perfume', '-', '1', '890', 'images/b9a1ddf4871164ad629483cafc7c65e4-Gracefull--.jpg'),
(97, 'Ladies Watch', '50623', 'ladies watch', '-', '1', '650', 'images/82adbab5f0ee2dfefdbb0cfba182ca6b-Ladies Watch-50623.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
