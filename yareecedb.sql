-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 04:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yareecedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fevicon_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_balance` decimal(12,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_balance` decimal(10,0) DEFAULT NULL,
  `payment` decimal(8,2) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone_number`, `avatar`, `address`, `city`, `state`, `zip`, `company_name`, `account`, `prev_balance`, `payment`, `type`, `created_at`, `updated_at`) VALUES
(1, 'lockdown', '', '09030919402', 'no-foto.png', 'agbado', '', '', '', '', '', '2081122', '0.00', 1, '2020-05-04 20:48:06', '2020-05-04 22:05:30'),
(2, 'lockdown', '', '09030919402', 'no-foto.png', 'agbado', '', '', '', '', '', '0', '0.00', 1, '2020-05-04 20:48:07', '2020-05-04 20:48:07'),
(3, 'ishola gate', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '873821', '0.00', 1, '2020-05-04 22:07:44', '2020-05-11 19:41:01'),
(4, 'tosin ilupeju', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '185566', '0.00', 1, '2020-05-04 22:36:22', '2020-05-07 02:23:12'),
(5, 'idowu', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '1371469', '0.00', 1, '2020-05-05 02:38:04', '2020-05-07 23:41:12'),
(6, 'niyi', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '330359', '0.00', 1, '2020-05-05 02:42:43', '2020-05-05 07:05:13'),
(7, 'ahlaji wasiu', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '203977', '0.00', 1, '2020-05-05 02:46:15', '2020-05-07 23:28:49'),
(8, 'chorma', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '330017', '0.00', 1, '2020-05-05 02:52:13', '2020-05-06 00:45:25'),
(9, 'ify', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '231128', '0.00', 1, '2020-05-05 02:57:24', '2020-05-07 23:29:31'),
(10, 'paul', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '330144', '0.00', 1, '2020-05-05 03:06:10', '2020-05-06 23:23:33'),
(11, 'ibrahim', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '109061', '0.00', 1, '2020-05-05 03:09:20', '2020-05-05 22:24:04'),
(12, 'alogba', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '72618', '0.00', 1, '2020-05-05 06:43:33', '2020-05-05 06:44:46'),
(13, 'bodunrin', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '81046', '0.00', 1, '2020-05-05 06:45:55', '2020-05-05 06:57:11'),
(14, 'frank', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '333200', '0.00', 1, '2020-05-05 06:59:04', '2020-05-06 03:05:47'),
(15, 'rotimi', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '448326', '0.00', 1, '2020-05-05 07:01:46', '2020-05-07 23:50:03'),
(16, 'boardmax', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '-5050', '0.00', 1, '2020-05-05 07:06:17', '2020-05-07 22:05:28'),
(17, 'youngest', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '124754', '0.00', 1, '2020-05-05 07:08:57', '2020-05-05 07:09:44'),
(18, 'mr isaac', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '902358', '0.00', 1, '2020-05-05 21:57:38', '2020-05-08 01:57:35'),
(19, 'andy', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '639058', '0.00', 1, '2020-05-05 22:17:57', '2020-05-07 23:57:26'),
(20, 'household', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '210896', '0.00', 1, '2020-05-05 22:19:20', '2020-05-07 01:53:59'),
(21, 'ibukun', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '1127196', '0.00', 1, '2020-05-05 22:26:00', '2020-05-08 01:04:16'),
(22, 'mr ade', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '364952', '0.00', 1, '2020-05-05 22:49:43', '2020-05-05 22:52:42'),
(23, 'iya ibeji', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '358778', '0.00', 1, '2020-05-05 23:05:00', '2020-05-07 00:11:25'),
(24, 'kas', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '386580', '0.00', 1, '2020-05-05 23:12:09', '2020-05-07 22:04:08'),
(25, 'chairman', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '108388', '0.00', 1, '2020-05-06 00:17:27', '2020-05-06 00:17:55'),
(26, 'balo', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '722780', '0.00', 1, '2020-05-06 00:19:36', '2020-05-08 00:05:53'),
(27, 'gbenga', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '108406', '0.00', 1, '2020-05-06 03:02:57', '2020-05-07 03:06:18'),
(28, 'lala', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '14000', '0.00', 1, '2020-05-06 21:30:50', '2020-05-06 21:32:21'),
(29, 'tbello', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '143766', '0.00', 1, '2020-05-07 00:45:08', '2020-05-07 00:45:37'),
(30, 'musa', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '65072', '0.00', 1, '2020-05-07 01:52:23', '2020-05-07 01:52:53'),
(31, 'iya nike', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '74676', '0.00', 1, '2020-05-07 02:05:13', '2020-05-07 22:32:53'),
(32, 'dimeji', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '273910', '0.00', 1, '2020-05-07 20:21:59', '2020-05-07 20:23:09'),
(33, 'peter', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '168146', '0.00', 1, '2020-05-07 21:44:04', '2020-05-08 00:56:26'),
(34, 'petica', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '69286', '0.00', 1, '2020-05-07 22:06:21', '2020-05-07 22:06:51'),
(35, 'big daddy', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '-20', '0.00', 1, '2020-05-07 22:53:05', '2020-05-07 23:15:18'),
(36, 'kola', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '143766', '0.00', 1, '2020-05-07 23:52:05', '2020-05-07 23:52:52'),
(37, 'kalamusat', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '409052', '0.00', 1, '2020-05-08 00:25:43', '2020-05-08 00:26:24'),
(38, 'mariam', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '143766', '0.00', 1, '2020-05-08 00:27:17', '2020-05-08 00:28:25'),
(39, 'mike', '', '', 'no-foto.png', 'lagos', '', '', '', '', '', '108338', '0.00', 1, '2020-05-08 00:33:27', '2020-05-08 01:55:57'),
(40, 'banky', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '245294', '0.00', 1, '2020-05-08 01:07:00', '2020-05-08 01:09:59'),
(41, 'ishola tec', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '93100', '0.00', 1, '2020-05-08 01:29:39', '2020-05-08 01:30:49'),
(42, 'papa', '', 'nill', 'no-foto.png', 'lagos', '', '', '', '', '', '0', '0.00', 1, '2020-05-08 02:07:29', '2020-05-08 02:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payments`
--

CREATE TABLE `customer_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_reports`
--

CREATE TABLE `daily_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `prev_balance` decimal(12,2) NOT NULL,
  `total_sales` decimal(12,2) NOT NULL,
  `total_payment` decimal(12,2) NOT NULL,
  `total_dues` decimal(12,2) NOT NULL,
  `sale_profit` decimal(12,2) NOT NULL,
  `total_income` decimal(12,2) NOT NULL,
  `total_expense` decimal(12,2) NOT NULL,
  `total_receivings` decimal(12,2) NOT NULL,
  `total_receivings_payment` decimal(12,2) NOT NULL,
  `total_receivings_dues` decimal(12,2) NOT NULL,
  `total_supplier_payment` decimal(12,2) NOT NULL,
  `total_costing` decimal(12,2) NOT NULL,
  `net_balance` decimal(12,2) NOT NULL,
  `total_profit` decimal(12,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `dues` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expense_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flexible_pos_settings`
--

