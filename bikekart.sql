-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2018 at 05:29 PM
-- Server version: 5.5.49-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikekart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Bajaj'),
(2, 'Hero'),
(3, 'Honda'),
(4, 'Royal Enfield'),
(5, 'TVS'),
(6, 'Yamaha');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(2, 61, '127.0.0.1', 3, 1),
(4, 1, '127.0.0.1', 4, 1),
(5, 2, '127.0.0.1', 4, 1),
(6, 4, '127.0.0.1', 5, 1),
(7, 7, '127.0.0.1', 5, 1),
(8, 11, '127.0.0.1', 5, 1),
(9, 11, '127.0.0.1', 6, 1),
(10, 12, '127.0.0.1', 7, 1),
(11, 14, '127.0.0.1', 7, 1),
(12, 16, '127.0.0.1', 7, 1),
(13, 2, '127.0.0.1', 7, 1),
(14, 1, '127.0.0.1', 7, 1),
(15, 1, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'All Bikes'),
(2, 'All Scooter');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE IF NOT EXISTS `parts` (
  `part_id` int(11) NOT NULL,
  `part_cat` int(11) NOT NULL,
  `part_brand` varchar(255) NOT NULL,
  `part_title` varchar(255) NOT NULL,
  `part_price` int(11) NOT NULL,
  `part_desc` varchar(1000) NOT NULL,
  `part_img` varchar(255) NOT NULL,
  `part_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`part_id`, `part_cat`, `part_brand`, `part_title`, `part_price`, `part_desc`, `part_img`, `part_keyword`) VALUES
(1, 1, 'castrol ', 'castrol magnetic', 1590, 'https://www.castrol.com/en_in/india/car-engine-oil/engine-oil-brands/castrol-magnatec-brand.html', 'castrol magnatec.jpg', 'magnetic');

-- --------------------------------------------------------

--
-- Table structure for table `parts_cat`
--

CREATE TABLE IF NOT EXISTS `parts_cat` (
  `pcat_id` int(11) NOT NULL,
  `pcat_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts_cat`
--

INSERT INTO `parts_cat` (`pcat_id`, `pcat_title`) VALUES
(1, 'Body Parts'),
(2, 'Brakes'),
(3, 'Controls'),
(4, 'Lights and elecrical'),
(5, 'Fuel and air'),
(6, 'Exhaust');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_link` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `product_link`) VALUES
(1, 1, 1, 'Bajaj Avenger 180', 150000, 'Indian Street bike', 'bajaj-avenger-street-180.jpg', 'Street bike', 'https://www.bajajauto.com/motor-bikes/avenger-cruise-220'),
(2, 1, 1, 'Bajaj discover 125', 78000, 'bajaj discover 125', 'bajaj-discover-125.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/discover-125'),
(3, 1, 1, 'bajaj dominar 400', 340000, 'bajaj dominar 400', 'bajaj-dominar400.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/dominar-400/home'),
(4, 1, 1, 'Bajaj pulsar 135ls', 135000, 'bajaj pulsar 135ls', 'bajaj-pulsar135ls.jpg', 'Street Bike', 'https://www.globalbajaj.com/global/english/brands/motorcycles/pulsar/pulsar-135/overview/'),
(6, 1, 1, 'bajaj pulsar 150', 160000, 'bajaj pulsar 150', 'bajaj-pulsar-150.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/pulsar-150-dtsi'),
(7, 1, 1, 'Bajaj pulsar 180', 50000, 'bajaj-pulsar-180', 'bajaj-pulsar-180.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/pulsar-180-dtsi/home'),
(8, 1, 1, 'bajaj pulsar 220', 310000, 'bajaj-pulsar-220', 'bajaj-pulsar-220.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/pulsar-220f'),
(9, 1, 1, 'Bajaj pulsar ns', 180000, 'bajaj-pulsar-ns', 'bajaj-pulsar-ns.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/pulsar-ns200'),
(11, 1, 2, 'Hero achiever', 120000, 'hero-achiever', 'hero-achiever.jpg', 'Street Bike', 'https://www.heromotocorp.com/en-in/the-bike/achiever-150-60.html?utm_source=Google&utm_medium=Search&utm_campaign=Hero_Achiever_Brand_Exact&utm_term=Desktop&utm_content=Maxus_Pongal_2018&gclid=Cj0KCQjw4_zVBRDVARIsAFNI9eA-boIdocGGO6eY5AFn2SSnMlmb2DE_O-LweA'),
(12, 2, 2, 'hero duet', 85000, 'hero-duet a classic local scooter', 'hero-duet.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/price/duet/maharashtra/mumbai-77.html?utm_source=Google&utm_medium=Search&utm_campaign=Hero_Duet_Brand_Exact&utm_term=Desktop&utm_content=Maxus_Maharashtra_2018&gclid=Cj0KCQjw4_zVBRDVARIsAFNI9eBLGBco_l4Z7YAX5CeYNHgC9eZtd'),
(13, 1, 2, 'hero glamour', 120000, 'A budget bike', 'hero-glamour.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/the-bike/new-glamour-81.html'),
(14, 2, 2, 'hero maestro', 140000, 'A very feul efficient bike', 'hero-maestro.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/the-bike/maestro-edge-76.html'),
(15, 1, 2, 'hero passion', 75000, 'hero-passion is a very comfortable bike with economy speed ', 'hero-passion.jpg', 'street bike', 'https://www.heromotocorp.com/en-np/the-bike/passion-pro-100cc-motorcycle-56.html'),
(16, 2, 2, 'hero pleasure', 60000, 'delightful bike', 'hero-pleasure.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/the-bike/pleasure-53.html'),
(17, 1, 3, 'honda dream yuga', 100000, 'a dream bike for new generation', 'honda dream yuga.jpg', 'street bike', 'https://www.honda2wheelersindia.com/dreamyuga/'),
(19, 1, 2, 'hero splendor plus', 85000, 'local bike', 'hero-splendorplus.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/the-bike/splendor-54.html'),
(20, 1, 2, 'hero xtreme', 160000, 'sporty looks', 'hero-xtreme.jpg', 'street bike', 'https://www.heromotocorp.com/en-in/the-bike/xtreme-sports-74.html'),
(21, 2, 3, 'honda activa 125', 800, 'indias first 125cc scooter', 'honda-activa125.jpg', 'street bike', 'https://www.honda2wheelersindia.com/activa125/'),
(22, 1, 3, 'honda africa twin', 130000, 'mountain bike', 'honda-africa-twin.jpg', 'street bike', 'https://www.honda2wheelersindia.com/africatwin/'),
(23, 2, 3, 'honda aviator', 190000, 'higher model of activa with more safety measures', 'honda-aviator.jpg', 'street bike', 'https://www.honda2wheelersindia.com/aviator/'),
(24, 1, 3, 'honda-cb1000r', 700000, 'sport bike', 'honda-cb1000r.jpg', 'on track bike', 'https://www.honda2wheelersindia.com/cbr1000rr/'),
(25, 1, 3, 'honda cbr 250r', 250000, 'sports bike on road', 'honda-cbr-250r.jpg', 'on track bike', 'https://www.honda2wheelersindia.com/cbr250r/'),
(26, 1, 3, 'honda-cbr-650f', 650000, 'sports bike', 'honda-cbr-650f.jpg', 'on track bike', 'https://www.honda2wheelersindia.com/cbr650f/'),
(27, 1, 3, 'honda cb unicorn 150', 690, 'a very high speed bike', 'honda-cb-unicorn-150.jpg', 'on track bike', 'https://www.honda2wheelersindia.com/unicorn/'),
(32, 2, 3, 'honda cliq', 25000, 'a small easy to handle bike', 'honda-cliq.jpg', 'street bike', 'https://www.honda2wheelersindia.com/cliq/'),
(33, 2, 3, 'honda dio', 35000, 'easy handling', 'honda-dio.jpg', 'street bike', 'https://www.honda2wheelersindia.com/dio/'),
(34, 2, 3, 'honda navi', 1000, 'small convinient bike', 'honda-navi.JPG', 'street bike', 'https://www.honda2wheelersindia.com/navi/colors'),
(35, 1, 3, 'honda shine', 60000, 'Vaccum Cleaner', 'honda-shine.jpg', 'street bike', 'https://www.honda2wheelersindia.com/shinesp/'),
(36, 1, 3, 'honda xblade', 150000, 'great pick up', 'honda-xblade.JPG', 'street bike', 'https://www.honda2wheelersindia.com/campaign-xblade?utm_source=search&utm_medium=text&utm_campaign=xblade&utm_term=paid&utm_content=textad'),
(37, 1, 4, 'royal-enfield-bullet-350', 200000, 'long ride bike', 'royal-enfield-bullet-350.jpg', 'tough road bike', 'https://royalenfield.com/motorcycles/bullet-350'),
(38, 1, 4, 'royal-enfield-bullet-500', 350000, 'cruiser bike , used for hiking', 'royal-enfield-bullet-500.jpg', 'street bike', ''),
(39, 1, 4, 'royal enfield classic 350', 250000, 'descent look bike', 'royal-enfield-classic-350.jpg', 'street bike', 'https://royalenfield.com/motorcycles/classic-350'),
(40, 1, 4, 'royal enfield classic chrome', 300000, 'pocket friendly for that engine', 'royal-enfield-classic-chrome.jpg', 'street bike', 'https://royalenfield.com/motorcycles/classic-chrome'),
(41, 1, 1, 'bajaj-pulsar-rs', 220000, 'bajaj-pulsar-rs', 'bajaj-pulsar-rs.jpg', 'Street Bike', 'https://www.bajajauto.com/motor-bikes/pulsar-rs200'),
(42, 1, 1, 'Bajaj v12', 180000, 'bajaj-v12', 'bajaj-v12.jpg', 'Street bike', 'https://www.bajajauto.com/motor-bikes/v'),
(45, 1, 4, 'royalenfield-desert-storm', 10000, 'classic', 'royalenfield-desert-storm.JPG', 'street bike', 'https://royalenfield.com/motorcycles/classic-desert-storm'),
(47, 1, 3, 'royal-enfield-classic-chrome', 355000, 'a very high speed bike', 'royal-enfield-classic-chrome.jpg', 'on track bike', 'https://royalenfield.com/motorcycles/classic-chrome'),
(48, 1, 4, 'royalenfield himalayan', 1000000, 'hiking bike', 'royalenfield-himalayan.JPG', 'street bike', 'https://royalenfield.com/motorcycles/himalayan/bike/'),
(49, 1, 4, 'royalenfield-squadron-blue', 355000, 'classic', 'royalenfield-squadron-blue.gif', 'on track bike', 'https://royalenfield.com/motorcycles/classic-squadron-blue'),
(50, 1, 4, 'royalenfield-thunderbird-x-350', 1000000, 'hiking bike', 'royalenfield-thunderbird-x-350.gif', 'street bike', 'https://royalenfield.com/motorcycles/thunderbird-350'),
(51, 1, 5, 'tvs-apache-rr-310', 500000, 'Street bike', 'tvs-apache-rr-310.JPG', 'street bike', 'https://www.tvsapache.com/rr310/'),
(52, 1, 5, 'tvs-apachertr160', 500000, 'Street bike', 'tvs-apachertr160.JPG', 'street bike', 'https://www.tvsapache.com/rtr-160.aspx'),
(53, 1, 5, 'Tvs-apache rtr160', 160000, 'Street Bike', 'tvs-apachertr160.jpg', 'street bike', 'https://www.tvsapache.com/rtr-160.aspx'),
(54, 1, 5, 'Tvs-apache-rtr-160-v4', 180000, 'Street Bike', 'tvs-apache-rtr-160-4v.jpg', 'Street Bike', 'https://www.tvsapache.com/rtr-160.aspx'),
(55, 1, 5, 'Tvs-apache-rtr-180', 200000, 'Street Bike', 'tvs-apache-rtr-180.jpg', 'Street Bike', 'https://www.tvsapache.com/rtr-180.aspx'),
(56, 1, 5, 'Tvs-apache-rtr-200-4v', 240000, 'Street Bike', 'tvs-apache-rtr-200-4v.jpg', 'Street Bike', 'https://www.tvsapache.com/rtr-2004v-series.aspx'),
(57, 2, 5, 'tvs-jupiter', 890000, 'Street Bike', 'tvs-jupiter.jpg', 'Street Bike', 'https://www.tvsjupiter.com/home'),
(58, 1, 5, 'tvs-victor', 98000, 'Street Bike', 'tvs-victor.jpg', 'Street Bike', 'https://www.tvsvictor.com/'),
(59, 2, 5, 'Tvs-wego', 68000, 'Street Bike', 'tvs-wego.jpg', 'Street Bike', 'https://www.tvswego.com/'),
(60, 2, 5, 'Tvs-xl-100', 49000, 'Street Bike', 'tvs-xl-100.jpg', 'Street Bike', 'https://www.tvsxl.com/home'),
(61, 2, 6, 'Yamaha-alpha', 76000, 'Street Bike', 'yamaha-alpha.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/scooter-alpha.html'),
(62, 2, 6, 'Yamaha-cygnus-ray-zr', 89000, 'Street Bike', 'yamaha-cygnus-ray-zr.jpg', 'Street Bike', 'https://autoportal.com/newbikes/yamaha/alpha/'),
(63, 2, 6, 'Yamaha-fascino', 86000, 'Street Bike', 'yamaha-fascino.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/scooter-fascino.html'),
(64, 1, 6, 'Yamaha-fazer', 130000, 'Street Bike', 'yamaha-fazer.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-fazer25.html'),
(65, 1, 6, 'Yamaha-fz 250', 180000, 'Street Bike', 'yamaha-fz25.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-fzs-fi.html'),
(66, 1, 6, 'Yamaha-fzs', 160000, 'Street Bike', 'yamaha-fzs.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-fzs-fi.html'),
(67, 1, 6, 'Yamaha-mt-09', 178000, 'Street Bike', 'yamaha-mt-09.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-mt09.html'),
(68, 2, 6, 'Yamaha-ray-z', 99000, 'Street Bike', 'yamaha-ray-z.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/scooter-rayz.html'),
(69, 1, 6, 'Yamaha-saluto', 110000, 'Street Bike', 'yamaha-saluto.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-saluto.html'),
(70, 1, 6, 'Yamaha-sz-rr', 160000, 'Street Bike', 'yamaha-sz-rr.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-sz-rr-bluecore.html'),
(71, 1, 6, 'Yamaha-yzf-r15-v3', 230000, 'Street Bike', 'yamaha-yzf-r15-v3.jpg', 'Street Bike', 'http://www.yamaha-motor-india.com/motorcycle-yzf-r15.html');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'vk', 'k', 'v@gmail.com', '318c532641082238c88c78ada87a3363', '8989898989', 'acv', 'mumbai'),
(4, 'abhishek', 'jain', 'abhishekjain@gmail.com', 'f5abf6a65dfc1b05c417dd96c53e2e40', '9920190251', '123456789', 'mumbai'),
(5, 'omkar', 'kale', 'omkarkale@gmail.com', 'ba293bfcc87e932d7b5771e0c0117a04', '1234567891', 'jdbhcibiudbc', 'mumbai'),
(6, 'amey', 'ghodke', 'ameyghodke@gmail.com', 'b7d396402aed52b0d50b01a96261bf2f', '1589451319', 'isubciubc', 'MUMBAI'),
(7, 'abhishek', 'jha', 'abhishekjha@gmail.com', 'ac73c2a0473aa2d1b18a7dcc94cbcb3f', '1423676745', 'sduhiudb', 'mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `parts_cat`
--
ALTER TABLE `parts_cat`
  ADD PRIMARY KEY (`pcat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parts_cat`
--
ALTER TABLE `parts_cat`
  MODIFY `pcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
