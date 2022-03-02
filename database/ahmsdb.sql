-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 01:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_call`
--

CREATE TABLE `ambulance_call` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `vehicle_model` varchar(20) DEFAULT NULL,
  `driver` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `call_from` varchar(200) NOT NULL,
  `call_to` varchar(200) NOT NULL,
  `charge_category_id` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `standard_charge` int(11) DEFAULT NULL,
  `tax_percentage` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `net_amount` float(10,2) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `token_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `visit_details_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `priority` varchar(100) NOT NULL,
  `specialist` varchar(100) NOT NULL,
  `doctor` int(11) DEFAULT NULL,
  `amount` varchar(200) NOT NULL,
  `message` text DEFAULT NULL,
  `appointment_status` varchar(11) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  `is_opd` varchar(10) NOT NULL,
  `is_ipd` varchar(10) NOT NULL,
  `global_shift_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `is_queue` int(11) DEFAULT NULL,
  `live_consult` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `token_id`, `patient_id`, `case_reference_id`, `visit_details_id`, `date`, `time`, `priority`, `specialist`, `doctor`, `amount`, `message`, `appointment_status`, `source`, `is_opd`, `is_ipd`, `global_shift_id`, `shift_id`, `is_queue`, `live_consult`, `created_at`) VALUES
(66, 1, 4, 72, 72, '2022-02-01 19:54:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:54:55'),
(67, 2, 4, 74, 74, '2022-02-01 19:55:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:55:51'),
(68, 3, 4, 76, 76, '2022-02-01 19:56:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:56:43'),
(69, 4, 1, 78, 78, '2022-02-01 19:57:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:57:19'),
(70, 5, 4, 80, 80, '2022-02-01 19:57:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:57:54'),
(71, 6, 3, 81, 81, '2022-02-01 19:58:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:58:17'),
(72, 7, 2, 82, 82, '2022-02-01 19:58:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 14:58:37'),
(73, 8, 3, 83, 83, '2022-02-01 20:09:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:09:14'),
(74, 9, 1, 85, 85, '2022-02-01 20:15:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:15:10'),
(75, 10, 1, 86, 86, '2022-02-01 20:15:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:15:45'),
(76, 11, 1, 87, 87, '2022-02-01 20:15:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:16:00'),
(77, 12, 4, 88, 88, '2022-02-01 20:16:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:16:24'),
(78, 13, 1, 89, 89, '2022-02-01 20:16:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:17:01'),
(79, 14, 1, 90, 90, '2022-02-01 20:18:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:18:17'),
(80, 15, 1, 91, 91, '2022-02-01 20:18:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:18:38'),
(81, 16, 1, 92, 92, '2022-02-01 20:19:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:19:03'),
(82, 17, 3, 93, 93, '2022-02-01 20:19:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:19:23'),
(83, 18, 1, 94, 94, '2022-02-01 20:19:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:19:57'),
(84, 19, 1, 95, 95, '2022-02-01 20:20:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:20:10'),
(85, 20, 1, 96, 96, '2022-02-01 20:20:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:20:39'),
(86, 21, 1, 98, 98, '2022-02-01 20:34:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:34:12'),
(87, 22, 1, 99, 99, '2022-02-01 20:34:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:34:34'),
(88, 23, 1, 100, 100, '2022-02-01 20:34:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:34:56'),
(89, 24, 1, 101, 101, '2022-02-01 20:35:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-01 15:35:19'),
(90, 25, 4, 102, 102, '2022-02-16 14:20:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', NULL, NULL, 0, 'no', '2022-02-16 09:20:24'),
(91, 26, 1, 103, 103, '2022-02-16 15:06:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', NULL, NULL, 0, 'no', '2022-02-16 10:06:41'),
(92, 27, 4, 104, 104, '2022-02-16 17:49:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 12:49:41'),
(93, 28, 4, 105, 105, '2022-02-16 17:49:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 12:51:33'),
(94, 29, 1, 106, 106, '2022-02-16 17:49:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 12:51:57'),
(95, 30, 4, 107, 107, '2022-02-16 18:07:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:07:44'),
(96, 31, 4, 108, 108, '2022-02-16 18:07:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:08:07'),
(97, 32, 4, 109, 109, '2022-02-16 18:11:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:11:31'),
(98, 33, 4, 111, 111, '2022-02-16 18:12:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:12:26'),
(99, 34, 1, 113, 113, '2022-02-16 18:14:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:14:57'),
(100, 35, 1, 114, 114, '2022-02-16 18:15:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:15:29'),
(101, 36, 3, 115, 115, '2022-02-16 18:15:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 13:15:54'),
(102, 37, 2, 116, 116, '2022-02-16 19:27:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 14:27:48'),
(103, 38, 3, 117, 117, '2022-02-16 19:27:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-16 14:28:06'),
(104, 39, 3, 118, 118, '2022-02-17 15:43:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 10:43:33'),
(105, 40, 2, NULL, NULL, '2022-02-17 15:47:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 10:47:58'),
(106, 0, 7, 119, 119, '2022-02-22 16:10:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 10, 0, 'no', '2022-02-17 11:10:41'),
(107, 0, 9, NULL, NULL, '2022-02-17 16:12:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:12:44'),
(108, 0, 11, NULL, NULL, '2022-02-17 16:24:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:24:17'),
(109, 0, 12, NULL, NULL, '2022-02-17 16:27:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:27:57'),
(110, 1, 13, NULL, NULL, '2022-02-17 16:39:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:39:54'),
(111, 2, 15, NULL, NULL, '2022-02-17 16:51:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:51:19'),
(112, 3, 17, NULL, NULL, '2022-02-17 16:53:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-17 11:53:31'),
(113, 4, 4, NULL, NULL, '2022-02-18 16:22:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-18 11:22:13'),
(114, 5, 18, NULL, NULL, '2022-02-21 12:19:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 07:19:49'),
(115, 6, 19, NULL, NULL, '2022-02-21 12:30:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 07:30:51'),
(116, 7, 18, NULL, NULL, '2022-02-21 17:13:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 12:13:50'),
(117, 8, 18, NULL, NULL, '2022-02-21 17:17:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 12:17:10'),
(118, 9, 18, NULL, NULL, '2022-02-21 17:58:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 12:58:47'),
(119, 10, 18, NULL, NULL, '2022-02-21 19:20:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 14:20:37'),
(120, 11, 18, NULL, NULL, '2022-02-21 19:21:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 14:21:13'),
(121, 12, 18, NULL, NULL, '2022-02-21 19:41:00', NULL, '1', '', 5, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 14:41:55'),
(122, 13, 18, NULL, NULL, '2022-02-21 19:44:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 14:44:22'),
(123, 14, 18, NULL, NULL, '2022-02-21 19:48:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 14:48:47'),
(124, 15, 19, NULL, NULL, '2022-02-22 20:01:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 15:01:58'),
(125, 16, 20, NULL, NULL, '2022-02-22 20:01:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-21 15:05:33'),
(126, 17, 2, NULL, NULL, '2022-02-23 12:07:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 07:07:43'),
(127, 18, 21, NULL, NULL, '2022-02-23 12:07:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 07:09:24'),
(128, 19, 3, NULL, NULL, '2022-02-23 13:14:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 08:14:50'),
(129, 20, 21, NULL, NULL, '2022-02-23 17:41:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 09:42:13'),
(130, 21, 20, NULL, NULL, '2022-02-23 17:41:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 09:43:52'),
(131, 22, 19, NULL, NULL, '2022-02-23 14:44:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 09:44:38'),
(132, 23, 19, NULL, NULL, '2022-02-23 15:22:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 0, 0, 'no', '2022-02-23 10:22:48'),
(133, 24, 19, NULL, NULL, '2022-02-23 15:35:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 0, 0, 'no', '2022-02-23 10:35:43'),
(134, 25, 21, NULL, NULL, '2022-02-23 15:36:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 0, 0, 'no', '2022-02-23 10:36:54'),
(135, 26, 3, NULL, NULL, '2022-02-23 15:38:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 0, 0, 'no', '2022-02-23 10:38:32'),
(136, 0, 21, 120, 120, '2022-02-28 15:39:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 18, 0, 'no', '2022-02-23 10:40:09'),
(137, 1, 21, NULL, NULL, '2022-02-23 15:43:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 10:43:25'),
(138, 2, 4, NULL, NULL, '2022-02-23 16:29:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 5, 0, 0, 'no', '2022-02-23 11:29:02'),
(139, 3, 4, NULL, NULL, '2022-02-23 16:29:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 11:29:25'),
(140, 4, 4, NULL, NULL, '2022-02-28 16:29:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 11:30:58'),
(141, 5, 3, NULL, NULL, '2022-02-23 16:41:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 11:41:38'),
(142, 6, 2, NULL, NULL, '2022-02-23 16:41:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 11:41:55'),
(143, 7, 2, NULL, NULL, '2022-02-23 16:41:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 11:44:13'),
(144, 8, 22, NULL, NULL, '2022-02-24 16:41:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 11:45:54'),
(145, 9, 21, NULL, NULL, '2022-02-23 17:16:00', NULL, '1', '', 10, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 12:17:06'),
(146, 10, 19, NULL, NULL, '2022-02-23 17:27:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 12:27:33'),
(147, 11, 2, NULL, NULL, '2022-02-23 18:04:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 13:04:30'),
(148, 12, 2, NULL, NULL, '2022-02-23 18:18:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-23 13:18:42'),
(149, 13, 2, NULL, NULL, '2022-02-23 18:21:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-24 13:21:02'),
(150, 1, 20, NULL, NULL, '2022-02-23 18:22:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-23 13:22:25'),
(151, 1, 23, NULL, NULL, '2022-02-24 13:36:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-24 08:36:30'),
(152, 2, 21, NULL, NULL, '2022-02-24 13:37:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-24 08:37:29'),
(153, 3, 3, NULL, NULL, '2022-02-24 13:52:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-24 08:52:15'),
(154, 4, 3, NULL, NULL, '2022-02-24 15:44:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-24 10:44:03'),
(155, 5, 4, NULL, NULL, '2022-02-24 17:04:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-24 12:04:32'),
(156, 6, 20, 121, 121, '2022-02-24 17:05:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 0, 0, 0, 'no', '2022-02-24 12:05:58'),
(157, 1, 1, NULL, NULL, '2022-02-25 16:58:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-25 11:58:16'),
(180, 1, 3, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:39:11'),
(181, 1, 18, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:39:24'),
(182, 2, 18, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:39:37'),
(183, 2, 18, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:39:49'),
(184, 1, 19, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:40:01'),
(185, 3, 21, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 3, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:40:16'),
(186, 3, 22, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:58:41'),
(187, 2, 22, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:59:14'),
(188, 1, 2, NULL, NULL, '2022-02-26 16:39:00', NULL, '1', '', 10, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 11:59:47'),
(189, 2, 24, NULL, NULL, '2022-02-26 17:05:00', NULL, '1', '', 10, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 12:05:58'),
(190, 3, 25, NULL, NULL, '2022-02-26 17:05:00', NULL, '1', '', 7, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-26 12:06:54'),
(191, 3, 24, NULL, NULL, '2022-02-26 17:05:00', NULL, '1', '', 10, '', '', 'approved', 'Offline', '', '', 1, 0, 0, 'no', '2022-02-26 12:07:25'),
(192, 4, 19, NULL, NULL, '2022-02-26 17:12:00', NULL, '1', '', 9, '', '', 'approved', 'Offline', '', '', 2, 0, 0, 'no', '2022-02-26 12:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_payment`
--

CREATE TABLE `appointment_payment` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment_payment`
--

INSERT INTO `appointment_payment` (`id`, `appointment_id`, `charge_id`, `paid_amount`, `payment_mode`, `payment_type`, `transaction_id`, `note`, `date`) VALUES
(143, 116, 50, 1200.00, NULL, 'Offline', NULL, NULL, '2022-02-21 17:13:50'),
(145, 118, 50, 1200.00, NULL, 'Offline', NULL, NULL, '2022-02-21 17:58:47'),
(146, 119, 50, 1920.00, NULL, 'Offline', NULL, NULL, '2022-02-21 19:20:37'),
(147, 120, 52, 1600.00, NULL, 'Offline', NULL, NULL, '2022-02-21 19:21:13'),
(149, 121, 52, 1000.00, NULL, 'Offline', NULL, NULL, '2022-02-21 19:41:55'),
(151, 122, 50, 1200.00, NULL, 'Offline', NULL, NULL, '2022-02-21 19:44:22'),
(152, 123, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-21 19:48:47'),
(153, 124, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-21 20:01:58'),
(154, 125, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-21 20:05:33'),
(155, 126, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 12:07:43'),
(156, 127, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 12:09:24'),
(157, 128, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 13:14:50'),
(158, 129, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 14:42:13'),
(159, 130, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 14:43:52'),
(160, 131, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 14:44:38'),
(161, 132, 102, 2050.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:22:48'),
(162, 133, 102, 2000.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:35:43'),
(163, 134, 102, 2050.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:36:54'),
(164, 135, 102, 2000.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:38:32'),
(165, 136, 102, 2000.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:40:09'),
(166, 137, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 15:43:25'),
(168, 138, 102, 2050.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:29:02'),
(169, 139, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:29:25'),
(170, 140, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:30:58'),
(171, 141, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:41:38'),
(172, 142, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:41:55'),
(173, 143, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:44:13'),
(174, 144, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 16:45:54'),
(175, 145, 103, 550.00, NULL, 'Offline', NULL, NULL, '2022-02-23 17:17:06'),
(176, 146, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-23 17:27:33'),
(177, 147, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 18:04:30'),
(178, 148, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 18:18:42'),
(179, 149, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 18:21:02'),
(180, 150, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-23 18:22:25'),
(181, 151, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-24 13:36:30'),
(182, 152, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-24 13:37:29'),
(183, 153, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-24 13:52:15'),
(184, 154, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-24 15:44:03'),
(185, 155, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-24 17:04:32'),
(186, 156, 50, 1200.00, NULL, 'Offline', NULL, NULL, '2022-02-24 17:05:58'),
(187, 157, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-25 16:58:16'),
(210, 180, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:39:11'),
(211, 181, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:39:24'),
(212, 182, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:39:37'),
(213, 183, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:39:49'),
(214, 184, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:40:01'),
(215, 185, 50, 1250.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:40:16'),
(216, 186, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:58:41'),
(217, 187, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:59:14'),
(218, 188, 103, 550.00, NULL, 'Offline', NULL, NULL, '2022-02-26 16:59:47'),
(219, 189, 103, 550.00, NULL, 'Offline', NULL, NULL, '2022-02-26 17:05:58'),
(220, 190, 72, 1150.00, NULL, 'Offline', NULL, NULL, '2022-02-26 17:06:54'),
(221, 191, 103, 550.00, NULL, 'Offline', NULL, NULL, '2022-02-26 17:07:25'),
(222, 192, 102, 1050.00, NULL, 'Offline', NULL, NULL, '2022-02-26 17:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_queue`
--

CREATE TABLE `appointment_queue` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '2021-01-11',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appoint_priority`
--

CREATE TABLE `appoint_priority` (
  `id` int(11) NOT NULL,
  `appoint_priority` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appoint_priority`
--

INSERT INTO `appoint_priority` (`id`, `appoint_priority`, `created_at`) VALUES
(1, 'Normal', '0000-00-00 00:00:00'),
(2, 'Urgent', '0000-00-00 00:00:00'),
(3, 'Very Urgent', '0000-00-00 00:00:00'),
(5, 'Low', '2021-09-24 13:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bed_type_id` int(11) DEFAULT NULL,
  `bed_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `name`, `bed_type_id`, `bed_group_id`, `is_active`, `created_at`) VALUES
(1, 'bed 1', 1, 1, '1', '2022-01-27 10:25:09'),
(2, 'B1', 1, 2, 'unused', '2022-01-29 11:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `bed_group`
--

CREATE TABLE `bed_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `color` varchar(50) NOT NULL DEFAULT '#f4f4f4',
  `description` varchar(200) NOT NULL,
  `floor` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_group`
--

INSERT INTO `bed_group` (`id`, `name`, `color`, `description`, `floor`, `is_active`, `created_at`) VALUES
(1, 'bed z1s', '#f4f4f4', '', 102, 1, '2022-01-27 10:24:12'),
(2, 'ICU', '#c30404', '', 1, 0, '2022-01-29 11:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`, `created_at`) VALUES
(1, 'Normal', '2022-01-27 10:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `birth_report`
--

CREATE TABLE `birth_report` (
  `id` int(11) NOT NULL,
  `child_name` varchar(200) NOT NULL,
  `child_pic` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `weight` varchar(200) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `contact` varchar(20) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `birth_report` mediumtext DEFAULT NULL,
  `document` varchar(200) NOT NULL,
  `address` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `birth_report`
--

INSERT INTO `birth_report` (`id`, `child_name`, `child_pic`, `gender`, `birth_date`, `weight`, `patient_id`, `case_reference_id`, `contact`, `mother_pic`, `father_name`, `father_pic`, `birth_report`, `document`, `address`, `is_active`, `created_at`) VALUES
(1, 'Rehman', 'uploads/patient_images/no_image.png', 'Male', '2022-01-17 16:40:00', '4', 1, 1, '', 'uploads/patient_images/no_image.png', 'Khuda Bux', 'uploads/patient_images/no_image.png', '', '', '', 'yes', '2022-01-17 11:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_products`
--

CREATE TABLE `blood_bank_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_blood_group` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(11) NOT NULL,
  `donor_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_bank_product_id` int(11) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_cycle`
--

CREATE TABLE `blood_donor_cycle` (
  `id` int(11) NOT NULL,
  `blood_donor_cycle_id` int(11) NOT NULL,
  `blood_bank_product_id` int(11) DEFAULT NULL,
  `blood_donor_id` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `donate_date` date DEFAULT NULL,
  `bag_no` varchar(11) DEFAULT NULL,
  `lot` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `standard_charge` float(10,2) DEFAULT NULL,
  `apply_charge` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `discount_percentage` float(10,2) DEFAULT 0.00,
  `tax_percentage` float(10,2) DEFAULT 0.00,
  `volume` varchar(100) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_issue`
--

CREATE TABLE `blood_issue` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `blood_donor_cycle_id` int(11) DEFAULT NULL,
  `date_of_issue` datetime DEFAULT NULL,
  `hospital_doctor` int(11) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `standard_charge` int(11) NOT NULL,
  `tax_percentage` float(10,2) NOT NULL,
  `discount_percentage` float(10,2) DEFAULT 0.00,
  `amount` float(10,2) DEFAULT NULL,
  `net_amount` float(10,2) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `technician` varchar(50) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'userlogin', 0, '2021-10-22 05:21:32'),
(2, 'login', 0, '2021-10-22 05:21:38'),
(3, 'appointment', 0, '2021-10-22 05:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `case_references`
--

CREATE TABLE `case_references` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `case_references`
--

INSERT INTO `case_references` (`id`, `created_at`) VALUES
(1, '2022-01-15 09:43:36'),
(2, '2022-01-18 11:05:40'),
(3, '2022-01-20 12:27:27'),
(4, '2022-01-20 12:36:14'),
(5, '2022-01-26 13:09:58'),
(6, '2022-01-26 13:11:13'),
(7, '2022-01-26 13:22:59'),
(8, '2022-01-26 13:29:16'),
(9, '2022-01-26 13:32:44'),
(10, '2022-01-26 13:45:28'),
(11, '2022-01-27 10:20:53'),
(12, '2022-01-27 10:26:05'),
(13, '2022-01-27 11:04:44'),
(14, '2022-01-27 14:11:35'),
(15, '2022-01-29 11:58:49'),
(16, '2022-01-29 12:02:02'),
(17, '2022-01-29 12:17:30'),
(18, '2022-01-31 10:18:20'),
(19, '2022-01-31 10:18:39'),
(20, '2022-01-31 10:21:51'),
(21, '2022-01-31 10:22:32'),
(22, '2022-01-31 11:19:31'),
(23, '2022-01-31 11:20:32'),
(24, '2022-01-31 11:21:14'),
(25, '2022-01-31 11:56:37'),
(26, '2022-01-31 11:57:58'),
(27, '2022-01-31 11:58:45'),
(28, '2022-01-31 12:36:05'),
(29, '2022-01-31 12:37:42'),
(30, '2022-01-31 12:38:36'),
(31, '2022-01-31 12:44:56'),
(32, '2022-01-31 12:48:24'),
(33, '2022-01-31 12:51:18'),
(34, '2022-01-31 12:51:54'),
(35, '2022-01-31 12:59:10'),
(36, '2022-01-31 12:59:40'),
(37, '2022-01-31 13:13:54'),
(38, '2022-01-31 13:28:50'),
(39, '2022-01-31 13:47:07'),
(40, '2022-01-31 13:47:38'),
(41, '2022-01-31 13:48:04'),
(42, '2022-01-31 13:49:02'),
(43, '2022-01-31 14:01:35'),
(44, '2022-01-31 14:11:16'),
(45, '2022-01-31 14:15:00'),
(46, '2022-01-31 14:15:24'),
(47, '2022-01-31 14:22:49'),
(48, '2022-01-31 14:28:50'),
(49, '2022-01-31 14:29:50'),
(50, '2022-01-31 14:32:58'),
(51, '2022-01-31 14:33:44'),
(52, '2022-01-31 14:35:06'),
(53, '2022-01-31 14:36:29'),
(54, '2022-01-31 14:36:54'),
(55, '2022-01-31 14:39:39'),
(56, '2022-01-31 14:40:21'),
(57, '2022-01-31 14:43:23'),
(58, '2022-01-31 14:47:25'),
(59, '2022-01-31 14:50:24'),
(60, '2022-01-31 14:51:43'),
(61, '2022-01-31 14:52:41'),
(62, '2022-01-31 14:53:20'),
(63, '2022-01-31 14:53:51'),
(64, '2022-01-31 14:54:15'),
(65, '2022-01-31 14:55:16'),
(66, '2022-01-31 14:55:35'),
(67, '2022-02-01 14:49:55'),
(68, '2022-02-01 14:52:36'),
(69, '2022-02-01 14:52:57'),
(70, '2022-02-01 14:54:05'),
(71, '2022-02-01 14:54:25'),
(72, '2022-02-01 14:54:55'),
(73, '2022-02-01 14:55:06'),
(74, '2022-02-01 14:55:51'),
(75, '2022-02-01 14:56:30'),
(76, '2022-02-01 14:56:43'),
(77, '2022-02-01 14:57:07'),
(78, '2022-02-01 14:57:19'),
(79, '2022-02-01 14:57:41'),
(80, '2022-02-01 14:57:54'),
(81, '2022-02-01 14:58:17'),
(82, '2022-02-01 14:58:37'),
(83, '2022-02-01 15:09:14'),
(84, '2022-02-01 15:09:31'),
(85, '2022-02-01 15:15:10'),
(86, '2022-02-01 15:15:45'),
(87, '2022-02-01 15:16:00'),
(88, '2022-02-01 15:16:24'),
(89, '2022-02-01 15:17:01'),
(90, '2022-02-01 15:18:17'),
(91, '2022-02-01 15:18:38'),
(92, '2022-02-01 15:19:03'),
(93, '2022-02-01 15:19:23'),
(94, '2022-02-01 15:19:57'),
(95, '2022-02-01 15:20:10'),
(96, '2022-02-01 15:20:39'),
(97, '2022-02-01 15:33:58'),
(98, '2022-02-01 15:34:12'),
(99, '2022-02-01 15:34:34'),
(100, '2022-02-01 15:34:56'),
(101, '2022-02-01 15:35:19'),
(102, '2022-02-16 09:20:33'),
(103, '2022-02-16 10:07:05'),
(104, '2022-02-16 12:49:41'),
(105, '2022-02-16 12:51:33'),
(106, '2022-02-16 12:51:57'),
(107, '2022-02-16 13:07:44'),
(108, '2022-02-16 13:08:07'),
(109, '2022-02-16 13:11:31'),
(110, '2022-02-16 13:11:58'),
(111, '2022-02-16 13:12:26'),
(112, '2022-02-16 13:12:48'),
(113, '2022-02-16 13:14:57'),
(114, '2022-02-16 13:15:29'),
(115, '2022-02-16 13:15:54'),
(116, '2022-02-16 14:27:48'),
(117, '2022-02-16 14:28:06'),
(118, '2022-02-17 10:43:33'),
(119, '2022-02-17 11:10:41'),
(120, '2022-02-23 10:40:09'),
(121, '2022-02-25 11:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text DEFAULT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = patients',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_patient_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_patient_image`, `enable_image_height`, `updated_at`, `created_at`) VALUES
(12, 'Sample Patient File Cover', '<table class=\"table table-bordered\" width=\"100%\">\r\n <tr>\r\n  <td width=\"50%\">Patient Name  </td>\r\n  <td width=\"50%\">[name] ([patient_id]) </td>\r\n </tr>\r\n <tr>\r\n  <td>Date of birth</td>\r\n  <td valign=\"top\">[dob]</td>\r\n </tr>\r\n <tr>\r\n  <td>Age</td>\r\n  <td valign=\"top\">[age]</td>\r\n </tr>\r\n <tr>\r\n  <td>Gender</td>\r\n  <td valign=\"top\">[gender]</td>\r\n </tr>\r\n \r\n <tr>\r\n  <td>Phone</td>\r\n  <td valign=\"top\">[phone]</td>\r\n </tr>\r\n <tr>\r\n  <td>Guardian Name</td>\r\n  <td valign=\"top\">[guardian_name]</td>\r\n </tr>\r\n <tr>\r\n  <td>Address</td>\r\n  <td valign=\"top\">[address]</td>\r\n </tr>\r\n <tr>\r\n  <td>Email</td>\r\n  <td valign=\"top\">[email]</td>\r\n </tr>\r\n <tr>\r\n  <td>OPD/IPD NO</td>\r\n  <td valign=\"top\">[opd_ipd_no]</td>\r\n </tr>\r\n  <tr>\r\n  <td>OPD Checkup Id</td>\r\n  <td valign=\"top\">[opd_checkup_id]</td>\r\n </tr>\r\n <tr>\r\n  <td>Consultant Doctor</td>\r\n  <td valign=\"top\">[consultant_doctor]</td>\r\n </tr>\r\n</table>', '<h2>Patient Detail</h2>', '', '', '', '', '', 'certificate.jpg', 2, 1, 140, 300, 700, 600, 1, 200, NULL, '2021-10-28 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `charge_category_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `charge_unit_id` int(10) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `standard_charge` float(10,2) DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `charge_category_id`, `tax_category_id`, `charge_unit_id`, `name`, `standard_charge`, `date`, `description`, `status`, `created_at`) VALUES
(2, 2, 1, 2, 'CT Scan Brain Contrast', 4500.00, NULL, '', '', '2022-01-19 11:20:27'),
(3, 2, 1, 2, 'CT Scan Brain Plain Normal', 3000.00, NULL, '', '', '2022-01-20 06:37:24'),
(4, 2, 1, 2, 'CT PNG Axial Coronal', 7000.00, NULL, '', '', '2022-01-20 06:39:37'),
(5, 2, 1, 2, 'CT PNG Axial Coronal Contrast', 8500.00, NULL, '', '', '2022-01-20 06:41:16'),
(6, 2, 1, 2, 'HRCT Chest Contrast', 8500.00, NULL, '', '', '2022-01-20 07:29:28'),
(7, 2, 1, 2, 'CT Scan Abdomen', 8000.00, NULL, '', '', '2022-01-20 09:14:50'),
(8, 2, 1, 2, 'CT Scan Abdomen Contrast', 9500.00, NULL, '', '', '2022-01-20 09:54:13'),
(9, 2, 1, 2, 'CT Scan Pelvis', 7000.00, NULL, '', '', '2022-01-20 09:57:21'),
(10, 2, 1, 2, 'CT Scan Pelvis Contrast', 8500.00, NULL, '', '', '2022-01-20 10:02:13'),
(11, 2, 1, 2, 'CT Scan Neck', 8000.00, NULL, '', '', '2022-01-20 10:19:10'),
(12, 2, 1, 2, 'CT Scan Neck Contrast', 9500.00, NULL, '', '', '2022-01-20 10:42:12'),
(14, 2, 1, 2, 'KUB Contrast', 7500.00, NULL, '', '', '2022-01-20 10:45:21'),
(15, 2, 1, 2, 'CT Orbit', 7000.00, NULL, '', '', '2022-01-20 10:46:12'),
(16, 2, 1, 2, 'CT Orbit Contrast', 8500.00, NULL, '', '', '2022-01-20 10:47:12'),
(17, 3, 1, 3, 'Chest Pav', 600.00, NULL, '', '', '2022-01-21 09:41:00'),
(19, 3, 1, 4, 'T/F AP Lat', 1000.00, NULL, '', '', '2022-01-22 08:54:10'),
(20, 3, 1, 3, 'Knee Joint AP Lat', 800.00, NULL, '', '', '2022-01-22 08:55:23'),
(21, 3, 1, 3, 'Hand AP Lat', 800.00, NULL, '', '', '2022-01-22 08:56:58'),
(22, 3, 1, 3, 'Elbow AP Lat', 800.00, NULL, '', '', '2022-01-22 08:57:48'),
(24, 3, 1, 3, 'Both Hip AP ', 600.00, NULL, '', '', '2022-01-22 08:59:44'),
(25, 3, 1, 3, 'Shoulder AP', 600.00, NULL, '', '', '2022-01-22 09:00:33'),
(27, 3, 1, 4, 'Shoulder AP Lat', 1000.00, NULL, '', '', '2022-01-22 09:02:27'),
(28, 3, 1, 3, 'RT Hip AP ', 600.00, NULL, '', '', '2022-01-22 09:03:33'),
(29, 3, 1, 3, 'Chest Lap', 600.00, NULL, '', '', '2022-01-22 09:04:15'),
(30, 3, 1, 3, 'Nosal Bone Both Lap', 800.00, NULL, '', '', '2022-01-22 09:05:08'),
(31, 3, 1, 3, 'Ankle AP Lat', 800.00, NULL, '', '', '2022-01-22 09:05:59'),
(32, 3, 1, 3, 'Foot AP Lat', 800.00, NULL, '', '', '2022-01-22 09:06:41'),
(33, 3, 1, 3, 'Left Hip AP', 600.00, NULL, '', '', '2022-01-22 09:07:20'),
(34, 3, 1, 4, 'L/S Spine AP Lat', 1000.00, NULL, '', '', '2022-01-22 09:08:33'),
(35, 3, 1, 3, 'Heel Xsal Lat', 800.00, NULL, '', '', '2022-01-22 09:09:46'),
(36, 3, 1, 4, 'Throsic Spine AP Lat', 1000.00, NULL, '', '', '2022-01-22 09:14:38'),
(38, 3, 1, 4, 'Femer AP Lat', 1000.00, NULL, '', '', '2022-01-22 09:17:35'),
(39, 3, 1, 4, 'Abdomen ERECT/Supine', 1000.00, NULL, '', '', '2022-01-22 09:24:01'),
(40, 3, 1, 4, 'Abdomen ERECT', 800.00, NULL, '', '', '2022-01-22 09:24:58'),
(41, 3, 1, 3, 'Finger AP Lat', 800.00, NULL, '', '', '2022-01-22 09:26:01'),
(42, 3, 1, 3, 'PNS', 600.00, NULL, '', '', '2022-01-22 09:26:35'),
(43, 3, 1, 3, 'Mendibule Lat', 600.00, NULL, '', '', '2022-01-22 09:27:26'),
(44, 3, 1, 3, 'Mendibulie AP', 600.00, NULL, '', '', '2022-01-22 09:28:04'),
(46, 3, 1, 4, 'KUB', 800.00, NULL, '', '', '2022-01-22 09:29:36'),
(50, 8, 1, 1, 'Dr. Nighat', 1200.00, NULL, '', '1', '2022-02-21 11:41:06'),
(52, 8, 1, 1, 'Dr. ZK', 1000.00, NULL, '', '', '2022-02-21 13:40:33'),
(54, 3, 1, 3, 'chest lat', 600.00, NULL, '', '', '2022-02-21 14:20:31'),
(55, 3, 1, 3, 'nasal bone both lat', 800.00, NULL, '', '', '2022-02-21 14:22:18'),
(56, 3, 1, 3, 'cerosene spine AP Lat', 1000.00, NULL, '', '', '2022-02-23 06:27:23'),
(57, 3, 1, 3, 'mendibule ap', 600.00, NULL, '', '', '2022-02-23 06:42:31'),
(58, 3, 1, 3, 'both knee ap', 600.00, NULL, '', '', '2022-02-23 06:45:36'),
(59, 3, 1, 3, 'ivu child', 1800.00, NULL, '', '', '2022-02-23 06:47:32'),
(60, 3, 1, 3, 'ivu adult', 2400.00, NULL, '', '', '2022-02-23 06:55:14'),
(61, 3, 1, 3, 'cervical spine lat', 600.00, NULL, '', '', '2022-02-23 07:01:43'),
(62, 3, 1, 3, 'mostiet lat', 600.00, NULL, '', '', '2022-02-23 07:03:38'),
(63, 3, 1, 3, 'orbit ap', 600.00, NULL, '', '', '2022-02-23 07:05:00'),
(64, 3, 1, 3, 'thumb ap lat', 800.00, NULL, '', '', '2022-02-23 07:06:22'),
(65, 3, 1, 3, 'thumb lat', 600.00, NULL, '', '', '2022-02-23 07:07:13'),
(66, 3, 1, 4, 'dorsal spine ap lat', 1000.00, NULL, '', '', '2022-02-23 07:08:37'),
(67, 3, 1, 4, 'dorsal spine lat', 800.00, NULL, '', '', '2022-02-23 07:09:29'),
(68, 3, 1, 3, 'clavical ap', 600.00, NULL, '', '', '2022-02-23 07:10:58'),
(69, 3, 1, 4, 'abdomen sup', 800.00, NULL, '', '', '2022-02-23 07:12:17'),
(70, 3, 1, 4, 'secrun ap lat', 1000.00, NULL, '', '', '2022-02-23 07:13:45'),
(71, 3, 1, 3, 'stumb ap lat', 800.00, NULL, '', '', '2022-02-23 07:14:49'),
(72, 8, 2, 1, 'Prof: Riaz Hussain Shah', 1100.00, NULL, '', '', '2022-02-23 07:36:46'),
(73, 3, 1, 3, 'stumb lat', 600.00, NULL, '', '', '2022-02-23 08:11:49'),
(74, 3, 1, 3, 'skull lat', 600.00, NULL, '', '', '2022-02-23 08:12:36'),
(75, 3, 1, 3, 'skull ap lat', 1000.00, NULL, '', '', '2022-02-23 08:13:27'),
(76, 3, 1, 3, 't/f ap lat +chest', 1400.00, NULL, '', '', '2022-02-23 08:15:15'),
(77, 3, 1, 3, 'femur ap ', 600.00, NULL, '', '', '2022-02-23 08:16:00'),
(78, 3, 1, 3, 'femur lat', 600.00, NULL, '', '', '2022-02-23 08:17:07'),
(80, 9, 1, 3, 'abdomen +kub', 1000.00, NULL, '', '', '2022-02-23 08:52:04'),
(81, 9, 1, 3, 'pelvis', 800.00, NULL, '', '', '2022-02-23 08:52:57'),
(82, 9, 1, 3, 'abdomen + pelvis', 1000.00, NULL, '', '', '2022-02-23 08:56:23'),
(83, 9, 1, 3, 'upper abdomen', 800.00, NULL, '', '', '2022-02-23 08:57:28'),
(84, 9, 1, 3, 'lower  abdomen', 800.00, NULL, '', '', '2022-02-23 08:59:04'),
(85, 9, 1, 3, 'hepatobilery', 800.00, NULL, '', '', '2022-02-23 09:02:50'),
(86, 9, 1, 3, 'fwb', 800.00, NULL, '', '', '2022-02-23 09:03:46'),
(87, 9, 1, 3, 'testies', 800.00, NULL, '', '', '2022-02-23 09:07:18'),
(88, 9, 1, 3, 'thyroid', 800.00, NULL, '', '', '2022-02-23 09:08:29'),
(89, 9, 1, 3, 'neck color doppler', 1000.00, NULL, '', '', '2022-02-23 09:13:51'),
(90, 9, 1, 3, 'prostate', 800.00, NULL, '', '', '2022-02-23 09:15:15'),
(91, 9, 1, 3, 'parohid glacds', 800.00, NULL, '', '', '2022-02-23 09:16:40'),
(92, 9, 1, 3, 'small parts', 800.00, NULL, '', '', '2022-02-23 09:17:38'),
(93, 9, 1, 3, 'breast', 800.00, NULL, '', '', '2022-02-23 09:18:31'),
(94, 9, 1, 3, 'axilla', 800.00, NULL, '', '', '2022-02-23 09:19:52'),
(95, 9, 1, 3, 'chest', 800.00, NULL, '', '', '2022-02-23 09:20:41'),
(96, 9, 1, 3, 'doppler ll', 2000.00, NULL, '', '', '2022-02-23 09:21:51'),
(97, 9, 1, 3, 'doppler ul', 2000.00, NULL, '', '', '2022-02-23 09:22:49'),
(98, 2, 1, 3, 'ct pns axial coronal', 7000.00, NULL, '', '', '2022-02-23 09:25:42'),
(101, 3, 1, 3, 'humer ap lat', 800.00, NULL, '', '', '2022-02-23 09:53:36'),
(102, 8, 1, 1, 'Dr Sikandar Ali Shaikh', 1000.00, NULL, '', '', '2022-02-23 10:21:16'),
(103, 8, 1, 1, 'Prof: Jagdesh Kumar', 500.00, NULL, '', '', '2022-02-23 11:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `charge_categories`
--

CREATE TABLE `charge_categories` (
  `id` int(11) NOT NULL,
  `charge_type_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `short_code` varchar(30) DEFAULT NULL,
  `is_default` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charge_categories`
--

INSERT INTO `charge_categories` (`id`, `charge_type_id`, `name`, `description`, `short_code`, `is_default`, `created_at`) VALUES
(1, 2, 'OPD Service', 'It is known as outpatient department in which we provide the facility of diagnosis.', NULL, '', NULL),
(2, 5, 'CT Scan', 'CT Scan charges', NULL, '', '2022-01-21 09:36:54'),
(3, 5, 'X-RAY', 'X-RAY Charges', NULL, '', NULL),
(8, 1, 'Doctor', 'For Appointments\r\n', NULL, '', NULL),
(9, 5, 'ultrasound', 'huxaifa', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charge_type_master`
--

CREATE TABLE `charge_type_master` (
  `id` int(11) NOT NULL,
  `charge_type` varchar(200) NOT NULL,
  `is_default` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charge_type_master`
--

INSERT INTO `charge_type_master` (`id`, `charge_type`, `is_default`, `is_active`, `created_at`) VALUES
(1, 'Appointment', 'yes', 'yes', '2021-09-24 14:10:32'),
(2, 'OPD', 'yes', 'yes', '2021-09-24 14:10:02'),
(3, 'IPD', 'yes', 'yes', '2021-09-24 14:10:47'),
(4, 'Pathology', 'yes', 'yes', '2021-10-22 21:40:03'),
(5, 'Radiology', 'yes', 'yes', '2021-10-22 22:10:21'),
(6, 'Blood Bank', 'yes', 'yes', '2021-10-22 22:10:33'),
(7, 'Ambulance', 'yes', 'yes', '2021-10-22 22:10:44'),
(8, 'Procedures', 'yes', 'yes', '2018-08-17 13:40:07'),
(9, 'Investigations', 'yes', 'yes', '2018-08-17 13:40:07'),
(10, 'Supplier', 'yes', 'yes', '2018-08-17 13:40:07'),
(11, 'Operations', 'yes', 'yes', '2018-08-17 13:40:07'),
(12, 'Others', 'yes', 'yes', '2018-08-17 13:40:07'),
(13, 'CT Scan', 'no', 'yes', '2022-01-19 11:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `charge_type_module`
--

CREATE TABLE `charge_type_module` (
  `id` int(11) NOT NULL,
  `charge_type_master_id` int(11) DEFAULT NULL,
  `module_shortcode` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charge_type_module`
--

INSERT INTO `charge_type_module` (`id`, `charge_type_master_id`, `module_shortcode`, `created_at`) VALUES
(4, 2, 'opd', '2021-10-23 03:52:45'),
(5, 3, 'ipd', '2021-10-23 03:52:49'),
(6, 4, 'pathology', '2021-10-23 03:52:52'),
(7, 5, 'radiology', '2021-10-23 03:52:54'),
(8, 6, 'blood_bank', '2021-10-23 03:52:56'),
(9, 7, 'ambulance', '2021-10-23 03:52:59'),
(10, 8, 'opd', '2021-10-23 03:53:03'),
(11, 8, 'ipd', '2021-10-23 03:53:04'),
(13, 9, 'pathology', '2021-10-23 03:53:09'),
(14, 9, 'radiology', '2021-10-23 03:53:11'),
(15, 10, 'opd', '2021-10-23 03:53:14'),
(16, 10, 'ipd', '2021-10-23 03:53:16'),
(17, 11, 'opd', '2021-10-23 03:53:18'),
(18, 11, 'ipd', '2021-10-23 03:53:18'),
(19, 12, 'appointment', '2021-10-23 03:53:20'),
(20, 12, 'opd', '2021-10-23 03:53:21'),
(21, 12, 'ipd', '2021-10-23 03:53:21'),
(24, 12, 'pathology', '2021-10-23 03:53:25'),
(25, 12, 'radiology', '2021-10-23 03:53:27'),
(26, 12, 'blood_bank', '2021-10-23 03:53:30'),
(27, 12, 'ambulance', '2021-10-23 03:53:31'),
(28, 13, 'radiology', '2022-01-19 11:19:03'),
(32, 1, 'appointment', '2022-02-21 11:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `charge_units`
--

CREATE TABLE `charge_units` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charge_units`
--

INSERT INTO `charge_units` (`id`, `unit`, `is_active`, `created_at`) VALUES
(1, 'Check up', 0, '2022-01-17 12:24:19'),
(2, 'Scan', 0, '2022-01-19 13:45:24'),
(3, '8x10', 0, '2022-01-21 09:39:52'),
(4, '10x14', 0, '2022-01-21 09:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_connections`
--

INSERT INTO `chat_connections` (`id`, `chat_user_one`, `chat_user_two`, `ip`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, '2022-01-27 11:13:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `message`, `chat_user_id`, `ip`, `time`, `is_first`, `is_read`, `chat_connection_id`, `created_at`) VALUES
(1, 'you are now connected on chat', 2, '', 0, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_patient_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_users`
--

INSERT INTO `chat_users` (`id`, `user_type`, `staff_id`, `patient_id`, `create_staff_id`, `create_patient_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'staff', 1, NULL, NULL, NULL, 0, '2022-01-27 11:13:30', NULL),
(2, 'staff', 2, NULL, 1, NULL, 0, '2022-01-27 11:13:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type_id` int(11) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `id` int(11) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `visit_details_id` int(11) DEFAULT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `host_video` int(11) NOT NULL,
  `client_video` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `return_response` text DEFAULT NULL,
  `api_type` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conferences_history`
--

CREATE TABLE `conferences_history` (
  `id` int(11) NOT NULL,
  `conference_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `total_hit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conference_staff`
--

CREATE TABLE `conference_staff` (
  `id` int(11) NOT NULL,
  `conference_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `consultant_register`
--

CREATE TABLE `consultant_register` (
  `id` int(11) NOT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ins_date` date DEFAULT NULL,
  `instruction` text DEFAULT NULL,
  `cons_doctor` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `consult_charges`
--

CREATE TABLE `consult_charges` (
  `id` int(11) NOT NULL,
  `doctor` int(11) DEFAULT NULL,
  `standard_charge` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consult_charges`
--

INSERT INTO `consult_charges` (`id`, `doctor`, `standard_charge`, `date`, `status`, `created_at`) VALUES
(1, 3, 1200.00, '2022-01-27', 'on', '2022-01-27 10:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `file` varchar(250) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` mediumtext DEFAULT NULL,
  `visible_on_print` int(11) DEFAULT NULL,
  `visible_on_report` int(11) DEFAULT NULL,
  `visible_on_table` int(11) DEFAULT NULL,
  `visible_on_patient_panel` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `belong_to`, `type`, `bs_column`, `validation`, `field_values`, `visible_on_print`, `visible_on_report`, `visible_on_table`, `visible_on_patient_panel`, `weight`, `is_active`, `created_at`) VALUES
(1, 'CT Scan', 'radiology', 'checkbox', 12, 1, '0', 1, 1, 1, 1, NULL, 0, '2022-01-17 12:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `death_report`
--

CREATE TABLE `death_report` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `attachment` varchar(200) NOT NULL,
  `attachment_name` text DEFAULT NULL,
  `death_date` datetime NOT NULL,
  `guardian_name` varchar(200) NOT NULL,
  `death_report` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_card`
--

CREATE TABLE `discharge_card` (
  `id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `opd_details_id` int(11) DEFAULT NULL,
  `ipd_details_id` int(11) DEFAULT NULL,
  `discharge_by` int(11) DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `discharge_status` int(10) NOT NULL,
  `death_date` datetime DEFAULT NULL,
  `refer_date` datetime DEFAULT NULL,
  `refer_to_hospital` varchar(255) DEFAULT NULL,
  `reason_for_referral` varchar(255) DEFAULT NULL,
  `operation` varchar(225) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `investigations` text DEFAULT NULL,
  `treatment_home` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discharge_card`
--

INSERT INTO `discharge_card` (`id`, `case_reference_id`, `opd_details_id`, `ipd_details_id`, `discharge_by`, `discharge_date`, `discharge_status`, `death_date`, `refer_date`, `refer_to_hospital`, `reason_for_referral`, `operation`, `diagnosis`, `investigations`, `treatment_home`, `note`, `created_at`) VALUES
(1, 10, 10, NULL, 1, '2022-01-27 14:53:00', 3, NULL, NULL, '', '', '', '', '', '', '', '2022-01-27 09:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_absent`
--

CREATE TABLE `doctor_absent` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_global_shift`
--

CREATE TABLE `doctor_global_shift` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `global_shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_global_shift`
--

INSERT INTO `doctor_global_shift` (`id`, `staff_id`, `global_shift_id`, `created_at`) VALUES
(5, 3, 1, '2022-01-27 14:10:19'),
(6, 5, 1, '2022-01-29 11:25:20'),
(8, 7, 2, '2022-02-23 09:27:00'),
(12, 10, 1, '2022-02-23 11:57:36'),
(13, 10, 2, '2022-02-23 11:57:42'),
(14, 9, 1, '2022-02-23 12:22:33'),
(15, 9, 2, '2022-02-23 12:22:39'),
(16, 7, 1, '2022-02-23 12:22:48'),
(17, 5, 2, '2022-02-23 12:22:50'),
(18, 3, 2, '2022-02-23 12:22:52'),
(19, 10, 5, '2022-02-23 12:23:02'),
(20, 9, 5, '2022-02-23 12:23:03'),
(21, 7, 5, '2022-02-23 12:23:05'),
(22, 5, 5, '2022-02-23 12:23:06'),
(23, 3, 5, '2022-02-23 12:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_shift`
--

CREATE TABLE `doctor_shift` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `global_shift_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_shift`
--

INSERT INTO `doctor_shift` (`id`, `day`, `staff_id`, `global_shift_id`, `start_time`, `end_time`, `created_at`) VALUES
(7, 'snday', 5, 1, '14:12:33', '16:12:33', '2022-01-27 14:10:42'),
(8, 'Monday', 5, 1, '11:26:00', '16:26:00', '2022-01-29 11:27:03'),
(9, 'Monday', 3, 1, '09:00:00', '17:00:00', '2022-01-29 11:47:33'),
(10, 'Tuesday', 3, 1, '09:00:00', '17:00:00', '2022-01-29 11:47:50'),
(11, 'Wednesday', 3, 1, '09:00:00', '17:00:00', '2022-01-29 11:48:14'),
(12, 'Monday', 7, 2, '17:00:00', '23:59:00', '2022-02-23 09:28:08'),
(13, 'Tuesday', 7, 2, '17:00:00', '23:59:00', '2022-02-23 09:28:38'),
(15, 'Thursday', 7, 2, '17:00:00', '23:59:00', '2022-02-23 09:29:03'),
(16, 'Friday', 7, 2, '17:00:00', '23:59:00', '2022-02-23 09:29:19'),
(17, 'Saturday', 7, 2, '17:00:00', '23:59:00', '2022-02-23 09:29:32'),
(18, 'Monday', 9, 5, '00:00:00', '09:00:00', '2022-02-23 10:22:00'),
(19, 'Monday', 10, 1, '12:15:00', '12:16:00', '2022-02-23 12:16:19'),
(20, 'Sunday', 9, 1, '09:00:00', '17:00:00', '2022-02-24 10:34:18'),
(21, 'Monday', 9, 1, '09:00:00', '17:00:00', '2022-02-24 10:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `dose_duration`
--

CREATE TABLE `dose_duration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dose_interval`
--

CREATE TABLE `dose_interval` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `is_active`, `created_at`) VALUES
(1, 'sendmail', '', '', '', '', '', 'true', 'yes', '2021-09-24 12:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `is_deleted` varchar(10) DEFAULT 'no',
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `is_deleted` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `finding`
--

CREATE TABLE `finding` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `finding_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finding`
--

INSERT INTO `finding` (`id`, `name`, `description`, `finding_category_id`, `created_at`) VALUES
(1, 'TT', '', 1, '2022-01-29 11:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `finding_category`
--

CREATE TABLE `finding_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finding_category`
--

INSERT INTO `finding_category` (`id`, `category`, `created_at`) VALUES
(1, 'Test Finding', '2022-01-29 11:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Ground', '', '2022-01-29 11:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` mediumtext DEFAULT NULL,
  `vid_title` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` mediumtext DEFAULT NULL,
  `ext_url_link` mediumtext DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 03:54:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 03:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` mediumtext DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` mediumtext DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(1, 2, 'Home', 1, 0, NULL, NULL, NULL, 'home-1', NULL, 0, NULL, 'no', '2018-07-14 03:14:12'),
(2, 1, 'Appointment', 0, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment', 2, 0, NULL, 'no', '2021-09-27 12:04:57'),
(3, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', NULL, 0, NULL, 'no', '2019-01-24 03:18:17'),
(4, 2, 'Appointment', 0, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment-1', NULL, 0, NULL, 'no', '2019-11-02 10:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home page first new', 'page/home-page-first-new', 'page', 'home-page-first-new', '', '', '', '', '<p>Home page first</p>', '0000-00-00', 1, 1, 'no', '2021-09-28 15:49:10'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<div class=\"col-md-12 col-sm-12\">\r\n<h2 class=\"text-center\">&nbsp;</h2>\r\n\r\n<p class=\"text-center\">[form-builder:complain]</p>\r\n</div>', '0000-00-00', 1, 1, 'no', '2019-01-24 03:00:12'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<title></title>\r\n<p>404 page found</p>', '0000-00-00', 0, NULL, 'no', '2021-09-24 11:35:15'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<p>[form-builder:contact_us]</p>', '0000-00-00', 0, NULL, 'no', '2021-09-24 06:27:54'),
(5, 'manual', 0, 'our-appointment', 'page/our-appointment', 'page', 'our-appointment', '', '', '', '', '<form action=\"welcome/appointment\" method=\"get\">First name: <input name=\"fname\" type=\"text\" /><br />\r\nLast name: <input name=\"lname\" type=\"text\" /><br />\r\n<input type=\"submit\" value=\"Submit\" />&nbsp;</form>', '0000-00-00', 0, 1, 'no', '2021-09-24 11:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `feature_image` mediumtext DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` varchar(10) NOT NULL DEFAULT '0',
  `sidebar` int(10) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_online_appointment` int(11) DEFAULT NULL,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` mediumtext DEFAULT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` mediumtext DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_online_appointment`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES
(1, 'default', NULL, NULL, NULL, NULL, '', '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '2021-10-22 06:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(50) NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `call_type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_shift`
--

CREATE TABLE `global_shift` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_shift`
--

INSERT INTO `global_shift` (`id`, `name`, `start_time`, `end_time`, `date_created`) VALUES
(1, 'Morning', '09:00:00', '17:00:00', '2022-01-29 11:25:12'),
(2, 'Evening', '17:00:00', '23:59:00', '2022-02-23 09:26:16'),
(5, 'Night', '00:00:00', '09:00:00', '2022-02-23 10:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_deleted` varchar(10) DEFAULT 'no',
  `documents` varchar(255) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_deleted`, `documents`, `generated_by`, `is_active`, `created_at`) VALUES
(1, 1, 'CT Scan', '1', '2022-01-17', 41500.00, '', 'no', NULL, 1, 'yes', '2022-01-17 12:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`) VALUES
(1, 'Radiology', '', 'yes', 'no', '2022-01-17 12:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `ipd_details`
--

CREATE TABLE `ipd_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `pulse` varchar(200) NOT NULL,
  `temperature` varchar(200) NOT NULL,
  `respiration` varchar(200) NOT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `bed` varchar(100) NOT NULL,
  `bed_group_id` int(10) DEFAULT NULL,
  `case_type` varchar(100) NOT NULL,
  `casualty` varchar(100) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `known_allergies` varchar(200) DEFAULT NULL,
  `patient_old` varchar(50) NOT NULL,
  `note` text DEFAULT NULL,
  `refference` varchar(200) NOT NULL,
  `cons_doctor` int(11) DEFAULT NULL,
  `organisation_id` int(11) DEFAULT NULL,
  `credit_limit` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `discharged` varchar(200) NOT NULL,
  `live_consult` varchar(50) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ipd_doctors`
--

CREATE TABLE `ipd_doctors` (
  `id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `consult_doctor` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ipd_prescription_basic`
--

CREATE TABLE `ipd_prescription_basic` (
  `id` int(11) NOT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `visit_details_id` int(11) DEFAULT NULL,
  `header_note` text DEFAULT NULL,
  `footer_note` text DEFAULT NULL,
  `finding_description` text DEFAULT NULL,
  `is_finding_print` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `prescribe_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ipd_prescription_details`
--

CREATE TABLE `ipd_prescription_details` (
  `id` int(11) NOT NULL,
  `basic_id` int(11) DEFAULT NULL,
  `pharmacy_id` int(10) DEFAULT NULL,
  `dosage` int(11) DEFAULT NULL,
  `dose_interval_id` int(11) DEFAULT NULL,
  `dose_duration_id` int(11) DEFAULT NULL,
  `instruction` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ipd_prescription_test`
--

CREATE TABLE `ipd_prescription_test` (
  `id` int(11) NOT NULL,
  `ipd_prescription_basic_id` int(100) DEFAULT NULL,
  `pathology_id` int(11) DEFAULT NULL,
  `radiology_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'yes',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` int(11) DEFAULT NULL,
  `issue_to` int(11) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text DEFAULT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `lab_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `lab_name`, `created_at`) VALUES
(1, 'CT Scan', '2022-01-17 12:29:02'),
(2, 'MRI', '2022-01-17 12:29:12'),
(3, 'Ultrasound', '2022-01-17 12:29:24'),
(4, 'X-Ray', '2022-01-17 12:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_rtl` varchar(10) NOT NULL DEFAULT 'no',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_rtl`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 'no', 'no', 'no', '2021-09-28 09:51:22', NULL),
(2, 'Albanian', 'sq', 'al', 'no', 'no', 'no', '2021-09-28 10:08:10', NULL),
(3, 'Amharic', 'am', 'am', 'no', 'no', 'no', '2021-09-28 09:50:47', NULL),
(4, 'English', 'en', 'us', 'no', 'no', 'no', '2021-09-16 05:20:47', NULL),
(5, 'Arabic', 'ar', 'sa', 'no', 'no', 'no', '2021-09-28 09:50:48', NULL),
(6, 'Afrikaans', 'af', 'af', 'no', 'no', 'no', '2021-09-28 10:51:19', NULL),
(7, 'Basque', 'eu', 'es', 'no', 'no', 'no', '2021-09-24 06:58:21', NULL),
(8, 'Bengali', 'bn', 'in', 'no', 'no', 'no', '2021-09-24 06:58:25', NULL),
(9, 'Bosnian', 'bs', 'bs', 'no', 'no', 'no', '2021-09-24 06:58:28', NULL),
(10, 'Welsh', 'cy', 'cy', 'no', 'no', 'no', '2021-09-24 06:58:31', NULL),
(11, 'Hungarian', 'hu', 'hu', 'no', 'no', 'no', '2021-09-24 06:58:35', NULL),
(12, 'Vietnamese', 'vi', 'vi', 'no', 'no', 'no', '2021-09-24 06:58:39', NULL),
(13, 'Haitian', 'ht', 'ht', 'no', 'no', 'no', '2021-09-24 06:58:43', NULL),
(14, 'Galician', 'gl', 'gl', 'no', 'no', 'no', '2021-09-24 06:58:47', NULL),
(15, 'Dutch', 'nl', 'nl', 'no', 'no', 'no', '2021-09-24 06:58:51', NULL),
(16, 'Greek', 'el', 'gr', 'no', 'no', 'no', '2021-09-24 06:58:53', NULL),
(17, 'Georgian', 'ka', 'ge', 'no', 'no', 'no', '2021-09-24 06:58:56', NULL),
(18, 'Gujarati', 'gu', 'in', 'no', 'no', 'no', '2021-09-24 06:58:59', NULL),
(19, 'Danish', 'da', 'dk', 'no', 'no', 'no', '2021-09-24 06:59:01', NULL),
(20, 'Hebrew', 'he', 'il', 'no', 'no', 'no', '2021-09-24 06:59:04', NULL),
(21, 'Yiddish', 'yi', 'il', 'no', 'no', 'no', '2021-09-24 06:59:07', NULL),
(22, 'Indonesian', 'id', 'id', 'no', 'no', 'no', '2021-09-24 06:59:10', NULL),
(23, 'Irish', 'ga', 'ga', 'no', 'no', 'no', '2021-09-24 06:59:14', NULL),
(24, 'Italian', 'it', 'it', 'no', 'no', 'no', '2021-09-24 06:59:17', NULL),
(25, 'Icelandic', 'is', 'is', 'no', 'no', 'no', '2021-09-24 06:59:20', NULL),
(26, 'Spanish', 'es', 'es', 'no', 'no', 'no', '2021-09-24 06:59:29', NULL),
(27, 'Kannada', 'kn', 'kn', 'no', 'no', 'no', '2021-09-24 06:59:32', NULL),
(28, 'Catalan', 'ca', 'ca', 'no', 'no', 'no', '2021-09-24 06:59:34', NULL),
(29, 'Chinese', 'zh', 'cn', 'no', 'no', 'no', '2021-09-24 06:59:36', NULL),
(30, 'Korean', 'ko', 'kr', 'no', 'no', 'no', '2021-09-24 06:59:39', NULL),
(31, 'Xhosa', 'xh', 'ls', 'no', 'no', 'no', '2021-09-24 06:59:42', NULL),
(32, 'Latin', 'la', 'la', 'no', 'no', 'no', '2021-09-24 06:59:45', NULL),
(33, 'Latvian', 'lv', 'lv', 'no', 'no', 'no', '2021-09-24 06:59:47', NULL),
(34, 'Lithuanian', 'lt', 'lt', 'no', 'no', 'no', '2021-09-24 06:59:50', NULL),
(35, 'Malagasy', 'mg', 'mg', 'no', 'no', 'no', '2021-09-24 06:59:52', NULL),
(36, 'Malay', 'ms', 'ms', 'no', 'no', 'no', '2021-09-24 07:00:01', NULL),
(37, 'Malayalam', 'ml', 'ml', 'no', 'no', 'no', '2021-09-24 07:00:05', NULL),
(38, 'Maltese', 'mt', 'mt', 'no', 'no', 'no', '2021-09-24 07:00:26', NULL),
(39, 'Macedonian', 'mk', 'mk', 'no', 'no', 'no', '2021-09-24 07:00:41', NULL),
(40, 'Maori', 'mi', 'nz', 'no', 'no', 'no', '2021-09-24 07:00:44', NULL),
(41, 'Marathi', 'mr', 'in', 'no', 'no', 'no', '2021-09-24 07:00:51', NULL),
(42, 'Mongolian', 'mn', 'mn', 'no', 'no', 'no', '2021-09-24 07:01:15', NULL),
(43, 'German', 'de', 'de', 'no', 'no', 'no', '2021-09-24 07:01:18', NULL),
(44, 'Nepali', 'ne', 'ne', 'no', 'no', 'no', '2021-09-24 07:01:21', NULL),
(45, 'Norwegian', 'no', 'no', 'no', 'no', 'no', '2021-09-24 07:01:41', NULL),
(46, 'Punjabi', 'pa', 'in', 'no', 'no', 'no', '2021-09-24 07:01:43', NULL),
(47, 'Persian', 'fa', 'ir', 'no', 'no', 'no', '2021-09-24 07:01:49', NULL),
(48, 'Portuguese', 'pt', 'pt', 'no', 'no', 'no', '2021-09-24 07:01:52', NULL),
(49, 'Romanian', 'ro', 'ro', 'no', 'no', 'no', '2021-09-24 07:01:56', NULL),
(50, 'Russian', 'ru', 'ru', 'no', 'no', 'no', '2021-09-24 07:01:59', NULL),
(51, 'Cebuano', 'ceb', 'ph', 'no', 'no', 'no', '2021-09-24 07:02:02', NULL),
(52, 'Sinhala', 'si', 'si', 'no', 'no', 'no', '2021-09-24 07:02:04', NULL),
(53, 'Slovakian', 'sk', 'sk', 'no', 'no', 'no', '2021-09-24 07:02:07', NULL),
(54, 'Slovenian', 'sl', 'sl', 'no', 'no', 'no', '2021-09-24 07:02:10', NULL),
(55, 'Swahili', 'sw', 'ke', 'no', 'no', 'no', '2021-09-24 07:02:12', NULL),
(56, 'Sundanese', 'su', 'sd', 'no', 'no', 'no', '2021-09-24 07:02:15', NULL),
(57, 'Thai', 'th', 'th', 'no', 'no', 'no', '2021-09-24 07:02:18', NULL),
(58, 'Tagalog', 'tl', 'tl', 'no', 'no', 'no', '2021-09-24 07:02:21', NULL),
(59, 'Tamil', 'ta', 'in', 'no', 'no', 'no', '2021-09-24 07:02:23', NULL),
(60, 'Telugu', 'te', 'in', 'no', 'no', 'no', '2021-09-24 07:02:26', NULL),
(61, 'Turkish', 'tr', 'tr', 'no', 'no', 'no', '2021-09-24 07:02:29', NULL),
(62, 'Uzbek', 'uz', 'uz', 'no', 'no', 'no', '2021-09-24 07:02:31', NULL),
(63, 'Urdu', 'ur', 'pk', 'no', 'no', 'no', '2021-09-24 07:02:34', NULL),
(64, 'Finnish', 'fi', 'fi', 'no', 'no', 'no', '2021-09-24 07:02:37', NULL),
(65, 'French', 'fr', 'fr', 'no', 'no', 'no', '2021-09-24 07:02:39', NULL),
(66, 'Hindi', 'hi', 'in', 'no', 'no', 'no', '2021-09-24 07:02:41', NULL),
(67, 'Czech', 'cs', 'cz', 'no', 'no', 'no', '2021-09-24 07:02:44', NULL),
(68, 'Swedish', 'sv', 'sv', 'no', 'no', 'no', '2021-09-24 07:02:46', NULL),
(69, 'Scottish', 'gd', 'gd', 'no', 'no', 'no', '2021-09-24 07:02:49', NULL),
(70, 'Estonian', 'et', 'et', 'no', 'no', 'no', '2021-09-24 07:02:52', NULL),
(71, 'Esperanto', 'eo', 'br', 'no', 'no', 'no', '2021-09-24 07:02:55', NULL),
(72, 'Javanese', 'jv', 'id', 'no', 'no', 'no', '2021-09-24 07:02:58', NULL),
(73, 'Japanese', 'ja', 'jp', 'no', 'no', 'no', '2021-09-24 07:03:01', NULL),
(74, 'Polish', 'pl', 'pl', 'no', 'no', 'no', '2021-09-28 06:39:06', NULL),
(75, 'Croatia ', 'hr', 'hr', 'no', 'no', 'no', '2021-10-25 07:56:41', NULL),
(76, 'Kurdish', 'ku', 'iq', 'no', 'no', 'no', '2021-10-25 07:56:44', NULL),
(77, 'Lao', 'lo', 'la', 'no', 'no', 'no', '2021-10-25 07:56:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `agent` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 09:01:53', '2022-01-14'),
(2, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:09:23', '2022-01-14'),
(3, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:09:30', '2022-01-14'),
(4, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:10:26', '2022-01-14'),
(5, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:12:11', '2022-01-14'),
(6, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:12:17', '2022-01-14'),
(7, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:13:56', '2022-01-14'),
(8, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-14 14:14:02', '2022-01-14'),
(9, 'Record updated On Settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 06:15:41', '2022-01-15'),
(10, 'New Record inserted On Staff Designation id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 07:16:40', '2022-01-15'),
(11, 'New Record inserted On Staff Designation id 2', 2, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 07:16:50', '2022-01-15'),
(12, 'Record updated On Roles id 8', 8, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 07:18:07', '2022-01-15'),
(13, 'Record updated On Roles id 8', 8, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 07:20:22', '2022-01-15'),
(14, 'Record updated For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 07:43:21', '2022-01-15'),
(15, 'Record updated For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:17:56', '2022-01-15'),
(16, 'Record updated For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:17:56', '2022-01-15'),
(17, 'Record updated For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:18:01', '2022-01-15'),
(18, 'Record updated For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:18:01', '2022-01-15'),
(19, 'Record updated For Staff id 2', 2, 0, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 03:19:50', '2022-01-15'),
(20, 'Record updated On Roles id 8', 8, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:26:39', '2022-01-15'),
(21, 'New Record inserted On Staff Designation id 3', 3, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:27:22', '2022-01-15'),
(22, 'Record updated Change Password For Staff id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:32:33', '2022-01-15'),
(23, 'New Record inserted On Leave Types id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:40:47', '2022-01-15'),
(24, 'Record deleted On Leave Types id 1', 1, 1, 'Delete', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:40:57', '2022-01-15'),
(25, 'New Record inserted On Charge Categories id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:43:49', '2022-01-15'),
(26, 'New Record inserted On Charge Units id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:45:10', '2022-01-15'),
(27, 'New Record inserted On Tax Category id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 08:47:18', '2022-01-15'),
(28, 'Record updated For Staff id 3', 3, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:02:19', '2022-01-15'),
(29, 'Record updated For Staff id 3', 3, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:02:19', '2022-01-15'),
(30, 'Record updated For Staff id 3', 3, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:06:17', '2022-01-15'),
(31, 'Record updated For Staff id 3', 3, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:06:17', '2022-01-15'),
(32, 'New Record inserted On Patient id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:40:27', '2022-01-15'),
(33, 'Record updated On Patient id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:40:27', '2022-01-15'),
(34, 'New Record inserted On Transactions id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-15 09:43:36', '2022-01-15'),
(35, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:05:50', '2022-01-17'),
(36, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:05:50', '2022-01-17'),
(37, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:06:18', '2022-01-17'),
(38, 'Record updated On Print Setting id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:08:44', '2022-01-17'),
(39, 'Record updated On Print Setting id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:08:44', '2022-01-17'),
(40, 'Record updated On Print Setting id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:41:26', '2022-01-17'),
(41, 'Record updated On Print Setting id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:41:26', '2022-01-17'),
(42, 'Record updated On Print Setting id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:43:46', '2022-01-17'),
(43, 'Record updated On Print Setting id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-17 09:43:52', '2022-01-17'),
(44, 'New Record inserted On Patient id 2', 2, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 11:34:26', '2022-01-17'),
(45, 'Record updated On Patient id 2', 2, 2, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 11:34:26', '2022-01-17'),
(46, 'New Record inserted On Birth Report id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 11:41:28', '2022-01-17'),
(47, 'Record updated For Birth Report id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 11:41:28', '2022-01-17'),
(48, 'New Record inserted On Income Head id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:12:37', '2022-01-17'),
(49, 'Record updated On Charge Units id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:24:19', '2022-01-17'),
(50, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:25:34', '2022-01-17'),
(51, 'New Record inserted On Lab id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:29:02', '2022-01-17'),
(52, 'New Record inserted On Lab id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:29:12', '2022-01-17'),
(53, 'New Record inserted On Lab id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:29:24', '2022-01-17'),
(54, 'New Record inserted On Lab id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:29:36', '2022-01-17'),
(55, 'New Record inserted On Income id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:38:09', '2022-01-17'),
(56, 'New Record inserted On Custom Fields id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-17 12:41:58', '2022-01-17'),
(57, 'New Record inserted On Transactions id 2', 2, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-18 11:05:40', '2022-01-18'),
(58, 'New Record inserted On Patient id 3', 3, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-18 11:09:31', '2022-01-18'),
(59, 'Record updated On Patient id 3', 3, 2, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-18 11:09:31', '2022-01-18'),
(60, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-18 11:11:13', '2022-01-18'),
(61, 'Record updated For Staff id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-18 12:40:41', '2022-01-18'),
(62, 'Record updated Change Password For Staff id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-18 12:47:43', '2022-01-18'),
(63, 'New Record inserted On Charge Type Master id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-19 11:19:03', '2022-01-19'),
(64, 'New Record inserted On Charge Type Module id 28', 28, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-19 11:19:03', '2022-01-19'),
(65, 'New Record inserted On Charge Categories id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-19 11:19:36', '2022-01-19'),
(66, 'New Record inserted On Charge Units id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 96.0.4664.110', '2022-01-19 13:45:24', '2022-01-19'),
(67, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 07:09:39', '2022-01-20'),
(68, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:34:06', '2022-01-20'),
(69, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:34:06', '2022-01-20'),
(70, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:37:38', '2022-01-20'),
(71, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:37:38', '2022-01-20'),
(72, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:42:25', '2022-01-20'),
(73, 'Record updated On Print Setting id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 08:42:25', '2022-01-20'),
(74, 'Record updated On Print Setting id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 11:53:37', '2022-01-20'),
(75, 'Record updated On Print Setting id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 11:53:37', '2022-01-20'),
(76, 'Record updated On Print Setting id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 11:58:45', '2022-01-20'),
(77, 'Record updated On Print Setting id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 11:58:45', '2022-01-20'),
(78, 'New Record inserted On Transactions id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 12:27:27', '2022-01-20'),
(79, 'Record updated On Patient id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 12:30:53', '2022-01-20'),
(80, 'New Record inserted On Transactions id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-20 12:36:14', '2022-01-20'),
(81, 'Record updated On Charge Categories id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-21 09:36:54', '2022-01-21'),
(82, 'New Record inserted On Charge Categories id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-21 09:37:55', '2022-01-21'),
(83, 'New Record inserted On Charge Units id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-21 09:39:52', '2022-01-21'),
(84, 'New Record inserted On Charge Units id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.71', '2022-01-21 09:40:07', '2022-01-21'),
(85, 'New Record inserted On Patient id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 12:00:16', '2022-01-26'),
(86, 'Record updated On Patient id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 12:00:16', '2022-01-26'),
(87, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:05:04', '2022-01-26'),
(88, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:05:54', '2022-01-26'),
(89, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:09:58', '2022-01-26'),
(90, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:11:13', '2022-01-26'),
(91, 'New Record inserted On Appointment Created 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:19:18', '2022-01-26'),
(92, 'New Record inserted On Appointment Created 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:22:59', '2022-01-26'),
(93, 'Record updated For Staff id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:28:04', '2022-01-26'),
(94, 'Record updated For Staff id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:28:30', '2022-01-26'),
(95, 'Record updated For Staff id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:28:30', '2022-01-26'),
(96, 'New Record inserted On Appointment Created 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:29:16', '2022-01-26'),
(97, 'New Record inserted On Appointment Created 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:30:56', '2022-01-26'),
(98, 'New Record inserted On Appointment Created 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:32:44', '2022-01-26'),
(99, 'New Record inserted On Appointment Created 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 13:45:28', '2022-01-26'),
(100, 'Record updatedOn Appointment Updated 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 14:27:02', '2022-01-26'),
(101, 'Record updatedOn Appointment Updated 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 14:27:29', '2022-01-26'),
(102, 'Record updatedOn Appointment Updated 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-26 14:32:57', '2022-01-26'),
(103, 'Record updatedOn Appointment Updated 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 09:52:14', '2022-01-27'),
(104, 'Record deleted On Appointment Deleted id 5', 5, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 09:52:27', '2022-01-27'),
(105, 'New Record inserted On Transactions id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 09:54:37', '2022-01-27'),
(106, 'Record updated On Visit Details id 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 09:54:37', '2022-01-27'),
(107, 'New Record inserted On Appointment Created 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:08:41', '2022-01-27'),
(108, 'New Record inserted On Appointment Created 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:20:53', '2022-01-27'),
(109, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:26:05', '2022-01-27'),
(110, 'New Record inserted On Transactions id 19', 19, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:12', '2022-01-27'),
(111, 'Record updated On Visit Details id 11', 11, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:12', '2022-01-27'),
(112, 'New Record inserted On Read System Notification id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:40', '2022-01-27'),
(113, 'New Record inserted On Read System Notification id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:41', '2022-01-27'),
(114, 'New Record inserted On Read System Notification id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:42', '2022-01-27'),
(115, 'New Record inserted On Read System Notification id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:54', '2022-01-27'),
(116, 'New Record inserted On Read System Notification id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:37:58', '2022-01-27'),
(117, 'New Record inserted On Read System Notification id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:38:05', '2022-01-27'),
(118, 'New Record inserted On Transactions id 20', 20, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:39:15', '2022-01-27'),
(119, 'Record updated On Visit Details id 11', 11, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 10:39:15', '2022-01-27'),
(120, 'New Record inserted On Patient Charges id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:02:31', '2022-01-27'),
(121, 'New Record inserted On Transactions id 21', 21, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:02:57', '2022-01-27'),
(122, 'New Record inserted On Appointment Created 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:04:44', '2022-01-27'),
(123, 'New Record inserted On Patient Charges id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:06:48', '2022-01-27'),
(124, 'New Record inserted On Read System Notification id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:11:42', '2022-01-27'),
(125, 'New Record inserted On Read System Notification id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 11:11:46', '2022-01-27'),
(126, 'New Record inserted On Appointment Created 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:11:35', '2022-01-27'),
(127, 'New Record inserted On Transactions id 24', 24, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:13:06', '2022-01-27'),
(128, 'Record updated On Visit Details id 14', 14, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:13:06', '2022-01-27'),
(129, 'New Record inserted On Patient Charges id 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:14:17', '2022-01-27'),
(130, 'New Record inserted On Transactions id 25', 25, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:14:28', '2022-01-27'),
(131, 'Record updatedOn Appointment Updated 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:18:09', '2022-01-27'),
(132, 'Record updatedOn Appointment Updated 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:19:01', '2022-01-27'),
(133, 'Record updated Change Password For Staff id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:21:57', '2022-01-27'),
(134, 'New Record inserted On Appointment Created 11', 11, 5, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:22:54', '2022-01-27'),
(135, 'Record updatedOn Appointment Updated 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:23:23', '2022-01-27'),
(136, 'Record updatedOn Appointment Updated 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-27 14:23:43', '2022-01-27'),
(137, 'New Record inserted On Appointment Created 12', 12, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-28 13:32:07', '2022-01-28'),
(138, 'Record updated On Global Shift id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:25:12', '2022-01-29'),
(139, 'New Record inserted On Shift Details id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:27:03', '2022-01-29'),
(140, 'New Record inserted On Floor id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:28:34', '2022-01-29'),
(141, 'New Record inserted On Bed Group id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:28:48', '2022-01-29'),
(142, 'New Record inserted On Bed id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:29:09', '2022-01-29'),
(143, 'Record updated On Bed Group id 2', 2, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:29:34', '2022-01-29'),
(144, 'Record updated On Settings id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:32:54', '2022-01-29'),
(145, 'Record updated On Finding Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:37:21', '2022-01-29'),
(146, 'New Record inserted On Finding id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:37:31', '2022-01-29'),
(147, 'New Record inserted On Shift Details id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:47:33', '2022-01-29'),
(148, 'Record updated On Shift Details id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:47:50', '2022-01-29'),
(149, 'Record updated On Shift Details id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:48:14', '2022-01-29'),
(150, 'New Record inserted On Appointment Created 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 11:58:49', '2022-01-29'),
(151, 'New Record inserted On Appointment Created 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:02:02', '2022-01-29'),
(152, 'New Record inserted On Appointment Created 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:17:09', '2022-01-29'),
(153, 'Record updatedOn Appointment Updated 15', 15, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:17:30', '2022-01-29'),
(154, 'Record updated On Transactions id 30', 30, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:20:50', '2022-01-29'),
(155, 'Record updated On Visit Details id 17', 17, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:20:50', '2022-01-29'),
(156, 'New Record inserted On Patient Charges id 21', 21, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:21:58', '2022-01-29'),
(157, 'New Record inserted On Transactions id 31', 31, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:22:38', '2022-01-29'),
(158, 'Record deleted On Appointment Deleted id 15', 15, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 12:23:41', '2022-01-29'),
(159, 'New Record inserted On Appointment Created 16', 16, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 14:24:43', '2022-01-29'),
(160, 'Record deleted On Appointment Deleted id 16', 16, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-29 14:24:57', '2022-01-29'),
(161, 'New Record inserted On Appointment Created 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:17:18', '2022-01-31'),
(162, 'Record updatedOn Appointment Updated 17', 17, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:18:20', '2022-01-31'),
(163, 'New Record inserted On Appointment Created 18', 18, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:18:39', '2022-01-31'),
(164, 'Record updatedOn Appointment Updated 18', 18, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:19:23', '2022-01-31'),
(165, 'New Record inserted On Appointment Created 19', 19, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:21:29', '2022-01-31'),
(166, 'Record updatedOn Appointment Updated 19', 19, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:21:51', '2022-01-31'),
(167, 'New Record inserted On Appointment Created 20', 20, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:22:23', '2022-01-31'),
(168, 'Record updatedOn Appointment Updated 20', 20, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 10:22:32', '2022-01-31'),
(169, 'Record updatedOn Appointment Updated 14', 14, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:16:14', '2022-01-31'),
(170, 'Record updatedOn Appointment Updated 13', 13, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:16:46', '2022-01-31'),
(171, 'Record updatedOn Appointment Updated 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:17:12', '2022-01-31'),
(172, 'Record deleted On Appointment Deleted id 10', 10, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:17:40', '2022-01-31'),
(173, 'Record deleted On Appointment Deleted id 13', 13, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:17:45', '2022-01-31'),
(174, 'Record deleted On Appointment Deleted id 14', 14, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:17:50', '2022-01-31'),
(175, 'Record updatedOn Appointment Updated 18', 18, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:18:52', '2022-01-31'),
(176, 'Record deleted On Appointment Deleted id 18', 18, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:19:06', '2022-01-31'),
(177, 'New Record inserted On Appointment Created 21', 21, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:19:23', '2022-01-31'),
(178, 'Record updatedOn Appointment Updated 21', 21, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:19:31', '2022-01-31'),
(179, 'New Record inserted On Appointment Created 22', 22, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:20:32', '2022-01-31'),
(180, 'New Record inserted On Appointment Created 23', 23, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:21:14', '2022-01-31'),
(181, 'New Record inserted On Appointment Created 24', 24, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:56:37', '2022-01-31'),
(182, 'Record updatedOn Appointment Updated 24', 24, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:57:08', '2022-01-31'),
(183, 'Record updatedOn Appointment Updated 24', 24, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:57:28', '2022-01-31'),
(184, 'New Record inserted On Appointment Created 25', 25, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:57:58', '2022-01-31'),
(185, 'Record updatedOn Appointment Updated 25', 25, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:58:15', '2022-01-31'),
(186, 'New Record inserted On Appointment Created 26', 26, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:58:45', '2022-01-31'),
(187, 'Record updatedOn Appointment Updated 26', 26, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:59:02', '2022-01-31'),
(188, 'Record updatedOn Appointment Updated 26', 26, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:59:35', '2022-01-31'),
(189, 'Record updatedOn Appointment Updated 26', 26, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 11:59:53', '2022-01-31'),
(190, 'New Record inserted On Appointment Created 27', 27, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:36:05', '2022-01-31'),
(191, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:37:42', '2022-01-31'),
(192, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:38:36', '2022-01-31'),
(193, 'New Record inserted On Appointment Created 30', 30, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:44:56', '2022-01-31'),
(194, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:48:24', '2022-01-31'),
(195, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:51:18', '2022-01-31'),
(196, 'New Record inserted On Appointment Created 32', 32, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:51:54', '2022-01-31'),
(197, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:59:10', '2022-01-31'),
(198, 'New Record inserted On Appointment Created 34', 34, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 12:59:40', '2022-01-31'),
(199, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:13:54', '2022-01-31'),
(200, 'New Record inserted On Appointment Created 36', 36, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:27:02', '2022-01-31'),
(201, 'New Record inserted On Appointment Created 37', 37, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:27:06', '2022-01-31'),
(202, 'New Record inserted On Appointment Created 38', 38, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:28:27', '2022-01-31'),
(203, 'New Record inserted On Appointment Created 39', 39, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:28:50', '2022-01-31'),
(204, 'New Record inserted On Appointment Created 40', 40, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:30:24', '2022-01-31'),
(205, 'New Record inserted On Appointment Created 41', 41, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:36:44', '2022-01-31'),
(206, 'New Record inserted On Appointment Created 42', 42, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:39:41', '2022-01-31'),
(207, 'New Record inserted On Appointment Created 43', 43, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:40:03', '2022-01-31'),
(208, 'New Record inserted On Appointment Created 44', 44, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:40:39', '2022-01-31'),
(209, 'New Record inserted On Appointment Created 45', 45, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:47:07', '2022-01-31'),
(210, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:47:38', '2022-01-31'),
(211, 'New Record inserted On Appointment Created 46', 46, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:48:04', '2022-01-31'),
(212, 'New Record inserted On Appointment Created 47', 47, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 13:49:02', '2022-01-31'),
(213, 'New Record inserted On Appointment Created 48', 48, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:01:35', '2022-01-31'),
(214, 'New Record inserted On Appointment Created 49', 49, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:11:16', '2022-01-31'),
(215, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:15:00', '2022-01-31'),
(216, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:15:24', '2022-01-31'),
(217, 'New Record inserted On Appointment Created 50', 50, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:22:49', '2022-01-31'),
(218, 'New Record inserted On Appointment Created 51', 51, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:28:50', '2022-01-31'),
(219, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:29:50', '2022-01-31'),
(220, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:32:58', '2022-01-31'),
(221, 'New Record inserted On Appointment Created 52', 52, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:33:44', '2022-01-31'),
(222, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:35:06', '2022-01-31'),
(223, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:36:29', '2022-01-31'),
(224, 'New Record inserted On Appointment Created 53', 53, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:36:53', '2022-01-31'),
(225, 'New Record inserted On Appointment Created 54', 54, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:39:39', '2022-01-31'),
(226, 'New Record inserted On Appointment Created 55', 55, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:40:21', '2022-01-31'),
(227, 'New Record inserted On Appointment Created 56', 56, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:43:23', '2022-01-31'),
(228, 'New Record inserted On Appointment Created 57', 57, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:47:25', '2022-01-31'),
(229, 'New Record inserted On Appointment Created 58', 58, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:50:24', '2022-01-31'),
(230, 'New Record inserted On Appointment Created 59', 59, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:51:43', '2022-01-31'),
(231, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:52:41', '2022-01-31'),
(232, 'New Record inserted On Appointment Created 60', 60, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:53:20', '2022-01-31'),
(233, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:53:51', '2022-01-31'),
(234, 'New Record inserted On Appointment Created 61', 61, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:54:15', '2022-01-31'),
(235, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:55:16', '2022-01-31'),
(236, 'New Record inserted On Appointment Created 62', 62, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-01-31 14:55:35', '2022-01-31'),
(237, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:49:55', '2022-02-01'),
(238, 'Record deleted On Appointment Deleted id 63', 63, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:52:18', '2022-02-01'),
(239, 'New Record inserted On Appointment Created 64', 64, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:52:36', '2022-02-01'),
(240, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:52:57', '2022-02-01'),
(241, 'New Record inserted On Appointment Created 65', 65, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:54:05', '2022-02-01'),
(242, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:54:25', '2022-02-01'),
(243, 'Record deleted On Appointment Deleted id 65', 65, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:54:47', '2022-02-01'),
(244, 'New Record inserted On Appointment Created 66', 66, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:54:55', '2022-02-01'),
(245, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:55:06', '2022-02-01'),
(246, 'New Record inserted On Appointment Created 67', 67, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:55:51', '2022-02-01'),
(247, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:56:30', '2022-02-01'),
(248, 'New Record inserted On Appointment Created 68', 68, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:56:43', '2022-02-01'),
(249, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:57:07', '2022-02-01'),
(250, 'New Record inserted On Appointment Created 69', 69, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:57:19', '2022-02-01'),
(251, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:57:41', '2022-02-01'),
(252, 'New Record inserted On Appointment Created 70', 70, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:57:54', '2022-02-01'),
(253, 'New Record inserted On Appointment Created 71', 71, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:58:17', '2022-02-01'),
(254, 'New Record inserted On Appointment Created 72', 72, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 14:58:37', '2022-02-01'),
(255, 'New Record inserted On Appointment Created 73', 73, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:09:14', '2022-02-01'),
(256, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:09:31', '2022-02-01'),
(257, 'New Record inserted On Appointment Created 74', 74, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:15:10', '2022-02-01'),
(258, 'New Record inserted On Appointment Created 75', 75, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:15:45', '2022-02-01'),
(259, 'New Record inserted On Appointment Created 76', 76, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:16:00', '2022-02-01'),
(260, 'New Record inserted On Appointment Created 77', 77, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:16:24', '2022-02-01'),
(261, 'New Record inserted On Appointment Created 78', 78, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:17:01', '2022-02-01'),
(262, 'New Record inserted On Appointment Created 79', 79, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:18:17', '2022-02-01'),
(263, 'New Record inserted On Appointment Created 80', 80, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:18:38', '2022-02-01'),
(264, 'New Record inserted On Appointment Created 81', 81, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:19:03', '2022-02-01'),
(265, 'New Record inserted On Appointment Created 82', 82, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:19:23', '2022-02-01'),
(266, 'New Record inserted On Appointment Created 83', 83, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:19:57', '2022-02-01'),
(267, 'New Record inserted On Appointment Created 84', 84, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:20:10', '2022-02-01'),
(268, 'New Record inserted On Appointment Created 85', 85, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:20:39', '2022-02-01'),
(269, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:33:58', '2022-02-01'),
(270, 'New Record inserted On Appointment Created 86', 86, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:34:12', '2022-02-01'),
(271, 'New Record inserted On Appointment Created 87', 87, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:34:34', '2022-02-01'),
(272, 'New Record inserted On Appointment Created 88', 88, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:34:56', '2022-02-01'),
(273, 'New Record inserted On Appointment Created 89', 89, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-01 15:35:19', '2022-02-01'),
(274, 'New Record inserted On Appointment Created 90', 90, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 09:20:24', '2022-02-16'),
(275, 'Record updatedOn Appointment Updated 90', 90, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 09:20:33', '2022-02-16'),
(276, 'New Record inserted On Read System Notification id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 09:46:55', '2022-02-16'),
(277, 'New Record inserted On Read System Notification id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 09:46:56', '2022-02-16'),
(278, 'New Record inserted On Appointment Created 91', 91, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 10:06:41', '2022-02-16'),
(279, 'Record updatedOn Appointment Updated 91', 91, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 10:07:05', '2022-02-16'),
(280, 'New Record inserted On Read System Notification id 11', 11, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 11:12:02', '2022-02-16'),
(281, 'New Record inserted On Read System Notification id 12', 12, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 11:12:09', '2022-02-16'),
(282, 'New Record inserted On Appointment Created 92', 92, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 12:49:41', '2022-02-16'),
(283, 'New Record inserted On Appointment Created 93', 93, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 12:51:33', '2022-02-16'),
(284, 'New Record inserted On Appointment Created 94', 94, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 12:51:57', '2022-02-16'),
(285, 'New Record inserted On Appointment Created 95', 95, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:07:44', '2022-02-16'),
(286, 'New Record inserted On Appointment Created 96', 96, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:08:07', '2022-02-16'),
(287, 'New Record inserted On Appointment Created 97', 97, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:11:31', '2022-02-16'),
(288, 'New Record inserted On Appointment Created 0', 0, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:11:58', '2022-02-16'),
(289, 'New Record inserted On Appointment Created 98', 98, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:12:26', '2022-02-16'),
(290, 'New Record inserted On Appointment Created 0', 0, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:12:48', '2022-02-16'),
(291, 'New Record inserted On Appointment Created 99', 99, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:14:57', '2022-02-16'),
(292, 'New Record inserted On Appointment Created 100', 100, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:15:29', '2022-02-16'),
(293, 'New Record inserted On Appointment Created 101', 101, 4, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 13:15:54', '2022-02-16'),
(294, 'Record updated For Staff id 3', 3, 0, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 08:44:05', '2022-02-16'),
(295, 'New Record inserted On Appointment Created 102', 102, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 14:27:48', '2022-02-16'),
(296, 'New Record inserted On Appointment Created 103', 103, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 97.0.4692.99', '2022-02-16 14:28:06', '2022-02-16'),
(298, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 07:23:00', '2022-02-17'),
(300, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 07:25:27', '2022-02-17'),
(302, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 07:27:21', '2022-02-17'),
(304, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 08:01:10', '2022-02-17'),
(306, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 08:04:26', '2022-02-17'),
(308, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 08:46:26', '2022-02-17'),
(310, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 08:46:56', '2022-02-17'),
(312, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 08:47:58', '2022-02-17'),
(313, 'New Record inserted On Appointment Created 104', 104, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:43:33', '2022-02-17'),
(314, 'New Record inserted On Appointment Created 105', 105, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:47:58', '2022-02-17'),
(316, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:50:32', '2022-02-17'),
(318, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:51:33', '2022-02-17'),
(319, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:51:56', '2022-02-17'),
(321, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:53:57', '2022-02-17'),
(323, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:54:49', '2022-02-17'),
(325, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 10:55:47', '2022-02-17'),
(326, 'New Record inserted On Patient id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:01:33', '2022-02-17'),
(327, 'Record updated On Patient id 5', 5, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:01:33', '2022-02-17'),
(328, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:05:26', '2022-02-17'),
(329, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:05:49', '2022-02-17'),
(330, 'New Record inserted On Patient id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:07:23', '2022-02-17'),
(331, 'Record updated On Patient id 6', 6, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:07:23', '2022-02-17');
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(332, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:07:34', '2022-02-17'),
(333, 'New Record inserted On Patient id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:09:38', '2022-02-17'),
(334, 'Record updated On Patient id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:09:38', '2022-02-17'),
(335, 'New Record inserted On Appointment Created 106', 106, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:10:41', '2022-02-17'),
(336, 'New Record inserted On Patient id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:12:01', '2022-02-17'),
(337, 'Record updated On Patient id 8', 8, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:12:01', '2022-02-17'),
(338, 'New Record inserted On Patient id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:12:39', '2022-02-17'),
(339, 'Record updated On Patient id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:12:39', '2022-02-17'),
(340, 'New Record inserted On Appointment Created 107', 107, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:12:44', '2022-02-17'),
(341, 'New Record inserted On Patient id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:16:46', '2022-02-17'),
(342, 'Record updated On Patient id 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:16:46', '2022-02-17'),
(343, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:17:05', '2022-02-17'),
(344, 'New Record inserted On Patient id 11', 11, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:24:10', '2022-02-17'),
(345, 'Record updated On Patient id 11', 11, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:24:10', '2022-02-17'),
(346, 'New Record inserted On Appointment Created 108', 108, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:24:17', '2022-02-17'),
(347, 'New Record inserted On Patient id 12', 12, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:27:50', '2022-02-17'),
(348, 'Record updated On Patient id 12', 12, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:27:50', '2022-02-17'),
(349, 'New Record inserted On Appointment Created 109', 109, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:27:57', '2022-02-17'),
(350, 'New Record inserted On Patient id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:39:47', '2022-02-17'),
(351, 'Record updated On Patient id 13', 13, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:39:47', '2022-02-17'),
(352, 'New Record inserted On Appointment Created 110', 110, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:39:54', '2022-02-17'),
(354, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:49:41', '2022-02-17'),
(356, 'Record updated On Patient id 0', 0, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:50:02', '2022-02-17'),
(357, 'New Record inserted On Patient id 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:50:21', '2022-02-17'),
(358, 'Record updated On Patient id 14', 14, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:50:21', '2022-02-17'),
(359, 'New Record inserted On Patient id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:51:05', '2022-02-17'),
(360, 'Record updated On Patient id 15', 15, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:51:06', '2022-02-17'),
(361, 'New Record inserted On Appointment Created 111', 111, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:51:19', '2022-02-17'),
(362, 'New Record inserted On Patient id 16', 16, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:52:56', '2022-02-17'),
(363, 'Record updated On Patient id 16', 16, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:52:56', '2022-02-17'),
(364, 'New Record inserted On Patient id 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:53:24', '2022-02-17'),
(365, 'Record updated On Patient id 17', 17, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:53:24', '2022-02-17'),
(366, 'New Record inserted On Appointment Created 112', 112, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 11:53:31', '2022-02-17'),
(369, 'New Record inserted On Unit id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:26:23', '2022-02-17'),
(370, 'New Record inserted On Radiology Parameter id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:26:49', '2022-02-17'),
(371, 'New Record inserted On Radio id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:27:26', '2022-02-17'),
(374, 'New Record inserted On Radio id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:38:34', '2022-02-17'),
(375, 'Record deleted On  Radiology Paramete Details where radiology id 6', 6, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:38:59', '2022-02-17'),
(376, 'New Record inserted On Radiology Billing id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:40:02', '2022-02-17'),
(377, 'New Record inserted On Transactions id 147', 147, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:40:02', '2022-02-17'),
(378, 'New Record inserted On Read System Notification id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:43:50', '2022-02-17'),
(379, 'New Record inserted On Read System Notification id 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:44:07', '2022-02-17'),
(380, 'New Record inserted On Radio id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 13:54:48', '2022-02-17'),
(381, 'New Record inserted On Radio id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:00:35', '2022-02-17'),
(382, 'New Record inserted On Radio id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:12:33', '2022-02-17'),
(383, 'New Record inserted On Radio id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:13:41', '2022-02-17'),
(384, 'New Record inserted On Radiology Billing id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:15:43', '2022-02-17'),
(385, 'New Record inserted On Transactions id 148', 148, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:15:43', '2022-02-17'),
(386, 'Record deleted On Radiology Billing id 1', 1, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:21:10', '2022-02-17'),
(387, 'New Record inserted On Read System Notification id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:21:15', '2022-02-17'),
(388, 'New Record inserted On Read System Notification id 16', 16, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:21:21', '2022-02-17'),
(389, 'New Record inserted On Read System Notification id 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:21:23', '2022-02-17'),
(390, 'New Record inserted On Read System Notification id 18', 18, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:21:23', '2022-02-17'),
(391, 'New Record inserted On Radiology Billing id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:26:30', '2022-02-17'),
(392, 'New Record inserted On Transactions id 149', 149, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:26:30', '2022-02-17'),
(393, 'New Record inserted On Radiology Billing id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:27:10', '2022-02-17'),
(394, 'New Record inserted On Transactions id 150', 150, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:27:10', '2022-02-17'),
(395, 'New Record inserted On Radio id 11', 11, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:31:25', '2022-02-17'),
(396, 'New Record inserted On Radiology Billing id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:32:25', '2022-02-17'),
(397, 'New Record inserted On Transactions id 151', 151, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:32:25', '2022-02-17'),
(398, 'New Record inserted On Pathology Category id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:52:38', '2022-02-17'),
(399, 'New Record inserted On Unit id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:52:55', '2022-02-17'),
(400, 'New Record inserted On Pathology Parameter id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-17 14:54:53', '2022-02-17'),
(401, 'New Record inserted On Radiology Billing id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:13:22', '2022-02-18'),
(402, 'New Record inserted On Transactions id 152', 152, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:13:22', '2022-02-18'),
(403, 'New Record inserted On Radiology Billing id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:19:12', '2022-02-18'),
(404, 'New Record inserted On Transactions id 153', 153, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:19:12', '2022-02-18'),
(405, 'New Record inserted On Appointment Created 113', 113, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:22:13', '2022-02-18'),
(406, 'New Record inserted On Radiology Billing id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:48:39', '2022-02-18'),
(407, 'New Record inserted On Transactions id 155', 155, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:48:39', '2022-02-18'),
(408, 'New Record inserted On Radiology Billing id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:53:38', '2022-02-18'),
(409, 'New Record inserted On Transactions id 156', 156, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 11:53:38', '2022-02-18'),
(410, 'New Record inserted On Radiology Billing id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:02:15', '2022-02-18'),
(411, 'New Record inserted On Transactions id 157', 157, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:02:15', '2022-02-18'),
(412, 'New Record inserted On Radiology Billing id 11', 11, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:06:36', '2022-02-18'),
(413, 'New Record inserted On Transactions id 158', 158, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:06:36', '2022-02-18'),
(414, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:12:38', '2022-02-18'),
(415, 'New Record inserted On Radiology Billing id 12', 12, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:13:29', '2022-02-18'),
(416, 'New Record inserted On Transactions id 159', 159, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:13:29', '2022-02-18'),
(417, 'New Record inserted On Radiology Billing id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:31:41', '2022-02-18'),
(418, 'New Record inserted On Transactions id 160', 160, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:31:41', '2022-02-18'),
(419, 'New Record inserted On Radiology Billing id 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:34:10', '2022-02-18'),
(420, 'New Record inserted On Transactions id 161', 161, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 12:34:10', '2022-02-18'),
(421, 'Record deleted On  Radiology Paramete Details where radiology id 11', 11, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:07:45', '2022-02-18'),
(422, 'Record deleted On  Radiology Paramete Details where radiology id 10', 10, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:07:49', '2022-02-18'),
(423, 'Record deleted On Radiology Billing id 14', 14, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:08:17', '2022-02-18'),
(424, 'Record deleted On Radiology Billing id 13', 13, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:08:22', '2022-02-18'),
(425, 'Record deleted On Radiology Billing id 12', 12, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:08:27', '2022-02-18'),
(426, 'Record deleted On Radiology Billing id 11', 11, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:09:43', '2022-02-18'),
(427, 'Record deleted On Radiology Billing id 10', 10, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:09:50', '2022-02-18'),
(428, 'Record deleted On Radiology Billing id 9', 9, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:14:49', '2022-02-18'),
(429, 'Record deleted On Radiology Billing id 8', 8, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:14:53', '2022-02-18'),
(430, 'Record deleted On Radiology Billing id 7', 7, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:14:57', '2022-02-18'),
(431, 'Record deleted On Radiology Billing id 6', 6, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:01', '2022-02-18'),
(432, 'Record deleted On Radiology Billing id 5', 5, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:04', '2022-02-18'),
(433, 'Record deleted On Radiology Billing id 4', 4, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:09', '2022-02-18'),
(434, 'Record deleted On Radiology Billing id 3', 3, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:13', '2022-02-18'),
(435, 'Record deleted On Radiology Billing id 2', 2, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:16', '2022-02-18'),
(436, 'New Record inserted On Radiology Billing id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:29', '2022-02-18'),
(437, 'New Record inserted On Transactions id 162', 162, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 13:15:29', '2022-02-18'),
(438, 'New Record inserted On Radio id 12', 12, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 14:25:37', '2022-02-18'),
(439, 'New Record inserted On Radiology Billing id 16', 16, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 14:25:55', '2022-02-18'),
(440, 'New Record inserted On Transactions id 163', 163, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 14:25:55', '2022-02-18'),
(441, 'Record updated On Radiology Billing id 16', 16, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-18 14:35:15', '2022-02-18'),
(442, 'New Record inserted On Patient id 18', 18, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:00:17', '2022-02-21'),
(443, 'Record updated On Patient id 18', 18, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:00:17', '2022-02-21'),
(444, 'New Record inserted On Radio id 13', 13, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:06:28', '2022-02-21'),
(445, 'New Record inserted On Radiology Billing id 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:12:15', '2022-02-21'),
(446, 'New Record inserted On Transactions id 164', 164, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:12:15', '2022-02-21'),
(447, 'New Record inserted On Radio id 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:14:50', '2022-02-21'),
(448, 'New Record inserted On Radiology Billing id 18', 18, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:16:59', '2022-02-21'),
(449, 'New Record inserted On Transactions id 165', 165, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:16:59', '2022-02-21'),
(450, 'New Record inserted On Appointment Created 114', 114, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:19:49', '2022-02-21'),
(451, 'New Record inserted On Patient id 19', 19, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:30:36', '2022-02-21'),
(452, 'Record updated On Patient id 19', 19, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:30:36', '2022-02-21'),
(453, 'New Record inserted On Appointment Created 115', 115, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:30:51', '2022-02-21'),
(454, 'Record deleted On Radiology Billing id 16', 16, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:33:48', '2022-02-21'),
(455, 'Record deleted On Radiology Billing id 15', 15, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:33:55', '2022-02-21'),
(456, 'New Record inserted On Roles id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 07:38:23', '2022-02-21'),
(457, 'Record updated For Staff id 6', 6, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 08:01:48', '2022-02-21'),
(458, 'Record updated Change Password For Staff id 6', 6, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 08:18:18', '2022-02-21'),
(459, 'Record deleted On Roles id 10', 10, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 08:21:44', '2022-02-21'),
(460, 'Record deleted On Charges id 47', 47, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 10:42:56', '2022-02-21'),
(461, 'New Record inserted On Charge Type Master id 14', 14, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:17:54', '2022-02-21'),
(462, 'New Record inserted On Charge Type Module id 31', 31, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:17:54', '2022-02-21'),
(463, 'Record deleted On Charge Type Master id 14', 14, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:18:02', '2022-02-21'),
(464, 'Record deleted On Charges id 1', 1, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:19:10', '2022-02-21'),
(465, 'Record deleted On Charges id 48', 48, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:20:07', '2022-02-21'),
(466, 'Record updated For Staff id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:30:42', '2022-02-21'),
(467, 'Record updated For Staff id 3', 3, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:30:42', '2022-02-21'),
(468, 'Record deleted On Charges id 49', 49, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 11:40:45', '2022-02-21'),
(469, 'New Record inserted On Shift Details id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:07:49', '2022-02-21'),
(470, 'Record updated On Charge Categories id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:08:49', '2022-02-21'),
(471, 'New Record inserted On Charge Categories id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:10:02', '2022-02-21'),
(472, 'Record updated On Charge Categories id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:10:14', '2022-02-21'),
(473, 'New Record inserted On Shift Details id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:11:06', '2022-02-21'),
(474, 'New Record inserted On Appointment Created 116', 116, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:13:50', '2022-02-21'),
(475, 'New Record inserted On Appointment Created 117', 117, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:17:10', '2022-02-21'),
(476, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:58:12', '2022-02-21'),
(477, 'New Record inserted On Appointment Created 118', 118, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:58:47', '2022-02-21'),
(478, 'New Record inserted On Radio id 15', 15, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 12:59:25', '2022-02-21'),
(479, 'Record deleted On Radiology Billing id 17', 17, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:03:16', '2022-02-21'),
(480, 'Record deleted On Radiology Billing id 18', 18, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:03:19', '2022-02-21'),
(481, 'New Record inserted On Radiology Billing id 19', 19, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:07:31', '2022-02-21'),
(482, 'New Record inserted On Transactions id 171', 171, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:07:31', '2022-02-21'),
(483, 'New Record inserted On Radiology Billing id 20', 20, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:13:01', '2022-02-21'),
(484, 'New Record inserted On Transactions id 172', 172, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:13:01', '2022-02-21'),
(485, 'Record deleted On Radiology Billing id 19', 19, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:13:30', '2022-02-21'),
(486, 'Record updated On Radiology Billing id 20', 20, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:34:28', '2022-02-21'),
(487, 'Record deleted On Charge Categories id 5', 5, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:39:20', '2022-02-21'),
(488, 'New Record inserted On Charge Categories id 6', 6, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:39:36', '2022-02-21'),
(489, 'New Record inserted On Shift Details id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:41:54', '2022-02-21'),
(490, 'Record updated On Radiology Billing id 20', 20, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:51:58', '2022-02-21'),
(491, 'New Record inserted On Charge Categories id 7', 7, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:52:48', '2022-02-21'),
(492, 'Record deleted On Charge Categories id 7', 7, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 13:54:01', '2022-02-21'),
(493, 'New Record inserted On Radiology Billing id 21', 21, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:04:07', '2022-02-21'),
(494, 'New Record inserted On Transactions id 173', 173, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:04:07', '2022-02-21'),
(495, 'Record updated On Charge Categories id 6', 6, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:08:22', '2022-02-21'),
(496, 'New Record inserted On Charge Categories id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:09:12', '2022-02-21'),
(497, 'Record deleted On Charge Categories id 6', 6, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:10:04', '2022-02-21'),
(498, 'Record deleted On Charge Categories id 4', 4, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:10:05', '2022-02-21'),
(499, 'New Record inserted On Radiology Billing id 22', 22, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:14:41', '2022-02-21'),
(500, 'New Record inserted On Transactions id 174', 174, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:14:41', '2022-02-21'),
(501, 'Record deleted On Radiology Billing id 22', 22, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:14:56', '2022-02-21'),
(502, 'Record deleted On Radiology Billing id 21', 21, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:15:00', '2022-02-21'),
(503, 'Record deleted On Radiology Billing id 20', 20, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:15:04', '2022-02-21'),
(504, 'New Record inserted On Radiology Billing id 23', 23, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:15:24', '2022-02-21'),
(505, 'New Record inserted On Transactions id 175', 175, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:15:24', '2022-02-21'),
(506, 'Record deleted On Charges id 53', 53, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:18:11', '2022-02-21'),
(507, 'New Record inserted On Appointment Created 119', 119, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:20:37', '2022-02-21'),
(508, 'New Record inserted On Appointment Created 120', 120, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:21:13', '2022-02-21'),
(509, 'New Record inserted On Read System Notification id 19', 19, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:24:25', '2022-02-21'),
(510, 'New Record inserted On Read System Notification id 20', 20, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:24:35', '2022-02-21'),
(511, 'Record updated On Radiology Billing id 23', 23, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:27:21', '2022-02-21'),
(512, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:33:03', '2022-02-21'),
(513, 'New Record inserted On Tax Category id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:40:53', '2022-02-21'),
(514, 'New Record inserted On Appointment Created 121', 121, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:41:55', '2022-02-21'),
(515, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:44:07', '2022-02-21'),
(516, 'New Record inserted On Appointment Created 122', 122, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:44:22', '2022-02-21'),
(517, 'New Record inserted On Appointment Created 123', 123, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 14:48:47', '2022-02-21'),
(518, 'New Record inserted On Appointment Created 124', 124, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:01:58', '2022-02-21'),
(519, 'New Record inserted On Patient id 20', 20, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:05:18', '2022-02-21'),
(520, 'Record updated On Patient id 20', 20, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:05:18', '2022-02-21'),
(521, 'New Record inserted On Appointment Created 125', 125, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:05:33', '2022-02-21'),
(522, 'New Record inserted On Radiology Billing id 24', 24, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:06:58', '2022-02-21'),
(523, 'New Record inserted On Transactions id 185', 185, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-21 15:06:58', '2022-02-21'),
(524, 'New Record inserted On Appointment Created 126', 126, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:07:43', '2022-02-23'),
(525, 'New Record inserted On Patient id 21', 21, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:09:04', '2022-02-23'),
(526, 'Record updated On Patient id 21', 21, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:09:04', '2022-02-23'),
(527, 'New Record inserted On Appointment Created 127', 127, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:09:24', '2022-02-23'),
(528, 'New Record inserted On Radio id 16', 16, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:16:02', '2022-02-23'),
(529, 'New Record inserted On Radiology Billing id 25', 25, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:16:56', '2022-02-23'),
(530, 'New Record inserted On Transactions id 188', 188, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:16:56', '2022-02-23'),
(531, 'New Record inserted On Radio id 17', 17, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:24:11', '2022-02-23'),
(532, 'New Record inserted On Radiology Billing id 26', 26, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:24:57', '2022-02-23'),
(533, 'New Record inserted On Transactions id 189', 189, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:24:57', '2022-02-23'),
(534, 'New Record inserted On Radiology Billing id 27', 27, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:26:37', '2022-02-23'),
(535, 'New Record inserted On Transactions id 190', 190, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:26:37', '2022-02-23'),
(536, 'New Record inserted On Radiology Billing id 28', 28, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:28:21', '2022-02-23'),
(537, 'New Record inserted On Transactions id 191', 191, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:28:21', '2022-02-23'),
(538, 'Record updated For Staff id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 07:41:53', '2022-02-23'),
(539, 'New Record inserted On Appointment Created 128', 128, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 08:14:50', '2022-02-23'),
(540, 'New Record inserted On Charge Categories id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 08:42:40', '2022-02-23'),
(541, 'Record updated For Staff id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:16:22', '2022-02-23'),
(542, 'Record updated For Staff id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:16:22', '2022-02-23'),
(543, 'New Record inserted On Global Shift id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:26:16', '2022-02-23'),
(544, 'New Record inserted On Global Shift id 3', 3, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:26:46', '2022-02-23'),
(545, 'New Record inserted On Shift Details id 8', 8, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:28:08', '2022-02-23'),
(546, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:28:38', '2022-02-23'),
(547, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:28:52', '2022-02-23'),
(548, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:29:03', '2022-02-23'),
(549, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:29:19', '2022-02-23'),
(550, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:29:32', '2022-02-23'),
(551, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:29:37', '2022-02-23'),
(552, 'Record deleted On Charges id 23', 23, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:36:19', '2022-02-23'),
(553, 'New Record inserted On Appointment Created 129', 129, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:42:13', '2022-02-23'),
(554, 'New Record inserted On Appointment Created 130', 130, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:43:52', '2022-02-23'),
(555, 'New Record inserted On Appointment Created 131', 131, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:44:38', '2022-02-23'),
(556, 'New Record inserted On Specialist id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:46:26', '2022-02-23'),
(557, 'Record updated For Staff id 8', 8, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:47:33', '2022-02-23'),
(558, 'Record deleted On Global Shift id 3', 3, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:49:07', '2022-02-23'),
(559, 'New Record inserted On Global Shift id 4', 4, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:50:21', '2022-02-23'),
(560, 'Record updated On Global Shift id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:50:46', '2022-02-23'),
(561, 'Record deleted On Charges id 99', 99, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 09:52:10', '2022-02-23'),
(562, 'Record deleted On Charges id 100', 100, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:15:14', '2022-02-23'),
(563, 'Record deleted On Specialist id 1', 1, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:15:26', '2022-02-23'),
(564, 'Record deleted On Global Shift id 4', 4, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:15:41', '2022-02-23'),
(565, 'New Record inserted On Specialist id 2', 2, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:18:17', '2022-02-23'),
(566, 'Record updated For Staff id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:19:16', '2022-02-23'),
(567, 'New Record inserted On Global Shift id 5', 5, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:20:08', '2022-02-23'),
(568, 'New Record inserted On Shift Details id 9', 9, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:22:00', '2022-02-23'),
(569, 'New Record inserted On Appointment Created 132', 132, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:22:48', '2022-02-23'),
(570, 'New Record inserted On Appointment Created 133', 133, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:35:43', '2022-02-23'),
(571, 'New Record inserted On Appointment Created 134', 134, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:36:54', '2022-02-23'),
(572, 'New Record inserted On Appointment Created 135', 135, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:38:32', '2022-02-23'),
(573, 'New Record inserted On Appointment Created 136', 136, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:40:09', '2022-02-23'),
(574, 'Record updated On Tax Category id 1', 1, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:41:31', '2022-02-23'),
(575, 'New Record inserted On Appointment Created 137', 137, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 10:43:25', '2022-02-23'),
(576, 'Record updated On Shift Details id 7', 7, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:12:45', '2022-02-23'),
(577, 'New Record inserted On Appointment Created 0', 0, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:28:26', '2022-02-23'),
(578, 'New Record inserted On Appointment Created 138', 138, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:29:02', '2022-02-23'),
(579, 'New Record inserted On Appointment Created 139', 139, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:29:25', '2022-02-23'),
(580, 'New Record inserted On Appointment Created 140', 140, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:30:58', '2022-02-23'),
(581, 'New Record inserted On Appointment Created 141', 141, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:41:38', '2022-02-23'),
(582, 'New Record inserted On Appointment Created 142', 142, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:41:55', '2022-02-23'),
(583, 'New Record inserted On Appointment Created 143', 143, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:44:13', '2022-02-23'),
(584, 'New Record inserted On Patient id 22', 22, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:45:34', '2022-02-23'),
(585, 'Record updated On Patient id 22', 22, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:45:34', '2022-02-23'),
(586, 'New Record inserted On Appointment Created 144', 144, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:45:54', '2022-02-23'),
(587, 'New Record inserted On Radiology Billing id 29', 29, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:47:09', '2022-02-23'),
(588, 'New Record inserted On Transactions id 210', 210, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:47:09', '2022-02-23'),
(589, 'Record updated For Staff id 10', 10, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 11:54:09', '2022-02-23'),
(590, 'New Record inserted On Shift Details id 10', 10, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:16:19', '2022-02-23'),
(591, 'New Record inserted On Appointment Created 145', 145, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:17:06', '2022-02-23'),
(592, 'Record updated For Staff id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:19:16', '2022-02-23'),
(593, 'Record updated For Staff id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:19:16', '2022-02-23'),
(594, 'Record updated On Shift Details id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:26:36', '2022-02-23'),
(595, 'New Record inserted On Appointment Created 146', 146, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:27:33', '2022-02-23'),
(596, 'Record updated On Shift Details id 9', 9, 6, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 12:41:58', '2022-02-23'),
(597, 'New Record inserted On Appointment Created 147', 147, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 13:04:30', '2022-02-23'),
(598, 'New Record inserted On Appointment Created 148', 148, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 13:18:42', '2022-02-23'),
(599, 'New Record inserted On Appointment Created 149', 149, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 13:21:02', '2022-02-23'),
(600, 'New Record inserted On Appointment Created 150', 150, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 13:22:25', '2022-02-23'),
(601, 'New Record inserted On Radiology Billing id 30', 30, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:16:04', '2022-02-23'),
(602, 'New Record inserted On Transactions id 217', 217, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:16:04', '2022-02-23'),
(603, 'New Record inserted On Radiology Billing id 31', 31, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:20:45', '2022-02-23'),
(604, 'New Record inserted On Transactions id 218', 218, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:20:45', '2022-02-23'),
(605, 'New Record inserted On Radiology Billing id 32', 32, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:21:03', '2022-02-23'),
(606, 'New Record inserted On Transactions id 219', 219, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:21:03', '2022-02-23'),
(607, 'New Record inserted On Radiology Billing id 33', 33, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:21:50', '2022-02-23'),
(608, 'New Record inserted On Transactions id 220', 220, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:21:50', '2022-02-23'),
(609, 'New Record inserted On Radiology Billing id 34', 34, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:31:20', '2022-02-23'),
(610, 'New Record inserted On Transactions id 221', 221, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-23 14:31:21', '2022-02-23'),
(611, 'New Record inserted On Patient id 23', 23, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:36:10', '2022-02-24'),
(612, 'Record updated On Patient id 23', 23, 2, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:36:10', '2022-02-24'),
(613, 'New Record inserted On Appointment Created 151', 151, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:36:30', '2022-02-24'),
(614, 'New Record inserted On Appointment Created 152', 152, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:37:29', '2022-02-24'),
(615, 'Record updated On Shift Details id 9', 9, 2, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:46:36', '2022-02-24'),
(616, 'New Record inserted On Appointment Created 153', 153, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 08:52:15', '2022-02-24'),
(617, 'Record updated On Shift Details id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 10:34:18', '2022-02-24'),
(618, 'Record updated On Shift Details id 9', 9, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 10:34:43', '2022-02-24'),
(619, 'New Record inserted On Appointment Created 154', 154, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 10:44:03', '2022-02-24'),
(620, 'New Record inserted On Expense Head id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:14:35', '2022-02-24'),
(621, 'Record deleted On Expense Head id 1', 1, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:14:48', '2022-02-24'),
(622, 'New Record inserted On Symptoms Classification id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:34:00', '2022-02-24'),
(623, 'New Record inserted On Symptoms id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:34:18', '2022-02-24'),
(624, 'New Record inserted On operation_category id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:35:31', '2022-02-24'),
(625, 'New Record inserted On Operation id 1', 1, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:35:45', '2022-02-24'),
(626, 'Record deleted On roles Permissions where Role id  8', 8, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 11:55:50', '2022-02-24'),
(627, 'Record deleted On roles Permissions where Role id  8', 8, 1, 'Delete', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 12:02:19', '2022-02-24'),
(628, 'New Record inserted On Appointment Created 155', 155, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 12:04:32', '2022-02-24'),
(629, 'New Record inserted On Appointment Created 156', 156, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 12:05:58', '2022-02-24'),
(630, 'Record updated On Patient id 4', 4, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 12:36:04', '2022-02-24'),
(631, 'Record updatedOn Appointment Updated 156', 156, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-24 15:21:47', '2022-02-24'),
(632, 'Record updatedOn Appointment Updated 156', 156, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-25 11:57:54', '2022-02-25'),
(633, 'New Record inserted On Appointment Created 157', 157, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-25 11:58:16', '2022-02-25'),
(634, 'New Record inserted On Appointment Created 158', 158, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 07:34:43', '2022-02-26'),
(635, 'New Record inserted On Appointment Created 159', 159, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 07:37:30', '2022-02-26'),
(636, 'New Record inserted On Appointment Created 160', 160, 2, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 07:38:52', '2022-02-26'),
(637, 'New Record inserted On Appointment Created 161', 161, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:38:07', '2022-02-26'),
(638, 'New Record inserted On Appointment Created 162', 162, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:38:58', '2022-02-26'),
(639, 'New Record inserted On Appointment Created 163', 163, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:42:26', '2022-02-26'),
(640, 'New Record inserted On Appointment Created 164', 164, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:42:40', '2022-02-26'),
(641, 'New Record inserted On Appointment Created 165', 165, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:43:04', '2022-02-26'),
(642, 'New Record inserted On Appointment Created 166', 166, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:43:18', '2022-02-26'),
(643, 'New Record inserted On Appointment Created 167', 167, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 09:46:12', '2022-02-26'),
(644, 'New Record inserted On Appointment Created 168', 168, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 10:21:19', '2022-02-26'),
(645, 'New Record inserted On Appointment Created 169', 169, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 10:21:36', '2022-02-26'),
(646, 'New Record inserted On Appointment Created 170', 170, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 10:22:21', '2022-02-26'),
(647, 'New Record inserted On Appointment Created 171', 171, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 10:23:18', '2022-02-26'),
(648, 'New Record inserted On Appointment Created 172', 172, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 10:24:31', '2022-02-26');
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(649, 'New Record inserted On Appointment Created 173', 173, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:28:48', '2022-02-26'),
(650, 'New Record inserted On Appointment Created 174', 174, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:29:04', '2022-02-26'),
(651, 'New Record inserted On Appointment Created 175', 175, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:29:20', '2022-02-26'),
(652, 'New Record inserted On Appointment Created 176', 176, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:29:40', '2022-02-26'),
(653, 'New Record inserted On Appointment Created 177', 177, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:29:55', '2022-02-26'),
(654, 'New Record inserted On Appointment Created 178', 178, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:30:09', '2022-02-26'),
(655, 'New Record inserted On Appointment Created 179', 179, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:30:24', '2022-02-26'),
(656, 'New Record inserted On Appointment Created 180', 180, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:39:11', '2022-02-26'),
(657, 'New Record inserted On Appointment Created 181', 181, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:39:24', '2022-02-26'),
(658, 'New Record inserted On Appointment Created 182', 182, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:39:37', '2022-02-26'),
(659, 'New Record inserted On Appointment Created 183', 183, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:39:49', '2022-02-26'),
(660, 'New Record inserted On Appointment Created 184', 184, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:40:01', '2022-02-26'),
(661, 'New Record inserted On Appointment Created 185', 185, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:40:16', '2022-02-26'),
(662, 'New Record inserted On Appointment Created 186', 186, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:58:41', '2022-02-26'),
(663, 'New Record inserted On Appointment Created 187', 187, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:59:14', '2022-02-26'),
(664, 'New Record inserted On Appointment Created 188', 188, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 11:59:47', '2022-02-26'),
(665, 'New Record inserted On Patient id 24', 24, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:05:35', '2022-02-26'),
(666, 'Record updated On Patient id 24', 24, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:05:35', '2022-02-26'),
(667, 'New Record inserted On Appointment Created 189', 189, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:05:58', '2022-02-26'),
(668, 'New Record inserted On Patient id 25', 25, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:06:30', '2022-02-26'),
(669, 'Record updated On Patient id 25', 25, 1, 'Update', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:06:30', '2022-02-26'),
(670, 'New Record inserted On Appointment Created 190', 190, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:06:54', '2022-02-26'),
(671, 'New Record inserted On Appointment Created 191', 191, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:07:25', '2022-02-26'),
(672, 'New Record inserted On Appointment Created 192', 192, 1, 'Insert', '192.140.145.27', 'Windows 10', 'Chrome 98.0.4758.102', '2022-02-26 12:12:46', '2022-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `medication_report`
--

CREATE TABLE `medication_report` (
  `id` int(11) NOT NULL,
  `medicine_dosage_id` int(11) DEFAULT NULL,
  `pharmacy_id` int(11) DEFAULT NULL,
  `opd_details_id` int(11) DEFAULT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `remark` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_bad_stock`
--

CREATE TABLE `medicine_bad_stock` (
  `id` int(11) NOT NULL,
  `medicine_batch_details_id` int(11) DEFAULT NULL,
  `pharmacy_id` int(11) DEFAULT NULL,
  `outward_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_batch_details`
--

CREATE TABLE `medicine_batch_details` (
  `id` int(11) NOT NULL,
  `supplier_bill_basic_id` int(11) DEFAULT NULL,
  `pharmacy_id` int(100) DEFAULT NULL,
  `inward_date` datetime NOT NULL,
  `expiry` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `packing_qty` varchar(100) NOT NULL,
  `purchase_rate_packing` varchar(100) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `mrp` float(10,2) DEFAULT 0.00,
  `purchase_price` float(10,2) DEFAULT 0.00,
  `tax` float(10,2) DEFAULT 0.00,
  `sale_rate` float(10,2) DEFAULT 0.00,
  `batch_amount` float(10,2) DEFAULT 0.00,
  `amount` float(10,2) DEFAULT 0.00,
  `available_quantity` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(11) NOT NULL,
  `medicine_category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_dosage`
--

CREATE TABLE `medicine_dosage` (
  `id` int(11) NOT NULL,
  `medicine_category_id` int(11) DEFAULT NULL,
  `dosage` varchar(100) NOT NULL,
  `charge_units_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplier`
--

CREATE TABLE `medicine_supplier` (
  `id` int(11) NOT NULL,
  `supplier` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `supplier_person` varchar(200) NOT NULL,
  `supplier_person_contact` varchar(200) NOT NULL,
  `supplier_drug_licence` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `file` varchar(200) NOT NULL,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` int(11) DEFAULT 0,
  `is_sms` int(11) DEFAULT 0,
  `is_mobileapp` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL,
  `display_notification` int(11) NOT NULL,
  `display_sms` int(11) NOT NULL,
  `template` longtext DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `subject` text DEFAULT NULL,
  `variables` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_mobileapp`, `is_notification`, `display_notification`, `display_sms`, `template`, `template_id`, `subject`, `variables`, `created_at`) VALUES
(1, 'opd_patient_registration', 1, 0, 1, 1, 1, 1, 'Dear {{patient_name}} your OPD Registration at Smart Hospital is successful on date {{appointment_date}} with Patient Id {{patient_id}} and OPD No {{opdno}}', '', 'OPD Patient', '{{patient_name}} {{appointment_date}} {{patient_id}} {{opdno}}', '2021-10-22 05:57:53'),
(2, 'ipd_patient_registration', 1, 0, 0, 0, 1, 1, 'Dear {{patient_name}} your IPD Registration at Smart Hospital is successful  with Patient Id {{patient_id}} and IPD No {{ipd_no}}', '', 'IPD Patient Registration', '{{patient_name}} {{patient_id}} {{ipd_no}}', '2021-10-22 05:59:33'),
(3, 'ipd_patient_discharged', 1, 0, 0, 0, 1, 1, 'IPD Patient {{patient_name}} is now discharged from Smart Hospital\nTotal bill amount is {{currency_symbol}}{{total_amount}}\nTotal paid amount is {{currency_symbol}}{{paid_amount}}\nTotal balance bill amount is {{currency_symbol}}{{balance_amount}}', '', 'IPD Patient Discharge', '{{patient_name}} {{currency_symbol}} {{total_amount}} {{paid_amount}} {balance_amount}}', '2021-10-25 02:32:35'),
(5, 'login_credential', 1, 0, 0, 0, 0, 1, 'Hello {{display_name}} your Smart Hospital login details are Url: {{url}} Username: {{username}} Password: {{password}}', '', 'Smart Hospital Login Credential', '{{display_name}} {{url}} {{username}} {{password}}', '2021-10-22 06:18:21'),
(6, 'appointment_approved', 1, 0, 0, 0, 1, 1, 'Dear {{patient_name}} your appointment with {{staff_name}} {{staff_surname}} is confirmed on {{date}} with appointment no: {{appointment_no}}', '', 'Appointment Approved', '{{patient_name}} {{staff_name}}\n{{staff_surname}}  {{date}} {{appointment_no}}', '2021-10-22 23:56:24'),
(7, 'live_meeting', 1, 0, 0, 0, 0, 1, 'Dear staff, your live meeting {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute.', '', 'Live Meeting', '{{title}} {{date}} {{duration}}', '2021-10-22 23:54:58'),
(8, 'live_consult', 1, 0, 0, 0, 1, 1, 'Dear patient, your live consultation {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute.', '', 'Live Consultation', '{{title}} {{date}} {{duration}}', '2021-10-22 06:28:26'),
(9, 'opd_patient_discharged', 1, 0, 0, 0, 1, 1, 'OPD No {{opd_no}}  {{patient_name}} is now discharged from Smart Hospital.\r\n\r\nTotal bill amount was {{currency_symbol}}  {{total_amount}} \r\nTotal paid amount was {{currency_symbol}}{{paid_amount}}  \r\nTotal balance amount is {{currency_symbol}}{{balance_amount}}', '', 'OPD Patient Discharged', '{{patient_name}} {{mobileno}} {{email}} {{dob}} {{gender}} {{patient_unique_id}} {{opd_no}}{{currency_symbol}} {{billing_amount}}', '2021-10-22 06:25:06'),
(10, 'forgot_password', 1, 0, 0, 0, 0, 0, 'Dear  {{display_name}}, recently a request was submitted to reset password for your account with email: {{email}}. If you didn\'t make the request, just ignore this email, otherwise you can reset your password using this link <a href=\'{{resetpasslink}}\'>click here to reset your password</a>, if you\'re having trouble clicking the password reset link, copy and paste below URL  into your web browser. {{resetpasslink}} <br> Regards,  <br>\r\nSmart Hospital', '', 'Reset Password Request', '{{display_name}}  {{email}}  {{resetpasslink}', '2021-10-22 06:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_note`
--

CREATE TABLE `nurse_note` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nurse_notes_comment`
--

CREATE TABLE `nurse_notes_comment` (
  `id` int(11) NOT NULL,
  `nurse_note_id` int(11) DEFAULT NULL,
  `comment_staffid` int(11) DEFAULT NULL,
  `comment_staff` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opd_details`
--

CREATE TABLE `opd_details` (
  `id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `is_ipd_moved` int(11) NOT NULL DEFAULT 0,
  `discharged` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opd_details`
--

INSERT INTO `opd_details` (`id`, `case_reference_id`, `patient_id`, `generated_by`, `is_ipd_moved`, `discharged`, `created_at`) VALUES
(2, 2, 1, 2, 0, 'no', '2022-01-18 11:05:40'),
(3, 3, 1, 1, 0, 'no', '2022-01-20 12:27:27'),
(4, 4, 1, 1, 0, 'no', '2022-01-20 12:36:14'),
(5, 5, NULL, 1, 0, 'no', '2022-01-26 13:09:58'),
(6, 6, NULL, 1, 0, 'no', '2022-01-26 13:11:13'),
(7, 7, 4, 1, 0, 'no', '2022-01-26 13:22:59'),
(8, 8, 4, 1, 0, 'no', '2022-01-26 13:29:16'),
(10, 10, 4, 1, 0, 'yes', '2022-01-26 13:45:28'),
(11, 11, 4, 1, 0, 'no', '2022-01-27 10:20:53'),
(12, 12, NULL, 1, 0, 'no', '2022-01-27 10:26:05'),
(13, 13, 4, 1, 0, 'no', '2022-01-27 11:04:44'),
(18, 18, 4, 1, 0, 'no', '2022-01-31 10:18:20'),
(20, 20, 4, 1, 0, 'no', '2022-01-31 10:21:51'),
(21, 21, 4, 1, 0, 'no', '2022-01-31 10:22:32'),
(22, 22, 4, 1, 0, 'no', '2022-01-31 11:19:31'),
(23, 23, 4, 1, 0, 'no', '2022-01-31 11:20:32'),
(24, 24, 4, 1, 0, 'no', '2022-01-31 11:21:14'),
(25, 25, 4, 1, 0, 'no', '2022-01-31 11:56:37'),
(26, 26, 4, 1, 0, 'no', '2022-01-31 11:57:58'),
(27, 27, 4, 1, 0, 'no', '2022-01-31 11:58:45'),
(28, 28, 4, 1, 0, 'no', '2022-01-31 12:36:05'),
(29, 29, NULL, 1, 0, 'no', '2022-01-31 12:37:42'),
(30, 30, NULL, 1, 0, 'no', '2022-01-31 12:38:36'),
(31, 31, 4, 1, 0, 'no', '2022-01-31 12:44:56'),
(32, 32, NULL, 1, 0, 'no', '2022-01-31 12:48:24'),
(33, 33, NULL, 1, 0, 'no', '2022-01-31 12:51:18'),
(34, 34, 4, 1, 0, 'no', '2022-01-31 12:51:54'),
(35, 35, NULL, 1, 0, 'no', '2022-01-31 12:59:10'),
(36, 36, 4, 1, 0, 'no', '2022-01-31 12:59:40'),
(37, 37, NULL, 1, 0, 'no', '2022-01-31 13:13:54'),
(38, 38, 4, 1, 0, 'no', '2022-01-31 13:28:50'),
(39, 39, 4, 1, 0, 'no', '2022-01-31 13:47:07'),
(40, 40, NULL, 1, 0, 'no', '2022-01-31 13:47:38'),
(41, 41, 4, 1, 0, 'no', '2022-01-31 13:48:04'),
(42, 42, 4, 1, 0, 'no', '2022-01-31 13:49:02'),
(43, 43, 4, 1, 0, 'no', '2022-01-31 14:01:35'),
(44, 44, 4, 1, 0, 'no', '2022-01-31 14:11:16'),
(45, 45, NULL, 1, 0, 'no', '2022-01-31 14:15:00'),
(46, 46, NULL, 1, 0, 'no', '2022-01-31 14:15:24'),
(47, 47, 4, 1, 0, 'no', '2022-01-31 14:22:49'),
(48, 48, 4, 1, 0, 'no', '2022-01-31 14:28:50'),
(49, 49, NULL, 1, 0, 'no', '2022-01-31 14:29:50'),
(50, 50, NULL, 1, 0, 'no', '2022-01-31 14:32:58'),
(51, 51, 4, 1, 0, 'no', '2022-01-31 14:33:44'),
(52, 52, NULL, 1, 0, 'no', '2022-01-31 14:35:06'),
(53, 53, NULL, 1, 0, 'no', '2022-01-31 14:36:29'),
(54, 54, 4, 1, 0, 'no', '2022-01-31 14:36:54'),
(55, 55, 4, 1, 0, 'no', '2022-01-31 14:39:39'),
(56, 56, 4, 1, 0, 'no', '2022-01-31 14:40:21'),
(57, 57, 4, 1, 0, 'no', '2022-01-31 14:43:23'),
(58, 58, 4, 1, 0, 'no', '2022-01-31 14:47:25'),
(59, 59, 4, 1, 0, 'no', '2022-01-31 14:50:24'),
(60, 60, 4, 1, 0, 'no', '2022-01-31 14:51:43'),
(61, 61, NULL, 1, 0, 'no', '2022-01-31 14:52:41'),
(62, 62, 4, 1, 0, 'no', '2022-01-31 14:53:20'),
(63, 63, NULL, 1, 0, 'no', '2022-01-31 14:53:51'),
(64, 64, 4, 1, 0, 'no', '2022-01-31 14:54:15'),
(65, 65, NULL, 1, 0, 'no', '2022-01-31 14:55:16'),
(66, 66, 4, 1, 0, 'no', '2022-01-31 14:55:35'),
(67, 67, NULL, 1, 0, 'no', '2022-02-01 14:49:55'),
(68, 68, 4, 1, 0, 'no', '2022-02-01 14:52:36'),
(69, 69, NULL, 1, 0, 'no', '2022-02-01 14:52:57'),
(71, 71, NULL, 1, 0, 'no', '2022-02-01 14:54:25'),
(72, 72, 4, 1, 0, 'no', '2022-02-01 14:54:55'),
(73, 73, NULL, 1, 0, 'no', '2022-02-01 14:55:06'),
(74, 74, 4, 1, 0, 'no', '2022-02-01 14:55:51'),
(75, 75, NULL, 1, 0, 'no', '2022-02-01 14:56:30'),
(76, 76, 4, 1, 0, 'no', '2022-02-01 14:56:43'),
(77, 77, NULL, 1, 0, 'no', '2022-02-01 14:57:07'),
(78, 78, 1, 1, 0, 'no', '2022-02-01 14:57:19'),
(79, 79, NULL, 1, 0, 'no', '2022-02-01 14:57:41'),
(80, 80, 4, 1, 0, 'no', '2022-02-01 14:57:54'),
(81, 81, 3, 1, 0, 'no', '2022-02-01 14:58:17'),
(82, 82, 2, 1, 0, 'no', '2022-02-01 14:58:37'),
(83, 83, 3, 1, 0, 'no', '2022-02-01 15:09:14'),
(84, 84, NULL, 1, 0, 'no', '2022-02-01 15:09:31'),
(85, 85, 1, 1, 0, 'no', '2022-02-01 15:15:10'),
(86, 86, 1, 1, 0, 'no', '2022-02-01 15:15:45'),
(87, 87, 1, 1, 0, 'no', '2022-02-01 15:16:00'),
(88, 88, 4, 1, 0, 'no', '2022-02-01 15:16:24'),
(89, 89, 1, 1, 0, 'no', '2022-02-01 15:17:01'),
(90, 90, 1, 1, 0, 'no', '2022-02-01 15:18:17'),
(91, 91, 1, 1, 0, 'no', '2022-02-01 15:18:38'),
(92, 92, 1, 1, 0, 'no', '2022-02-01 15:19:03'),
(93, 93, 3, 1, 0, 'no', '2022-02-01 15:19:23'),
(94, 94, 1, 1, 0, 'no', '2022-02-01 15:19:57'),
(95, 95, 1, 1, 0, 'no', '2022-02-01 15:20:10'),
(96, 96, 1, 1, 0, 'no', '2022-02-01 15:20:39'),
(97, 97, NULL, 1, 0, 'no', '2022-02-01 15:33:58'),
(98, 98, 1, 1, 0, 'no', '2022-02-01 15:34:12'),
(99, 99, 1, 1, 0, 'no', '2022-02-01 15:34:34'),
(100, 100, 1, 1, 0, 'no', '2022-02-01 15:34:56'),
(101, 101, 1, 1, 0, 'no', '2022-02-01 15:35:19'),
(102, 102, 4, 1, 0, 'no', '2022-02-16 09:20:33'),
(103, 103, 1, 1, 0, 'no', '2022-02-16 10:07:05'),
(104, 104, 4, 1, 0, 'no', '2022-02-16 12:49:41'),
(105, 105, 4, 1, 0, 'no', '2022-02-16 12:51:33'),
(106, 106, 1, 1, 0, 'no', '2022-02-16 12:51:57'),
(107, 107, 4, 4, 0, 'no', '2022-02-16 13:07:44'),
(108, 108, 4, 4, 0, 'no', '2022-02-16 13:08:07'),
(109, 109, 4, 4, 0, 'no', '2022-02-16 13:11:31'),
(110, 110, NULL, 4, 0, 'no', '2022-02-16 13:11:58'),
(111, 111, 4, 4, 0, 'no', '2022-02-16 13:12:26'),
(112, 112, NULL, 4, 0, 'no', '2022-02-16 13:12:48'),
(113, 113, 1, 4, 0, 'no', '2022-02-16 13:14:57'),
(114, 114, 1, 4, 0, 'no', '2022-02-16 13:15:29'),
(115, 115, 3, 4, 0, 'no', '2022-02-16 13:15:54'),
(116, 116, 2, 1, 0, 'no', '2022-02-16 14:27:48'),
(117, 117, 3, 1, 0, 'no', '2022-02-16 14:28:06'),
(118, 118, 3, 1, 0, 'no', '2022-02-17 10:43:33'),
(119, 119, 7, 1, 0, 'no', '2022-02-17 11:10:41'),
(120, 120, 21, 1, 0, 'no', '2022-02-23 10:40:09'),
(121, 121, 20, 1, 0, 'no', '2022-02-25 11:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `operation` varchar(250) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `operation`, `category_id`, `is_active`, `created_at`) VALUES
(1, 'General', 1, 'yes', '2022-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `operation_category`
--

CREATE TABLE `operation_category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operation_category`
--

INSERT INTO `operation_category` (`id`, `category`, `is_active`, `created_at`) VALUES
(1, 'Surgery', 'yes', '2022-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `operation_theatre`
--

CREATE TABLE `operation_theatre` (
  `id` int(11) NOT NULL,
  `opd_details_id` int(11) DEFAULT NULL,
  `ipd_details_id` int(11) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `operation_id` int(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `operation_type` varchar(100) DEFAULT NULL,
  `consultant_doctor` int(11) DEFAULT NULL,
  `ass_consultant_1` varchar(50) DEFAULT NULL,
  `ass_consultant_2` varchar(50) DEFAULT NULL,
  `anesthetist` varchar(50) DEFAULT NULL,
  `anaethesia_type` varchar(50) DEFAULT NULL,
  `ot_technician` varchar(100) DEFAULT NULL,
  `ot_assistant` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `id` int(11) NOT NULL,
  `organisation_name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact_person_name` varchar(200) NOT NULL,
  `contact_person_phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organisations_charges`
--

CREATE TABLE `organisations_charges` (
  `id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `org_charge` float(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology`
--

CREATE TABLE `pathology` (
  `id` int(11) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `pathology_category_id` int(11) DEFAULT NULL,
  `unit` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology_billing`
--

CREATE TABLE `pathology_billing` (
  `id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `ipd_prescription_basic_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `total` float(10,2) DEFAULT 0.00,
  `discount_percentage` float(10,2) DEFAULT 0.00,
  `discount` float(10,2) DEFAULT 0.00,
  `tax_percentage` float(10,2) DEFAULT 0.00,
  `tax` float(10,2) DEFAULT 0.00,
  `net_amount` float(10,2) DEFAULT 0.00,
  `transaction_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology_category`
--

CREATE TABLE `pathology_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_category`
--

INSERT INTO `pathology_category` (`id`, `category_name`, `created_at`) VALUES
(1, 'Blood Test', '2022-02-17 14:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_parameter`
--

CREATE TABLE `pathology_parameter` (
  `id` int(11) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `test_value` varchar(100) NOT NULL,
  `reference_range` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_parameter`
--

INSERT INTO `pathology_parameter` (`id`, `parameter_name`, `test_value`, `reference_range`, `gender`, `unit`, `description`, `created_at`) VALUES
(1, 'count', '', '30', '', 2, '15 to 30', '2022-02-17 14:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_parameterdetails`
--

CREATE TABLE `pathology_parameterdetails` (
  `id` int(11) NOT NULL,
  `pathology_id` int(11) DEFAULT NULL,
  `pathology_parameter_id` int(11) DEFAULT NULL,
  `created_id` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology_report`
--

CREATE TABLE `pathology_report` (
  `id` int(11) NOT NULL,
  `pathology_bill_id` int(11) DEFAULT NULL,
  `pathology_id` int(11) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `parameter_update` date DEFAULT NULL,
  `tax_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `apply_charge` float(10,2) NOT NULL,
  `collection_date` date DEFAULT NULL,
  `collection_specialist` int(100) DEFAULT NULL,
  `pathology_center` varchar(250) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pathology_report` varchar(255) DEFAULT NULL,
  `report_name` text DEFAULT NULL,
  `pathology_result` text DEFAULT NULL COMMENT 'test result',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology_report_parameterdetails`
--

CREATE TABLE `pathology_report_parameterdetails` (
  `id` int(11) NOT NULL,
  `pathology_report_id` int(11) DEFAULT NULL,
  `pathology_parameterdetail_id` int(11) DEFAULT NULL,
  `pathology_report_value` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `day` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `marital_status` varchar(100) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `blood_bank_product_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `patient_type` varchar(200) NOT NULL,
  `identification_number` varchar(60) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `is_ipd` varchar(200) NOT NULL,
  `app_key` varchar(200) NOT NULL,
  `insurance_id` varchar(250) DEFAULT NULL,
  `insurance_validity` date DEFAULT NULL,
  `is_dead` varchar(255) NOT NULL DEFAULT 'no',
  `is_active` varchar(255) DEFAULT 'no',
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `lang_id`, `patient_name`, `dob`, `age`, `month`, `day`, `image`, `mobileno`, `email`, `gender`, `marital_status`, `blood_group`, `blood_bank_product_id`, `address`, `guardian_name`, `patient_type`, `identification_number`, `known_allergies`, `note`, `is_ipd`, `app_key`, `insurance_id`, `insurance_validity`, `is_dead`, `is_active`, `disable_at`, `created_at`) VALUES
(1, NULL, 'Sunny', NULL, 50, 10, 0, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-01-20 12:30:53'),
(2, NULL, 'Naveed', '2001-07-14', 20, 6, 3, 'uploads/patient_images/no_image.png', '03066556452', '', 'Male', 'Single', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-01-17 11:34:26'),
(3, NULL, 'Asad', NULL, 20, 6, 1, 'uploads/patient_images/no_image.png', '', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-01-18 11:09:31'),
(4, NULL, 'z', NULL, 12, 0, 0, 'uploads/patient_images/no_image.png', '', 'z@gmail.com', 'Male', 'Single', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-24 12:36:04'),
(5, NULL, '123', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:01:33'),
(6, NULL, '123', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:07:23'),
(7, NULL, '123', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:09:38'),
(8, NULL, '22342', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:12:01'),
(9, NULL, '121', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:12:39'),
(10, NULL, '123', '2022-02-17', 0, 0, 1, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:16:46'),
(11, NULL, '123', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:24:10'),
(12, NULL, '123', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:27:50'),
(13, NULL, 'rtw', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:39:47'),
(14, NULL, 'test', NULL, 22, 0, 0, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:50:21'),
(15, NULL, 'test333', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:51:06'),
(16, NULL, 'ter', '2021-12-26', 0, 1, 22, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:52:56'),
(17, NULL, 'tersf', '2022-01-30', 0, 0, 18, 'uploads/patient_images/no_image.png', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-17 11:53:24'),
(18, NULL, 'jani', NULL, 22, 1, 1, 'uploads/patient_images/no_image.png', '03445633214', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-21 07:00:17'),
(19, NULL, 'Ahmed', NULL, 22, 1, 1, 'uploads/patient_images/no_image.png', '03445633216', '', 'Male', 'Single', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-21 07:30:36'),
(20, NULL, 'Waqas', NULL, 20, 1, 1, 'uploads/patient_images/no_image.png', '03221455765', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-21 15:05:18'),
(21, NULL, 'Raja', NULL, 25, 1, 1, 'uploads/patient_images/no_image.png', '03554277871', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-23 07:09:04'),
(22, NULL, 'Amin', NULL, 22, 1, 1, 'uploads/patient_images/no_image.png', '03662711872', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-23 11:45:34'),
(23, NULL, 'Yaqoob', NULL, 20, 1, 1, 'uploads/patient_images/no_image.png', '03445388712', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-24 08:36:10'),
(24, NULL, 'naveed', NULL, 19, 1, 1, 'uploads/patient_images/no_image.png', '', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-26 12:05:35'),
(25, NULL, 'naveed', NULL, 19, 1, 1, 'uploads/patient_images/no_image.png', '', '', 'Male', '', '', NULL, '', '', '', '', '', '', '', '', '', NULL, 'no', 'yes', NULL, '2022-02-26 12:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `patient_bed_history`
--

CREATE TABLE `patient_bed_history` (
  `id` int(11) NOT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `bed_group_id` int(11) DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `revert_reason` text DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `is_active` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient_charges`
--

CREATE TABLE `patient_charges` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `opd_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `standard_charge` float(10,2) DEFAULT 0.00,
  `tpa_charge` float(10,2) DEFAULT 0.00,
  `tax` float(10,2) DEFAULT 0.00,
  `apply_charge` float(10,2) DEFAULT 0.00,
  `amount` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_charges`
--

INSERT INTO `patient_charges` (`id`, `date`, `ipd_id`, `opd_id`, `qty`, `charge_id`, `standard_charge`, `tpa_charge`, `tax`, `apply_charge`, `amount`, `note`, `created_at`) VALUES
(5, '2022-01-26 18:09:58', NULL, 5, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-26 13:09:58'),
(6, '2022-01-26 18:11:13', NULL, 6, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-26 13:11:13'),
(7, '2022-01-26 18:22:59', NULL, 7, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-26 13:22:59'),
(8, '2022-01-26 18:29:16', NULL, 8, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-26 13:29:16'),
(10, '2022-01-26 18:45:28', NULL, 10, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-26 13:45:28'),
(11, '2022-01-27 15:20:53', NULL, 11, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-27 10:20:53'),
(12, '2022-01-27 15:26:05', NULL, 12, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-27 10:26:05'),
(14, '2022-01-27 16:04:44', NULL, 13, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-27 11:04:44'),
(33, '2022-01-31 17:37:42', NULL, 29, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 12:37:42'),
(34, '2022-01-31 17:38:36', NULL, 30, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 12:38:36'),
(36, '2022-01-31 17:48:24', NULL, 32, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 12:48:24'),
(37, '2022-01-31 17:51:18', NULL, 33, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 12:51:18'),
(39, '2022-01-31 17:59:10', NULL, 35, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 12:59:10'),
(41, '2022-01-31 18:13:54', NULL, 37, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 13:13:54'),
(44, '2022-01-31 18:47:38', NULL, 40, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 13:47:38'),
(49, '2022-01-31 19:15:00', NULL, 45, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:15:00'),
(50, '2022-01-31 19:15:24', NULL, 46, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:15:24'),
(53, '2022-01-31 19:29:50', NULL, 49, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:29:50'),
(54, '2022-01-31 19:32:58', NULL, 50, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:32:58'),
(56, '2022-01-31 19:35:06', NULL, 52, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:35:06'),
(57, '2022-01-31 19:36:29', NULL, 53, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:36:29'),
(65, '2022-01-31 19:52:41', NULL, 61, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:52:41'),
(67, '2022-01-31 19:53:51', NULL, 63, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:53:51'),
(69, '2022-01-31 19:55:16', NULL, 65, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-01-31 14:55:16'),
(71, '2022-02-01 19:49:55', NULL, 67, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:49:55'),
(73, '2022-02-01 19:52:57', NULL, 69, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:52:57'),
(75, '2022-02-01 19:54:25', NULL, 71, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:54:25'),
(77, '2022-02-01 19:55:06', NULL, 73, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:55:06'),
(79, '2022-02-01 19:56:30', NULL, 75, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:56:30'),
(81, '2022-02-01 19:57:07', NULL, 77, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:57:07'),
(83, '2022-02-01 19:57:41', NULL, 79, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 14:57:41'),
(88, '2022-02-01 20:09:31', NULL, 84, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 15:09:31'),
(101, '2022-02-01 20:33:58', NULL, 97, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-01 15:33:58'),
(114, '2022-02-16 18:11:58', NULL, 110, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-16 13:11:58'),
(116, '2022-02-16 18:12:48', NULL, 112, 1, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, '2022-02-16 13:12:48'),
(124, '2022-02-23 15:40:09', NULL, 120, 1, 102, 2000.00, 0.00, 0.00, 2000.00, 2000.00, NULL, '2022-02-23 10:40:09'),
(125, '2022-02-25 16:57:54', NULL, 121, 1, 50, 1200.00, 0.00, 50.00, 1200.00, 1250.00, NULL, '2022-02-25 11:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `patient_id_card`
--

CREATE TABLE `patient_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_patient_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_guardian_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_patient_unique_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_id_card`
--

INSERT INTO `patient_id_card` (`id`, `title`, `hospital_name`, `hospital_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_patient_name`, `enable_guardian_name`, `enable_patient_unique_id`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`, `created_at`) VALUES
(1, 'Sample Patient Id Card', 'Royal Hospital', 'Nr Loyala Ashram, A 69, Shahpura Rd, Manisha Market, Sector  Bhopal', 'background.jpg', 'logo.jpg', 'signature.png', '#0796f5', 1, 1, 1, 1, 1, 1, 1, 1, '2021-10-19 07:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `patient_timeline`
--

CREATE TABLE `patient_timeline` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `generated_users_type` varchar(100) NOT NULL,
  `generated_users_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `staff_payslip_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-21 23:23:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-21 23:22:44'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-21 23:24:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-21 23:23:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-21 23:33:19'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 0, 1, '2018-12-16 22:55:14'),
(32, 10, 'Item Stock', 'item_stock', 1, 1, 1, 1, '2018-06-21 23:35:17'),
(33, 10, 'Item', 'item', 1, 1, 1, 1, '2018-06-21 23:35:40'),
(34, 10, 'Store', 'store', 1, 1, 1, 1, '2018-06-21 23:36:02'),
(35, 10, 'Supplier', 'supplier', 1, 1, 1, 1, '2018-06-21 23:36:25'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-21 23:41:17'),
(44, 13, 'Email / SMS', 'email_sms', 1, 0, 0, 0, '2018-06-21 23:40:54'),
(48, 14, 'OPD Report', 'opd_report', 1, 0, 0, 0, '2018-12-17 21:59:18'),
(53, 15, 'Languages', 'languages', 1, 1, 0, 0, '2021-09-12 22:56:36'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-04 22:08:35'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-04 22:08:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-04 22:08:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-04 22:08:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-04 22:08:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-04 22:08:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-08 16:50:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-08 16:50:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-21 23:46:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-21 23:46:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-21 23:47:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-21 23:47:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-02 21:39:34'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-21 23:48:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-21 23:50:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-21 23:50:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-21 23:50:04'),
(84, 17, 'Complain', 'complain', 1, 1, 1, 1, '2018-12-18 22:11:37'),
(85, 17, 'Setup Front Office', 'setup_front_office', 1, 1, 1, 1, '2018-11-14 13:49:58'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-21 23:53:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-21 23:53:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-21 23:53:10'),
(89, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2021-09-13 02:12:50'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-21 23:52:51'),
(91, 14, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2021-09-13 02:13:00'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-21 23:54:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-21 23:34:33'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 1, 1, 1, '2018-07-01 23:17:41'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 1, '2020-08-24 14:48:58'),
(110, 18, 'LeaveTypes', 'leave_types', 1, 1, 1, 1, '2021-10-26 11:54:30'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-25 16:57:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-25 16:57:07'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-02 20:13:35'),
(126, 15, 'Users', 'users', 1, 0, 0, 0, '2021-09-21 19:43:59'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-02 21:42:29'),
(129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-04 21:08:52'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-08 17:17:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-08 17:17:17'),
(132, 23, 'OPD Patient', 'opd_patient', 1, 1, 1, 1, '2018-12-19 22:37:26'),
(134, 23, 'Prescription', 'prescription', 1, 1, 1, 1, '2018-10-10 14:28:26'),
(135, 23, 'Visit', 'visit', 1, 1, 1, 1, '2021-09-16 20:39:58'),
(137, 23, 'OPD Timeline', 'opd_timeline', 1, 1, 1, 1, '2021-02-24 01:02:04'),
(138, 24, 'IPD Patients', 'ipd_patient', 1, 1, 1, 1, '2018-10-10 20:14:55'),
(139, 24, 'Discharged Patients', 'discharged_patients', 1, 1, 1, 1, '2021-02-24 01:27:17'),
(140, 24, 'Consultant Register', 'consultant_register', 1, 1, 1, 1, '2021-02-24 01:37:07'),
(142, 24, 'IPD Timeline', 'ipd_timeline', 1, 1, 1, 1, '2021-02-25 01:30:00'),
(143, 24, 'Charges', 'charges', 1, 1, 1, 1, '2018-10-10 14:28:26'),
(144, 24, 'Payment', 'payment', 1, 1, 0, 1, '2021-09-08 01:41:13'),
(146, 25, 'Medicine', 'medicine', 1, 1, 1, 1, '2018-10-10 14:28:26'),
(148, 25, 'Pharmacy Bill', 'pharmacy_bill', 1, 1, 1, 1, '2021-02-25 01:33:40'),
(149, 26, 'Pathology Test', 'pathology_test', 1, 1, 1, 1, '2021-02-25 01:36:32'),
(152, 27, 'Radiology Test', 'radiology_test', 1, 1, 1, 1, '2021-02-25 01:45:31'),
(153, 27, 'Radiology  Bill', 'radiology_bill', 1, 1, 1, 1, '2021-09-16 18:16:48'),
(155, 22, 'IPD Income Widget', 'ipd_income_widget', 1, 0, 0, 0, '2018-12-19 22:08:05'),
(156, 22, 'OPD Income Widget', 'opd_income_widget', 1, 0, 0, 0, '2018-12-19 22:08:15'),
(157, 22, 'Pharmacy Income Widget', 'pharmacy_income_widget', 1, 0, 0, 0, '2018-12-19 22:08:25'),
(158, 22, 'Pathology Income Widget', 'pathology_income_widget', 1, 0, 0, 0, '2018-12-19 22:08:37'),
(159, 22, 'Radiology Income Widget', 'radiology_income_widget', 1, 0, 0, 0, '2018-12-19 22:08:49'),
(161, 22, 'Blood Bank Income Widget', 'blood_bank_income_widget', 1, 0, 0, 0, '2018-12-19 22:09:13'),
(162, 22, 'Ambulance Income Widget', 'ambulance_income_widget', 1, 0, 0, 0, '2018-12-19 22:09:25'),
(165, 29, 'Ambulance Call', 'ambulance_call', 1, 1, 1, 1, '2018-10-26 16:37:51'),
(166, 29, 'Ambulance', 'ambulance', 1, 1, 1, 1, '2018-10-26 16:37:59'),
(168, 30, 'Blood Issue', 'blood_issue', 1, 1, 1, 1, '2018-10-26 17:20:15'),
(169, 30, 'Blood Donor', 'blood_donor', 1, 1, 1, 1, '2018-10-26 17:20:19'),
(170, 25, 'Medicine Category', 'medicine_category', 1, 1, 1, 1, '2018-10-24 19:10:24'),
(171, 27, 'Radiology Category', 'radiology_category', 1, 1, 1, 1, '2021-02-25 01:52:34'),
(173, 31, 'Organisation', 'organisation', 1, 1, 1, 1, '2018-10-24 19:10:24'),
(175, 26, 'Pathology Category', 'pathology_category', 1, 1, 1, 1, '2018-10-24 19:10:24'),
(176, 32, 'Hospital Charges', 'hospital_charges', 1, 1, 1, 1, '2021-09-12 20:29:30'),
(178, 14, 'IPD Report', 'ipd_report', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(179, 14, 'Pharmacy Bill Report', 'pharmacy_bill_report', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(180, 14, 'Pathology Patient Report', 'pathology_patient_report', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(181, 14, 'Radiology Patient Report', 'radiology_patient_report', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(182, 14, 'OT Report', 'ot_report', 1, 0, 0, 0, '2019-03-07 19:56:54'),
(183, 14, 'Blood Donor Report', 'blood_donor_report', 1, 0, 0, 0, '2019-03-07 19:56:54'),
(184, 14, 'Payroll Month Report', 'payroll_month_report', 1, 0, 0, 0, '2019-03-07 19:57:25'),
(185, 14, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(187, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(188, 14, 'Patient Login Credential', 'patient_login_credential', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(189, 14, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-12-11 23:09:24'),
(190, 22, 'Yearly Income & Expense Chart', 'yearly_income_expense_chart', 1, 0, 0, 0, '2018-12-11 23:22:05'),
(191, 22, 'Monthly Income & Expense Chart', 'monthly_income_expense_chart', 1, 0, 0, 0, '2018-12-11 23:25:14'),
(192, 23, 'OPD Prescription Print Header Footer ', 'opd_prescription_print_header_footer', 1, 0, 1, 0, '2021-09-06 19:22:20'),
(196, 24, 'Bed', 'bed', 1, 1, 1, 1, '2018-12-11 23:46:01'),
(197, 24, 'IPD Prescription Print Header Footer', 'ipd_prescription_print_header_footer', 1, 0, 1, 0, '2021-09-06 20:26:49'),
(198, 24, 'Bed Status', 'bed_status', 1, 0, 0, 0, '2018-12-11 23:39:42'),
(200, 25, 'Medicine Bad Stock', 'medicine_bad_stock', 1, 1, 0, 1, '2018-12-17 14:12:46'),
(201, 25, 'Pharmacy Bill print Header Footer', 'pharmacy_bill_print_header_footer', 1, 0, 1, 0, '2021-09-10 01:41:18'),
(202, 30, 'Blood Stock', 'blood_stock', 1, 1, 0, 1, '2021-09-10 22:49:52'),
(203, 32, 'Charge Category', 'charge_category', 1, 1, 1, 1, '2018-12-12 00:19:38'),
(206, 14, 'TPA Report', 'tpa_report', 1, 0, 0, 0, '2019-03-07 19:49:25'),
(207, 14, 'Ambulance Report', 'ambulance_report', 1, 0, 0, 0, '2019-03-07 19:49:41'),
(208, 14, 'Discharge Patient Report', 'discharge_patient_report', 1, 0, 0, 0, '2019-03-07 19:49:55'),
(209, 14, 'Appointment Report', 'appointment_report', 1, 0, 0, 0, '2019-03-07 19:50:10'),
(210, 14, 'Transaction Report', 'transaction_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(211, 14, 'Blood Issue Report', 'blood_issue_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(212, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(213, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(214, 34, 'Birth Record', 'birth_record', 1, 1, 1, 1, '2018-06-21 23:36:02'),
(215, 34, 'Death Record', 'death_record', 1, 1, 1, 1, '2018-06-21 23:36:02'),
(218, 23, 'Move Patient in IPD', 'opd_move_patient_in_ipd', 1, 0, 0, 0, '2021-09-16 21:00:06'),
(219, 23, 'Manual Prescription', 'manual_prescription', 1, 0, 0, 0, '2019-09-22 17:52:06'),
(220, 24, 'Prescription ', 'ipd_prescription', 1, 1, 1, 1, '2019-09-23 13:59:27'),
(221, 23, 'Charges', 'opd_charges', 1, 1, 1, 1, '2019-09-22 17:58:03'),
(222, 23, 'Payment', 'opd_payment', 1, 1, 0, 1, '2021-09-08 00:44:17'),
(224, 25, 'Import Medicine', 'import_medicine', 1, 0, 0, 0, '2019-09-22 18:03:31'),
(225, 25, 'Medicine Purchase', 'medicine_purchase', 1, 1, 0, 1, '2021-10-02 04:59:02'),
(226, 25, 'Medicine Supplier', 'medicine_supplier', 1, 1, 1, 1, '2019-09-22 18:09:36'),
(227, 25, 'Medicine Dosage', 'medicine_dosage', 1, 1, 1, 1, '2019-09-22 18:17:16'),
(236, 36, 'Patient', 'patient', 1, 1, 1, 1, '2021-09-21 21:29:37'),
(237, 36, 'Enabled/Disabled', 'enabled_disabled', 1, 0, 0, 0, '2019-09-22 19:25:35'),
(238, 22, 'Notification Center', 'notification_center', 1, 0, 0, 0, '2019-09-23 16:48:33'),
(239, 36, 'Import', 'patient_import', 1, 0, 0, 0, '2019-10-03 14:20:26'),
(240, 34, 'Birth Print Header Footer', 'birth_print_header_footer', 1, 0, 1, 0, '2021-09-12 22:51:32'),
(242, 34, 'Death Print Header Footer', 'death_print_header_footer', 1, 0, 1, 0, '2021-09-12 22:51:38'),
(243, 26, 'Print Header Footer', 'pathology_print_header_footer', 1, 0, 1, 0, '2021-09-16 19:37:21'),
(244, 27, 'Print Header Footer', 'radiology_print_header_footer', 1, 0, 1, 0, '2021-09-16 19:24:43'),
(246, 30, 'Print Header Footer', 'bloodbank_print_header_footer', 1, 0, 0, 0, '2021-10-07 04:06:58'),
(247, 29, 'Print Header Footer', 'ambulance_print_header_footer', 1, 1, 1, 1, '2019-10-03 14:45:03'),
(248, 24, 'IPD Bill Print Header Footer', 'ipd_bill_print_header_footer', 1, 0, 1, 0, '2021-09-06 20:27:00'),
(249, 18, 'Print Payslip Header Footer', 'print_payslip_header_footer', 1, 1, 1, 1, '2019-10-03 15:31:33'),
(250, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2020-08-11 18:52:52'),
(251, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-03 17:15:56'),
(253, 14, 'Inventory Stock Report', 'inventory_stock_report', 1, 0, 0, 0, '2019-10-03 18:20:31'),
(254, 14, 'Inventory Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-03 18:23:22'),
(255, 14, 'Inventory Issue Report', 'issue_inventory_report', 1, 0, 0, 0, '2019-10-03 18:24:40'),
(256, 14, 'Expiry Medicine Report', 'expiry_medicine_report', 1, 0, 0, 0, '2019-10-03 19:00:11'),
(257, 26, 'Pathology Bill', 'pathology_bill', 1, 1, 1, 1, '2021-02-25 01:58:10'),
(258, 14, 'Birth Report', 'birth_report', 1, 0, 0, 0, '2019-10-13 16:12:35'),
(259, 14, 'Death Report', 'death_report', 1, 0, 0, 0, '2019-10-13 16:13:56'),
(260, 26, 'Pathology Unit', 'pathology_unit', 1, 1, 1, 1, '2020-07-21 14:13:49'),
(261, 27, 'Radiology Unit', 'radiology_unit', 1, 1, 1, 1, '2020-07-21 14:14:47'),
(262, 27, 'Radiology Parameter', 'radiology_parameter', 1, 1, 1, 1, '2020-07-21 14:20:28'),
(263, 26, 'Pathology Parameter', 'pathology_parameter', 1, 1, 1, 1, '2020-07-21 14:20:28'),
(264, 32, 'Charge Type', 'charge_type', 1, 1, 0, 1, '2020-07-21 17:09:44'),
(265, 14, 'OPD Balance Report', 'opd_balance_report', 1, 0, 0, 0, '2020-07-27 15:03:34'),
(266, 14, 'IPD Balance Report', 'ipd_balance_report', 1, 0, 0, 0, '2020-07-27 15:03:34'),
(267, 15, 'Symptoms Type', 'symptoms_type', 1, 1, 1, 1, '2021-09-13 21:36:22'),
(269, 37, 'Live Consultation', 'live_consultation', 1, 1, 0, 1, '2020-08-12 19:19:27'),
(270, 37, 'Live Meeting', 'live_meeting', 1, 1, 0, 1, '2020-08-12 19:19:27'),
(271, 14, 'Live Consultation Report', 'live_consultation_report', 1, 0, 0, 0, '2021-09-13 02:11:19'),
(272, 14, 'Live Meeting Report', 'live_meeting_report', 1, 0, 0, 0, '2021-09-13 02:11:14'),
(273, 37, 'Setting', 'setting', 1, 0, 1, 0, '2020-08-12 20:03:28'),
(274, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2020-08-20 17:48:53'),
(279, 15, 'Symptoms Head', 'symptoms_head', 1, 1, 1, 1, '2021-09-13 21:36:27'),
(280, 18, 'Specialist', 'specialist', 1, 1, 1, 1, '2019-10-03 10:01:33'),
(281, 22, 'General Income Widget', 'general_income_widget', 1, 0, 0, 0, '2018-12-19 16:38:05'),
(282, 22, 'Expenses Widget', 'expenses_widget', 1, 0, 0, 0, '2018-12-19 16:38:05'),
(283, 38, 'Referral Category', 'referral_category', 1, 1, 1, 1, '2021-06-11 02:54:41'),
(284, 38, 'Referral Commission', 'referral_commission', 1, 1, 1, 1, '2021-06-11 02:54:41'),
(285, 38, 'Referral Person', 'referral_person', 1, 1, 1, 1, '2021-06-11 02:55:21'),
(286, 38, 'Referral Payment', 'referral_payment', 1, 1, 1, 1, '2021-06-11 02:55:21'),
(287, 15, 'Prefix Setting', 'prefix_setting', 1, 0, 1, 0, '2021-06-11 20:46:10'),
(288, 15, 'Captcha Setting', 'captcha_setting', 1, 0, 1, 0, '2021-06-11 21:43:53'),
(289, 32, 'Tax Category', 'tax_category', 1, 1, 1, 1, '2021-06-11 22:16:39'),
(290, 32, 'Unit Type', 'unit_type', 1, 1, 1, 1, '2021-06-11 22:16:39'),
(291, 25, 'Dosage Interval', 'dosage_interval', 1, 1, 1, 1, '2021-06-12 00:15:37'),
(292, 25, 'Dosage Duration', 'dosage_duration', 1, 1, 1, 1, '2021-06-12 00:15:37'),
(293, 30, 'Blood Bank Product', 'blood_bank_product', 1, 1, 1, 1, '2021-06-12 00:51:23'),
(294, 39, 'Slot', 'online_appointment_slot', 1, 1, 1, 1, '2021-09-14 01:04:31'),
(295, 39, 'Doctor Shift', 'online_appointment_doctor_shift', 1, 0, 1, 0, '2021-06-12 01:43:48'),
(296, 39, 'Shift', 'online_appointment_shift', 1, 1, 1, 1, '2021-06-12 01:24:25'),
(297, 39, 'Doctor Wise Appointment', 'doctor_wise_appointment', 1, 0, 0, 0, '2021-10-07 01:45:39'),
(298, 39, 'Patient Queue', 'patient_queue', 1, 0, 0, 0, '2021-10-07 01:45:42'),
(299, 23, 'OPD Medication', 'opd_medication', 1, 1, 1, 1, '2021-06-14 20:00:12'),
(300, 24, 'IPD Medication', 'ipd_medication', 1, 1, 1, 1, '2021-06-14 20:00:12'),
(301, 24, 'Bed History', 'bed_history', 1, 0, 0, 0, '2021-06-14 20:00:12'),
(302, 30, 'Blood Bank Components', 'blood_bank_components', 1, 1, 0, 1, '2021-06-15 00:46:48'),
(303, 23, 'Operation Theatre', 'opd_operation_theatre', 1, 1, 1, 1, '2021-09-07 22:49:13'),
(304, 23, 'Lab Investigation', 'opd_lab_investigation', 1, 0, 0, 0, '2021-09-06 19:36:10'),
(305, 23, 'Patient Discharge', 'opd_patient_discharge', 1, 0, 1, 0, '2021-09-06 19:39:16'),
(306, 23, 'Patient Discharge Revert', 'opd_patient_discharge_revert', 1, 0, 0, 0, '2021-09-06 19:39:38'),
(307, 23, 'Treatment History', 'opd_treatment_history', 1, 0, 0, 0, '2021-09-06 19:49:05'),
(308, 24, 'Lab Investigation', 'ipd_lab_investigation', 1, 0, 0, 0, '2021-09-06 20:45:59'),
(309, 24, 'Patient Discharge', 'ipd_patient_discharge', 1, 0, 1, 0, '2021-09-06 22:08:20'),
(310, 24, 'Patient Discharge Revert', 'ipd_patient_discharge_revert', 1, 0, 0, 0, '2021-09-06 22:14:54'),
(311, 30, 'Issue Component', 'issue_component', 1, 1, 1, 1, '2021-09-06 22:21:53'),
(312, 26, '	Add/Edit Collection Person', 'pathology_add_edit_collection_person', 1, 0, 1, 0, '2021-09-16 20:06:13'),
(313, 25, 'Partial Payment', 'pharmacy_partial_payment', 1, 1, 0, 1, '2021-09-07 01:10:15'),
(314, 26, 'Partial Payment', 'pathology_partial_payment', 1, 1, 0, 1, '2021-09-07 02:34:33'),
(315, 27, 'Partial Payment', 'radiology_partial_payment', 1, 1, 0, 1, '2021-09-07 02:38:15'),
(316, 28, 'Partial Payment', 'radiology_partial_payment', 1, 1, 0, 1, '2021-09-07 02:39:02'),
(317, 30, 'Partial Payment', 'blood_bank_partial_payment', 1, 1, 0, 1, '2021-09-07 02:47:22'),
(318, 29, 'Partial Payment', 'ambulance_partial_payment', 1, 1, 0, 1, '2021-09-07 02:48:10'),
(319, 23, 'Checkup', 'checkup', 1, 1, 1, 1, '2021-09-16 20:40:33'),
(320, 23, 'Print Bill', 'opd_print_bill', 1, 0, 0, 0, '2021-09-07 23:09:27'),
(321, 23, 'Live Consult', 'opd_live_consult', 1, 0, 0, 0, '2021-09-08 00:53:31'),
(322, 24, 'Nurse Note', 'nurse_note', 1, 1, 1, 1, '2021-09-08 01:20:07'),
(323, 24, 'Bed Type', 'bed_type', 1, 1, 1, 1, '2021-09-08 20:06:39'),
(324, 24, 'Bed Group', 'bed_group', 1, 1, 1, 1, '2021-09-08 20:07:08'),
(325, 24, 'Floor', 'floor', 1, 1, 1, 1, '2021-09-08 20:08:35'),
(326, 24, 'Operation Theatre', 'ipd_operation_theatre', 1, 1, 1, 1, '2021-09-08 22:38:14'),
(327, 24, 'Live Consult', 'ipd_live_consultation', 1, 0, 0, 0, '2021-09-08 23:05:26'),
(329, 24, 'Treatment History', 'ipd_treatment_history', 1, 0, 0, 0, '2021-09-06 20:45:59'),
(330, 41, 'OPD Billing', 'opd_billing', 1, 0, 0, 0, '2021-09-09 00:33:14'),
(331, 41, 'OPD Billing Payment', 'opd_billing_payment', 1, 1, 0, 0, '2021-09-09 01:10:36'),
(332, 41, 'IPD Billing', 'ipd_billing', 1, 0, 0, 0, '2021-09-09 00:52:26'),
(333, 41, 'IPD Billing Payment', 'ipd_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(334, 41, 'Pharmacy Billing', 'pharmacy_billing', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(335, 41, 'Pharmacy Billing Payment', 'pharmacy_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(336, 41, 'Pathology Billing', 'pathology_billing', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(337, 41, 'Pathology Billing Payment', 'pathology_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(338, 41, 'Radiology Billing', 'radiology_billing', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(339, 41, 'Radiology Billing Payment', 'radiology_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(340, 41, 'Blood Bank Billing', 'blood_bank_billing', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(341, 41, 'Blood Bank Billing Payment', 'blood_bank_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(342, 41, 'Ambulance Billing', 'ambulance_billing', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(343, 41, 'Ambulance Billing Payment', 'ambulance_billing_payment', 1, 1, 0, 0, '2021-09-09 00:53:03'),
(344, 41, 'Generate Bill', 'generate_bill', 1, 0, 0, 0, '2021-09-09 20:36:09'),
(345, 41, 'Generate Discharge Card', 'generate_discharge_card', 1, 0, 0, 0, '2021-09-09 00:53:03'),
(346, 40, 'Online Appointment', 'online_appointment', 1, 0, 0, 0, '2021-09-09 02:15:17'),
(347, 31, 'TPA Charges ', 'tpa_charges', 1, 0, 1, 1, '2018-10-24 19:10:24'),
(348, 15, 'System Notification Setting', 'system_notification_setting', 1, 0, 1, 0, '2018-07-04 22:08:41'),
(349, 14, 'All Transaction Report', 'all_transaction_report', 1, 0, 0, 0, '2021-09-13 02:29:20'),
(350, 14, 'Patient Visit Report', 'patient_visit_report', 1, 0, 0, 0, '2019-10-03 18:23:22'),
(351, 14, 'Patient Bill Report', 'patient_bill_report', 1, 0, 0, 0, '2019-10-03 17:15:56'),
(352, 14, 'Referral Report', 'referral_report', 1, 0, 0, 0, '2019-10-03 17:15:56'),
(353, 27, 'Add/Edit Collection Person', 'radiology_add_edit_collection_person', 1, 0, 1, 0, '2021-09-16 20:06:41'),
(354, 27, 'Add/Edit  Report', 'radiology_add_edit_report', 1, 0, 1, 0, '2021-09-16 20:06:50'),
(355, 26, 'Add/Edit Report', 'pathology_add_edit_report', 1, 0, 1, 0, '2021-09-16 20:06:24'),
(362, 42, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2021-09-20 16:48:25'),
(363, 42, 'Certificate', 'certificate', 1, 1, 1, 1, '2021-09-20 16:48:25'),
(364, 42, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2021-09-20 16:56:38'),
(365, 42, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2021-09-20 16:56:09'),
(366, 42, 'Generate Patient ID Card', 'generate_patient_id_card', 1, 0, 0, 0, '2021-09-20 23:13:54'),
(367, 42, 'Patient ID Card', 'patient_id_card', 1, 1, 1, 1, '2021-09-20 16:54:38'),
(369, 14, 'Component Issue Report', 'component_issue_report', 1, 0, 0, 0, '2019-03-07 19:57:35'),
(370, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2021-09-28 01:08:22'),
(371, 43, 'Chat', 'chat', 1, 0, 0, 0, '2021-10-07 05:05:15'),
(372, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2021-10-29 07:41:26'),
(373, 14, 'Daily Transaction Report', 'daily_transaction_report', 1, 0, 0, 0, '2021-10-29 07:42:08'),
(374, 15, 'Operation', 'operation', 1, 1, 1, 1, '2021-10-29 07:45:14'),
(375, 15, 'Operation Category', 'operation_category', 1, 1, 1, 1, '2021-10-29 07:45:14'),
(386, 39, 'Appointment', 'appointment', 1, 1, 0, 1, '2021-12-24 09:36:15'),
(387, 39, 'Reschedule', 'reschedule', 1, 0, 0, 0, '2021-12-24 09:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `sort_order` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES
(3, 'Income', 'income', 1, 0, '15.00', '2021-10-22 00:07:50'),
(4, 'Expense', 'expense', 1, 0, '16.00', '2021-10-22 00:07:55'),
(8, 'Download Center', 'download_center', 1, 0, '19.00', '2021-10-22 00:13:38'),
(10, 'Inventory', 'inventory', 1, 0, '18.00', '2021-10-22 00:13:22'),
(13, 'Messaging', 'communicate', 1, 0, '17.00', '2021-10-22 00:13:08'),
(14, 'Reports', 'reports', 1, 1, '23.00', '2021-10-22 00:14:35'),
(15, 'System Settings', 'system_settings', 1, 1, '24.00', '2021-10-22 00:16:02'),
(16, 'Front CMS', 'front_cms', 1, 0, '21.00', '2021-10-22 00:14:07'),
(17, 'Front Office', 'front_office', 1, 0, '10.00', '2021-10-22 00:05:56'),
(18, 'Human Resource', 'human_resource', 1, 1, '12.00', '2021-10-22 00:06:27'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '28.00', '2021-10-22 00:22:27'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '0.01', '2021-10-22 00:18:00'),
(23, 'OPD', 'opd', 1, 0, '3.00', '2021-10-22 00:04:29'),
(24, 'IPD', 'ipd', 1, 0, '4.00', '2021-10-22 00:04:38'),
(25, 'Pharmacy', 'pharmacy', 1, 0, '5.00', '2021-10-22 00:04:47'),
(26, 'Pathology', 'pathology', 1, 0, '6.00', '2021-10-22 00:04:59'),
(27, 'Radiology', 'radiology', 1, 0, '7.00', '2021-10-22 00:05:09'),
(29, 'Ambulance', 'ambulance', 1, 0, '9.00', '2021-10-22 00:05:31'),
(30, 'Blood Bank', 'blood_bank', 1, 0, '8.00', '2021-10-22 00:05:21'),
(31, 'TPA Management', 'tpa_management', 1, 0, '14.00', '2021-10-22 00:06:58'),
(32, 'Hospital Charges', 'hospital_charges', 1, 1, '26.00', '2021-10-22 00:19:04'),
(34, 'Birth Death Record', 'birth_death_report', 1, 0, '11.00', '2021-10-22 00:06:10'),
(36, 'Patient', 'patient', 1, 0, '25.00', '2021-10-22 00:18:46'),
(37, 'Live Consultation', 'live_consultation', 1, 0, '22.00', '2021-10-22 00:14:21'),
(38, 'Referral', 'referral', 1, 0, '13.00', '2021-10-22 00:06:48'),
(39, 'Appointment', 'appointment', 1, 0, '2.00', '2021-10-22 00:04:15'),
(41, 'Bill', 'bill', 1, 0, '1.00', '2021-10-22 00:03:47'),
(42, 'Certificate', 'certificate', 1, 0, '20.00', '2021-10-04 03:36:58'),
(43, 'Chat', 'chat', 1, 0, '27.00', '2021-10-22 00:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_patient`
--

CREATE TABLE `permission_patient` (
  `id` int(11) NOT NULL,
  `permission_group_short_code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `system` int(11) NOT NULL,
  `sort_order` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_patient`
--

INSERT INTO `permission_patient` (`id`, `permission_group_short_code`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES
(1, 'appointment', 'My Appointments', 'my_appointments', 1, 0, '1.00', '2021-09-27 13:17:05'),
(2, 'opd', 'OPD', 'opd', 1, 0, '2.00', '2021-09-27 13:17:21'),
(3, 'ipd', 'IPD', 'ipd', 1, 0, '3.00', '2021-09-25 09:33:07'),
(4, 'pharmacy', 'Pharmacy', 'pharmacy', 1, 0, '4.00', '2021-09-25 06:03:29'),
(5, 'pathology', 'Pathology', 'pathology', 1, 0, '5.00', '2021-09-27 13:15:45'),
(6, 'radiology', 'Radiology', 'radiology', 1, 0, '6.00', '2021-09-27 13:15:47'),
(7, 'ambulance', 'Ambulance', 'ambulance', 1, 0, '7.00', '2021-09-27 13:15:50'),
(8, 'blood_bank', 'Blood Bank', 'blood_bank', 1, 0, '8.00', '2021-09-24 07:40:59'),
(9, 'live_consultation', 'Live Consultation', 'live_consultation', 1, 0, '9.00', '2021-09-27 13:16:49'),
(10, 'calendar_to_do_list', 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '11.00', '2021-10-04 09:07:25'),
(11, 'chat', 'Chat', 'chat', 1, 0, '11.00', '2021-10-04 07:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `medicine_category_id` int(11) DEFAULT NULL,
  `medicine_image` varchar(200) NOT NULL,
  `medicine_company` varchar(100) DEFAULT NULL,
  `medicine_composition` varchar(100) DEFAULT NULL,
  `medicine_group` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `min_level` varchar(50) DEFAULT NULL,
  `reorder_level` varchar(50) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `unit_packing` varchar(50) DEFAULT NULL,
  `vat_ac` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_bill_basic`
--

CREATE TABLE `pharmacy_bill_basic` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `ipd_prescription_basic_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `total` float(10,2) DEFAULT 0.00,
  `discount_percentage` float(10,2) DEFAULT 0.00,
  `discount` float(10,2) DEFAULT 0.00,
  `tax_percentage` float(10,2) DEFAULT 0.00,
  `tax` float(10,2) DEFAULT 0.00,
  `net_amount` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_bill_detail`
--

CREATE TABLE `pharmacy_bill_detail` (
  `id` int(11) NOT NULL,
  `pharmacy_bill_basic_id` int(11) DEFAULT NULL,
  `medicine_batch_detail_id` int(11) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `sale_price` float(10,2) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefixes`
--

CREATE TABLE `prefixes` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prefixes`
--

INSERT INTO `prefixes` (`id`, `type`, `prefix`, `created_at`) VALUES
(1, 'ipd_no', 'IPDN', '2021-06-30 17:40:23'),
(2, 'opd_no', 'OPDN', '2021-02-22 13:38:01'),
(3, 'ipd_prescription', 'IPDP', '2021-02-12 18:42:07'),
(4, 'opd_prescription', 'OPDP', '2021-02-12 18:42:17'),
(5, 'appointment', 'APPN', '2021-10-22 05:37:43'),
(6, 'pharmacy_billing', 'PHAB', '2021-10-22 05:37:43'),
(7, 'operation_theater_reference_no', 'OTRN', '2021-10-22 05:37:43'),
(8, 'blood_bank_billing', 'BLBB', '2021-10-22 05:40:38'),
(9, 'ambulance_call_billing', 'AMCB', '2021-10-22 05:40:38'),
(10, 'radiology_billing', 'RADB', '2021-10-22 05:40:38'),
(11, 'pathology_billing', 'PATB', '2021-10-22 05:40:38'),
(12, 'checkup_id', 'OCID', '2021-10-22 05:44:25'),
(13, 'purchase_no', 'PHPN', '2021-10-22 05:44:25'),
(14, 'transaction_id', 'TRID', '2021-10-22 05:44:25'),
(15, 'birth_record_reference_no', 'BRRN', '2021-10-22 05:44:25'),
(16, 'death_record_reference_no', 'DRRN', '2021-10-22 05:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `print_setting`
--

CREATE TABLE `print_setting` (
  `id` int(11) NOT NULL,
  `print_header` varchar(300) NOT NULL,
  `print_footer` varchar(200) NOT NULL,
  `setting_for` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `print_setting`
--

INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`, `created_at`) VALUES
(1, 'uploads/printing/1.png', '', 'opdpre', 'yes', '2021-09-25 06:44:20'),
(2, 'uploads/printing/2.png', '', 'opd', 'yes', '2021-09-25 06:44:20'),
(3, 'uploads/printing/3.png', '', 'ipdpres', 'yes', '2021-09-25 06:44:20'),
(4, 'uploads/printing/4.jpg', '', 'ipd', 'yes', '2021-09-25 06:44:20'),
(5, 'uploads/printing/5.jpg', '', 'bill', 'yes', '2021-09-25 06:44:20'),
(6, 'uploads/printing/6.jpg', '', 'pharmacy', 'yes', '2021-09-25 06:44:20'),
(7, 'uploads/printing/7.jpg', '', 'payslip', 'yes', '2021-09-25 06:44:20'),
(8, 'uploads/printing/8.jpg', '', 'paymentreceipt', 'yes', '2021-09-25 06:44:20'),
(9, 'uploads/printing/9.jpg', '', 'birth', 'yes', '2021-09-25 06:44:20'),
(10, 'uploads/printing/10.jpg', '', 'death', 'yes', '2021-09-25 06:44:20'),
(11, 'uploads/printing/11.jpg', '', 'pathology', 'yes', '2021-09-25 06:44:20'),
(12, 'uploads/printing/12.png', '', 'radiology', 'yes', '2021-09-25 06:44:20'),
(13, 'uploads/printing/13.jpg', '', 'ot', 'yes', '2021-09-25 06:44:20'),
(14, 'uploads/printing/14.jpg', '', 'bloodbank', 'yes', '2021-09-25 06:44:20'),
(15, 'uploads/printing/15.jpg', '', 'ambulance', 'yes', '2021-09-25 06:44:20'),
(16, 'uploads/printing/16.jpg', '', 'discharge_card', 'yes', '2021-09-25 06:44:20'),
(18, 'uploads/printing/17.png', '', 'opd_slip', 'yes', '2021-09-25 06:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `radio`
--

CREATE TABLE `radio` (
  `id` int(11) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `radiology_category_id` int(11) DEFAULT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radio`
--

INSERT INTO `radio` (`id`, `test_name`, `short_name`, `test_type`, `radiology_category_id`, `sub_category`, `report_days`, `charge_id`, `created_at`) VALUES
(3, 'test', 'test', '', 1, 'ct test', '0', 3, '2022-02-17 13:27:26'),
(7, 'rt', NULL, NULL, 1, 'dsd', '', 2, '2022-02-17 13:54:48'),
(8, 'new', NULL, NULL, 1, '', '', 2, '2022-02-17 14:00:35'),
(9, 'new23', NULL, NULL, 1, 'news23', '', 2, '2022-02-17 14:12:33'),
(12, 'Ct Scan', NULL, NULL, 1, 'ct', '', 2, '2022-02-18 14:25:37'),
(13, 'Abdomen', NULL, NULL, 1, '', '', 16, '2022-02-21 07:06:28'),
(14, 'HRCT', NULL, NULL, 1, '', '', 2, '2022-02-21 07:14:50'),
(15, 'scan', NULL, NULL, 1, 'scan', '', 2, '2022-02-21 12:59:25'),
(16, 'CT Scan - Brain Contrast', NULL, NULL, 1, '', '', 2, '2022-02-23 07:16:02'),
(17, 'CT Scan Brain Plain', NULL, NULL, 1, '', '', 3, '2022-02-23 07:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_billing`
--

CREATE TABLE `radiology_billing` (
  `id` int(11) NOT NULL,
  `token_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `ipd_prescription_basic_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `total` float(10,2) NOT NULL,
  `discount_percentage` float(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `tax_percentage` float(10,2) NOT NULL,
  `tax` float(10,2) NOT NULL,
  `net_amount` float(10,2) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiology_billing`
--

INSERT INTO `radiology_billing` (`id`, `token_id`, `patient_id`, `case_reference_id`, `ipd_prescription_basic_id`, `doctor_id`, `date`, `doctor_name`, `total`, `discount_percentage`, `discount`, `tax_percentage`, `tax`, `net_amount`, `transaction_id`, `note`, `generated_by`, `created_at`, `updated_at`) VALUES
(23, 0, 18, NULL, NULL, 3, '2022-02-21 19:14:00', 'Nighat Shah (1002)', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-21 14:27:21', NULL),
(24, 0, 20, NULL, NULL, 3, '2022-02-21 20:06:00', 'Nighat Shah (1002)', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-21 15:06:58', NULL),
(25, 0, 21, NULL, NULL, 3, '2022-02-23 12:16:00', 'Nighat Shah (1002)', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-23 07:16:56', NULL),
(26, 0, 3, NULL, NULL, 3, '2022-02-23 12:24:00', 'Nighat Shah (1002)', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 07:24:57', NULL),
(27, 0, 18, NULL, NULL, 3, '2022-02-23 12:26:00', 'Nighat Shah (1002)', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 07:26:37', NULL),
(28, 0, 18, NULL, NULL, 3, '2022-02-23 12:26:00', 'Nighat Shah (1002)', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 07:28:21', NULL),
(29, 1, 22, NULL, NULL, 7, '2022-02-23 16:46:00', 'Prof Riaz Hussain Shah (9005)', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 14:21:18', NULL),
(30, 2, 2, NULL, NULL, NULL, '2022-02-23 19:15:00', '', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 14:16:04', NULL),
(31, 3, 3, NULL, NULL, NULL, '2022-02-23 19:20:00', '', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, NULL, '', 1, '2022-02-23 14:20:45', NULL),
(32, 4, 4, NULL, NULL, NULL, '2022-02-23 19:20:00', '', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-24 14:21:03', NULL),
(33, 1, 4, NULL, NULL, NULL, '2022-02-23 19:21:00', '', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-23 14:21:50', NULL),
(34, 2, 18, NULL, NULL, 9, '2022-02-23 19:21:00', 'Dr: Sikandar Ali Shaikh ', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, NULL, '', 1, '2022-02-23 14:31:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `radiology_parameter`
--

CREATE TABLE `radiology_parameter` (
  `id` int(11) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `test_value` varchar(100) NOT NULL,
  `reference_range` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiology_parameter`
--

INSERT INTO `radiology_parameter` (`id`, `parameter_name`, `test_value`, `reference_range`, `gender`, `unit`, `description`, `created_at`) VALUES
(1, 'section thickness', '', '50', '', '1', '1mm to 5mm', '2022-02-17 13:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_parameterdetails`
--

CREATE TABLE `radiology_parameterdetails` (
  `id` int(11) NOT NULL,
  `radiology_id` int(11) DEFAULT NULL,
  `radiology_parameter_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiology_parameterdetails`
--

INSERT INTO `radiology_parameterdetails` (`id`, `radiology_id`, `radiology_parameter_id`, `created_at`) VALUES
(3, 3, 1, '2022-02-17 13:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_report`
--

CREATE TABLE `radiology_report` (
  `id` int(11) NOT NULL,
  `radiology_bill_id` int(11) DEFAULT NULL,
  `radiology_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(10) NOT NULL,
  `reporting_date` date DEFAULT NULL,
  `parameter_update` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `radiology_report` text DEFAULT NULL,
  `report_name` text DEFAULT NULL,
  `radiology_result` text DEFAULT NULL COMMENT 'test result',
  `tax_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `apply_charge` float(10,2) NOT NULL DEFAULT 0.00,
  `radiology_center` varchar(250) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `collection_specialist` int(11) DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiology_report`
--

INSERT INTO `radiology_report` (`id`, `radiology_bill_id`, `radiology_id`, `patient_id`, `customer_type`, `patient_name`, `consultant_doctor`, `reporting_date`, `parameter_update`, `description`, `radiology_report`, `report_name`, `radiology_result`, `tax_percentage`, `apply_charge`, `radiology_center`, `generated_by`, `collection_specialist`, `collection_date`, `approved_by`, `created_at`) VALUES
(26, 23, 15, 18, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 60.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-21 14:15:24'),
(27, 24, 14, 20, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 60.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-21 15:06:58'),
(28, 25, 16, 21, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 60.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-23 07:16:56'),
(29, 26, 17, 3, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 60.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 07:24:57'),
(30, 27, 17, 18, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 60.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 07:26:37'),
(31, 28, 17, 18, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 60.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 07:28:21'),
(32, 29, 17, 22, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 11:47:09'),
(33, 30, 17, 2, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 14:16:04'),
(34, 31, 17, 3, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 3000.00, '', 1, NULL, NULL, NULL, '2022-02-23 14:20:45'),
(35, 32, 16, 4, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-23 14:21:03'),
(36, 33, 16, 4, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-23 14:21:50'),
(37, 34, 15, 18, NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 50.00, 4500.00, '', 1, NULL, NULL, NULL, '2022-02-23 14:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_report_parameterdetails`
--

CREATE TABLE `radiology_report_parameterdetails` (
  `id` int(11) NOT NULL,
  `radiology_report_id` int(11) DEFAULT NULL,
  `radiology_parameterdetail_id` int(11) DEFAULT NULL,
  `radiology_report_value` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `read_systemnotification`
--

CREATE TABLE `read_systemnotification` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `read_systemnotification`
--

INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES
(9, 780, 1, 'no', '2022-02-16 14:46:55'),
(10, 780, 1, 'no', '2022-02-16 14:46:56'),
(11, 776, 1, 'no', '2022-02-16 16:12:02'),
(12, 776, 1, 'no', '2022-02-16 16:12:09'),
(13, 912, 1, 'no', '2022-02-17 18:43:50'),
(14, 912, 1, 'no', '2022-02-17 18:44:07'),
(15, 916, 1, 'no', '2022-02-17 19:21:15'),
(16, 916, 1, 'no', '2022-02-17 19:21:21'),
(17, 916, 1, 'no', '2022-02-17 19:21:23'),
(18, 916, 1, 'no', '2022-02-17 19:21:23'),
(19, 1012, 1, 'no', '2022-02-21 19:24:25'),
(20, 1012, 1, 'no', '2022-02-21 19:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `referral_category`
--

CREATE TABLE `referral_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_commission`
--

CREATE TABLE `referral_commission` (
  `id` int(11) NOT NULL,
  `referral_category_id` int(11) DEFAULT NULL,
  `referral_type_id` int(11) DEFAULT NULL,
  `commission` float DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_payment`
--

CREATE TABLE `referral_payment` (
  `id` int(11) NOT NULL,
  `referral_person_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `referral_type` int(11) DEFAULT NULL,
  `billing_id` int(11) NOT NULL,
  `bill_amount` float(10,2) DEFAULT 0.00,
  `percentage` float(10,2) DEFAULT 0.00,
  `amount` float(10,2) DEFAULT 0.00,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_person`
--

CREATE TABLE `referral_person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `person_phone` varchar(50) DEFAULT NULL,
  `standard_commission` float(10,2) NOT NULL DEFAULT 0.00,
  `address` varchar(100) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_person_commission`
--

CREATE TABLE `referral_person_commission` (
  `id` int(11) NOT NULL,
  `referral_person_id` int(11) DEFAULT NULL,
  `referral_type_id` int(11) DEFAULT NULL,
  `commission` float(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_type`
--

CREATE TABLE `referral_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `prefixes_type` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referral_type`
--

INSERT INTO `referral_type` (`id`, `name`, `prefixes_type`, `is_active`, `created_at`) VALUES
(1, 'opd', 'opd_no', 1, '2021-09-17 02:07:51'),
(2, 'ipd', 'ipd_no', 1, '2021-09-17 02:07:51'),
(3, 'pharmacy', 'pharmacy_billing', 1, '2021-09-17 02:07:51'),
(4, 'pathology', 'pathology_billing', 1, '2021-09-17 02:07:51'),
(5, 'radiology', 'radiology_billing', 1, '2021-09-17 02:07:51'),
(6, 'blood_bank', 'blood_bank_billing', 1, '2021-09-17 02:07:51'),
(7, 'ambulance', 'ambulance_call_billing', 1, '2021-09-17 02:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-12-25 06:19:43'),
(2, 'Accountant', NULL, 0, 1, 0, '2018-12-25 06:19:38'),
(3, 'Doctor', NULL, 0, 1, 0, '2018-07-21 05:07:36'),
(4, 'Pharmacist', NULL, 0, 1, 0, '2018-07-21 05:08:26'),
(5, 'Pathologist', NULL, 0, 1, 0, '2018-12-25 06:19:59'),
(6, 'Radiologist', NULL, 0, 1, 0, '2018-12-25 06:20:27'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-12-25 06:22:24'),
(8, 'Receptionist', NULL, 0, 1, 0, '2022-02-24 11:09:01'),
(9, 'Nurse', NULL, 0, 1, 0, '2020-12-23 01:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(1, 1, 346, 1, 0, 0, 0, '2021-09-15 02:19:21'),
(2, 1, 80, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(3, 1, 81, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(4, 1, 82, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(5, 1, 83, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(6, 1, 84, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(7, 1, 85, 1, 1, 1, 1, '2021-09-15 02:31:34'),
(8, 1, 204, 1, 1, 1, 1, '2021-09-15 02:22:47'),
(9, 1, 205, 1, 0, 0, 0, '2021-09-15 02:20:15'),
(10, 1, 216, 1, 0, 0, 0, '2021-09-15 02:20:15'),
(11, 1, 217, 1, 0, 0, 0, '2021-09-15 02:20:15'),
(14, 1, 237, 1, 0, 0, 0, '2021-09-15 02:25:31'),
(15, 1, 239, 1, 0, 0, 0, '2021-09-15 02:25:31'),
(16, 1, 214, 1, 1, 1, 1, '2021-09-15 02:35:14'),
(17, 1, 215, 1, 1, 1, 1, '2021-09-15 02:35:14'),
(18, 1, 240, 1, 0, 1, 0, '2021-09-15 02:35:14'),
(19, 1, 242, 1, 0, 1, 0, '2021-09-15 02:35:14'),
(36, 1, 48, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(37, 1, 89, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(38, 1, 91, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(39, 1, 178, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(40, 1, 179, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(41, 1, 180, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(42, 1, 181, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(43, 1, 182, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(44, 1, 183, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(45, 1, 184, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(46, 1, 185, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(47, 1, 187, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(48, 1, 188, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(49, 1, 189, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(50, 1, 206, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(51, 1, 207, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(52, 1, 208, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(53, 1, 209, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(54, 1, 210, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(55, 1, 211, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(56, 1, 212, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(57, 1, 213, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(58, 1, 250, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(59, 1, 251, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(60, 1, 253, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(61, 1, 254, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(62, 1, 255, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(63, 1, 256, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(64, 1, 258, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(65, 1, 259, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(66, 1, 265, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(67, 1, 266, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(68, 1, 271, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(69, 1, 272, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(70, 1, 349, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(71, 1, 350, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(72, 1, 351, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(73, 1, 352, 1, 0, 0, 0, '2021-09-15 18:37:59'),
(78, 1, 12, 1, 1, 1, 1, '2021-09-17 21:55:07'),
(79, 1, 13, 1, 1, 1, 1, '2021-09-17 21:55:07'),
(81, 1, 134, 1, 1, 1, 1, '2021-10-07 04:54:53'),
(84, 1, 192, 1, 0, 1, 0, '2021-10-07 04:54:53'),
(105, 1, 140, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(106, 1, 142, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(114, 1, 300, 1, 1, 1, 1, '2021-09-16 22:16:20'),
(117, 1, 309, 1, 0, 1, 0, '2021-09-16 22:16:20'),
(119, 1, 322, 1, 1, 1, 1, '2021-09-16 22:16:20'),
(125, 1, 170, 1, 1, 1, 1, '2021-09-17 19:38:24'),
(127, 1, 201, 1, 0, 1, 0, '2021-09-15 23:45:28'),
(131, 1, 227, 1, 1, 1, 1, '2021-09-17 19:10:09'),
(132, 1, 291, 1, 1, 1, 1, '2021-09-17 19:10:09'),
(133, 1, 292, 1, 1, 1, 1, '2021-09-17 19:10:09'),
(142, 1, 317, 1, 1, 0, 1, '2021-09-15 20:15:33'),
(143, 1, 269, 1, 1, 0, 1, '2021-09-15 20:16:52'),
(144, 1, 270, 1, 1, 0, 1, '2021-09-15 20:16:52'),
(149, 1, 54, 1, 0, 1, 0, '2021-10-07 00:37:31'),
(150, 1, 56, 1, 0, 1, 0, '2021-10-07 00:37:31'),
(151, 1, 57, 1, 0, 1, 0, '2021-09-15 20:53:19'),
(152, 1, 58, 1, 0, 1, 0, '2021-09-15 20:53:19'),
(153, 1, 59, 1, 0, 1, 0, '2021-09-15 20:53:19'),
(154, 1, 60, 1, 0, 1, 0, '2021-09-15 20:53:19'),
(155, 1, 126, 1, 0, 0, 0, '2021-09-15 20:53:19'),
(156, 1, 130, 1, 1, 0, 1, '2021-09-15 20:53:19'),
(157, 1, 131, 1, 0, 0, 0, '2021-09-15 20:54:53'),
(158, 1, 267, 1, 1, 1, 1, '2021-09-15 20:54:53'),
(159, 1, 274, 1, 0, 0, 0, '2021-09-15 20:54:53'),
(160, 1, 279, 1, 1, 1, 1, '2021-09-15 20:54:53'),
(161, 1, 287, 1, 0, 1, 0, '2021-09-15 20:54:53'),
(162, 1, 288, 1, 0, 1, 0, '2021-09-15 20:54:53'),
(163, 1, 348, 1, 0, 1, 0, '2021-09-15 20:54:53'),
(164, 1, 61, 1, 1, 0, 1, '2021-10-07 04:57:12'),
(165, 1, 62, 1, 1, 0, 1, '2021-10-07 04:57:12'),
(166, 1, 63, 1, 1, 0, 1, '2021-10-07 04:57:12'),
(167, 1, 64, 1, 1, 1, 1, '2021-10-07 04:57:12'),
(168, 1, 65, 1, 1, 1, 1, '2021-10-07 04:57:12'),
(169, 1, 66, 1, 1, 1, 1, '2021-10-07 04:57:12'),
(170, 1, 67, 1, 1, 1, 1, '2021-10-07 04:57:12'),
(171, 1, 43, 1, 1, 1, 1, '2021-09-15 21:54:11'),
(172, 1, 44, 1, 0, 0, 0, '2021-09-15 21:53:24'),
(175, 1, 283, 1, 1, 1, 1, '2021-09-17 22:22:19'),
(176, 1, 284, 1, 1, 1, 1, '2021-09-17 22:22:19'),
(177, 1, 285, 1, 1, 1, 1, '2021-09-17 22:22:19'),
(178, 1, 286, 1, 1, 1, 1, '2021-09-17 22:22:19'),
(181, 1, 146, 1, 1, 1, 1, '2021-09-17 02:03:26'),
(182, 1, 148, 1, 1, 1, 1, '2021-09-17 02:03:26'),
(184, 1, 86, 1, 1, 1, 1, '2021-09-17 23:02:51'),
(192, 1, 127, 1, 0, 0, 0, '2021-09-16 00:46:49'),
(193, 1, 118, 1, 0, 0, 0, '2021-09-16 00:59:08'),
(194, 1, 152, 1, 1, 1, 1, '2021-09-16 23:30:15'),
(195, 1, 153, 1, 1, 1, 1, '2021-09-16 19:14:09'),
(197, 1, 354, 1, 0, 1, 0, '2021-09-17 19:42:16'),
(199, 1, 261, 1, 1, 1, 1, '2021-09-17 19:42:16'),
(200, 1, 262, 1, 1, 1, 1, '2021-09-17 19:42:16'),
(201, 1, 315, 1, 1, 0, 1, '2021-09-17 19:42:16'),
(202, 1, 244, 1, 0, 1, 0, '2021-09-16 20:29:17'),
(221, 1, 138, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(222, 1, 139, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(223, 1, 143, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(224, 1, 144, 1, 1, 0, 1, '2021-10-07 04:55:23'),
(226, 1, 197, 1, 0, 1, 0, '2021-09-17 02:01:37'),
(228, 1, 248, 1, 0, 1, 0, '2021-10-07 04:55:23'),
(229, 1, 301, 1, 0, 0, 0, '2021-09-16 22:16:20'),
(230, 1, 308, 1, 0, 0, 0, '2021-09-16 22:16:20'),
(236, 1, 149, 1, 1, 1, 1, '2021-10-22 00:28:29'),
(237, 1, 175, 1, 1, 1, 1, '2021-10-22 00:28:29'),
(238, 1, 243, 1, 0, 1, 0, '2021-10-22 00:28:29'),
(239, 1, 257, 1, 1, 1, 1, '2021-10-22 00:28:29'),
(243, 1, 314, 1, 1, 0, 1, '2021-10-22 00:28:29'),
(245, 1, 310, 1, 0, 0, 0, '2021-09-16 22:29:09'),
(247, 1, 355, 1, 0, 1, 0, '2021-10-22 00:28:29'),
(248, 1, 260, 1, 1, 1, 1, '2021-10-22 00:28:29'),
(249, 1, 263, 1, 1, 1, 1, '2021-10-22 00:28:29'),
(250, 1, 312, 1, 0, 1, 0, '2021-10-22 00:28:29'),
(254, 1, 135, 1, 1, 1, 1, '2021-10-07 04:54:53'),
(255, 1, 137, 1, 1, 1, 1, '2021-10-07 04:54:53'),
(257, 1, 219, 1, 0, 0, 0, '2021-09-17 01:09:11'),
(258, 1, 221, 1, 1, 1, 1, '2021-09-18 00:55:57'),
(259, 1, 222, 1, 1, 0, 1, '2021-09-17 01:13:33'),
(260, 1, 299, 1, 1, 1, 1, '2021-09-17 01:14:24'),
(261, 1, 303, 1, 1, 1, 1, '2021-09-17 01:17:48'),
(262, 1, 304, 1, 0, 0, 0, '2021-09-17 01:21:20'),
(263, 1, 305, 1, 0, 1, 0, '2021-09-17 01:22:28'),
(264, 1, 306, 1, 0, 0, 0, '2021-09-17 01:22:43'),
(265, 1, 307, 1, 0, 0, 0, '2021-09-17 01:23:28'),
(266, 1, 319, 1, 1, 1, 1, '2021-10-07 05:01:26'),
(274, 1, 220, 1, 1, 1, 1, '2021-09-17 02:02:20'),
(275, 1, 326, 1, 1, 1, 1, '2021-09-17 18:09:51'),
(276, 1, 200, 1, 1, 0, 1, '2021-09-17 18:59:44'),
(277, 1, 225, 1, 1, 1, 1, '2021-09-17 19:10:09'),
(278, 1, 226, 1, 1, 1, 1, '2021-09-17 19:10:09'),
(279, 1, 224, 1, 0, 0, 0, '2021-09-17 19:38:24'),
(280, 1, 313, 1, 1, 0, 1, '2021-09-17 19:39:06'),
(281, 1, 171, 1, 1, 1, 1, '2021-09-17 19:46:07'),
(282, 1, 353, 1, 0, 1, 0, '2021-09-17 19:46:38'),
(283, 1, 168, 1, 1, 1, 1, '2021-09-17 20:14:24'),
(284, 1, 169, 1, 1, 1, 1, '2021-09-17 20:16:16'),
(285, 1, 311, 1, 1, 1, 1, '2021-09-17 20:24:00'),
(286, 1, 246, 1, 1, 1, 1, '2021-09-17 20:26:44'),
(287, 1, 202, 1, 1, 0, 1, '2021-09-17 20:30:46'),
(288, 1, 293, 1, 1, 1, 1, '2021-09-17 20:30:46'),
(289, 1, 302, 1, 1, 0, 1, '2021-09-17 20:30:46'),
(290, 1, 173, 1, 1, 1, 1, '2021-09-17 20:36:23'),
(291, 1, 347, 1, 0, 1, 1, '2021-09-17 20:36:23'),
(292, 1, 273, 1, 0, 1, 0, '2021-09-17 21:43:50'),
(293, 1, 9, 1, 1, 1, 1, '2021-09-17 21:47:50'),
(294, 1, 10, 1, 1, 1, 1, '2021-09-17 21:47:50'),
(295, 1, 176, 1, 1, 1, 1, '2021-09-20 23:45:51'),
(296, 1, 102, 1, 1, 1, 1, '2021-10-07 05:04:58'),
(297, 1, 31, 1, 1, 0, 1, '2021-10-07 00:40:13'),
(298, 1, 32, 1, 1, 1, 1, '2021-09-17 22:47:43'),
(299, 1, 33, 1, 1, 1, 1, '2021-09-17 22:47:43'),
(300, 1, 34, 1, 1, 1, 1, '2021-09-17 22:47:43'),
(301, 1, 35, 1, 1, 1, 1, '2021-09-17 22:47:43'),
(302, 1, 104, 1, 1, 1, 1, '2021-09-17 22:47:43'),
(303, 1, 87, 1, 0, 0, 0, '2021-09-17 23:01:48'),
(304, 1, 88, 1, 1, 1, 0, '2021-09-17 23:33:38'),
(305, 1, 90, 1, 1, 0, 1, '2021-09-17 23:34:45'),
(306, 1, 108, 1, 1, 1, 1, '2021-09-17 23:37:46'),
(307, 1, 109, 1, 1, 0, 1, '2021-09-17 23:39:39'),
(308, 1, 110, 1, 1, 1, 1, '2021-10-07 04:56:43'),
(309, 1, 111, 1, 1, 1, 1, '2021-10-07 04:56:43'),
(310, 1, 112, 1, 1, 1, 1, '2021-10-07 04:56:43'),
(311, 1, 249, 1, 1, 1, 1, '2021-10-07 04:56:43'),
(313, 1, 203, 1, 1, 1, 1, '2021-09-17 23:08:50'),
(314, 1, 264, 1, 1, 0, 1, '2021-09-17 23:08:50'),
(315, 1, 289, 1, 1, 1, 1, '2021-09-17 23:08:50'),
(316, 1, 290, 1, 1, 1, 1, '2021-09-17 23:08:50'),
(317, 1, 165, 1, 1, 1, 1, '2021-09-17 23:23:51'),
(318, 1, 166, 1, 1, 1, 1, '2021-09-17 23:23:51'),
(319, 1, 247, 1, 1, 1, 1, '2021-09-17 23:23:51'),
(320, 1, 318, 1, 1, 0, 1, '2021-09-17 23:23:51'),
(324, 2, 237, 1, 0, 0, 0, '2021-09-18 01:01:56'),
(327, 2, 135, 1, 1, 1, 0, '2021-10-07 01:01:51'),
(334, 2, 221, 1, 1, 1, 1, '2021-09-18 01:25:50'),
(335, 2, 222, 1, 1, 0, 1, '2021-09-18 01:26:52'),
(336, 2, 299, 1, 0, 0, 0, '2021-10-07 01:01:51'),
(337, 2, 303, 1, 0, 0, 0, '2021-10-07 01:01:51'),
(339, 2, 305, 1, 0, 1, 0, '2021-09-18 01:38:56'),
(341, 2, 307, 1, 0, 0, 0, '2021-09-18 01:43:41'),
(343, 2, 320, 1, 0, 0, 0, '2021-09-18 01:44:37'),
(346, 2, 138, 1, 1, 1, 0, '2021-10-07 01:02:47'),
(350, 2, 143, 1, 1, 1, 1, '2021-09-19 23:54:42'),
(351, 2, 144, 1, 1, 0, 1, '2021-09-19 23:54:42'),
(354, 2, 329, 1, 0, 0, 0, '2021-09-18 02:23:47'),
(356, 2, 326, 1, 0, 0, 0, '2021-10-07 05:33:02'),
(357, 3, 132, 1, 1, 1, 1, '2021-09-21 20:39:45'),
(358, 3, 134, 1, 1, 1, 1, '2021-09-19 19:30:16'),
(362, 3, 135, 1, 1, 1, 1, '2021-09-19 19:45:00'),
(363, 3, 137, 1, 1, 1, 1, '2021-09-19 19:45:00'),
(364, 3, 192, 1, 0, 1, 0, '2021-09-19 19:46:00'),
(372, 1, 295, 1, 0, 1, 0, '2021-10-07 04:56:29'),
(373, 3, 218, 1, 0, 0, 0, '2021-09-19 21:47:53'),
(374, 3, 219, 1, 0, 0, 0, '2021-09-19 21:48:21'),
(375, 3, 221, 1, 1, 1, 1, '2021-09-19 21:48:54'),
(376, 3, 222, 1, 1, 0, 1, '2021-09-19 21:51:36'),
(377, 3, 299, 1, 1, 1, 1, '2021-09-19 21:53:11'),
(378, 3, 303, 1, 1, 1, 1, '2021-09-19 22:05:35'),
(379, 2, 139, 1, 1, 1, 0, '2021-10-07 01:02:47'),
(380, 3, 304, 1, 0, 0, 0, '2021-09-19 22:21:44'),
(382, 3, 305, 1, 0, 1, 0, '2021-09-19 22:23:53'),
(384, 2, 198, 1, 0, 0, 0, '2021-09-19 22:24:26'),
(386, 2, 300, 1, 1, 1, 1, '2021-09-19 23:54:42'),
(387, 2, 301, 1, 0, 0, 0, '2021-09-19 22:24:26'),
(388, 2, 308, 1, 0, 0, 0, '2021-09-19 22:24:26'),
(389, 2, 309, 1, 0, 0, 0, '2021-09-19 22:24:26'),
(391, 2, 323, 1, 1, 1, 1, '2021-09-19 23:54:42'),
(392, 2, 324, 1, 1, 1, 1, '2021-09-19 23:54:42'),
(393, 2, 325, 1, 1, 1, 1, '2021-09-19 23:54:42'),
(394, 3, 306, 1, 0, 0, 0, '2021-09-19 22:24:51'),
(395, 3, 307, 1, 0, 0, 0, '2021-09-19 22:26:27'),
(396, 3, 319, 1, 1, 1, 1, '2021-09-19 22:27:25'),
(397, 3, 320, 1, 0, 0, 0, '2021-09-19 22:38:28'),
(398, 3, 321, 1, 0, 0, 0, '2021-09-19 22:46:51'),
(399, 3, 138, 1, 1, 1, 1, '2021-09-19 22:47:05'),
(400, 3, 139, 1, 1, 1, 1, '2021-09-19 22:50:25'),
(401, 3, 140, 1, 1, 1, 1, '2021-09-19 22:51:13'),
(402, 3, 142, 1, 1, 1, 1, '2021-09-19 22:51:13'),
(403, 3, 143, 1, 1, 1, 1, '2021-09-19 22:51:13'),
(404, 3, 144, 1, 1, 0, 1, '2021-09-19 22:52:59'),
(405, 3, 196, 1, 1, 1, 1, '2021-09-19 22:56:19'),
(406, 3, 197, 1, 0, 1, 0, '2021-09-19 22:57:00'),
(407, 3, 198, 1, 0, 0, 0, '2021-09-19 22:57:21'),
(408, 3, 220, 1, 1, 1, 1, '2021-09-19 22:57:21'),
(409, 3, 248, 1, 0, 1, 0, '2021-09-19 22:58:10'),
(410, 3, 300, 1, 1, 1, 1, '2021-09-19 22:58:10'),
(411, 3, 301, 1, 0, 0, 0, '2021-09-19 22:59:15'),
(412, 3, 308, 1, 0, 0, 0, '2021-09-19 22:59:50'),
(413, 3, 309, 1, 0, 1, 0, '2021-09-19 23:00:17'),
(414, 3, 310, 1, 0, 0, 0, '2021-09-19 23:00:37'),
(415, 3, 322, 1, 1, 1, 1, '2021-09-19 23:01:22'),
(416, 3, 323, 1, 1, 1, 1, '2021-09-19 23:02:41'),
(417, 3, 324, 1, 1, 1, 1, '2021-09-19 23:02:41'),
(418, 3, 325, 1, 1, 1, 1, '2021-09-19 23:02:41'),
(419, 3, 326, 1, 1, 1, 1, '2021-09-19 23:03:57'),
(420, 3, 327, 1, 0, 0, 0, '2021-09-19 23:10:25'),
(421, 3, 329, 1, 0, 0, 0, '2021-09-19 23:10:25'),
(422, 3, 146, 1, 0, 0, 0, '2021-09-21 21:58:29'),
(424, 2, 327, 1, 0, 0, 0, '2021-09-19 23:14:27'),
(425, 3, 236, 1, 1, 1, 1, '2021-10-07 02:00:54'),
(433, 3, 226, 1, 0, 0, 0, '2021-09-20 19:02:48'),
(435, 3, 291, 1, 0, 0, 0, '2021-09-20 19:02:48'),
(436, 3, 292, 1, 0, 0, 0, '2021-09-20 19:02:48'),
(438, 3, 149, 1, 0, 0, 0, '2021-10-07 01:50:27'),
(444, 3, 312, 1, 0, 0, 0, '2021-10-07 01:50:27'),
(447, 2, 149, 1, 0, 0, 0, '2021-10-07 01:17:28'),
(453, 2, 312, 1, 0, 1, 0, '2021-09-20 00:04:18'),
(454, 2, 314, 1, 1, 0, 1, '2021-09-22 19:32:53'),
(455, 2, 355, 1, 0, 1, 0, '2021-09-20 00:04:18'),
(456, 3, 152, 1, 0, 0, 0, '2021-10-07 01:50:59'),
(463, 3, 353, 1, 0, 0, 0, '2021-10-07 01:50:59'),
(465, 2, 152, 1, 0, 0, 0, '2021-10-07 01:21:53'),
(466, 2, 153, 1, 0, 0, 0, '2021-10-07 01:22:48'),
(472, 2, 353, 1, 0, 1, 0, '2021-09-20 00:34:19'),
(474, 3, 168, 1, 0, 0, 0, '2021-10-07 01:56:13'),
(475, 2, 146, 1, 0, 0, 0, '2021-10-07 01:12:21'),
(476, 2, 148, 1, 0, 0, 0, '2021-10-07 01:12:21'),
(478, 2, 200, 1, 0, 0, 0, '2021-10-07 01:14:19'),
(481, 2, 225, 1, 0, 0, 0, '2021-10-07 01:14:19'),
(484, 2, 291, 1, 1, 0, 0, '2021-10-07 05:33:32'),
(485, 2, 292, 1, 1, 0, 0, '2021-10-07 05:33:32'),
(486, 2, 313, 1, 1, 0, 0, '2021-10-07 05:33:32'),
(495, 3, 270, 1, 1, 0, 1, '2021-09-20 01:25:18'),
(496, 2, 168, 1, 0, 0, 0, '2021-10-07 01:24:37'),
(498, 2, 202, 1, 0, 0, 0, '2021-10-07 01:24:42'),
(500, 2, 293, 1, 0, 0, 0, '2021-10-07 01:25:10'),
(501, 2, 302, 1, 0, 0, 0, '2021-10-07 01:25:10'),
(502, 2, 311, 1, 0, 0, 0, '2021-10-07 01:25:10'),
(503, 2, 317, 1, 1, 0, 1, '2021-09-21 02:02:20'),
(504, 3, 102, 1, 1, 1, 1, '2021-09-20 01:26:19'),
(506, 3, 118, 1, 0, 0, 0, '2021-09-20 01:29:24'),
(519, 3, 173, 1, 0, 0, 0, '2021-10-07 01:56:37'),
(520, 3, 347, 1, 0, 0, 0, '2021-10-07 01:56:37'),
(527, 3, 176, 1, 0, 0, 0, '2021-10-07 02:01:51'),
(530, 3, 289, 1, 0, 0, 0, '2021-10-07 02:01:51'),
(531, 3, 290, 1, 0, 0, 0, '2021-10-07 02:01:51'),
(533, 3, 330, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(534, 3, 331, 1, 0, 0, 0, '2021-10-07 05:42:53'),
(535, 3, 332, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(536, 3, 333, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(537, 3, 334, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(538, 3, 335, 1, 0, 0, 0, '2021-10-07 02:00:10'),
(539, 3, 336, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(540, 3, 337, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(541, 3, 338, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(542, 3, 339, 1, 0, 0, 0, '2021-10-07 02:00:10'),
(543, 3, 340, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(544, 3, 341, 1, 0, 0, 0, '2021-09-21 02:32:35'),
(545, 3, 342, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(546, 3, 343, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(547, 3, 344, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(548, 3, 345, 1, 0, 0, 0, '2021-09-20 01:46:52'),
(550, 3, 166, 1, 0, 0, 0, '2021-09-21 01:50:56'),
(565, 3, 204, 1, 1, 1, 1, '2021-09-20 18:43:10'),
(566, 3, 205, 1, 0, 0, 0, '2021-09-20 02:08:03'),
(567, 3, 216, 1, 0, 0, 0, '2021-09-20 02:08:03'),
(568, 3, 217, 1, 0, 0, 0, '2021-09-20 02:08:03'),
(573, 3, 214, 1, 1, 1, 1, '2021-09-20 02:18:50'),
(574, 3, 215, 1, 1, 1, 1, '2021-09-20 02:18:50'),
(577, 3, 294, 1, 1, 1, 1, '2021-10-07 05:43:36'),
(578, 3, 295, 1, 0, 1, 0, '2021-09-20 23:39:37'),
(579, 3, 296, 1, 1, 1, 1, '2021-09-20 23:39:37'),
(580, 3, 297, 1, 0, 0, 0, '2021-10-07 05:43:36'),
(581, 3, 298, 1, 0, 0, 0, '2021-10-07 05:43:36'),
(584, 2, 165, 1, 0, 0, 0, '2021-10-07 05:35:28'),
(585, 2, 166, 1, 0, 0, 0, '2021-10-07 01:35:03'),
(594, 2, 204, 1, 1, 1, 1, '2021-09-20 18:35:02'),
(596, 2, 216, 1, 0, 0, 0, '2021-09-20 18:14:53'),
(597, 2, 217, 1, 0, 0, 0, '2021-09-20 18:14:53'),
(607, 2, 294, 1, 1, 1, 1, '2021-09-20 20:46:45'),
(608, 2, 295, 1, 0, 1, 0, '2021-09-20 19:50:38'),
(609, 2, 296, 1, 1, 1, 1, '2021-09-20 20:46:45'),
(610, 2, 297, 1, 0, 1, 0, '2021-09-20 19:50:38'),
(611, 2, 298, 1, 0, 1, 0, '2021-09-20 19:50:38'),
(612, 2, 102, 1, 1, 1, 1, '2021-10-07 01:46:19'),
(614, 2, 304, 1, 0, 0, 0, '2021-09-20 20:11:46'),
(619, 3, 302, 1, 0, 0, 0, '2021-10-07 01:56:13'),
(620, 3, 311, 1, 0, 0, 0, '2021-10-07 01:56:13'),
(624, 3, 269, 1, 1, 0, 1, '2021-09-20 20:50:56'),
(626, 2, 176, 1, 1, 1, 1, '2021-09-20 20:55:32'),
(627, 2, 203, 1, 1, 1, 1, '2021-09-20 20:55:32'),
(629, 2, 289, 1, 1, 1, 1, '2021-09-20 20:55:32'),
(630, 2, 290, 1, 1, 1, 1, '2021-09-20 20:55:32'),
(631, 2, 9, 1, 1, 1, 1, '2021-10-07 01:27:11'),
(632, 2, 10, 1, 1, 1, 1, '2021-10-07 01:27:11'),
(633, 2, 12, 1, 1, 1, 1, '2021-09-20 21:09:31'),
(634, 2, 13, 1, 1, 1, 1, '2021-09-22 19:19:22'),
(639, 2, 330, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(640, 2, 331, 1, 1, 0, 0, '2021-09-20 22:53:32'),
(641, 2, 332, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(642, 2, 333, 1, 1, 0, 0, '2021-09-20 22:53:32'),
(643, 2, 334, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(644, 2, 335, 1, 1, 0, 0, '2021-09-21 01:52:27'),
(646, 2, 337, 1, 1, 0, 0, '2021-09-21 19:15:44'),
(647, 2, 338, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(648, 2, 339, 1, 1, 0, 0, '2021-09-21 00:38:37'),
(649, 2, 340, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(650, 2, 341, 1, 1, 0, 0, '2021-09-22 19:19:22'),
(651, 2, 342, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(652, 2, 343, 1, 1, 0, 0, '2021-09-22 19:19:22'),
(653, 2, 344, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(654, 2, 345, 1, 0, 0, 0, '2021-09-20 22:27:44'),
(655, 2, 48, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(658, 2, 178, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(659, 2, 179, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(660, 2, 180, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(661, 2, 181, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(662, 2, 182, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(667, 2, 188, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(668, 2, 189, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(669, 2, 206, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(670, 2, 207, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(671, 2, 208, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(672, 2, 209, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(673, 2, 210, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(675, 2, 212, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(676, 2, 213, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(677, 2, 250, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(678, 2, 251, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(679, 2, 253, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(680, 2, 254, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(681, 2, 255, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(687, 2, 271, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(688, 2, 272, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(689, 2, 349, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(690, 2, 350, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(691, 2, 351, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(692, 2, 352, 1, 0, 0, 0, '2021-09-20 23:01:51'),
(693, 3, 86, 1, 0, 0, 0, '2021-10-07 02:07:51'),
(695, 2, 43, 1, 1, 1, 1, '2021-09-21 00:07:38'),
(696, 2, 44, 1, 0, 0, 0, '2021-09-20 23:59:29'),
(700, 3, 109, 1, 1, 0, 1, '2021-10-07 02:07:51'),
(703, 2, 27, 1, 1, 0, 1, '2021-09-21 00:22:26'),
(706, 2, 31, 1, 1, 0, 1, '2021-09-21 00:38:37'),
(707, 2, 32, 1, 1, 1, 1, '2021-09-21 00:38:37'),
(708, 2, 33, 1, 1, 1, 1, '2021-09-21 00:38:37'),
(709, 2, 34, 1, 1, 1, 1, '2021-09-21 00:38:37'),
(710, 2, 35, 1, 1, 1, 1, '2021-09-21 00:38:37'),
(711, 2, 104, 1, 1, 1, 1, '2021-09-21 00:38:37'),
(712, 2, 315, 1, 1, 0, 1, '2021-09-22 19:34:31'),
(726, 3, 43, 1, 1, 1, 1, '2021-09-21 01:03:20'),
(727, 3, 44, 1, 0, 0, 0, '2021-09-21 01:03:20'),
(728, 3, 27, 1, 1, 0, 1, '2021-09-21 01:12:55'),
(735, 3, 165, 1, 0, 0, 0, '2021-10-07 02:02:19'),
(750, 3, 267, 1, 1, 1, 1, '2021-09-21 01:47:43'),
(751, 3, 274, 1, 0, 0, 0, '2021-09-21 01:45:32'),
(752, 3, 279, 1, 1, 1, 1, '2021-09-21 01:47:43'),
(757, 2, 86, 1, 1, 1, 1, '2021-09-21 20:06:20'),
(764, 2, 283, 1, 1, 1, 1, '2021-09-22 01:07:28'),
(765, 2, 284, 1, 1, 1, 1, '2021-09-22 01:07:28'),
(766, 2, 285, 1, 1, 1, 1, '2021-09-22 01:07:28'),
(767, 2, 286, 1, 1, 1, 1, '2021-09-22 01:07:28'),
(768, 3, 48, 1, 0, 0, 0, '2021-09-21 02:12:03'),
(771, 3, 178, 1, 0, 0, 0, '2021-09-21 02:12:03'),
(775, 3, 182, 1, 0, 0, 0, '2021-09-21 02:12:03'),
(801, 3, 272, 1, 0, 0, 0, '2021-09-21 02:12:03'),
(806, 2, 88, 1, 0, 0, 0, '2021-10-07 05:36:29'),
(807, 2, 90, 1, 0, 0, 0, '2021-10-07 05:36:29'),
(809, 2, 109, 1, 1, 0, 1, '2021-09-27 06:57:53'),
(814, 2, 249, 1, 1, 1, 1, '2021-09-22 01:43:04'),
(816, 2, 310, 1, 0, 0, 0, '2021-09-21 18:00:40'),
(817, 2, 129, 0, 1, 0, 1, '2021-09-22 01:43:04'),
(819, 1, 362, 1, 0, 0, 0, '2021-09-21 18:50:19'),
(820, 1, 363, 1, 1, 1, 1, '2021-09-21 19:07:31'),
(821, 1, 364, 1, 0, 0, 0, '2021-09-21 18:59:42'),
(822, 1, 365, 1, 1, 1, 1, '2021-09-21 19:03:37'),
(823, 1, 366, 1, 0, 0, 0, '2021-09-21 18:59:42'),
(826, 2, 132, 1, 1, 1, 0, '2021-10-07 01:01:51'),
(849, 2, 319, 1, 0, 0, 0, '2021-10-07 05:31:49'),
(870, 3, 368, 1, 0, 0, 0, '2021-09-21 20:33:40'),
(924, 8, 152, 1, 1, 1, 1, '2022-02-26 09:20:54'),
(927, 4, 270, 1, 0, 0, 0, '2021-10-07 02:27:36'),
(948, 4, 334, 1, 0, 0, 0, '2021-09-21 23:56:07'),
(949, 4, 335, 1, 1, 0, 0, '2021-09-30 06:47:45'),
(962, 4, 176, 1, 1, 1, 1, '2021-10-07 05:52:38'),
(963, 4, 203, 1, 1, 1, 1, '2021-10-07 05:52:38'),
(965, 4, 289, 1, 1, 1, 1, '2021-09-30 07:32:30'),
(966, 4, 290, 1, 1, 1, 1, '2021-09-30 07:32:30'),
(983, 4, 216, 1, 0, 0, 0, '2021-09-22 00:25:36'),
(984, 4, 217, 1, 0, 0, 0, '2021-09-22 00:34:54'),
(990, 4, 86, 1, 0, 0, 0, '2021-10-07 02:37:32'),
(995, 4, 109, 1, 1, 0, 1, '2021-10-01 00:27:47'),
(1001, 2, 118, 1, 0, 0, 0, '2021-09-22 00:55:25'),
(1016, 4, 43, 1, 1, 1, 1, '2021-09-22 01:04:08'),
(1017, 4, 44, 1, 0, 0, 0, '2021-09-22 01:04:08'),
(1018, 4, 27, 1, 1, 0, 1, '2021-09-22 01:12:34'),
(1060, 4, 179, 1, 0, 0, 0, '2021-09-22 01:51:01'),
(1099, 2, 336, 1, 0, 0, 0, '2021-09-22 19:19:22'),
(1119, 1, 367, 1, 1, 1, 1, '2021-10-07 05:04:40'),
(1134, 9, 102, 1, 1, 1, 1, '2021-09-22 20:44:30'),
(1136, 9, 132, 1, 0, 0, 0, '2021-10-07 04:18:18'),
(1137, 9, 134, 1, 0, 0, 0, '2021-10-07 04:18:34'),
(1138, 9, 135, 1, 0, 0, 0, '2021-10-07 04:18:50'),
(1141, 9, 218, 1, 0, 0, 0, '2021-09-22 20:46:41'),
(1142, 9, 219, 1, 0, 0, 0, '2021-09-22 20:46:41'),
(1145, 9, 299, 1, 1, 1, 1, '2021-09-22 22:31:25'),
(1146, 9, 303, 1, 0, 0, 0, '2021-10-07 04:24:16'),
(1147, 9, 304, 1, 0, 0, 0, '2021-09-22 20:46:41'),
(1148, 9, 305, 1, 0, 0, 0, '2021-10-07 04:25:46'),
(1150, 9, 307, 1, 0, 0, 0, '2021-09-22 20:46:41'),
(1151, 9, 319, 1, 0, 0, 0, '2021-10-07 04:25:46'),
(1165, 5, 308, 1, 0, 0, 0, '2021-09-22 20:57:37'),
(1175, 5, 329, 1, 0, 0, 0, '2021-09-22 22:14:39'),
(1188, 1, 53, 1, 1, 0, 0, '2021-09-22 23:24:10'),
(1189, 5, 149, 1, 1, 1, 1, '2021-09-22 22:40:24'),
(1190, 5, 175, 1, 1, 1, 1, '2021-09-22 22:59:48'),
(1191, 5, 243, 1, 0, 1, 0, '2021-09-22 22:59:48'),
(1193, 5, 260, 1, 1, 1, 1, '2021-09-22 22:59:48'),
(1194, 5, 263, 1, 1, 1, 1, '2021-09-22 22:59:48'),
(1195, 5, 312, 1, 0, 1, 0, '2021-09-22 22:59:48'),
(1196, 5, 314, 1, 1, 0, 1, '2021-09-22 22:59:48'),
(1197, 5, 355, 1, 0, 1, 0, '2021-09-22 22:59:48'),
(1204, 9, 138, 1, 0, 0, 0, '2021-10-07 04:51:18'),
(1205, 9, 139, 1, 0, 0, 0, '2021-10-07 04:51:18'),
(1206, 9, 140, 1, 1, 1, 1, '2021-10-23 04:56:32'),
(1207, 9, 142, 1, 1, 1, 1, '2021-10-23 04:56:32'),
(1210, 9, 196, 1, 0, 0, 0, '2021-10-07 04:27:45'),
(1212, 9, 198, 1, 0, 0, 0, '2021-09-22 23:19:30'),
(1213, 9, 220, 1, 0, 0, 0, '2021-10-07 04:27:45'),
(1215, 9, 300, 1, 1, 1, 1, '2021-09-23 01:24:52'),
(1216, 9, 301, 1, 0, 0, 0, '2021-09-22 23:19:30'),
(1217, 9, 308, 1, 0, 0, 0, '2021-09-22 23:19:30'),
(1218, 9, 309, 1, 0, 0, 0, '2021-10-07 04:27:45'),
(1220, 9, 322, 1, 1, 1, 1, '2021-09-23 01:24:52'),
(1224, 9, 326, 1, 0, 0, 0, '2021-10-07 04:27:45'),
(1225, 9, 327, 1, 0, 0, 0, '2021-09-22 23:19:30'),
(1226, 9, 329, 1, 0, 0, 0, '2021-09-22 23:19:30'),
(1235, 1, 191, 1, 0, 0, 0, '2021-09-22 23:49:17'),
(1246, 5, 317, 1, 1, 0, 1, '2021-09-23 00:16:36'),
(1248, 5, 270, 1, 0, 0, 0, '2021-10-07 03:23:02'),
(1250, 5, 102, 1, 1, 1, 1, '2021-09-23 00:32:09'),
(1251, 5, 346, 1, 0, 0, 0, '2021-09-23 00:32:09'),
(1269, 5, 337, 1, 1, 0, 0, '2021-09-23 01:31:48'),
(1278, 5, 236, 1, 0, 0, 0, '2021-10-07 03:26:02'),
(1306, 5, 216, 1, 0, 0, 0, '2021-09-23 01:40:28'),
(1307, 5, 217, 1, 0, 0, 0, '2021-09-23 01:40:28'),
(1317, 5, 86, 1, 0, 0, 0, '2021-10-07 03:29:26'),
(1322, 5, 109, 1, 1, 0, 1, '2021-09-23 19:36:32'),
(1329, 5, 43, 1, 1, 1, 1, '2021-09-30 00:45:54'),
(1330, 5, 44, 1, 0, 0, 0, '2021-09-23 02:12:30'),
(1331, 5, 27, 1, 1, 0, 1, '2021-09-23 02:15:51'),
(1355, 9, 270, 1, 0, 0, 0, '2021-10-07 06:17:12'),
(1358, 9, 236, 1, 0, 0, 0, '2021-10-07 04:42:28'),
(1370, 5, 158, 1, 0, 0, 0, '2021-09-23 19:44:20'),
(1416, 5, 369, 1, 0, 0, 0, '2021-09-23 20:16:25'),
(1426, 5, 180, 1, 0, 0, 0, '2021-09-23 20:23:15'),
(1460, 6, 270, 1, 0, 0, 0, '2021-10-07 03:38:49'),
(1503, 6, 304, 1, 0, 0, 0, '2021-09-27 00:19:54'),
(1509, 6, 319, 1, 0, 0, 0, '2021-10-07 06:03:09'),
(1518, 9, 216, 1, 0, 0, 0, '2021-09-27 00:45:44'),
(1519, 9, 217, 1, 0, 0, 0, '2021-09-27 00:45:44'),
(1579, 2, 155, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1580, 2, 156, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1581, 2, 157, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1582, 2, 158, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1583, 2, 159, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1584, 2, 161, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1585, 2, 162, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1586, 2, 190, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1587, 2, 191, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1588, 2, 238, 1, 0, 0, 0, '2021-09-27 05:41:19'),
(1596, 9, 48, 1, 0, 0, 0, '2021-09-27 06:56:58'),
(1599, 9, 178, 1, 0, 0, 0, '2021-09-27 06:56:58'),
(1603, 9, 182, 1, 0, 0, 0, '2021-09-27 06:56:58'),
(1631, 9, 350, 1, 0, 0, 0, '2021-09-27 06:56:58'),
(1663, 9, 27, 1, 0, 0, 0, '2021-10-23 04:59:59'),
(1664, 9, 43, 1, 1, 1, 1, '2021-09-28 01:25:13'),
(1665, 9, 44, 1, 0, 0, 0, '2021-09-28 01:20:42'),
(1666, 9, 86, 1, 0, 0, 0, '2021-10-07 04:46:07'),
(1671, 9, 109, 1, 1, 0, 1, '2021-09-28 01:58:50'),
(1679, 9, 204, 1, 1, 1, 1, '2021-09-28 03:31:04'),
(1680, 9, 205, 1, 0, 0, 0, '2021-09-28 03:31:04'),
(1697, 6, 152, 1, 1, 1, 1, '2021-09-28 05:21:22'),
(1698, 6, 153, 1, 1, 1, 1, '2021-09-28 05:21:22'),
(1699, 6, 171, 1, 1, 1, 1, '2021-09-28 05:21:22'),
(1700, 6, 244, 1, 0, 1, 0, '2021-09-28 05:21:22'),
(1701, 6, 261, 1, 1, 1, 1, '2021-09-28 05:21:22'),
(1702, 6, 262, 1, 1, 1, 1, '2021-09-28 05:21:22'),
(1703, 6, 315, 1, 1, 0, 1, '2021-09-28 05:21:22'),
(1704, 6, 353, 1, 0, 1, 0, '2021-09-28 05:21:22'),
(1705, 6, 354, 1, 0, 1, 0, '2021-09-28 05:21:22'),
(1713, 6, 236, 1, 0, 0, 0, '2021-10-07 03:46:01'),
(1716, 6, 176, 1, 1, 1, 1, '2021-10-07 06:04:58'),
(1719, 6, 289, 1, 1, 1, 1, '2021-09-28 06:47:58'),
(1720, 6, 290, 1, 1, 1, 1, '2021-09-28 06:47:58'),
(1739, 6, 43, 1, 1, 1, 1, '2021-09-28 07:53:01'),
(1740, 6, 44, 1, 0, 0, 0, '2021-09-28 07:51:03'),
(1741, 6, 27, 1, 1, 0, 1, '2021-09-28 07:57:40'),
(1742, 6, 118, 1, 0, 0, 0, '2021-09-28 07:59:22'),
(1747, 6, 159, 1, 0, 0, 0, '2021-09-28 07:59:22'),
(1782, 2, 205, 1, 0, 0, 0, '2021-09-29 03:01:52'),
(1823, 6, 338, 1, 0, 0, 0, '2021-09-29 05:47:03'),
(1824, 6, 339, 1, 1, 0, 0, '2021-09-29 06:07:31'),
(1831, 2, 318, 1, 1, 0, 1, '2021-09-29 06:26:26'),
(1838, 6, 181, 1, 0, 0, 0, '2021-09-29 06:27:14'),
(1872, 6, 102, 1, 1, 1, 1, '2021-09-29 06:31:52'),
(1873, 6, 86, 1, 0, 0, 0, '2021-10-07 03:48:51'),
(1878, 6, 109, 1, 1, 0, 1, '2021-09-29 07:05:03'),
(1900, 6, 329, 1, 0, 0, 0, '2021-09-29 07:59:38'),
(1906, 5, 370, 1, 0, 0, 0, '2021-09-30 02:11:43'),
(1908, 4, 146, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1909, 4, 148, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1910, 4, 170, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1911, 4, 200, 1, 1, 0, 1, '2021-10-07 02:24:11'),
(1912, 4, 201, 1, 0, 1, 0, '2021-09-30 05:42:41'),
(1913, 4, 224, 1, 0, 0, 0, '2021-09-30 05:36:57'),
(1914, 4, 225, 1, 1, 0, 1, '2021-10-07 02:24:11'),
(1915, 4, 226, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1916, 4, 227, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1917, 4, 291, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1918, 4, 292, 1, 1, 1, 1, '2021-10-07 02:24:11'),
(1919, 4, 313, 1, 1, 0, 1, '2021-10-07 02:24:11'),
(1931, 4, 236, 1, 0, 0, 0, '2021-10-07 02:30:35'),
(1934, 4, 118, 1, 0, 0, 0, '2021-10-01 00:51:45'),
(1937, 4, 157, 1, 0, 0, 0, '2021-10-01 00:51:45'),
(1944, 4, 238, 1, 0, 0, 0, '2021-10-01 00:51:45'),
(1957, 4, 256, 1, 0, 0, 0, '2021-10-01 00:54:01'),
(1976, 4, 102, 1, 1, 1, 1, '2021-10-01 01:33:49'),
(1977, 4, 274, 1, 0, 0, 0, '2021-10-01 01:36:40'),
(1980, 9, 137, 1, 1, 1, 1, '2021-10-23 04:54:52'),
(1981, 2, 173, 1, 1, 1, 1, '2021-10-07 05:34:24'),
(1982, 2, 347, 1, 0, 1, 1, '2021-10-07 05:34:24'),
(1995, 1, 196, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(1996, 1, 323, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(1997, 1, 324, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(1998, 1, 325, 1, 1, 1, 1, '2021-10-07 04:55:23'),
(1999, 1, 236, 1, 1, 1, 1, '2021-10-07 00:36:12'),
(2001, 2, 270, 1, 0, 0, 0, '2021-10-07 01:25:46'),
(2002, 2, 236, 1, 1, 1, 0, '2021-10-07 01:28:54'),
(2003, 2, 266, 1, 0, 0, 0, '2021-10-07 01:43:54'),
(2019, 8, 132, 1, 1, 1, 1, '2021-10-07 04:00:10'),
(2020, 8, 135, 1, 1, 1, 1, '2021-10-07 04:00:10'),
(2021, 8, 218, 1, 0, 0, 0, '2021-10-07 04:00:10'),
(2022, 8, 219, 1, 0, 0, 0, '2021-10-07 04:00:10'),
(2023, 8, 221, 1, 1, 1, 1, '2021-10-07 06:09:52'),
(2024, 8, 222, 1, 1, 0, 1, '2021-10-07 06:09:52'),
(2025, 8, 138, 1, 1, 1, 1, '2021-10-07 04:00:35'),
(2026, 8, 139, 1, 1, 1, 1, '2021-10-07 04:00:35'),
(2027, 8, 143, 1, 1, 1, 1, '2021-10-07 06:10:36'),
(2028, 8, 144, 1, 1, 0, 1, '2021-10-07 06:10:36'),
(2029, 8, 326, 1, 0, 0, 0, '2021-10-07 04:01:17'),
(2031, 8, 196, 1, 1, 1, 1, '2021-10-07 06:10:36'),
(2032, 8, 198, 1, 0, 0, 0, '2021-10-07 04:03:01'),
(2034, 4, 202, 1, 0, 0, 0, '2021-10-07 04:03:15'),
(2035, 8, 146, 1, 0, 0, 0, '2021-10-07 04:03:54'),
(2036, 8, 148, 1, 0, 0, 0, '2021-10-07 04:03:54'),
(2037, 8, 200, 1, 0, 0, 0, '2021-10-07 04:03:54'),
(2038, 8, 225, 1, 0, 0, 0, '2021-10-07 04:03:54'),
(2039, 8, 149, 1, 0, 0, 0, '2021-10-07 04:04:27'),
(2042, 8, 168, 1, 0, 0, 0, '2021-10-07 04:04:59'),
(2043, 8, 270, 1, 0, 0, 0, '2021-10-07 04:05:25'),
(2044, 8, 173, 1, 0, 0, 0, '2021-10-07 04:06:20'),
(2045, 8, 347, 1, 0, 0, 0, '2021-10-07 04:06:20'),
(2046, 8, 330, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2047, 8, 332, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2048, 8, 334, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2049, 8, 336, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2050, 8, 338, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2051, 8, 340, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2052, 8, 342, 1, 0, 0, 0, '2021-10-07 04:08:02'),
(2053, 8, 236, 1, 1, 1, 0, '2021-10-07 04:08:58'),
(2055, 8, 165, 1, 1, 1, 1, '2021-10-07 06:12:31'),
(2056, 8, 166, 1, 1, 1, 1, '2021-10-07 06:12:31'),
(2057, 8, 80, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2058, 8, 81, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2059, 8, 82, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2060, 8, 83, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2061, 8, 84, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2062, 8, 85, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2063, 8, 204, 1, 1, 1, 1, '2021-10-07 04:11:10'),
(2064, 8, 205, 1, 0, 0, 0, '2021-10-07 04:11:10'),
(2065, 8, 214, 1, 0, 0, 0, '2021-10-07 04:11:28'),
(2066, 8, 215, 1, 0, 0, 0, '2021-10-07 04:11:28'),
(2067, 8, 86, 1, 0, 0, 0, '2021-10-07 04:11:47'),
(2068, 8, 109, 1, 1, 0, 1, '2021-10-07 04:11:47'),
(2069, 8, 31, 1, 0, 0, 0, '2021-10-07 04:12:14'),
(2070, 8, 32, 1, 0, 0, 0, '2021-10-07 04:12:14'),
(2071, 8, 48, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2072, 8, 89, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2073, 8, 178, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2074, 8, 180, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2075, 8, 181, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2076, 8, 182, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2077, 8, 207, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2078, 8, 208, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2079, 8, 209, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2080, 8, 253, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2081, 8, 254, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2082, 8, 255, 1, 0, 0, 0, '2021-10-07 04:13:52'),
(2083, 8, 118, 1, 0, 0, 0, '2021-10-07 04:14:18'),
(2084, 8, 238, 1, 0, 0, 0, '2021-10-07 04:14:18'),
(2085, 8, 102, 1, 1, 1, 1, '2021-10-07 04:14:38'),
(2086, 9, 321, 1, 0, 0, 0, '2021-10-07 04:25:46'),
(2093, 1, 132, 1, 1, 1, 1, '2021-10-07 04:54:53'),
(2094, 1, 198, 1, 0, 0, 0, '2021-10-07 04:55:23'),
(2095, 1, 327, 1, 0, 0, 0, '2021-10-07 04:55:23'),
(2096, 1, 329, 1, 0, 0, 0, '2021-10-07 04:55:23'),
(2108, 1, 294, 1, 1, 1, 1, '2021-10-07 04:56:29'),
(2109, 1, 296, 1, 1, 1, 1, '2021-10-07 04:56:29'),
(2110, 1, 297, 1, 0, 0, 0, '2021-10-07 04:56:29'),
(2111, 1, 298, 1, 0, 0, 0, '2021-10-07 04:56:29'),
(2112, 1, 129, 0, 1, 0, 1, '2021-10-07 04:56:43'),
(2113, 1, 27, 1, 1, 0, 1, '2021-10-07 04:56:54'),
(2114, 1, 155, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2115, 1, 156, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2116, 1, 157, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2117, 1, 158, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2118, 1, 159, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2119, 1, 161, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2120, 1, 162, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2121, 1, 190, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2122, 1, 238, 1, 0, 0, 0, '2021-10-07 04:57:41'),
(2127, 1, 320, 1, 0, 0, 0, '2021-10-07 05:01:34'),
(2128, 1, 321, 1, 0, 0, 0, '2021-10-07 05:01:34'),
(2135, 1, 371, 1, 0, 0, 0, '2021-10-07 05:05:30'),
(2150, 1, 280, 1, 1, 1, 1, '2021-10-07 05:29:08'),
(2151, 1, 369, 1, 0, 0, 0, '2021-10-07 05:30:23'),
(2152, 1, 370, 1, 0, 0, 0, '2021-10-07 05:30:23'),
(2153, 1, 281, 1, 0, 0, 0, '2021-10-07 05:30:36'),
(2154, 1, 282, 1, 0, 0, 0, '2021-10-07 05:30:36'),
(2155, 2, 321, 1, 0, 0, 0, '2021-10-07 05:31:49'),
(2156, 2, 197, 1, 0, 0, 0, '2021-10-07 05:33:02'),
(2157, 2, 248, 1, 0, 0, 0, '2021-10-07 05:33:02'),
(2158, 2, 264, 1, 1, 0, 1, '2021-10-07 05:34:52'),
(2159, 2, 247, 1, 0, 0, 0, '2021-10-07 05:35:28'),
(2160, 2, 281, 1, 0, 0, 0, '2021-10-07 05:40:09'),
(2161, 2, 282, 1, 0, 0, 0, '2021-10-07 05:40:09'),
(2162, 2, 371, 1, 0, 0, 0, '2021-10-07 05:40:26'),
(2163, 3, 257, 1, 0, 0, 0, '2021-10-07 05:41:20'),
(2164, 3, 355, 1, 0, 0, 0, '2021-10-07 05:41:20'),
(2165, 3, 153, 1, 0, 0, 0, '2021-10-07 05:41:40'),
(2166, 3, 244, 1, 0, 0, 0, '2021-10-07 05:41:40'),
(2167, 3, 354, 1, 0, 0, 0, '2021-10-07 05:41:40'),
(2168, 3, 202, 1, 0, 0, 0, '2021-10-07 05:42:06'),
(2169, 3, 246, 1, 0, 0, 0, '2021-10-07 05:42:06'),
(2170, 3, 237, 1, 0, 0, 0, '2021-10-07 05:43:04'),
(2171, 3, 240, 1, 0, 1, 0, '2021-10-07 05:43:28'),
(2172, 3, 242, 1, 0, 1, 0, '2021-10-07 05:43:28'),
(2173, 3, 129, 0, 1, 0, 1, '2021-10-07 05:43:59'),
(2174, 3, 183, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2175, 3, 188, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2176, 3, 206, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2177, 3, 207, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2178, 3, 208, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2179, 3, 209, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2180, 3, 211, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2181, 3, 258, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2182, 3, 271, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2183, 3, 350, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2184, 3, 369, 1, 0, 0, 0, '2021-10-07 05:46:03'),
(2185, 3, 238, 1, 0, 0, 0, '2021-10-07 05:46:28'),
(2186, 3, 362, 1, 0, 0, 0, '2021-10-07 05:46:52'),
(2187, 3, 363, 1, 1, 1, 1, '2021-10-07 05:47:07'),
(2188, 3, 366, 1, 0, 0, 0, '2021-10-07 05:46:52'),
(2189, 3, 367, 1, 1, 1, 1, '2021-10-07 05:47:07'),
(2190, 3, 371, 1, 0, 0, 0, '2021-10-07 05:47:23'),
(2194, 4, 132, 1, 0, 0, 0, '2021-10-07 05:50:59'),
(2195, 4, 138, 1, 0, 0, 0, '2021-10-07 05:51:05'),
(2196, 4, 264, 1, 1, 0, 1, '2021-10-07 05:52:38'),
(2198, 4, 371, 1, 0, 0, 0, '2021-10-07 05:56:00'),
(2201, 5, 132, 1, 0, 0, 0, '2021-10-07 05:56:53'),
(2202, 5, 304, 1, 0, 0, 0, '2021-10-07 05:56:53'),
(2204, 5, 138, 1, 0, 0, 0, '2021-10-07 05:57:32'),
(2205, 5, 139, 1, 0, 0, 0, '2021-10-07 05:57:32'),
(2206, 5, 307, 1, 0, 0, 0, '2021-10-07 05:57:47'),
(2207, 5, 257, 1, 1, 1, 1, '2021-10-07 05:58:05'),
(2209, 5, 168, 1, 1, 1, 1, '2021-10-07 05:58:48'),
(2210, 5, 169, 1, 1, 1, 1, '2021-10-07 05:58:48'),
(2211, 5, 202, 1, 1, 0, 1, '2021-10-07 05:58:48'),
(2212, 5, 246, 1, 0, 0, 0, '2021-10-07 05:58:48'),
(2213, 5, 293, 1, 1, 1, 1, '2021-10-07 05:58:48'),
(2214, 5, 302, 1, 1, 0, 1, '2021-10-07 05:58:48'),
(2215, 5, 311, 1, 1, 1, 1, '2021-10-07 05:58:48'),
(2216, 5, 336, 1, 0, 0, 0, '2021-10-07 05:59:04'),
(2217, 5, 274, 1, 0, 0, 0, '2021-10-07 06:00:38'),
(2219, 5, 183, 1, 0, 0, 0, '2021-10-07 06:01:42'),
(2220, 5, 211, 1, 0, 0, 0, '2021-10-07 06:01:42'),
(2221, 5, 371, 1, 0, 0, 0, '2021-10-07 06:02:10'),
(2222, 6, 132, 1, 0, 0, 0, '2021-10-07 06:03:09'),
(2223, 6, 135, 1, 0, 0, 0, '2021-10-07 06:03:09'),
(2224, 6, 138, 1, 0, 0, 0, '2021-10-07 06:03:45'),
(2225, 6, 139, 1, 0, 0, 0, '2021-10-07 06:03:45'),
(2226, 6, 308, 1, 0, 0, 0, '2021-10-07 06:03:45'),
(2227, 6, 309, 1, 0, 0, 0, '2021-10-07 06:03:45'),
(2228, 6, 203, 1, 1, 1, 1, '2021-10-07 06:04:58'),
(2229, 6, 264, 1, 1, 0, 1, '2021-10-07 06:04:58'),
(2231, 6, 274, 1, 0, 0, 0, '2021-10-07 06:06:19'),
(2232, 6, 371, 1, 0, 0, 0, '2021-10-07 06:07:27'),
(2233, 8, 304, 1, 0, 0, 0, '2021-10-07 06:09:52'),
(2234, 8, 305, 1, 0, 1, 0, '2021-10-07 06:09:52'),
(2235, 8, 306, 1, 0, 0, 0, '2021-10-07 06:09:52'),
(2236, 8, 307, 1, 0, 0, 0, '2021-10-07 06:09:52'),
(2237, 8, 319, 1, 1, 1, 1, '2021-10-07 06:09:52'),
(2238, 8, 320, 1, 0, 0, 0, '2021-10-07 06:09:52'),
(2239, 8, 301, 1, 0, 0, 0, '2021-10-07 06:10:36'),
(2240, 8, 309, 1, 0, 1, 0, '2021-10-07 06:10:36'),
(2241, 8, 310, 1, 0, 0, 0, '2021-10-07 06:10:36'),
(2242, 8, 329, 1, 0, 0, 0, '2021-10-07 06:10:36'),
(2243, 8, 257, 1, 0, 0, 0, '2021-10-07 06:10:57'),
(2244, 8, 153, 1, 1, 1, 1, '2022-02-26 09:20:54'),
(2245, 8, 169, 1, 0, 0, 0, '2021-10-07 06:11:37'),
(2246, 8, 202, 1, 0, 0, 0, '2021-10-07 06:11:37'),
(2247, 8, 302, 1, 0, 0, 0, '2021-10-07 06:11:37'),
(2248, 8, 311, 1, 0, 0, 0, '2021-10-07 06:11:37'),
(2249, 2, 348, 1, 0, 1, 0, '2021-10-07 06:17:44'),
(2250, 8, 247, 1, 1, 1, 1, '2021-10-07 06:12:31'),
(2251, 8, 318, 1, 1, 0, 1, '2021-10-07 06:12:31'),
(2253, 8, 295, 1, 0, 0, 0, '2022-02-24 11:54:39'),
(2254, 8, 296, 1, 0, 0, 0, '2022-02-24 11:54:39'),
(2255, 8, 297, 1, 0, 0, 0, '2021-10-07 06:13:02'),
(2257, 2, 56, 1, 0, 0, 0, '2021-10-07 06:13:19'),
(2258, 8, 43, 1, 1, 1, 1, '2021-10-07 06:13:22'),
(2259, 8, 44, 1, 0, 0, 0, '2021-10-07 06:13:22'),
(2260, 8, 27, 1, 1, 0, 1, '2021-10-07 06:13:28'),
(2261, 8, 274, 1, 0, 0, 0, '2021-10-07 06:13:45'),
(2262, 2, 54, 1, 0, 0, 0, '2021-10-07 06:13:47'),
(2263, 8, 183, 1, 0, 0, 0, '2021-10-07 06:15:00'),
(2264, 8, 256, 1, 0, 0, 0, '2021-10-07 06:15:00'),
(2265, 8, 258, 1, 0, 0, 0, '2021-10-07 06:15:00'),
(2266, 8, 259, 1, 0, 0, 0, '2021-10-07 06:15:00'),
(2267, 8, 350, 1, 0, 0, 0, '2021-10-07 06:15:00'),
(2268, 8, 162, 1, 0, 0, 0, '2021-10-07 06:15:18'),
(2269, 8, 371, 1, 0, 0, 0, '2021-10-07 06:15:32'),
(2271, 9, 274, 1, 0, 0, 0, '2021-10-07 06:19:59'),
(2272, 9, 118, 1, 0, 0, 0, '2021-10-07 06:20:29'),
(2273, 9, 238, 1, 0, 0, 0, '2021-10-07 06:20:29'),
(2274, 9, 371, 1, 0, 0, 0, '2021-10-07 06:20:40'),
(2275, 1, 218, 1, 0, 0, 0, '2021-10-07 06:20:53'),
(2276, 1, 330, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2277, 1, 331, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2278, 1, 332, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2279, 1, 333, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2280, 1, 334, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2281, 1, 335, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2282, 1, 336, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2283, 1, 337, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2284, 1, 338, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2285, 1, 339, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2286, 1, 340, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2287, 1, 341, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2288, 1, 342, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2289, 1, 343, 1, 1, 0, 0, '2021-10-22 00:27:48'),
(2290, 1, 344, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2291, 1, 345, 1, 0, 0, 0, '2021-10-22 00:27:48'),
(2292, 1, 372, 1, NULL, NULL, NULL, '2021-10-29 07:41:42'),
(2293, 1, 373, 1, NULL, NULL, NULL, '2021-10-29 07:42:20'),
(2294, 1, 374, 1, 1, 1, 1, '2021-10-29 07:45:25'),
(2295, 1, 375, 1, 1, 1, 1, '2021-10-29 07:45:25'),
(2296, 1, 386, 1, 1, 0, 1, '2021-11-10 06:22:22'),
(2297, 3, 386, 1, 1, 0, 1, '2021-11-10 06:22:22'),
(2298, 1, 387, 1, 0, 0, 0, '2021-11-10 06:24:10'),
(2299, 3, 387, 1, 0, 0, 0, '2021-11-10 06:24:10'),
(2301, 8, 387, 1, 0, 0, 0, '2022-01-15 07:18:41'),
(2302, 10, 155, 1, 0, 0, 0, '2022-02-21 07:40:36'),
(2303, 10, 156, 1, 0, 0, 0, '2022-02-21 07:40:36'),
(2304, 10, 161, 1, 0, 0, 0, '2022-02-21 07:40:36'),
(2305, 10, 162, 1, 0, 0, 0, '2022-02-21 07:40:36'),
(2306, 8, 386, 1, 1, 0, 1, '2022-02-24 12:02:19'),
(2307, 8, 354, 1, 0, 1, 0, '2022-02-26 09:21:38'),
(2308, 8, 353, 1, 0, 1, 0, '2022-02-26 09:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `start_month` varchar(100) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(255) NOT NULL DEFAULT '["4"]',
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(20) DEFAULT '24-hour',
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `timezone` varchar(30) DEFAULT 'UTC',
  `image` varchar(100) DEFAULT NULL,
  `mini_logo` varchar(200) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `credit_limit` varchar(255) DEFAULT NULL,
  `opd_record_month` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `cron_secret_key` varchar(100) NOT NULL,
  `doctor_restriction` varchar(100) NOT NULL,
  `superadmin_restriction` varchar(200) NOT NULL,
  `patient_panel` varchar(50) NOT NULL,
  `mobile_api_url` varchar(200) NOT NULL,
  `app_primary_color_code` varchar(50) NOT NULL,
  `app_secondary_color_code` varchar(50) NOT NULL,
  `app_logo` varchar(200) NOT NULL,
  `zoom_api_key` varchar(200) NOT NULL,
  `zoom_api_secret` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `start_month`, `session_id`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `image`, `mini_logo`, `theme`, `credit_limit`, `opd_record_month`, `is_active`, `cron_secret_key`, `doctor_restriction`, `superadmin_restriction`, `patient_panel`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `zoom_api_key`, `zoom_api_secret`, `created_at`) VALUES
(1, 'Ali Hospital Larkana', 'info@alihospitallarkana.com', '0744752395', 'Wagan Road, Larkana, Sindh', '', NULL, 4, '[\"4\"]', '', 'm/d/Y', '12-hour', 'PKR', 'Rs', 'disabled', 'Asia/Karachi', '1.png', '1mini_logo.jpg', 'default.jpg', '200000', '1', 'no', '', 'enabled', 'enabled', 'enabled', '', '#424242', '#eeeeee', '0app_logo.png', '', '', '2022-01-29 11:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_patient` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shift_details`
--

CREATE TABLE `shift_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `consult_duration` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shift_details`
--

INSERT INTO `shift_details` (`id`, `staff_id`, `consult_duration`, `charge_id`, `created_at`) VALUES
(4, 2, 45, 50, '2022-02-21 11:45:30'),
(5, 3, 45, 50, '2022-02-21 12:07:49'),
(7, 5, 30, 52, '2022-02-21 13:41:54'),
(8, 7, 45, 72, '2022-02-23 09:28:08'),
(9, 9, 6, 102, '2022-02-24 08:46:36'),
(10, 10, 6, 103, '2022-02-23 12:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `specialist_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `specialist_name`, `is_active`, `created_at`) VALUES
(2, 'Cardiologist', 'yes', '2022-02-23 15:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `staff_designation_id` int(11) DEFAULT NULL,
  `specialist` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `zoom_api_key` varchar(100) NOT NULL,
  `zoom_api_secret` varchar(100) NOT NULL,
  `pan_number` varchar(30) NOT NULL,
  `identification_number` varchar(30) NOT NULL,
  `local_identification_number` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department_id`, `staff_designation_id`, `specialist`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`, `pan_number`, `identification_number`, `local_identification_number`, `created_at`) VALUES
(1, '9001', 0, NULL, NULL, '', '', '', '', 'Super Admin', '', '', '', '', '', 'superadmin@alihospitallarkana.com', NULL, '', NULL, NULL, '', '', '', '', '$2y$10$lTW2YcqUadOiAwvHTlzo/e9QmVmIra05wFjjo9CoHxlzvhMx0W7ey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '2022-01-14 13:09:34'),
(2, '1001', 0, 0, 1, '', '', '', '', 'Receptionist', '', '', '', '', '', 'receptionist@alihospitallarkana.com', '2000-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$b/jFVMr9avk.Uv9ynxTFxOJ6FnAMy7yMKdJ7xKe6NAZE/Thz1JKWC', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, 'UzFabTR3WEQ3dXR6VmI4MGgwSjN4UC9GWVo3TUViOElTYWN2aGRwZCtXdz0=', '', '', '', '', '', '2022-01-15 07:43:21'),
(3, '1002', 0, 0, 0, '', '', '', '', 'Nighat', 'Shah', '', '', '', '', 'Nighat@alihospitallarkana.com', '2000-02-01', 'Married', NULL, NULL, '', '', '', '3.jpg', '$2y$10$2KVofjtp.iIE6Tyotdvqe.FAXem.EIdUkwI7ZE4nxDno5JvL9KKky', 'Female', 'AB+', '', '', '', '', '', '', '', '', '', 'Morning', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, 'SEt2T1lqc0ZWcE1ramxhN2pCWFVYKy9PcWJzMjlPVDVqU0pvNUdXeWc0dz0=', '', '', '', '', '', '2022-01-15 09:02:19'),
(4, '9002', 0, 0, 2, '', '', '', '', 'Admin', '', '', '', '', '', 'admin@alihospitallarkana.com', '2000-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$dl0bk6KIj4OMCnyZZkbcmO.2GJX8yShxFi2UtrNgeywrjqptxK.ei', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '2022-01-18 12:40:41'),
(5, '1099', 0, 0, 0, '', '', '', '', 'z', 'k', '', '', '', '', 'zkk@gmail.com', '2022-01-05', '', NULL, NULL, '', '', '', '', '$2y$10$egCbZaY5Dk72Y03YYWYA0.arMJWZVPRcdBAeQi5/udl02NQnEvQJO', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', '', '', '', '', '2022-01-26 13:28:04'),
(6, '1', 0, 0, 0, '', '', '', '', 'Sania', '', '', '', '', '', 'sania@gmail.com', '1998-12-27', '', '2022-07-01', NULL, '', '', '', '', '$2y$10$9W1K6wKP7uUA5vAyWUbt5Oy82qxBx9YVhE2nSFZMOlwRSg0UV.cuy', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '2022-02-21 08:01:48'),
(7, '9005', 0, 0, 3, '', '', '', '', 'Prof Riaz', 'Hussain Shah', '', '', '', '', 'Riazhussain@alihospitallarkana.com', '1990-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$ynxhwgWnAQyxeVNj3ATHUeZAvHFjQPxl7q6vR/FDOeemAR6xRtd..', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', '', '', '', '', '2022-02-23 07:41:53'),
(9, '9006', 0, 0, 3, '2', '', '', '', 'Dr: Sikandar Ali Shaikh', '', '', '', '', '', 'sikandar@gmail.com', '2021-08-29', '', NULL, NULL, '', '', '', '', '$2y$10$190FuZJlRw4p/E/43NBVj.8WfjZzIi2rIqKdFc1VW3DgNCa8js1c.', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', '', '', '', '', '2022-02-23 10:19:16'),
(10, '9007', 0, 0, 3, '', '', '', '', 'Prof: Jagdesh Kumar', '', '', '', '', '', 'jagdeshkumar@gmail.com', '2022-02-02', '', NULL, NULL, '', '', '', '', '$2y$10$BG48exEpx1VUSbEFl6VBou6n8j3Whq36vuZZO.z6cka3lmcV2bxoi', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '2022-02-23 11:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `staff_attendance_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-06 20:26:16'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`, `created_at`) VALUES
(1, 'Receptionist', 'yes', '2022-01-15 07:16:40'),
(2, 'Admin', 'yes', '2022-01-15 07:16:50'),
(3, 'Doctor ', 'yes', '2022-01-15 08:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `hospital_name`, `hospital_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `status`, `created_at`) VALUES
(1, 'Sample Staff Id Card', 'National Hospital', 'Habibganj Rd, Opp Cricket Club, E-3, Arera Colony, Bhopal', 'background.jpg', 'logo.jpg', 'signature.png', '#0e5c9f', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, '2021-10-19 06:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` int(11) DEFAULT NULL,
  `status_updated_by` int(11) DEFAULT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` float(10,2) NOT NULL,
  `pay_scale` int(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` float(10,2) NOT NULL DEFAULT 0.00,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `cheque_no` varchar(250) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES
(1, 7, 1, 0, '2022-01-14 13:09:34'),
(2, 8, 2, 0, '2022-01-15 07:43:21'),
(3, 3, 3, 0, '2022-01-15 09:02:19'),
(4, 1, 4, 0, '2022-01-18 12:40:41'),
(5, 3, 5, 0, '2022-01-26 13:28:04'),
(6, 8, 6, 0, '2022-02-21 08:01:48'),
(7, 3, 7, 0, '2022-02-23 07:41:53'),
(9, 3, 9, 0, '2022-02-23 10:19:16'),
(10, 3, 10, 0, '2022-02-23 11:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_bill_basic`
--

CREATE TABLE `supplier_bill_basic` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `total` float(10,2) NOT NULL,
  `tax` float(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `net_amount` float(10,2) NOT NULL,
  `note` text DEFAULT NULL,
  `payment_mode` varchar(30) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `symptoms_title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `symptoms_title`, `description`, `type`, `created_at`) VALUES
(1, 'high temp', '', '1', '2022-02-24 11:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms_classification`
--

CREATE TABLE `symptoms_classification` (
  `id` int(11) NOT NULL,
  `symptoms_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `symptoms_classification`
--

INSERT INTO `symptoms_classification` (`id`, `symptoms_type`, `created_at`) VALUES
(1, 'fever', '2022-02-24 11:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `notification_title` varchar(200) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `notification_desc` text DEFAULT NULL,
  `notification_for` varchar(50) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_notification`
--

INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `role_id`, `receiver_id`, `date`, `is_active`, `created_at`) VALUES
(2, 'New OPD Visit Created', 'opd', 'OPD Visit has been created for patient: Sunny (1) with doctor: Nighat Shah (1002). Patient Symptoms Details are  and any known allergies:  .', '', 3, 3, '2022-01-15 14:43:36', 'yes', '2022-01-15 09:43:36'),
(7, 'New OPD Visit Created', 'opd', 'OPD Visit has been created for patient: Sunny (1) with doctor: Nighat Shah (1002). Patient Symptoms Details are  and any known allergies:  .', '', 3, 3, '2022-01-18 16:05:40', 'yes', '2022-01-18 11:05:40'),
(9, 'New OPD Visit Created', 'opd', 'OPD Visit has been created for patient: Sunny (1) with doctor: Nighat Shah (1002). Patient Symptoms Details are  and any known allergies:  .', '', 1, 4, '2022-01-20 17:36:14', 'yes', '2022-01-20 12:36:14'),
(11, 'New OPD Visit Created', 'opd', 'OPD Visit has been created for patient: Sunny (1) with doctor: Nighat Shah (1002). Patient Symptoms Details are  and any known allergies:  .', '', 3, 3, '2022-01-20 17:36:14', 'yes', '2022-01-20 12:36:14'),
(13, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 07:09 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(15, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 07:09 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(16, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(17, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 07:09 PM.', '', 1, 4, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(19, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 07:09 PM.', '', 3, 3, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(20, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 07:09 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:09:58', 'yes', '2022-01-26 13:09:58'),
(21, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 06:10 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(23, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 06:10 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(24, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(25, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 06:10 PM.', '', 1, 4, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(27, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 06:10 PM.', '', 3, 3, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(28, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 06:10 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:11:13', 'yes', '2022-01-26 13:11:13'),
(29, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 07:22 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(31, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 07:22 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(32, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(33, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 07:22 PM.', '', 1, 4, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(35, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/26/2022 07:22 PM.', '', 3, 3, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(36, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 07:22 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-26 18:22:59', 'yes', '2022-01-26 13:22:59'),
(37, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 09:29 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-26 18:29:16', 'yes', '2022-01-26 13:29:16'),
(40, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-26 18:29:16', 'yes', '2022-01-26 13:29:16'),
(41, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/26/2022 09:29 PM.', '', 1, 4, '2022-01-26 18:29:16', 'yes', '2022-01-26 13:29:16'),
(44, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 09:29 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-26 18:29:16', 'yes', '2022-01-26 13:29:16'),
(45, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 09:32 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-26 18:32:44', 'yes', '2022-01-26 13:32:44'),
(48, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-26 18:32:44', 'yes', '2022-01-26 13:32:44'),
(49, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/26/2022 09:32 PM.', '', 1, 4, '2022-01-26 18:32:44', 'yes', '2022-01-26 13:32:44'),
(52, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 09:32 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-26 18:32:44', 'yes', '2022-01-26 13:32:44'),
(53, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/26/2022 07:45 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-26 18:45:28', 'yes', '2022-01-26 13:45:28'),
(56, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-26 18:45:28', 'yes', '2022-01-26 13:45:28'),
(57, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/26/2022 07:45 PM.', '', 1, 4, '2022-01-26 18:45:28', 'yes', '2022-01-26 13:45:28'),
(60, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/26/2022 07:45 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-26 18:45:28', 'yes', '2022-01-26 13:45:28'),
(61, 'Add OPD Discharge Patient', 'opd', 'OPD Patient z 4 discharge status: {discharge_status}} on 01/27/2022 02:53 PM.', '', 1, 4, '2022-01-27 14:53:58', 'yes', '2022-01-27 09:53:58'),
(63, 'Add OPD Discharge Patient', 'opd', '\r\nDear z 4 you have been Normal on 01/27/2022 02:53 PM.', '', NULL, 4, '2022-01-27 14:53:58', 'yes', '2022-01-27 09:53:58'),
(64, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 03:20 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(66, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 03:20 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(67, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(68, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/27/2022 03:20 PM.', '', 1, 4, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(70, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/27/2022 03:20 PM.', '', 3, 3, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(71, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/27/2022 03:20 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-27 15:20:53', 'yes', '2022-01-27 10:20:53'),
(72, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 03:26 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(74, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 03:26 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(75, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(76, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/27/2022 03:26 PM.', '', 1, 4, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(78, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/27/2022 03:26 PM.', '', 3, 3, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(79, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/27/2022 03:26 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-27 15:26:05', 'yes', '2022-01-27 10:26:05'),
(80, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN11) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/27/2022 04:02 PM', '', 1, 4, '2022-01-27 16:02:31', 'yes', '2022-01-27 11:02:31'),
(82, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN11) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/27/2022 04:02 PM', '', 3, 3, '2022-01-27 16:02:31', 'yes', '2022-01-27 11:02:31'),
(83, 'Add OPD Patient Charge', 'opd', 'Dear z(4) OPD Number (OPDN11) . In OPD applied charge name Appointment , category Appointment,  charge name check up quantity 1 and your net payable bill amount is 1260.00 Date 01/27/2022 04:02 PM.', '', NULL, 4, '2022-01-27 16:02:31', 'yes', '2022-01-27 11:02:31'),
(84, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN11) transaction id: TRID21 payment date: 01/27/2022 04:02 PM payment amount: 1260.00 payment mode: Cash.', '', 1, 4, '2022-01-27 16:02:57', 'yes', '2022-01-27 11:02:57'),
(86, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN11) transaction id: TRID21 payment date: 01/27/2022 04:02 PM payment amount: 1260.00 payment mode: Cash.', '', 3, 3, '2022-01-27 16:02:57', 'yes', '2022-01-27 11:02:57'),
(87, 'Add OPD Payment', 'opd', 'Dear z (4) your payment successfully received. OPD Number: OPDN11 transaction id: TRID21 payment date: 01/27/2022 04:02 PM payment amount: $1260.00 payment mode: Cash. ', '', NULL, 4, '2022-01-27 16:02:57', 'yes', '2022-01-27 11:02:57'),
(88, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 04:04 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-27 16:04:44', 'yes', '2022-01-27 11:04:44'),
(91, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-27 16:04:44', 'yes', '2022-01-27 11:04:44'),
(92, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/27/2022 04:04 PM.', '', 1, 4, '2022-01-27 16:04:44', 'yes', '2022-01-27 11:04:44'),
(95, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/27/2022 04:04 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-27 16:04:44', 'yes', '2022-01-27 11:04:44'),
(96, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN13) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/27/2022 04:06 PM', '', 1, 4, '2022-01-27 16:06:48', 'yes', '2022-01-27 11:06:48'),
(99, 'Add OPD Patient Charge', 'opd', 'Dear z(4) OPD Number (OPDN13) . In OPD applied charge name Appointment , category Appointment,  charge name check up quantity 1 and your net payable bill amount is 1260.00 Date 01/27/2022 04:06 PM.', '', NULL, 4, '2022-01-27 16:06:48', 'yes', '2022-01-27 11:06:48'),
(100, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 07:11 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(101, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/27/2022 07:11 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(103, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(104, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/27/2022 07:11 PM.', '', 1, 4, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(105, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/27/2022 07:11 PM.', '', 7, 1, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(107, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/27/2022 07:11 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-27 19:11:35', 'yes', '2022-01-27 14:11:35'),
(108, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN14) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/27/2022 07:14 PM', '', 1, 4, '2022-01-27 19:14:17', 'yes', '2022-01-27 14:14:17'),
(109, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN14) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/27/2022 07:14 PM', '', 7, 1, '2022-01-27 19:14:17', 'yes', '2022-01-27 14:14:17'),
(111, 'Add OPD Patient Charge', 'opd', 'Dear z(4) OPD Number (OPDN14) . In OPD applied charge name Appointment , category Appointment,  charge name check up quantity 1 and your net payable bill amount is 1260.00 Date 01/27/2022 07:14 PM.', '', NULL, 4, '2022-01-27 19:14:17', 'yes', '2022-01-27 14:14:17'),
(112, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN14) transaction id: TRID25 payment date: 01/27/2022 07:14 PM payment amount: 1260.00 payment mode: Cash.', '', 1, 4, '2022-01-27 19:14:28', 'yes', '2022-01-27 14:14:28'),
(113, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN14) transaction id: TRID25 payment date: 01/27/2022 07:14 PM payment amount: 1260.00 payment mode: Cash.', '', 7, 1, '2022-01-27 19:14:28', 'yes', '2022-01-27 14:14:28'),
(115, 'Add OPD Payment', 'opd', 'Dear z (4) your payment successfully received. OPD Number: OPDN14 transaction id: TRID25 payment date: 01/27/2022 07:14 PM payment amount: $1260.00 payment mode: Cash. ', '', NULL, 4, '2022-01-27 19:14:28', 'yes', '2022-01-27 14:14:28'),
(116, 'Add OPD Discharge Patient', 'opd', 'OPD Patient z 4 discharge status: {discharge_status}} on 01/27/2022 07:15 PM.', '', 1, 4, '2022-01-27 19:15:25', 'yes', '2022-01-27 14:15:25'),
(117, 'Add OPD Discharge Patient', 'opd', 'OPD Patient z 4 discharge status: {discharge_status}} on 01/27/2022 07:15 PM.', '', 7, 1, '2022-01-27 19:15:25', 'yes', '2022-01-27 14:15:25'),
(118, 'Add OPD Discharge Patient', 'opd', '\r\nDear z 4 you have been Normal on 01/27/2022 07:15 PM.', '', NULL, 4, '2022-01-27 19:15:25', 'yes', '2022-01-27 14:15:25'),
(119, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 05:02 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(120, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 05:02 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(121, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 05:02 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(122, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(123, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/29/2022 05:02 PM.', '', 1, 4, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(124, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/29/2022 05:02 PM.', '', 7, 1, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(125, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/29/2022 05:02 PM.', '', 3, 5, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(126, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/29/2022 05:02 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-29 16:58:49', 'yes', '2022-01-29 11:58:49'),
(127, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 06:02 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(128, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 06:02 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(129, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/29/2022 06:02 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(130, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(131, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/29/2022 06:02 PM.', '', 1, 4, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(132, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/29/2022 06:02 PM.', '', 7, 1, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(133, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/29/2022 06:02 PM.', '', 3, 3, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(134, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/29/2022 06:02 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-29 17:02:02', 'yes', '2022-01-29 12:02:02'),
(135, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN17) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/29/2022 05:21 PM', '', 1, 4, '2022-01-29 17:21:58', 'yes', '2022-01-29 12:21:58'),
(136, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN17) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/29/2022 05:21 PM', '', 7, 1, '2022-01-29 17:21:58', 'yes', '2022-01-29 12:21:58'),
(137, 'Add OPD Patient Charge', 'opd', 'New OPD charges added in OPD Number: (OPDN17) For Patient: z (4). In OPD applied charges is Appointment, charge category Appointment and charge Name check up quantity 1. Total net payable bill amount is 1260.00 date 01/29/2022 05:21 PM', '', 3, 3, '2022-01-29 17:21:58', 'yes', '2022-01-29 12:21:58'),
(138, 'Add OPD Patient Charge', 'opd', 'Dear z(4) OPD Number (OPDN17) . In OPD applied charge name Appointment , category Appointment,  charge name check up quantity 1 and your net payable bill amount is 1260.00 Date 01/29/2022 05:21 PM.', '', NULL, 4, '2022-01-29 17:21:58', 'yes', '2022-01-29 12:21:58'),
(139, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN17) transaction id: TRID31 payment date: 01/29/2022 05:22 PM payment amount: 1200.00 payment mode: Cash.', '', 1, 4, '2022-01-29 17:22:38', 'yes', '2022-01-29 12:22:38'),
(140, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN17) transaction id: TRID31 payment date: 01/29/2022 05:22 PM payment amount: 1200.00 payment mode: Cash.', '', 7, 1, '2022-01-29 17:22:38', 'yes', '2022-01-29 12:22:38'),
(141, 'Add OPD Payment', 'opd', 'New OPD payment has been received from Patient: z(4) OPD Number: (OPDN17) transaction id: TRID31 payment date: 01/29/2022 05:22 PM payment amount: 1200.00 payment mode: Cash.', '', 3, 3, '2022-01-29 17:22:38', 'yes', '2022-01-29 12:22:38'),
(142, 'Add OPD Payment', 'opd', 'Dear z (4) your payment successfully received. OPD Number: OPDN17 transaction id: TRID31 payment date: 01/29/2022 05:22 PM payment amount: $1200.00 payment mode: Cash. ', '', NULL, 4, '2022-01-29 17:22:38', 'yes', '2022-01-29 12:22:38'),
(143, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 03:18 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(144, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 03:18 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(145, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 03:18 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(146, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(147, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 03:18 PM.', '', 1, 4, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(148, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 03:18 PM.', '', 7, 1, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(149, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 03:18 PM.', '', 3, 3, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(150, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 03:18 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 15:18:39', 'yes', '2022-01-31 10:18:39'),
(151, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:22 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(152, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:22 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(153, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:22 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(154, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(155, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:22 PM.', '', 1, 4, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(156, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:22 PM.', '', 7, 1, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(157, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:22 PM.', '', 3, 5, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(158, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 04:22 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 16:20:32', 'yes', '2022-01-31 11:20:32'),
(159, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:25 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(160, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:25 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(161, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:25 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(162, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(163, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:25 PM.', '', 1, 4, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(164, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:25 PM.', '', 7, 1, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(165, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 04:25 PM.', '', 3, 5, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(166, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 04:25 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 16:21:14', 'yes', '2022-01-31 11:21:14'),
(167, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:56 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(168, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:56 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(169, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:56 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(170, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(171, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:56 PM.', '', 1, 4, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(172, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:56 PM.', '', 7, 1, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(173, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:56 PM.', '', 3, 3, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(174, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 04:56 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:56:37', 'yes', '2022-01-31 11:56:37'),
(175, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:57 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(176, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:57 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(177, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 04:57 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(178, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(179, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:57 PM.', '', 1, 4, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(180, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:57 PM.', '', 7, 1, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(181, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 04:57 PM.', '', 3, 3, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(182, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 04:57 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:57:58', 'yes', '2022-01-31 11:57:58'),
(183, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:00 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(184, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:00 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(185, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:00 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(186, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(187, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:00 PM.', '', 1, 4, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(188, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:00 PM.', '', 7, 1, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(189, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:00 PM.', '', 3, 3, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(190, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:00 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 16:58:45', 'yes', '2022-01-31 11:58:45'),
(191, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:35 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(192, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:35 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(193, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:35 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(194, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(195, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:35 PM.', '', 1, 4, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(196, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:35 PM.', '', 7, 1, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(197, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:35 PM.', '', 3, 3, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(198, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:35 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:36:05', 'yes', '2022-01-31 12:36:05'),
(199, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:37 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(200, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:37 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(201, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:37 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(202, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(203, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:37 PM.', '', 1, 4, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(204, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:37 PM.', '', 7, 1, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(205, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:37 PM.', '', 3, 3, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(206, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:37 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:37:42', 'yes', '2022-01-31 12:37:42'),
(207, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:38 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(208, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:38 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(209, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:38 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(210, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(211, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:38 PM.', '', 1, 4, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(212, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:38 PM.', '', 7, 1, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(213, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:38 PM.', '', 3, 3, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(214, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:38 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:38:36', 'yes', '2022-01-31 12:38:36'),
(215, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:44 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(216, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:44 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(217, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:44 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(218, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(219, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:44 PM.', '', 1, 4, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(220, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:44 PM.', '', 7, 1, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(221, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:44 PM.', '', 3, 5, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(222, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:44 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 17:44:56', 'yes', '2022-01-31 12:44:56'),
(223, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:48 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(224, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:48 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(225, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:48 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(226, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(227, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:48 PM.', '', 1, 4, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(228, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:48 PM.', '', 7, 1, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(229, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:48 PM.', '', 3, 5, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(230, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:48 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 17:48:24', 'yes', '2022-01-31 12:48:24'),
(231, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 17:51:18', 'yes', '2022-01-31 12:51:18'),
(232, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 17:51:18', 'yes', '2022-01-31 12:51:18'),
(233, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 17:51:18', 'yes', '2022-01-31 12:51:18'),
(234, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 17:51:18', 'yes', '2022-01-31 12:51:18'),
(235, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 1, 4, '2022-01-31 17:51:19', 'yes', '2022-01-31 12:51:19'),
(236, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 7, 1, '2022-01-31 17:51:19', 'yes', '2022-01-31 12:51:19'),
(237, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 3, 5, '2022-01-31 17:51:19', 'yes', '2022-01-31 12:51:19'),
(238, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:48 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 17:51:19', 'yes', '2022-01-31 12:51:19'),
(239, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:51 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(240, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:51 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(241, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:51 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(242, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(243, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:51 PM.', '', 1, 4, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(244, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:51 PM.', '', 7, 1, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(245, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 05:51 PM.', '', 3, 3, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(246, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:51 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 17:51:54', 'yes', '2022-01-31 12:51:54'),
(247, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(248, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(249, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(250, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(251, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 1, 4, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(252, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 7, 1, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(253, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 3, 5, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(254, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:59 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 17:59:10', 'yes', '2022-01-31 12:59:10'),
(255, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(256, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(257, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 05:59 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(258, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(259, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 1, 4, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(260, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 7, 1, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(261, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 05:59 PM.', '', 3, 5, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(262, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 05:59 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 17:59:40', 'yes', '2022-01-31 12:59:40'),
(263, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:13 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(264, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:13 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `role_id`, `receiver_id`, `date`, `is_active`, `created_at`) VALUES
(265, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:13 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(266, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(267, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:13 PM.', '', 1, 4, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(268, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:13 PM.', '', 7, 1, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(269, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 06:13 PM.', '', 3, 3, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(270, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:13 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 18:13:54', 'yes', '2022-01-31 13:13:54'),
(271, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:28 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(272, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:28 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(273, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:28 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(274, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(275, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:28 PM.', '', 1, 4, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(276, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:28 PM.', '', 7, 1, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(277, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:28 PM.', '', 3, 5, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(278, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:28 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 18:28:50', 'yes', '2022-01-31 13:28:50'),
(279, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(280, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(281, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(282, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(283, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 1, 4, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(284, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 7, 1, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(285, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 3, 5, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(286, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:46 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 18:47:07', 'yes', '2022-01-31 13:47:07'),
(287, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(288, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(289, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:46 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(290, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(291, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 1, 4, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(292, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 7, 1, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(293, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:46 PM.', '', 3, 5, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(294, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:46 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 18:47:38', 'yes', '2022-01-31 13:47:38'),
(295, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(296, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(297, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(298, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(299, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 1, 4, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(300, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 7, 1, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(301, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 3, 5, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(302, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:48 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 18:48:04', 'yes', '2022-01-31 13:48:04'),
(303, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(304, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(305, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 06:48 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(306, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(307, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 1, 4, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(308, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 7, 1, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(309, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 06:48 PM.', '', 3, 5, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(310, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 06:48 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 18:49:02', 'yes', '2022-01-31 13:49:02'),
(311, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:01 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(312, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:01 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(313, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:01 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(314, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(315, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:01 PM.', '', 1, 4, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(316, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:01 PM.', '', 7, 1, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(317, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:01 PM.', '', 3, 5, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(318, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:01 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:01:35', 'yes', '2022-01-31 14:01:35'),
(319, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:11 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(320, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:11 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(321, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:11 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(322, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(323, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:11 PM.', '', 1, 4, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(324, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:11 PM.', '', 7, 1, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(325, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:11 PM.', '', 3, 5, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(326, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:11 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:11:16', 'yes', '2022-01-31 14:11:16'),
(327, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:14 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(328, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:14 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(329, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:14 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(330, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(331, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:14 PM.', '', 1, 4, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(332, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:14 PM.', '', 7, 1, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(333, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:14 PM.', '', 3, 5, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(334, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:14 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:15:00', 'yes', '2022-01-31 14:15:00'),
(335, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:14 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(336, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:14 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(337, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:14 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(338, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(339, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:14 PM.', '', 1, 4, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(340, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:14 PM.', '', 7, 1, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(341, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:14 PM.', '', 3, 5, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(342, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:14 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:15:24', 'yes', '2022-01-31 14:15:24'),
(343, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:22 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(344, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:22 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(345, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:22 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(346, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(347, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:22 PM.', '', 1, 4, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(348, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:22 PM.', '', 7, 1, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(349, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:22 PM.', '', 3, 5, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(350, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:22 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:22:49', 'yes', '2022-01-31 14:22:49'),
(351, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:28 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(352, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:28 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(353, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:28 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(354, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(355, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:28 PM.', '', 1, 4, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(356, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:28 PM.', '', 7, 1, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(357, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:28 PM.', '', 3, 5, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(358, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:28 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:28:50', 'yes', '2022-01-31 14:28:50'),
(359, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:28 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(360, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:28 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(361, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:28 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(362, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(363, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:28 PM.', '', 1, 4, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(364, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:28 PM.', '', 7, 1, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(365, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:28 PM.', '', 3, 5, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(366, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:28 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:29:50', 'yes', '2022-01-31 14:29:50'),
(367, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:28 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(368, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:28 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(369, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:28 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(370, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(371, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:28 PM.', '', 1, 4, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(372, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:28 PM.', '', 7, 1, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(373, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:28 PM.', '', 3, 5, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(374, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 09:28 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:32:58', 'yes', '2022-01-31 14:32:58'),
(375, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:33 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(376, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:33 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(377, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:33 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(378, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(379, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:33 PM.', '', 1, 4, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(380, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:33 PM.', '', 7, 1, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(381, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:33 PM.', '', 3, 5, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(382, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:33 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:33:44', 'yes', '2022-01-31 14:33:44'),
(383, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:33 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(384, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:33 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(385, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:33 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(386, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(387, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:33 PM.', '', 1, 4, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(388, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:33 PM.', '', 7, 1, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(389, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:33 PM.', '', 3, 5, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(390, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:33 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:35:06', 'yes', '2022-01-31 14:35:06'),
(391, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:33 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(392, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:33 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(393, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 09:33 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(394, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(395, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:33 PM.', '', 1, 4, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(396, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:33 PM.', '', 7, 1, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(397, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 09:33 PM.', '', 3, 5, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(398, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 09:33 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:36:29', 'yes', '2022-01-31 14:36:29'),
(399, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:36 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(400, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:36 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(401, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:36 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(402, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(403, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:36 PM.', '', 1, 4, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(404, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:36 PM.', '', 7, 1, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(405, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:36 PM.', '', 3, 5, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(406, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:36 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:36:54', 'yes', '2022-01-31 14:36:54'),
(407, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:39 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(408, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:39 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(409, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:39 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(410, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(411, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:39 PM.', '', 1, 4, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(412, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:39 PM.', '', 7, 1, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(413, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:39 PM.', '', 3, 5, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(414, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:39 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:39:39', 'yes', '2022-01-31 14:39:39'),
(415, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:40 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(416, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:40 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(417, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:40 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(418, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(419, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:40 PM.', '', 1, 4, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(420, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:40 PM.', '', 7, 1, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(421, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:40 PM.', '', 3, 5, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(422, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:40 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:40:21', 'yes', '2022-01-31 14:40:21'),
(423, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:43 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(424, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:43 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(425, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:43 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(426, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(427, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:43 PM.', '', 1, 4, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(428, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:43 PM.', '', 7, 1, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(429, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:43 PM.', '', 3, 5, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(430, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:43 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:43:23', 'yes', '2022-01-31 14:43:23'),
(431, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:47 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(432, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:47 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(433, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:47 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(434, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(435, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:47 PM.', '', 1, 4, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(436, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:47 PM.', '', 7, 1, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(437, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:47 PM.', '', 3, 5, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(438, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:47 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:47:25', 'yes', '2022-01-31 14:47:25'),
(439, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:50 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(440, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:50 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(441, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:50 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(442, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(443, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:50 PM.', '', 1, 4, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(444, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:50 PM.', '', 7, 1, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(445, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:50 PM.', '', 3, 5, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(446, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:50 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:50:24', 'yes', '2022-01-31 14:50:24'),
(447, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:51 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(448, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:51 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(449, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:51 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(450, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(451, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:51 PM.', '', 1, 4, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(452, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:51 PM.', '', 7, 1, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(453, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:51 PM.', '', 3, 3, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(454, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:51 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 19:51:43', 'yes', '2022-01-31 14:51:43'),
(455, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:51 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(456, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:51 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(457, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:51 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(458, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(459, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:51 PM.', '', 1, 4, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(460, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:51 PM.', '', 7, 1, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(461, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:51 PM.', '', 3, 5, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(462, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:51 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:52:41', 'yes', '2022-01-31 14:52:41'),
(463, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(464, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(465, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(466, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(467, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:53 PM.', '', 1, 4, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(468, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:53 PM.', '', 7, 1, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(469, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:53 PM.', '', 3, 5, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(470, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:53 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:53:20', 'yes', '2022-01-31 14:53:20'),
(471, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(472, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(473, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:53 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(474, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(475, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:53 PM.', '', 1, 4, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(476, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:53 PM.', '', 7, 1, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(477, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 01/31/2022 07:53 PM.', '', 3, 3, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(478, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:53 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-01-31 19:53:51', 'yes', '2022-01-31 14:53:51'),
(479, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:54 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(480, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:54 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(481, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:54 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(482, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(483, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:54 PM.', '', 1, 4, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(484, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:54 PM.', '', 7, 1, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(485, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:54 PM.', '', 3, 5, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(486, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:54 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:54:15', 'yes', '2022-01-31 14:54:15'),
(487, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:54 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(488, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:54 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(489, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 08:54 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(490, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(491, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:54 PM.', '', 1, 4, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(492, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:54 PM.', '', 7, 1, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(493, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 08:54 PM.', '', 3, 5, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(494, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 08:54 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:55:16', 'yes', '2022-01-31 14:55:16'),
(495, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:55 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(496, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:55 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `role_id`, `receiver_id`, `date`, `is_active`, `created_at`) VALUES
(497, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 01/31/2022 07:55 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(498, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(499, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:55 PM.', '', 1, 4, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(500, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:55 PM.', '', 7, 1, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(501, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 01/31/2022 07:55 PM.', '', 3, 5, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(502, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 01/31/2022 07:55 PM with Doctor z k (1099).', '', NULL, 4, '2022-01-31 19:55:35', 'yes', '2022-01-31 14:55:35'),
(503, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:49 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(504, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:49 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(505, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:49 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(506, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(507, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:49 PM.', '', 1, 4, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(508, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:49 PM.', '', 7, 1, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(509, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:49 PM.', '', 3, 5, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(510, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:49 PM with Doctor z k (1099).', '', NULL, 4, '2022-02-01 19:49:55', 'yes', '2022-02-01 14:49:55'),
(511, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:52 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(512, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:52 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(513, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:52 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(514, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(515, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:52 PM.', '', 1, 4, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(516, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:52 PM.', '', 7, 1, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(517, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:52 PM.', '', 3, 5, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(518, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:52 PM with Doctor z k (1099).', '', NULL, 4, '2022-02-01 19:52:36', 'yes', '2022-02-01 14:52:36'),
(519, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:52 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(520, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:52 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(521, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:52 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(522, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 3, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(523, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:52 PM.', '', 1, 4, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(524, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:52 PM.', '', 7, 1, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(525, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:52 PM.', '', 3, 3, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(526, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/01/2022 08:52 PM with Doctor Nighat Shah (1002).', '', NULL, 3, '2022-02-01 19:52:57', 'yes', '2022-02-01 14:52:57'),
(527, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(528, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(529, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(530, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(531, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:54 PM.', '', 1, 4, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(532, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:54 PM.', '', 7, 1, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(533, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:54 PM.', '', 3, 5, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(534, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:54 PM with Doctor z k (1099).', '', NULL, 4, '2022-02-01 19:54:05', 'yes', '2022-02-01 14:54:05'),
(535, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:54:25', 'yes', '2022-02-01 14:54:25'),
(536, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:54:25', 'yes', '2022-02-01 14:54:25'),
(537, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:54:25', 'yes', '2022-02-01 14:54:25'),
(538, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:54:25', 'yes', '2022-02-01 14:54:25'),
(539, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 1, 4, '2022-02-01 19:54:26', 'yes', '2022-02-01 14:54:26'),
(540, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 7, 1, '2022-02-01 19:54:26', 'yes', '2022-02-01 14:54:26'),
(541, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 3, 3, '2022-02-01 19:54:26', 'yes', '2022-02-01 14:54:26'),
(542, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 08:54 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:54:26', 'yes', '2022-02-01 14:54:26'),
(543, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(544, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(545, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:54 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(546, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(547, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:54 PM.', '', 1, 4, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(548, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:54 PM.', '', 7, 1, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(549, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:54 PM.', '', 3, 3, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(550, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:54 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:54:55', 'yes', '2022-02-01 14:54:55'),
(551, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(552, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(553, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:54 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(554, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(555, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 1, 4, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(556, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 7, 1, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(557, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:54 PM.', '', 3, 3, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(558, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 08:54 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:55:06', 'yes', '2022-02-01 14:55:06'),
(559, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:55 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(560, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:55 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(561, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:55 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(562, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(563, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:55 PM.', '', 1, 4, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(564, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:55 PM.', '', 7, 1, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(565, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:55 PM.', '', 3, 3, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(566, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:55 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:55:51', 'yes', '2022-02-01 14:55:51'),
(567, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:55 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(568, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:55 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(569, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:55 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(570, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(571, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:55 PM.', '', 1, 4, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(572, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:55 PM.', '', 7, 1, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(573, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:55 PM.', '', 3, 3, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(574, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 08:55 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:56:30', 'yes', '2022-02-01 14:56:30'),
(575, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:56 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(576, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:56 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(577, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:56 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(578, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(579, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:56 PM.', '', 1, 4, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(580, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:56 PM.', '', 7, 1, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(581, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:56 PM.', '', 3, 3, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(582, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:56 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:56:43', 'yes', '2022-02-01 14:56:43'),
(583, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:56 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(584, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:56 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(585, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:56 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(586, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(587, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:56 PM.', '', 1, 4, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(588, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:56 PM.', '', 7, 1, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(589, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:56 PM.', '', 3, 3, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(590, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:56 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 19:57:07', 'yes', '2022-02-01 14:57:07'),
(591, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(592, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(593, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(594, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(595, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 1, 4, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(596, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 7, 1, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(597, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 3, 3, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(598, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 07:57 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 19:57:19', 'yes', '2022-02-01 14:57:19'),
(599, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:57 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(600, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:57 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(601, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:57 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(602, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 3, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(603, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:57 PM.', '', 1, 4, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(604, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:57 PM.', '', 7, 1, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(605, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:57 PM.', '', 3, 3, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(606, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/01/2022 08:57 PM with Doctor Nighat Shah (1002).', '', NULL, 3, '2022-02-01 19:57:41', 'yes', '2022-02-01 14:57:41'),
(607, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(608, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(609, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 07:57 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(610, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(611, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 1, 4, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(612, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 7, 1, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(613, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:57 PM.', '', 3, 3, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(614, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 07:57 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 19:57:54', 'yes', '2022-02-01 14:57:54'),
(615, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(616, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(617, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(618, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: z k (1099).', '', NULL, 3, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(619, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:58 PM.', '', 1, 4, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(620, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:58 PM.', '', 7, 1, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(621, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 07:58 PM.', '', 3, 5, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(622, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/01/2022 07:58 PM with Doctor z k (1099).', '', NULL, 3, '2022-02-01 19:58:17', 'yes', '2022-02-01 14:58:17'),
(623, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(624, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(625, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 07:58 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(626, 'New Appointment Created', 'appointment', 'Dear Naveed (2) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 2, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(627, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:58 PM.', '', 1, 4, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(628, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:58 PM.', '', 7, 1, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(629, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 07:58 PM.', '', 3, 3, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(630, 'Appointment Status', 'appointment', 'Dear Naveed (2) your appointment status is approved Date: 02/01/2022 07:58 PM with Doctor Nighat Shah (1002).', '', NULL, 2, '2022-02-01 19:58:37', 'yes', '2022-02-01 14:58:37'),
(631, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:09 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(632, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:09 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(633, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:09 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(634, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 3, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(635, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:09 PM.', '', 1, 4, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(636, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:09 PM.', '', 7, 1, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(637, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:09 PM.', '', 3, 3, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(638, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/01/2022 08:09 PM with Doctor Nighat Shah (1002).', '', NULL, 3, '2022-02-01 20:09:14', 'yes', '2022-02-01 15:09:14'),
(639, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 09:09 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(640, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 09:09 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(641, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 09:09 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(642, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(643, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 09:09 PM.', '', 1, 4, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(644, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 09:09 PM.', '', 7, 1, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(645, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 09:09 PM.', '', 3, 3, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(646, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 09:09 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 20:09:31', 'yes', '2022-02-01 15:09:31'),
(647, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(648, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(649, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(650, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(651, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 1, 4, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(652, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 7, 1, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(653, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 3, 3, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(654, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:15 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:15:10', 'yes', '2022-02-01 15:15:10'),
(655, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(656, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(657, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(658, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(659, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 1, 4, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(660, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 7, 1, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(661, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:15 PM.', '', 3, 3, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(662, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:15 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:15:45', 'yes', '2022-02-01 15:15:45'),
(663, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(664, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(665, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:15 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(666, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: z k (1099).', '', NULL, 1, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(667, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:15 PM.', '', 1, 4, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(668, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:15 PM.', '', 7, 1, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(669, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:15 PM.', '', 3, 5, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(670, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:15 PM with Doctor z k (1099).', '', NULL, 1, '2022-02-01 20:16:00', 'yes', '2022-02-01 15:16:00'),
(671, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(672, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(673, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(674, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(675, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 1, 4, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(676, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 7, 1, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(677, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 3, 3, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(678, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/01/2022 08:16 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-01 20:16:24', 'yes', '2022-02-01 15:16:24'),
(679, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(680, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(681, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:16 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(682, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(683, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 1, 4, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(684, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 7, 1, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(685, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:16 PM.', '', 3, 3, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(686, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:16 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:17:01', 'yes', '2022-02-01 15:17:01'),
(687, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(688, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(689, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(690, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(691, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 1, 4, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(692, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 7, 1, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(693, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 3, 3, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(694, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:18 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:18:17', 'yes', '2022-02-01 15:18:17'),
(695, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(696, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(697, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:18 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(698, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(699, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 1, 4, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(700, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 7, 1, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(701, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:18 PM.', '', 3, 3, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(702, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:18 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:18:38', 'yes', '2022-02-01 15:18:38'),
(703, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(704, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(705, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(706, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(707, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 1, 4, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(708, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 7, 1, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(709, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 3, 3, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(710, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:19 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:19:03', 'yes', '2022-02-01 15:19:03'),
(711, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(712, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(713, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(714, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 3, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(715, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 1, 4, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(716, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 7, 1, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(717, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 3, 3, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(718, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/01/2022 08:19 PM with Doctor Nighat Shah (1002).', '', NULL, 3, '2022-02-01 20:19:23', 'yes', '2022-02-01 15:19:23'),
(719, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(720, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `role_id`, `receiver_id`, `date`, `is_active`, `created_at`) VALUES
(721, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:19 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(722, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(723, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 1, 4, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(724, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 7, 1, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(725, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:19 PM.', '', 3, 3, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(726, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:19 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:19:57', 'yes', '2022-02-01 15:19:57'),
(727, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(728, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(729, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(730, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(731, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:20 PM.', '', 1, 4, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(732, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:20 PM.', '', 7, 1, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(733, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:20 PM.', '', 3, 3, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(734, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:20 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:20:10', 'yes', '2022-02-01 15:20:10'),
(735, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(736, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(737, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:20 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(738, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: z k (1099).', '', NULL, 1, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(739, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:20 PM.', '', 1, 4, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(740, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:20 PM.', '', 7, 1, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(741, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/01/2022 08:20 PM.', '', 3, 5, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(742, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:20 PM with Doctor z k (1099).', '', NULL, 1, '2022-02-01 20:20:39', 'yes', '2022-02-01 15:20:39'),
(743, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 08:33 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(744, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 08:33 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(745, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/01/2022 08:33 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(746, 'New Appointment Created', 'appointment', 'Dear Naveed (2) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 2, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(747, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:33 PM.', '', 1, 4, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(748, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:33 PM.', '', 7, 1, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(749, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:33 PM.', '', 3, 3, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(750, 'Appointment Status', 'appointment', 'Dear Naveed (2) your appointment status is approved Date: 02/01/2022 08:33 PM with Doctor Nighat Shah (1002).', '', NULL, 2, '2022-02-01 20:33:58', 'yes', '2022-02-01 15:33:58'),
(751, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(752, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(753, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(754, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(755, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 1, 4, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(756, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 7, 1, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(757, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 3, 3, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(758, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:34 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:12', 'yes', '2022-02-01 15:34:12'),
(759, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(760, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(761, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(762, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(763, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 1, 4, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(764, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 7, 1, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(765, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 3, 3, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(766, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:34 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:34', 'yes', '2022-02-01 15:34:34'),
(767, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(768, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(769, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:34 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(770, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(771, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 1, 4, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(772, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 7, 1, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(773, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:34 PM.', '', 3, 3, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(774, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:34 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:34:56', 'yes', '2022-02-01 15:34:56'),
(775, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:35 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(776, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:35 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(777, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/01/2022 08:35 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(778, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(779, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:35 PM.', '', 1, 4, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(780, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:35 PM.', '', 7, 1, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(781, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/01/2022 08:35 PM.', '', 3, 3, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(782, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/01/2022 08:35 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-01 20:35:19', 'yes', '2022-02-01 15:35:19'),
(783, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(784, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(785, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(786, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(787, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 1, 4, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(788, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 7, 1, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(789, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 3, 3, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(790, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 05:49 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 17:49:41', 'yes', '2022-02-16 12:49:41'),
(791, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(792, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(793, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(794, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(795, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 1, 4, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(796, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 7, 1, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(797, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 05:49 PM.', '', 3, 3, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(798, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 05:49 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 17:51:33', 'yes', '2022-02-16 12:51:33'),
(799, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(800, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(801, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 05:49 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(802, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: z k (1099).', '', NULL, 1, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(803, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 05:49 PM.', '', 1, 4, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(804, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 05:49 PM.', '', 7, 1, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(805, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 05:49 PM.', '', 3, 5, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(806, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/16/2022 05:49 PM with Doctor z k (1099).', '', NULL, 1, '2022-02-16 17:51:57', 'yes', '2022-02-16 12:51:57'),
(807, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(808, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(809, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(810, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(811, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:07 PM.', '', 1, 4, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(812, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:07 PM.', '', 7, 1, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(813, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:07 PM.', '', 3, 3, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(814, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 06:07 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:07:44', 'yes', '2022-02-16 13:07:44'),
(815, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(816, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(817, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:07 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(818, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: z k (1099).', '', NULL, 4, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(819, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:07 PM.', '', 1, 4, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(820, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:07 PM.', '', 7, 1, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(821, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:07 PM.', '', 3, 5, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(822, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 06:07 PM with Doctor z k (1099).', '', NULL, 4, '2022-02-16 18:08:07', 'yes', '2022-02-16 13:08:07'),
(823, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(824, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(825, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(826, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(827, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 1, 4, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(828, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 7, 1, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(829, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 3, 3, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(830, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 06:11 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:11:31', 'yes', '2022-02-16 13:11:31'),
(831, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:11:58', 'yes', '2022-02-16 13:11:58'),
(832, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:11:58', 'yes', '2022-02-16 13:11:58'),
(833, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:11 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:11:58', 'yes', '2022-02-16 13:11:58'),
(834, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:11:58', 'yes', '2022-02-16 13:11:58'),
(835, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 1, 4, '2022-02-16 18:11:59', 'yes', '2022-02-16 13:11:59'),
(836, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 7, 1, '2022-02-16 18:11:59', 'yes', '2022-02-16 13:11:59'),
(837, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:11 PM.', '', 3, 3, '2022-02-16 18:11:59', 'yes', '2022-02-16 13:11:59'),
(838, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/16/2022 06:11 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:11:59', 'yes', '2022-02-16 13:11:59'),
(839, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(840, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(841, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(842, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(843, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 1, 4, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(844, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 7, 1, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(845, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 3, 3, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(846, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 06:12 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:12:26', 'yes', '2022-02-16 13:12:26'),
(847, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(848, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(849, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: z (4). Appointment Date: 02/16/2022 06:12 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(850, 'New Appointment Created', 'appointment', 'Dear z (4) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(851, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 1, 4, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(852, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 7, 1, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(853, 'Appointment Status', 'appointment', 'Patient: z (4) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:12 PM.', '', 3, 3, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(854, 'Appointment Status', 'appointment', 'Dear z (4) your appointment status is approved Date: 02/16/2022 06:12 PM with Doctor Nighat Shah (1002).', '', NULL, 4, '2022-02-16 18:12:48', 'yes', '2022-02-16 13:12:48'),
(855, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:14 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(856, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:14 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(857, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:14 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(858, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(859, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:14 PM.', '', 1, 4, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(860, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:14 PM.', '', 7, 1, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(861, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:14 PM.', '', 3, 3, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(862, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/16/2022 06:14 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:14:57', 'yes', '2022-02-16 13:14:57'),
(863, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(864, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(865, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Sunny (1). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(866, 'New Appointment Created', 'appointment', 'Dear Sunny (1) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(867, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:15 PM.', '', 1, 4, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(868, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:15 PM.', '', 7, 1, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(869, 'Appointment Status', 'appointment', 'Patient: Sunny (1) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 06:15 PM.', '', 3, 3, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(870, 'Appointment Status', 'appointment', 'Dear Sunny (1) your appointment status is approved Date: 02/16/2022 06:15 PM with Doctor Nighat Shah (1002).', '', NULL, 1, '2022-02-16 18:15:29', 'yes', '2022-02-16 13:15:29'),
(871, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(872, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(873, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 06:15 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(874, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: z k (1099).', '', NULL, 3, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(875, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:15 PM.', '', 1, 4, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(876, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:15 PM.', '', 7, 1, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(877, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 06:15 PM.', '', 3, 5, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(878, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/16/2022 06:15 PM with Doctor z k (1099).', '', NULL, 3, '2022-02-16 18:15:54', 'yes', '2022-02-16 13:15:54'),
(879, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(880, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(881, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Naveed (2). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(882, 'New Appointment Created', 'appointment', 'Dear Naveed (2) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 2, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(883, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 07:27 PM.', '', 1, 4, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(884, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 07:27 PM.', '', 7, 1, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(885, 'Appointment Status', 'appointment', 'Patient: Naveed (2) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/16/2022 07:27 PM.', '', 3, 3, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(886, 'Appointment Status', 'appointment', 'Dear Naveed (2) your appointment status is approved Date: 02/16/2022 07:27 PM with Doctor Nighat Shah (1002).', '', NULL, 2, '2022-02-16 19:27:48', 'yes', '2022-02-16 14:27:48'),
(887, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: z k (1099).', '', 1, 4, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(888, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: z k (1099).', '', 7, 1, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(889, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/16/2022 07:27 PM  With Doctor Name: z k (1099).', '', 3, 5, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(890, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: z k (1099).', '', NULL, 3, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(891, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 07:27 PM.', '', 1, 4, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(892, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 07:27 PM.', '', 7, 1, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(893, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  z k (1099) Date: 02/16/2022 07:27 PM.', '', 3, 5, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(894, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/16/2022 07:27 PM with Doctor z k (1099).', '', NULL, 3, '2022-02-16 19:28:06', 'yes', '2022-02-16 14:28:06'),
(895, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/17/2022 03:43 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(896, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/17/2022 03:43 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(897, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Asad (3). Appointment Date: 02/17/2022 03:43 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(898, 'New Appointment Created', 'appointment', 'Dear Asad (3) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 3, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(899, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/17/2022 03:43 PM.', '', 1, 4, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(900, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/17/2022 03:43 PM.', '', 7, 1, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(901, 'Appointment Status', 'appointment', 'Patient: Asad (3) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/17/2022 03:43 PM.', '', 3, 3, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(902, 'Appointment Status', 'appointment', 'Dear Asad (3) your appointment status is approved Date: 02/17/2022 03:43 PM with Doctor Nighat Shah (1002).', '', NULL, 3, '2022-02-17 15:43:33', 'yes', '2022-02-17 10:43:33'),
(903, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: 123 (7). Appointment Date: 02/22/2022 04:10 PM  With Doctor Name: Nighat Shah (1002).', '', 1, 4, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(904, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: 123 (7). Appointment Date: 02/22/2022 04:10 PM  With Doctor Name: Nighat Shah (1002).', '', 7, 1, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(905, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: 123 (7). Appointment Date: 02/22/2022 04:10 PM  With Doctor Name: Nighat Shah (1002).', '', 3, 3, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(906, 'New Appointment Created', 'appointment', 'Dear 123 (7) your appointment has been created with Doctor: Nighat Shah (1002).', '', NULL, 7, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(907, 'Appointment Status', 'appointment', 'Patient: 123 (7) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/22/2022 04:10 PM.', '', 1, 4, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(908, 'Appointment Status', 'appointment', 'Patient: 123 (7) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/22/2022 04:10 PM.', '', 7, 1, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(909, 'Appointment Status', 'appointment', 'Patient: 123 (7) appointment status is approved with Doctor:  Nighat Shah (1002) Date: 02/22/2022 04:10 PM.', '', 3, 3, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(910, 'Appointment Status', 'appointment', 'Dear 123 (7) your appointment status is approved Date: 02/22/2022 04:10 PM with Doctor Nighat Shah (1002).', '', NULL, 7, '2022-02-17 16:10:41', 'yes', '2022-02-17 11:10:41'),
(911, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 150.00.', '', 1, 4, '2022-02-17 18:40:02', 'yes', '2022-02-17 13:40:02'),
(912, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 150.00.', '', 7, 1, '2022-02-17 18:40:02', 'yes', '2022-02-17 13:40:02'),
(913, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 150.00.', '', 3, NULL, '2022-02-17 18:40:02', 'yes', '2022-02-17 13:40:02'),
(914, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB1,  total bill amount 3000.00 tax 150.00, discount 0.00 so now your net amount 3150.00 and total paid amount is 3150.00. ', '', NULL, 3, '2022-02-17 18:40:02', 'yes', '2022-02-17 13:40:02'),
(915, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-17 19:15:43', 'yes', '2022-02-17 14:15:43'),
(916, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-17 19:15:43', 'yes', '2022-02-17 14:15:43'),
(917, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-17 19:15:43', 'yes', '2022-02-17 14:15:43'),
(918, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB2,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-17 19:15:43', 'yes', '2022-02-17 14:15:43'),
(919, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-17 19:26:30', 'yes', '2022-02-17 14:26:30'),
(920, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-17 19:26:30', 'yes', '2022-02-17 14:26:30'),
(921, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-17 19:26:30', 'yes', '2022-02-17 14:26:30'),
(922, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB3,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-17 19:26:30', 'yes', '2022-02-17 14:26:30'),
(923, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 150.00, tax 150.00.', '', 1, 4, '2022-02-17 19:27:10', 'yes', '2022-02-17 14:27:10'),
(924, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 150.00, tax 150.00.', '', 7, 1, '2022-02-17 19:27:10', 'yes', '2022-02-17 14:27:10'),
(925, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 150.00, tax 150.00.', '', 3, NULL, '2022-02-17 19:27:10', 'yes', '2022-02-17 14:27:10'),
(926, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB4,  total bill amount 3000.00 tax 150.00, discount 150.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 3, '2022-02-17 19:27:10', 'yes', '2022-02-17 14:27:10'),
(927, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-17 19:32:25', 'yes', '2022-02-17 14:32:25'),
(928, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-17 19:32:25', 'yes', '2022-02-17 14:32:25'),
(929, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-17 19:32:25', 'yes', '2022-02-17 14:32:25'),
(930, 'Radiology Investigation', 'radiology', 'Dear Naveed (2) case id: . Your Radiology test bill number is RADB5,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 2, '2022-02-17 19:32:25', 'yes', '2022-02-17 14:32:25'),
(931, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-18 16:13:22', 'yes', '2022-02-18 11:13:22'),
(932, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-18 16:13:22', 'yes', '2022-02-18 11:13:22'),
(933, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-18 16:13:22', 'yes', '2022-02-18 11:13:22'),
(934, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB6,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-18 16:13:22', 'yes', '2022-02-18 11:13:22'),
(935, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-18 16:19:12', 'yes', '2022-02-18 11:19:12'),
(936, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-18 16:19:12', 'yes', '2022-02-18 11:19:12'),
(937, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-18 16:19:12', 'yes', '2022-02-18 11:19:12'),
(938, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB7,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-18 16:19:12', 'yes', '2022-02-18 11:19:12');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `role_id`, `receiver_id`, `date`, `is_active`, `created_at`) VALUES
(939, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-18 16:48:39', 'yes', '2022-02-18 11:48:39'),
(940, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-18 16:48:39', 'yes', '2022-02-18 11:48:39'),
(941, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-18 16:48:39', 'yes', '2022-02-18 11:48:39'),
(942, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB8,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-18 16:48:39', 'yes', '2022-02-18 11:48:39'),
(943, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 1, 4, '2022-02-18 16:53:38', 'yes', '2022-02-18 11:53:38'),
(944, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 7, 1, '2022-02-18 16:53:38', 'yes', '2022-02-18 11:53:38'),
(945, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 225.00, tax 225.00.', '', 3, NULL, '2022-02-18 16:53:38', 'yes', '2022-02-18 11:53:38'),
(946, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB9,  total bill amount 4500.00 tax 225.00, discount 225.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 3, '2022-02-18 16:53:38', 'yes', '2022-02-18 11:53:38'),
(947, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 17:02:15', 'yes', '2022-02-18 12:02:15'),
(948, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 17:02:15', 'yes', '2022-02-18 12:02:15'),
(949, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 17:02:15', 'yes', '2022-02-18 12:02:15'),
(950, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB10,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 3, '2022-02-18 17:02:15', 'yes', '2022-02-18 12:02:15'),
(951, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 17:06:36', 'yes', '2022-02-18 12:06:36'),
(952, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 17:06:36', 'yes', '2022-02-18 12:06:36'),
(953, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 17:06:36', 'yes', '2022-02-18 12:06:36'),
(954, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB11,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 3, '2022-02-18 17:06:36', 'yes', '2022-02-18 12:06:36'),
(955, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 17:13:29', 'yes', '2022-02-18 12:13:29'),
(956, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 17:13:29', 'yes', '2022-02-18 12:13:29'),
(957, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 17:13:29', 'yes', '2022-02-18 12:13:29'),
(958, 'Radiology Investigation', 'radiology', 'Dear Naveed (2) case id: . Your Radiology test bill number is RADB12,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 2, '2022-02-18 17:13:29', 'yes', '2022-02-18 12:13:29'),
(959, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 17:31:41', 'yes', '2022-02-18 12:31:41'),
(960, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 17:31:41', 'yes', '2022-02-18 12:31:41'),
(961, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 17:31:41', 'yes', '2022-02-18 12:31:41'),
(962, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB13,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 3, '2022-02-18 17:31:41', 'yes', '2022-02-18 12:31:41'),
(963, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 17:34:10', 'yes', '2022-02-18 12:34:10'),
(964, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 17:34:10', 'yes', '2022-02-18 12:34:10'),
(965, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 17:34:10', 'yes', '2022-02-18 12:34:10'),
(966, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB14,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 4, '2022-02-18 17:34:10', 'yes', '2022-02-18 12:34:10'),
(967, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 18:15:29', 'yes', '2022-02-18 13:15:29'),
(968, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 18:15:29', 'yes', '2022-02-18 13:15:29'),
(969, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 18:15:29', 'yes', '2022-02-18 13:15:29'),
(970, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB1,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 4, '2022-02-18 18:15:29', 'yes', '2022-02-18 13:15:29'),
(971, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 19:25:55', 'yes', '2022-02-18 14:25:55'),
(972, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 19:25:55', 'yes', '2022-02-18 14:25:55'),
(973, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-18 19:25:55', 'yes', '2022-02-18 14:25:55'),
(974, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB16,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 4, '2022-02-18 19:25:55', 'yes', '2022-02-18 14:25:55'),
(975, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-18 19:35:15', 'yes', '2022-02-18 14:35:15'),
(976, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-18 19:35:15', 'yes', '2022-02-18 14:35:15'),
(977, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, 3, '2022-02-18 19:35:15', 'yes', '2022-02-18 14:35:15'),
(978, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB16,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is . ', '', NULL, 4, '2022-02-18 19:35:15', 'yes', '2022-02-18 14:35:15'),
(979, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Sunny (1) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 8500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-21 12:12:15', 'yes', '2022-02-21 07:12:15'),
(980, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Sunny (1) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 8500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-21 12:12:15', 'yes', '2022-02-21 07:12:15'),
(981, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Sunny (1) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 8500.00, total discount 0.00, tax 50.00.', '', 3, 3, '2022-02-21 12:12:15', 'yes', '2022-02-21 07:12:15'),
(982, 'Radiology Investigation', 'radiology', 'Dear Sunny (1) case id: . Your Radiology test bill number is RADB17,  total bill amount 8500.00 tax 50.00, discount 0.00 so now your net amount 8550.00 and total paid amount is 8550.00. ', '', NULL, 1, '2022-02-21 12:12:15', 'yes', '2022-02-21 07:12:15'),
(983, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-21 12:16:59', 'yes', '2022-02-21 07:16:59'),
(984, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-21 12:16:59', 'yes', '2022-02-21 07:16:59'),
(985, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, 3, '2022-02-21 12:16:59', 'yes', '2022-02-21 07:16:59'),
(986, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB18,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 18, '2022-02-21 12:16:59', 'yes', '2022-02-21 07:16:59'),
(987, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 1, 4, '2022-02-21 18:07:31', 'yes', '2022-02-21 13:07:31'),
(988, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 7, 1, '2022-02-21 18:07:31', 'yes', '2022-02-21 13:07:31'),
(989, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 50.00.', '', 3, NULL, '2022-02-21 18:07:31', 'yes', '2022-02-21 13:07:31'),
(990, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB1,  total bill amount 4500.00 tax 50.00, discount 0.00 so now your net amount 4550.00 and total paid amount is 4550.00. ', '', NULL, 18, '2022-02-21 18:07:31', 'yes', '2022-02-21 13:07:31'),
(991, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 18:13:01', 'yes', '2022-02-21 13:13:01'),
(992, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 18:13:01', 'yes', '2022-02-21 13:13:01'),
(993, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 18:13:01', 'yes', '2022-02-21 13:13:01'),
(994, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB20,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 18, '2022-02-21 18:13:01', 'yes', '2022-02-21 13:13:01'),
(995, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 9000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 18:34:28', 'yes', '2022-02-21 13:34:28'),
(996, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 9000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 18:34:28', 'yes', '2022-02-21 13:34:28'),
(997, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 9000.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 18:34:28', 'yes', '2022-02-21 13:34:28'),
(998, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB20,  total bill amount 9000.00 tax 0.00, discount 0.00 so now your net amount 9000.00 and total paid amount is . ', '', NULL, 18, '2022-02-21 18:34:28', 'yes', '2022-02-21 13:34:28'),
(999, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 17500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 18:51:58', 'yes', '2022-02-21 13:51:58'),
(1000, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 17500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 18:51:58', 'yes', '2022-02-21 13:51:58'),
(1001, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 17500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 18:51:58', 'yes', '2022-02-21 13:51:58'),
(1002, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB20,  total bill amount 17500.00 tax 0.00, discount 0.00 so now your net amount 17500.00 and total paid amount is . ', '', NULL, 18, '2022-02-21 18:51:58', 'yes', '2022-02-21 13:51:58'),
(1003, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 19:04:07', 'yes', '2022-02-21 14:04:07'),
(1004, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 19:04:07', 'yes', '2022-02-21 14:04:07'),
(1005, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 19:04:07', 'yes', '2022-02-21 14:04:07'),
(1006, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB21,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 18, '2022-02-21 19:04:07', 'yes', '2022-02-21 14:04:07'),
(1007, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 13000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 19:14:41', 'yes', '2022-02-21 14:14:41'),
(1008, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 13000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 19:14:41', 'yes', '2022-02-21 14:14:41'),
(1009, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 13000.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 19:14:41', 'yes', '2022-02-21 14:14:41'),
(1010, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB22,  total bill amount 13000.00 tax 0.00, discount 0.00 so now your net amount 13000.00 and total paid amount is 13000.00. ', '', NULL, 18, '2022-02-21 19:14:41', 'yes', '2022-02-21 14:14:41'),
(1011, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 19:15:24', 'yes', '2022-02-21 14:15:24'),
(1012, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 19:15:24', 'yes', '2022-02-21 14:15:24'),
(1013, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-21 19:15:24', 'yes', '2022-02-21 14:15:24'),
(1014, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB1,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 18, '2022-02-21 19:15:24', 'yes', '2022-02-21 14:15:24'),
(1015, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 19:27:21', 'yes', '2022-02-21 14:27:21'),
(1016, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 19:27:21', 'yes', '2022-02-21 14:27:21'),
(1017, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-21 19:27:21', 'yes', '2022-02-21 14:27:21'),
(1018, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB23,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is . ', '', NULL, 18, '2022-02-21 19:27:21', 'yes', '2022-02-21 14:27:21'),
(1019, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Waqas (20) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-21 20:06:58', 'yes', '2022-02-21 15:06:58'),
(1020, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Waqas (20) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-21 20:06:58', 'yes', '2022-02-21 15:06:58'),
(1021, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Waqas (20) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-21 20:06:58', 'yes', '2022-02-21 15:06:58'),
(1022, 'Radiology Investigation', 'radiology', 'Dear Waqas (20) case id: . Your Radiology test bill number is RADB24,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 20, '2022-02-21 20:06:58', 'yes', '2022-02-21 15:06:58'),
(1023, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Raja (21) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 12:16:56', 'yes', '2022-02-23 07:16:56'),
(1024, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Raja (21) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 12:16:56', 'yes', '2022-02-23 07:16:56'),
(1025, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Raja (21) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-23 12:16:56', 'yes', '2022-02-23 07:16:56'),
(1026, 'Radiology Investigation', 'radiology', 'Dear Raja (21) case id: . Your Radiology test bill number is RADB25,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 21, '2022-02-23 12:16:56', 'yes', '2022-02-23 07:16:56'),
(1027, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 12:24:57', 'yes', '2022-02-23 07:24:57'),
(1028, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 12:24:57', 'yes', '2022-02-23 07:24:57'),
(1029, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-23 12:24:57', 'yes', '2022-02-23 07:24:57'),
(1030, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB26,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 3, '2022-02-23 12:24:57', 'yes', '2022-02-23 07:24:57'),
(1031, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 12:26:37', 'yes', '2022-02-23 07:26:37'),
(1032, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 12:26:37', 'yes', '2022-02-23 07:26:37'),
(1033, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-23 12:26:37', 'yes', '2022-02-23 07:26:37'),
(1034, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB27,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 18, '2022-02-23 12:26:37', 'yes', '2022-02-23 07:26:37'),
(1035, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 12:28:21', 'yes', '2022-02-23 07:28:21'),
(1036, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 12:28:21', 'yes', '2022-02-23 07:28:21'),
(1037, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Nighat Shah (1002). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, 3, '2022-02-23 12:28:21', 'yes', '2022-02-23 07:28:21'),
(1038, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB28,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 18, '2022-02-23 12:28:21', 'yes', '2022-02-23 07:28:21'),
(1039, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Raja (21). Appointment Date: 02/28/2022 03:39 PM  With Doctor Name: Zeeshan Khan (9006).', '', 1, 4, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1040, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Raja (21). Appointment Date: 02/28/2022 03:39 PM  With Doctor Name: Zeeshan Khan (9006).', '', 7, 1, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1041, 'New Appointment Created', 'appointment', 'Appointment has been created for Patient: Raja (21). Appointment Date: 02/28/2022 03:39 PM  With Doctor Name: Zeeshan Khan (9006).', '', 3, 9, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1042, 'New Appointment Created', 'appointment', 'Dear Raja (21) your appointment has been created with Doctor: Zeeshan Khan (9006).', '', NULL, 21, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1043, 'Appointment Status', 'appointment', 'Patient: Raja (21) appointment status is approved with Doctor:  Zeeshan Khan (9006) Date: 02/28/2022 03:39 PM.', '', 1, 4, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1044, 'Appointment Status', 'appointment', 'Patient: Raja (21) appointment status is approved with Doctor:  Zeeshan Khan (9006) Date: 02/28/2022 03:39 PM.', '', 7, 1, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1045, 'Appointment Status', 'appointment', 'Patient: Raja (21) appointment status is approved with Doctor:  Zeeshan Khan (9006) Date: 02/28/2022 03:39 PM.', '', 3, 9, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1046, 'Appointment Status', 'appointment', 'Dear Raja (21) your appointment status is approved Date: 02/28/2022 03:39 PM with Doctor Zeeshan Khan (9006).', '', NULL, 21, '2022-02-23 15:40:10', 'yes', '2022-02-23 10:40:10'),
(1047, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Amin (22) case id: . Radiology test assign by Prof Riaz Hussain Shah (9005). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 16:47:09', 'yes', '2022-02-23 11:47:09'),
(1048, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Amin (22) case id: . Radiology test assign by Prof Riaz Hussain Shah (9005). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 16:47:09', 'yes', '2022-02-23 11:47:09'),
(1049, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Amin (22) case id: . Radiology test assign by Prof Riaz Hussain Shah (9005). Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, 7, '2022-02-23 16:47:09', 'yes', '2022-02-23 11:47:09'),
(1050, 'Radiology Investigation', 'radiology', 'Dear Amin (22) case id: . Your Radiology test bill number is RADB29,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 22, '2022-02-23 16:47:09', 'yes', '2022-02-23 11:47:09'),
(1051, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 19:16:04', 'yes', '2022-02-23 14:16:04'),
(1052, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 19:16:04', 'yes', '2022-02-23 14:16:04'),
(1053, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Naveed (2) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-23 19:16:04', 'yes', '2022-02-23 14:16:04'),
(1054, 'Radiology Investigation', 'radiology', 'Dear Naveed (2) case id: . Your Radiology test bill number is RADB30,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 2, '2022-02-23 19:16:04', 'yes', '2022-02-23 14:16:04'),
(1055, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 19:20:45', 'yes', '2022-02-23 14:20:45'),
(1056, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 19:20:45', 'yes', '2022-02-23 14:20:45'),
(1057, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: Asad (3) case id: . Radiology test assign by . Test Charge total amount 3000.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-23 19:20:45', 'yes', '2022-02-23 14:20:45'),
(1058, 'Radiology Investigation', 'radiology', 'Dear Asad (3) case id: . Your Radiology test bill number is RADB31,  total bill amount 3000.00 tax 0.00, discount 0.00 so now your net amount 3000.00 and total paid amount is 3000.00. ', '', NULL, 3, '2022-02-23 19:20:45', 'yes', '2022-02-23 14:20:45'),
(1059, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 19:21:03', 'yes', '2022-02-23 14:21:03'),
(1060, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 19:21:03', 'yes', '2022-02-23 14:21:03'),
(1061, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-23 19:21:03', 'yes', '2022-02-23 14:21:03'),
(1062, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB32,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 4, '2022-02-23 19:21:03', 'yes', '2022-02-23 14:21:03'),
(1063, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 19:21:50', 'yes', '2022-02-23 14:21:50'),
(1064, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 19:21:50', 'yes', '2022-02-23 14:21:50'),
(1065, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: z (4) case id: . Radiology test assign by . Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, NULL, '2022-02-23 19:21:50', 'yes', '2022-02-23 14:21:50'),
(1066, 'Radiology Investigation', 'radiology', 'Dear z (4) case id: . Your Radiology test bill number is RADB33,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 4, '2022-02-23 19:21:50', 'yes', '2022-02-23 14:21:50'),
(1067, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Dr: Sikandar Ali Shaikh (9006). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 1, 4, '2022-02-23 19:31:21', 'yes', '2022-02-23 14:31:21'),
(1068, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Dr: Sikandar Ali Shaikh (9006). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 7, 1, '2022-02-23 19:31:21', 'yes', '2022-02-23 14:31:21'),
(1069, 'Radiology Investigation', 'radiology', 'Radiology Test Report for Patient: jani (18) case id: . Radiology test assign by Dr: Sikandar Ali Shaikh (9006). Test Charge total amount 4500.00, total discount 0.00, tax 0.00.', '', 3, 9, '2022-02-23 19:31:21', 'yes', '2022-02-23 14:31:21'),
(1070, 'Radiology Investigation', 'radiology', 'Dear jani (18) case id: . Your Radiology test bill number is RADB34,  total bill amount 4500.00 tax 0.00, discount 0.00 so now your net amount 4500.00 and total paid amount is 4500.00. ', '', NULL, 18, '2022-02-23 19:31:21', 'yes', '2022-02-23 14:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_notification_setting`
--

CREATE TABLE `system_notification_setting` (
  `id` int(11) NOT NULL,
  `event` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `staff_message` text DEFAULT NULL,
  `is_staff` int(1) NOT NULL DEFAULT 1,
  `patient_message` text DEFAULT NULL,
  `is_patient` int(1) NOT NULL DEFAULT 0,
  `variables` text DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `patient_url` varchar(255) NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_notification_setting`
--

INSERT INTO `system_notification_setting` (`id`, `event`, `subject`, `staff_message`, `is_staff`, `patient_message`, `is_patient`, `variables`, `url`, `patient_url`, `notification_type`, `is_active`, `created_at`) VALUES
(1, 'notification_appointment_created', 'New Appointment Created', 'Appointment has been created for Patient: {{patient_name}} ({{patient_id}}). Appointment Date: {{appointment_date}}  With Doctor Name: {{doctor_name}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) your appointment has been created with Doctor: {{doctor_name}}.', 1, '{{appointment_date}} {{patient_name}} {{patient_id}} {{doctor_name}} {{message}}', '', '', 'appointment', 1, '2021-09-17 02:54:13'),
(2, 'appointment_approved', 'Appointment Status', 'Patient: {{patient_name}} ({{patient_id}}) appointment status is {{appointment_status}} with Doctor:  {{doctor_name}} Date: {{appointment_date}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) your appointment status is {{appointment_status}} Date: {{appointment_date}} with Doctor {{doctor_name}}.', 1, '{{appointment_date}} {{patient_name}} {{patient_id}} {{doctor_name}} {{message}} {{appointment_status}}', '', '', 'appointment', 1, '2021-09-17 02:54:13'),
(3, 'opd_visit_created', 'New OPD Visit Created', 'OPD Visit has been created for patient: {{patient_name}} ({{patient_id}}) with doctor: {{doctor_name}}. Patient Symptoms Details are {{symptoms_description}} and any known allergies: {{any_known_allergies}} .', 1, 'Dear: {{patient_name}} ({{patient_id}}) your OPD visit has been created.  Your Symptoms Details are {{symptoms_description}} and any known allergies: {{any_known_allergies}}. ', 1, '{{patient_name}} {{patient_id}} {{symptoms_description}} {{any_known_allergies}} {{appointment_date}} {{doctor_name}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(4, 'notification_opd_prescription_created', 'New OPD Prescription Created', 'New OPD prescription has been created for Patient: {{patient_name}} ({{patient_id}}) Checkup ID: ({{checkup_id}}). Prescription {{prescription_no}} prescribe by {{prescribe_by}}.  \r\n\r\n Prescription Details.\r\n(1) Finding Description: {{finding_description}}\r\n(2) Medicine Details: {{medicine}}\r\n(3) Radiology Test: {{radilogy_test}}\r\n(4) Pathology Test: {{pathology_test}}', 1, 'Dear {{patient_name}} ({{patient_id}}) Checkup ID: ({{checkup_id}}) your OPD ({{opd_no}}) prescription has been created . Please Check your finding details {{finding_description}} prescribe by {{prescribe_by}}.\r\n\r\nPlease Check prescription details. \r\n(1) Medicines Details: {{medicine}}\r\n(2) Radiology Test: {{radilogy_test}}\r\n(3) Pathology Test: {{pathology_test}}', 1, '{{prescription_no}} {{opd_no}} {{checkup_id}} {{finding_description}} {{medicine}} {{radilogy_test}} {{pathology_test}} {{prescribe_by}} {{generated_by}} {{patient_name}} {{patient_id}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(5, 'add_opd_patient_charge', 'Add OPD Patient Charge', 'New OPD charges added in OPD Number: ({{opd_no}}) For Patient: {{patient_name}} ({{patient_id}}). In OPD applied charges is {{charge_type}}, charge category {{charge_category}} and charge Name {{charge_name}} quantity {{qty}}. Total net payable bill amount is {{net_amount}} date {{date}}', 1, 'Dear {{patient_name}}({{patient_id}}) OPD Number ({{opd_no}}) . In OPD applied charge name {{charge_type}} , category {{charge_category}},  charge name {{charge_name}} quantity {{qty}} and your net payable bill amount is {{net_amount}} Date {{date}}.', 1, '{{patient_name}} {{patient_id}}  {{opd_no}} {{charge_type}} {{charge_category}} {{charge_name}} {{qty}} {{net_amount}} {{date}} {{doctor_name}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(6, 'add_opd_payment', 'Add OPD Payment', 'New OPD payment has been received from Patient: {{patient_name}}({{patient_id}}) OPD Number: ({{opd_no}}) transaction id: {{transaction_id}} payment date: {{date}} payment amount: {{amount}} payment mode: {{payment_mode}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) your payment successfully received. OPD Number: {{opd_no}} transaction id: {{transaction_id}} payment date: {{date}} payment amount: ${{amount}} payment mode: {{payment_mode}}. ', 1, '{{patient_name}} {{patient_id}} {{opd_no}} {{date}} {{amount}} {{payment_mode}} {{transaction_id}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(7, 'add_opd_medication_dose', 'New OPD Medication Dose', 'Consultant Doctor {{doctor_name}} has given medicine {{medicine_name}} Category is {{medicine_category}} Dosage {{dosage}} for OPD patient number is  {{opd_no}} patient name is {{patient_name}} medicine time  {{date}} {{time}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) OPD Number: {{opd_no}} you have been given the Medicine is {{medicine_name}} Dose ({{dosage}}) medicine time {{date}} {{time}}.', 1, '{{patient_name}} {{patient_id}}  {{opd_no}} {{case_id}} \r\n{{date}} {{time}}  {{medicine_name}} {{dosage}} {{medicine_category}}  {{doctor_name}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(8, 'add_nurse_note', 'New IPD Nurse Note', 'Add New Nurse Note for IPD Number: ({{ipd_no}}) Patient: {{patient_name}} ({{patient_id}}) Case ID: {{case_id}} with consultant doctor  {{doctor_name}}. \r\n\r\nNurse Note Details:\r\n(1) Nurse Name: {{nurse_name}} ({{nurse_id}})\r\n(2) Note: {{note}}\r\n(3) Comment: {{comment}}', 1, 'Dear {{patient_name}} ({{patient_id}}) IPD Number: ({{ipd_no}}) and Case ID: {{case_id}} your consultant doctor is {{doctor_name}}. \r\n\r\nNurse Note Details:\r\n(1) Nurse Name: {{nurse_name}} ({{nurse_id}})\r\n(2) Note: {{note}}\r\n(3) Comment: {{comment}}', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{case_id}} {{doctor_name}} {{date}} {{nurse_name}} {{nurse_id}} {{note}} {{comment}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(9, 'move_in_ipd_from_opd', 'Patient Move in IPD From OPD', 'Patient {{patient_name}} ({{patient_id}}) move in IPD From OPD. Symptoms Details: {{symptoms_description}} and known allergies is  {{any_known_allergies}}. The patient is being shifted from opd to ipd whose consultant doctor is {{doctor_name}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) you have been shifted from OPD to IPD consultant doctor is {{doctor_name}}. Check your symptoms details {{symptoms_description}} and known allergies {{any_known_allergies}}.\r\n\r\n', 1, '{{patient_name}} {{patient_id}} {{symptoms_description}} {{any_known_allergies}} {{appointment_date}} {{doctor_name}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(10, 'add_opd_operation', 'New OPD Operation', 'OPD Number: ({{opd_no}}) Patient: {{patient_name}} ({{patient_id}}) Case id: {{case_id}} has been shifted to the operation ward. Consultant Doctor is {{doctor_name}} .\r\n\r\nOperation Details.\r\nOperation Name: {{operation_name}}\r\nOperation Date: {{operation_date}}', 1, 'Dear {{patient_name}} {{patient_id}} your operation {{operation_name}} date is on {{operation_date}} and your consultant doctor is {{doctor_name}}.', 1, '{{patient_name}} {{patient_id}} {{opd_no}} {{case_id}} {{operation_name}} {{operation_date}} {{doctor_name}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(11, 'ipd_visit_created', 'New IPD Visit Created', 'IPD Visit has been created for {{patient_name}} ({{patient_id}}) with Doctor: {{doctor_name}}. Patient Symptoms Details are {{symptoms_description}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) your IPD visit has been created .', 1, '{{patient_name}} {{patient_id}} {{symptoms_description}} {{admission_date}} {{doctor_name}} {{bed_location}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(12, 'notification_ipd_prescription_created', 'Notification IPD Prescription Created', 'Prescription({{prescription_no}}) for IPD ({{ipd_no}}) prescribe by: {{priscribe_by}}. \r\n\r\nPrescription  Details-\r\nFinding Description: {{finding_description}}\r\nMedicine Name: {{medicine}}\r\nRadiology Test: {{radilogy_test}}\r\nPathology Test: {{pathology_test}}\r\n{{priscribe_by}}', 1, 'Dear {{patient_name}} {{patient_id}} your IPD prescription number {{prescription_no}} is prescribe by: {{priscribe_by}}. \r\n\r\nPrescription  Details-\r\n Finding Description: {{finding_description}}\r\n Medicine Name : {{medicine}}\r\n Radiology Test: {{radilogy_test}}\r\n Pathology Test: {{pathology_test}}', 1, '{{prescription_no}} {{ipd_no}} {{finding_description}} {{medicine}} {{radilogy_test}} {{pathology_test}} {{priscribe_by}} {{generated_by}} {{patient_name}} {{patient_id}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(14, 'add_ipd_operation', 'Add IPD Operation', 'Patient Name : {{patient_name}} ({{patient_id}}) IPD Number : {{ipd_no}} Case Id : {{case_id}} has been shifted to the operation ward. Whose doctor is {{doctor_name}}.\r\n\r\nOperation Details-\r\n(1) Operation Name: {{operation_name}}\r\n(2) Operation  Date:  {{operation_date}}', 1, 'Dear {{patient_name}} ({{patient_id}}) your operation {{operation_name}} date is on {{operation_date}} with {{doctor_name}}.', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{case_id}} {{operation_name}} {{operation_date}} {{doctor_name}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(15, 'add_ipd_generate_bill', 'Add IPD Generate Bill', 'Generated bill for IPD Number {{ipd_no}}  Patient Name {{patient_name}} {{patient_id}} .\r\n\r\nBill Details\r\nTotal Amount {{total}}\r\nNet Amount {{net_amount}}\r\nTax  {{tax}}\r\nPaid Amount   {{paid}}\r\nDue Amount   {{due}}', 1, 'Dear {{patient_name}} {{patient_id}}  your IPD bill is generated for Case Id {{case_id}} .\r\n\r\nBill Details\r\nTotal Amount {{total}}\r\nNet Amount {{net_amount}}\r\nTax  {{tax}}\r\nPaid Amount   {{paid}}\r\nDue Amount   {{due}}', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{case_id}} {{net_amount}} {{total}} {{tax}} {{paid}} {{due}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(16, 'add_ipd_patient_charge', 'Add IPD Patient Charge', 'Add Charge for IPD Patient Name : {{patient_name}} ({{patient_id}}) IPD Number ({{ipd_no}}) has applied charge {{charge_type}}, category  {{charge_category}}, and Name {{charge_name}} total quantity {{qty}} . Now total net amount {{net_amount}} date {{date}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) IPD Number {{ipd_no}} you have applied charge name is {{charge_type}}, category {{charge_category}} ,charge name {{charge_name}}  and total quantity {{qty}} now your net amount {{net_amount}} and date {{date}}.', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{charge_type}} {{charge_category}} {{charge_name}} {{qty}} {{net_amount}} {{date}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(17, 'add_ipd_payment', 'Add IPD Payment', 'Payment has been received from Patient Name: {{patient_name}} ({{patient_id}}) IPD NO: {{ipd_no}} transaction id: {{transaction_id}} payment date: {{date}} payment amount: {{amount}} payment mode: {{payment_mode}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) IPD: {{ipd_no}} we have received your payment amount ({{amount}}) transaction id: {{transaction_id}} payment date: {{date}} payment mode: {{payment_mode}} .', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{date}} {{amount}} {{payment_mode}} {{transaction_id}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(18, 'add_ipd_medication_dose', 'Add IPD Medication Dose', 'Doctor {{doctor_name}}  has given medicine {{medicine_name}} Category is {{medicine_category}} Dosage {{dosage}} to Patient:  {{patient_name}} {{patient_id}} at {{date}} {{time}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) IPD Number {{ipd_no}} you have been given the {{medicine_name}} dose {{dosage}} of medicine at {{date}} {{time}}.', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{case_id}} {{date}} {{time}} {{medicine_name}} {{dosage}} {{medicine_category}} {{doctor_name}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(20, 'add_consultant_register', 'Add Consultant Register', 'New Consultant Register: {doctor_name}} has been added  some instructions: {{instruction}} on date {{applied_date}} for the patients {{patient_name}} ({{patient_id}}) of IPD {{ipd_no}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) IPD Number: ({{ipd_no}}). Consultant: {{doctor_name}} has added some instructions: {{instruction}} on applied date {{applied_date}}.', 1, '{{patient_name}} {{patient_id}} {{ipd_no}} {{case_id}} {{applied_date}} {{instruction_date}} {{doctor_name}} {{instruction}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(22, 'pharmacy_generate_bill', 'Pharmacy Generate Bill', 'Pharmacy Bill Generated for Patient: {{patient_name}} ({{patient_id}}) Case ID: {{case_id}}.\r\n\r\nPharmacy Bill Details-\r\nTotal Amount: {{total}}\r\nNet Amount: {{net_amount}}\r\nDiscount: {discount}} \r\nTax: {{tax}}\r\nPaid Amount  $ {{paid}}\r\nDue Amount  $ {{due_amount}}', 1, 'Dear {{patient_name}} {{patient_id}} your pharmacy bill is generated. \r\n\r\nBill Details-\r\nTotal Amount: {{total}}\r\nNet Amount: {{net_amount}}\r\nDiscount: {{discount}}\r\nTax: {{tax}}\r\nPaid Amount: {{paid}}\r\nDue Amount: {{due_amount}}', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{medicine_details}} {{doctor_name}} {{total}} {{discount}} {{tax}} {{net_amount}} {{date}} {{paid}} {{due_amount}}', '', '', 'pharmacy', 1, '2021-09-17 02:54:13'),
(23, 'add_medicine', 'Add Medicine', 'New Add Medicine Details: \r\n\r\nMedicine Name  {{medicine_name}} , \r\nMedicine Category  {{medicine_category}} ,\r\nMedicine Company  {{medicine_company}} ,\r\nMedicine Composition  {{medicine_composition}} ,\r\nMedicine Group {{medicine_group}} , \r\nUnit {{unit}} ,\r\nPacking  {{unit_packing}} ,', 1, '', 0, '{{medicine_name}} {{medicine_category}} {{medicine_company}} {{medicine_composition}} {{medicine_group}} {{unit}} {{unit_packing}}', '', '', 'pharmacy', 1, '2021-09-17 02:54:13'),
(24, 'add_bad_stock', 'Add Bad Stock', 'Add Bad Stock Details :\r\n\r\nBatch No {{batch_no}}\r\nExpiry Date  {{expiry_date}}\r\nOutward Date   {{outward_date}}  \r\n Total Qty  {{qty}}', 1, '', 0, '{{batch_no}} {{expiry_date}} {{outward_date}} {{qty}}', '', '', 'pharmacy', 1, '2021-09-17 02:54:13'),
(25, 'purchase_medicine', 'Purchase Medicine', 'Purchase Medicine Details :\r\nSupplier Name: {{supplier_name}} \r\nMedicine Details: {{medicine_details}}\r\nPurchase Date: {{purchase_date}}\r\nInvoice Number:  {{invoice_number}}\r\nTotal: {{total}}\r\nDiscount: {{discount}} \r\nTax: {{tax}}\r\nNet Amount: {{net_amount}}', 1, '', 0, '{{supplier_name}} {{medicine_details}} {{purchase_date}} {{invoice_number}} {{total}} {{discount}} {{tax}} {{net_amount}}', '', '', 'pharmacy', 1, '2021-09-17 02:54:13'),
(26, 'pathology_investigation', 'Pathology Investigation', 'Pathology Test Report for Patient: {{patient_name}} ({{patient_id}}) case id: {{case_id}}. Pathology test assign by {{doctor_name}}. pathology charge- total amount {{total}}, discount {{discount}} ,tax {{tax}}  net amount is {{net_amount}} and total paid amount {{paid_amount}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) case id: {{case_id}}. Your pathology test bill number is {{bill_no}} and total amount {{total}}, tax {{tax}}, discount {{discount}} so now your net amount is {{net_amount}}.  You have paid your total amount {{paid_amount}}.', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{date}} {{doctor_name}}  {{total}} {{discount}} {{tax}} {{net_amount}} {{paid_amount}}', '', '', 'pathology', 1, '2021-09-17 02:54:13'),
(27, 'pathology_sample_collection', 'Pathology Sample Collection', 'Pathology Bill Number {{bill_no}} Patient: {{patient_name}} ({{patient_id}}) Case id: {{case_id}}. Sample Collected  by  {{sample_collected_person_name}} on {{collected_date}} from {{pathology_center}} and report expected date is {{expected_date}}.', 1, 'Dear {{patient_name}} {{patient_id}} Case id: {{case_id}}  your pathology test sample collected by {{sample_collected_person_name}} on {{collected_date}} from {{pathology_center}} . Pathology Test report expected date {{expected_date}}. ', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{test_name}} {{sample_collected_person_name}} {{collected_date}} {{pathology_center}} {{expected_date}} {{doctor_name}}', '', '', 'pathology', 1, '2021-09-17 02:54:13'),
(28, 'pathology_test_report', 'Pathology Test Report', 'Pathology Test Report Bill Number {{bill_no}} for Patient Name is {{patient_name}} {{patient_id}} Case id {{case_id}} and test approved by {{approved_by}} on {{approve_date}} . Pathology Test {{test_name}} sample collected by {{sample_collected_person_name}} on {{collected_date}} from {{pathology_center}} and Expected date {{expected_date}} . {{doctor_name}}', 1, 'Dear {{patient_name}} {{patient_id}} Case id  {{case_id}}. Your Pathology Test {{test_name}} sample collected by {{sample_collected_person_name}} on  {{collected_date}} from {{pathology_center}} .', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{test_name}} {{sample_collected_person_name}} {{collected_date}} {{pathology_center}} {{expected_date}} {{approved_by}} {{approve_date}} {{doctor_name}}', '', '', 'pathology', 1, '2021-09-17 02:54:13'),
(29, 'radiology_investigation', 'Radiology Investigation', 'Radiology Test Report for Patient: {{patient_name}} ({{patient_id}}) case id: {{case_id}}. Radiology test assign by {{doctor_name}}. Test Charge total amount {{total}}, total discount {{discount}}, tax {{tax}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) case id: {{case_id}}. Your Radiology test bill number is {{bill_no}},  total bill amount {{total}} tax {{tax}}, discount {{discount}} so now your net amount {{net_amount}} and total paid amount is {{paid}}. ', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{date}} {{doctor_name}}  {{total}} {{net_amount}} {{paid}} {{discount}} {{tax}}', '', '', 'radiology', 1, '2021-09-17 02:54:13'),
(30, 'radiology_sample_collection', 'Radiology Sample Collection', 'Radiology Bill Number: {{bill_no}} for Patient: {{patient_name}} ({{patient_id}}) Case id: {{case_id}}. Radiology test name is {{test_name}} and sample collected by {{sample_collected_person_name}} on {{collected_date}} from {{radiology_center}} and report expected date is {{expected_date}}.', 1, 'Dear {{patient_name}} {{patient_id}} Case id: {{case_id}}  your radiology test is {{test_name}} and  sample collected by {{sample_collected_person_name}} on {{collected_date}} from {{radiology_center}}. Test report expected date {{expected_date}}. ', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{test_name}} {{sample_collected_person_name}} {{collected_date}} {{radiology_center}} {{expected_date}} {{doctor_name}}', '', '', 'radiology', 1, '2021-09-17 02:54:13'),
(31, 'radiology_test_report', 'Radiology Test Report', 'Radiology Bill Number {{bill_no}} Patient Name {{patient_name}} ({{patient_id}}) Case id ( {{case_id}}). Sample Collected  by  {{sample_collected_person_name}} on {{collected_date}} from {{radiology_center}} and Expected date is {{expected_date}}.', 1, 'Dear {{patient_name}} {{patient_id}} Case id ({{case_id}}) your radiology test sample collected by {{sample_collected_person_name}} on {{collected_date}} from  {{radiology_center}}. radiology test report expected date {{expected_date}} .', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{test_name}} {{sample_collected_person_name}} {{collected_date}} {{radiology_center}} {{expected_date}} {{approved_by}} {{approved_date}} {{doctor_name}}', '', '', 'radiology', 1, '2021-09-17 02:54:13'),
(32, 'add_bag_stock', 'Add Bag Stock', 'New Add Bag Stock Details- Donor Name: {{donor_name}}, Blood Group: ({{blood_group}}) and contact number {{contact_no}} . Donate bag details blood bag number ({{bag}}) and charge {{charge_name}} donated date {{donate_date}}. Total amount {{total}} discount {{discount}} tax {{tax}} so total net amount is {{net_amount}}.', 1, '', 0, '{{donor_name}} {{blood_group}} {{contact_no}} {{donate_date}} {{bag}} {{charge_name}} {{total}} {{discount}} {{tax}} {{net_amount}}', '', '', 'blood_bank', 1, '2021-09-17 02:54:13'),
(33, 'blood_issue', 'Blood Issue', 'Blood issue for Bill Number {{bill_no}} Patient: {{patient_name}} ({{patient_id}}) Case Id {{case_id}} . Patient blood group is {{blood_group}} and bag number ({{bag}}) issue on {{issue_date}}, reference by {{reference_name}}. Applied charge name is {{charge_name}} and total amount {{total}}, discount {{discount}}, tax {{tax}}, now total net amount{{net_amount}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) case id: {{case_id}} your bill number {{bill_no}} blood group {{blood_group}} bag number is {{bag}} charge name  {{charge_name}} issue on {{issue_date}} reference by {{reference_name}} .Total amount {{total}}, discount {{discount}}, tax {{tax}} now your total net amount {{net_amount}}.', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{issue_date}} {{reference_name}} {{blood_group}} {{bag}} {{charge_name}} {{total}} {{discount}} {{tax}} {{net_amount}} ', '', '', 'blood_bank', 1, '2021-09-17 02:54:13'),
(34, 'add_component_of_blood', 'Add Component of Blood', '{{component_name}} component has been added on the bag number {{bag}} of Blood Group {{blood_group}} .', 1, '', 0, '{{blood_group}} {{bag}} {{ component_name}} {{component_bag}}', '', '', 'blood_bank', 1, '2021-09-17 02:54:13'),
(35, 'component_issue', 'Component Issue', 'Component Issue for  Bill Number {{bill_no}} Patient Name is {{patient_name}} ({{patient_id}}) Case Id: {{case_id}}.  Blood group {{blood_group}} Component: {{component}}, bag number {{bag}} issue on {{issue_date}}  reference by {{reference_name}}. Applied charge name {{charge_name}} total amount {{total}}  discount {{discount}} tax {{tax}} now total net amount {{net_amount}}.', 1, 'Dear {{patient_name}} ({{patient_id}}) {{case_id}} you have issued a component {{component}} Bag number is {{bag}}  blood group is {{blood_group}} issue on  {{issue_date}} reference by {{reference_name}} . Total amount {{total}} Discount {{discount}} Tax {{tax}} now your total net amount  is {{net_amount}}.', 1, '{{patient_name}} {{patient_id}} {{case_id}} {{bill_no}} {{issue_date}} {{reference_name}} {{blood_group}} {{component}} {{bag}} {{charge_name}} {{total}} {{discount}} {{tax}} {{net_amount}} ', '', '', 'blood_bank', 1, '2021-09-17 02:54:13'),
(36, 'live_opd_consultation_add', 'Live OPD Consultation Add', 'Live Consultation for  OPD {{opd_no}} Patient  Name {{patient_name}} {{patient_id}}  with Consultant Doctor {{doctor_name}} {{doctor_id}} . Live consulatent Title  {{consultation_title}} Date {{consultation_date}} minutes {{consultation_date}} {{consultation_duration_minutes}}.', 1, 'Dear {{patient_name}} {{patient_id}} your live consultation subject {{consultation_title}} date {{consultation_date}} minute {{consultation_duration_minutes}}  with Consultant Doctor {{doctor_name}} ({{doctor_id}}).', 1, '{{patient_name}} {{patient_id}} {{consultation_title}} {{consultation_date}} {{consultation_duration_minutes}}  {{opd_no}} {{checkup_id}} {{doctor_id}} {{doctor_name}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(37, 'live_opd_consultation_start', 'Live Opd Consultation Start', 'patient_name: {{patient_name}} patient_id: {{patient_id}} consultation_title: {{consultation_title}} consultation_date: {{consultation_date}}  consultation_duration_minutes: {{consultation_duration_minutes}} opd_no: {{opd_no}} checkup_id: {{checkup_id}} doctor_name: {{doctor_name}}', 1, 'patient_name: {{patient_name}} patient_id: {{patient_id}} consultation_title: {{consultation_title}} consultation_date: {{consultation_date}}  consultation_duration_minutes: {{consultation_duration_minutes}} opd_no: {{opd_no}} checkup_id: {{checkup_id}} doctor_name: {{doctor_name}}', 1, '{{patient_name}} {{patient_id}} {{consultation_title}} {{consultation_date}} {{consultation_duration_minutes}}  {{opd_no}} {{checkup_id}} {{doctor_name}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(38, 'live_meeting_start', 'Live Meeting Start', 'Live Meeting has been created for Staff: {{staff_list}}  Meeting Title is {{meeting_title}}  and Meeting Date {{meeting_date}} Meeting Duration Minutes: {{meeting_duration_minutes}}.', 1, '', 0, '{{meeting_title}} {{meeting_date}} {{meeting_duration_minutes}} {{staff_list}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(39, 'live_meeting_add', 'Live Meeting Add', 'Live Meeting Created for Staff {{staff_list}} and  Meeting Title is {{meeting_title}} on Meeting Date {{meeting_date}} Meeting Duration Minutes{{meeting_duration_minutes}} .', 1, '', 0, '{{meeting_title}} {{meeting_date}} {{meeting_duration_minutes}} {{staff_list}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(40, 'add_referral_payment', 'Add Referral Payment', 'Patient Name {{patient_name}} ({{patient_id}}) in {{patient_type}} Bill number {{bill_no}} and patient bill amount is {{patient_bill_amount}}. Commission percentage of total bill {{commission_percentage}}. Commission amount {{commission_amount}} has been given to the payee {{payee}}.', 1, '', 0, '{{patient_name}} {{patient_id}} {{patient_type}} {{bill_no}} {{patient_bill_amount}} {{payee}} {{commission_percentage}} {{commission_amount}}', '', '', 'referral', 1, '2021-09-17 02:54:13'),
(41, 'patient_certificate_generate', 'Patient Certificate Generate', 'Patient Name {{patient_name}} {{patient_id}} certificate {{certificate_name}} has been generated. OPD/ IPD number {{opd_ipd_no}}.', 1, 'Dear Patient {{patient_name}} {{patient_id}} OPD / IPD number is {{opd_ipd_no}}  your certificate {{certificate_name}} has been generated.', 1, '{{patient_name}} {{patient_id}} {{opd_ipd_no}} {{certificate_name}}', '', '', 'certificate', 1, '2021-09-17 02:54:13'),
(42, 'patient_id_card_generate', 'remaining', 'ID Card is generated for Patient Name {{patient_name}} {{patient_id}} .', 1, 'Dear {{patient_name}} {{patient_id}} your id card is generated .', 1, '{{patient_name}} {{patient_id}}  {{id_card_template}}', '', '', 'certificate', 1, '2021-09-17 02:54:13'),
(43, 'generate_staff_id_card', 'Generate Staff ID Card', 'Staff ID card is generated for Role: {{role}}, staff name {{staff_name}} suename {{staff_surname}} employee id: {{employee_id}}.', 1, '', 0, '{{role}} {{staff_name}} {{staff_surname}} {{employee_id}} {{id_card_template}}', '', '', 'certificate', 1, '2021-09-17 02:54:13'),
(44, 'create_ambulance_call', 'Create Ambulance Call', '{{patient_name}} {{patient_id}} has booked an ambulance on {{date}} his charge name {{charge_name}} tax {{tax}}  net amount {{net_amount}} and total paid  amount {{paid_amount}}.\r\n\r\nAmbulance Details \r\n\r\nVehicle Model  {{vehicle_model}}\r\nDriver Name  {{driver_name}}', 1, 'Dear {{patient_name}} {{patient_id}} your ambulance is booked on {{date}} . Charge applied {{charge_name}}, tax {{tax}} net amount is {{net_amount}} and your paid amount is {{paid_amount}} .\r\n\r\nAmbulance Details-\r\nVehicle Model: {{vehicle_model}}\r\nDriver Name: {{driver_name}}', 1, '{{patient_name}} {{patient_id}} {{vehicle_model}} {{driver_name}} {{date}} {{charge_name}} {{tax}} {{net_amount}} {{paid_amount}}', '', '', 'ambulance', 1, '2021-09-17 02:54:13'),
(45, 'add_birth_record', 'Add Birth Record', 'Patient {{mother_name}} ({{mother_id}}) has given birth to a new baby {{child_name}} on {{birth_date}}.', 1, 'Dear {{mother_name}} {{mother_id}} case id : {{case_id}} your baby {{child_name}} is born on {{birth_date}}.', 1, '{{mother_name}} {{mother_id}} {{child_name}} {{birth_date}} {{case_id}}', '', '', 'birth_death_record', 1, '2021-09-17 02:54:13'),
(46, 'add_death_record', 'Add Death Record', 'Patient {{patient_name}} ({{patient_id}}) Case id :{{case_id}} has died on {{death_date}}.', 1, '', 0, '{{case_id}} {{patient_name}} {{patient_id}} {{death_date}}', '', '', 'birth_death_record', 1, '2021-09-17 02:54:13'),
(47, 'staff_enabale_disable', 'Staff Enabale/Disable', 'Staff Name: {{staff_name}} surname: {{staff_surname}} Employment ID: ({{employee_id}}) has been {{status}}.', 1, '', 0, '{{staff_name}} {{staff_surname}} {{employee_id}} {{status}}', '', '', 'human_resource', 1, '2021-09-17 02:54:13'),
(48, 'staff_generate_payroll', 'Staff Generate Payroll', 'Payroll Generated for  Month {{month}} year {{year}}  Role {{role}} . Basic Salary is {{basic_salary}} Earning  {{earning}} Deduction {{deduction}} Gross salary  {{gross_salary}}.  Now Total Net Salary {{net_salary}}.', 1, '', 0, '{{role}} {{month}} {{year}} {{basic_salary}} {{earning}} {{deduction}} {{gross_salary}} {{tax_amount}} {{net_salary}}', '', '', 'human_resource', 1, '2021-09-17 02:54:13'),
(49, 'staff_leave', 'Staff Leave', 'Staff {{staff_name}} {{staff_surname}} ({{employee_id}}) has applied leave on Date {{apply_date}} for leave {{days}} days. date {{leave_date}} . Currently Leave Status is {{leave_status}} .', 1, '', 0, '{{apply_date}} {{leave_type}} {{leave_date}} {{days}} {{staff_name}} {{staff_surname}} {{employee_id}}\r\n{{leave_status}}', '', '', 'human_resource', 1, '2021-09-17 02:54:13'),
(50, 'staff_leave_status', 'Staff Leave Status', 'Staff Name {{staff_name}} {{staff_surname}} {{employee_id}} has applied leave for {{days}} days. leave date: {{leave_date}}, Leave Status:  {{leave_status}}.', 1, '', 0, '{{apply_date}} {{leave_type}} {{leave_date}} {{days}} {{staff_name}} {{staff_surname}} {{employee_id}}\r\n{{leave_status}}', '', '', 'human_resource', 1, '2021-09-17 02:54:13'),
(51, 'live_ipd_consultation_add', 'Live IPD Consultation Add', 'Live Consultation for IPD {{ipd_no}} Patient  Name {{patient_name}} {{patient_id}} with Consultant Doctor {{doctor_name}} {{doctor_id}} . Live consulatent Title  {{consultation_title}} Date {{consultation_date}} minutes {{consultation_date}} {{consultation_duration_minutes}}.', 1, 'Dear {{patient_name}} {{patient_id}} your live consultation subject {{consultation_title}} date {{consultation_date}} minute {{consultation_duration_minutes}}  with Consultant Doctor {{doctor_name}} ({{doctor_id}}).', 1, '{{patient_name}} {{patient_id}} {{consultation_title}} {{consultation_date}} {{consultation_duration_minutes}} \r\n{{ipd_no}} {{doctor_id}} {{doctor_name}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(52, 'live_ipd_consultation_start', 'Live IPD Consultation Start', 'IPD No {{ipd_no}} Patient Name {{patient_name}} {{patient_id}}. Live Consultation Doctor {{doctor_name}}. \r\n\r\nLive Consultation Details.\r\nConsultation Title {{consultation_title}}\r\nConsultation Date  {{consultation_date}}\r\nConsultation Duration Minutes  {{consultation_duration_minutes}}', 1, 'Dear patient patient_name: {{patient_name}} patient_id: {{patient_id}} , your live consultation consultation_title: {{consultation_title}} has been scheduled on Consultation Date: {{consultation_date}} for the duration of consultation_duration_minutes: {{consultation_duration_minutes}} minute, ipd_no: {{ipd_no}} and your consultant doctor doctor_name: {{doctor_name}}  please do not share the link to any body.', 1, '{{patient_name}} {{patient_id}} {{consultation_title}} {{consultation_date}} {{consultation_duration_minutes}}  {{ipd_no}} {{doctor_name}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(53, 'add_ipd_discharge_patient', 'Add IPD Discharge Patient', 'IPD Patient: {{patient_name}}({{patient_id}}) status: ({{discharge_status}}) on {{discharge_date}}.', 1, 'Dear {{patient_name}} {{patient_id}} you have been {{discharge_status}} on {{discharge_date}}.', 1, '{{patient_name}} {{patient_id}} {{discharge_status}} {{discharge_date}} {{ipd_no}} {{case_id}}', '', '', 'ipd', 1, '2021-09-17 02:54:13'),
(54, 'add_opd_discharge_patient', 'Add OPD Discharge Patient', 'OPD Patient {{patient_name}} {{patient_id}} discharge status: {discharge_status}} on {{discharge_date}}.', 1, '\r\nDear {{patient_name}} {{patient_id}} you have been {{discharge_status}} on {{discharge_date}}.', 1, '{{patient_name}} {{patient_id}} {{discharge_status}} {{discharge_date}} {{opd_no}} {{case_id}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(55, 'add_payroll_payment', 'Add Payroll Payment', 'Month {{month}} salary amount {{payment_amount}} has been given to staff name {{staff}} on date {{payment_date}}.', 1, 'staff: {{staff}} payment_amount: {{payment_amount}} month: {{month}} year: {{year}} payment_mode: {{payment_mode}} payment_date: {{payment_date}}\r\n', 0, '{{staff}} {{payment_amount}} {{month}} {{year}} {{payment_mode}} {{payment_date}}', '', '', 'human_resource', 1, '2021-09-17 02:54:13'),
(56, 'add_opd_generate_bill', 'Add OPD Generate Bill', 'Generated bill for OPD Number {{opd_id}}  Patient Name {{patient_name}} {{patient_id}} .\r\n\r\nBill Details\r\nTotal Amount {{total}}\r\nNet Amount {{net_amount}}\r\nTax  {{tax}}\r\nPaid Amount   {{paid}}\r\nDue Amount   {{due}}', 1, 'Dear {{patient_name}} {{patient_id}}  your OPD bill is generated for Case Id {{case_id}} .\r\n\r\nBill Details\r\nTotal Amount {{total}}\r\nNet Amount {{net_amount}}\r\nTax  {{tax}}\r\nPaid Amount   {{paid}}\r\nDue Amount   {{due}}', 1, '{{patient_name}} {{patient_id}} {{opd_id}} {{case_id}} {{net_amount}} {{total}} {{tax}} {{paid}} {{due}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(57, 'patient_consultation_add', 'Patient Consultation Add', 'Live Consultation for Patient  Name {{patient_name}} {{patient_id}}  with Consultant Doctor {{doctor_name}} . Live consulatent Title  {{consultation_title}} Date {{consultation_date}} minutes {{consultation_date}} {{consultation_duration_minutes}}.', 1, 'Dear {{patient_name}} {{patient_id}} your live consultation subject {{consultation_title}} date {{consultation_date}} minute {{consultation_duration_minutes}}  with Consultant Doctor {{doctor_name}}.', 1, '{{patient_name}} {{patient_id}} {{consultation_title}} {{consultation_date}} {{consultation_duration_minutes}}  {{checkup_id}} {{doctor_name}}', '', '', 'live_consultation', 1, '2021-09-17 02:54:13'),
(58, 'opd_patient_discharge_revert', 'opd_patient_discharge_revert', 'patient_name: {{patient_name}} patient_id: {{patient_id}} discharge_status: {{discharge_status}} discharge_date: {{discharge_date}} opd_no: {{opd_no}} case_id: {{case_id}}', 1, 'patient_name: {{patient_name}} patient_id: {{patient_id}} discharge_status: {{discharge_status}} discharge_date: {{discharge_date}} opd_no: {{opd_no}} case_id: {{case_id}}', 1, '{{patient_name}} {{patient_id}} {{discharge_status}} {{discharge_date}} {{opd_no}} {{case_id}}', '', '', 'opd', 1, '2021-09-17 02:54:13'),
(59, 'ipd_patient_discharge_revert', 'ipd_patient_discharge_revert', 'patient_name: {{patient_name}} patient_id: {{patient_id}} discharge_status: {{discharge_status}} discharge_date: {{discharge_date}} ipd_no: {{ipd_no}} case_id: {{case_id}}', 1, 'patient_name: {{patient_name}} patient_id: {{patient_id}} discharge_status: {{discharge_status}} discharge_date: {{discharge_date}} ipd_no: {{ipd_no}} case_id: {{case_id}}', 1, '{{patient_name}} {{patient_id}} {{discharge_status}} {{discharge_date}} {{ipd_no}} {{case_id}}', '', '', 'opd', 1, '2021-09-17 02:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `tax_category`
--

CREATE TABLE `tax_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` float(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_category`
--

INSERT INTO `tax_category` (`id`, `name`, `percentage`, `created_at`) VALUES
(1, 'Foundation Fund ', 50.00, '2022-02-23 10:41:31'),
(2, 'No Tax', 0.00, '2022-02-21 14:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `section` varchar(50) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `case_reference_id` int(11) DEFAULT NULL,
  `opd_id` int(11) DEFAULT NULL,
  `ipd_id` int(11) DEFAULT NULL,
  `pharmacy_bill_basic_id` int(11) DEFAULT NULL,
  `pathology_billing_id` int(11) DEFAULT NULL,
  `radiology_billing_id` int(11) DEFAULT NULL,
  `blood_donor_cycle_id` int(11) DEFAULT NULL,
  `blood_issue_id` int(11) DEFAULT NULL,
  `ambulance_call_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `amount_type` varchar(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `section`, `patient_id`, `case_reference_id`, `opd_id`, `ipd_id`, `pharmacy_bill_basic_id`, `pathology_billing_id`, `radiology_billing_id`, `blood_donor_cycle_id`, `blood_issue_id`, `ambulance_call_id`, `appointment_id`, `attachment`, `attachment_name`, `amount_type`, `amount`, `payment_mode`, `cheque_no`, `cheque_date`, `payment_date`, `note`, `received_by`, `created_at`) VALUES
(2, 'payment', 'OPD', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500.00, 'Cash', NULL, NULL, '2022-01-18 15:59:00', '', 2, '2022-01-18 11:05:40'),
(3, 'payment', 'OPD', 1, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-01-18 15:59:00', NULL, 1, '2022-01-20 12:27:27'),
(4, 'payment', 'OPD', 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-01-20 17:34:00', '', 1, '2022-01-20 12:36:14'),
(15, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000.00, 'Cash', NULL, NULL, '2022-01-27 14:54:00', '', NULL, '2022-01-27 09:54:37'),
(19, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000.00, 'Cash', NULL, NULL, '2022-01-27 15:36:00', '', NULL, '2022-01-27 10:37:12'),
(20, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000.00, 'Cash', NULL, NULL, '2022-01-27 15:38:00', '', NULL, '2022-01-27 10:39:15'),
(21, 'payment', 'OPD', 4, 11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-01-27 16:02:00', '', 1, '2022-01-27 11:02:57'),
(24, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000.00, 'Cash', NULL, NULL, '2022-01-27 19:12:00', '', NULL, '2022-01-27 14:13:06'),
(87, 'payment', 'Appointment', 4, 72, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:54:55', NULL, 1, '2022-02-01 14:54:55'),
(89, 'payment', 'Appointment', 4, 74, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:55:51', NULL, 1, '2022-02-01 14:55:51'),
(91, 'payment', 'Appointment', 4, 76, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:56:43', NULL, 1, '2022-02-01 14:56:43'),
(93, 'payment', 'Appointment', 1, 78, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:57:19', NULL, 1, '2022-02-01 14:57:19'),
(95, 'payment', 'Appointment', 4, 80, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:57:54', NULL, 1, '2022-02-01 14:57:54'),
(96, 'payment', 'Appointment', 3, 81, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:58:17', NULL, 1, '2022-02-01 14:58:17'),
(97, 'payment', 'Appointment', 2, 82, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 19:58:37', NULL, 1, '2022-02-01 14:58:37'),
(98, 'payment', 'Appointment', 3, 83, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:09:14', NULL, 1, '2022-02-01 15:09:14'),
(100, 'payment', 'Appointment', 1, 85, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:15:10', NULL, 1, '2022-02-01 15:15:10'),
(101, 'payment', 'Appointment', 1, 86, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:15:45', NULL, 1, '2022-02-01 15:15:45'),
(102, 'payment', 'Appointment', 1, 87, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:16:00', NULL, 1, '2022-02-01 15:16:00'),
(103, 'payment', 'Appointment', 4, 88, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:16:24', NULL, 1, '2022-02-01 15:16:24'),
(104, 'payment', 'Appointment', 1, 89, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:17:01', NULL, 1, '2022-02-01 15:17:01'),
(105, 'payment', 'Appointment', 1, 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:18:17', NULL, 1, '2022-02-01 15:18:17'),
(106, 'payment', 'Appointment', 1, 91, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:18:38', NULL, 1, '2022-02-01 15:18:38'),
(107, 'payment', 'Appointment', 1, 92, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:19:03', NULL, 1, '2022-02-01 15:19:03'),
(108, 'payment', 'Appointment', 3, 93, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:19:23', NULL, 1, '2022-02-01 15:19:23'),
(109, 'payment', 'Appointment', 1, 94, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:19:57', NULL, 1, '2022-02-01 15:19:57'),
(110, 'payment', 'Appointment', 1, 95, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:20:10', NULL, 1, '2022-02-01 15:20:10'),
(111, 'payment', 'Appointment', 1, 96, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:20:39', NULL, 1, '2022-02-01 15:20:39'),
(113, 'payment', 'Appointment', 1, 98, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:34:12', NULL, 1, '2022-02-01 15:34:12'),
(114, 'payment', 'Appointment', 1, 99, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:34:34', NULL, 1, '2022-02-01 15:34:34'),
(115, 'payment', 'Appointment', 1, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:34:56', NULL, 1, '2022-02-01 15:34:56'),
(116, 'payment', 'Appointment', 1, 101, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-01 20:35:19', NULL, 1, '2022-02-01 15:35:19'),
(117, 'payment', 'Appointment', 4, 102, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-16 14:20:24', NULL, 1, '2022-02-16 09:20:33'),
(118, 'payment', 'Appointment', 1, 103, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-16 15:06:41', NULL, 1, '2022-02-16 10:07:05'),
(119, 'payment', 'Appointment', 4, 104, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 17:49:41', NULL, 1, '2022-02-16 12:49:41'),
(120, 'payment', 'Appointment', 4, 105, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 17:51:33', NULL, 1, '2022-02-16 12:51:33'),
(121, 'payment', 'Appointment', 1, 106, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 17:51:57', NULL, 1, '2022-02-16 12:51:57'),
(122, 'payment', 'Appointment', 4, 107, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:07:44', NULL, 4, '2022-02-16 13:07:44'),
(123, 'payment', 'Appointment', 4, 108, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:08:07', NULL, 4, '2022-02-16 13:08:07'),
(124, 'payment', 'Appointment', 4, 109, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:11:31', NULL, 4, '2022-02-16 13:11:31'),
(126, 'payment', 'Appointment', 4, 111, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:12:26', NULL, 4, '2022-02-16 13:12:26'),
(128, 'payment', 'Appointment', 1, 113, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:14:57', NULL, 4, '2022-02-16 13:14:57'),
(129, 'payment', 'Appointment', 1, 114, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:15:29', NULL, 4, '2022-02-16 13:15:29'),
(130, 'payment', 'Appointment', 3, 115, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 18:15:54', NULL, 4, '2022-02-16 13:15:54'),
(131, 'payment', 'Appointment', 2, 116, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 19:27:48', NULL, 1, '2022-02-16 14:27:48'),
(132, 'payment', 'Appointment', 3, 117, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-16 19:28:06', NULL, 1, '2022-02-16 14:28:06'),
(133, 'payment', 'Appointment', 3, 118, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-17 15:43:33', NULL, 1, '2022-02-17 10:43:33'),
(134, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 15:47:58', NULL, 1, '2022-02-17 10:47:58'),
(139, 'payment', 'Appointment', 7, 119, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-17 16:10:41', NULL, 1, '2022-02-17 11:10:41'),
(140, 'payment', 'Appointment', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:12:44', NULL, 1, '2022-02-17 11:12:44'),
(142, 'payment', 'Appointment', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:24:17', NULL, 1, '2022-02-17 11:24:17'),
(143, 'payment', 'Appointment', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:27:57', NULL, 1, '2022-02-17 11:27:57'),
(144, 'payment', 'Appointment', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:39:54', NULL, 1, '2022-02-17 11:39:54'),
(145, 'payment', 'Appointment', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:51:19', NULL, 1, '2022-02-17 11:51:19'),
(146, 'payment', 'Appointment', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-17 16:53:31', NULL, 1, '2022-02-17 11:53:31'),
(154, 'payment', 'Appointment', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, 1260.00, 'Cash', NULL, NULL, '2022-02-18 16:22:13', NULL, 1, '2022-02-18 11:22:13'),
(166, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, 1800.00, 'Cash', NULL, NULL, '2022-02-21 12:19:49', NULL, 1, '2022-02-21 07:19:49'),
(167, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, 1800.00, 'Cash', NULL, NULL, '2022-02-21 12:30:51', NULL, 1, '2022-02-21 07:30:51'),
(168, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, 1200.00, 'Cash', NULL, NULL, '2022-02-21 17:13:50', NULL, 1, '2022-02-21 12:13:50'),
(169, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, 1000.00, 'Cash', NULL, NULL, '2022-02-21 17:17:10', NULL, 1, '2022-02-21 12:17:10'),
(170, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, 1200.00, 'Cash', NULL, NULL, '2022-02-21 17:58:47', NULL, 1, '2022-02-21 12:58:47'),
(175, 'payment', 'Radiology', 18, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-21 19:14:00', '', 1, '2022-02-21 14:15:24'),
(176, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, 1920.00, 'Cash', NULL, NULL, '2022-02-21 19:20:37', NULL, 1, '2022-02-21 14:20:37'),
(177, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, 1600.00, 'Cash', NULL, NULL, '2022-02-21 19:21:13', NULL, 1, '2022-02-21 14:21:13'),
(179, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, 1000.00, 'Cash', NULL, NULL, '2022-02-21 19:41:55', NULL, 1, '2022-02-21 14:41:55'),
(181, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, 1200.00, 'Cash', NULL, NULL, '2022-02-21 19:44:22', NULL, 1, '2022-02-21 14:44:22'),
(182, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-21 19:48:47', NULL, 1, '2022-02-21 14:48:47'),
(183, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-21 20:01:58', NULL, 1, '2022-02-21 15:01:58'),
(184, 'payment', 'Appointment', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-21 20:05:33', NULL, 1, '2022-02-21 15:05:33'),
(185, 'payment', 'Radiology', 20, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-21 20:06:00', '', 1, '2022-02-21 15:06:58'),
(186, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 12:07:43', NULL, 1, '2022-02-23 07:07:43'),
(187, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 12:09:24', NULL, 1, '2022-02-23 07:09:24'),
(188, 'payment', 'Radiology', 21, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-23 12:16:00', '', 1, '2022-02-23 07:16:56'),
(189, 'payment', 'Radiology', 3, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 12:24:00', '', 1, '2022-02-23 07:24:57'),
(190, 'payment', 'Radiology', 18, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 12:26:00', '', 1, '2022-02-23 07:26:37'),
(191, 'payment', 'Radiology', 18, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 12:26:00', '', 1, '2022-02-23 07:28:21'),
(192, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 13:14:50', NULL, 1, '2022-02-23 08:14:50'),
(193, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 14:42:13', NULL, 1, '2022-02-23 09:42:13'),
(194, 'payment', 'Appointment', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 14:43:52', NULL, 1, '2022-02-23 09:43:52'),
(195, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 14:44:38', NULL, 1, '2022-02-23 09:44:38'),
(196, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, 2050.00, 'Cash', NULL, NULL, '2022-02-23 15:22:48', NULL, 1, '2022-02-23 10:22:48'),
(197, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, 2000.00, 'Cash', NULL, NULL, '2022-02-23 15:35:43', NULL, 1, '2022-02-23 10:35:43'),
(198, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL, 2050.00, 'Cash', NULL, NULL, '2022-02-23 15:36:54', NULL, 1, '2022-02-23 10:36:54'),
(199, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, 2000.00, 'Cash', NULL, NULL, '2022-02-23 15:38:32', NULL, 1, '2022-02-23 10:38:32'),
(200, 'payment', 'Appointment', 21, 120, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, 0.00, 'Cash', NULL, NULL, '2022-02-23 15:40:09', NULL, 1, '2022-02-23 10:40:09'),
(201, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 15:43:25', NULL, 1, '2022-02-23 10:43:25'),
(203, 'payment', 'Appointment', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, 2050.00, 'Cash', NULL, NULL, '2022-02-23 16:29:02', NULL, 1, '2022-02-23 11:29:02'),
(204, 'payment', 'Appointment', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 16:29:25', NULL, 1, '2022-02-23 11:29:25'),
(205, 'payment', 'Appointment', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 16:30:58', NULL, 1, '2022-02-23 11:30:58'),
(206, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 16:41:38', NULL, 1, '2022-02-23 11:41:38'),
(207, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 16:41:55', NULL, 1, '2022-02-23 11:41:55'),
(208, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-23 16:44:13', NULL, 1, '2022-02-23 11:44:13'),
(209, 'payment', 'Appointment', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 16:45:54', NULL, 1, '2022-02-23 11:45:54'),
(210, 'payment', 'Radiology', 22, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 16:46:00', '', 1, '2022-02-23 11:47:09'),
(211, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, 550.00, 'Cash', NULL, NULL, '2022-02-23 17:17:06', NULL, 1, '2022-02-23 12:17:06'),
(212, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-23 17:27:33', NULL, 1, '2022-02-23 12:27:33'),
(213, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 18:04:30', NULL, 1, '2022-02-23 13:04:30'),
(214, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 18:18:42', NULL, 1, '2022-02-23 13:18:42'),
(215, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 18:21:02', NULL, 1, '2022-02-23 13:21:02'),
(216, 'payment', 'Appointment', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-23 18:22:25', NULL, 1, '2022-02-23 13:22:25'),
(217, 'payment', 'Radiology', 2, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 19:15:00', '', 1, '2022-02-23 14:16:04'),
(218, 'payment', 'Radiology', 3, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, 'Cash', NULL, NULL, '2022-02-23 19:20:00', '', 1, '2022-02-23 14:20:45'),
(219, 'payment', 'Radiology', 4, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-23 19:20:00', '', 1, '2022-02-23 14:21:03'),
(220, 'payment', 'Radiology', 4, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-23 19:21:00', '', 1, '2022-02-23 14:21:50'),
(221, 'payment', 'Radiology', 18, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500.00, 'Cash', NULL, NULL, '2022-02-23 19:21:00', '', 1, '2022-02-23 14:31:21'),
(222, 'payment', 'Appointment', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-24 13:36:30', NULL, 2, '2022-02-24 08:36:30'),
(223, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-24 13:37:29', NULL, 2, '2022-02-24 08:37:29'),
(224, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-24 13:52:15', NULL, 2, '2022-02-24 08:52:15'),
(225, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-24 15:44:03', NULL, 1, '2022-02-24 10:44:03'),
(226, 'payment', 'Appointment', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-24 17:04:32', NULL, 2, '2022-02-24 12:04:32'),
(227, 'payment', 'Appointment', 20, 121, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, 1200.00, 'Cash', NULL, NULL, '2022-02-24 17:05:58', NULL, 2, '2022-02-25 11:57:54'),
(228, 'payment', 'Appointment', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-25 16:58:16', NULL, 1, '2022-02-25 11:58:16'),
(251, 'payment', 'Appointment', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-26 16:39:11', NULL, 1, '2022-02-26 11:39:11'),
(252, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 181, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-26 16:39:24', NULL, 1, '2022-02-26 11:39:24'),
(253, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-26 16:39:37', NULL, 1, '2022-02-26 11:39:37'),
(254, 'payment', 'Appointment', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-26 16:39:49', NULL, 1, '2022-02-26 11:39:49'),
(255, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 184, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-26 16:40:01', NULL, 1, '2022-02-26 11:40:01'),
(256, 'payment', 'Appointment', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL, 1250.00, 'Cash', NULL, NULL, '2022-02-26 16:40:16', NULL, 1, '2022-02-26 11:40:16'),
(257, 'payment', 'Appointment', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 186, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-26 16:58:41', NULL, 1, '2022-02-26 11:58:41'),
(258, 'payment', 'Appointment', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 187, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-26 16:59:14', NULL, 1, '2022-02-26 11:59:14'),
(259, 'payment', 'Appointment', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, 550.00, 'Cash', NULL, NULL, '2022-02-26 16:59:47', NULL, 1, '2022-02-26 11:59:47'),
(260, 'payment', 'Appointment', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, 550.00, 'Cash', NULL, NULL, '2022-02-26 17:05:58', NULL, 1, '2022-02-26 12:05:58'),
(261, 'payment', 'Appointment', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL, 1150.00, 'Cash', NULL, NULL, '2022-02-26 17:06:54', NULL, 1, '2022-02-26 12:06:54'),
(262, 'payment', 'Appointment', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 191, NULL, NULL, NULL, 550.00, 'Cash', NULL, NULL, '2022-02-26 17:07:25', NULL, 1, '2022-02-26 12:07:25'),
(263, 'payment', 'Appointment', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, 1050.00, 'Cash', NULL, NULL, '2022-02-26 17:12:46', NULL, 1, '2022-02-26 12:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `unit_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_type`, `created_at`) VALUES
(1, 'mm', 'radio', '2022-02-17 13:26:23'),
(2, 'cm', 'patho', '2022-02-17 14:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'superadmin@alihospitallarkana.com', 'Super Admin', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-14 13:09:58'),
(2, 'superadmin@alihospitallarkana.com', 'Super Admin', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-14 13:12:15'),
(3, 'superadmin@alihospitallarkana.com', 'Super Admin', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-14 13:15:07'),
(4, 'superadmin@alihospitallarkana.com', 'Super Admin', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-14 13:41:36'),
(5, 'superadmin@alihospitallarkana.com', 'Super Admin', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-15 06:15:24'),
(6, 'receptionist@alihospitallarkana.com', 'Receptionist', '::1', 'Chrome 97.0.4692.71, Windows 10', '2022-01-15 08:33:42'),
(7, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-15 11:53:00'),
(8, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 96.0.4664.110, Windows 10', '2022-01-15 13:54:29'),
(9, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-17 07:44:44'),
(10, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 96.0.4664.110, Windows 10', '2022-01-17 09:03:09'),
(11, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-17 10:07:02'),
(12, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 10:47:16'),
(13, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 96.0.4664.110, Windows 10', '2022-01-18 11:05:28'),
(14, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 11:15:22'),
(15, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 11:16:00'),
(16, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 13:42:08'),
(17, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 13:43:07'),
(18, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 96.0.4664.110, Windows 10', '2022-01-19 08:23:04'),
(19, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-19 11:03:18'),
(20, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-19 11:16:49'),
(21, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 96.0.4664.110, Windows 10', '2022-01-19 13:12:44'),
(22, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 06:30:56'),
(23, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 09:46:16'),
(24, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-21 09:23:13'),
(25, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-21 09:32:31'),
(26, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-21 09:36:02'),
(27, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-21 12:09:06'),
(28, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-22 08:51:06'),
(29, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-22 09:54:59'),
(30, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-22 11:12:22'),
(31, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-24 12:19:27'),
(32, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-25 07:00:45'),
(33, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.71, Windows 10', '2022-01-25 11:41:06'),
(34, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-26 11:11:11'),
(35, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-26 11:12:52'),
(36, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-27 09:31:13'),
(37, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-27 11:13:54'),
(38, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-27 14:11:15'),
(39, 'zkk@gmail.com', 'Doctor', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-27 14:22:21'),
(40, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-28 13:29:34'),
(41, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-29 10:51:20'),
(42, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-01-31 10:15:27'),
(43, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-01 14:40:00'),
(44, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 08:39:47'),
(45, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 09:19:02'),
(46, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-16 12:08:57'),
(47, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-16 12:54:10'),
(48, 'admin@alihospitallarkana.com', 'Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:07:13'),
(49, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:38:42'),
(50, 'zkk@gmail.com', 'Doctor', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:39:36'),
(51, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:41:56'),
(52, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:42:18'),
(53, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 97.0.4692.99, Windows 10', '2022-02-16 13:44:13'),
(54, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 07:17:42'),
(55, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 09:08:07'),
(56, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 10:02:32'),
(57, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 11:56:08'),
(58, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 12:02:07'),
(59, 'zkk@gmail.com', 'Doctor', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 12:02:19'),
(60, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 12:04:43'),
(61, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.82, Windows 10', '2022-02-17 14:28:15'),
(62, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-18 10:02:23'),
(63, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 06:56:04'),
(64, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 07:34:25'),
(65, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 07:36:38'),
(66, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 08:08:52'),
(67, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 08:09:08'),
(68, 'sania@gmail.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 08:18:35'),
(69, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 08:21:23'),
(70, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 10:41:12'),
(71, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 13:46:33'),
(72, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 06:24:54'),
(73, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 06:26:12'),
(74, 'sania@gmail.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 12:37:05'),
(75, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 12:49:43'),
(76, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 08:35:10'),
(77, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 08:41:40'),
(78, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 08:44:14'),
(79, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 10:33:29'),
(80, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 10:50:23'),
(81, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 11:08:52'),
(82, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-25 11:39:00'),
(83, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 07:33:49'),
(84, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 09:18:55'),
(85, 'receptionist@alihospitallarkana.com', 'Receptionist', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 09:20:45'),
(86, 'superadmin@alihospitallarkana.com', 'Super Admin', '192.140.145.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 09:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text DEFAULT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`) VALUES
(1, 1, 'pat1', '6fefuj', NULL, 'patient', '', 'yes', '2022-01-15 09:40:27'),
(2, 2, 'pat2', '98ccez', NULL, 'patient', '', 'yes', '2022-01-17 11:34:26'),
(3, 3, 'pat3', '20t5k7', NULL, 'patient', '', 'yes', '2022-01-18 11:09:31'),
(4, 4, 'pat4', 'exff3g', NULL, 'patient', '', 'yes', '2022-01-26 12:00:16'),
(5, 0, 'pat0', 'cm1swd', NULL, 'patient', '', 'yes', '2022-02-17 07:23:00'),
(6, 0, 'pat0', 'wve9is', NULL, 'patient', '', 'yes', '2022-02-17 07:25:27'),
(7, 0, 'pat0', 'o2x29t', NULL, 'patient', '', 'yes', '2022-02-17 07:27:21'),
(8, 0, 'pat0', 'f7hhbs', NULL, 'patient', '', 'yes', '2022-02-17 08:01:10'),
(9, 0, 'pat0', 'f9nr2f', NULL, 'patient', '', 'yes', '2022-02-17 08:04:26'),
(10, 0, 'pat0', '6vxivl', NULL, 'patient', '', 'yes', '2022-02-17 08:46:26'),
(11, 0, 'pat0', 'c5ldf7', NULL, 'patient', '', 'yes', '2022-02-17 08:46:56'),
(12, 0, 'pat0', 'whrtfk', NULL, 'patient', '', 'yes', '2022-02-17 08:47:58'),
(13, 0, 'pat0', 'g9h84z', NULL, 'patient', '', 'yes', '2022-02-17 10:50:32'),
(14, 0, 'pat0', '19z9f5', NULL, 'patient', '', 'yes', '2022-02-17 10:51:33'),
(15, 0, 'pat0', 'm1v3xo', NULL, 'patient', '', 'yes', '2022-02-17 10:53:57'),
(16, 0, 'pat0', 'h4tabs', NULL, 'patient', '', 'yes', '2022-02-17 10:54:49'),
(17, 0, 'pat0', 'mpl4qy', NULL, 'patient', '', 'yes', '2022-02-17 10:55:47'),
(18, 5, 'pat5', '3shrr0', NULL, 'patient', '', 'yes', '2022-02-17 11:01:33'),
(19, 6, 'pat6', 'swjht2', NULL, 'patient', '', 'yes', '2022-02-17 11:07:23'),
(20, 7, 'pat7', '3xbsyo', NULL, 'patient', '', 'yes', '2022-02-17 11:09:38'),
(21, 8, 'pat8', 'z5edmc', NULL, 'patient', '', 'yes', '2022-02-17 11:12:01'),
(22, 9, 'pat9', '2zqxiq', NULL, 'patient', '', 'yes', '2022-02-17 11:12:39'),
(23, 10, 'pat10', '3fnp7k', NULL, 'patient', '', 'yes', '2022-02-17 11:16:46'),
(24, 11, 'pat11', 't96v0b', NULL, 'patient', '', 'yes', '2022-02-17 11:24:10'),
(25, 12, 'pat12', 'c4c2xc', NULL, 'patient', '', 'yes', '2022-02-17 11:27:50'),
(26, 13, 'pat13', 'gmmzhw', NULL, 'patient', '', 'yes', '2022-02-17 11:39:47'),
(27, 0, 'pat0', 'u8qalc', NULL, 'patient', '', 'yes', '2022-02-17 11:49:41'),
(28, 0, 'pat0', 'ohio8e', NULL, 'patient', '', 'yes', '2022-02-17 11:50:02'),
(29, 14, 'pat14', 'wky2tl', NULL, 'patient', '', 'yes', '2022-02-17 11:50:21'),
(30, 15, 'pat15', 'x4f6be', NULL, 'patient', '', 'yes', '2022-02-17 11:51:06'),
(31, 16, 'pat16', 'ucygwy', NULL, 'patient', '', 'yes', '2022-02-17 11:52:56'),
(32, 17, 'pat17', '4pyvhi', NULL, 'patient', '', 'yes', '2022-02-17 11:53:24'),
(33, 18, 'pat18', '4pr6oe', NULL, 'patient', '', 'yes', '2022-02-21 07:00:17'),
(34, 19, 'pat19', 'swuorm', NULL, 'patient', '', 'yes', '2022-02-21 07:30:36'),
(35, 20, 'pat20', 'dk0izk', NULL, 'patient', '', 'yes', '2022-02-21 15:05:18'),
(36, 21, 'pat21', 'zn1afj', NULL, 'patient', '', 'yes', '2022-02-23 07:09:04'),
(37, 22, 'pat22', 'p6nsh5', NULL, 'patient', '', 'yes', '2022-02-23 11:45:34'),
(38, 23, 'pat23', '61mowc', NULL, 'patient', '', 'yes', '2022-02-24 08:36:10'),
(39, 24, 'pat24', 'a8gxsr', NULL, 'patient', '', 'yes', '2022-02-26 12:05:35'),
(40, 25, 'pat25', '4jpt79', NULL, 'patient', '', 'yes', '2022-02-26 12:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `token` varchar(200) NOT NULL,
  `expired_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `visit_to` varchar(20) NOT NULL,
  `ipd_opd_staff_id` int(11) DEFAULT NULL,
  `related_to` varchar(60) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visit_details`
--

CREATE TABLE `visit_details` (
  `id` int(11) NOT NULL,
  `opd_details_id` int(11) DEFAULT NULL,
  `organisation_id` int(11) DEFAULT NULL,
  `patient_charge_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `cons_doctor` int(11) DEFAULT NULL,
  `case_type` varchar(200) NOT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `symptoms_type` int(11) DEFAULT NULL,
  `symptoms` varchar(200) DEFAULT NULL,
  `bp` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `pulse` varchar(200) DEFAULT NULL,
  `temperature` varchar(200) DEFAULT NULL,
  `respiration` varchar(200) DEFAULT NULL,
  `known_allergies` varchar(100) DEFAULT NULL,
  `patient_old` varchar(50) DEFAULT NULL,
  `casualty` varchar(200) DEFAULT NULL,
  `refference` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `note_remark` mediumtext DEFAULT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `live_consult` varchar(50) NOT NULL,
  `can_delete` varchar(11) NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visit_details`
--

INSERT INTO `visit_details` (`id`, `opd_details_id`, `organisation_id`, `patient_charge_id`, `transaction_id`, `cons_doctor`, `case_type`, `appointment_date`, `symptoms_type`, `symptoms`, `bp`, `height`, `weight`, `pulse`, `temperature`, `respiration`, `known_allergies`, `patient_old`, `casualty`, `refference`, `date`, `note`, `note_remark`, `payment_mode`, `generated_by`, `live_consult`, `can_delete`, `created_at`) VALUES
(2, 2, NULL, NULL, 2, 3, 'Naveed', '2022-01-18 15:59:00', NULL, '', '', '', '', '', '', '', '', NULL, 'no', '', NULL, '', NULL, 'Cash', 2, 'no', 'no', '2022-01-18 11:05:40'),
(3, 3, NULL, NULL, 3, 3, '', '2022-01-18 15:59:00', 0, '', '', '', '', '', '', '', '', 'no', 'no', '', NULL, '', NULL, 'Cash', 1, 'no', 'no', '2022-01-20 12:27:27'),
(4, 4, NULL, NULL, 4, 3, '', '2022-01-20 17:34:00', NULL, '', '', '', '', '', '', '', '', NULL, 'no', '', NULL, '', NULL, 'Cash', 1, 'no', 'no', '2022-01-20 12:36:14'),
(5, 5, NULL, 5, NULL, NULL, '', '2022-01-26 18:09:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-26 13:09:58'),
(6, 6, NULL, 6, NULL, NULL, '', '2022-01-26 18:11:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-26 13:11:13'),
(7, 7, NULL, 7, NULL, 3, '', '2022-01-26 18:22:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-26 13:22:59'),
(8, 8, NULL, 8, NULL, 5, '', '2022-01-26 18:29:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-26 13:29:16'),
(10, 10, NULL, 10, NULL, 5, '', '2022-01-26 18:45:00', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', NULL, '', NULL, '', 1, 'no', 'no', '2022-01-26 13:45:28'),
(11, 11, NULL, 11, NULL, 3, '', '2022-01-27 15:20:00', NULL, '', '', '', '', '', '', '', '', 'yes', NULL, '', NULL, '', NULL, '', 1, 'no', 'no', '2022-01-27 10:20:53'),
(12, 12, NULL, 12, NULL, NULL, '', '2022-01-27 15:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-27 10:26:05'),
(13, 13, NULL, 14, NULL, 5, '', '2022-01-27 16:04:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-27 11:04:44'),
(18, 18, NULL, NULL, NULL, 5, '', '2022-01-31 15:18:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 10:18:20'),
(20, 20, NULL, NULL, NULL, 5, '', '2022-01-31 15:21:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 10:21:51'),
(21, 21, NULL, NULL, NULL, 3, '', '2022-01-31 15:22:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 10:22:32'),
(22, 22, NULL, NULL, NULL, 5, '', '2022-01-31 16:19:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:19:31'),
(23, 23, NULL, NULL, NULL, 5, '', '2022-01-31 16:20:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:20:32'),
(24, 24, NULL, NULL, NULL, 5, '', '2022-01-31 16:21:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:21:14'),
(25, 25, NULL, NULL, NULL, 3, '', '2022-01-31 16:56:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:56:37'),
(26, 26, NULL, NULL, NULL, 3, '', '2022-01-31 16:57:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:57:58'),
(27, 27, NULL, NULL, NULL, 3, '', '2022-01-31 16:58:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 11:58:45'),
(28, 28, NULL, NULL, NULL, 3, '', '2022-01-31 17:36:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:36:05'),
(29, 29, NULL, 33, NULL, NULL, '', '2022-01-31 17:37:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:37:42'),
(30, 30, NULL, 34, NULL, NULL, '', '2022-01-31 17:38:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:38:36'),
(31, 31, NULL, NULL, NULL, 5, '', '2022-01-31 17:44:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:44:56'),
(32, 32, NULL, 36, NULL, NULL, '', '2022-01-31 17:48:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:48:24'),
(33, 33, NULL, 37, NULL, NULL, '', '2022-01-31 17:51:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:51:18'),
(34, 34, NULL, NULL, NULL, 3, '', '2022-01-31 17:51:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:51:54'),
(35, 35, NULL, 39, NULL, NULL, '', '2022-01-31 17:59:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:59:10'),
(36, 36, NULL, NULL, NULL, 5, '', '2022-01-31 17:59:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 12:59:40'),
(37, 37, NULL, 41, NULL, NULL, '', '2022-01-31 18:13:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:13:54'),
(38, 38, NULL, NULL, NULL, 5, '', '2022-01-31 18:28:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:28:50'),
(39, 39, NULL, NULL, NULL, 5, '', '2022-01-31 18:47:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:47:07'),
(40, 40, NULL, 44, NULL, NULL, '', '2022-01-31 18:47:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:47:38'),
(41, 41, NULL, NULL, NULL, 5, '', '2022-01-31 18:48:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:48:04'),
(42, 42, NULL, NULL, NULL, 5, '', '2022-01-31 18:49:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 13:49:02'),
(43, 43, NULL, NULL, NULL, 5, '', '2022-01-31 19:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:01:35'),
(44, 44, NULL, NULL, NULL, 5, '', '2022-01-31 19:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:11:16'),
(45, 45, NULL, 49, NULL, NULL, '', '2022-01-31 19:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:15:00'),
(46, 46, NULL, 50, NULL, NULL, '', '2022-01-31 19:15:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:15:24'),
(47, 47, NULL, NULL, NULL, 5, '', '2022-01-31 19:22:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:22:49'),
(48, 48, NULL, NULL, NULL, 5, '', '2022-01-31 19:28:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:28:50'),
(49, 49, NULL, 53, NULL, NULL, '', '2022-01-31 19:29:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:29:50'),
(50, 50, NULL, 54, NULL, NULL, '', '2022-01-31 19:32:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:32:58'),
(51, 51, NULL, NULL, NULL, 5, '', '2022-01-31 19:33:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:33:44'),
(52, 52, NULL, 56, NULL, NULL, '', '2022-01-31 19:35:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:35:06'),
(53, 53, NULL, 57, NULL, NULL, '', '2022-01-31 19:36:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:36:29'),
(54, 54, NULL, NULL, NULL, 5, '', '2022-01-31 19:36:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:36:54'),
(55, 55, NULL, NULL, NULL, 5, '', '2022-01-31 19:39:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:39:39'),
(56, 56, NULL, NULL, NULL, 5, '', '2022-01-31 19:40:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:40:21'),
(57, 57, NULL, NULL, NULL, 5, '', '2022-01-31 19:43:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:43:23'),
(58, 58, NULL, NULL, NULL, 5, '', '2022-01-31 19:47:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:47:25'),
(59, 59, NULL, NULL, NULL, 5, '', '2022-01-31 19:50:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:50:24'),
(60, 60, NULL, NULL, NULL, 3, '', '2022-01-31 19:51:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:51:43'),
(61, 61, NULL, 65, NULL, NULL, '', '2022-01-31 19:52:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:52:41'),
(62, 62, NULL, NULL, NULL, 5, '', '2022-01-31 19:53:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:53:20'),
(63, 63, NULL, 67, NULL, NULL, '', '2022-01-31 19:53:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:53:51'),
(64, 64, NULL, NULL, NULL, 5, '', '2022-01-31 19:54:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:54:15'),
(65, 65, NULL, 69, NULL, NULL, '', '2022-01-31 19:55:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:55:16'),
(66, 66, NULL, NULL, NULL, 5, '', '2022-01-31 19:55:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-01-31 14:55:35'),
(67, 67, NULL, 71, NULL, NULL, '', '2022-02-01 19:49:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:49:55'),
(68, 68, NULL, NULL, NULL, 5, '', '2022-02-01 19:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:52:36'),
(69, 69, NULL, 73, NULL, NULL, '', '2022-02-01 19:52:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:52:57'),
(71, 71, NULL, 75, NULL, NULL, '', '2022-02-01 19:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:54:25'),
(72, 72, NULL, NULL, 87, 3, '', '2022-02-01 19:54:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:54:55'),
(73, 73, NULL, 77, NULL, NULL, '', '2022-02-01 19:55:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:55:06'),
(74, 74, NULL, NULL, 89, 3, '', '2022-02-01 19:55:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:55:51'),
(75, 75, NULL, 79, NULL, NULL, '', '2022-02-01 19:56:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:56:30'),
(76, 76, NULL, NULL, 91, 3, '', '2022-02-01 19:56:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:56:43'),
(77, 77, NULL, 81, NULL, NULL, '', '2022-02-01 19:57:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:57:07'),
(78, 78, NULL, NULL, 93, 3, '', '2022-02-01 19:57:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:57:19'),
(79, 79, NULL, 83, NULL, NULL, '', '2022-02-01 19:57:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:57:41'),
(80, 80, NULL, NULL, 95, 3, '', '2022-02-01 19:57:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:57:54'),
(81, 81, NULL, NULL, 96, 5, '', '2022-02-01 19:58:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:58:17'),
(82, 82, NULL, NULL, 97, 3, '', '2022-02-01 19:58:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 14:58:37'),
(83, 83, NULL, NULL, 98, 3, '', '2022-02-01 20:09:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:09:14'),
(84, 84, NULL, 88, NULL, NULL, '', '2022-02-01 20:09:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:09:31'),
(85, 85, NULL, NULL, 100, 3, '', '2022-02-01 20:15:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:15:10'),
(86, 86, NULL, NULL, 101, 3, '', '2022-02-01 20:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:15:45'),
(87, 87, NULL, NULL, 102, 5, '', '2022-02-01 20:16:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:16:00'),
(88, 88, NULL, NULL, 103, 3, '', '2022-02-01 20:16:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:16:24'),
(89, 89, NULL, NULL, 104, 3, '', '2022-02-01 20:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:17:01'),
(90, 90, NULL, NULL, 105, 3, '', '2022-02-01 20:18:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:18:17'),
(91, 91, NULL, NULL, 106, 3, '', '2022-02-01 20:18:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:18:38'),
(92, 92, NULL, NULL, 107, 3, '', '2022-02-01 20:19:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:19:03'),
(93, 93, NULL, NULL, 108, 3, '', '2022-02-01 20:19:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:19:23'),
(94, 94, NULL, NULL, 109, 3, '', '2022-02-01 20:19:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:19:57'),
(95, 95, NULL, NULL, 110, 3, '', '2022-02-01 20:20:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:20:10'),
(96, 96, NULL, NULL, 111, 5, '', '2022-02-01 20:20:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:20:39'),
(97, 97, NULL, 101, NULL, NULL, '', '2022-02-01 20:33:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:33:58'),
(98, 98, NULL, NULL, 113, 3, '', '2022-02-01 20:34:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:34:12'),
(99, 99, NULL, NULL, 114, 3, '', '2022-02-01 20:34:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:34:34'),
(100, 100, NULL, NULL, 115, 3, '', '2022-02-01 20:34:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:34:56'),
(101, 101, NULL, NULL, 116, 3, '', '2022-02-01 20:35:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-01 15:35:19'),
(102, 102, NULL, NULL, 117, 5, '', '2022-02-16 14:20:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 09:20:33'),
(103, 103, NULL, NULL, 118, 3, '', '2022-02-16 15:07:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 10:07:05'),
(104, 104, NULL, NULL, 119, 3, '', '2022-02-16 17:49:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 12:49:41'),
(105, 105, NULL, NULL, 120, 3, '', '2022-02-16 17:51:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 12:51:33'),
(106, 106, NULL, NULL, 121, 5, '', '2022-02-16 17:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 12:51:57'),
(107, 107, NULL, NULL, 122, 3, '', '2022-02-16 18:07:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:07:44'),
(108, 108, NULL, NULL, 123, 5, '', '2022-02-16 18:08:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:08:07'),
(109, 109, NULL, NULL, 124, 3, '', '2022-02-16 18:11:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:11:31'),
(110, 110, NULL, 114, NULL, NULL, '', '2022-02-16 18:11:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:11:58'),
(111, 111, NULL, NULL, 126, 3, '', '2022-02-16 18:12:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:12:26'),
(112, 112, NULL, 116, NULL, NULL, '', '2022-02-16 18:12:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:12:48'),
(113, 113, NULL, NULL, 128, 3, '', '2022-02-16 18:14:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:14:57'),
(114, 114, NULL, NULL, 129, 3, '', '2022-02-16 18:15:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:15:29'),
(115, 115, NULL, NULL, 130, 5, '', '2022-02-16 18:15:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 'no', 'no', '2022-02-16 13:15:54'),
(116, 116, NULL, NULL, 131, 3, '', '2022-02-16 19:27:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 14:27:48'),
(117, 117, NULL, NULL, 132, 5, '', '2022-02-16 19:28:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-16 14:28:06'),
(118, 118, NULL, NULL, 133, 3, '', '2022-02-17 15:43:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-17 10:43:33'),
(119, 119, NULL, NULL, 139, 3, '', '2022-02-17 16:10:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-17 11:10:41'),
(120, 120, NULL, 124, 200, 9, '', '2022-02-23 15:40:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-23 10:40:09'),
(121, 121, NULL, 125, 227, 3, '', '2022-02-25 16:57:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 'no', 'no', '2022-02-25 11:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` int(11) NOT NULL,
  `zoom_api_key` varchar(200) DEFAULT NULL,
  `zoom_api_secret` varchar(200) DEFAULT NULL,
  `use_doctor_api` int(1) DEFAULT 1,
  `use_zoom_app` int(1) DEFAULT 1,
  `opd_duration` int(11) DEFAULT NULL,
  `ipd_duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zoom_settings`
--

INSERT INTO `zoom_settings` (`id`, `zoom_api_key`, `zoom_api_secret`, `use_doctor_api`, `use_zoom_app`, `opd_duration`, `ipd_duration`, `created_at`) VALUES
(1, '', '', 0, 0, 0, 0, '2021-10-29 09:58:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance_call`
--
ALTER TABLE `ambulance_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor` (`doctor`),
  ADD KEY `case_reference_id` (`case_reference_id`);

--
-- Indexes for table `appointment_payment`
--
ALTER TABLE `appointment_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_id` (`charge_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `appointment_queue`
--
ALTER TABLE `appointment_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `global_shift_id` (`shift_id`);

--
-- Indexes for table `appoint_priority`
--
ALTER TABLE `appoint_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bed_type_id` (`bed_type_id`),
  ADD KEY `bed_group_id` (`bed_group_id`);

--
-- Indexes for table `bed_group`
--
ALTER TABLE `bed_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_report`
--
ALTER TABLE `birth_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `blood_bank_products`
--
ALTER TABLE `blood_bank_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_product_id` (`blood_bank_product_id`);

--
-- Indexes for table `blood_donor_cycle`
--
ALTER TABLE `blood_donor_cycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_product_id` (`blood_bank_product_id`),
  ADD KEY `blood_donor_id` (`blood_donor_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `blood_issue`
--
ALTER TABLE `blood_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `blood_donor_cycle_id` (`blood_donor_cycle_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_references`
--
ALTER TABLE `case_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_category_id` (`charge_category_id`),
  ADD KEY `tax_category_id` (`tax_category_id`),
  ADD KEY `charge_unit_id` (`charge_unit_id`);

--
-- Indexes for table `charge_categories`
--
ALTER TABLE `charge_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_type_id` (`charge_type_id`);

--
-- Indexes for table `charge_type_master`
--
ALTER TABLE `charge_type_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charge_type_module`
--
ALTER TABLE `charge_type_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_type_master_id` (`charge_type_master_id`);

--
-- Indexes for table `charge_units`
--
ALTER TABLE `charge_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_patient_id` (`create_patient_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_type_id` (`complaint_type_id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `visit_details_id` (`visit_details_id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `conferences_history`
--
ALTER TABLE `conferences_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_id` (`conference_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `conference_staff`
--
ALTER TABLE `conference_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_id` (`conference_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `consultant_register`
--
ALTER TABLE `consultant_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `cons_doctor` (`cons_doctor`);

--
-- Indexes for table `consult_charges`
--
ALTER TABLE `consult_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor` (`doctor`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `death_report`
--
ALTER TABLE `death_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discharge_card`
--
ALTER TABLE `discharge_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `opd_details_id` (`opd_details_id`),
  ADD KEY `ipd_details_id` (`ipd_details_id`),
  ADD KEY `discharge_by` (`discharge_by`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_absent`
--
ALTER TABLE `doctor_absent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `doctor_global_shift`
--
ALTER TABLE `doctor_global_shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `global_shift_id` (`global_shift_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `doctor_shift`
--
ALTER TABLE `doctor_shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `global_shift_id` (`global_shift_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `dose_duration`
--
ALTER TABLE `dose_duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dose_interval`
--
ALTER TABLE `dose_interval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exp_head_id` (`exp_head_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finding`
--
ALTER TABLE `finding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finding_category_id` (`finding_category_id`);

--
-- Indexes for table `finding_category`
--
ALTER TABLE `finding_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_shift`
--
ALTER TABLE `global_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inc_head_id` (`inc_head_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_details`
--
ALTER TABLE `ipd_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `cons_doctor` (`cons_doctor`),
  ADD KEY `bed_group_id` (`bed_group_id`);

--
-- Indexes for table `ipd_doctors`
--
ALTER TABLE `ipd_doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `consult_doctor` (`consult_doctor`);

--
-- Indexes for table `ipd_prescription_basic`
--
ALTER TABLE `ipd_prescription_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `visit_details_id` (`visit_details_id`);

--
-- Indexes for table `ipd_prescription_details`
--
ALTER TABLE `ipd_prescription_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basic_id` (`basic_id`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `ipd_prescription_test`
--
ALTER TABLE `ipd_prescription_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipd_prescription_basic_id` (`ipd_prescription_basic_id`),
  ADD KEY `pathology_id` (`pathology_id`),
  ADD KEY `radiology_id` (`radiology_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `issue_to` (`issue_to`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `medication_report`
--
ALTER TABLE `medication_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `pharmacy_id` (`pharmacy_id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `medicine_dosage_id` (`medicine_dosage_id`);

--
-- Indexes for table `medicine_bad_stock`
--
ALTER TABLE `medicine_bad_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `medicine_batch_details`
--
ALTER TABLE `medicine_batch_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_bill_basic_id` (`supplier_bill_basic_id`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_dosage`
--
ALTER TABLE `medicine_dosage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_category_id` (`medicine_category_id`),
  ADD KEY `charge_units_id` (`charge_units_id`);

--
-- Indexes for table `medicine_supplier`
--
ALTER TABLE `medicine_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_note`
--
ALTER TABLE `nurse_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `nurse_notes_comment`
--
ALTER TABLE `nurse_notes_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nurse_note_id` (`nurse_note_id`),
  ADD KEY `comment_staffid` (`comment_staffid`);

--
-- Indexes for table `opd_details`
--
ALTER TABLE `opd_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `operation_category`
--
ALTER TABLE `operation_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_theatre`
--
ALTER TABLE `operation_theatre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opd_details_id` (`opd_details_id`),
  ADD KEY `ipd_details_id` (`ipd_details_id`),
  ADD KEY `consultant_doctor` (`consultant_doctor`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `operation_id` (`operation_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisations_charges`
--
ALTER TABLE `organisations_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `pathology`
--
ALTER TABLE `pathology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pathology_category_id` (`pathology_category_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `pathology_billing`
--
ALTER TABLE `pathology_billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `pathology_category`
--
ALTER TABLE `pathology_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_parameter`
--
ALTER TABLE `pathology_parameter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `pathology_parameterdetails`
--
ALTER TABLE `pathology_parameterdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pathology_id` (`pathology_id`),
  ADD KEY `pathology_parameter_id` (`pathology_parameter_id`);

--
-- Indexes for table `pathology_report`
--
ALTER TABLE `pathology_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `pathology_bill_id` (`pathology_bill_id`),
  ADD KEY `pathology_id` (`pathology_id`),
  ADD KEY `collection_specialist` (`collection_specialist`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `pathology_report_parameterdetails`
--
ALTER TABLE `pathology_report_parameterdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pathology_report_id` (`pathology_report_id`),
  ADD KEY `pathology_parameterdetail_id` (`pathology_parameterdetail_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_product_id` (`blood_bank_product_id`);

--
-- Indexes for table `patient_bed_history`
--
ALTER TABLE `patient_bed_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `bed_group_id` (`bed_group_id`),
  ADD KEY `bed_id` (`bed_id`);

--
-- Indexes for table `patient_charges`
--
ALTER TABLE `patient_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opd_id` (`opd_id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `patient_id_card`
--
ALTER TABLE `patient_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `generated_users_id` (`generated_users_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `staff_payslip_id` (`staff_payslip_id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_patient`
--
ALTER TABLE `permission_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_category_id` (`medicine_category_id`);

--
-- Indexes for table `pharmacy_bill_basic`
--
ALTER TABLE `pharmacy_bill_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `ipd_prescription_basic_id` (`ipd_prescription_basic_id`);

--
-- Indexes for table `pharmacy_bill_detail`
--
ALTER TABLE `pharmacy_bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_bill_basic_id` (`pharmacy_bill_basic_id`),
  ADD KEY `medicine_batch_detail_id` (`medicine_batch_detail_id`);

--
-- Indexes for table `prefixes`
--
ALTER TABLE `prefixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_setting`
--
ALTER TABLE `print_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio`
--
ALTER TABLE `radio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `radiology_billing`
--
ALTER TABLE `radiology_billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `radiology_parameter`
--
ALTER TABLE `radiology_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_parameterdetails`
--
ALTER TABLE `radiology_parameterdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radiology_id` (`radiology_id`),
  ADD KEY `radiology_parameter_id` (`radiology_parameter_id`);

--
-- Indexes for table `radiology_report`
--
ALTER TABLE `radiology_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radiology_id` (`radiology_id`),
  ADD KEY `radiology_bill_id` (`radiology_bill_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `collection_specialist` (`collection_specialist`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `radiology_report_parameterdetails`
--
ALTER TABLE `radiology_report_parameterdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radiology_report_id` (`radiology_report_id`),
  ADD KEY `radiology_parameterdetail_id` (`radiology_parameterdetail_id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `read_systemnotification`
--
ALTER TABLE `read_systemnotification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `referral_category`
--
ALTER TABLE `referral_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_commission`
--
ALTER TABLE `referral_commission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_category_id` (`referral_category_id`),
  ADD KEY `referral_type_id` (`referral_type_id`);

--
-- Indexes for table `referral_payment`
--
ALTER TABLE `referral_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `referral_person_id` (`referral_person_id`),
  ADD KEY `referral_type` (`referral_type`);

--
-- Indexes for table `referral_person`
--
ALTER TABLE `referral_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_category` (`category_id`);

--
-- Indexes for table `referral_person_commission`
--
ALTER TABLE `referral_person_commission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `referral_person_id` (`referral_person_id`),
  ADD KEY `referral_type_id` (`referral_type_id`);

--
-- Indexes for table `referral_type`
--
ALTER TABLE `referral_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `shift_details`
--
ALTER TABLE `shift_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `staff_attendance_type_id` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `applied_by` (`applied_by`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `supplier_bill_basic`
--
ALTER TABLE `supplier_bill_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `received_by` (`received_by`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms_classification`
--
ALTER TABLE `symptoms_classification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notification_setting`
--
ALTER TABLE `system_notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `case_reference_id` (`case_reference_id`),
  ADD KEY `opd_id` (`opd_id`),
  ADD KEY `ipd_id` (`ipd_id`),
  ADD KEY `pharmacy_bill_basic_id` (`pharmacy_bill_basic_id`),
  ADD KEY `pathology_billing_id` (`pathology_billing_id`),
  ADD KEY `radiology_billing_id` (`radiology_billing_id`),
  ADD KEY `blood_donor_cycle_id` (`blood_donor_cycle_id`),
  ADD KEY `blood_issue_id` (`blood_issue_id`),
  ADD KEY `ambulance_call_id` (`ambulance_call_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_details`
--
ALTER TABLE `visit_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `opd_details_id` (`opd_details_id`),
  ADD KEY `organisation_id` (`organisation_id`),
  ADD KEY `cons_doctor` (`cons_doctor`),
  ADD KEY `patient_charge_id` (`patient_charge_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance_call`
--
ALTER TABLE `ambulance_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `appointment_payment`
--
ALTER TABLE `appointment_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `appointment_queue`
--
ALTER TABLE `appointment_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoint_priority`
--
ALTER TABLE `appoint_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bed_group`
--
ALTER TABLE `bed_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `birth_report`
--
ALTER TABLE `birth_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_bank_products`
--
ALTER TABLE `blood_bank_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor_cycle`
--
ALTER TABLE `blood_donor_cycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_issue`
--
ALTER TABLE `blood_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `case_references`
--
ALTER TABLE `case_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `charge_categories`
--
ALTER TABLE `charge_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `charge_type_master`
--
ALTER TABLE `charge_type_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `charge_type_module`
--
ALTER TABLE `charge_type_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `charge_units`
--
ALTER TABLE `charge_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences_history`
--
ALTER TABLE `conferences_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conference_staff`
--
ALTER TABLE `conference_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultant_register`
--
ALTER TABLE `consultant_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consult_charges`
--
ALTER TABLE `consult_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `death_report`
--
ALTER TABLE `death_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discharge_card`
--
ALTER TABLE `discharge_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_absent`
--
ALTER TABLE `doctor_absent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_global_shift`
--
ALTER TABLE `doctor_global_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctor_shift`
--
ALTER TABLE `doctor_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dose_duration`
--
ALTER TABLE `dose_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dose_interval`
--
ALTER TABLE `dose_interval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finding`
--
ALTER TABLE `finding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finding_category`
--
ALTER TABLE `finding_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_shift`
--
ALTER TABLE `global_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ipd_details`
--
ALTER TABLE `ipd_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ipd_doctors`
--
ALTER TABLE `ipd_doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ipd_prescription_basic`
--
ALTER TABLE `ipd_prescription_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ipd_prescription_details`
--
ALTER TABLE `ipd_prescription_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ipd_prescription_test`
--
ALTER TABLE `ipd_prescription_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `medication_report`
--
ALTER TABLE `medication_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_bad_stock`
--
ALTER TABLE `medicine_bad_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_batch_details`
--
ALTER TABLE `medicine_batch_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_dosage`
--
ALTER TABLE `medicine_dosage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplier`
--
ALTER TABLE `medicine_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nurse_note`
--
ALTER TABLE `nurse_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nurse_notes_comment`
--
ALTER TABLE `nurse_notes_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opd_details`
--
ALTER TABLE `opd_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operation_category`
--
ALTER TABLE `operation_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operation_theatre`
--
ALTER TABLE `operation_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisations_charges`
--
ALTER TABLE `organisations_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology`
--
ALTER TABLE `pathology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology_billing`
--
ALTER TABLE `pathology_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology_category`
--
ALTER TABLE `pathology_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathology_parameter`
--
ALTER TABLE `pathology_parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathology_parameterdetails`
--
ALTER TABLE `pathology_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology_report`
--
ALTER TABLE `pathology_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology_report_parameterdetails`
--
ALTER TABLE `pathology_report_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `patient_bed_history`
--
ALTER TABLE `patient_bed_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_charges`
--
ALTER TABLE `patient_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `patient_id_card`
--
ALTER TABLE `patient_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `permission_patient`
--
ALTER TABLE `permission_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_bill_basic`
--
ALTER TABLE `pharmacy_bill_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_bill_detail`
--
ALTER TABLE `pharmacy_bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefixes`
--
ALTER TABLE `prefixes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `print_setting`
--
ALTER TABLE `print_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `radio`
--
ALTER TABLE `radio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `radiology_billing`
--
ALTER TABLE `radiology_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `radiology_parameter`
--
ALTER TABLE `radiology_parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiology_parameterdetails`
--
ALTER TABLE `radiology_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `radiology_report`
--
ALTER TABLE `radiology_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `radiology_report_parameterdetails`
--
ALTER TABLE `radiology_report_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_systemnotification`
--
ALTER TABLE `read_systemnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `referral_category`
--
ALTER TABLE `referral_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_commission`
--
ALTER TABLE `referral_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_payment`
--
ALTER TABLE `referral_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_person`
--
ALTER TABLE `referral_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_person_commission`
--
ALTER TABLE `referral_person_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_type`
--
ALTER TABLE `referral_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2309;

--
-- AUTO_INCREMENT for table `sch_settings`
--
ALTER TABLE `sch_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_details`
--
ALTER TABLE `shift_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_bill_basic`
--
ALTER TABLE `supplier_bill_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `symptoms_classification`
--
ALTER TABLE `symptoms_classification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;

--
-- AUTO_INCREMENT for table `system_notification_setting`
--
ALTER TABLE `system_notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_details`
--
ALTER TABLE `visit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambulance_call`
--
ALTER TABLE `ambulance_call`
  ADD CONSTRAINT `ambulance_call_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ambulance_call_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ambulance_call_ibfk_3` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ambulance_call_ibfk_4` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ambulance_call_ibfk_5` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_payment`
--
ALTER TABLE `appointment_payment`
  ADD CONSTRAINT `appointment_payment_ibfk_2` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_payment_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_queue`
--
ALTER TABLE `appointment_queue`
  ADD CONSTRAINT `appointment_queue_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_queue_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_queue_ibfk_3` FOREIGN KEY (`shift_id`) REFERENCES `doctor_shift` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bed`
--
ALTER TABLE `bed`
  ADD CONSTRAINT `bed_ibfk_1` FOREIGN KEY (`bed_type_id`) REFERENCES `bed_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bed_ibfk_2` FOREIGN KEY (`bed_group_id`) REFERENCES `bed_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `birth_report`
--
ALTER TABLE `birth_report`
  ADD CONSTRAINT `birth_report_ibfk_1` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `birth_report_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD CONSTRAINT `blood_donor_ibfk_1` FOREIGN KEY (`blood_bank_product_id`) REFERENCES `blood_bank_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blood_donor_cycle`
--
ALTER TABLE `blood_donor_cycle`
  ADD CONSTRAINT `blood_donor_cycle_ibfk_1` FOREIGN KEY (`blood_bank_product_id`) REFERENCES `blood_bank_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blood_donor_cycle_ibfk_2` FOREIGN KEY (`blood_donor_id`) REFERENCES `blood_donor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blood_donor_cycle_ibfk_3` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blood_issue`
--
ALTER TABLE `blood_issue`
  ADD CONSTRAINT `blood_issue_ibfk_1` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blood_issue_ibfk_2` FOREIGN KEY (`blood_donor_cycle_id`) REFERENCES `blood_donor_cycle` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blood_issue_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blood_issue_ibfk_4` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_ibfk_1` FOREIGN KEY (`charge_category_id`) REFERENCES `charge_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `charges_ibfk_2` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `charges_ibfk_3` FOREIGN KEY (`charge_unit_id`) REFERENCES `charge_units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `charge_categories`
--
ALTER TABLE `charge_categories`
  ADD CONSTRAINT `charge_categories_ibfk_1` FOREIGN KEY (`charge_type_id`) REFERENCES `charge_type_master` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `charge_type_module`
--
ALTER TABLE `charge_type_module`
  ADD CONSTRAINT `charge_type_module_ibfk_1` FOREIGN KEY (`charge_type_master_id`) REFERENCES `charge_type_master` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`complaint_type_id`) REFERENCES `complaint_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conferences`
--
ALTER TABLE `conferences`
  ADD CONSTRAINT `conferences_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_ibfk_3` FOREIGN KEY (`visit_details_id`) REFERENCES `visit_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_ibfk_4` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_ibfk_5` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conferences_history`
--
ALTER TABLE `conferences_history`
  ADD CONSTRAINT `conferences_history_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_history_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_history_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conference_staff`
--
ALTER TABLE `conference_staff`
  ADD CONSTRAINT `conference_staff_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conference_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultant_register`
--
ALTER TABLE `consultant_register`
  ADD CONSTRAINT `consultant_register_ibfk_1` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultant_register_ibfk_2` FOREIGN KEY (`cons_doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consult_charges`
--
ALTER TABLE `consult_charges`
  ADD CONSTRAINT `consult_charges_ibfk_1` FOREIGN KEY (`doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `death_report`
--
ALTER TABLE `death_report`
  ADD CONSTRAINT `death_report_ibfk_1` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `death_report_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discharge_card`
--
ALTER TABLE `discharge_card`
  ADD CONSTRAINT `discharge_card_ibfk_1` FOREIGN KEY (`ipd_details_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discharge_card_ibfk_2` FOREIGN KEY (`discharge_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discharge_card_ibfk_3` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discharge_card_ibfk_4` FOREIGN KEY (`opd_details_id`) REFERENCES `opd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discharge_card_ibfk_5` FOREIGN KEY (`ipd_details_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discharge_card_ibfk_6` FOREIGN KEY (`discharge_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_absent`
--
ALTER TABLE `doctor_absent`
  ADD CONSTRAINT `doctor_absent_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_global_shift`
--
ALTER TABLE `doctor_global_shift`
  ADD CONSTRAINT `doctor_global_shift_ibfk_1` FOREIGN KEY (`global_shift_id`) REFERENCES `global_shift` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_global_shift_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_shift`
--
ALTER TABLE `doctor_shift`
  ADD CONSTRAINT `doctor_shift_ibfk_1` FOREIGN KEY (`global_shift_id`) REFERENCES `global_shift` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_shift_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`exp_head_id`) REFERENCES `expense_head` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `finding`
--
ALTER TABLE `finding`
  ADD CONSTRAINT `finding_ibfk_1` FOREIGN KEY (`finding_category_id`) REFERENCES `finding_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`inc_head_id`) REFERENCES `income_head` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `income_ibfk_2` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ipd_details`
--
ALTER TABLE `ipd_details`
  ADD CONSTRAINT `ipd_details_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_details_ibfk_2` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_details_ibfk_3` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_details_ibfk_4` FOREIGN KEY (`cons_doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_details_ibfk_5` FOREIGN KEY (`bed_group_id`) REFERENCES `bed_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ipd_doctors`
--
ALTER TABLE `ipd_doctors`
  ADD CONSTRAINT `ipd_doctors_ibfk_1` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_doctors_ibfk_2` FOREIGN KEY (`consult_doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ipd_prescription_basic`
--
ALTER TABLE `ipd_prescription_basic`
  ADD CONSTRAINT `ipd_prescription_basic_ibfk_1` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_prescription_basic_ibfk_2` FOREIGN KEY (`visit_details_id`) REFERENCES `visit_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ipd_prescription_details`
--
ALTER TABLE `ipd_prescription_details`
  ADD CONSTRAINT `ipd_prescription_details_ibfk_1` FOREIGN KEY (`basic_id`) REFERENCES `ipd_prescription_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_prescription_details_ibfk_2` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ipd_prescription_test`
--
ALTER TABLE `ipd_prescription_test`
  ADD CONSTRAINT `ipd_prescription_test_ibfk_1` FOREIGN KEY (`ipd_prescription_basic_id`) REFERENCES `ipd_prescription_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_prescription_test_ibfk_2` FOREIGN KEY (`pathology_id`) REFERENCES `pathology` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ipd_prescription_test_ibfk_3` FOREIGN KEY (`radiology_id`) REFERENCES `radio` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_3` FOREIGN KEY (`issue_to`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medication_report`
--
ALTER TABLE `medication_report`
  ADD CONSTRAINT `medication_report_ibfk_1` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medication_report_ibfk_2` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medication_report_ibfk_3` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medication_report_ibfk_4` FOREIGN KEY (`medicine_dosage_id`) REFERENCES `medicine_dosage` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_bad_stock`
--
ALTER TABLE `medicine_bad_stock`
  ADD CONSTRAINT `medicine_bad_stock_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_batch_details`
--
ALTER TABLE `medicine_batch_details`
  ADD CONSTRAINT `medicine_batch_details_ibfk_1` FOREIGN KEY (`supplier_bill_basic_id`) REFERENCES `supplier_bill_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicine_batch_details_ibfk_2` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_dosage`
--
ALTER TABLE `medicine_dosage`
  ADD CONSTRAINT `medicine_dosage_ibfk_1` FOREIGN KEY (`medicine_category_id`) REFERENCES `medicine_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicine_dosage_ibfk_2` FOREIGN KEY (`charge_units_id`) REFERENCES `charge_units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nurse_note`
--
ALTER TABLE `nurse_note`
  ADD CONSTRAINT `nurse_note_ibfk_1` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurse_note_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nurse_notes_comment`
--
ALTER TABLE `nurse_notes_comment`
  ADD CONSTRAINT `nurse_notes_comment_ibfk_1` FOREIGN KEY (`nurse_note_id`) REFERENCES `nurse_note` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurse_notes_comment_ibfk_2` FOREIGN KEY (`comment_staffid`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opd_details`
--
ALTER TABLE `opd_details`
  ADD CONSTRAINT `opd_details_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opd_details_ibfk_2` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opd_details_ibfk_3` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `operation_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `operation_theatre`
--
ALTER TABLE `operation_theatre`
  ADD CONSTRAINT `operation_theatre_ibfk_1` FOREIGN KEY (`opd_details_id`) REFERENCES `opd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operation_theatre_ibfk_2` FOREIGN KEY (`ipd_details_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operation_theatre_ibfk_3` FOREIGN KEY (`consultant_doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operation_theatre_ibfk_4` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operation_theatre_ibfk_5` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `organisations_charges`
--
ALTER TABLE `organisations_charges`
  ADD CONSTRAINT `organisations_charges_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `organisations_charges_ibfk_2` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pathology`
--
ALTER TABLE `pathology`
  ADD CONSTRAINT `pathology_ibfk_1` FOREIGN KEY (`pathology_category_id`) REFERENCES `pathology_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_ibfk_2` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pathology_billing`
--
ALTER TABLE `pathology_billing`
  ADD CONSTRAINT `pathology_billing_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_billing_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_billing_ibfk_3` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_billing_ibfk_4` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_billing_ibfk_5` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pathology_parameter`
--
ALTER TABLE `pathology_parameter`
  ADD CONSTRAINT `pathology_parameter_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `unit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pathology_parameterdetails`
--
ALTER TABLE `pathology_parameterdetails`
  ADD CONSTRAINT `pathology_parameterdetails_ibfk_1` FOREIGN KEY (`pathology_id`) REFERENCES `pathology` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_parameterdetails_ibfk_2` FOREIGN KEY (`pathology_parameter_id`) REFERENCES `pathology_parameter` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pathology_report`
--
ALTER TABLE `pathology_report`
  ADD CONSTRAINT `pathology_report_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_report_ibfk_2` FOREIGN KEY (`pathology_bill_id`) REFERENCES `pathology_billing` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_report_ibfk_3` FOREIGN KEY (`pathology_id`) REFERENCES `pathology` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_report_ibfk_4` FOREIGN KEY (`collection_specialist`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_report_ibfk_5` FOREIGN KEY (`approved_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pathology_report_parameterdetails`
--
ALTER TABLE `pathology_report_parameterdetails`
  ADD CONSTRAINT `pathology_report_parameterdetails_ibfk_1` FOREIGN KEY (`pathology_report_id`) REFERENCES `pathology_report` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pathology_report_parameterdetails_ibfk_2` FOREIGN KEY (`pathology_parameterdetail_id`) REFERENCES `pathology_parameterdetails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`blood_bank_product_id`) REFERENCES `blood_bank_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_bed_history`
--
ALTER TABLE `patient_bed_history`
  ADD CONSTRAINT `patient_bed_history_ibfk_1` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_bed_history_ibfk_2` FOREIGN KEY (`bed_group_id`) REFERENCES `bed_group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_bed_history_ibfk_3` FOREIGN KEY (`bed_id`) REFERENCES `bed` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_charges`
--
ALTER TABLE `patient_charges`
  ADD CONSTRAINT `patient_charges_ibfk_1` FOREIGN KEY (`opd_id`) REFERENCES `opd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_charges_ibfk_2` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_charges_ibfk_3` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  ADD CONSTRAINT `patient_timeline_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD CONSTRAINT `payslip_allowance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslip_allowance_ibfk_2` FOREIGN KEY (`staff_payslip_id`) REFERENCES `staff_payslip` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `pharmacy_ibfk_1` FOREIGN KEY (`medicine_category_id`) REFERENCES `medicine_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy_bill_basic`
--
ALTER TABLE `pharmacy_bill_basic`
  ADD CONSTRAINT `pharmacy_bill_basic_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pharmacy_bill_basic_ibfk_2` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pharmacy_bill_basic_ibfk_3` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pharmacy_bill_basic_ibfk_4` FOREIGN KEY (`ipd_prescription_basic_id`) REFERENCES `ipd_prescription_basic` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy_bill_detail`
--
ALTER TABLE `pharmacy_bill_detail`
  ADD CONSTRAINT `pharmacy_bill_detail_ibfk_1` FOREIGN KEY (`pharmacy_bill_basic_id`) REFERENCES `pharmacy_bill_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pharmacy_bill_detail_ibfk_2` FOREIGN KEY (`medicine_batch_detail_id`) REFERENCES `medicine_batch_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `radio`
--
ALTER TABLE `radio`
  ADD CONSTRAINT `radio_ibfk_1` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `radiology_billing`
--
ALTER TABLE `radiology_billing`
  ADD CONSTRAINT `radiology_billing_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_billing_ibfk_2` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_billing_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_billing_ibfk_4` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_billing_ibfk_5` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `radiology_parameterdetails`
--
ALTER TABLE `radiology_parameterdetails`
  ADD CONSTRAINT `radiology_parameterdetails_ibfk_1` FOREIGN KEY (`radiology_id`) REFERENCES `radio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_parameterdetails_ibfk_2` FOREIGN KEY (`radiology_parameter_id`) REFERENCES `radiology_parameter` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `radiology_report`
--
ALTER TABLE `radiology_report`
  ADD CONSTRAINT `radiology_report_ibfk_1` FOREIGN KEY (`radiology_id`) REFERENCES `radio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_ibfk_2` FOREIGN KEY (`radiology_bill_id`) REFERENCES `radiology_billing` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_ibfk_4` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_ibfk_5` FOREIGN KEY (`collection_specialist`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_ibfk_6` FOREIGN KEY (`approved_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `radiology_report_parameterdetails`
--
ALTER TABLE `radiology_report_parameterdetails`
  ADD CONSTRAINT `radiology_report_parameterdetails_ibfk_1` FOREIGN KEY (`radiology_report_id`) REFERENCES `radiology_report` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `radiology_report_parameterdetails_ibfk_2` FOREIGN KEY (`radiology_parameterdetail_id`) REFERENCES `radiology_parameterdetails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD CONSTRAINT `read_notification_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `read_systemnotification`
--
ALTER TABLE `read_systemnotification`
  ADD CONSTRAINT `read_systemnotification_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `system_notification` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_commission`
--
ALTER TABLE `referral_commission`
  ADD CONSTRAINT `referral_commission_ibfk_1` FOREIGN KEY (`referral_category_id`) REFERENCES `referral_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referral_commission_ibfk_2` FOREIGN KEY (`referral_type_id`) REFERENCES `referral_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_payment`
--
ALTER TABLE `referral_payment`
  ADD CONSTRAINT `referral_payment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referral_payment_ibfk_2` FOREIGN KEY (`referral_person_id`) REFERENCES `referral_person` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referral_payment_ibfk_3` FOREIGN KEY (`referral_type`) REFERENCES `referral_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_person`
--
ALTER TABLE `referral_person`
  ADD CONSTRAINT `referral_person_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `referral_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_person_commission`
--
ALTER TABLE `referral_person_commission`
  ADD CONSTRAINT `referral_person_commission_ibfk_1` FOREIGN KEY (`referral_person_id`) REFERENCES `referral_person` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referral_person_commission_ibfk_2` FOREIGN KEY (`referral_type_id`) REFERENCES `referral_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD CONSTRAINT `send_notification_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shift_details`
--
ALTER TABLE `shift_details`
  ADD CONSTRAINT `shift_details_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shift_details_ibfk_2` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD CONSTRAINT `staff_attendance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_attendance_ibfk_2` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `staff_leave_details_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_details_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD CONSTRAINT `staff_leave_request_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_3` FOREIGN KEY (`applied_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD CONSTRAINT `staff_payslip_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_payslip_ibfk_2` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD CONSTRAINT `staff_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_roles_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD CONSTRAINT `staff_timeline_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplier_bill_basic`
--
ALTER TABLE `supplier_bill_basic`
  ADD CONSTRAINT `supplier_bill_basic_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `medicine_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supplier_bill_basic_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_10` FOREIGN KEY (`ambulance_call_id`) REFERENCES `ambulance_call` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_11` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`case_reference_id`) REFERENCES `case_references` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`opd_id`) REFERENCES `opd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`ipd_id`) REFERENCES `ipd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`pharmacy_bill_basic_id`) REFERENCES `pharmacy_bill_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`pathology_billing_id`) REFERENCES `pathology_billing` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_7` FOREIGN KEY (`radiology_billing_id`) REFERENCES `radiology_billing` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_8` FOREIGN KEY (`blood_donor_cycle_id`) REFERENCES `blood_donor_cycle` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_9` FOREIGN KEY (`blood_issue_id`) REFERENCES `blood_issue` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visit_details`
--
ALTER TABLE `visit_details`
  ADD CONSTRAINT `visit_details_ibfk_1` FOREIGN KEY (`generated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_details_ibfk_2` FOREIGN KEY (`opd_details_id`) REFERENCES `opd_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_details_ibfk_3` FOREIGN KEY (`organisation_id`) REFERENCES `organisation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_details_ibfk_4` FOREIGN KEY (`cons_doctor`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_details_ibfk_5` FOREIGN KEY (`patient_charge_id`) REFERENCES `patient_charges` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `visit_details_ibfk_6` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
