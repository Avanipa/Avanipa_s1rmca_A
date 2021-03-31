-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 08:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '$2y$10$YYT8lqI7S1yQ6Pw0mlAeTun3IB0FE9cbs6XM0xlC3bxmdgs30AnhK');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(800) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `type`, `breed`, `price`, `image`, `description`) VALUES
(5, 'Cat', '#CDEW', '12,000', 'cat1.jpg', 'Small cats.Pair of cats'),
(6, 'Cat', '#EFRDW', '10.000', 'cat2.jpg', 'The Cat Fanciers’ Association, which is the world’s largest registry of pedigreed cats, recognizes about 40 distinct breeds. The most familiar cats are the domestic shorthair and the domestic longhair, which are really mixtures of different breeds. Cat breeds differ in looks, coat length, and other characteristics but vary relatively little in size. On average, only 5 to 10 pounds separate the smallest and largest domestic breeds of cats.'),
(7, 'Dog', 'GSD', '60, 000', 'dogs.jpg', 'Dogs come in many shapes and sizes. The smallest breeds include the toy and miniature varieties, such as the Toy Poodle, Papillon, Chihuahua, and Shih Tzu. These dogs usually weigh only 5 to 10 pounds (2.3 to 4.5 kilograms), or even less. Medium-sized dogs include many of the terriers and spaniels, which weigh in the 10 to 50 pound (4.5 to 23 kilograms) range. Larger still are the retrievers, shepherds, and setters, which often weigh 65 to 100 pounds (30 to 45 kilograms).'),
(8, 'Dog', 'Roetveiler', '14, 000', 'dog2.jpg', 'the giant breeds, such as the Mastiff, Komondor, and Saint Bernard, can approach or exceed 200 pounds (91 kilograms). Of course, sizes vary within breeds, with males usually being larger than females. Mixed-breed dogs include all size ranges.'),
(9, 'Cat', '#erfde', '14, 000', 'cat4.jpg', 'The cat is similar in anatomy to the other felid species: it has a strong flexible body, quick reflexes, sharp teeth and retractable claws adapted to killing small prey. Its night vision and sense of smell are well developed. Cat communication includes vocalizations like meowing, purring, trilling, hissing, growling and grunting as well as cat-specific body language. A predator that is most active at dawn and dusk, the cat is a solitary hunter but a social species. '),
(10, 'Cat', '#CFRED', '1200', 'cat3.jpg', 'Cats often meow to initiate play, petting, or to get you to talk to them. If you want to cut down on attention-seeking meows, stop responding when it happens. Only give them attention when they are quiet. If they start to meow again, look or walk away');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `address`, `phone`, `price`, `name`, `image`) VALUES
(39, 'athi@gmail.com', 'pulikkunnanmukalil', '1245896785', '14, 000', '#erfde', 'cat4.jpg'),
(40, 'athi@gmail.com', 'pulikkunnanmukalil', '1245896785', '12,000', '#CDEW', 'cat1.jpg'),
(41, 'athi@gmail.com', 'pulikkunnanmukalil', '1245896785', '60, 000', 'GSD', 'dogs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart_order`
--

CREATE TABLE `cart_order` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `itemName` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_order`
--

INSERT INTO `cart_order` (`id`, `name`, `email`, `itemName`) VALUES
(2, 'avani', 'avani@gmail.com', 'Roetveiler, GSD, #CDEW'),
(3, 'Jisha', 'jisha@gmail.com', '#CFRED, #CDEW, #EFRDW, GSD, Roetveiler'),
(4, 'avani', 'avani@gmail.com', '#CDEW');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `address`, `email`, `number`, `password`) VALUES
(6, 'Avani', 'ahjnkfnjfoijdiofjkjkfjoijfoihjkogjmnlg', 'avanipa1999@gmail.com', 123, '12345678'),
(7, 'athi', 'pulikkunnanmukalil', 'athi@gmail.com', 1245896785, '$2y$10$JIDAPbb1LIJuJ9nuOPYxq.s4nAsAmD084.hvUQhQpe9ck9WZP9/ti'),
(8, 'erer', 'sdsdsd', 'abhchH@gmail.com', 1212, '$2y$10$YYT8lqI7S1yQ6Pw0mlAeTun3IB0FE9cbs6XM0xlC3bxmdgs30AnhK'),
(9, 'avani', 'pulikkunnanumkuakil', 'avani@gmail.com', 12458964, '$2y$10$e/IPS9iDHUMhkh1MTHpld.pRLtIpj6eCBQCo3wZR4qME.iRWIuKdu'),
(10, 'Jisha', 'ABC House, Kattappana PO, Kattappan', 'jisha@gmail.com', 1234567890, '$2y$10$H1iV9B6KtxhuIdF/6V2DyONSiaRtzJf0wbEbpED7YJ3EMdbIS5./6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
