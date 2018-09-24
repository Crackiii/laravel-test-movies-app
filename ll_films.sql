-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 24, 2018 at 02:08 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ll_films`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_message`, `comment_by`, `comment_on`) VALUES
(1, 'Wow, such a nice movie', '1', '2'),
(2, 'I love this movie', '2', '1'),
(3, 'Gorgeous lady <3', '3', '1'),
(4, 'Wow wow wow', '4', '1'),
(5, 'I love this girl and the movies series too !', '1', '1'),
(6, 'She\'s pretty as hell <3', '1', '3'),
(7, 'The prettiest romance I have ever seen, just love it !', '1', '4'),
(8, 'I am so excited to watch this movie , ASAP ! ! !', '1', '5'),
(9, 'One of my Favourite Movies !', '1', '6'),
(10, 'Lovely Girl !', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `films_id_unique` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `description`, `release_date`, `rating`, `ticket_price`, `country`, `genre`, `photo`) VALUES
(1, 'Wonder Women', 'Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise.', 'August 25, 2018', '4', '19200', 'France', 'Action', 'http://www.thecultureconcept.com/wp-content/uploads/2017/06/Womder-Woman-3-1024x696.jpg'),
(2, 'Captain Marvel', 'Its really an amazing movie, I just Loved it.', 'Aug, 29 2019', '4', '1999', 'USA', 'Action, Drama, Shit', 'https://www.thewrap.com/wp-content/uploads/2017/07/Brie-Larson-in-as-Captain-Marvel.jpg'),
(3, 'The Hunger Game', 'The Hunger Game is a really tragic story and really accepted drama.', 'Sep 01, 2017', '5', '400', 'United States', 'Drama, Action, Horror', 'https://nyppagesix.files.wordpress.com/2017/07/jennifer-lawrence.jpg?quality=90&strip=all&w=618&h=410&crop=1'),
(4, 'Titanic', 'Titanic was a British passenger liner that sank in the North Atlantic Ocean in the early hours of 15 April 1912, after colliding with an iceberg during its maiden voyage from Southampton to New York City.', '1997', '5', '3000', 'United Kingdom', 'Romance, Love, Action, Horror', 'https://i.ytimg.com/vi/nSbJHdXYT4s/hqdefault.jpg'),
(5, 'Ant Man & the Wasp', 'Scott Lang is grappling with the consequences of his choices as both a superhero and a father. Approached by Hope van Dyne and Dr. Hank Pym, Lang must once again don the Ant-Man suit and fight alongside the Wasp.', 'July 4, 2018', '4', '1000', 'Indonesia', 'Action, Drama, Comedy,', 'https://static.gamespot.com/uploads/original/1165/11653967/3441948-ant-man-and-the-wasp-pre-order.jpg'),
(6, 'Thor: Ragnarok', 'Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger.', 'October 10, 2017', '5', '1500', 'Los Angeles', 'Romance, Love, Action, Horror, Drama, Thriller', 'https://static0.srcdn.com/wordpress/wp-content/uploads/2017/02/Thor-The-Dark-World-Convergence.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_09_24_074159_create_films_table', 2),
(5, '2018_09_24_081628_create_comments_table', 3),
(6, '2018_09_24_090119_create_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nadeem Ahmad', 'antesoft17@outlook.com', NULL, '$2y$10$2WSEhF7/atcXKDvFghcV6eAPEq/8OEOB/x8qOEAN3sLJtMGCnMNbu', 'Mp86vihj9nasdMRXiFVh9vUZ462x41TBPZISSR3vywUZl0n1F7ETN48LcweC', '2018-09-24 04:02:26', '2018-09-24 04:02:26'),
(2, 'Adnan Khan', 'adnan@khan.com', NULL, '$2y$10$33W7VorfUJ6nCfrd6PR7Yes/tjt/sFJhevSrymzvw2ads6zn.PRkS', 'YFHiJMrZzZblRtB9jUHlH9BaPuKU9PWm011OPUTxHXLVcYzYMqttQ32Z5Km1', '2018-09-24 04:02:50', '2018-09-24 04:02:50'),
(3, 'Huzaifa Ahmad', 'huzaifa@ahmad.com', NULL, '$2y$10$F895W.dAoViYxJVVEjCHMepetIqER3u344NuMDtPUDvRJHeRemluK', 'dcZPhNcldyhvtnMPjrzMeiZ0SmBGGmPomWpVIDSajwdxNXGHKmDdW2hAUQJm', '2018-09-24 04:03:11', '2018-09-24 04:03:11'),
(4, 'Arlbert Nicole', 'albert@nic.com', NULL, '$2y$10$.R95SO0X49zPJ4VAJhrfw.Z7GVzBNwyFEb6tZpZPibC0jD8.jn9AO', 'reZm67ONFJ9EvEXm5B7KX6GxoTHOIJra45vy1t4SCGP2tNTkQ0a0Gnjgp9zm', '2018-09-24 04:03:39', '2018-09-24 04:03:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
