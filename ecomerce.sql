-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 10:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `url`) VALUES
(1, 'discount', 'https://cdn.shopify.com/s/files/1/1209/9912/products/BISHOP-GOLF-SHIRT-1_1200x1200.jpg?v=1587391381');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `Name` varchar(2000) NOT NULL,
  `discri` varchar(2000) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `Name`, `discri`, `price`) VALUES
(1, 'hello', 'finaly', 143),
(2, 'another', 'hot', 200),
(3, 'product', 'new', 133),
(4, 'hello ', 'this', 900),
(5, 'smthing', 'again', 123),
(6, 'smthing', 'again', 123),
(7, 'smthing', 'again', 123),
(8, 'smthing', 'again', 123),
(9, 'smthing', 'again', 123),
(10, 'wow', 'again', 123),
(11, 'eyob', 'again', 123),
(12, 'shoe', 'goodshoe', 123),
(13, 'shoe', 'goodshoe', 123),
(14, 'shoe', 'goodshoe', 123),
(15, 'shoes', 'good look', 123),
(16, 'shoes black', 'good look', 2500),
(17, 'shoes black', 'good look', 2500),
(18, 'shoes black', 'good look', 2500),
(19, 'shoes black', 'good look', 2500),
(20, 'yellow shoes', 'good look shoes', 4000),
(21, 'tshirt', 'this is blue tshirt', 300),
(22, 'tshirt', 'cool', 500),
(23, 'hand watch', 'cool', 4000),
(24, 'sweater', 'pitles', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `descri` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `imageurl` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Name`, `descri`, `price`, `imageurl`) VALUES
(23, 'yellow 2', 'good look shoes', 900, 'https://shopbadmintononline.com/images_zoom/mens-badminton-shoe-FYZN005-2-B.jpg'),
(24, 't-shirt', 'this is blue tshirt', 3000, 'https://th.bing.com/th/id/R.e15e6d1ccf3a2f6dfa6ab9480cc51590?rik=cL4x42A8ozB4cA&pid=ImgRaw&r=0'),
(25, 'tshirt', 'cool', 500, 'https://www.he-man.org/assets/images/collect_toy/10479130_hi_full.jpg'),
(26, 'hand watch', 'cool', 4000, 'https://th.bing.com/th/id/R.5a0cdf9eadfd61f05d36ea22ab399eb5?rik=yvdAYuh7dNqBFg&riu=http%3a%2f%2fwww.debillaslux.com%2fuploads%2f1%2f2%2f0%2f8%2f120855050%2fs946305602972009394_p171_i1_w640.jpeg&ehk=81Ujg17ynlzalvKhM%2fBYUQT2I3kw3AKtjnFVQgzyXrY%3d&risl=&pid=ImgRaw&r=0'),
(27, 'sweater', 'pitles', 1000, 'https://th.bing.com/th/id/R.5a0cdf9eadfd61f05d36ea22ab399eb5?rik=yvdAYuh7dNqBFg&riu=http%3a%2f%2fwww.debillaslux.com%2fuploads%2f1%2f2%2f0%2f8%2f120855050%2fs946305602972009394_p171_i1_w640.jpeg&ehk=81Ujg17ynlzalvKhM%2fBYUQT2I3kw3AKtjnFVQgzyXrY%3d&risl=&pid=ImgRaw&r=0'),
(28, 'pitles', 'sweater', 13000, 'https://smartmenfashions.com/wp-content/uploads/2018/11/626-4e05e5e627249db368deff3d2b891e3b.jpg'),
(29, 'pinkish', 'swether', 9000, 'https://extravagantza.com/8515-thickbox_default/sexy-hand-knitted-mohair-turtleneck-sweater-dark-pink-color.jpg'),
(30, 'man suite', ':)', 376555, 'https://i0.wp.com/www.theunstitchd.com/wp-content/uploads/2018/03/mens-fashion-trends-this-year.jpg?fit=649%2C1078'),
(31, 'to show', 'it is working fine', 1234, 'http://192.168.0.169/dashboard/ips/img.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
