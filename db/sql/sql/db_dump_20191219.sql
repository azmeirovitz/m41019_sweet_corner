-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2019 at 07:34 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--
CREATE DATABASE IF NOT EXISTS `sweet_corner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_corner`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `statusId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL,
  `lastInteraction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `statusId`, `userId`, `lastInteraction`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '48fb946f-17e6-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-05 21:07:22', '2019-12-05 21:07:22', '2019-12-05 21:07:22', NULL),
(2, '86053881-1bc6-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:30:05', '2019-12-10 19:30:05', '2019-12-10 19:30:05', NULL),
(3, '0f5ef400-1bc8-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:41:05', '2019-12-10 19:41:05', '2019-12-10 19:41:05', NULL),
(4, '4235faae-1bc8-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:42:30', '2019-12-10 19:42:30', '2019-12-10 19:42:30', NULL),
(5, 'c97e51e0-1bc8-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:46:17', '2019-12-10 19:46:17', '2019-12-10 19:46:17', NULL),
(6, 'df2672e4-1bc8-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:46:53', '2019-12-10 19:46:53', '2019-12-10 19:46:53', NULL),
(7, '1c4796a0-1bc9-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:48:36', '2019-12-10 19:48:36', '2019-12-10 19:48:36', NULL),
(8, '342188f2-1bc9-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:49:16', '2019-12-10 19:49:16', '2019-12-10 19:49:16', NULL),
(9, '15aa31af-1bca-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:55:34', '2019-12-10 19:55:34', '2019-12-10 19:55:34', NULL),
(10, '1c17d14f-1bca-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:55:45', '2019-12-10 19:55:45', '2019-12-10 19:55:45', NULL),
(11, '2b9c28ed-1bca-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 19:56:11', '2019-12-10 19:56:11', '2019-12-10 19:56:11', NULL),
(12, 'bb305b7a-1bcc-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 20:14:31', '2019-12-10 20:14:31', '2019-12-10 20:14:31', NULL),
(13, 'cb12b43c-1bcc-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 20:14:58', '2019-12-10 20:14:58', '2019-12-10 20:14:58', NULL),
(14, '504b84f2-1bd2-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 20:54:29', '2019-12-10 20:54:29', '2019-12-10 20:54:29', NULL),
(15, '7d964843-1bd2-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-10 20:55:45', '2019-12-10 20:55:45', '2019-12-10 20:55:45', NULL),
(16, '5a00e0e2-1d59-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-12 19:33:38', '2019-12-12 19:33:38', '2019-12-12 19:33:38', NULL),
(17, 'e01bbf15-2150-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-17 20:43:02', '2019-12-17 20:43:02', '2019-12-17 20:43:02', NULL),
(18, 'f53eda6e-2150-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-17 20:43:38', '2019-12-17 20:43:38', '2019-12-17 20:43:38', NULL),
(19, '7982b294-2151-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-17 20:47:20', '2019-12-17 20:47:20', '2019-12-17 20:47:20', NULL),
(20, 'ab4166e5-2151-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-17 20:48:43', '2019-12-17 20:48:43', '2019-12-17 20:48:43', NULL),
(21, 'fe273a4e-22d8-11ea-b0c8-b469216f1921', 2, NULL, '2019-12-19 19:29:56', '2019-12-19 19:29:56', '2019-12-19 19:29:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

CREATE TABLE `cartItems` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `cartId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `pid`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'cb1c5a5a-1bcc-11ea-b0c8-b469216f1921', 13, 1, 1, '2019-12-10 20:14:58', '2019-12-10 20:14:58', NULL),
(2, '7d9aa6a6-1bd2-11ea-b0c8-b469216f1921', 15, 1, 1, '2019-12-10 20:55:45', '2019-12-10 20:55:45', NULL),
(3, '5a08fb32-1d59-11ea-b0c8-b469216f1921', 16, 1, 1, '2019-12-12 19:33:38', '2019-12-12 19:33:38', NULL),
(4, 'd3727c63-1d5b-11ea-b0c8-b469216f1921', 15, 8, 41, '2019-12-12 19:51:21', '2019-12-14 15:54:53', NULL),
(5, 'e0257a95-2150-11ea-b0c8-b469216f1921', 17, 1, 1, '2019-12-17 20:43:02', '2019-12-17 20:43:02', NULL),
(6, 'f5435caf-2150-11ea-b0c8-b469216f1921', 18, 3, 1, '2019-12-17 20:43:38', '2019-12-17 20:43:38', NULL),
(7, '7988ca3a-2151-11ea-b0c8-b469216f1921', 19, 3, 1, '2019-12-17 20:47:20', '2019-12-17 20:47:20', NULL),
(8, 'ab484c86-2151-11ea-b0c8-b469216f1921', 20, 2, 1, '2019-12-17 20:48:43', '2019-12-17 20:48:43', NULL),
(9, 'fe343a7e-22d8-11ea-b0c8-b469216f1921', 21, 2, 2, '2019-12-19 19:29:56', '2019-12-19 19:29:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

CREATE TABLE `cartStatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartStatuses`
--

INSERT INTO `cartStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'new', 'New', 'Cart is new and empty', '2019-12-05 20:48:43', '2019-12-05 20:48:43', NULL),
(2, 'active', 'Active', 'Cart has items but the order has not been completed', '2019-12-05 20:48:43', '2019-12-05 20:48:43', NULL),
(3, 'closed', 'Closed', 'The order has been completed and the cart is closed', '2019-12-05 20:48:43', '2019-12-05 20:48:43', NULL),
(4, 'canceled', 'Canceled', 'The order has been canceled and the cart is closed', '2019-12-05 20:48:43', '2019-12-05 20:48:43', NULL),
(5, 'inactive', 'Inactive', 'Cart is no longer the currently active cart, but can be reactivated', '2019-12-05 20:48:43', '2019-12-05 20:48:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `altText` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('full_image','thumbnail') NOT NULL DEFAULT 'full_image',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `productId`, `createdById`, `altText`, `name`, `file`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '4c0424c9-13cc-11ea-b0c8-b469216f1921', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(2, '4c0426b5-13cc-11ea-b0c8-b469216f1921', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(3, '4c042729-13cc-11ea-b0c8-b469216f1921', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(4, '4c04275c-13cc-11ea-b0c8-b469216f1921', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(5, '4c042789-13cc-11ea-b0c8-b469216f1921', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(6, '4c0427b4-13cc-11ea-b0c8-b469216f1921', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(7, '4c0427e1-13cc-11ea-b0c8-b469216f1921', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(8, '4c04280c-13cc-11ea-b0c8-b469216f1921', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(9, '4c04283e-13cc-11ea-b0c8-b469216f1921', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(10, '4c042869-13cc-11ea-b0c8-b469216f1921', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(11, '4c042893-13cc-11ea-b0c8-b469216f1921', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(12, '4c0428c1-13cc-11ea-b0c8-b469216f1921', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(13, '4c0428ec-13cc-11ea-b0c8-b469216f1921', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(14, '4c042919-13cc-11ea-b0c8-b469216f1921', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(15, '4c042945-13cc-11ea-b0c8-b469216f1921', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(16, '4c04296f-13cc-11ea-b0c8-b469216f1921', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(17, '4c04299d-13cc-11ea-b0c8-b469216f1921', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'full_image', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL),
(18, '4c0429cb-13cc-11ea-b0c8-b469216f1921', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'thumbnail', '2019-11-30 15:51:15', '2019-11-30 15:51:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `createdById`, `caption`, `cost`, `description`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'fdda9eb3-13cb-11ea-b0c8-b469216f1921', 1, 'Delicious Strawberry Cupcake', 350, 'These strawberry delights will satisfy both your sweet tooth and those strawberry cravings.', 'Strawberry Delight', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(2, 'fddaa045-13cb-11ea-b0c8-b469216f1921', 1, 'Sweet Berry Cupcake', 200, 'This is the berry cupcake of your dreams, they may be small but pack huge flavor.', 'Purple Dream', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(3, 'fddaa0c2-13cb-11ea-b0c8-b469216f1921', 1, 'Mini Strawberry Cupcake', 225, 'These are a miniature version of our famous Strawberry Delight cupcakes, all the flavor, half the guilt.', 'Mini Berry', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(4, 'fddaa0f8-13cb-11ea-b0c8-b469216f1921', 1, 'Unicorn Tear Sparkling Cupcake', 650, 'What do unicorn tears taste like? We don\'t know, but we do know these cupcakes taste better!', 'Unicorn Tear', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(5, 'fddaa128-13cb-11ea-b0c8-b469216f1921', 1, 'Red and Yellow Rose Vanilla Cupcake', 575, 'Delightful vanilla cupcakes with rose frosting piled high on top.', 'Pearl Rose', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(6, 'fddaa158-13cb-11ea-b0c8-b469216f1921', 1, 'Silky Red Cupcake Loaded with Frosting', 350, 'A vanilla cupcake with strawberry silk frosting eloquently piled high with a peach topping.', 'Red Silk', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(7, 'fddaa188-13cb-11ea-b0c8-b469216f1921', 1, 'Vanilla Cupcake Piled with Vanilla Frosting', 600, 'Not just another vanilla cupcake. Our Vanilla Stack Cake cupcake is stacked with three scoops of vanilla frosting and topped with drizzled vanilla and a delicious cherry.', 'Vanilla Stack Cake', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(8, 'fddaa1bc-13cb-11ea-b0c8-b469216f1921', 1, 'Blueberry Cupcake Piled High with Toppings', 775, 'A large blueberry cupcake topped with blueberry frosting, chocolate syrup, whip cream, and a sweet cherry. Looks and taste like your favorite blueberry malt.', 'Blueberry Malt Cake', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL),
(9, 'fddaa1fe-13cb-11ea-b0c8-b469216f1921', 1, 'Lemon Cupcake with Piled High Lemon Frosting', 450, 'Lemon, lemon, and more lemon! Love lemon? So do we and our Double Lemon cupcake proves it!', 'Double Lemon', '2019-11-30 15:49:04', '2019-11-30 15:49:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;