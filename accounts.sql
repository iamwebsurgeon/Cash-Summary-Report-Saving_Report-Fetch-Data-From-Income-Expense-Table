-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2020 at 01:42 PM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) NOT NULL,
  `exp_sub_head_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `narration` text NOT NULL,
  `is_approve` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`exp_id`),
  KEY `exp_head_id` (`exp_head_id`),
  KEY `exp_sub_head_id` (`exp_sub_head_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `exp_head_id`, `exp_sub_head_id`, `amount`, `narration`, `is_approve`, `company_id`, `created_by`, `exp_date`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 3270, 'For the month of Aug', 1, 1, 'Admin', '2020-09-19', '2020-09-21 10:37:25', '2020-09-21 10:49:17'),
(2, 3, 6, 1000, '', 1, 1, 'Admin', '2020-08-04', '2020-09-21 10:41:32', '2020-09-21 10:49:06'),
(3, 3, 6, 500, '', 1, 1, 'Admin', '2020-08-08', '2020-09-21 10:42:26', '2020-09-21 10:49:06'),
(4, 3, 6, 300, '', 1, 1, 'Admin', '2020-08-13', '2020-09-21 10:42:45', '2020-09-21 10:48:51'),
(5, 3, 6, 800, '', 1, 1, 'Admin', '2020-09-14', '2020-09-21 10:43:00', '2020-09-21 10:49:06'),
(6, 3, 6, 800, '', 1, 1, 'Admin', '2020-08-15', '2020-09-21 10:43:15', '2020-09-21 10:49:06'),
(7, 3, 6, 500, '', 1, 1, 'Admin', '2020-08-21', '2020-09-21 10:43:36', '2020-09-21 10:49:06'),
(8, 3, 6, 500, '', 1, 1, 'Admin', '2020-08-25', '2020-09-21 10:44:05', '2020-09-21 10:49:06'),
(9, 3, 6, 250, '', 1, 1, 'Admin', '2020-09-03', '2020-09-21 10:44:33', '2020-09-21 10:49:06'),
(10, 3, 6, 300, 'n/a', 1, 1, 'Admin', '2020-09-08', '2020-09-21 10:44:47', '2020-09-21 10:49:06'),
(11, 3, 6, 500, '', 1, 1, 'Admin', '2020-09-09', '2020-09-21 10:45:52', '2020-09-21 10:49:06'),
(12, 3, 6, 800, '', 1, 1, 'Admin', '2020-09-16', '2020-09-21 10:47:08', '2020-09-21 10:49:06'),
(13, 3, 6, 500, '', 1, 1, 'Admin', '2020-09-17', '2020-09-21 10:47:25', '2020-09-21 10:49:06'),
(14, 6, 10, 16500, '', 1, 1, 'Admin', '2020-07-27', '2020-09-21 10:53:07', '2020-09-21 11:51:34'),
(15, 7, 11, 300, 'For moving fridge', 1, 1, 'Admin', '2020-07-27', '2020-09-21 10:57:33', '2020-09-21 11:51:34'),
(16, 4, 12, 500, 'Clear remaining payments to Najeeb Gawala', 1, 1, 'Admin', '2020-08-07', '2020-09-21 10:58:42', '2020-09-21 11:51:34'),
(17, 4, 13, 120, 'Refreshment for Staff', 1, 1, 'Admin', '2020-08-08', '2020-09-21 11:00:29', '2020-09-21 11:51:34'),
(18, 4, 9, 60, 'Surf Excel', 1, 1, 'Admin', '2020-08-08', '2020-09-21 11:02:17', '2020-09-21 11:51:34'),
(19, 4, 13, 120, 'Plum Juice', 1, 1, 'Admin', '2020-08-09', '2020-09-21 11:03:35', '2020-09-21 11:51:34'),
(20, 4, 12, 50, '', 1, 1, 'Admin', '2020-08-09', '2020-09-21 11:04:06', '2020-09-21 11:51:34'),
(21, 4, 12, 90, '', 1, 1, 'Admin', '2020-08-09', '2020-09-21 11:05:13', '2020-09-21 11:51:27'),
(22, 1, 1, 12500, 'Office Rent for 15 days when we shifted', 1, 1, 'Admin', '2020-08-10', '2020-09-21 11:06:15', '2020-09-21 11:51:27'),
(23, 8, 14, 50000, 'Give to Malik Makan Hassan as a advance.', 1, 1, 'Admin', '2020-08-10', '2020-09-21 11:07:54', '2020-09-21 11:51:27'),
(24, 9, 15, 5000, '', 1, 1, 'Admin', '2020-08-10', '2020-09-21 11:09:18', '2020-09-21 11:51:27'),
(25, 10, 16, 700, 'Ishtam Farosh for writing contract. ', 1, 1, 'Admin', '2020-08-10', '2020-09-21 11:11:39', '2020-09-21 11:51:27'),
(26, 4, 12, 100, '', 1, 1, 'Admin', '2020-08-11', '2020-09-21 11:11:56', '2020-09-21 11:51:27'),
(27, 3, 8, 1200, 'AC Belt, Bumper, Bulb', 1, 1, 'Admin', '2020-08-13', '2020-09-21 11:12:41', '2020-09-21 11:51:27'),
(28, 4, 17, 50, 'Lemon, Tomato', 1, 1, 'Admin', '2020-08-13', '2020-09-21 11:14:43', '2020-09-21 11:51:27'),
(29, 3, 5, 500, '', 1, 1, 'Admin', '2020-08-17', '2020-09-21 11:15:12', '2020-09-21 11:51:27'),
(30, 2, 2, 2400, '', 1, 1, 'Admin', '2020-08-17', '2020-09-21 11:15:35', '2020-09-21 11:51:27'),
(31, 4, 17, 235, 'Vegetables & Eggs', 1, 1, 'Admin', '2020-08-17', '2020-09-21 11:16:31', '2020-09-21 11:51:19'),
(32, 10, 16, 500, 'Give to Bhai Masood for Traveling expense (Taziyat)', 1, 1, 'Admin', '2020-08-17', '2020-09-21 11:17:24', '2020-09-21 11:51:19'),
(33, 10, 16, 500, '', 1, 1, 'Admin', '2020-08-19', '2020-09-21 11:17:48', '2020-09-21 11:51:19'),
(34, 10, 16, 300, 'U Top Up for Mehboob Bhai', 1, 1, 'Admin', '2020-08-19', '2020-09-21 11:18:17', '2020-09-21 11:51:19'),
(35, 10, 16, 8000, 'Paint Material', 1, 1, 'Admin', '2020-08-20', '2020-09-21 11:19:10', '2020-09-21 11:51:19'),
(36, 10, 16, 3000, 'Painter Wages', 1, 1, 'Admin', '2020-08-20', '2020-09-21 11:19:47', '2020-09-21 11:51:19'),
(37, 9, 15, 5000, 'Property Dealer Remaining Commission.', 1, 1, 'Admin', '2020-08-20', '2020-09-21 11:20:30', '2020-09-21 11:51:19'),
(38, 3, 5, 300, '', 1, 1, 'Admin', '2020-08-21', '2020-09-21 11:20:46', '2020-09-21 11:51:19'),
(39, 4, 13, 250, '', 1, 1, 'Admin', '2020-08-23', '2020-09-21 11:21:42', '2020-09-21 11:51:19'),
(40, 4, 17, 250, '', 1, 1, 'Admin', '2020-08-23', '2020-09-21 11:21:53', '2020-09-21 11:51:19'),
(41, 3, 5, 300, '', 1, 1, 'Admin', '2020-08-25', '2020-09-21 11:22:09', '2020-09-21 11:51:12'),
(42, 4, 13, 100, 'Coke', 1, 1, 'Admin', '2020-08-25', '2020-09-21 11:22:34', '2020-09-21 11:51:12'),
(43, 4, 13, 100, 'Wings', 1, 1, 'Admin', '2020-08-26', '2020-09-21 11:22:53', '2020-09-21 11:51:12'),
(44, 10, 16, 330, 'Mehboob Bhai Mini Super Card', 1, 1, 'Admin', '2020-08-26', '2020-09-21 11:24:17', '2020-09-21 11:51:12'),
(45, 4, 12, 30, 'Tea', 1, 1, 'Admin', '2020-09-02', '2020-09-21 11:24:46', '2020-09-21 11:51:12'),
(46, 4, 9, 150, 'Tooth Paste & Shampoo Sashay', 1, 1, 'Admin', '2020-09-03', '2020-09-21 11:25:44', '2020-09-21 11:51:12'),
(47, 4, 13, 70, 'Sprite for Client', 1, 1, 'Admin', '2020-09-03', '2020-09-21 11:26:10', '2020-09-21 11:51:12'),
(48, 4, 9, 200, 'Basin, Sugar, Tea, Dhood for Team', 1, 1, 'Admin', '2020-09-04', '2020-09-21 11:26:50', '2020-09-21 11:51:12'),
(49, 4, 12, 100, 'For Team', 1, 1, 'Admin', '2020-08-05', '2020-09-21 11:27:34', '2020-09-21 11:51:12'),
(50, 4, 9, 3630, 'Monthly Grocery', 1, 1, 'Admin', '2020-09-06', '2020-09-21 11:28:45', '2020-09-21 11:51:12'),
(51, 10, 16, 780, 'U patti and Rawal Bold', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:29:56', '2020-09-21 11:51:05'),
(52, 10, 16, 6120, 'Folding Brackets for Table', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:30:29', '2020-09-21 11:51:05'),
(53, 10, 16, 1500, 'Furniture Mazdoori - Salman', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:31:11', '2020-09-21 11:51:05'),
(54, 4, 12, 100, 'Tea Biscuit', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:31:31', '2020-09-21 11:51:05'),
(55, 10, 16, 1500, 'IUB Challan Form', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:32:36', '2020-09-21 11:51:05'),
(56, 10, 16, 600, 'Document Copies, Photos, Courier', 1, 1, 'Admin', '2020-09-07', '2020-09-21 11:33:10', '2020-09-21 11:51:05'),
(57, 4, 13, 100, 'Sprite for Client', 1, 1, 'Admin', '2020-09-08', '2020-09-21 11:33:31', '2020-09-21 11:51:05'),
(58, 3, 5, 500, '', 1, 1, 'Admin', '2020-09-09', '2020-09-21 11:33:48', '2020-09-21 11:51:05'),
(59, 3, 8, 950, 'CNG Setting & Cutout', 1, 1, 'Admin', '2020-09-09', '2020-09-21 11:34:26', '2020-09-21 11:51:05'),
(60, 3, 6, 1000, 'Bwp to Khanpur Travel', 1, 1, 'Admin', '2020-09-10', '2020-09-21 11:35:02', '2020-09-21 11:51:05'),
(61, 4, 17, 140, 'Nashta', 1, 1, 'Admin', '2020-09-10', '2020-09-21 11:35:51', '2020-09-21 11:50:58'),
(62, 10, 16, 200, 'Sohn Halwa for Baba Saeen', 1, 1, 'Admin', '2020-09-10', '2020-09-21 11:36:22', '2020-09-21 11:50:58'),
(63, 3, 8, 250, 'Checkup and Cut Out fitting', 1, 1, 'Admin', '2020-09-10', '2020-09-21 11:37:02', '2020-09-21 11:50:58'),
(64, 3, 6, 1000, 'Khanpur to Bwp Travel', 1, 1, 'Admin', '2020-09-11', '2020-09-21 11:37:37', '2020-09-21 11:50:58'),
(65, 10, 16, 12000, 'Give to Baba Saeen for Traveling to Lahore', 1, 1, 'Admin', '2020-09-11', '2020-09-21 11:38:07', '2020-09-21 11:50:58'),
(66, 4, 17, 500, 'Milk, Vegetables, etc', 1, 1, 'Admin', '2020-09-11', '2020-09-21 11:38:53', '2020-09-21 11:50:58'),
(67, 4, 17, 500, 'Give to Bhai Masood for Kitchen', 1, 1, 'Admin', '2020-09-11', '2020-09-21 11:39:23', '2020-09-21 11:50:58'),
(68, 1, 1, 14000, 'for the Month of Sept 2020', 1, 1, 'Admin', '2020-09-11', '2020-09-21 11:40:00', '2020-09-21 11:50:58'),
(69, 10, 16, 1500, 'Bhai Masood for Traveling to Lahore', 1, 1, 'Admin', '2020-09-12', '2020-09-21 11:40:33', '2020-09-21 11:50:58'),
(70, 4, 17, 250, 'Dinner', 1, 1, 'Admin', '2020-09-12', '2020-09-21 11:40:55', '2020-09-21 11:50:58'),
(71, 4, 17, 200, 'Breakfast and Refreshment', 1, 1, 'Admin', '2020-09-13', '2020-09-21 11:41:30', '2020-09-21 11:50:08'),
(72, 3, 7, 2650, 'Mobil Oil, Oil Filter, Air Filter', 1, 1, 'Admin', '2020-09-16', '2020-09-21 11:44:46', '2020-09-21 11:50:08'),
(73, 5, 18, 800, 'Kotla Pathan Hakeem', 1, 1, 'Admin', '2020-09-16', '2020-09-21 11:46:09', '2020-09-21 11:50:08'),
(74, 10, 16, 420, 'Led Bulbs for Office', 1, 1, 'Admin', '2020-09-17', '2020-09-21 11:46:45', '2020-09-21 11:50:08'),
(75, 10, 16, 400, 'Electriction', 1, 1, 'Admin', '2020-09-17', '2020-09-21 11:47:09', '2020-09-21 11:50:08'),
(76, 4, 13, 335, 'Pizza for Family', 1, 1, 'Admin', '2020-09-19', '2020-09-21 11:47:36', '2020-09-21 11:50:08'),
(77, 10, 16, 500, 'Fruits, Milk, Joshanday', 1, 1, 'Admin', '2020-09-20', '2020-09-21 11:48:45', '2020-09-21 11:50:08'),
(78, 5, 18, 180, 'Claritek 250 mg 6', 1, 1, 'Admin', '2020-09-21', '2020-09-21 11:49:29', '2020-09-21 11:50:08'),
(79, 5, 18, 50, 'Joshanday', 1, 1, 'Admin', '2020-09-21', '2020-09-21 11:49:43', '2020-09-21 11:50:07'),
(80, 4, 12, 50, 'Tea', 1, 1, 'Admin', '2020-09-21', '2020-09-21 11:50:00', '2020-09-21 11:50:07'),
(81, 2, 3, 6704, 'Month Aug', 1, 1, 'Admin', '2020-09-16', '2020-09-21 15:48:18', '2020-09-21 17:28:43'),
(82, 4, 12, 40, 'Night Tea', 1, 1, 'Admin', '2020-09-21', '2020-09-21 17:27:17', '2020-09-21 17:28:36'),
(83, 5, 18, 60, 'Joshanday 6', 1, 1, 'Admin', '2020-09-22', '2020-09-22 16:47:12', '2020-09-26 18:28:40'),
(84, 4, 12, 50, 'Tea Milk', 1, 1, 'Admin', '2020-09-22', '2020-09-22 16:48:01', '2020-09-26 18:28:40'),
(85, 4, 12, 50, 'Tea Milk', 1, 1, 'Admin', '2020-09-22', '2020-09-22 16:48:15', '2020-09-26 18:28:40'),
(86, 4, 17, 80, 'Nashta', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:24:30', '2020-09-26 18:28:40'),
(87, 4, 12, 40, 'Milk for Tea', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:24:49', '2020-09-26 18:28:33'),
(88, 4, 13, 150, 'Grapes for Team Refreshment', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:25:20', '2020-09-26 18:28:33'),
(89, 4, 12, 40, 'Tea Milk', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:25:49', '2020-09-26 18:28:33'),
(90, 4, 17, 260, 'Dinner', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:26:24', '2020-09-26 18:28:33'),
(91, 4, 17, 190, 'Breakfast', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:27:46', '2020-09-26 18:28:33'),
(92, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:28:04', '2020-09-26 18:28:33'),
(93, 4, 9, 20, 'Tea Pati', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:28:30', '2020-09-26 18:28:33'),
(94, 4, 13, 100, 'Dew for Team Refreshment', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:28:50', '2020-09-26 18:28:33'),
(95, 7, 11, 250, 'Executive Table Cargo Charges', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:29:44', '2020-09-26 18:28:33'),
(96, 6, 19, 8000, '2000 Remaining - Total 10,000', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:30:52', '2020-09-26 18:28:33'),
(97, 10, 16, 200, 'Chair Repairing Charges', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:31:16', '2020-09-26 18:28:26'),
(98, 5, 18, 500, 'Dr. Bashir for Flu and Fever Treatment', 1, 1, 'Admin', '2020-09-24', '2020-09-24 11:31:58', '2020-09-26 18:28:26'),
(99, 11, 20, 200, '10 Office Files', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:34:50', '2020-09-26 18:28:26'),
(100, 11, 20, 100, 'Admission Form Copies', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:35:31', '2020-09-26 18:28:26'),
(101, 10, 16, 80, 'Bhai Masood Load Return to Ali', 1, 1, 'Admin', '2020-09-23', '2020-09-24 11:36:07', '2020-09-26 18:28:26'),
(102, 10, 16, 1450, 'Wash Room Accessories ', 1, 1, 'Admin', '2020-09-24', '2020-09-25 07:29:21', '2020-09-26 18:28:26'),
(103, 12, 21, 50, '', 1, 1, 'Admin', '2020-09-24', '2020-09-25 07:42:33', '2020-09-26 18:28:26'),
(104, 4, 22, 270, 'Dinner with Zaheer and Ahmed', 1, 1, 'Admin', '2020-09-24', '2020-09-25 07:44:10', '2020-09-26 18:28:26'),
(105, 4, 12, 40, 'Night Tea', 1, 1, 'Admin', '2020-09-24', '2020-09-25 07:44:34', '2020-09-26 18:28:26'),
(106, 4, 23, 120, '', 1, 1, 'Admin', '2020-09-25', '2020-09-25 07:45:31', '2020-09-26 18:28:26'),
(107, 10, 16, 110, 'Harpic', 1, 1, 'Admin', '2020-09-23', '2020-09-26 18:29:48', '2020-09-30 20:13:01'),
(108, 4, 23, 120, 'Break fast ', 1, 1, 'Admin', '2020-09-26', '2020-09-26 18:30:13', '2020-09-30 20:13:01'),
(109, 4, 12, 30, 'Breakfast Tea', 1, 1, 'Admin', '2020-09-26', '2020-09-26 18:30:26', '2020-09-30 20:12:54'),
(110, 4, 9, 105, 'Tea Pati', 1, 1, 'Admin', '2020-09-26', '2020-09-26 18:30:42', '2020-09-30 20:12:54'),
(111, 4, 13, 70, 'Tea Milk and Biscuits for Client', 1, 1, 'Admin', '2020-09-26', '2020-09-26 18:31:18', '2020-09-30 20:12:54'),
(112, 4, 22, 320, 'Dinner with Zaheer and Ahmed', 1, 1, 'Admin', '2020-09-26', '2020-09-26 18:31:37', '2020-09-30 20:12:54'),
(113, 4, 23, 120, 'Breakfast', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:55:43', '2020-09-30 20:12:54'),
(114, 4, 12, 35, 'Milk for Tea', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:55:55', '2020-09-30 20:12:53'),
(115, 4, 9, 30, 'Surf', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:56:15', '2020-09-30 20:12:53'),
(116, 12, 21, 50, '', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:56:37', '2020-09-30 20:12:53'),
(117, 10, 16, 80, 'Penture', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:56:51', '2020-09-30 20:12:53'),
(118, 4, 22, 400, 'Dinner with Zaheer', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:57:10', '2020-09-30 20:12:53'),
(119, 4, 13, 70, 'Fanta', 1, 1, 'Admin', '2020-09-27', '2020-09-27 17:57:27', '2020-09-30 20:12:43'),
(120, 4, 23, 140, 'Chawal Channe', 1, 1, 'Admin', '2020-09-28', '2020-09-29 16:49:53', '2020-09-30 20:12:43'),
(121, 4, 12, 30, 'Milk for Tea', 1, 1, 'Admin', '2020-09-28', '2020-09-29 16:50:12', '2020-09-30 20:12:43'),
(122, 4, 13, 110, 'Milk and Biscuits for Clients', 1, 1, 'Admin', '2020-09-28', '2020-09-29 16:50:38', '2020-09-30 20:12:43'),
(123, 4, 22, 225, 'Dinner with Zaheer and Ahmed', 1, 1, 'Admin', '2020-09-28', '2020-09-29 16:51:16', '2020-09-30 20:12:43'),
(124, 4, 23, 210, 'Breakfast with Shabeeh and Zaheer', 1, 1, 'Admin', '2020-09-29', '2020-09-29 16:52:01', '2020-09-30 20:12:43'),
(125, 12, 21, 40, '', 1, 1, 'Admin', '2020-09-29', '2020-09-29 16:52:14', '2020-09-30 20:12:42'),
(126, 4, 13, 500, 'Pizza for Team', 1, 1, 'Admin', '2020-09-29', '2020-09-29 16:52:39', '2020-09-30 20:12:42'),
(127, 4, 22, 285, 'Dinner with Zaheer and Ahmed', 1, 1, 'Admin', '2020-09-29', '2020-09-29 16:53:20', '2020-09-30 20:12:42'),
(128, 13, 24, 859, 'Purchase domain serviceshubuk.com (Ahsan)', 1, 1, 'Admin', '2020-10-01', '2020-09-30 20:11:10', '2020-09-30 20:12:42'),
(129, 4, 23, 90, 'Breakfast Andha & Milk', 1, 1, 'Admin', '2020-09-30', '2020-10-01 19:18:06', '2020-10-29 19:45:42'),
(130, 4, 22, 340, 'Shami, Daal, Roti - 340 Bhai Masood ne diye', 1, 1, 'Admin', '2020-09-30', '2020-10-01 19:20:06', '2020-10-29 19:45:42'),
(131, 4, 12, 120, 'Milk for Tea and Biscuit', 1, 1, 'Admin', '2020-09-30', '2020-10-01 19:20:32', '2020-10-29 19:45:42'),
(132, 4, 12, 40, 'Masood Bhai ne diye', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:21:34', '2020-10-29 19:45:42'),
(133, 4, 17, 20, 'Masala - Bhai Masood ne diye', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:21:59', '2020-10-29 19:45:42'),
(134, 4, 23, 100, '4 Andhay and Rotiyen', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:22:26', '2020-10-29 19:45:35'),
(135, 4, 12, 60, 'Tea Milk and Biscuit', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:23:43', '2020-10-29 19:45:35'),
(136, 4, 12, 60, 'Night Tea with Fahad ', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:26:41', '2020-10-29 19:45:35'),
(137, 14, 25, 350, 'z', 1, 1, 'Admin', '2020-10-01', '2020-10-01 19:28:42', '2020-10-29 19:45:35'),
(138, 4, 23, 36, '3 Andhay', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:41:37', '2020-10-29 19:45:35'),
(139, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:42:05', '2020-10-29 19:45:35'),
(140, 4, 23, 50, 'Rotiyen', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:43:00', '2020-10-29 19:45:35'),
(141, 4, 17, 220, 'Gobhi masala', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:44:05', '2020-10-29 19:45:35'),
(142, 4, 9, 100, 'Lal Mirch', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:44:27', '2020-10-29 19:45:35'),
(143, 4, 22, 200, 'Rotiyen, Tea, ', 1, 1, 'Admin', '2020-10-02', '2020-10-02 21:44:59', '2020-10-29 19:45:35'),
(144, 4, 13, 1000, 'Pizza IUB Canteen Project Celebration', 1, 1, 'Admin', '2020-10-04', '2020-10-04 22:25:41', '2020-10-29 19:45:29'),
(145, 10, 16, 100, 'Bike penture', 1, 1, 'Admin', '2020-10-04', '2020-10-04 23:22:13', '2020-10-29 19:45:29'),
(146, 4, 23, 140, 'Breakfast', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:42:51', '2020-10-29 19:45:29'),
(147, 4, 13, 50, 'Banana Bhai Masood ne diye', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:43:30', '2020-10-29 19:45:29'),
(148, 12, 21, 50, 'Bike Petrol', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:43:50', '2020-10-29 19:45:29'),
(149, 4, 22, 80, 'Rotiyen', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:44:18', '2020-10-29 19:45:29'),
(150, 4, 13, 100, 'Coke', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:45:37', '2020-10-29 19:45:29'),
(151, 10, 16, 200, 'Hand Free', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:45:57', '2020-10-29 19:45:29'),
(152, 4, 13, 40, 'Biscuit Bhai masood ne diye', 1, 1, 'Admin', '2020-10-06', '2020-10-05 20:46:55', '2020-10-29 19:45:29'),
(153, 4, 22, 120, 'Rotiyen Daal', 1, 1, 'Admin', '2020-10-04', '2020-10-05 20:47:50', '2020-10-29 19:45:29'),
(154, 4, 13, 200, 'Mubashir Refreshment', 1, 1, 'Admin', '2020-10-04', '2020-10-05 20:48:15', '2020-10-29 19:45:20'),
(155, 4, 23, 130, 'Andhay Rotiyen Milk', 1, 1, 'Admin', '2020-10-04', '2020-10-05 20:49:23', '2020-10-29 19:45:20'),
(156, 4, 13, 180, 'Juice with Zaheer and Asad Riaz', 1, 1, 'Admin', '2020-10-05', '2020-10-05 20:49:52', '2020-10-29 19:45:20'),
(157, 4, 23, 90, 'Rotiyen Dhood', 1, 1, 'Admin', '2020-10-03', '2020-10-05 20:51:30', '2020-10-29 19:45:20'),
(158, 4, 23, 60, 'Rotiyen', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:34:15', '2020-10-29 19:45:20'),
(159, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:34:35', '2020-10-29 19:45:20'),
(160, 4, 22, 280, 'Chicken, Potato, Masala', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:35:23', '2020-10-29 19:45:20'),
(161, 12, 21, 50, 'Bike Petrol', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:35:49', '2020-10-29 19:45:20'),
(162, 3, 6, 500, 'CNG Dalwayi', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:36:07', '2020-10-29 19:45:20'),
(163, 4, 22, 90, 'Rotiyen', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:37:00', '2020-10-29 19:45:20'),
(164, 4, 23, 90, 'Baba Naseer Chawal Channay + Tea', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:44:22', '2020-10-29 19:45:13'),
(165, 4, 23, 50, 'Rotiyen', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:46:05', '2020-10-29 19:45:13'),
(166, 4, 12, 50, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:46:47', '2020-10-29 19:45:13'),
(167, 4, 13, 50, 'Biscuits', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:47:08', '2020-10-29 19:45:13'),
(168, 4, 22, 60, 'Rotiyen', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:47:22', '2020-10-29 19:45:13'),
(169, 4, 9, 30, 'Surf', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:47:53', '2020-10-29 19:45:13'),
(170, 6, 19, 2000, 'Remaining Paid to Jam Izhar', 1, 1, 'Admin', '2020-10-07', '2020-10-07 17:49:26', '2020-10-29 19:45:13'),
(171, 10, 16, 7000, 'Phone Upgradation Charges (Remaining 2000)', 1, 1, 'Admin', '2020-10-06', '2020-10-07 17:50:14', '2020-10-29 19:45:13'),
(172, 4, 23, 90, 'Rotiyen Andhay', 1, 1, 'Admin', '2020-10-08', '2020-10-12 18:44:46', '2020-10-29 19:45:13'),
(173, 4, 12, 50, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-08', '2020-10-12 18:45:09', '2020-10-29 19:45:13'),
(174, 4, 17, 100, 'Aalo + Masala', 1, 1, 'Admin', '2020-10-08', '2020-10-12 18:45:59', '2020-10-29 19:45:06'),
(175, 12, 21, 50, '', 1, 1, 'Admin', '2020-10-08', '2020-10-12 18:46:16', '2020-10-29 19:45:06'),
(176, 4, 23, 75, 'Anday + Roityen + Masala', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:47:41', '2020-10-29 19:45:06'),
(177, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:48:54', '2020-10-29 19:45:06'),
(178, 4, 17, 40, 'Masla', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:49:29', '2020-10-29 19:45:06'),
(179, 12, 21, 50, '', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:53:33', '2020-10-29 19:45:06'),
(180, 10, 16, 600, 'Extensions for Office', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:54:14', '2020-10-29 19:45:06'),
(181, 15, 27, 1000, 'Just for Motivation', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:56:24', '2020-10-29 19:45:06'),
(182, 15, 26, 5000, 'Ahmed First Month Salary', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:56:51', '2020-10-29 19:45:06'),
(183, 4, 22, 50, 'Rotiyen', 1, 1, 'Admin', '2020-10-09', '2020-10-12 18:57:07', '2020-10-29 19:45:06'),
(184, 15, 28, 1000, 'Just for Motivation', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:57:45', '2020-10-29 19:44:59'),
(185, 10, 16, 80, 'Clips', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:58:06', '2020-10-29 19:44:59'),
(186, 4, 22, 70, 'Tea ', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:58:24', '2020-10-29 19:44:59'),
(187, 4, 23, 150, 'Rotiyen & Tea', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:58:49', '2020-10-29 19:44:59'),
(188, 12, 21, 30, '', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:59:05', '2020-10-29 19:44:59'),
(189, 4, 22, 120, '', 1, 1, 'Admin', '2020-10-10', '2020-10-12 18:59:16', '2020-10-29 19:44:59'),
(190, 4, 13, 500, 'Pizza for Team', 1, 1, 'Admin', '2020-10-10', '2020-10-12 19:00:08', '2020-10-29 19:44:59'),
(191, 10, 16, 8800, 'Paint Saman', 1, 1, 'Admin', '2020-10-10', '2020-10-12 19:01:00', '2020-10-29 19:44:59'),
(192, 10, 16, 1100, 'Rangwala Advance + Khana', 1, 1, 'Admin', '2020-10-10', '2020-10-12 19:01:28', '2020-10-29 19:44:59'),
(193, 10, 16, 1100, 'Rangwala + Khana', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:02:51', '2020-10-29 19:44:59'),
(194, 4, 13, 440, 'Zinger + Biscuits', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:03:30', '2020-10-29 19:44:52'),
(195, 12, 21, 50, '', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:03:48', '2020-10-29 19:44:52'),
(196, 4, 9, 140, 'Tooth Paste & Brush', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:04:21', '2020-10-29 19:44:52'),
(197, 4, 23, 160, 'Breakfast & Tea', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:04:44', '2020-10-29 19:44:52'),
(198, 4, 9, 230, 'Cooking Oil', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:05:05', '2020-10-29 19:44:52'),
(199, 4, 22, 120, 'Dinner', 1, 1, 'Admin', '2020-10-11', '2020-10-12 19:05:25', '2020-10-29 19:44:52'),
(200, 10, 16, 2000, 'Paid Remaining for Phone', 1, 1, 'Admin', '2020-10-08', '2020-10-12 19:07:46', '2020-10-29 19:44:52'),
(201, 10, 16, 2000, 'Rangwala ', 1, 1, 'Admin', '2020-10-12', '2020-10-12 19:10:41', '2020-10-29 19:44:52'),
(202, 4, 22, 200, 'Bhai Masood Dinner', 1, 1, 'Admin', '2020-10-12', '2020-10-12 19:25:26', '2020-10-13 17:42:57'),
(204, 11, 30, 9254, '2 Year Hosting Plan for Logixx Grid', 1, 1, 'Admin', '2020-10-12', '2020-10-12 19:59:01', '2020-10-13 17:42:57'),
(205, 5, 18, 130, 'Urigo 40mg 10', 1, 1, 'Admin', '2020-10-11', '2020-10-13 17:31:01', '2020-10-13 17:42:57'),
(206, 4, 23, 140, 'Baba Naseer Channay Chawal', 1, 1, 'Admin', '2020-10-12', '2020-10-13 17:32:59', '2020-10-13 17:42:57'),
(207, 4, 22, 130, 'Dinner', 1, 1, 'Admin', '2020-10-12', '2020-10-13 17:33:35', '2020-10-13 17:42:57'),
(208, 4, 12, 50, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-12', '2020-10-13 17:34:10', '2020-10-13 17:42:57'),
(209, 4, 23, 120, '', 1, 1, 'Admin', '2020-10-13', '2020-10-13 17:34:51', '2020-10-13 17:42:57'),
(210, 4, 12, 70, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-13', '2020-10-13 17:35:14', '2020-10-13 17:42:57'),
(211, 4, 17, 160, 'Aalo matar aur masala', 1, 1, 'Admin', '2020-10-13', '2020-10-13 17:36:12', '2020-10-13 17:42:57'),
(212, 4, 22, 60, 'Rotiyen', 1, 1, 'Admin', '2020-10-13', '2020-10-13 17:36:38', '2020-10-13 17:42:57'),
(213, 4, 23, 60, 'Rotiyen', 1, 1, 'Admin', '2020-10-14', '2020-10-14 20:46:03', '2020-10-29 19:44:52'),
(214, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-14', '2020-10-14 20:46:16', '2020-10-29 19:44:52'),
(215, 4, 22, 80, 'Rotiyen and Milk', 1, 1, 'Admin', '2020-10-14', '2020-10-14 20:46:43', '2020-10-29 19:44:45'),
(216, 4, 22, 130, 'Burger for Bhai Masood', 1, 1, 'Admin', '2020-10-14', '2020-10-14 20:47:01', '2020-10-29 19:44:45'),
(217, 10, 16, 800, 'Mouse and 2 VGA Cables', 1, 1, 'Admin', '2020-10-14', '2020-10-14 20:47:50', '2020-10-29 19:44:45'),
(218, 3, 6, 0, 'n/a', 1, 1, 'Admin', '2020-10-17', '2020-10-17 16:40:23', '2020-10-29 19:44:45'),
(219, 2, 2, 3030, 'For the month of Sept 2020', 1, 1, 'Admin', '2020-10-19', '2020-10-19 20:57:21', '2020-10-29 19:44:45'),
(220, 4, 22, 360, 'Biryani', 1, 1, 'Admin', '2020-10-19', '2020-10-19 20:57:45', '2020-10-29 19:44:45'),
(221, 4, 23, 120, 'Egg + Roti+ Masala + Pati', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:23:49', '2020-10-29 19:44:45'),
(222, 4, 22, 220, 'Bhindi + Masala', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:24:30', '2020-10-29 19:44:45'),
(223, 4, 12, 40, 'Tea', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:24:45', '2020-10-29 19:44:45'),
(224, 12, 21, 120, 'Bike Petrol', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:25:17', '2020-10-29 19:44:45'),
(225, 10, 16, 3000, 'Shoes', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:26:15', '2020-10-29 19:44:37'),
(226, 3, 6, 500, 'Travel to Khanpur', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:26:36', '2020-10-29 19:44:37'),
(227, 5, 18, 1550, 'Medicine for Baba', 1, 1, 'Admin', '2020-10-15', '2020-10-20 19:26:57', '2020-10-29 19:44:37'),
(228, 3, 6, 500, 'Travel to Khanpur', 1, 1, 'Admin', '2020-10-16', '2020-10-20 19:27:33', '2020-10-29 19:44:37'),
(229, 4, 23, 100, 'Breakfast Roti + Milk', 1, 1, 'Admin', '2020-10-16', '2020-10-20 19:27:56', '2020-10-29 19:44:37'),
(230, 10, 16, 200, 'Banana and Dates for Amma Baba', 1, 1, 'Admin', '2020-10-16', '2020-10-20 19:28:48', '2020-10-29 19:44:37'),
(231, 3, 6, 800, 'CNG for Zahir Peer', 1, 1, 'Admin', '2020-10-17', '2020-10-20 19:29:21', '2020-10-29 19:44:37'),
(232, 4, 12, 120, 'Tea', 1, 1, 'Admin', '2020-10-17', '2020-10-20 19:32:09', '2020-10-29 19:44:37'),
(233, 4, 22, 400, 'Burger + Roti', 1, 1, 'Admin', '2020-10-20', '2020-10-20 19:32:56', '2020-10-29 19:44:37'),
(234, 12, 21, 30, 'Petrol', 1, 1, 'Admin', '2020-10-20', '2020-10-20 19:33:14', '2020-10-29 19:44:37'),
(235, 4, 13, 70, 'Coke', 1, 1, 'Admin', '2020-10-20', '2020-10-20 19:33:39', '2020-10-29 19:44:30'),
(236, 10, 16, 20, 'Capstan', 1, 1, 'Admin', '2020-10-20', '2020-10-20 19:34:04', '2020-10-29 19:44:30'),
(237, 3, 8, 150, 'Door handle', 1, 1, 'Admin', '2020-10-17', '2020-10-20 19:35:17', '2020-10-29 19:44:30'),
(238, 10, 16, 1000, 'Bhai Masood for Traveling', 1, 1, 'Admin', '2020-10-20', '2020-10-20 19:35:34', '2020-10-29 19:44:30'),
(239, 3, 6, 845, 'Travel to Bahawalpur', 1, 1, 'Admin', '2020-10-20', '2020-10-20 20:09:15', '2020-10-29 19:44:30'),
(240, 4, 23, 120, '', 1, 1, 'Admin', '2020-10-21', '2020-10-21 20:26:36', '2020-10-29 19:44:30'),
(241, 4, 12, 40, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-21', '2020-10-21 20:26:56', '2020-10-29 19:44:30'),
(242, 4, 17, 260, 'Aalo, Matar, Gajar, Masala', 1, 1, 'Admin', '2020-10-21', '2020-10-21 20:28:02', '2020-10-29 19:44:30'),
(243, 12, 21, 40, '', 1, 1, 'Admin', '2020-10-21', '2020-10-21 20:28:27', '2020-10-29 19:44:30'),
(244, 10, 16, 60, 'Safai wale kapray', 1, 1, 'Admin', '2020-10-21', '2020-10-21 20:28:53', '2020-10-29 19:44:30'),
(245, 4, 22, 50, 'Rotiyen', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:36:31', '2020-10-29 19:44:22'),
(246, 4, 23, 50, 'Rotiyen', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:37:43', '2020-10-29 19:44:22'),
(247, 4, 13, 100, 'Coke', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:37:56', '2020-10-29 19:44:22'),
(248, 4, 9, 90, '20 Kitchup, 70 Tehzaab', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:38:23', '2020-10-29 19:44:22'),
(249, 4, 22, 50, 'Rotitiyen', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:38:58', '2020-10-29 19:44:22'),
(250, 10, 16, 100, 'Brush for Washroom', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:43:17', '2020-10-29 19:44:22'),
(251, 12, 21, 100, 'Petrol', 1, 1, 'Admin', '2020-10-22', '2020-10-23 12:44:05', '2020-10-29 19:44:22'),
(252, 4, 23, 185, 'Roityen, Milk, Ghee 250 gm', 1, 1, 'Admin', '2020-10-23', '2020-10-23 12:45:51', '2020-10-29 19:44:22'),
(253, 4, 17, 240, 'Yogurt, Rice,Chicken', 1, 1, 'Admin', '2020-10-23', '2020-10-23 21:33:15', '2020-10-29 19:44:22'),
(254, 4, 12, 30, 'Tea milk', 1, 1, 'Admin', '2020-10-23', '2020-10-23 21:33:35', '2020-10-29 19:44:22'),
(255, 10, 16, 1290, '3 Mug, 2 Deewar Gheer, Tokri, Dastar Khawn, Air Freshner', 1, 1, 'Admin', '2020-10-23', '2020-10-23 21:34:46', '2020-10-29 19:44:13'),
(256, 4, 23, 40, 'Eggs + Masala', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:16:15', '2020-10-29 19:44:13'),
(257, 4, 12, 70, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:16:39', '2020-10-29 19:44:13'),
(258, 4, 13, 510, 'Sprite, Nimko, Nestle Red Grapes & Lays', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:17:38', '2020-10-29 19:44:13'),
(259, 10, 16, 150, 'Tube light', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:18:05', '2020-10-29 19:44:13'),
(260, 4, 9, 50, 'Tissue', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:18:20', '2020-10-29 19:44:13'),
(261, 4, 22, 3000, 'Dinner with Hammad Bhai', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:18:41', '2020-10-29 19:44:13'),
(262, 4, 9, 130, 'Shoes Renovator ', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:19:08', '2020-10-29 19:44:13'),
(263, 4, 13, 30, 'Mong Phali', 1, 1, 'Admin', '2020-10-23', '2020-10-25 15:20:27', '2020-10-29 19:44:13'),
(264, 14, 32, 400, 'Saddar Pully', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:22:09', '2020-10-29 19:44:13'),
(265, 10, 16, 5000, 'Charpai', 1, 1, 'Admin', '2020-10-24', '2020-10-25 15:33:18', '2020-10-29 19:44:05'),
(266, 4, 9, 230, 'Cocking Oil', 1, 1, 'Admin', '2020-10-25', '2020-10-25 15:33:46', '2020-10-29 19:44:05'),
(267, 4, 23, 105, 'Egg, Rotiyen, Milk etc', 1, 1, 'Admin', '2020-10-25', '2020-10-25 15:36:47', '2020-10-29 19:44:05'),
(268, 4, 22, 330, 'Chicken, Rotiyen, Dahi', 1, 1, 'Admin', '2020-10-25', '2020-10-25 15:38:15', '2020-10-29 19:44:05'),
(269, 12, 21, 50, 'Petrol for My BMW', 1, 1, 'Admin', '2020-10-25', '2020-10-25 15:38:54', '2020-10-29 19:44:05'),
(270, 4, 23, 46, 'Rotiyen', 1, 1, 'Admin', '2020-10-26', '2020-10-27 19:56:14', '2020-10-29 19:44:05'),
(271, 4, 12, 50, 'Tea milk', 1, 1, 'Admin', '2020-10-26', '2020-10-27 19:56:29', '2020-10-29 19:44:05'),
(272, 4, 17, 170, 'Gobhi, Masala, Aalo', 1, 1, 'Admin', '2020-10-26', '2020-10-27 19:57:30', '2020-10-29 19:44:05'),
(273, 4, 22, 70, 'Rotiyen', 1, 1, 'Admin', '2020-10-26', '2020-10-27 19:57:46', '2020-10-29 19:44:05'),
(274, 4, 23, 70, 'Rotiyen', 1, 1, 'Admin', '2020-10-27', '2020-10-27 19:59:00', '2020-10-29 19:44:05'),
(275, 4, 12, 70, 'Milk', 1, 1, 'Admin', '2020-10-27', '2020-10-27 19:59:32', '2020-10-29 19:43:56'),
(276, 4, 9, 150, 'Rice', 1, 1, 'Admin', '2020-10-27', '2020-10-27 20:00:12', '2020-10-29 19:43:56'),
(277, 4, 17, 90, 'Masala, Aalo', 1, 1, 'Admin', '2020-10-27', '2020-10-27 20:00:31', '2020-10-29 19:43:56'),
(278, 4, 9, 120, 'Gandum Pisayi', 1, 1, 'Admin', '2020-10-27', '2020-10-27 20:02:21', '2020-10-29 19:43:56'),
(279, 4, 9, 30, 'Dahi', 1, 1, 'Admin', '2020-10-27', '2020-10-27 20:02:36', '2020-10-29 19:43:56'),
(280, 4, 22, 80, 'Tea with Jahanzaib', 1, 1, 'Admin', '2020-10-27', '2020-10-28 19:32:47', '2020-10-29 19:43:56'),
(281, 4, 17, 480, 'Vegetables ', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:34:18', '2020-10-29 19:43:56'),
(282, 4, 23, 80, 'Eggs', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:34:59', '2020-10-29 19:43:56'),
(284, 12, 21, 100, '', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:35:14', '2020-10-29 19:43:56'),
(285, 4, 12, 70, 'Breakfast Tea', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:35:40', '2020-10-29 19:43:47'),
(286, 4, 22, 480, 'Chicken, Dahe, etc', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:36:45', '2020-10-29 19:43:47'),
(287, 4, 9, 105, 'Ghee', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:37:19', '2020-10-29 19:43:47'),
(288, 4, 12, 40, 'Dinner Tea', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:37:46', '2020-10-29 19:43:47'),
(289, 4, 13, 50, 'Mong Phali', 1, 1, 'Admin', '2020-10-28', '2020-10-28 19:37:59', '2020-10-29 19:43:47'),
(290, 4, 23, 115, 'Breakfast with Tea', 1, 1, 'Admin', '2020-10-29', '2020-10-29 19:38:59', '2020-10-29 19:43:47'),
(291, 4, 17, 510, 'Chicken, Rice, Oil, Yogurt, Zeera', 1, 1, 'Admin', '2020-10-29', '2020-10-29 19:40:03', '2020-10-29 19:43:47'),
(292, 4, 13, 150, 'Biryani for Hassan Farooq', 1, 1, 'Admin', '2020-10-29', '2020-10-29 19:40:25', '2020-10-29 19:43:47'),
(293, 12, 21, 50, '', 1, 1, 'Admin', '2020-10-29', '2020-10-29 19:40:41', '2020-10-29 19:43:47'),
(294, 4, 13, 300, 'PIzza', 1, 1, 'Admin', '2020-10-29', '2020-10-29 19:40:53', '2020-10-29 19:43:47'),
(295, 4, 13, 270, 'Biryani + Coke For Hassan', 0, 1, 'Admin', '2020-10-28', '2020-10-29 19:53:06', NULL),
(296, 2, 2, 3270, 'For the month of Aug', 1, 1, 'Admin', '2020-10-30', '2020-09-21 10:37:25', '2020-09-21 10:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
CREATE TABLE IF NOT EXISTS `incomes` (
  `income_id` int(11) NOT NULL AUTO_INCREMENT,
  `income_head_id` int(11) NOT NULL,
  `income_sub_head_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `narration` text NOT NULL,
  `is_approve` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `income_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`income_id`, `income_head_id`, `income_sub_head_id`, `amount`, `narration`, `is_approve`, `company_id`, `created_by`, `income_date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1000, 'Admission Fee Mazhar Fareed', 0, 1, 'Admin', '2020-09-26', '2020-09-26 20:15:37', NULL),
(2, 1, 2, 1000, 'Admission Fee Syed Hakim Ali Bokhari', 0, 1, 'Admin', '2020-09-30', '2020-09-30 11:22:12', NULL),
(3, 1, 2, 1000, 'Admission Fee Hina Hassan', 0, 1, 'Admin', '2020-09-28', '2020-09-30 11:23:32', NULL),
(4, 4, 3, 5000, 'serviceshubuk.com (Ahsan)', 0, 1, 'Admin', '2020-10-01', '2020-09-30 20:08:56', NULL),
(5, 1, 1, 6000, 'Installment Fee Ahsan Jamal ', 0, 1, 'Admin', '2020-10-01', '2020-10-01 13:52:16', NULL),
(6, 1, 4, 20000, 'Waqas Malik and His Wife Course Fee', 0, 1, 'Admin', '2020-08-07', '2020-10-01 19:34:17', NULL),
(7, 4, 5, 5000, 'Dhillon Foods Website First Payment Received in the form of cheque', 0, 1, 'Admin', '2020-10-06', '2020-10-07 17:52:56', NULL),
(8, 4, 6, 15000, 'Advance for Next Eco Power Application.', 0, 1, 'Admin', '2020-10-06', '2020-10-12 18:29:12', NULL),
(9, 4, 6, 20000, '2nd Payment', 0, 1, 'Admin', '2020-10-12', '2020-10-12 18:38:39', NULL),
(10, 1, 2, 10000, 'Kashif Mehmood 1000 Admission Fee + Tuition Fee', 0, 1, 'Admin', '2020-10-09', '2020-10-12 19:13:36', NULL),
(11, 4, 7, 15000, '2nd Payment ', 0, 1, 'Admin', '2020-10-09', '2020-10-12 19:25:53', NULL),
(13, 1, 2, 1000, 'Muhammad Mubeen Admission Fee', 0, 1, 'Admin', '2020-10-13', '2020-10-13 17:38:51', NULL),
(14, 4, 6, 7000, 'Data Entry Payment', 0, 1, 'Admin', '2020-10-23', '2020-10-23 21:35:24', NULL),
(15, 1, 2, 5000, 'Asad Zia First Installment', 0, 1, 'Admin', '2020-10-27', '2020-10-29 19:32:03', NULL),
(16, 1, 2, 5000, 'Mubeen Ahmed First Installment', 0, 1, 'Admin', '2020-10-27', '2020-10-29 19:32:24', NULL),
(17, 4, 9, 7000, 'First Installment Received - 7000 Remaining', 0, 1, 'Admin', '2020-10-27', '2020-10-29 19:33:44', NULL),
(18, 1, 1, 5000, 'Ameer Humza First Installment', 0, 1, 'Admin', '2020-09-16', '2020-10-29 20:01:25', NULL),
(19, 1, 1, 7000, 'Aali Ishrat First Installment', 0, 1, 'Admin', '2020-09-08', '2020-10-29 20:02:46', NULL),
(21, 1, 2, 1000, 'Admission Fee Mazhar Fareed', 0, 1, 'Admin', '2020-10-30', '2020-09-26 20:15:37', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;