CREATE TABLE `flexible_pos_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fevicon_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_balance` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `in_out_qty` int(11) NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `item_id`, `user_id`, `in_out_qty`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 73, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(2, 58, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(3, 155, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(4, 144, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(5, 78, 6, -2, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(6, 2, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(7, 138, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(8, 138, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(9, 73, 6, -3, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(10, 120, 6, -1, 'SALE1', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(11, 138, 6, 1, 'Mistake while invoicing', '2020-05-04 21:24:31', '2020-05-04 21:24:31'),
(12, 53, 6, 1, 'new supply', '2020-05-04 21:34:01', '2020-05-04 21:34:01'),
(13, 53, 6, 1, 'new supply 2/5/2020', '2020-05-04 21:34:52', '2020-05-04 21:34:52'),
(14, 139, 6, 1, 'new supply30/4/2029', '2020-05-04 21:36:37', '2020-05-04 21:36:37'),
(15, 110, 6, 1, 'new supply30/4/2029', '2020-05-04 21:38:10', '2020-05-04 21:38:10'),
(16, 73, 6, 4, 'new supply 1/5/2020', '2020-05-04 21:43:16', '2020-05-04 21:43:16'),
(17, 15, 6, 1, 'new supply 1/5/2020', '2020-05-04 21:56:08', '2020-05-04 21:56:08'),
(18, 59, 6, 1, 'new supply 1/5/2020', '2020-05-04 21:58:09', '2020-05-04 21:58:09'),
(19, 139, 6, -1, 'SALE2', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(20, 53, 6, -1, 'SALE2', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(21, 59, 6, -1, 'SALE2', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(22, 44, 6, -1, 'SALE3', '2020-05-04 22:09:59', '2020-05-04 22:09:59'),
(23, 110, 6, 2, 'new supply4/5/2020', '2020-05-04 22:24:36', '2020-05-04 22:24:36'),
(24, 105, 6, 1, 'new supply4/5/2020', '2020-05-04 22:26:18', '2020-05-04 22:26:18'),
(25, 14, 6, 1, 'new supply4/5/2020', '2020-05-04 22:30:33', '2020-05-04 22:30:33'),
(26, 139, 6, 1, 'new supply4/5/2020', '2020-05-04 22:31:31', '2020-05-04 22:31:31'),
(27, 110, 6, -2, 'SALE4', '2020-05-04 22:33:48', '2020-05-04 22:33:48'),
(28, 105, 6, -1, 'SALE5', '2020-05-04 22:37:47', '2020-05-04 22:37:47'),
(29, 73, 6, -1, 'SALE6', '2020-05-05 02:40:46', '2020-05-05 02:40:46'),
(30, 90, 6, -1, 'SALE7', '2020-05-05 02:44:37', '2020-05-05 02:44:37'),
(31, 137, 6, -1, 'SALE8', '2020-05-05 02:51:01', '2020-05-05 02:51:01'),
(32, 143, 6, -1, 'SALE9', '2020-05-05 02:55:00', '2020-05-05 02:55:00'),
(33, 38, 6, -1, 'SALE10', '2020-05-05 02:59:09', '2020-05-05 02:59:09'),
(34, 38, 6, -1, 'SALE11', '2020-05-05 03:07:41', '2020-05-05 03:07:41'),
(35, 37, 6, -1, 'SALE12', '2020-05-05 03:11:24', '2020-05-05 03:11:24'),
(36, 149, 6, -1, 'SALE12', '2020-05-05 03:11:24', '2020-05-05 03:11:24'),
(37, 38, 6, -1, 'SALE13', '2020-05-05 03:13:14', '2020-05-05 03:13:14'),
(38, 58, 6, 15, 'new supply4/5/2020', '2020-05-05 03:17:47', '2020-05-05 03:17:47'),
(39, 44, 6, -2, 'SALE14', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(40, 38, 6, -2, 'SALE14', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(41, 108, 6, -1, 'SALE14', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(42, 58, 6, -2, 'SALE14', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(43, 15, 6, -1, 'SALE15', '2020-05-05 06:44:46', '2020-05-05 06:44:46'),
(44, 37, 6, 6, 'new supply4/5/2020', '2020-05-05 06:50:52', '2020-05-05 06:50:52'),
(45, 37, 6, -1, 'SALE16', '2020-05-05 06:57:11', '2020-05-05 06:57:11'),
(46, 44, 6, -1, 'SALE17', '2020-05-05 06:59:39', '2020-05-05 06:59:39'),
(47, 105, 6, -1, 'SALE18', '2020-05-05 07:03:26', '2020-05-05 07:03:26'),
(48, 38, 6, -1, 'SALE18', '2020-05-05 07:03:26', '2020-05-05 07:03:26'),
(49, 146, 6, -1, 'SALE19', '2020-05-05 07:05:13', '2020-05-05 07:05:13'),
(50, 90, 6, -1, 'SALE20', '2020-05-05 07:07:23', '2020-05-05 07:07:23'),
(51, 139, 6, -1, 'SALE21', '2020-05-05 07:09:44', '2020-05-05 07:09:44'),
(52, 38, 6, 11, 'new supply4/5/2020', '2020-05-05 07:20:05', '2020-05-05 07:20:05'),
(53, 10, 6, 4, 'new supply4/5/2020', '2020-05-05 07:20:57', '2020-05-05 07:20:57'),
(54, 15, 6, 5, 'new supply4/5/2020', '2020-05-05 07:21:44', '2020-05-05 07:21:44'),
(55, 62, 6, 6, 'new supply4/5/2020', '2020-05-05 07:22:27', '2020-05-05 07:22:27'),
(56, 46, 6, 2, 'new supply5/5/2020', '2020-05-05 21:32:39', '2020-05-05 21:32:39'),
(57, 105, 6, 1, 'new supply5/5/2020', '2020-05-05 21:33:24', '2020-05-05 21:33:24'),
(58, 137, 6, 1, 'new supply5/5/2020', '2020-05-05 21:35:11', '2020-05-05 21:35:11'),
(59, 51, 6, -1, 'SALE22', '2020-05-05 21:58:25', '2020-05-05 21:58:25'),
(60, 149, 6, -1, 'SALE22', '2020-05-05 21:58:25', '2020-05-05 21:58:25'),
(61, 128, 6, -1, 'SALE22', '2020-05-05 21:58:26', '2020-05-05 21:58:26'),
(62, 92, 6, -1, 'SALE22', '2020-05-05 21:58:26', '2020-05-05 21:58:26'),
(63, 137, 6, -1, 'SALE23', '2020-05-05 22:19:48', '2020-05-05 22:19:48'),
(64, 46, 6, -1, 'SALE24', '2020-05-05 22:22:11', '2020-05-05 22:22:11'),
(65, 73, 6, -1, 'SALE24', '2020-05-05 22:22:11', '2020-05-05 22:22:11'),
(66, 37, 6, -1, 'SALE25', '2020-05-05 22:22:56', '2020-05-05 22:22:56'),
(67, 134, 6, -1, 'SALE26', '2020-05-05 22:24:04', '2020-05-05 22:24:04'),
(68, 149, 6, -2, 'SALE27', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(69, 37, 6, -1, 'SALE27', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(70, 18, 6, -1, 'SALE27', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(71, 134, 6, 1, 'return from ibrahim 5/5/2020', '2020-05-05 22:36:34', '2020-05-05 22:36:34'),
(72, 147, 6, 2, 'new supply5/5/2020', '2020-05-05 22:47:49', '2020-05-05 22:47:49'),
(73, 147, 6, -1, 'SALE28', '2020-05-05 22:48:43', '2020-05-05 22:48:43'),
(74, 147, 6, -1, 'SALE29', '2020-05-05 22:52:42', '2020-05-05 22:52:42'),
(75, 38, 6, -1, 'SALE30', '2020-05-05 23:05:33', '2020-05-05 23:05:33'),
(76, 101, 6, -1, 'SALE31', '2020-05-05 23:13:15', '2020-05-05 23:13:15'),
(77, 44, 6, -1, 'SALE32', '2020-05-05 23:24:43', '2020-05-05 23:24:43'),
(78, 63, 6, -1, 'SALE33', '2020-05-05 23:46:54', '2020-05-05 23:46:54'),
(79, 141, 6, -1, 'SALE34', '2020-05-06 00:14:37', '2020-05-06 00:14:37'),
(80, 44, 6, -1, 'SALE35', '2020-05-06 00:17:55', '2020-05-06 00:17:55'),
(81, 37, 6, -1, 'SALE36', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(82, 92, 6, -2, 'SALE36', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(83, 90, 6, -1, 'SALE36', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(84, 10, 6, -1, 'SALE37', '2020-05-06 00:45:25', '2020-05-06 00:45:25'),
(85, 10, 6, -1, 'SALE38', '2020-05-06 01:36:15', '2020-05-06 01:36:15'),
(86, 44, 6, -1, 'SALE39', '2020-05-06 03:04:07', '2020-05-06 03:04:07'),
(87, 58, 6, -1, 'SALE40', '2020-05-06 03:05:47', '2020-05-06 03:05:47'),
(88, 122, 6, -1, 'SALE41', '2020-05-06 21:32:21', '2020-05-06 21:32:21'),
(89, 73, 6, 2, 'new supply5/5/2020', '2020-05-06 21:49:12', '2020-05-06 21:49:12'),
(90, 45, 6, -1, 'SALE42', '2020-05-06 22:29:58', '2020-05-06 22:29:58'),
(91, 136, 6, -1, 'SALE43', '2020-05-06 22:41:06', '2020-05-06 22:41:06'),
(92, 92, 6, -1, 'SALE43', '2020-05-06 22:41:06', '2020-05-06 22:41:06'),
(93, 125, 6, -1, 'SALE44', '2020-05-06 23:12:31', '2020-05-06 23:12:31'),
(94, 53, 6, -1, 'SALE45', '2020-05-06 23:23:33', '2020-05-06 23:23:33'),
(95, 73, 6, -2, 'SALE46', '2020-05-06 23:53:20', '2020-05-06 23:53:20'),
(96, 44, 6, 1, 'good return from gbenga6/5/2020', '2020-05-06 23:54:51', '2020-05-06 23:54:51'),
(97, 44, 6, 1, 'new supply6/6/2020', '2020-05-06 23:55:55', '2020-05-06 23:55:55'),
(98, 45, 6, 2, 'new supply6/5/2020', '2020-05-06 23:57:07', '2020-05-06 23:57:07'),
(99, 92, 6, 2, 'new supply6/5/2020', '2020-05-07 00:00:08', '2020-05-07 00:00:08'),
(100, 37, 6, 2, 'new supply6/5/2020', '2020-05-07 00:00:52', '2020-05-07 00:00:52'),
(101, 137, 6, 1, 'new supply6/5/2020', '2020-05-07 00:01:40', '2020-05-07 00:01:40'),
(102, 44, 6, -1, 'SALE47', '2020-05-07 00:11:25', '2020-05-07 00:11:25'),
(103, 20, 6, -1, 'SALE47', '2020-05-07 00:11:25', '2020-05-07 00:11:25'),
(104, 58, 6, -1, 'SALE48', '2020-05-07 00:45:37', '2020-05-07 00:45:37'),
(105, 37, 6, -2, 'SALE49', '2020-05-07 00:50:02', '2020-05-07 00:50:02'),
(106, 38, 6, -1, 'SALE49', '2020-05-07 00:50:02', '2020-05-07 00:50:02'),
(107, 44, 6, -1, 'SALE50', '2020-05-07 01:51:17', '2020-05-07 01:51:17'),
(108, 109, 6, -1, 'SALE51', '2020-05-07 01:52:53', '2020-05-07 01:52:53'),
(109, 137, 6, -1, 'SALE52', '2020-05-07 01:53:59', '2020-05-07 01:53:59'),
(110, 151, 6, -1, 'SALE53', '2020-05-07 02:06:44', '2020-05-07 02:06:44'),
(111, 37, 6, -2, 'SALE54', '2020-05-07 02:16:55', '2020-05-07 02:16:55'),
(112, 149, 6, -1, 'SALE55', '2020-05-07 02:17:52', '2020-05-07 02:17:52'),
(113, 15, 6, -1, 'SALE56', '2020-05-07 02:23:12', '2020-05-07 02:23:12'),
(114, 45, 6, -1, 'SALE57', '2020-05-07 03:06:18', '2020-05-07 03:06:18'),
(115, 62, 6, -1, 'SALE58', '2020-05-07 20:23:09', '2020-05-07 20:23:09'),
(116, 13, 6, -1, 'SALE59', '2020-05-07 21:44:51', '2020-05-07 21:44:51'),
(117, 155, 6, -1, 'SALE59', '2020-05-07 21:44:51', '2020-05-07 21:44:51'),
(118, 22, 6, 1, 'new suppy 7/5/2020', '2020-05-07 21:51:53', '2020-05-07 21:51:53'),
(119, 17, 6, 1, 'new supply 7/5/2020', '2020-05-07 21:53:26', '2020-05-07 21:53:26'),
(120, 90, 6, 3, 'new supply 7/5/2020', '2020-05-07 21:54:24', '2020-05-07 21:54:24'),
(121, 37, 6, 2, 'new supply 7/5/2020', '2020-05-07 21:57:06', '2020-05-07 21:57:06'),
(122, 70, 6, 1, 'new supply 7/5/2020', '2020-05-07 21:59:12', '2020-05-07 21:59:12'),
(123, 17, 6, -1, 'SALE60', '2020-05-07 22:04:08', '2020-05-07 22:04:08'),
(124, 107, 6, -1, 'SALE61', '2020-05-07 22:05:28', '2020-05-07 22:05:28'),
(125, 10, 6, -1, 'SALE62', '2020-05-07 22:06:51', '2020-05-07 22:06:51'),
(126, 151, 6, 1, 'good return from iya nike7/5/2020', '2020-05-07 22:26:09', '2020-05-07 22:26:09'),
(127, 150, 6, -1, 'SALE63', '2020-05-07 22:32:53', '2020-05-07 22:32:53'),
(128, 90, 6, -1, 'SALE64', '2020-05-07 23:15:18', '2020-05-07 23:15:18'),
(129, 14, 6, -1, 'SALE65', '2020-05-07 23:27:34', '2020-05-07 23:27:34'),
(130, 38, 6, -1, 'SALE66', '2020-05-07 23:28:49', '2020-05-07 23:28:49'),
(131, 44, 6, -1, 'SALE66', '2020-05-07 23:28:49', '2020-05-07 23:28:49'),
(132, 142, 6, -1, 'SALE67', '2020-05-07 23:29:31', '2020-05-07 23:29:31'),
(133, 81, 6, -2, 'SALE68', '2020-05-07 23:41:12', '2020-05-07 23:41:12'),
(134, 58, 6, -1, 'SALE69', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(135, 108, 6, -1, 'SALE69', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(136, 92, 6, -1, 'SALE69', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(137, 58, 6, -1, 'SALE70', '2020-05-07 23:52:52', '2020-05-07 23:52:52'),
(138, 76, 6, -2, 'SALE71', '2020-05-07 23:57:26', '2020-05-07 23:57:26'),
(139, 76, 6, -1, 'SALE72', '2020-05-08 00:00:42', '2020-05-08 00:00:42'),
(140, 34, 6, -1, 'SALE73', '2020-05-08 00:05:53', '2020-05-08 00:05:53'),
(141, 62, 6, -1, 'SALE74', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(142, 38, 6, -1, 'SALE74', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(143, 122, 6, -2, 'SALE74', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(144, 120, 6, -1, 'SALE74', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(145, 58, 6, -1, 'SALE75', '2020-05-08 00:28:25', '2020-05-08 00:28:25'),
(146, 44, 6, -1, 'SALE76', '2020-05-08 00:35:03', '2020-05-08 00:35:03'),
(147, 136, 6, -1, 'SALE77', '2020-05-08 00:44:30', '2020-05-08 00:44:30'),
(148, 13, 6, -1, 'SALE77', '2020-05-08 00:44:30', '2020-05-08 00:44:30'),
(149, 116, 6, -1, 'SALE78', '2020-05-08 00:56:26', '2020-05-08 00:56:26'),
(150, 45, 6, -1, 'SALE79', '2020-05-08 01:01:20', '2020-05-08 01:01:20'),
(151, 46, 6, -1, 'SALE79', '2020-05-08 01:01:20', '2020-05-08 01:01:20'),
(152, 2, 6, -1, 'SALE80', '2020-05-08 01:04:16', '2020-05-08 01:04:16'),
(153, 13, 6, -1, 'SALE81', '2020-05-08 01:09:59', '2020-05-08 01:09:59'),
(154, 58, 6, -1, 'SALE81', '2020-05-08 01:09:59', '2020-05-08 01:09:59'),
(155, 90, 6, -1, 'SALE82', '2020-05-08 01:30:49', '2020-05-08 01:30:49'),
(156, 4, 6, -1, 'SALE82', '2020-05-08 01:30:49', '2020-05-08 01:30:49'),
(157, 136, 6, -1, 'SALE83', '2020-05-08 01:55:57', '2020-05-08 01:55:57'),
(158, 34, 6, -1, 'SALE84', '2020-05-08 01:57:35', '2020-05-08 01:57:35'),
(159, 121, 6, -1, 'SALE85', '2020-05-08 02:08:19', '2020-05-08 02:08:19'),
(160, 150, 6, 2, 'error during counting on 2/5/2020', '2020-05-08 05:28:32', '2020-05-08 05:28:32'),
(161, 149, 6, -4, 'erroneousely counted during 2/5/2020 S/Taking', '2020-05-08 05:32:08', '2020-05-08 05:32:08'),
(162, 14, 6, -1, 'SALE86', '2020-05-11 19:40:08', '2020-05-11 19:40:08'),
(163, 15, 6, -1, 'SALE86', '2020-05-11 19:40:09', '2020-05-11 19:40:09'),
(164, 18, 6, -1, 'SALE86', '2020-05-11 19:40:09', '2020-05-11 19:40:09'),
(165, 14, 6, -1, 'SALE87', '2020-05-11 19:41:02', '2020-05-11 19:41:02'),
(166, 15, 6, -1, 'SALE87', '2020-05-11 19:41:02', '2020-05-11 19:41:02'),
(167, 18, 6, -1, 'SALE87', '2020-05-11 19:41:02', '2020-05-11 19:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `upc_ean_isbn` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `selling_price` decimal(9,2) DEFAULT NULL,
  `cost_price` decimal(9,2) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `upc_ean_isbn`, `item_name`, `size`, `description`, `avatar`, `selling_price`, `cost_price`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(1, '100006676', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL 67BS R6 SLV', NULL, 'no-foto.png', '35000.00', '38418.55', 0, 1, NULL, NULL),
(2, '100104965', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL 107BS R6 SLV', NULL, 'no-foto.png', '41700.00', '45117.90', 3, 1, NULL, '2020-05-08 01:04:16'),
(3, '100106153', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-134BS R6 SLV', NULL, 'no-foto.png', '45600.00', '49571.59', 0, 1, NULL, NULL),
(4, '100106154', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-134BW R6 WHT', NULL, 'no-foto.png', '44000.00', '47984.62', 0, 1, NULL, '2020-05-08 01:30:49'),
(5, '100102503', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL 142 R6 IC SLV', NULL, 'no-foto.png', '61400.00', '65379.21', 0, 1, NULL, NULL),
(6, '100105344', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-67MBS R6 SLV', NULL, 'no-foto.png', '35000.00', '38418.55', 0, 1, NULL, NULL),
(7, '100105345', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-107MBS R6 SLV', NULL, 'no-foto.png', '41700.00', '45117.90', 0, 1, NULL, NULL),
(8, '100105346', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-134MBS R6 SLV', NULL, 'no-foto.png', '45600.00', '49571.59', 0, 1, NULL, NULL),
(9, '100105347', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-142MBS R6 SLV', NULL, 'no-foto.png', '61400.00', '65379.21', 0, 1, NULL, NULL),
(10, '100101170', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL 147 R6 SLV', NULL, 'no-foto.png', '70700.00', '74678.48', 2, 1, NULL, '2020-05-07 22:06:51'),
(11, '100106150', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-177BS R6 IC SLV', NULL, 'no-foto.png', '85100.00', '90736.21', 0, 1, NULL, NULL),
(12, '100106151', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-185BS R6 IC SLV', NULL, 'no-foto.png', '91900.00', '97527.75', 0, 1, NULL, NULL),
(13, '100106152', 'Ref SD Direct Cool', 'HT REF 1DOOR DCOOL HR-195BS R6 SLV', NULL, 'no-foto.png', '103600.00', '109238.22', 0, 1, NULL, '2020-05-08 01:09:59'),
(14, '100106177', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 80BEX R6 SLV', NULL, 'no-foto.png', '68700.00', '75246.54', 2, 1, NULL, '2020-05-11 19:41:02'),
(15, '100106176', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 95BEX R6 SLV', NULL, 'no-foto.png', '74100.00', '80679.67', 2, 1, NULL, '2020-05-11 19:41:02'),
(16, '100106175', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 120BEX R6 SLV', NULL, 'no-foto.png', '88500.00', '95064.32', 0, 1, NULL, NULL),
(17, '100101176', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 160EX R6 SLV', NULL, 'no-foto.png', '107700.00', '114523.43', 0, 1, NULL, '2020-05-07 22:04:08'),
(18, '100101159', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 180EX R6 SLV', NULL, 'no-foto.png', '115900.00', '122726.32', 2, 1, NULL, '2020-05-11 19:41:02'),
(19, '100009235', 'Ref TM Direct Cool', 'HT REF TM 2DOOR DCOOL 200 LUX EX R6 SLV', NULL, 'no-foto.png', '146700.00', '155422.38', 2, 1, NULL, NULL),
(20, '100009233', 'Ref TM Direct Cool', 'HT REF TM 2DOOR DCOOL 250 LUX EX R6 SLV', NULL, 'no-foto.png', '163600.00', '172323.30', 0, 1, NULL, '2020-05-07 00:11:25'),
(21, '100009234', 'Ref TM Direct Cool', 'HT REF TM 2DOOR DCOOL 280 LUX EX R6 SLV', NULL, 'no-foto.png', '171100.00', '179512.93', 0, 1, NULL, NULL),
(22, '100101185', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 300 LUX R6 SLV', NULL, 'no-foto.png', '181700.00', '190573.73', 2, 1, NULL, '2020-05-07 21:51:53'),
(23, '100101186', 'Ref TM Direct Cool', 'HT REF TMOUNT 2DOOR DCOOL 350 LUX R6 SLV', NULL, 'no-foto.png', '218200.00', '228327.71', 0, 1, NULL, NULL),
(24, '100107211', 'Ref TM Frost Free', 'HT REF TMOUNT 2DOOR FF HRF-410S R6 SLV', NULL, 'no-foto.png', '215400.00', '224941.44', 0, 1, NULL, NULL),
(25, '100006658', 'Ref TM Frost Free', 'HT REF TMOUNT 2DOOR FFREE 479 R600 SLV', NULL, 'no-foto.png', '302700.00', '315208.71', 0, 1, NULL, NULL),
(26, '100107212', 'Ref TM Frost Free', 'HT REF TMOUNT 2DOOR FF HRF-520WS R6 SLV', NULL, 'no-foto.png', '256100.00', '266252.38', 0, 1, NULL, NULL),
(27, '100107209', 'Ref TM Frost Free', 'HT REF T DOOR FFREE 456 DM R600 SLV （SKD）', NULL, 'no-foto.png', '360600.00', '374893.09', 0, 1, NULL, NULL),
(28, '100107213', 'Ref SXS Frost Free', 'HT REF SxS FFREE HRF-521DS6', NULL, 'no-foto.png', '314500.00', '327014.87', 0, 1, NULL, NULL),
(29, '100107210', 'Ref SXS Frost Free', 'HT REF SXS FFREE HRF-522WS6(UK1) R6 SLV', NULL, 'no-foto.png', '349300.00', '362651.38', 0, 1, NULL, NULL),
(30, '100107208', 'Ref SXS Frost Free', 'HT REF SXS FFREE HTF-610DM7(UK) R6 SLV', NULL, 'no-foto.png', '651600.00', '676512.37', 0, 1, NULL, NULL),
(31, '100101160', 'Ref BM DD Direct Cool', 'HT REF BMOUNT 2DOOR DIRCOOL 229GF R6 SLV', NULL, 'no-foto.png', '139600.00', '146417.58', 0, 1, NULL, NULL),
(32, '100101191', 'Ref BM DD Direct Cool', 'HT REF BMOUNT 2DOOR DIRCOOL 310GF R6 SLV', NULL, 'no-foto.png', '175200.00', '182022.31', 0, 1, NULL, NULL),
(33, '100006801', 'Ref BM 3D Frost Free', 'HT REF BM 3DOOR FFREE CASARTE 635 R6 SLV', NULL, 'no-foto.png', '291000.00', '305620.93', 0, 1, NULL, NULL),
(34, '100106178', 'Chest Freezers Small Princess', 'HT FREEZER CHEST SML HTF-100HAS R6 SLV', NULL, 'no-foto.png', '73300.00', '76709.25', 6, 1, NULL, '2020-05-08 01:57:35'),
(35, '100106180', 'Chest Freezers Small Princess', 'HT FREEZER CHEST SML HTF-126HBW IC R6 WH', NULL, 'no-foto.png', '79200.00', '84888.04', 0, 1, NULL, NULL),
(36, '100101197', 'Chest Freezers Small Princess', 'HT FREEZER CHEST SML 100 INTC R6 WHT', NULL, 'no-foto.png', '69800.00', '73046.56', 0, 1, NULL, NULL),
(37, '100101198', 'Chest Freezers Small Princess', 'HT FREEZER CHEST SML 150 INTC R6 WHT', NULL, 'no-foto.png', '82700.00', '88388.41', 2, 1, NULL, '2020-05-07 21:57:06'),
(38, '100101199', 'Chest Freezers Small Princess', 'HT FREEZER CHEST SML 200 INTC R6 WHT', NULL, 'no-foto.png', '91900.00', '97581.20', 7, 1, NULL, '2020-05-08 00:26:24'),
(39, '100106483', 'Glass Door Chest Freezers', 'HT FREEZER CHEST SML HTF-150GDH R6 WHT', NULL, 'no-foto.png', '97500.00', '104206.52', 0, 1, NULL, NULL),
(40, '100106484', 'Glass Door Chest Freezers', 'HT FREEZER CHEST SML HTF-200GDH R6 WHT', NULL, 'no-foto.png', '114900.00', '122002.49', 0, 1, NULL, NULL),
(41, '100106179', 'Chest Freezers Small', 'HT FREEZER CHEST SML HTF-200HAS R6 SLV', NULL, 'no-foto.png', '96700.00', '102389.77', 0, 1, NULL, NULL),
(42, '100106181', 'Chest Freezers Small', 'HT FREEZER CHEST SML HTF-166HBS R6 SLV', NULL, 'no-foto.png', '96700.00', '103527.68', 0, 1, NULL, NULL),
(43, '100101161', 'Chest Freezers Small', 'HT FREEZER CHEST SML 203 R6 SLV', NULL, 'no-foto.png', '100100.00', '106921.25', 0, 1, NULL, NULL),
(44, '100101178', 'Chest Freezers Medium', 'HT FREEZER CHEST MED 219 R6 WHT', NULL, 'no-foto.png', '110600.00', '118559.99', 0, 1, NULL, '2020-05-08 00:35:03'),
(45, '100101183', 'Chest Freezers Medium', 'HT FREEZER CHEST MED 219 R6 SLV', NULL, 'no-foto.png', '114100.00', '122060.43', 1, 1, NULL, '2020-05-08 01:01:20'),
(46, '100101182', 'Chest Freezers Medium', 'HT FREEZER CHEST MED 259 R6 WHT', NULL, 'no-foto.png', '130500.00', '138466.50', 0, 1, NULL, '2020-05-08 01:01:20'),
(47, '100101165', 'Chest Freezers Medium', 'HT FREEZER CHEST MED 319 R6 WHT', NULL, 'no-foto.png', '146700.00', '154660.48', 0, 1, NULL, NULL),
(48, '100101184', 'Chest Freezers Medium', 'HT FREEZER CHEST MED 319 R6 SLV', NULL, 'no-foto.png', '150200.00', '159298.03', 0, 1, NULL, NULL),
(49, '100104369', 'Chest Freezers Large', 'HT FREEZER CHEST LRG 379 TURBO SLV', NULL, 'no-foto.png', '230600.00', '245388.28', 0, 1, NULL, NULL),
(50, '100101167', 'Chest Freezers Large', 'HT FREEZER CHEST LRG 379 R6 WHT', NULL, 'no-foto.png', '230600.00', '244698.84', 1, 1, NULL, NULL),
(51, '100101179', 'Chest Freezers Large', 'HT FREEZER CHEST LRG 429 R6 WHT', NULL, 'no-foto.png', '256100.00', '271757.78', 0, 1, NULL, '2020-05-05 21:58:25'),
(52, '100101162', 'Chest Freezers Large', 'HT FREEZER CHEST LRG 519 R6 WHT', NULL, 'no-foto.png', '279500.00', '296581.84', 0, 1, NULL, NULL),
(53, '100006691', 'Chest Freezers Large', 'HT FREEZER CHEST LRG 719 INT C R404 WHT', NULL, 'no-foto.png', '339300.00', '360025.80', 0, 1, NULL, '2020-05-06 23:23:33'),
(54, '100107715', 'Chest Freezers Large', 'HT FREEZER CHEST LRG HTF-719HB R290 WHT', NULL, 'no-foto.png', '339300.00', '360025.80', 0, 1, NULL, NULL),
(55, '100108665', 'Inverter Chest Freezers Medium', 'HT FREEZER CHEST MED HTF-219IW R6 WHT', NULL, 'no-foto.png', '110600.00', '118559.99', 0, 1, NULL, NULL),
(56, '100108666', 'Inverter Chest Freezers Medium', 'HT FREEZER CHEST MED HTF-219IS R6 SLV', NULL, 'no-foto.png', '114100.00', '122060.43', 0, 1, NULL, NULL),
(57, '100108667', 'Inverter Chest Freezers Medium', 'HT FREEZER CHEST MED HTF-259IW R6 WHT', NULL, 'no-foto.png', '130500.00', '138466.50', 0, 1, NULL, NULL),
(58, '100108096', 'Inverter Chest Freezers Medium', 'HT FREEZER CHEST MED HTF-319IW R6 WHT', NULL, 'no-foto.png', '146700.00', '154660.48', 7, 1, NULL, '2020-05-08 01:09:59'),
(59, '100108097', 'Inverter Chest Freezers Medium', 'HT FREEZER CHEST MED HTF-319IS R6 SLV', NULL, 'no-foto.png', '150200.00', '159298.03', 0, 1, NULL, '2020-05-04 22:05:30'),
(60, '100108098', 'Inverter Chest Freezers Large', 'HT FREEZER CHEST MED HTF-379IS R6 SLV', NULL, 'no-foto.png', '230600.00', '244698.84', 0, 1, NULL, NULL),
(61, '100108099', 'Inverter Chest Freezers Large', 'HT FREEZER CHEST MED HTF-429IS R6 SLV', NULL, 'no-foto.png', '256100.00', '271757.78', 0, 1, NULL, NULL),
(62, '100108100', 'Inverter Chest Freezers Large', 'HT FREEZER CHEST MED HTF-519IS R6 SLV', NULL, 'no-foto.png', '279500.00', '296581.84', 5, 1, NULL, '2020-05-08 00:26:24'),
(63, '100101313', 'Upright Freezers Medium', 'HT FREEZER UPRIGHT SML 180 R6 SLV', NULL, 'no-foto.png', '139600.00', '148690.18', 0, 1, NULL, '2020-05-05 23:46:54'),
(64, '100101312', 'Upright Freezers Medium', 'HT FREEZER UPRIGHT MED 250 R6 WHT', NULL, 'no-foto.png', '221100.00', '234739.43', 0, 1, NULL, NULL),
(65, '100102617', 'Beverage Coolers', 'HT COMM REF BEV COOLER SKD SC240 R6', NULL, 'no-foto.png', '209500.00', '220921.07', 0, 1, NULL, NULL),
(66, '100102704', 'Beverage Coolers', 'HT COMM REF BEV COOLER SKD BC300 R6', NULL, 'no-foto.png', '262100.00', '274512.31', 0, 1, NULL, NULL),
(67, '100101194', 'Beverage Coolers', 'HT COMM REF BEVERAGE COOLER BC396 R290', NULL, 'no-foto.png', '380400.00', '394055.84', 0, 1, NULL, NULL),
(68, '100101195', 'Icecream Freezer', 'HT ICE CREAM FREEZER 162 R6', NULL, 'no-foto.png', '158800.00', '172542.57', 0, 1, NULL, NULL),
(69, '100101168', 'Icecream Freezer', 'HT ICE CREAM FREEZER 332 R6', NULL, 'no-foto.png', '204100.00', '223012.98', 0, 1, NULL, NULL),
(70, '100103969', 'Split Cooling', 'HT AC SPLITU COOL  1HP 09TESN-01 WHITE', NULL, 'no-foto.png', '90800.00', '96485.07', 1, 1, NULL, '2020-05-07 21:59:12'),
(71, '100103970', 'Split Cooling', 'HT AC SPLITU COOL  1.5HP 12TESN-01 WHITE', NULL, 'no-foto.png', '101200.00', '106880.80', 0, 1, NULL, NULL),
(72, '100103971', 'Split Cooling', 'HT AC SPLITU COOL  2HP 18TESN-01 WHITE', NULL, 'no-foto.png', '143100.00', '148781.69', 0, 1, NULL, NULL),
(73, '100105463', 'Split Cooling', 'HT AC SU ECO 1HP HSU-09TESN-02 WHT', NULL, 'no-foto.png', '90800.00', '96485.07', 1, 1, NULL, '2020-05-06 23:53:20'),
(74, '100105462', 'Split Cooling', 'HT AC SPLITU COOL  1.5HP 12TESN-02 WHITE', NULL, 'no-foto.png', '101200.00', '106880.80', 0, 1, NULL, NULL),
(75, '100105464', 'Split Cooling', 'HT AC SPLITU TUN 2HP HSU-18TESN-02 WHT', NULL, 'no-foto.png', '143100.00', '148781.69', 0, 1, NULL, NULL),
(76, '100008323', 'Split Cooling GenPal', 'HT AC SU ENERGY 1HP 09NR G1 WHITE', NULL, 'no-foto.png', '124600.00', '130403.06', 3, 1, NULL, '2020-05-08 00:00:42'),
(77, '100107340', 'Split Cooling GenPal', 'HT AC SU ENERGY 1HP HSU-09LNEB-02 WHT', NULL, 'no-foto.png', '124600.00', '130403.06', 0, 1, NULL, NULL),
(78, '100008324', 'Split Cooling GenPal', 'HT AC SU ENERGY 1.5HP 12 NRG1 WHITE', NULL, 'no-foto.png', '136200.00', '142014.81', 0, 1, NULL, '2020-05-04 21:10:39'),
(79, '100107341', 'Split Cooling GenPal', 'HT AC SU ENERGY 1.5HP HSU-12LNEB-02 WHT', NULL, 'no-foto.png', '136200.00', '142014.81', 0, 1, NULL, NULL),
(80, '100103972', 'Split Cooling', 'HT AC SPLITU COOL 2.5HP 24TESN-01 WHITE', NULL, 'no-foto.png', '207000.00', '215076.00', 0, 1, NULL, NULL),
(81, '100008325', 'Split Cooling GenPal', 'HT AC SU ENERGY 2HP 18NR G1 WHITE', NULL, 'no-foto.png', '200300.00', '208387.30', 1, 1, NULL, '2020-05-07 23:41:12'),
(82, '100107342', 'Split Cooling GenPal', 'HT AC SU ENERGY 2HP HSU-18LNEB-02 WHT', NULL, 'no-foto.png', '200300.00', '208387.30', 0, 1, NULL, NULL),
(83, '100105476', 'Floor Standing DAC', 'HT AC FLRU 2HP HPU-18CYW-01 WHT', NULL, 'no-foto.png', '313000.00', '325637.94', 0, 1, NULL, NULL),
(84, '100105477', 'Floor Standing DAC', 'HT AC FLRU 3HP HPU-24CYW-01 WHT', NULL, 'no-foto.png', '388100.00', '403770.22', 0, 1, NULL, NULL),
(85, '100107225', 'Cassette CAC', 'HT CAC CASSETTE 3HP AB25FH2QAA R410A WHT', NULL, 'no-foto.png', '412900.00', '429571.63', 0, 1, NULL, NULL),
(86, '100107222', 'Floor Standing CAC', 'HT CAC FLOORU 5HP AP48KN1EAA R410A WHT', NULL, 'no-foto.png', '633600.00', '659182.70', 0, 1, NULL, NULL),
(87, '100107223', 'Floor Standing CAC', 'HT CAC FLOORU 10HP AP96TN1QAA R410A WHT', NULL, 'no-foto.png', '1396300.00', '1452678.17', 0, 1, NULL, NULL),
(88, '100008258', 'AC Installation Kits', 'HT AC SPLITU INSTALLATION KIT 1HP', NULL, 'no-foto.png', '7669.26', '8245.03', 0, 1, NULL, NULL),
(89, '100008260', 'AC Installation Kits', 'HT AC SPLITU INSTALLATION KIT 1.5/2HP', NULL, 'no-foto.png', '8843.83', '9419.60', 0, 1, NULL, NULL),
(90, '100103341', 'TV LED', 'HT TV LED LE32K6000', NULL, 'no-foto.png', '51000.00', '55421.44', 1, 1, NULL, '2020-05-08 01:30:49'),
(91, '100103342', 'TV LED', 'HT TV LED LE40K6000', NULL, 'no-foto.png', '71600.00', '75679.16', 0, 1, NULL, NULL),
(92, '100103422', 'TV LED', 'HT TV LED LE43K6500A SMART', NULL, 'no-foto.png', '106100.00', '110317.74', 1, 1, NULL, '2020-05-07 23:50:03'),
(93, '100103021', 'TV LED', 'HT TV LED LE55K6000', NULL, 'no-foto.png', '117900.00', '122738.84', 0, 1, NULL, NULL),
(94, '100103421', 'TV LED', 'HT TV LED LE55K6500A SMART', NULL, 'no-foto.png', '176600.00', '181432.04', 0, 1, NULL, NULL),
(95, '100103420', 'TV LED', 'HT TV LED LE75H9000TUA', NULL, 'no-foto.png', '749300.00', '754125.81', 0, 1, NULL, NULL),
(96, '100104007', 'WM Front Load', 'HT WASHMACHINE FL HW60-12829W 6 KG WHT', NULL, 'no-foto.png', '109700.00', '118646.84', 0, 1, NULL, NULL),
(97, '100104006', 'WM Front Load', 'HT WASHMACHINE FL HW60-12829S 6KG SLV', NULL, 'no-foto.png', '115400.00', '124336.42', 0, 1, NULL, NULL),
(98, '100104005', 'WM Front Load', 'HT WASHMACHINE FL HW70-12829S  7 KG SLV', NULL, 'no-foto.png', '139600.00', '145641.58', 3, 1, NULL, NULL),
(99, '100103974', 'WM Front Load', 'HT WASHMACHINE FL HW100-14829 10.2 KG', NULL, 'no-foto.png', '151400.00', '160328.42', 0, 1, NULL, NULL),
(100, '100103973', 'WM Front Load', 'HT WASHMACHINE FL HW100-B14636S 10.2 KG', NULL, 'no-foto.png', '172600.00', '181510.64', 1, 1, NULL, NULL),
(101, '100104008', 'WM Front Load', 'HT WASHMACHINE FL HWD80-BP14636S 8/5 KG', NULL, 'no-foto.png', '233300.00', '242251.86', 2, 1, NULL, '2020-05-05 23:13:15'),
(102, '100104370', 'WM Front Load Duo', 'HT WASHMACHINE HWD120-B1558 12KG DUO', NULL, 'no-foto.png', '565000.00', '586679.58', 0, 1, NULL, NULL),
(103, '100006724', 'WM Top Load Automatic', 'HT WASHMACHINE TOPLOAD-A 6KG SLV', NULL, 'no-foto.png', '72600.00', '76031.16', 0, 1, NULL, NULL),
(104, '100006727', 'WM Top Load Automatic', 'HT WASHMACHINE TOPLOAD-A 7 KG SLV', NULL, 'no-foto.png', '79300.00', '83856.16', 0, 1, NULL, NULL),
(105, '100006725', 'WM Top Load Automatic', 'HT WASHMACHINE TOPLOAD-A 8KG SLV', NULL, 'no-foto.png', '110700.00', '115252.63', 1, 1, NULL, '2020-05-05 21:33:24'),
(106, '100104009', 'WM Top Load Automatic', 'HT WASHMACHIN TLA HWM100-1789 10.2KG SLV', NULL, 'no-foto.png', '131800.00', '140741.92', 0, 1, NULL, NULL),
(107, '100006741', 'WM Top Load Semi-Automatic', 'HT WASHMACHINE TOPLOAD-SA 6KG  BLU', NULL, 'no-foto.png', '51500.00', '56230.67', 2, 1, NULL, '2020-05-07 22:05:28'),
(108, '100104011', 'WM Top Load Semi-Automatic', 'HT WASHMACHINE TLSA08B  8KG  BLU', NULL, 'no-foto.png', '63300.00', '72286.77', 4, 1, NULL, '2020-05-07 23:50:03'),
(109, '100104012', 'WM Top Load Semi-Automatic', 'HT WASHMACHINE TLSA10B 10.2KG BLU', NULL, 'no-foto.png', '66400.00', '75330.59', 1, 1, NULL, '2020-05-07 01:52:53'),
(110, '100104010', 'WM Top Load Semi-Automatic', 'HT WASHMACHINE TLSA13B 13KG BLU', NULL, 'no-foto.png', '99400.00', '108365.24', 1, 1, NULL, '2020-05-04 22:33:48'),
(111, '100006726', 'WM Top Load Washers', 'HT WASHMACHINE TOPLOAD-WASH 6KG PINK', NULL, 'no-foto.png', '34000.00', '37435.40', 2, 1, NULL, NULL),
(112, '100006721', 'Dryers', 'HT DRYER 6KG WHT', NULL, 'no-foto.png', '150400.00', '157232.63', 1, 1, NULL, NULL),
(113, '100107217', 'Microwave Digital', 'HT MWO DIGITAL TRENDY SLV D90D25EL-QF', NULL, 'no-foto.png', '36100.00', '37806.13', 0, 1, NULL, NULL),
(114, '100107218', 'Microwave Digital', 'HT MWO DIGITAL SLAY SLV P90N30EP-ZK', NULL, 'no-foto.png', '44300.00', '46007.96', 0, 1, NULL, NULL),
(115, '100107215', 'Microwave Electrical', 'HT MWO DIGIT SOLO SLV SBH207QJB-P', NULL, 'no-foto.png', '29900.00', '31617.85', 3, 1, NULL, NULL),
(116, '100008668', 'Microwave Manual', 'HT MICROWAVE MANUAL SOLO 20L', NULL, 'no-foto.png', '22700.00', '24402.50', 10, 1, NULL, '2020-05-08 00:56:26'),
(117, '100107214', 'Microwave Manual', 'HT MWO MANUAL SOLO BLK SMH207ZSB-P', NULL, 'no-foto.png', '24700.00', '26423.28', 0, 1, NULL, NULL),
(118, '100107216', 'Microwave Manual', 'HT MWO MANUAL SOLO SLV SMH207ZSB-P', NULL, 'no-foto.png', '25800.00', '27518.13', 0, 1, NULL, NULL),
(119, '100107861', 'Table Cookers Gas', 'TEC CKR TBL 2HOB TGC-2GA GLASS DUO', NULL, 'no-foto.png', '15800.00', '17030.14', 0, 1, NULL, NULL),
(120, '100107862', 'Table Cookers Gas', 'TEC CKR TBL 3HOB TGC-3GA GLASS TRIO', NULL, 'no-foto.png', '18000.00', '19170.00', 8, 1, NULL, '2020-05-08 00:26:24'),
(121, '100107863', 'Table Cookers Gas', 'TEC CKR TBL 2HOB TGC-2SA STAINLESS DUO', NULL, 'no-foto.png', '11300.00', '12034.50', 2, 1, NULL, '2020-05-08 02:08:19'),
(122, '100107864', 'Table Cookers Gas', 'TEC CKR TBL 2HOB TGC-2TA TEFLON DUO', NULL, 'no-foto.png', '14000.00', '14985.56', 0, 1, NULL, '2020-05-08 00:26:24'),
(123, '100107866', 'Table Cookers Gas', 'TEC CKR TBL 3HOB TGC-3GB GLASS DELUX', NULL, 'no-foto.png', '22100.00', '23244.67', 0, 1, NULL, NULL),
(124, '100107259', 'Small Size Standing Cooker', 'TEC CKR STD-G MY LADY 504G OG-4540 INX', NULL, 'no-foto.png', '50000.00', '53447.29', 0, 1, NULL, NULL),
(125, '100107260', 'Small Size Standing Cooker', 'TEC CKR STD-G MY LADY 503G1E OG-4531 INX', NULL, 'no-foto.png', '59300.00', '62707.07', 9, 1, NULL, '2020-05-06 23:12:31'),
(126, '100107262', 'Mid Size Standing Cooker', 'TEC CKR STD-G MY DIVA 604G OG-6840 INX', NULL, 'no-foto.png', '93700.00', '99384.54', 0, 1, NULL, NULL),
(127, '100107263', 'Mid Size Standing Cooker', 'TEC CKR STD-G MY DIVA 603G1E OG-6831 BLK', NULL, 'no-foto.png', '99400.00', '105111.04', 0, 1, NULL, NULL),
(128, '100107264', 'Mid Size Standing Cooker', 'TEC CKR STD-G MY DIVA 603G1E OG-6831 INX', NULL, 'no-foto.png', '99400.00', '105111.04', 1, 1, NULL, '2020-05-05 21:58:26'),
(129, '100107325', 'Mid Size Standing Cooker', 'TEC CKR STD MY DIVA 603G1E OGDC-6831 INX', NULL, 'no-foto.png', '158600.00', '166573.35', 0, 1, NULL, NULL),
(130, '100107326', 'Larg Size Standing Cooker', 'TEC CKR STD-G D MADAME 905G OG-9850 INX', NULL, 'no-foto.png', '200900.00', '208862.78', 0, 1, NULL, NULL),
(131, '100107327', 'Larg Size Standing Cooker', 'TEC CKR STD D MADAME 904G1E OG-9841 INX', NULL, 'no-foto.png', '185400.00', '193372.41', 0, 1, NULL, NULL),
(132, '100107328', 'Larg Size Standing Cooker', 'TEC CKR STD D MADAME 904G2E OG-9842 BUR', NULL, 'no-foto.png', '188500.00', '196605.72', 0, 1, NULL, NULL),
(133, '100006714', 'Gen Gas Small MS', 'TEC GEN PTR  SML JUNR 1500MS 1.25KVA/1KW', NULL, 'no-foto.png', '54100.00', '56947.05', 0, 1, NULL, NULL),
(134, '100006709', 'Gen Gas Small MS', 'TEC GEN PTR SML BOBO 2500MS 2.5KVA/2KW', NULL, 'no-foto.png', '88200.00', '94048.31', 2, 1, NULL, '2020-05-05 22:36:34'),
(135, '100101202', 'Gen Gas Small MS', 'TEC GEN PTR SML CAPT 2500MS 2.5kVa/2kw', NULL, 'no-foto.png', '92200.00', '99048.30', 0, 1, NULL, NULL),
(136, '100006710', 'Gen Gas Small ES', 'TEC GEN PTR SML BOBO 2500ES 2.5KVA/2KW', NULL, 'no-foto.png', '102500.00', '108340.46', 1, 1, NULL, '2020-05-08 01:55:57'),
(137, '100006838', 'Gen Gas Medium MS', 'TEC GEN PTR MED HSTL 3500MS 3.75KVA/3KW', NULL, 'no-foto.png', '107600.00', '113293.26', 0, 1, NULL, '2020-05-07 01:53:59'),
(138, '100006712', 'Gen Gas Medium ES', 'TEC GEN PTR MED HSTL 3500ES 3.75KVA/3KW', NULL, 'no-foto.png', '121500.00', '127189.09', 0, 1, NULL, '2020-05-04 21:24:31'),
(139, '100101201', 'Gen Gas Medium ES', 'TEC GEN PTR MED MAJR 3500ES 3.5kVa/3kw', NULL, 'no-foto.png', '127300.00', '134125.55', 0, 1, NULL, '2020-05-05 07:09:44'),
(140, '100006719', 'Gen Gas Medium ES', 'TEC GEN PTR MED HSTL 3800ES 4.1KVA/3.3KW', NULL, 'no-foto.png', '143700.00', '149396.31', 0, 1, NULL, NULL),
(141, '100006720', 'Gen Gas Medium ES', 'TEC GEN PTR MED BIGBOY 4400ES 5KVA/4KW', NULL, 'no-foto.png', '212700.00', '220659.91', 0, 1, NULL, '2020-05-06 00:14:37'),
(142, '100006835', 'Gen Gas Large ES', 'TEC GEN PTR LRG OGA 6900ES 6.25KVA/5KW', NULL, 'no-foto.png', '230100.00', '239194.52', 0, 1, NULL, '2020-05-07 23:29:31'),
(143, '100008440', 'Gen Gas Large ES', 'TEC GEN PTR LRG IGWE 8100ES 7.5KVA/6KW', NULL, 'no-foto.png', '254400.00', '266052.38', 0, 1, NULL, '2020-05-05 02:55:00'),
(144, '100006717', 'Gen Gas Large RS', 'TEC GEN PTR LRG OPT 7500RS 6.25KVA/5KW', NULL, 'no-foto.png', '267300.00', '278681.19', 5, 1, NULL, '2020-05-04 21:10:39'),
(145, '100006718', 'Gen Gas Large RS', 'TEC GEN PTR LRG  OPT 9200RS 7.5KVA/6KW', NULL, 'no-foto.png', '297200.00', '310849.87', 0, 1, NULL, NULL),
(146, '100006716', 'Gen Gas Large RS', 'TEC GEN PTR LRG ODG 1000RS 8.4KVA/6.75KW', NULL, 'no-foto.png', '332700.00', '349237.03', 0, 1, NULL, '2020-05-05 07:05:13'),
(147, '100104372', 'Gen Gas Large RS', 'TEC GEN PTR LRG ULT 12000RS 10KVA/8KW', NULL, 'no-foto.png', '372400.00', '390586.98', 0, 1, NULL, '2020-05-05 22:52:42'),
(148, '100009534', 'Stabs Digital', 'TEC STABILIZER DIGITAL 1500VA', NULL, 'no-foto.png', '14700.00', '15265.25', 0, 1, NULL, NULL),
(149, '100006707', 'Stabs Digital', 'TEC STABILIZER DIGITAL 2000VA', NULL, 'no-foto.png', '17800.00', '18371.88', 0, 1, NULL, '2020-05-08 05:32:08'),
(150, '100008374', 'Stabs Analogue', 'TEC STABILIZER DIGITAL WDR 5000VA', NULL, 'no-foto.png', '37600.00', '38736.97', 2, 1, NULL, '2020-05-08 05:28:32'),
(151, '100006708', 'Stabs Digital', 'TEC STABILIZER DIGITAL 5000VA', NULL, 'no-foto.png', '38600.00', '39728.84', 3, 1, NULL, '2020-05-07 22:26:09'),
(152, '100105772', 'Power Guard', 'TEC VOLTAGE PROTECTOR DIGITAL 13A', NULL, 'no-foto.png', '4800.00', '5385.93', 0, 1, NULL, NULL),
(153, '100105771', 'Power Guard', 'TEC VOLTAGE PROTECTOR DIGITAL 30A', NULL, 'no-foto.png', '6500.00', '7077.20', 0, 1, NULL, NULL),
(154, '100006743', 'WD Ref Cold + Warm + Hot', 'TEC  WATER DISPENSER REF C/W/H 1233BD', NULL, 'no-foto.png', '53600.00', '56992.19', 0, 1, NULL, NULL),
(155, '100006742', 'WD Storage Cold + Hot', 'TEC  WATER DISPENSER STOR C/H 85C', NULL, 'no-foto.png', '45300.00', '48166.95', 2, 1, NULL, '2020-05-07 21:44:51'),
(156, '100006745', 'WD Ref Cold + Hot', 'TEC WATER DISPENSER  REF C/H 808BD', NULL, 'no-foto.png', '58200.00', '62711.63', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_kit_items`
--

CREATE TABLE `item_kit_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_kit_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost_price` decimal(15,2) NOT NULL,
  `total_selling_price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_kit_item_temps`
--

CREATE TABLE `item_kit_item_temps` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost_price` decimal(15,2) NOT NULL,
  `total_selling_price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(59, '2014_10_12_000000_create_users_table', 1),
(60, '2014_10_12_100000_create_password_resets_table', 1),
(61, '2015_05_29_074713_create_customers_table', 1),
(62, '2015_05_30_015027_create_items_table', 1),
(63, '2015_05_30_073533_create_suppliers_table', 1),
(64, '2015_06_02_010425_create_inventories_table', 1),
(65, '2015_06_03_013557_create_receivings_table', 1),
(66, '2015_06_03_134547_create_receiving_temps_table', 1),
(67, '2015_06_06_083156_create_sales_table', 1),
(68, '2015_06_06_083159_create_sale_temps_table', 1),
(69, '2015_06_07_042753_create_receiving_items_table', 1),
(70, '2015_06_08_050821_create_sale_items_table', 1),
(71, '2015_06_12_214916_create_item_kit_item_temps_table', 1),
(72, '2015_06_12_224226_create_item_kit_items_table', 1),
(73, '2015_06_16_163101_create_tutapos_settings_table', 1),
(74, '2017_05_22_165812_add_discount_tax_grandtotal_to_sales', 1),
(75, '2018_03_23_021440_create_sale_payments_table', 1),
(76, '2018_03_25_141132_create_flexible_pos_settings_table', 1),
(77, '2018_03_27_011844_create_customer_payments_table', 1),
(78, '2018_03_27_022156_create_expense_categories_table', 1),
(79, '2018_03_27_022640_create_expenses_table', 1),
(80, '2018_04_03_213954_create_daily_reports_table', 1),
(81, '2018_04_07_213837_create_receiving_payments_table', 1),
(82, '2018_04_07_214803_create_supplier_payments_table', 1),
(83, '2018_04_21_212541_create_accounts_table', 1),
(84, '2018_05_01_111157_create_transactions_table', 1),
(85, '2019_02_07_160619_create_companies_table', 1),
(86, '2019_02_07_170531_create_company_users_table', 1),
(87, '2019_02_08_131317_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 6),
(1, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `label`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'List Items', 'items.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(2, 'Create Items', 'items.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(3, 'Store Items', 'items.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(4, 'View Items', 'items.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(5, 'Delete Items', 'items.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(6, 'Update Items', 'items.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(7, 'Edit Items', 'items.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(8, 'List Inventory', 'inventory.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(9, 'Create Inventory', 'inventory.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(10, 'Store Inventory', 'inventory.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(11, 'View Inventory', 'inventory.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(12, 'Delete Inventory', 'inventory.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(13, 'Update Inventory', 'inventory.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(14, 'Edit Inventory', 'inventory.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(15, 'List Customers', 'customers.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(16, 'Create Customers', 'customers.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(17, 'Store Customers', 'customers.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(18, 'View Customers', 'customers.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(19, 'Delete Customers', 'customers.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(20, 'Update Customers', 'customers.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(21, 'Edit Customers', 'customers.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(22, 'List Suppliers', 'suppliers.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(23, 'Create Suppliers', 'suppliers.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(24, 'Store Suppliers', 'suppliers.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(25, 'View Suppliers', 'suppliers.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(26, 'Delete Suppliers', 'suppliers.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(27, 'Update Suppliers', 'suppliers.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(28, 'Edit Suppliers', 'suppliers.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(29, 'List Receivings', 'receivings.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(30, 'Create Receivings', 'receivings.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(31, 'Store Receivings', 'receivings.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(32, 'View Receivings', 'receivings.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(33, 'Delete Receivings', 'receivings.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(34, 'Update Receivings', 'receivings.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(35, 'Edit Receivings', 'receivings.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(36, 'List Transactions', 'transactions.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(37, 'Create Transactions', 'transactions.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(38, 'Store Transactions', 'transactions.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(39, 'View Transactions', 'transactions.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(40, 'Delete Transactions', 'transactions.destroy', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(41, 'Update Transactions', 'transactions.update', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(42, 'Edit Transactions', 'transactions.edit', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(43, 'List Supplierpayments', 'supplierpayments.index', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(44, 'Create Supplierpayments', 'supplierpayments.create', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(45, 'Store Supplierpayments', 'supplierpayments.store', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(46, 'View Supplierpayments', 'supplierpayments.show', 'web', '2019-04-28 17:38:12', '2019-04-28 17:38:12'),
(47, 'Delete Supplierpayments', 'supplierpayments.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(48, 'Update Supplierpayments', 'supplierpayments.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(49, 'Edit Supplierpayments', 'supplierpayments.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(50, 'List Sales', 'sales.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(51, 'Create Sales', 'sales.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(52, 'Store Sales', 'sales.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(53, 'View Sales', 'sales.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(54, 'Delete Sales', 'sales.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(55, 'Update Sales', 'sales.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(56, 'Edit Sales', 'sales.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(57, 'List Salepayments', 'salepayments.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(58, 'Create Salepayments', 'salepayments.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(59, 'Store Salepayments', 'salepayments.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(60, 'View Salepayments', 'salepayments.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(61, 'Delete Salepayments', 'salepayments.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(62, 'Update Salepayments', 'salepayments.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(63, 'Edit Salepayments', 'salepayments.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(64, 'List Dailyreport', 'dailyreport.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(65, 'Create Dailyreport', 'dailyreport.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(66, 'Store Dailyreport', 'dailyreport.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(67, 'View Dailyreport', 'dailyreport.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(68, 'Delete Dailyreport', 'dailyreport.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(69, 'Update Dailyreport', 'dailyreport.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(70, 'Edit Dailyreport', 'dailyreport.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(71, 'List Receivingpayments', 'receivingpayments.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(72, 'Create Receivingpayments', 'receivingpayments.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(73, 'Store Receivingpayments', 'receivingpayments.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(74, 'View Receivingpayments', 'receivingpayments.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(75, 'Delete Receivingpayments', 'receivingpayments.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(76, 'Update Receivingpayments', 'receivingpayments.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(77, 'Edit Receivingpayments', 'receivingpayments.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(78, 'List Expense', 'expense.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(79, 'Create Expense', 'expense.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(80, 'Store Expense', 'expense.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(81, 'View Expense', 'expense.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(82, 'Delete Expense', 'expense.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(83, 'Update Expense', 'expense.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(84, 'Edit Expense', 'expense.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(85, 'List Expensecategory', 'expensecategory.index', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(86, 'Create Expensecategory', 'expensecategory.create', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(87, 'Store Expensecategory', 'expensecategory.store', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(88, 'View Expensecategory', 'expensecategory.show', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(89, 'Delete Expensecategory', 'expensecategory.destroy', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(90, 'Update Expensecategory', 'expensecategory.update', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(91, 'Edit Expensecategory', 'expensecategory.edit', 'web', '2019-04-28 17:38:13', '2019-04-28 17:38:13'),
(92, 'List Customerpayments', 'customerpayments.index', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(93, 'Create Customerpayments', 'customerpayments.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(94, 'Store Customerpayments', 'customerpayments.store', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(95, 'View Customerpayments', 'customerpayments.show', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(96, 'Delete Customerpayments', 'customerpayments.destroy', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(97, 'Update Customerpayments', 'customerpayments.update', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(98, 'Edit Customerpayments', 'customerpayments.edit', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(99, 'List Accounts', 'accounts.index', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(100, 'Create Accounts', 'accounts.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(101, 'Store Accounts', 'accounts.store', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(102, 'View Accounts', 'accounts.show', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(103, 'Delete Accounts', 'accounts.destroy', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(104, 'Update Accounts', 'accounts.update', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(105, 'Edit Accounts', 'accounts.edit', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(106, 'List Employees', 'employees.index', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(107, 'Create Employees', 'employees.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(108, 'Store Employees', 'employees.store', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(109, 'View Employees', 'employees.show', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(110, 'Delete Employees', 'employees.destroy', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(111, 'Update Employees', 'employees.update', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(112, 'Edit Employees', 'employees.edit', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(113, 'List Settings', 'flexiblepossetting.index', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(114, 'Create Settings', 'flexiblepossetting.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(115, 'Store Settings', 'flexiblepossetting.store', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(116, 'View Settings', 'flexiblepossetting.show', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(117, 'Delete Settings', 'flexiblepossetting.destroy', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(118, 'Update Settings', 'flexiblepossetting.update', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(119, 'Edit Settings', 'flexiblepossetting.edit', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(120, 'List Permissions', 'permissions.list', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(121, 'Assaign Roles', 'assaign.roles', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(122, 'Create Roles', 'employeerole.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(123, 'Create Permission Role', 'permissionrole.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(124, 'Create Permissions', 'permissions.create', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(125, 'Getsales Reports', 'reports.getsales', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(126, 'CreateDaily Reports', 'reports.createdaily', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(127, 'CreatePast Reports', 'reports.createpast', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(128, 'GetDaily Reports', 'reports.getdaily', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(129, 'CreateCustom Items', 'items.customcreate', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(130, 'PrintSales Reports', 'reports.printsales', 'web', '2019-04-28 17:38:14', '2019-04-28 17:38:14'),
(131, 'GetAllSale Reports', 'reports.getsalereport', 'web', '2019-04-28 17:38:15', '2019-04-28 17:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `receivings`
--

CREATE TABLE `receivings` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(12,2) NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `dues` decimal(12,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receiving_items`
--

CREATE TABLE `receiving_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `receiving_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost` decimal(9,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receiving_payments`
--

CREATE TABLE `receiving_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dues` decimal(12,2) NOT NULL,
  `receiving_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receiving_temps`
--

CREATE TABLE `receiving_temps` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost` decimal(9,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-04-28 17:38:15', '2019-04-28 17:38:15'),
(2, 'sales-rep', 'web', '2019-08-04 21:34:41', '2019-08-04 21:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(113, 2),
(114, 1),
(114, 2),
(115, 1),
(115, 2),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(119, 1),
(119, 2),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(125, 2),
(126, 1),
(126, 2),
(127, 1),
(127, 2),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(130, 1),
(130, 2),
(131, 1),
(131, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` decimal(9,2) NOT NULL,
  `tax` decimal(9,2) NOT NULL,
  `grand_total` decimal(9,2) NOT NULL,
  `payment` decimal(9,2) NOT NULL,
  `dues` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `user_id`, `payment_type`, `comments`, `status`, `created_at`, `updated_at`, `discount`, `tax`, `grand_total`, `payment`, `dues`) VALUES
(1, 1, 6, 'Cash', 'paid to ahlaji', 0, '2020-05-04 21:10:39', '2020-05-04 21:10:39', '29402.89', '0.00', '1440741.71', '0.00', '1440741.71'),
(2, 1, 6, 'Cash', 'paid to ahlaji', 0, '2020-05-04 22:05:30', '2020-05-04 22:05:30', '13068.99', '0.00', '640380.39', '0.00', '640380.39'),
(3, 3, 6, 'None', 'paid to ahlaji', 0, '2020-05-04 22:09:59', '2020-05-04 22:09:59', '2371.20', '0.00', '116188.79', '0.00', '116188.79'),
(4, 3, 6, 'None', 'paid to ahlaji', 0, '2020-05-04 22:33:48', '2020-05-04 22:33:48', '4334.61', '0.00', '212395.87', '0.00', '212395.87'),
(5, 4, 6, 'None', 'paid to ahlaji', 0, '2020-05-04 22:37:47', '2020-05-04 22:37:47', '2305.05', '0.00', '112947.58', '0.00', '112947.58'),
(6, 5, 6, 'Cash', 'paid to me', 0, '2020-05-05 02:40:46', '2020-05-05 02:40:46', '1929.70', '0.00', '94555.37', '89000.00', '5555.37'),
(7, 6, 6, 'Cash', 'paid to me', 0, '2020-05-05 02:44:37', '2020-05-05 02:44:37', '1108.43', '0.00', '54313.01', '50000.00', '4313.01'),
(8, 7, 6, 'Cash', NULL, 0, '2020-05-05 02:51:01', '2020-05-05 02:51:01', '2265.87', '0.00', '111027.39', '105500.00', '5527.39'),
(9, 8, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 02:55:00', '2020-05-05 02:55:00', '5321.05', '0.00', '260731.33', '0.00', '260731.33'),
(10, 9, 6, 'Cash', 'paid to me', 0, '2020-05-05 02:59:09', '2020-05-05 02:59:09', '1951.62', '0.00', '95629.58', '90000.00', '5629.58'),
(11, 10, 6, 'Transfer', 'paid to ahlaji', 1, '2020-05-05 03:07:41', '2020-05-05 03:07:41', '1951.62', '0.00', '95629.58', '98000.00', '-2370.42'),
(12, 11, 6, 'Cash', 'paid to me', 0, '2020-05-05 03:11:24', '2020-05-05 03:11:24', '2135.21', '0.00', '104625.08', '82000.00', '22625.08'),
(13, 3, 6, 'Cash', 'paid to me', 0, '2020-05-05 03:13:14', '2020-05-05 03:13:14', '1951.62', '0.00', '95629.58', '78000.00', '17629.58'),
(14, 5, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 03:20:41', '2020-05-05 03:20:41', '16277.80', '0.00', '797612.31', '0.00', '797612.31'),
(15, 12, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 06:44:46', '2020-05-05 06:44:46', '1482.00', '0.00', '72618.00', '0.00', '72618.00'),
(16, 13, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 06:57:11', '2020-05-05 06:57:11', '1654.00', '0.00', '81046.00', '0.00', '81046.00'),
(17, 14, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 06:59:39', '2020-05-05 06:59:39', '2212.00', '0.00', '108388.00', '0.00', '108388.00'),
(18, 15, 6, 'Transfer', 'paid to ahlaji', 0, '2020-05-05 07:03:26', '2020-05-05 07:03:26', '4052.00', '0.00', '198548.00', '0.00', '198548.00'),
(19, 6, 6, 'Transfer', 'paid to ahlaji', 0, '2020-05-05 07:05:13', '2020-05-05 07:05:13', '6654.00', '0.00', '326046.00', '0.00', '326046.00'),
(20, 16, 6, 'Cash', 'paid to me', 1, '2020-05-05 07:07:23', '2020-05-05 07:07:23', '1020.00', '0.00', '49980.00', '50000.00', '-20.00'),
(21, 17, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 07:09:44', '2020-05-05 07:09:44', '2546.00', '0.00', '124754.00', '0.00', '124754.00'),
(22, 18, 6, 'Transfer', 'paid to ahlaji', 0, '2020-05-05 21:58:25', '2020-05-05 21:58:25', '9588.00', '0.00', '469812.00', '0.00', '469812.00'),
(23, 20, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:19:48', '2020-05-05 22:19:48', '2152.00', '0.00', '105448.00', '0.00', '105448.00'),
(24, 19, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:22:11', '2020-05-05 22:22:11', '4426.00', '0.00', '216874.00', '0.00', '216874.00'),
(25, 14, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:22:56', '2020-05-05 22:22:56', '1654.00', '0.00', '81046.00', '0.00', '81046.00'),
(26, 11, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:24:04', '2020-05-05 22:24:04', '1764.00', '0.00', '86436.00', '0.00', '86436.00'),
(27, 21, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:26:31', '2020-05-05 22:26:31', '4684.00', '0.00', '229516.00', '0.00', '229516.00'),
(28, 21, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:48:43', '2020-05-05 22:48:43', '7448.00', '0.00', '364952.00', '0.00', '364952.00'),
(29, 22, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 22:52:42', '2020-05-05 22:52:42', '7448.00', '0.00', '364952.00', '0.00', '364952.00'),
(30, 23, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 23:05:33', '2020-05-05 23:05:33', '1838.00', '0.00', '90062.00', '0.00', '90062.00'),
(31, 24, 6, 'None', 'paid to ahlaji', 0, '2020-05-05 23:13:15', '2020-05-05 23:13:15', '4666.00', '0.00', '228634.00', '0.00', '228634.00'),
(32, 5, 6, 'Cash', 'paid to me', 0, '2020-05-05 23:24:43', '2020-05-05 23:24:43', '2212.00', '0.00', '108388.00', '0.00', '108388.00'),
(33, 18, 6, 'Transfer', 'paid to ahlaji', 0, '2020-05-05 23:46:53', '2020-05-05 23:46:53', '2792.00', '0.00', '136808.00', '0.00', '136808.00'),
(34, 18, 6, 'Transfer', 'paid to ahlaj', 0, '2020-05-06 00:14:37', '2020-05-06 00:14:37', '4254.00', '0.00', '208446.00', '71650.00', '136796.00'),
(35, 25, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 00:17:54', '2020-05-06 00:17:54', '2212.00', '0.00', '108388.00', '0.00', '108388.00'),
(36, 26, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 00:26:07', '2020-05-06 00:26:07', '6918.00', '0.00', '338982.00', '0.00', '338982.00'),
(37, 8, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 00:45:25', '2020-05-06 00:45:25', '1414.00', '0.00', '69286.00', '0.00', '69286.00'),
(38, 24, 6, 'Transfer', 'paid to ahlaji', 1, '2020-05-06 01:36:15', '2020-05-06 01:36:15', '1414.00', '0.00', '69286.00', '75000.00', '-5714.00'),
(39, 27, 6, 'Cash', NULL, 1, '2020-05-06 03:04:07', '2020-05-06 03:04:07', '2212.00', '0.00', '108388.00', '108400.00', '-12.00'),
(40, 14, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 03:05:47', '2020-05-06 03:05:47', '2934.00', '0.00', '143766.00', '0.00', '143766.00'),
(41, 28, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 21:32:21', '2020-05-06 21:32:21', '0.00', '0.00', '14000.00', '0.00', '14000.00'),
(42, 3, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 22:29:58', '2020-05-06 22:29:58', '2282.00', '0.00', '111818.00', '0.00', '111818.00'),
(43, 26, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 22:41:06', '2020-05-06 22:41:06', '4172.00', '0.00', '204428.00', '0.00', '204428.00'),
(44, 24, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 23:12:31', '2020-05-06 23:12:31', '1186.00', '0.00', '58114.00', '0.00', '58114.00'),
(45, 10, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 23:23:33', '2020-05-06 23:23:33', '6786.00', '0.00', '332514.00', '0.00', '332514.00'),
(46, 19, 6, 'None', 'paid to ahlaji', 0, '2020-05-06 23:53:20', '2020-05-06 23:53:20', '3632.00', '0.00', '177968.00', '0.00', '177968.00'),
(47, 23, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 00:11:25', '2020-05-07 00:11:25', '5484.00', '0.00', '268716.00', '0.00', '268716.00'),
(48, 29, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 00:45:37', '2020-05-07 00:45:37', '2934.00', '0.00', '143766.00', '0.00', '143766.00'),
(49, 21, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 00:50:02', '2020-05-07 00:50:02', '5146.00', '0.00', '252154.00', '0.00', '252154.00'),
(50, 3, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 01:51:17', '2020-05-07 01:51:17', '2212.00', '0.00', '108388.00', '0.00', '108388.00'),
(51, 30, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 01:52:53', '2020-05-07 01:52:53', '1328.00', '0.00', '65072.00', '0.00', '65072.00'),
(52, 20, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 01:53:59', '2020-05-07 01:53:59', '2152.00', '0.00', '105448.00', '0.00', '105448.00'),
(53, 31, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 02:06:44', '2020-05-07 02:06:44', '772.00', '0.00', '37828.00', '0.00', '37828.00'),
(54, 26, 6, 'None', NULL, 0, '2020-05-07 02:16:55', '2020-05-07 02:16:55', '3308.00', '0.00', '162092.00', '0.00', '162092.00'),
(55, 26, 6, 'None', NULL, 0, '2020-05-07 02:17:52', '2020-05-07 02:17:52', '356.00', '0.00', '17444.00', '0.00', '17444.00'),
(56, 4, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 02:23:12', '2020-05-07 02:23:12', '1482.00', '0.00', '72618.00', '0.00', '72618.00'),
(57, 27, 6, 'Cash', 'paid to me', 0, '2020-05-07 03:06:18', '2020-05-07 03:06:18', '2282.00', '0.00', '111818.00', '3400.00', '108418.00'),
(58, 32, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 20:23:09', '2020-05-07 20:23:09', '5590.00', '0.00', '273910.00', '0.00', '273910.00'),
(59, 33, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 21:44:51', '2020-05-07 21:44:51', '2978.00', '0.00', '145922.00', '0.00', '145922.00'),
(60, 24, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 22:04:08', '2020-05-07 22:04:08', '2154.00', '0.00', '105546.00', '0.00', '105546.00'),
(61, 16, 6, 'None', 'paid to ahlaji acct', 1, '2020-05-07 22:05:28', '2020-05-07 22:05:28', '1030.00', '0.00', '50470.00', '55500.00', '-5030.00'),
(62, 34, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 22:06:51', '2020-05-07 22:06:51', '1414.00', '0.00', '69286.00', '0.00', '69286.00'),
(63, 31, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 22:32:53', '2020-05-07 22:32:53', '752.00', '0.00', '36848.00', '0.00', '36848.00'),
(64, 35, 6, 'Cash', 'paid to me', 1, '2020-05-07 23:15:18', '2020-05-07 23:15:18', '1020.00', '0.00', '49980.00', '50000.00', '-20.00'),
(65, 5, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 23:27:34', '2020-05-07 23:27:34', '1374.00', '0.00', '67326.00', '0.00', '67326.00'),
(66, 7, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 23:28:49', '2020-05-07 23:28:49', '4050.00', '0.00', '198450.00', '0.00', '198450.00'),
(67, 9, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 23:29:31', '2020-05-07 23:29:31', '4602.00', '0.00', '225498.00', '0.00', '225498.00'),
(68, 5, 6, 'None', 'paid to ahlaji', 0, '2020-05-07 23:41:12', '2020-05-07 23:41:12', '8012.00', '0.00', '392588.00', '0.00', '392588.00'),
(69, 15, 6, 'Cash', 'paid to me', 0, '2020-05-07 23:50:03', '2020-05-07 23:50:03', '6322.00', '0.00', '309778.00', '60000.00', '249778.00'),
(70, 36, 6, 'None', 'paid to ahlaji acct', 0, '2020-05-07 23:52:52', '2020-05-07 23:52:52', '2934.00', '0.00', '143766.00', '0.00', '143766.00'),
(71, 19, 6, 'None', 'paid to ahlaji acct', 0, '2020-05-07 23:57:26', '2020-05-07 23:57:26', '4984.00', '0.00', '244216.00', '0.00', '244216.00'),
(72, 18, 6, 'None', 'paid to ahlaji acct', 0, '2020-05-08 00:00:42', '2020-05-08 00:00:42', '2492.00', '0.00', '122108.00', '0.00', '122108.00'),
(73, 26, 6, 'Cash', 'paid to', 1, '2020-05-08 00:05:53', '2020-05-08 00:05:53', '1466.00', '0.00', '71834.00', '72000.00', '-166.00'),
(74, 37, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 00:26:24', '2020-05-08 00:26:24', '8348.00', '0.00', '409052.00', '0.00', '409052.00'),
(75, 38, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 00:28:25', '2020-05-08 00:28:25', '2934.00', '0.00', '143766.00', '0.00', '143766.00'),
(76, 39, 6, 'Cash', 'paid to me', 0, '2020-05-08 00:35:03', '2020-05-08 00:35:03', '2212.00', '0.00', '108388.00', '0.00', '108388.00'),
(77, 33, 6, 'Cash', 'paid to me', 1, '2020-05-08 00:44:30', '2020-05-08 00:44:30', '4122.00', '0.00', '201978.00', '202000.00', '-22.00'),
(78, 33, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 00:56:26', '2020-05-08 00:56:26', '454.00', '0.00', '22246.00', '0.00', '22246.00'),
(79, 21, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 01:01:20', '2020-05-08 01:01:20', '4892.00', '0.00', '239708.00', '0.00', '239708.00'),
(80, 21, 6, 'None', 'paid to me', 0, '2020-05-08 01:04:16', '2020-05-08 01:04:16', '834.00', '0.00', '40866.00', '0.00', '40866.00'),
(81, 40, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 01:09:59', '2020-05-08 01:09:59', '5006.00', '0.00', '245294.00', '0.00', '245294.00'),
(82, 41, 6, 'None', 'paid to ahlaji', 0, '2020-05-08 01:30:49', '2020-05-08 01:30:49', '1900.00', '0.00', '93100.00', '0.00', '93100.00'),
(83, 39, 6, 'Cash', 'paid to me', 1, '2020-05-08 01:55:57', '2020-05-08 01:55:57', '2050.00', '0.00', '100450.00', '100500.00', '-50.00'),
(84, 18, 6, 'Cash', 'paid to me', 0, '2020-05-08 01:57:35', '2020-05-08 01:57:35', '1466.00', '0.00', '71834.00', '35000.00', '36834.00'),
(85, 42, 6, 'Cash', 'paid to me', 1, '2020-05-08 02:08:19', '2020-05-08 02:08:19', '0.00', '0.00', '11300.00', '11300.00', '0.00'),
(86, 3, 6, 'Cash', NULL, 0, '2020-05-11 19:40:08', '2020-05-11 19:40:08', '10000.00', '0.00', '248700.00', '200000.00', '48700.00'),
(87, 3, 6, 'Cash', NULL, 0, '2020-05-11 19:41:01', '2020-05-11 19:41:01', '0.00', '0.00', '258700.00', '0.00', '258700.00'),
(88, 4, 6, 'check', NULL, 0, '2020-05-12 13:35:07', '2020-05-12 13:35:07', '5000.00', '0.00', '253700.00', '200000.00', '53700.00'),
(89, 4, 6, 'check', NULL, 0, '2020-05-12 13:37:04', '2020-05-12 13:37:04', '5000.00', '0.00', '253700.00', '200000.00', '53700.00');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost` decimal(15,2) NOT NULL,
  `total_selling` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `item_id`, `cost_price`, `selling_price`, `quantity`, `total_cost`, `total_selling`, `created_at`, `updated_at`) VALUES
(1, 1, 73, '90800.00', '96485.07', 1, '90800.00', '96485.07', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(2, 1, 58, '146700.00', '154660.48', 1, '146700.00', '154660.48', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(3, 1, 155, '45300.00', '48166.95', 1, '45300.00', '48166.95', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(4, 1, 144, '267300.00', '278681.19', 1, '267300.00', '278681.19', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(5, 1, 78, '136200.00', '142014.81', 2, '272400.00', '284029.62', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(6, 1, 2, '41700.00', '45117.90', 1, '41700.00', '45117.90', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(7, 1, 138, '121500.00', '127189.09', 1, '121500.00', '127189.09', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(8, 1, 138, '121500.00', '127189.09', 1, '121500.00', '127189.09', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(9, 1, 73, '90800.00', '96485.07', 3, '272400.00', '289455.21', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(10, 1, 120, '18000.00', '19170.00', 1, '18000.00', '19170.00', '2020-05-04 21:10:39', '2020-05-04 21:10:39'),
(11, 2, 139, '127300.00', '134125.55', 1, '127300.00', '134125.55', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(12, 2, 53, '339300.00', '360025.80', 1, '339300.00', '360025.80', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(13, 2, 59, '150200.00', '159298.03', 1, '150200.00', '159298.03', '2020-05-04 22:05:30', '2020-05-04 22:05:30'),
(14, 3, 44, '110600.00', '118559.99', 1, '110600.00', '118559.99', '2020-05-04 22:09:59', '2020-05-04 22:09:59'),
(15, 4, 110, '99400.00', '108365.24', 2, '198800.00', '216730.48', '2020-05-04 22:33:48', '2020-05-04 22:33:48'),
(16, 5, 105, '110700.00', '115252.63', 1, '110700.00', '115252.63', '2020-05-04 22:37:47', '2020-05-04 22:37:47'),
(17, 6, 73, '90800.00', '96485.07', 1, '90800.00', '96485.07', '2020-05-05 02:40:46', '2020-05-05 02:40:46'),
(18, 7, 90, '51000.00', '55421.44', 1, '51000.00', '55421.44', '2020-05-05 02:44:37', '2020-05-05 02:44:37'),
(19, 8, 137, '107600.00', '113293.26', 1, '107600.00', '113293.26', '2020-05-05 02:51:01', '2020-05-05 02:51:01'),
(20, 9, 143, '254400.00', '266052.38', 1, '254400.00', '266052.38', '2020-05-05 02:55:00', '2020-05-05 02:55:00'),
(21, 10, 38, '91900.00', '97581.20', 1, '91900.00', '97581.20', '2020-05-05 02:59:09', '2020-05-05 02:59:09'),
(22, 11, 38, '91900.00', '97581.20', 1, '91900.00', '97581.20', '2020-05-05 03:07:41', '2020-05-05 03:07:41'),
(23, 12, 37, '82700.00', '88388.41', 1, '82700.00', '88388.41', '2020-05-05 03:11:24', '2020-05-05 03:11:24'),
(24, 12, 149, '17800.00', '18371.88', 1, '17800.00', '18371.88', '2020-05-05 03:11:24', '2020-05-05 03:11:24'),
(25, 13, 38, '91900.00', '97581.20', 1, '91900.00', '97581.20', '2020-05-05 03:13:14', '2020-05-05 03:13:14'),
(26, 14, 44, '110600.00', '118559.99', 2, '221200.00', '237119.98', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(27, 14, 38, '91900.00', '97581.20', 2, '183800.00', '195162.40', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(28, 14, 108, '63300.00', '72286.77', 1, '63300.00', '72286.77', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(29, 14, 58, '146700.00', '154660.48', 2, '293400.00', '309320.96', '2020-05-05 03:20:41', '2020-05-05 03:20:41'),
(30, 15, 15, '80679.67', '74100.00', 1, '80679.67', '74100.00', '2020-05-05 06:44:46', '2020-05-05 06:44:46'),
(31, 16, 37, '88388.41', '82700.00', 1, '88388.41', '82700.00', '2020-05-05 06:57:11', '2020-05-05 06:57:11'),
(32, 17, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-05 06:59:39', '2020-05-05 06:59:39'),
(33, 18, 105, '115252.63', '110700.00', 1, '115252.63', '110700.00', '2020-05-05 07:03:26', '2020-05-05 07:03:26'),
(34, 18, 38, '97581.20', '91900.00', 1, '97581.20', '91900.00', '2020-05-05 07:03:26', '2020-05-05 07:03:26'),
(35, 19, 146, '349237.03', '332700.00', 1, '349237.03', '332700.00', '2020-05-05 07:05:13', '2020-05-05 07:05:13'),
(36, 20, 90, '55421.44', '51000.00', 1, '55421.44', '51000.00', '2020-05-05 07:07:23', '2020-05-05 07:07:23'),
(37, 21, 139, '134125.55', '127300.00', 1, '134125.55', '127300.00', '2020-05-05 07:09:44', '2020-05-05 07:09:44'),
(38, 22, 51, '271757.78', '256100.00', 1, '271757.78', '256100.00', '2020-05-05 21:58:25', '2020-05-05 21:58:25'),
(39, 22, 149, '18371.88', '17800.00', 1, '18371.88', '17800.00', '2020-05-05 21:58:25', '2020-05-05 21:58:25'),
(40, 22, 128, '105111.04', '99400.00', 1, '105111.04', '99400.00', '2020-05-05 21:58:25', '2020-05-05 21:58:25'),
(41, 22, 92, '110317.74', '106100.00', 1, '110317.74', '106100.00', '2020-05-05 21:58:26', '2020-05-05 21:58:26'),
(42, 23, 137, '113293.26', '107600.00', 1, '113293.26', '107600.00', '2020-05-05 22:19:48', '2020-05-05 22:19:48'),
(43, 24, 46, '138466.50', '130500.00', 1, '138466.50', '130500.00', '2020-05-05 22:22:11', '2020-05-05 22:22:11'),
(44, 24, 73, '96485.07', '90800.00', 1, '96485.07', '90800.00', '2020-05-05 22:22:11', '2020-05-05 22:22:11'),
(45, 25, 37, '88388.41', '82700.00', 1, '88388.41', '82700.00', '2020-05-05 22:22:56', '2020-05-05 22:22:56'),
(46, 26, 134, '94048.31', '88200.00', 1, '94048.31', '88200.00', '2020-05-05 22:24:04', '2020-05-05 22:24:04'),
(47, 27, 149, '18371.88', '17800.00', 2, '36743.76', '35600.00', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(48, 27, 37, '88388.41', '82700.00', 1, '88388.41', '82700.00', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(49, 27, 18, '122726.32', '115900.00', 1, '122726.32', '115900.00', '2020-05-05 22:26:32', '2020-05-05 22:26:32'),
(50, 28, 147, '390586.98', '372400.00', 1, '390586.98', '372400.00', '2020-05-05 22:48:43', '2020-05-05 22:48:43'),
(51, 29, 147, '390586.98', '372400.00', 1, '390586.98', '372400.00', '2020-05-05 22:52:42', '2020-05-05 22:52:42'),
(52, 30, 38, '97581.20', '91900.00', 1, '97581.20', '91900.00', '2020-05-05 23:05:33', '2020-05-05 23:05:33'),
(53, 31, 101, '242251.86', '233300.00', 1, '242251.86', '233300.00', '2020-05-05 23:13:15', '2020-05-05 23:13:15'),
(54, 32, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-05 23:24:43', '2020-05-05 23:24:43'),
(55, 33, 63, '148690.18', '139600.00', 1, '148690.18', '139600.00', '2020-05-05 23:46:53', '2020-05-05 23:46:53'),
(56, 34, 141, '220659.91', '212700.00', 1, '220659.91', '212700.00', '2020-05-06 00:14:37', '2020-05-06 00:14:37'),
(57, 35, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-06 00:17:55', '2020-05-06 00:17:55'),
(58, 36, 37, '88388.41', '82700.00', 1, '88388.41', '82700.00', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(59, 36, 92, '110317.74', '106100.00', 2, '220635.48', '212200.00', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(60, 36, 90, '55421.44', '51000.00', 1, '55421.44', '51000.00', '2020-05-06 00:26:07', '2020-05-06 00:26:07'),
(61, 37, 10, '74678.48', '70700.00', 1, '74678.48', '70700.00', '2020-05-06 00:45:25', '2020-05-06 00:45:25'),
(62, 38, 10, '74678.48', '70700.00', 1, '74678.48', '70700.00', '2020-05-06 01:36:15', '2020-05-06 01:36:15'),
(63, 39, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-06 03:04:07', '2020-05-06 03:04:07'),
(64, 40, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-06 03:05:47', '2020-05-06 03:05:47'),
(65, 41, 122, '14985.56', '14000.00', 1, '14985.56', '14000.00', '2020-05-06 21:32:21', '2020-05-06 21:32:21'),
(66, 42, 45, '122060.43', '114100.00', 1, '122060.43', '114100.00', '2020-05-06 22:29:58', '2020-05-06 22:29:58'),
(67, 43, 136, '108340.46', '102500.00', 1, '108340.46', '102500.00', '2020-05-06 22:41:06', '2020-05-06 22:41:06'),
(68, 43, 92, '110317.74', '106100.00', 1, '110317.74', '106100.00', '2020-05-06 22:41:06', '2020-05-06 22:41:06'),
(69, 44, 125, '62707.07', '59300.00', 1, '62707.07', '59300.00', '2020-05-06 23:12:31', '2020-05-06 23:12:31'),
(70, 45, 53, '360025.80', '339300.00', 1, '360025.80', '339300.00', '2020-05-06 23:23:33', '2020-05-06 23:23:33'),
(71, 46, 73, '96485.07', '90800.00', 2, '192970.14', '181600.00', '2020-05-06 23:53:20', '2020-05-06 23:53:20'),
(72, 47, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-07 00:11:25', '2020-05-07 00:11:25'),
(73, 47, 20, '172323.30', '163600.00', 1, '172323.30', '163600.00', '2020-05-07 00:11:25', '2020-05-07 00:11:25'),
(74, 48, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-07 00:45:37', '2020-05-07 00:45:37'),
(75, 49, 37, '88388.41', '82700.00', 2, '176776.82', '165400.00', '2020-05-07 00:50:02', '2020-05-07 00:50:02'),
(76, 49, 38, '97581.20', '91900.00', 1, '97581.20', '91900.00', '2020-05-07 00:50:02', '2020-05-07 00:50:02'),
(77, 50, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-07 01:51:17', '2020-05-07 01:51:17'),
(78, 51, 109, '75330.59', '66400.00', 1, '75330.59', '66400.00', '2020-05-07 01:52:53', '2020-05-07 01:52:53'),
(79, 52, 137, '113293.26', '107600.00', 1, '113293.26', '107600.00', '2020-05-07 01:53:59', '2020-05-07 01:53:59'),
(80, 53, 151, '39728.84', '38600.00', 1, '39728.84', '38600.00', '2020-05-07 02:06:44', '2020-05-07 02:06:44'),
(81, 54, 37, '88388.41', '82700.00', 2, '176776.82', '165400.00', '2020-05-07 02:16:55', '2020-05-07 02:16:55'),
(82, 55, 149, '18371.88', '17800.00', 1, '18371.88', '17800.00', '2020-05-07 02:17:52', '2020-05-07 02:17:52'),
(83, 56, 15, '80679.67', '74100.00', 1, '80679.67', '74100.00', '2020-05-07 02:23:12', '2020-05-07 02:23:12'),
(84, 57, 45, '122060.43', '114100.00', 1, '122060.43', '114100.00', '2020-05-07 03:06:18', '2020-05-07 03:06:18'),
(85, 58, 62, '296581.84', '279500.00', 1, '296581.84', '279500.00', '2020-05-07 20:23:09', '2020-05-07 20:23:09'),
(86, 59, 13, '109238.22', '103600.00', 1, '109238.22', '103600.00', '2020-05-07 21:44:51', '2020-05-07 21:44:51'),
(87, 59, 155, '48166.95', '45300.00', 1, '48166.95', '45300.00', '2020-05-07 21:44:51', '2020-05-07 21:44:51'),
(88, 60, 17, '114523.43', '107700.00', 1, '114523.43', '107700.00', '2020-05-07 22:04:08', '2020-05-07 22:04:08'),
(89, 61, 107, '56230.67', '51500.00', 1, '56230.67', '51500.00', '2020-05-07 22:05:28', '2020-05-07 22:05:28'),
(90, 62, 10, '74678.48', '70700.00', 1, '74678.48', '70700.00', '2020-05-07 22:06:51', '2020-05-07 22:06:51'),
(91, 63, 150, '38736.97', '37600.00', 1, '38736.97', '37600.00', '2020-05-07 22:32:53', '2020-05-07 22:32:53'),
(92, 64, 90, '55421.44', '51000.00', 1, '55421.44', '51000.00', '2020-05-07 23:15:18', '2020-05-07 23:15:18'),
(93, 65, 14, '75246.54', '68700.00', 1, '75246.54', '68700.00', '2020-05-07 23:27:34', '2020-05-07 23:27:34'),
(94, 66, 38, '97581.20', '91900.00', 1, '97581.20', '91900.00', '2020-05-07 23:28:49', '2020-05-07 23:28:49'),
(95, 66, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-07 23:28:49', '2020-05-07 23:28:49'),
(96, 67, 142, '239194.52', '230100.00', 1, '239194.52', '230100.00', '2020-05-07 23:29:31', '2020-05-07 23:29:31'),
(97, 68, 81, '208387.30', '200300.00', 2, '416774.60', '400600.00', '2020-05-07 23:41:12', '2020-05-07 23:41:12'),
(98, 69, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(99, 69, 108, '72286.77', '63300.00', 1, '72286.77', '63300.00', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(100, 69, 92, '110317.74', '106100.00', 1, '110317.74', '106100.00', '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(101, 70, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-07 23:52:52', '2020-05-07 23:52:52'),
(102, 71, 76, '130403.06', '124600.00', 2, '260806.12', '249200.00', '2020-05-07 23:57:26', '2020-05-07 23:57:26'),
(103, 72, 76, '130403.06', '124600.00', 1, '130403.06', '124600.00', '2020-05-08 00:00:42', '2020-05-08 00:00:42'),
(104, 73, 34, '76709.25', '73300.00', 1, '76709.25', '73300.00', '2020-05-08 00:05:53', '2020-05-08 00:05:53'),
(105, 74, 62, '296581.84', '279500.00', 1, '296581.84', '279500.00', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(106, 74, 38, '97581.20', '91900.00', 1, '97581.20', '91900.00', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(107, 74, 122, '14985.56', '14000.00', 2, '29971.12', '28000.00', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(108, 74, 120, '19170.00', '18000.00', 1, '19170.00', '18000.00', '2020-05-08 00:26:24', '2020-05-08 00:26:24'),
(109, 75, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-08 00:28:25', '2020-05-08 00:28:25'),
(110, 76, 44, '118559.99', '110600.00', 1, '118559.99', '110600.00', '2020-05-08 00:35:03', '2020-05-08 00:35:03'),
(111, 77, 136, '108340.46', '102500.00', 1, '108340.46', '102500.00', '2020-05-08 00:44:30', '2020-05-08 00:44:30'),
(112, 77, 13, '109238.22', '103600.00', 1, '109238.22', '103600.00', '2020-05-08 00:44:30', '2020-05-08 00:44:30'),
(113, 78, 116, '24402.50', '22700.00', 1, '24402.50', '22700.00', '2020-05-08 00:56:26', '2020-05-08 00:56:26'),
(114, 79, 45, '122060.43', '114100.00', 1, '122060.43', '114100.00', '2020-05-08 01:01:20', '2020-05-08 01:01:20'),
(115, 79, 46, '138466.50', '130500.00', 1, '138466.50', '130500.00', '2020-05-08 01:01:20', '2020-05-08 01:01:20'),
(116, 80, 2, '45117.90', '41700.00', 1, '45117.90', '41700.00', '2020-05-08 01:04:16', '2020-05-08 01:04:16'),
(117, 81, 13, '109238.22', '103600.00', 1, '109238.22', '103600.00', '2020-05-08 01:09:59', '2020-05-08 01:09:59'),
(118, 81, 58, '154660.48', '146700.00', 1, '154660.48', '146700.00', '2020-05-08 01:09:59', '2020-05-08 01:09:59'),
(119, 82, 90, '55421.44', '51000.00', 1, '55421.44', '51000.00', '2020-05-08 01:30:49', '2020-05-08 01:30:49'),
(120, 82, 4, '47984.62', '44000.00', 1, '47984.62', '44000.00', '2020-05-08 01:30:49', '2020-05-08 01:30:49'),
(121, 83, 136, '108340.46', '102500.00', 1, '108340.46', '102500.00', '2020-05-08 01:55:57', '2020-05-08 01:55:57'),
(122, 84, 34, '76709.25', '73300.00', 1, '76709.25', '73300.00', '2020-05-08 01:57:35', '2020-05-08 01:57:35'),
(123, 85, 121, '12034.50', '11300.00', 1, '12034.50', '11300.00', '2020-05-08 02:08:19', '2020-05-08 02:08:19'),
(124, 86, 14, '75246.54', '68700.00', 1, '75246.54', '68700.00', '2020-05-11 19:40:08', '2020-05-11 19:40:08'),
(125, 86, 15, '80679.67', '74100.00', 1, '80679.67', '74100.00', '2020-05-11 19:40:09', '2020-05-11 19:40:09'),
(126, 86, 18, '122726.32', '115900.00', 1, '122726.32', '115900.00', '2020-05-11 19:40:09', '2020-05-11 19:40:09'),
(127, 87, 14, '75246.54', '68700.00', 1, '75246.54', '68700.00', '2020-05-11 19:41:02', '2020-05-11 19:41:02'),
(128, 87, 15, '80679.67', '74100.00', 1, '80679.67', '74100.00', '2020-05-11 19:41:02', '2020-05-11 19:41:02'),
(129, 87, 18, '122726.32', '115900.00', 1, '122726.32', '115900.00', '2020-05-11 19:41:02', '2020-05-11 19:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `sale_payments`
--

CREATE TABLE `sale_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dues` decimal(12,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_payments`
--

INSERT INTO `sale_payments` (`id`, `payment`, `payment_type`, `comments`, `dues`, `user_id`, `sale_id`, `created_at`, `updated_at`) VALUES
(1, '89000.00', '89000', 'paid to me', '5555.37', 6, 6, '2020-05-05 02:40:46', '2020-05-05 02:40:46'),
(2, '50000.00', '50000', 'paid to me', '4313.01', 6, 7, '2020-05-05 02:44:37', '2020-05-05 02:44:37'),
(3, '105500.00', '105500', NULL, '5527.39', 6, 8, '2020-05-05 02:51:01', '2020-05-05 02:51:01'),
(4, '90000.00', '90000', 'paid to me', '5629.58', 6, 10, '2020-05-05 02:59:09', '2020-05-05 02:59:09'),
(5, '98000.00', '98000', 'paid to ahlaji', '-2370.42', 6, 11, '2020-05-05 03:07:41', '2020-05-05 03:07:41'),
(6, '82000.00', '82000', 'paid to me', '22625.08', 6, 12, '2020-05-05 03:11:24', '2020-05-05 03:11:24'),
(7, '78000.00', '78000', 'paid to me', '17629.58', 6, 13, '2020-05-05 03:13:14', '2020-05-05 03:13:14'),
(8, '50000.00', '50000', 'paid to me', '-20.00', 6, 20, '2020-05-05 07:07:23', '2020-05-05 07:07:23'),
(9, '71650.00', '71650', 'paid to ahlaj', '136796.00', 6, 34, '2020-05-06 00:14:37', '2020-05-06 00:14:37'),
(10, '75000.00', '75000', 'paid to ahlaji', '-5714.00', 6, 38, '2020-05-06 01:36:15', '2020-05-06 01:36:15'),
(11, '108400.00', '108400', NULL, '-12.00', 6, 39, '2020-05-06 03:04:07', '2020-05-06 03:04:07'),
(12, '3400.00', '3400', 'paid to me', '108418.00', 6, 57, '2020-05-07 03:06:18', '2020-05-07 03:06:18'),
(13, '55500.00', '55500', 'paid to ahlaji acct', '-5030.00', 6, 61, '2020-05-07 22:05:28', '2020-05-07 22:05:28'),
(14, '50000.00', '50000', 'paid to me', '-20.00', 6, 64, '2020-05-07 23:15:18', '2020-05-07 23:15:18'),
(15, '60000.00', '60000', 'paid to me', '249778.00', 6, 69, '2020-05-07 23:50:03', '2020-05-07 23:50:03'),
(16, '72000.00', '72000', 'paid to', '-166.00', 6, 73, '2020-05-08 00:05:53', '2020-05-08 00:05:53'),
(17, '202000.00', '202000', 'paid to me', '-22.00', 6, 77, '2020-05-08 00:44:30', '2020-05-08 00:44:30'),
(18, '100500.00', '100500', 'paid to me', '-50.00', 6, 83, '2020-05-08 01:55:57', '2020-05-08 01:55:57'),
(19, '35000.00', '35000', 'paid to me', '36834.00', 6, 84, '2020-05-08 01:57:35', '2020-05-08 01:57:35'),
(20, '11300.00', '11300', 'paid to me', '0.00', 6, 85, '2020-05-08 02:08:19', '2020-05-08 02:08:19'),
(21, '200000.00', '200000', NULL, '48700.00', 6, 86, '2020-05-11 19:40:08', '2020-05-11 19:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `sale_temps`
--

CREATE TABLE `sale_temps` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cost_price` decimal(9,2) NOT NULL,
  `selling_price` decimal(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost` decimal(9,2) NOT NULL,
  `total_selling` decimal(9,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_temps`
--

INSERT INTO `sale_temps` (`id`, `item_id`, `cost_price`, `selling_price`, `quantity`, `total_cost`, `total_selling`, `created_at`, `updated_at`) VALUES
(1, 14, '75246.54', '68700.00', 1, '75246.54', '68700.00', '2020-05-11 19:39:39', '2020-05-11 19:39:39'),
(2, 15, '80679.67', '74100.00', 1, '80679.67', '74100.00', '2020-05-11 19:39:41', '2020-05-11 19:39:41'),
(3, 18, '122726.32', '115900.00', 1, '122726.32', '115900.00', '2020-05-11 19:39:43', '2020-05-11 19:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_balance` decimal(12,2) DEFAULT NULL,
  `payment` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment` decimal(12,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_type` tinyint(4) NOT NULL,
  `transaction_with` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutapos_settings`
--

CREATE TABLE `tutapos_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `languange` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutapos_settings`
--

INSERT INTO `tutapos_settings` (`id`, `languange`, `created_at`, `updated_at`) VALUES
(1, 'en', '2019-04-28 17:38:11', '2019-04-28 17:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(9) NOT NULL,
  `verifyToken` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `verifyToken`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Admin', 'sales@yareece.com.ng', 1, 'YGww48z1uKjsosFkrHRMwexao6PSYsvQMheKi6Cu', '$2y$10$OIRpKkhr.IOgDg4hRhXsNeZdLQpID.y.3v0L5DrGIqCYmgFqeA7je', 'lex6ojV0HPZuWQNNofnJum5oFg9FCgYB2kKnxmrBWVg9YeAlxhFNF7j1YHcX', '2020-05-03 23:02:16', '2020-05-03 23:02:16'),
(7, 'Basirah', 'basira@gmail.com', 1, 'FestrbsRcehJGOkyYFoHaPAGUiIAdc6p0ZMfqW0K', '$2y$10$NU5AnmYIsqmr5PMNhVKd7.vsBwh7j38SpDVfvSl5.2TcJXrF5fsCi', NULL, '2020-05-04 06:17:37', '2020-05-04 06:17:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_payments_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `daily_reports`
--
ALTER TABLE `daily_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flexible_pos_settings`
--
ALTER TABLE `flexible_pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_item_id_foreign` (`item_id`),
  ADD KEY `inventories_user_id_foreign` (`user_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_kit_items`
--
ALTER TABLE `item_kit_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_kit_items_item_kit_id_foreign` (`item_kit_id`),
  ADD KEY `item_kit_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_kit_item_temps`
--
ALTER TABLE `item_kit_item_temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_kit_item_temps_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivings`
--
ALTER TABLE `receivings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receivings_supplier_id_foreign` (`supplier_id`),
  ADD KEY `receivings_user_id_foreign` (`user_id`);

--
-- Indexes for table `receiving_items`
--
ALTER TABLE `receiving_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiving_items_receiving_id_foreign` (`receiving_id`),
  ADD KEY `receiving_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `receiving_payments`
--
ALTER TABLE `receiving_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiving_payments_receiving_id_foreign` (`receiving_id`),
  ADD KEY `receiving_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `receiving_temps`
--
ALTER TABLE `receiving_temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiving_temps_item_id_foreign` (`item_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_payments_user_id_foreign` (`user_id`),
  ADD KEY `sale_payments_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sale_temps`
--
ALTER TABLE `sale_temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_temps_item_id_foreign` (`item_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplier_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`);

--
-- Indexes for table `tutapos_settings`
--
ALTER TABLE `tutapos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customer_payments`
--
ALTER TABLE `customer_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_reports`
--
ALTER TABLE `daily_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flexible_pos_settings`
--
ALTER TABLE `flexible_pos_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `item_kit_items`
--
ALTER TABLE `item_kit_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_kit_item_temps`
--
ALTER TABLE `item_kit_item_temps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `receivings`
--
ALTER TABLE `receivings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiving_items`
--
ALTER TABLE `receiving_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiving_payments`
--
ALTER TABLE `receiving_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiving_temps`
--
ALTER TABLE `receiving_temps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sale_temps`
--
ALTER TABLE `sale_temps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutapos_settings`
--
ALTER TABLE `tutapos_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD CONSTRAINT `customer_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `daily_reports`
--
ALTER TABLE `daily_reports`
  ADD CONSTRAINT `daily_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `inventories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_kit_items`
--
ALTER TABLE `item_kit_items`
  ADD CONSTRAINT `item_kit_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_kit_items_item_kit_id_foreign` FOREIGN KEY (`item_kit_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_kit_item_temps`
--
ALTER TABLE `item_kit_item_temps`
  ADD CONSTRAINT `item_kit_item_temps_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receivings`
--
ALTER TABLE `receivings`
  ADD CONSTRAINT `receivings_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `receivings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `receiving_items`
--
ALTER TABLE `receiving_items`
  ADD CONSTRAINT `receiving_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `receiving_items_receiving_id_foreign` FOREIGN KEY (`receiving_id`) REFERENCES `receivings` (`id`);

--
-- Constraints for table `receiving_payments`
--
ALTER TABLE `receiving_payments`
  ADD CONSTRAINT `receiving_payments_receiving_id_foreign` FOREIGN KEY (`receiving_id`) REFERENCES `receivings` (`id`),
  ADD CONSTRAINT `receiving_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `receiving_temps`
--
ALTER TABLE `receiving_temps`
  ADD CONSTRAINT `receiving_temps_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD CONSTRAINT `sale_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sale_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_temps`
--
ALTER TABLE `sale_temps`
  ADD CONSTRAINT `sale_temps_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD CONSTRAINT `supplier_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `supplier_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
