-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 10:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_campaign`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `perks` text DEFAULT NULL,
  `backer_count` int(11) DEFAULT NULL,
  `goal_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `perks`, `backer_count`, `goal_amount`, `current_amount`, `slug`, `created_at`, `updated_at`) VALUES
(1, 4, 'Campaign', 'Short Desc', 'Description', 'perk satu, ini perks dua, ini yang ke tiga', 0, 10000000, 0, 'campaign-satu', '2022-08-23', '2022-08-23'),
(2, 4, 'Campaign dua', 'Short Desc', 'Description', 'perk satu, ini perks dua, ini yang ke tiga', 0, 10000000, 0, 'campaign-dua', '2022-08-23', '2022-08-23'),
(3, 9, 'Campaign tiga', 'Short Desc', 'Description', 'perk satu, ini perks dua, ini yang ke tiga', 0, 10000000, 0, 'campaign-tiga', '2022-08-23', '2022-08-23'),
(4, 4, 'Dana Judi Online', 'Short description', 'Long description', 'hadiah satu, hadiah dua, hadiah tiga', 0, 100000, 0, 'dana-judi-online-s-int-4', '2022-08-24', '2022-08-24'),
(5, 4, 'Dana Korban banjir', 'Short description', 'Long description', 'hadiah satu, hadiah dua, hadiah tiga', 0, 100000, 0, 'dana-korban-banjir-4', '2022-08-24', '2022-08-24'),
(6, 5, 'Campaign coba coba', 'Short description', 'Description', 'satu, dua, tiga', 0, 100000, 0, 'campaign-coba-coba-5', '2022-08-25', '2022-08-25'),
(7, 4, 'sebuah campaign yang sangat keren', 'Short Description', 'Ini description', 'Perks pertama, perks kedua, perks ketiga', 0, 5000000, 0, 'sebuah-campaign-yang-sangat-keren-4', '2022-08-25', '2022-08-25'),
(8, 4, 'Lagi coba Update sebuah campaign yang sangat keren', 'Update Short Description', 'Ini description Update', 'Perks pertama, perks kedua, perks ketiga, keempat', 0, 15000000, 0, 'ini-yang-kedua-sebuah-campaign-yang-sangat-keren-4', '2022-08-25', '2022-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) UNSIGNED DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 'satu.png', 0, '2022-08-23', '2022-08-26'),
(2, 1, 'dua.png', 0, '2022-08-23', '2022-08-26'),
(3, 1, 'tiga.png', 0, '2022-08-23', '2022-08-26'),
(4, 1, 'images/4-googlemaps.jpg', 0, '2022-08-26', '2022-08-26'),
(5, 1, 'images/5-googlemaps.jpg', 0, '2022-08-26', '2022-08-26'),
(6, 1, 'images/4-googlemaps.jpg', 1, '2022-08-26', '2022-08-26'),
(7, 5, 'images/4-googlemaps.jpg', 1, '2022-08-26', '2022-08-26'),
(8, 6, 'images/5-googlemaps.jpg', 1, '2022-08-26', '2022-08-26'),
(9, 6, 'images/5-DesignUi.png', 0, '2022-08-26', '2022-08-26'),
(10, 6, 'images/5-kotlin.jpg', 0, '2022-08-26', '2022-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `campaign_id`, `user_id`, `amount`, `status`, `code`, `payment_url`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 100000, 'paid', NULL, NULL, '2022-08-27', '2022-08-27'),
(2, 2, 4, 500000, 'pending', NULL, NULL, '2022-08-27', '2022-08-27'),
(3, 6, 9, 3000000, 'pending', '', NULL, '2022-08-29', '2022-08-29'),
(5, 6, 9, 10000000, 'pending', '', NULL, '2022-08-29', '2022-08-29'),
(6, 6, 5, 1234567, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/482245b2-7d4f-4041-a3dc-d66e91c85524', '2022-08-30', '2022-08-30'),
(7, 6, 5, 999999, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/83eac3c4-fd40-439d-b5d7-fbb5e08c2d1e', '2022-08-30', '2022-08-30'),
(8, 2, 5, 650000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/1f1d1cfb-485e-42ef-ac81-cc40e1ed0301', '2022-08-31', '2022-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Fiqih', 'Backend', 'fiqih1666@gmail.com', '123456', 'images/1-gdrive.jpg', 'user', '0000-00-00', '2022-08-22'),
(2, 'Steven', 'Frontend', '1666@gmail.com', '123456', '', 'user', '2022-08-20', '2022-08-20'),
(3, 'Test simpan', '', '', '', '', '', '2022-08-20', '2022-08-20'),
(4, 'John Doe', 'Software Engineer', 'example@gmail.com', '$2a$04$5MJq73EfJdDuwyU3fg6QI.U4WZfC8P/sV3bxKaWFMX67K48n7maaS', 'images/4-gdrive.jpg', 'user', '2022-08-20', '2022-08-22'),
(5, 'Name dari POSTMAN', 'Designer', 'email@gmail.com', '$2a$04$NCFojukTg.o7s4L4CfggHOwPv5QkifaWHqutcxLh76qcbmQkqPMCe', '', 'user', '2022-08-20', '2022-08-20'),
(6, 'Nama', 'QA', 'nama@gmail.com', '$2a$04$xXh4uyd1PlM/bHABWgE1peD3ZKLTbmykg8Z4efjNXvdeStniBpWRW', '', 'user', '2022-08-20', '2022-08-20'),
(7, 'Nama coba', 'Sales', 'nama@gmail.com', '$2a$04$qdOWVAoHnY/q4m8XcOmvpOk8y9jjvRqbYnh/IRYPy80nUOwA5q5Xi', '', 'user', '2022-08-20', '2022-08-20'),
(8, 'Nama coba', 'Sales', 'nama@gmail.com', '$2a$04$TVzn7Yxw0PkoLwd1a7M1ROmSMJBrDfZXhjJPHFFU4PDjx67vBslYy', '', 'user', '2022-08-20', '2022-08-20'),
(9, 'jwt', 'auth', 'jwt@gmail.com', '$2a$04$kLB7zB8n2MDrsrTZCYnUuuOAZ5lDlZXWo58QZK/0y/yZJSj4/bAAa', '', 'user', '2022-08-22', '2022-08-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD CONSTRAINT `campaign_images_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
