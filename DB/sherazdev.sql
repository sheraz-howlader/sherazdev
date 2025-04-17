-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2025 at 01:56 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sherazdev_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_mes`
--

CREATE TABLE `about_mes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_mes`
--

INSERT INTO `about_mes` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', 'Welcome to sherazdev - Your trusted partner in innovative web solutions. Currently, I work as a Full Stack Developer at FLICK MEDIA LTD, I specialize in JavaScript, Vue.js, PHP, and Laravel to create dynamic web applications.', '2024-01-28 09:34:13', '2024-01-31 04:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institute_name` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `session_year` varchar(255) NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `institute_name`, `group`, `department`, `description`, `session_year`, `result`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kabi Nazrul Govt. College, Dhaka', 'Arts', 'Political Science', NULL, '2022 - 2023', NULL, 1, '2024-02-09 14:55:23', '2024-02-10 02:57:27'),
(2, 'Kabi Nazrul Govt. College, Dhaka', 'Bachelor of Arts', 'Political Science', NULL, '2016-2017', '2.75', 1, '2024-02-10 02:53:03', '2024-02-10 02:55:53'),
(3, 'Kachipara Abdur Rasid Mia Degree College, Barishal', 'Business Studies', 'Accounting', NULL, '2013-2014', '3.75', 1, '2024-02-10 02:55:40', '2024-02-10 02:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` longtext DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `is_present` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company_name`, `address`, `designation`, `description`, `start`, `end`, `is_present`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flick Media Ltd.', 'H - 388, R - 03, Phaze - 2, Sonadanga, Khulna - 9100', 'Full Stack Developer', NULL, '2023-03-01', NULL, 1, 1, '2024-02-09 14:56:53', '2024-02-10 02:58:32'),
(2, 'Octavia Digital', 'House - 17, Road - 1, Block - G, Banasree, Dhaka - 1219', 'Backend Developer', NULL, '2020-10-01', '2022-12-31', NULL, 1, '2024-02-10 02:59:58', '2024-02-10 03:00:06'),
(3, 'Reflecto-Pro', 'House - 25, Road - 1, Block - F, Banasree, Dhaka - 1219', 'Frontend Developer', NULL, '2019-02-01', '2020-07-31', NULL, 1, '2024-02-10 03:01:07', '2024-02-10 03:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_07_190741_create_settings_table', 1),
(7, '2024_01_07_195644_create_about_mes_table', 1),
(8, '2024_01_07_203456_create_services_table', 1),
(9, '2024_01_07_204324_create_portfolios_table', 1),
(10, '2024_01_07_204325_create_portfolio_images_table', 1),
(11, '2024_01_26_202541_create_sessions_table', 1),
(13, '2024_02_02_143346_create_visitors_table', 2),
(14, '2024_02_09_183612_create_education_table', 3),
(15, '2024_02_09_192959_create_experiences_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `industry_name` varchar(255) DEFAULT NULL,
  `technologies` varchar(255) DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `category_id`, `title`, `thumbnail`, `description`, `client_name`, `industry_name`, `technologies`, `delivery_date`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Doctor All Khulna', 'frontend/images/projects/6800af26ca5c5.jpg', 'This is a small and simple website to find any type of doctor in Khulna division.', 'Arafat Hossain', 'Personal Business', 'Vanila JS, AJAX, PHP, Laravel', '2023-03-31', 'https://doctorallkhulna.com', '2024-01-28 09:34:13', '2025-04-17 01:35:02'),
(2, 1, 'FnM It', 'frontend/images/projects/6800af9dbc4f3.jpg', 'It is an e-commerce based website. There are two types of products physical and digital products. There are also user forums and micro work. So, any customer can earn money from this website. Also there have affiliate programm.', 'Fahim Ashraf', 'FnM It', 'Vanila JS, AJAX, PHP, Laravel', '2024-04-30', 'https://fnmit.com', '2024-01-28 09:34:13', '2025-04-17 01:37:01'),
(3, 1, 'Genius Class', 'frontend/images/projects/6800ae132c4f2.jpg', 'This is LMS software', 'Samson Chisi', 'Genius Class', 'Vanila JS, Vue.js, PHP, Laravel, MySQL', NULL, 'https://www.geniusclass.co.uk', '2024-07-04 01:45:12', '2025-04-17 01:30:27'),
(4, 1, 'Apasen HRM', 'frontend/images/projects/6800ac314e403.jpg', 'This is HRM software', 'Ather Khan', 'Apasen HRM', 'JS, Laravel, MySQL', '2024-03-30', 'https://apasenhrm.co.uk', '2024-07-04 01:45:12', '2025-04-17 01:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `image`, `created_at`, `updated_at`) VALUES
(9, 1, 'frontend/images/project_images/6800ae50ea1f3.jpg', '2025-04-17 01:31:28', '2025-04-17 01:31:28'),
(10, 1, 'frontend/images/project_images/6800aed687c57.jpg', '2025-04-17 01:33:42', '2025-04-17 01:33:42'),
(11, 2, 'frontend/images/project_images/6800afad6f90c.jpg', '2025-04-17 01:37:17', '2025-04-17 01:37:17'),
(12, 2, 'frontend/images/project_images/6800afad6fcfd.jpg', '2025-04-17 01:37:17', '2025-04-17 01:37:17'),
(13, 4, 'frontend/images/project_images/6800b12dd888f.jpg', '2025-04-17 01:43:41', '2025-04-17 01:43:41'),
(14, 3, 'frontend/images/project_images/6800b151adb66.jpg', '2025-04-17 01:44:17', '2025-04-17 01:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(255) DEFAULT 'fas fa-desktop',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Website Design & Development', 'Unlock the potential of an impressive and functional website with sherazdev. Our website design and development services are expertly made creative and user-friendly.\r\nAre you ready to raise your online business?\r\nLet\'s build your unique online identity together!', 'far fa-file-code', '2024-01-28 09:34:13', '2024-01-30 05:48:57'),
(2, 'Convert website into Android App', 'Grow your business with an android app developed by sherazdev. Build Android apps with user-friendly interface and powerful functionality for your business with our experienced developer team, we bring your ideas to the Android platform.\r\nMake your vision a reality — let\'s build your Android app today!', 'fas fa-mobile-alt', '2024-01-28 09:34:13', '2024-01-30 11:55:36'),
(3, 'ERP & CRM Software', 'We build ERP & CRM Software for your company to grow up your business.', 'fas fa-chart-bar', '2024-01-30 05:56:35', '2024-01-30 11:55:05'),
(4, 'POS Software', 'We build P.O.S Software for your company to boost your business & optimize your valuable time.', 'fas fa-desktop', '2024-01-30 05:56:35', '2024-01-30 05:56:35'),
(5, 'E-Commerce Website', 'We build eCommerce websites for businesses and create your new online identity.', 'fab fa-etsy', '2024-01-30 05:56:35', '2024-01-30 05:56:35'),
(6, 'School Management Software', 'School Management Software', 'fas fa-school', '2024-01-30 05:56:35', '2024-01-30 05:56:35'),
(7, 'Diagnostic Management Software', 'We build Diagnostic Management Software for your diagnostic center. So that, You can easily generate any kind of report for patient & doctor.', 'fas fa-user-md', '2024-01-30 05:56:35', '2024-01-30 06:34:38'),
(8, 'Inventory Software', 'We build Inventory  Software for your company to boost your business & optimize your valuable time.', 'fas fa-desktop', '2024-01-30 11:53:48', '2024-01-30 11:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_to` varchar(255) DEFAULT NULL,
  `mail_from` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `hero_background` varchar(255) DEFAULT NULL,
  `hero_type_writer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `mail_to`, `mail_from`, `icon`, `meta_title`, `meta_description`, `meta_keyword`, `hero_background`, `hero_type_writer`, `created_at`, `updated_at`) VALUES
(1, 'mdsherazhowlader@gmail.com', NULL, NULL, 'Full Stack Developer in Bangladesh', 'Sheraz Howlader, a skilled Full Stack Developer Bangladesh, offering expertise in web development and innovative solutions.', 'Full Stack Developer Bangladesh, experienced full stack developer, Full Stack Developer, Web Development, Software Engineer, Coding Expert, Frontend & Backend Development, JavaScript, HTML5 & CSS3, Database Management, Responsive Design, Innovative Solutions, Bangladesh, Problem Solver, Agile Development, API Integration, Code Optimization, Sheraz Howlader', NULL, 'Full Stack Developer', '2024-01-28 09:34:13', '2024-02-09 04:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `image`, `dob`, `phone`, `telephone`, `email`, `email_verified_at`, `address`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `resume`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sheraz', 'Howlader', 'frontend/images/profile.jpg', '22-12-1997', '+8801728692643', '+8809638555680', 'mdsherazhowlader@gmail.com', NULL, 'H - 248, R - 08, <br>Phaze - 2, Sonadanga. <br>Khulna - 9100 </p>', '$2y$12$CwgRGrvppsztqvCwIydoE.72uXaEae6MahRHPZQHd5junbx1vY8g2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-28 09:34:13', '2024-01-28 09:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL,
  `continent_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(8, '103.230.106.17', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-04 14:33:09', '2024-02-04 14:33:09'),
(9, '138.199.35.205', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-04 14:37:52', '2024-02-04 14:37:52'),
(10, '103.86.108.98', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7908', '90.4109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-04 14:41:48', '2024-02-09 14:47:03'),
(11, '43.163.8.148', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 15:15:57', '2024-02-04 15:15:57'),
(12, '43.163.6.124', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 15:18:11', '2024-02-04 15:18:11'),
(13, '43.128.100.206', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 15:24:08', '2024-02-04 15:24:08'),
(14, '43.128.110.17', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 15:25:56', '2024-02-04 15:25:56'),
(15, '43.128.100.220', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 15:32:25', '2024-02-04 15:32:25'),
(16, '43.134.142.8', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 17:14:01', '2024-02-04 17:14:01'),
(17, '43.159.129.209', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 18:54:09', '2024-02-04 18:54:09'),
(19, '43.133.38.182', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 20:37:35', '2024-02-04 20:37:35'),
(20, '222.79.104.23', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 20:48:37', '2024-02-04 20:48:37'),
(21, '150.109.253.34', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 21:05:28', '2024-02-04 21:05:28'),
(22, '175.6.217.4', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-04 21:07:52', '2024-02-04 21:07:52'),
(23, '54.36.148.63', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-04 21:13:48', '2024-02-04 21:13:48'),
(24, '168.119.68.186', 'Europe', 'Germany', 'Leipzig', 'Saxony', 'Europe/Berlin', '51.382', '12.36', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-04 21:13:49', '2024-05-04 02:53:10'),
(26, '178.17.174.14', 'Europe', 'Moldova', 'Chisinau', 'Chișinău Municipality', 'Europe/Chisinau', '47.0042', '28.8574', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/605.1.15 (KHTML, like Gecko)', '2024-02-04 21:18:08', '2024-02-04 21:18:08'),
(27, '34.245.181.122', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-02-04 23:18:05', '2024-02-04 23:18:05'),
(28, '34.254.177.53', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-02-05 00:09:47', '2024-02-05 00:09:47'),
(29, '121.229.185.160', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 00:15:19', '2024-02-05 00:15:19'),
(30, '43.131.249.153', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 00:21:01', '2024-02-05 00:21:01'),
(31, '49.37.115.16', 'Asia', 'India', 'Bhubaneswar', 'Odisha', 'Asia/Kolkata', '20.2706', '85.8334', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3', '2024-02-05 00:21:54', '2024-02-05 00:21:54'),
(32, '110.166.71.39', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 00:37:56', '2024-03-12 06:23:51'),
(33, '43.163.3.58', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 00:43:42', '2024-02-05 00:43:42'),
(34, '43.155.160.173', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 00:44:30', '2024-02-05 00:44:30'),
(35, '119.148.61.149', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7908', '90.4109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-05 01:03:51', '2024-02-05 01:03:51'),
(36, '159.89.243.35', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2024-02-05 01:45:25', '2024-02-05 01:45:25'),
(37, '159.89.243.35', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'AIOSEO/2022.2.8', '2024-02-05 01:45:29', '2024-02-05 01:45:29'),
(38, '125.94.144.102', 'Asia', 'China', 'Guangzhou', 'Guangdong', 'Asia/Shanghai', '23.1181', '113.2539', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 02:07:54', '2024-03-15 06:00:34'),
(39, '124.226.222.66', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 02:07:58', '2024-04-22 18:13:40'),
(40, '113.219.218.197', 'Asia', 'China', 'Changsha', 'Hunan', 'Asia/Shanghai', '28.2014', '112.9611', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 02:09:16', '2024-02-05 02:09:16'),
(41, '135.148.100.196', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', NULL, '2024-02-05 02:51:29', '2024-02-05 02:51:29'),
(42, '95.217.107.56', 'Europe', 'Finland', 'Helsinki', 'Uusimaa', 'Europe/Helsinki', '60.1719', '24.9347', NULL, '2024-02-05 07:04:59', '2024-02-05 07:04:59'),
(43, '60.188.57.0', 'Asia', 'China', 'Hangzhou', 'Zhejiang', 'Asia/Shanghai', '30.2994', '120.1612', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 07:45:33', '2024-02-05 07:45:33'),
(44, '180.110.203.108', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 07:45:33', '2024-02-05 07:45:33'),
(45, '106.227.49.113', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 07:45:42', '2024-02-05 07:45:42'),
(46, '101.91.148.219', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 07:45:48', '2024-02-05 07:45:48'),
(47, '43.155.136.16', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 08:00:34', '2024-02-05 08:00:34'),
(48, '43.133.77.230', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 09:29:13', '2024-02-05 09:29:13'),
(49, '129.226.147.7', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 11:11:27', '2024-02-05 11:11:27'),
(50, '203.2.64.59', 'Asia', 'China', 'Chongqing', 'Chongqing', 'Asia/Shanghai', '29.5689', '106.5577', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 11:15:43', '2024-03-07 10:44:06'),
(51, '36.99.136.128', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-02-05 12:27:17', '2024-02-05 12:27:17'),
(52, '185.166.84.146', 'Europe', 'France', 'Marseille', 'Bouches-du-Rhône', 'Europe/Paris', '43.2951', '5.3861', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '2024-02-05 12:27:24', '2024-02-05 12:27:24'),
(53, '43.153.216.189', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 12:56:12', '2024-02-05 12:56:12'),
(54, '43.130.47.136', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 13:00:16', '2024-02-05 13:00:16'),
(55, '182.42.110.255', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 13:01:03', '2024-02-05 13:01:03'),
(56, '45.147.254.223', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; Xbox; Xbox One) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edge/44.18363.8131', '2024-02-05 14:07:19', '2024-02-05 14:07:19'),
(57, '31.222.239.251', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; Xbox; Xbox One) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edge/44.18363.8131', '2024-02-05 14:07:20', '2024-02-05 14:07:20'),
(58, '182.44.8.254', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 16:08:44', '2024-02-05 16:08:44'),
(59, '128.90.135.40', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-02-05 17:16:12', '2024-02-05 17:16:12'),
(60, '43.155.138.79', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 18:17:29', '2024-02-05 18:17:29'),
(61, '117.62.235.53', 'Asia', 'China', 'Nanjing', 'Jiangsu', 'Asia/Shanghai', '32.0589', '118.7738', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 18:19:35', '2024-02-05 18:19:35'),
(62, '43.134.37.211', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-05 20:59:42', '2024-02-05 20:59:42'),
(63, '167.71.52.180', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-06 00:18:56', '2024-02-06 00:18:56'),
(64, '103.191.198.62', 'Asia', 'India', 'Bhubaneswar', 'Odisha', 'Asia/Kolkata', '20.2706', '85.8334', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-06 00:25:54', '2024-02-06 00:25:54'),
(65, '182.44.10.67', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-06 00:29:43', '2024-02-06 00:29:43'),
(66, '43.134.66.205', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-06 00:40:49', '2024-02-06 00:40:49'),
(67, '18.246.7.223', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-02-06 01:39:38', '2024-02-06 01:39:38'),
(68, '68.183.60.80', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-06 01:48:41', '2024-02-06 01:48:41'),
(69, '68.183.60.34', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-06 01:48:42', '2024-02-06 01:48:42'),
(70, '168.119.99.191', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-06 01:49:21', '2024-02-06 01:49:21'),
(71, '168.119.141.170', 'Europe', 'Germany', 'Hachenburg', 'Rheinland-Pfalz', 'Europe/Berlin', '50.6584', '7.8268', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-06 01:49:21', '2024-02-06 01:49:21'),
(72, '68.183.49.222', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-06 02:03:10', '2024-02-06 02:03:10'),
(73, '66.249.82.237', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:42', '2024-02-06 02:03:42'),
(74, '66.249.82.236', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:43', '2024-02-06 02:03:43'),
(75, '66.249.82.236', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:44', '2024-02-06 02:03:44'),
(76, '66.249.82.237', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:44', '2024-02-06 02:03:44'),
(77, '66.249.82.238', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:45', '2024-02-06 02:03:45'),
(78, '66.249.82.238', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-02-06 02:03:46', '2024-02-06 02:03:46'),
(79, '172.255.48.140', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 GTmetrix', '2024-02-06 02:43:59', '2024-02-06 02:43:59'),
(80, '172.255.48.140', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-02-06 02:44:11', '2024-02-06 02:44:11'),
(81, '45.82.191.122', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.3;', '2024-02-06 02:55:16', '2024-02-06 02:55:16'),
(82, '77.75.126.75', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', NULL, '2024-02-06 04:02:58', '2024-02-06 04:02:58'),
(83, '54.190.61.69', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-06 04:19:51', '2024-02-06 04:19:51'),
(84, '34.213.218.100', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-06 04:24:55', '2024-02-06 04:24:55'),
(85, '43.130.32.224', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-06 09:31:09', '2024-02-06 09:31:09'),
(86, '43.135.166.178', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-06 12:57:37', '2024-02-06 12:57:37'),
(87, '181.215.185.254', 'Asia', 'United Arab Emirates', '', '', 'Asia/Dubai', '23.75', '54.5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-06 13:13:47', '2024-02-06 13:13:47'),
(88, '184.174.46.151', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-06 13:14:23', '2024-02-06 13:14:23'),
(89, '1.223.119.68', 'Asia', 'South Korea', 'Seongnam-si', 'Gyeonggi-do', 'Asia/Seoul', '37.4541', '127.1404', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2024-02-06 13:28:59', '2024-02-06 13:28:59'),
(90, '17.241.219.69', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-06 17:34:08', '2024-02-06 17:34:08'),
(91, '17.241.227.227', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-06 18:59:00', '2024-02-06 18:59:00'),
(92, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', NULL, '2024-02-06 19:01:29', '2024-02-06 19:01:29'),
(93, '54.88.179.33', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-02-06 20:34:19', '2024-02-06 20:34:19'),
(94, '17.241.219.80', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-06 20:40:26', '2024-02-06 20:40:26'),
(95, '54.36.149.0', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-06 20:51:35', '2024-02-06 20:51:35'),
(96, '43.155.152.154', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-06 21:00:58', '2024-02-06 21:00:58'),
(97, '199.45.154.67', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-06 23:43:48', '2024-02-06 23:43:48'),
(98, '199.45.155.34', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-07 00:00:50', '2024-02-07 00:00:50'),
(99, '81.181.59.123', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2024-02-07 03:35:03', '2024-02-07 03:35:03'),
(100, '43.133.77.208', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-07 12:50:42', '2024-02-07 12:50:42'),
(101, '129.226.158.26', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-07 18:54:21', '2024-02-07 18:54:21'),
(102, '17.241.227.53', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-07 19:48:50', '2024-02-07 19:48:50'),
(103, '172.245.217.146', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0.1) Gecko/20151126 Firefox/52.0.1', '2024-02-07 20:25:25', '2024-02-07 20:25:25'),
(104, '17.241.227.62', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-07 22:10:42', '2024-02-07 22:10:42'),
(105, '64.23.154.133', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-08 01:32:51', '2024-02-08 01:32:51'),
(106, '54.36.148.251', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-08 01:39:04', '2024-02-08 01:39:04'),
(107, '34.222.14.81', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-02-08 01:43:13', '2024-02-08 01:43:13'),
(108, '52.26.25.17', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-08 04:01:29', '2024-02-08 04:01:29'),
(109, '43.134.190.89', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-08 04:30:11', '2024-02-08 04:30:11'),
(110, '111.7.96.171', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-02-08 07:14:25', '2024-02-08 07:14:25'),
(111, '111.7.96.171', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '2024-02-08 07:14:26', '2024-02-08 07:14:26'),
(112, '43.135.181.13', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-08 09:32:12', '2024-02-08 09:32:12'),
(113, '130.255.166.120', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 9; BDL8051C Build/BDL3552T; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.158 Safari/537.36', '2024-02-08 11:31:36', '2024-02-08 11:31:36'),
(114, '130.255.166.98', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 9; BDL8051C Build/BDL3552T; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.158 Safari/537.36', '2024-02-08 11:31:36', '2024-02-08 11:31:36'),
(115, '130.255.166.82', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 9; BDL8051C Build/BDL3552T; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.158 Safari/537.36', '2024-02-08 11:31:36', '2024-02-08 11:31:36'),
(116, '191.101.209.66', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36 OPR/53.0.2907.68', '2024-02-08 14:56:00', '2024-02-08 14:56:00'),
(117, '17.241.227.161', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-08 17:33:08', '2024-02-08 17:33:08'),
(118, '17.241.75.46', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-08 19:30:26', '2024-02-08 19:30:26'),
(119, '208.80.194.41', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50728)', '2024-02-08 20:40:35', '2024-02-08 20:40:35'),
(120, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.85 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-08 21:12:02', '2024-02-08 21:12:02'),
(121, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-08 21:12:03', '2024-02-08 21:12:03'),
(122, '149.102.249.29', 'North America', 'United States', 'New York', 'New York', 'America/New_York', '40.7123', '-74.0068', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.79 Safari/537.36', '2024-02-08 22:38:41', '2024-02-08 22:38:41'),
(123, '199.45.154.48', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-09 00:19:28', '2024-02-09 00:19:28'),
(124, '69.171.231.4', 'North America', 'United States', 'Eagle Mountain', 'Utah', 'America/Denver', '40.3833', '-111.9895', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-09 02:35:39', '2024-02-09 02:35:39'),
(125, '43.163.6.35', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-09 03:14:36', '2024-02-09 03:14:36'),
(126, '135.148.195.2', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.183', '2024-02-09 07:44:05', '2024-02-09 07:44:05'),
(127, '49.51.179.103', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-09 09:32:37', '2024-02-09 09:32:37'),
(128, '37.19.223.222', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', '2024-02-09 11:47:24', '2024-02-09 11:47:24'),
(129, '43.131.62.4', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-09 12:58:08', '2024-04-16 07:39:12'),
(130, '43.130.7.211', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-09 19:00:12', '2024-02-09 19:00:12'),
(131, '43.153.93.68', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-09 20:50:58', '2024-02-09 20:50:58'),
(132, '167.99.221.92', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-09 21:47:30', '2024-02-09 21:47:30'),
(133, '5.133.192.160', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-02-10 00:24:33', '2024-02-10 00:24:33'),
(134, '67.205.172.85', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-10 01:21:31', '2024-02-10 01:21:31'),
(135, '173.252.83.116', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:02', '2024-02-10 01:28:02'),
(136, '173.252.83.1', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:06', '2024-02-10 01:28:06'),
(137, '173.252.83.2', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:06', '2024-02-10 01:28:06'),
(138, '173.252.83.120', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:22', '2024-02-10 01:28:22'),
(139, '173.252.83.6', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:22', '2024-02-10 01:28:22'),
(140, '173.252.83.8', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:24', '2024-02-10 01:28:24'),
(141, '173.252.83.117', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-10 01:28:24', '2024-02-10 01:28:24'),
(142, '128.90.144.150', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-02-10 01:29:17', '2024-02-10 01:29:17'),
(143, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Google-InspectionTool/1.0;)', '2024-02-10 01:36:30', '2024-02-10 01:36:30'),
(144, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Google-InspectionTool/1.0;)', '2024-02-10 01:36:30', '2024-02-10 01:36:30'),
(145, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-10 01:36:55', '2024-02-10 01:36:55'),
(146, '43.134.89.111', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-10 09:31:22', '2024-02-10 09:31:22'),
(147, '167.88.61.92', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Apache/2.4.34 (Ubuntu) OpenSSL/1.1.1 (internal dummy connection)', '2024-02-10 11:19:37', '2024-02-10 11:19:37'),
(148, '43.131.248.209', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-10 20:50:20', '2024-02-10 20:50:20'),
(149, '195.78.54.130', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2024-02-10 21:19:16', '2024-02-10 21:19:16'),
(150, '54.36.148.94', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-10 21:53:49', '2024-02-10 21:53:49'),
(151, '91.92.252.87', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', 'python-requests/2.31.0', '2024-02-10 21:58:52', '2024-02-10 21:58:52'),
(152, '35.93.164.56', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_3_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2024-02-11 03:40:00', '2024-02-11 03:40:00'),
(153, '54.36.148.72', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-11 07:12:33', '2024-02-11 07:12:33'),
(154, '54.36.148.92', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-11 08:31:50', '2024-02-11 08:31:50'),
(155, '81.28.6.249', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1517', '8.7523', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-02-11 09:23:28', '2024-02-11 09:23:28'),
(156, '82.165.224.38', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-11 11:28:02', '2024-02-11 11:28:02'),
(157, '82.165.224.54', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-11 11:31:34', '2024-02-11 11:31:34'),
(158, '43.157.40.112', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-11 13:01:11', '2024-04-19 07:42:22'),
(159, '104.167.222.126', 'North America', 'United States', 'North Kansas City', 'Missouri', 'America/Chicago', '39.1678', '-94.5269', 'User-Agent: SEOlyt/1.0 (SEO analysis tool; https://seolyt.com)', '2024-02-11 17:08:43', '2024-02-11 17:08:43'),
(160, '170.106.82.193', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-11 20:50:44', '2024-02-11 20:50:44'),
(161, '159.65.206.71', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-12 00:24:21', '2024-02-12 00:24:21'),
(162, '66.220.149.8', 'North America', 'United States', 'Prineville', 'Oregon', 'America/Los_Angeles', '44.3041', '-120.8364', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-12 01:20:43', '2024-02-12 01:20:43'),
(163, '52.26.152.5', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-12 03:46:52', '2024-02-12 03:46:52'),
(164, '44.193.220.153', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '2024-02-12 06:43:24', '2024-02-12 06:43:24'),
(165, '167.71.196.106', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-02-12 07:47:51', '2024-02-12 07:47:51'),
(166, '170.106.101.31', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-12 12:54:26', '2024-02-12 12:54:26'),
(167, '216.251.130.74', 'North America', 'Canada', 'Burnaby', 'British Columbia', 'America/Vancouver', '49.2732', '-123.0124', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36', '2024-02-12 15:11:47', '2024-02-12 15:11:47'),
(168, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 7.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3586.88 Safari/537.36', '2024-02-12 15:13:58', '2024-02-12 15:13:58'),
(169, '68.183.149.129', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-12 18:18:09', '2024-02-12 18:18:09'),
(170, '43.131.48.214', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-12 19:02:58', '2024-02-12 19:02:58'),
(171, '196.119.246.77', 'Africa', 'Morocco', 'Salé', 'Sale', 'Africa/Casablanca', '34.0663', '-6.817', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-02-12 20:01:12', '2024-02-12 20:01:12'),
(172, '93.158.91.249', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '2024-02-12 20:28:29', '2024-02-12 20:28:29'),
(173, '93.158.91.239', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '2024-02-12 20:28:29', '2024-02-12 20:28:29'),
(174, '93.158.92.13', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '2024-02-12 20:28:29', '2024-02-12 20:28:29'),
(175, '194.38.23.16', 'Europe', 'Ukraine', 'Dnipro', 'Dnipropetrovsk Oblast', 'Europe/Kyiv', '48.4735', '35.046', 'ALittle Client', '2024-02-13 01:20:33', '2024-02-13 01:20:33'),
(176, '199.244.88.219', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-02-13 11:53:11', '2024-02-13 11:53:11'),
(177, '193.31.106.172', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2024-02-13 13:19:19', '2024-02-13 13:19:19'),
(178, '35.171.144.152', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-02-13 15:34:30', '2024-02-13 15:34:30'),
(179, '170.64.152.67', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-02-13 15:42:05', '2024-02-13 15:42:05'),
(180, '43.157.66.187', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-13 21:00:06', '2024-02-13 21:00:06'),
(181, '82.165.224.13', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-13 21:51:06', '2024-02-13 21:51:06'),
(182, '82.165.224.45', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-13 21:59:39', '2024-02-13 21:59:39'),
(183, '46.228.199.158', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-02-13 22:19:12', '2024-02-13 22:19:12'),
(184, '81.181.59.121', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-02-14 01:35:57', '2024-02-14 01:35:57'),
(185, '135.148.195.7', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2024-02-14 02:08:45', '2024-02-14 02:08:45'),
(186, '164.90.146.204', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.3931', '-121.962', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-14 02:35:49', '2024-02-14 02:35:49'),
(187, '173.252.107.3', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5157', '-77.2758', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-14 06:06:34', '2024-02-14 06:06:34'),
(188, '146.70.128.215', 'Europe', 'Spain', 'Madrid', 'Madrid', 'Europe/Madrid', '40.4327', '-3.621', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-02-14 11:54:53', '2024-02-14 11:54:53'),
(189, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Softaculous', '2024-02-14 11:59:39', '2024-02-14 11:59:39'),
(190, '103.230.106.40', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-14 12:14:13', '2024-02-14 12:14:13'),
(191, '49.51.206.130', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-14 12:59:15', '2024-02-14 12:59:15'),
(192, '139.162.34.82', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-02-14 14:17:41', '2024-02-14 14:17:41'),
(193, '54.184.42.157', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.3', '2024-02-14 14:29:56', '2024-02-14 14:29:56'),
(194, '84.17.48.192', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299', '2024-02-14 15:37:35', '2024-02-14 15:37:35'),
(195, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', '2024-02-14 21:53:46', '2024-02-14 21:53:46'),
(196, '54.36.148.248', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-14 22:42:13', '2024-02-14 22:42:13');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(197, '66.249.70.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-14 22:55:42', '2024-02-14 22:55:42'),
(198, '66.249.70.2', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-14 22:55:43', '2024-02-14 22:55:43'),
(199, '66.249.70.1', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-14 22:55:43', '2024-02-14 22:55:43'),
(200, '66.249.70.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-14 22:55:44', '2024-02-14 22:55:44'),
(201, '52.167.144.145', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-02-14 23:39:37', '2024-02-14 23:39:37'),
(202, '188.126.89.67', 'Europe', 'Finland', 'Helsinki', 'Uusimaa', 'Europe/Helsinki', '60.2096', '24.7783', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36', '2024-02-14 23:54:12', '2024-02-14 23:54:12'),
(203, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-15 06:39:59', '2024-02-15 06:39:59'),
(204, '66.249.70.1', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-15 07:06:32', '2024-02-15 07:06:32'),
(205, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-15 10:24:34', '2024-02-15 10:24:34'),
(206, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-15 10:24:34', '2024-02-15 10:24:34'),
(207, '43.133.66.151', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-15 13:03:37', '2024-02-15 13:03:37'),
(208, '66.36.234.130', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'User-Agent: SEOlyt/1.0 (SEO analysis tool; https://seolyt.com)', '2024-02-15 16:00:29', '2024-02-15 16:00:29'),
(209, '173.252.87.10', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-15 17:17:32', '2024-05-01 10:14:57'),
(210, '15.204.182.106', 'North America', 'United States', 'Reston', 'Virginia', 'America/New_York', '38.9609', '-77.3429', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-02-15 19:39:37', '2024-02-15 19:39:37'),
(211, '34.29.68.246', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', '2024-02-15 20:27:58', '2024-02-15 20:27:58'),
(212, '129.226.146.179', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-15 20:50:05', '2024-02-15 20:50:05'),
(213, '107.189.7.48', 'Europe', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Europe/Luxembourg', '49.6113', '6.1294', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10; rv:33.0) Gecko/20100101 Firefox/33.0', '2024-02-15 22:56:25', '2024-02-15 22:56:25'),
(214, '142.93.215.24', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-16 00:43:28', '2024-02-16 00:43:28'),
(215, '54.36.148.199', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-16 04:29:13', '2024-02-16 04:29:13'),
(216, '93.158.91.13', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-02-16 04:57:54', '2024-04-24 21:59:21'),
(217, '185.220.175.9', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-02-16 09:49:50', '2024-02-16 09:49:50'),
(218, '128.199.237.7', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-02-16 12:32:09', '2024-02-16 12:32:09'),
(219, '43.135.149.154', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-16 13:00:13', '2024-02-16 13:00:13'),
(220, '104.28.219.140', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-02-16 13:05:23', '2024-02-16 13:05:23'),
(221, '212.227.216.170', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-16 20:46:23', '2024-02-16 20:46:23'),
(222, '212.227.216.130', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-16 20:51:43', '2024-02-16 20:51:43'),
(223, '43.159.128.68', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-16 20:54:36', '2024-02-16 20:54:36'),
(224, '172.104.177.205', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-02-17 00:50:32', '2024-02-17 00:50:32'),
(225, '2a06:98c0:3600::103', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.7 Safari/537.36', '2024-02-17 01:20:11', '2024-02-17 01:20:11'),
(226, '17.241.227.189', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-17 03:30:41', '2024-02-17 03:30:41'),
(227, '17.22.245.111', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-17 03:34:22', '2024-02-17 03:34:22'),
(228, '192.36.248.249', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.71', '2024-02-17 05:00:34', '2024-02-17 05:00:34'),
(229, '192.71.142.35', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.71', '2024-02-17 05:00:34', '2024-02-17 05:00:34'),
(230, '192.71.2.171', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.71', '2024-02-17 05:00:35', '2024-02-17 05:00:35'),
(231, '191.102.131.205', 'North America', 'United States', 'New York', 'New York', 'America/New_York', '40.7123', '-74.0068', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:15.0) Gecko/20100101 Firefox/15.0.1', '2024-02-17 05:50:59', '2024-02-17 05:50:59'),
(232, '43.130.31.48', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-17 13:04:26', '2024-02-17 13:04:26'),
(233, '170.106.159.160', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-17 19:06:27', '2024-02-17 19:06:27'),
(234, '43.153.110.177', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-17 20:52:25', '2024-02-17 20:52:25'),
(235, '147.182.153.13', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-18 00:25:39', '2024-02-18 00:25:39'),
(236, '94.247.172.129', 'Europe', 'Sweden', 'Falkenberg', 'Halland County', 'Europe/Stockholm', '56.9066', '12.503', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', '2024-02-18 01:17:28', '2024-02-18 01:17:28'),
(237, '84.247.59.80', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Iron Safari/537.36', '2024-02-18 02:11:55', '2024-02-18 02:11:55'),
(238, '35.87.82.18', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-18 04:04:00', '2024-02-18 04:04:00'),
(239, '34.220.104.100', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-18 04:04:01', '2024-02-18 04:04:01'),
(240, '78.162.43.208', 'Asia', 'Türkiye', 'Antalya', 'Antalya', 'Europe/Istanbul', '36.8709', '30.5229', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H321 Safari/600.1.4', '2024-02-18 10:05:25', '2024-02-18 10:05:25'),
(241, '203.33.203.148', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-18 15:21:03', '2024-02-18 15:21:03'),
(242, '173.252.83.119', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-18 15:38:13', '2024-02-18 15:38:13'),
(243, '54.36.148.57', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-18 20:49:39', '2024-02-18 20:49:39'),
(244, '54.36.148.20', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-18 20:49:51', '2024-02-18 20:49:51'),
(245, '54.36.148.17', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-19 01:33:02', '2024-02-19 01:33:02'),
(246, '195.154.122.35', 'Europe', 'France', 'Ivry-sur-Seine', 'Val-de-Marne', 'Europe/Paris', '48.8138', '2.3873', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-19 01:33:03', '2024-03-24 15:12:49'),
(247, '192.101.70.94', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-19 02:09:40', '2024-02-19 02:09:40'),
(248, '192.101.70.87', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-19 02:10:21', '2024-02-19 02:10:21'),
(249, '182.42.111.213', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-19 02:29:40', '2024-02-19 02:29:40'),
(250, '42.83.147.56', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-02-19 07:58:29', '2024-02-19 07:58:29'),
(251, '43.155.166.202', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-19 12:07:11', '2024-02-19 12:07:11'),
(252, '20.2.221.203', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-02-19 13:08:59', '2024-02-19 13:08:59'),
(253, '113.66.223.62', 'Asia', 'China', 'Guangzhou', 'Guangdong', 'Asia/Shanghai', '23.1181', '113.2539', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', '2024-02-19 14:06:01', '2024-02-19 14:06:01'),
(254, '104.164.173.72', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-02-19 14:31:15', '2024-02-19 14:31:15'),
(255, '104.164.173.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-02-19 14:31:16', '2024-02-19 14:31:16'),
(256, '51.81.245.138', 'North America', 'United States', 'Hillsboro', 'Oregon', 'America/Los_Angeles', '45.526', '-122.9874', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-19 14:31:30', '2024-04-20 13:44:26'),
(257, '65.154.226.171', 'North America', 'United States', 'San Jose', 'California', 'America/Los_Angeles', '37.4073', '-121.939', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-02-19 14:31:32', '2024-02-19 14:31:32'),
(258, '205.169.39.159', 'North America', 'United States', 'Durham', 'North Carolina', 'America/New_York', '36.039', '-78.878', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-02-19 14:31:42', '2024-02-19 14:31:42'),
(259, '205.169.39.159', 'North America', 'United States', 'Durham', 'North Carolina', 'America/New_York', '36.039', '-78.878', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-02-19 14:31:51', '2024-02-19 14:31:51'),
(260, '128.199.61.251', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', NULL, '2024-02-19 14:32:02', '2024-02-19 14:32:02'),
(261, '128.199.61.251', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA270239) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.3589.98 Mobile Safari/537.3', '2024-02-19 14:32:03', '2024-02-19 14:32:03'),
(262, '128.199.61.251', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Go-http-client/1.1', '2024-02-19 14:32:05', '2024-02-19 14:32:05'),
(263, '13.38.97.47', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 uacq', '2024-02-19 14:32:14', '2024-02-19 14:32:14'),
(264, '138.199.18.132', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 Autopliuslt/7.8.0 EmbeddedBrowser (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit (KHTML, like Gecko) Mobile DeviceUID:  VendorUID:  AppPkgID: lt.plius.auto', '2024-02-19 14:32:14', '2024-02-19 14:32:14'),
(265, '161.35.246.138', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/295.0.590048842 Mobile/15E148 Safari/604.1', '2024-02-19 14:32:14', '2024-02-19 14:32:14'),
(266, '193.36.118.218', 'Europe', 'United Kingdom', 'Liverpool', 'Liverpool', 'Europe/London', '53.4113', '-2.9759', 'Autoplius.lt/7.7.0 Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 EmbeddedBrowser DeviceUID:', '2024-02-19 14:32:14', '2024-02-19 14:32:14'),
(267, '146.190.197.169', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 uacq', '2024-02-19 14:32:15', '2024-02-19 14:32:15'),
(268, '51.159.214.65', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2024-02-19 14:32:16', '2024-02-19 14:32:16'),
(269, '103.230.104.18', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7004', '90.4287', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-19 14:34:34', '2024-02-19 14:34:34'),
(270, '157.97.121.66', 'North America', 'United States', 'Trenton', 'New Jersey', 'America/New_York', '40.2152', '-74.7471', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '2024-02-19 16:30:23', '2024-02-19 16:30:23'),
(271, '133.242.174.119', 'Asia', 'Japan', 'Tokyo', 'Tokyo', 'Asia/Tokyo', '35.6837', '139.6805', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', '2024-02-19 17:31:28', '2024-02-19 17:31:28'),
(272, '68.183.157.22', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-02-19 18:22:35', '2024-02-19 18:22:35'),
(273, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Opera/9.80 (X11; Linux x86_64; U; bg) Presto/2.8.131 Version/11.10', '2024-02-19 22:33:19', '2024-02-19 22:33:19'),
(274, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586', '2024-02-19 23:09:57', '2024-02-19 23:09:57'),
(275, '143.110.178.163', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-20 01:34:06', '2024-02-20 01:34:06'),
(276, '47.251.15.21', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:29', '2024-02-20 02:35:29'),
(277, '47.251.14.232', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:29', '2024-02-20 02:35:29'),
(278, '47.254.74.59', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:29', '2024-02-20 02:35:29'),
(279, '47.254.85.182', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:32', '2024-02-20 02:35:32'),
(280, '47.88.87.97', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:32', '2024-02-20 02:35:32'),
(281, '47.251.13.32', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:34', '2024-02-20 02:35:34'),
(282, '47.88.78.6', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:34', '2024-02-20 02:35:34'),
(283, '47.88.101.3', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-02-20 02:35:34', '2024-02-20 02:35:34'),
(284, '171.244.43.14', 'Asia', 'Vietnam', '', '', 'Asia/Bangkok', '16.1667', '107.8333', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', '2024-02-20 04:16:00', '2024-02-20 04:16:00'),
(285, '45.79.210.147', 'North America', 'United States', 'Atlanta', 'Georgia', 'America/New_York', '33.7485', '-84.3871', 'Go-http-client/2.0', '2024-02-20 05:20:55', '2024-02-20 05:20:55'),
(286, '69.28.84.20', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '2024-02-20 06:24:57', '2024-02-20 06:24:57'),
(287, '173.252.83.4', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-20 06:52:45', '2024-02-20 06:52:45'),
(288, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.2309.372 Safari/537.36', '2024-02-20 08:53:09', '2024-02-20 08:53:09'),
(289, '180.102.134.69', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-20 09:15:44', '2024-02-20 09:15:44'),
(290, '65.154.226.167', 'North America', 'United States', 'San Jose', 'California', 'America/Los_Angeles', '37.4073', '-121.939', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-02-20 15:37:54', '2024-02-20 15:37:54'),
(291, '65.154.226.167', 'North America', 'United States', 'San Jose', 'California', 'America/Los_Angeles', '37.4073', '-121.939', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/119.0.6045.199 Safari/537.36', '2024-02-20 15:38:06', '2024-02-20 15:38:06'),
(292, '149.56.160.148', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-02-20 18:21:14', '2024-02-20 18:21:14'),
(293, '149.56.160.148', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (Linux; Android 10; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Mobile Safari/537.36', '2024-02-20 18:21:19', '2024-02-20 18:21:19'),
(294, '149.56.150.50', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-02-20 18:21:35', '2024-02-20 18:21:35'),
(295, '58.49.233.126', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-20 20:35:41', '2024-02-20 20:35:41'),
(296, '13.52.230.96', 'North America', 'United States', 'San Jose', 'California', 'America/Los_Angeles', '37.1835', '-121.7714', 'Mozilla/5.0 (Linux; Android 10; POCO F1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '2024-02-21 03:32:42', '2024-02-21 03:32:42'),
(297, '182.42.105.144', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-21 07:42:59', '2024-02-21 07:42:59'),
(298, '202.74.40.142', 'Asia', 'Hong Kong', '', '', 'Asia/Hong_Kong', '22.2578', '114.1657', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2024-02-21 21:12:12', '2024-02-21 21:12:12'),
(299, '36.110.211.3', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2024-02-21 21:17:24', '2024-02-21 21:17:24'),
(300, '27.115.124.38', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '2024-02-21 21:17:24', '2024-02-21 21:17:24'),
(301, '123.6.49.18', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '2024-02-21 21:17:54', '2024-02-21 21:17:54'),
(302, '54.36.148.164', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-22 00:11:21', '2024-02-22 00:11:21'),
(303, '54.36.148.240', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-22 00:11:24', '2024-02-22 00:11:24'),
(304, '209.38.242.209', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-22 01:24:53', '2024-02-22 01:24:53'),
(305, '82.165.224.74', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-22 01:26:07', '2024-02-22 01:26:07'),
(306, '82.165.224.90', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-22 01:34:31', '2024-02-22 01:34:31'),
(307, '44.234.19.83', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-02-22 02:21:29', '2024-02-22 02:21:29'),
(308, '35.93.29.76', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-22 04:18:30', '2024-02-22 04:18:30'),
(309, '18.246.168.236', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-22 04:18:31', '2024-02-22 04:18:31'),
(310, '125.75.66.97', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-22 04:53:04', '2024-02-22 04:53:04'),
(311, '18.118.207.86', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'curl/8.3.0', '2024-02-22 07:52:45', '2024-02-22 07:52:45'),
(312, '45.58.38.72', 'North America', 'United States', 'Sacramento', 'California', 'America/Los_Angeles', '38.581', '-121.4939', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '2024-02-22 11:25:15', '2024-02-22 11:25:15'),
(313, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-22 13:33:35', '2024-02-22 13:33:35'),
(314, '89.248.174.34', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2024-02-22 14:54:07', '2024-03-06 17:40:26'),
(315, '89.248.174.34', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2024-02-22 14:54:07', '2024-02-22 14:54:07'),
(316, '176.9.76.162', 'Europe', 'Germany', 'Bayreuth', 'Bavaria', 'Europe/Berlin', '49.9505', '11.5977', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2024-02-22 15:12:42', '2024-02-22 15:12:42'),
(317, '54.36.149.87', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-22 19:26:21', '2024-02-22 19:26:21'),
(318, '159.89.117.253', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-23 04:35:46', '2024-02-23 04:35:46'),
(319, '17.241.219.12', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-23 04:55:06', '2024-02-23 04:55:06'),
(320, '17.246.15.24', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-23 05:05:37', '2024-02-23 05:05:37'),
(321, '84.17.48.192', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '2024-02-23 05:25:28', '2024-02-23 05:25:28'),
(322, '43.159.63.75', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-23 07:16:28', '2024-02-23 07:16:28'),
(323, '35.86.220.4', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-02-23 11:38:54', '2024-02-23 11:38:54'),
(324, '206.204.52.83', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', '2024-02-23 13:41:23', '2024-02-23 13:41:23'),
(325, '206.204.36.203', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', '2024-02-23 13:42:32', '2024-02-23 13:42:32'),
(326, '117.33.163.216', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-23 17:03:57', '2024-02-23 17:03:57'),
(327, '128.199.50.104', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-24 00:30:47', '2024-02-24 00:30:47'),
(328, '199.45.155.49', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-24 01:41:36', '2024-02-24 01:41:36'),
(329, '199.45.155.51', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-24 02:21:44', '2024-02-24 02:21:44'),
(330, '54.248.152.138', 'Asia', 'Japan', 'Tokyo', 'Tokyo', 'Asia/Tokyo', '35.6893', '139.6899', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/61.0.3163.100 Chrome/61.0.3163.100 Safari/537.36 PingdomPageSpeed/1.0 (pingbot/2.0; +http://www.pingdom.com/)', '2024-02-24 05:39:56', '2024-02-24 05:39:56'),
(331, '119.148.61.149', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.746', '90.382', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-02-24 05:58:04', '2024-02-24 05:58:04'),
(332, '50.19.185.54', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (compatible; redditbot/1.0; +http://www.reddit.com/feedback)', '2024-02-24 06:03:35', '2024-02-24 06:03:35'),
(333, '54.242.169.97', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (compatible; redditbot/1.0; +http://www.reddit.com/feedback)', '2024-02-24 06:03:35', '2024-02-24 06:03:35'),
(334, '35.173.49.139', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (compatible; redditbot/1.0; +http://www.reddit.com/feedback)', '2024-02-24 06:07:42', '2024-02-24 06:07:42'),
(335, '54.145.79.67', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (compatible; redditbot/1.0; +http://www.reddit.com/feedback)', '2024-02-24 06:07:42', '2024-02-24 06:07:42'),
(336, '198.244.154.200', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', '2024-02-24 08:33:56', '2024-02-24 08:33:56'),
(337, '38.22.104.100', 'North America', 'Canada', 'Verdun', 'Quebec', 'America/Toronto', '45.4579', '-73.5493', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3844.0 Safari/537.36', '2024-02-24 09:02:31', '2024-02-24 09:02:31'),
(338, '84.17.48.184', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36 OPR/53.0.2907.99', '2024-02-24 10:22:01', '2024-02-24 10:22:01'),
(339, '51.222.41.85', 'North America', 'Canada', 'Beauharnois', 'Quebec', 'America/Toronto', '45.3161', '-73.8736', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-02-24 11:06:18', '2024-02-24 11:06:18'),
(340, '143.198.46.210', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-24 11:40:19', '2024-02-24 11:40:19'),
(341, '17.241.75.226', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-24 13:02:10', '2024-02-24 13:02:10'),
(342, '54.149.217.164', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A5362a Safari/604.1', '2024-02-24 15:42:02', '2024-02-24 15:42:02'),
(343, '17.241.227.120', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-02-24 15:49:52', '2024-02-24 15:49:52'),
(344, '165.232.75.194', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-02-25 00:17:01', '2024-02-25 00:17:01'),
(345, '35.81.78.246', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-02-25 02:24:01', '2024-02-25 02:24:01'),
(346, '199.45.155.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-25 03:04:50', '2024-02-25 03:04:50'),
(347, '199.45.154.17', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-02-25 06:11:16', '2024-02-25 06:11:16'),
(348, '114.96.103.33', 'Asia', 'China', 'Wuhu', 'Anhui', 'Asia/Shanghai', '31.3522', '118.4451', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-25 08:56:37', '2024-02-25 08:56:37'),
(349, '34.220.121.27', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.49 Safari/537.36', '2024-02-25 09:48:43', '2024-02-25 09:48:43'),
(350, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 8.4; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.2983.88 Safari/537.36', '2024-02-25 13:12:55', '2024-02-25 13:12:55'),
(351, '154.0.175.200', 'Africa', 'South Africa', '', '', 'Africa/Johannesburg', '-28.9984', '23.9888', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-02-25 14:06:37', '2024-02-25 14:06:37'),
(352, '192.71.2.171', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-02-25 15:10:33', '2024-02-25 15:10:33'),
(353, '192.71.38.71', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-02-25 15:10:33', '2024-02-25 15:10:33'),
(354, '192.71.36.158', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-02-25 15:10:33', '2024-02-25 15:10:33'),
(355, '40.71.166.139', 'North America', 'United States', 'Washington', 'Virginia', 'America/New_York', '38.7095', '-78.1539', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.71 Safari/534.24', '2024-02-26 02:01:22', '2024-02-26 02:01:22'),
(356, '143.110.191.10', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-26 02:29:12', '2024-02-26 02:29:12'),
(357, '65.109.171.21', 'Europe', 'Finland', 'Helsinki', 'Uusimaa', 'Europe/Helsinki', '60.1797', '24.9344', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.5359.125 Safari/537.36', '2024-02-26 10:39:42', '2024-02-26 10:39:42'),
(358, '143.198.166.54', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; EIE10;ENUSMSN; rv:11.0) like Gecko', '2024-02-26 13:48:08', '2024-02-26 13:48:08'),
(359, '14.215.163.132', 'Asia', 'China', 'Guangzhou', 'Guangdong', 'Asia/Shanghai', '23.1181', '113.2539', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-26 15:04:20', '2024-02-26 15:04:20'),
(360, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-26 16:11:14', '2024-02-26 16:11:14'),
(361, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-26 16:11:15', '2024-02-26 16:11:15'),
(362, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-26 16:11:15', '2024-02-26 16:11:15'),
(363, '193.31.106.216', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2024-02-26 17:33:49', '2024-02-26 17:33:49'),
(364, '69.171.249.7', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-02-26 21:33:43', '2024-02-26 21:33:43'),
(365, '5.133.192.167', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-02-26 23:17:10', '2024-02-26 23:17:10'),
(366, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-27 01:59:01', '2024-02-27 01:59:01'),
(367, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-27 01:59:01', '2024-02-27 01:59:01'),
(368, '205.185.125.109', 'North America', 'United States', 'Las Vegas', 'Nevada', 'America/Los_Angeles', '36.102', '-115.1447', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2312.90 Safari/537.36', '2024-02-27 03:19:20', '2024-02-27 03:19:20'),
(369, '193.36.224.80', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 03:29:01', '2024-02-27 03:29:01'),
(370, '136.144.19.175', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 03:29:02', '2024-02-27 03:29:02'),
(371, '136.144.19.82', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 03:29:03', '2024-02-27 03:29:03'),
(372, '193.36.224.202', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 03:29:05', '2024-02-27 03:29:05'),
(373, '136.144.19.178', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 03:29:07', '2024-02-27 03:29:07'),
(374, '89.248.174.11', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'python-requests/2.31.0', '2024-02-27 05:56:45', '2024-02-27 05:56:45'),
(375, '89.248.174.11', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'python-requests/2.31.0', '2024-02-27 05:56:45', '2024-02-27 05:56:45'),
(376, '66.249.66.16', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-27 07:10:11', '2024-02-27 07:10:11'),
(377, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-02-27 07:32:48', '2024-02-27 07:32:48'),
(378, '45.95.232.95', 'Europe', 'Switzerland', 'Zurich', 'Zurich', 'Europe/Zurich', '47.3682', '8.5671', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-27 08:10:14', '2024-02-27 08:10:14'),
(379, '36.68.223.97', 'Asia', 'Indonesia', 'Surabaya', 'East Java', 'Asia/Jakarta', '-7.2484', '112.7419', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '2024-02-27 14:37:55', '2024-02-27 14:37:55'),
(380, '207.46.13.102', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-02-27 19:04:35', '2024-02-27 19:04:35');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(381, '54.36.148.182', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-27 21:49:15', '2024-02-27 21:49:15'),
(382, '212.227.216.115', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-27 22:02:37', '2024-02-27 22:02:37'),
(383, '212.227.216.19', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-02-27 22:16:19', '2024-02-27 22:16:19'),
(384, '188.166.171.51', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-02-28 00:45:01', '2024-02-28 00:45:01'),
(385, '199.244.88.231', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-02-28 01:43:48', '2024-02-28 01:43:48'),
(386, '89.147.108.56', 'Europe', 'Iceland', 'Reykjavik', 'Reykjavikurborg', 'Atlantic/Reykjavik', '64.1429', '-21.9447', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '2024-02-28 03:26:29', '2024-02-28 03:26:29'),
(387, '52.39.201.44', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-28 04:09:15', '2024-02-28 04:09:15'),
(388, '34.208.10.250', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-02-28 04:11:05', '2024-02-28 04:11:05'),
(389, '81.181.56.42', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '2024-02-28 07:41:06', '2024-02-28 07:41:06'),
(390, '27.147.205.88', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.8672', '90.3927', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-02-28 09:58:07', '2024-02-28 09:58:07'),
(391, '67.220.86.160', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (X11; CentOS; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', '2024-02-28 11:49:57', '2024-02-28 11:49:57'),
(392, '52.170.88.73', 'North America', 'United States', 'Washington', 'Virginia', 'America/New_York', '38.7095', '-78.1539', NULL, '2024-02-28 14:45:54', '2024-02-28 14:45:54'),
(393, '54.36.149.7', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-28 16:20:30', '2024-02-28 16:20:30'),
(394, '172.234.84.205', 'Asia', 'Japan', 'Osaka', 'Ōsaka', 'Asia/Tokyo', '34.6946', '135.5021', 'python-requests/2.31.0', '2024-02-28 18:38:33', '2024-02-28 18:38:33'),
(395, '125.27.9.57', 'Asia', 'Thailand', 'Ratchaburi', 'Ratchaburi', 'Asia/Bangkok', '13.5856', '99.7889', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36 Edg/86.0.622.69', '2024-02-28 21:38:50', '2024-02-28 21:38:50'),
(396, '209.35.5.205', 'North America', 'United States', '', 'Virginia', 'America/New_York', '38.6583', '-77.2481', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-02-28 23:03:08', '2024-02-28 23:03:08'),
(397, '54.36.148.132', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-29 00:00:29', '2024-02-29 00:00:29'),
(398, '54.36.148.127', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-02-29 00:00:31', '2024-02-29 00:00:31'),
(399, '124.156.193.7', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-02-29 03:45:32', '2024-02-29 03:45:32'),
(400, '208.113.188.106', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-02-29 13:39:50', '2024-02-29 13:39:50'),
(401, '130.255.166.121', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2024-02-29 20:22:48', '2024-02-29 20:22:48'),
(402, '130.255.166.90', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2024-02-29 20:22:48', '2024-02-29 20:22:48'),
(403, '130.255.166.79', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2024-02-29 20:22:49', '2024-02-29 20:22:49'),
(404, '101.44.251.62', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-02-29 23:56:45', '2024-02-29 23:56:45'),
(405, '178.62.72.193', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-01 00:50:16', '2024-03-01 00:50:16'),
(406, '52.11.111.7', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-01 04:08:59', '2024-03-01 04:08:59'),
(407, '34.219.25.46', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-01 04:09:01', '2024-03-01 04:09:01'),
(408, '154.28.144.59', 'North America', 'United States', '', 'New York', 'America/New_York', '40.7064', '-73.9473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2024-03-01 08:41:46', '2024-03-01 08:41:46'),
(409, '92.119.36.52', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.71 Safari/537.36', '2024-03-01 10:09:15', '2024-03-01 10:09:15'),
(410, '173.252.87.2', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-01 11:43:32', '2024-03-01 11:43:32'),
(411, '199.45.154.65', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-01 15:09:18', '2024-03-01 15:09:18'),
(412, '93.174.93.127', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'python-requests/2.31.0', '2024-03-01 15:41:03', '2024-03-01 15:41:03'),
(413, '93.174.93.127', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'python-requests/2.31.0', '2024-03-01 15:41:03', '2024-03-01 15:41:03'),
(414, '199.45.155.35', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-01 16:08:32', '2024-03-01 16:08:32'),
(415, '165.232.145.16', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.3931', '-121.962', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-02 03:37:35', '2024-03-02 03:37:35'),
(416, '37.19.223.222', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36 OPR/53.0.2907.99', '2024-03-02 08:36:57', '2024-03-02 08:36:57'),
(417, '101.44.249.107', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-02 14:29:22', '2024-03-02 14:29:22'),
(418, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-02 14:47:41', '2024-03-02 14:47:41'),
(419, '92.119.36.22', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2024-03-02 14:57:56', '2024-03-02 14:57:56'),
(420, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-02 18:19:51', '2024-03-02 18:19:51'),
(421, '212.227.216.30', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-02 19:01:57', '2024-03-02 19:01:57'),
(422, '146.190.49.193', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.3931', '-121.962', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-03 00:41:02', '2024-03-03 00:41:02'),
(423, '34.219.57.8', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-03 04:13:22', '2024-03-03 04:13:22'),
(424, '110.138.55.224', 'Asia', 'Indonesia', 'Jakarta', 'Jakarta', 'Asia/Jakarta', '-6.2114', '106.8446', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 Edg/90.0.818.56', '2024-03-03 04:15:09', '2024-03-03 04:15:09'),
(425, '68.178.174.170', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36', '2024-03-03 06:19:04', '2024-03-03 06:19:04'),
(426, '17.241.75.146', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-03 07:21:08', '2024-03-03 07:21:08'),
(427, '128.90.128.17', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-03-03 08:42:33', '2024-03-03 08:42:33'),
(428, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-03 09:55:27', '2024-03-03 09:55:27'),
(429, '66.249.66.33', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-03 10:03:13', '2024-03-03 10:03:13'),
(430, '143.110.150.70', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.3931', '-121.962', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-03 10:59:28', '2024-03-03 10:59:28'),
(431, '157.245.78.31', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.0; +https://openai.com/gptbot)', '2024-03-03 11:00:59', '2024-03-03 11:00:59'),
(432, '64.227.125.104', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-03 11:06:03', '2024-03-03 11:06:03'),
(433, '84.246.85.11', 'Europe', 'The Netherlands', 'Meppel', 'Drenthe', 'Europe/Amsterdam', '52.6958', '6.1956', '2ip bot/1.1 (+http://2ip.io)', '2024-03-03 11:14:14', '2024-05-14 10:58:50'),
(434, '157.245.78.35', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', '2024-03-03 11:15:17', '2024-03-03 11:15:17'),
(435, '222.79.103.59', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-03 16:12:59', '2024-03-03 16:12:59'),
(436, '93.158.91.25', 'Europe', 'Sweden', 'Västerås', 'Västmanland County', 'Europe/Stockholm', '59.6146', '16.5528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-03-03 20:27:59', '2024-03-03 20:27:59'),
(437, '54.36.149.88', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-03 22:50:48', '2024-03-03 22:50:48'),
(438, '123.187.240.242', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-04 02:47:05', '2024-03-04 02:47:05'),
(439, '42.83.147.53', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-03-04 05:37:02', '2024-03-04 05:37:02'),
(440, '199.45.155.17', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-04 07:17:08', '2024-03-04 07:17:08'),
(441, '199.45.155.19', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-04 09:56:53', '2024-03-04 09:56:53'),
(442, '111.172.249.49', 'Asia', 'China', 'Wuhan', 'Hubei', 'Asia/Shanghai', '30.589', '114.2681', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-04 18:20:29', '2024-03-04 18:20:29'),
(443, '122.176.192.92', 'Asia', 'India', 'New Delhi', 'National Capital Territory of Delhi', 'Asia/Kolkata', '28.652', '77.1663', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; Xbox; Xbox One) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edge/44.18363.8131', '2024-03-04 19:26:46', '2024-03-04 19:26:46'),
(444, '173.239.214.97', 'North America', 'United States', 'Edison', 'New Jersey', 'America/New_York', '40.5237', '-74.4151', 'Go-http-client/2.0', '2024-03-05 00:55:15', '2024-03-05 00:55:15'),
(445, '159.65.56.217', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-05 01:07:50', '2024-03-05 01:07:50'),
(446, '216.24.212.236', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (Windows NT 11.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5814.214 Safari/537.36', '2024-03-05 02:52:51', '2024-03-05 02:52:51'),
(447, '40.77.167.23', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-05 03:14:15', '2024-03-05 03:14:15'),
(448, '178.254.12.183', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-03-05 03:36:36', '2024-03-05 03:36:36'),
(449, '40.77.167.50', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-05 04:03:09', '2024-03-05 04:03:09'),
(450, '54.191.82.49', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-05 04:13:27', '2024-03-05 04:13:27'),
(451, '18.236.84.205', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-05 04:14:24', '2024-03-05 04:14:24'),
(452, '35.87.98.201', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-05 04:18:26', '2024-03-05 04:18:26'),
(453, '128.199.167.145', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-03-05 05:05:14', '2024-03-05 05:05:14'),
(454, '67.220.86.160', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (X11; Linux x86_64; rv:55.0) Gecko/20100101 Firefox/55.0', '2024-03-05 09:05:50', '2024-03-05 09:05:50'),
(455, '17.241.75.160', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-05 11:06:17', '2024-03-05 11:06:17'),
(456, '17.241.75.16', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-05 11:11:31', '2024-03-05 11:11:31'),
(457, '18.201.225.35', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-03-05 13:52:46', '2024-03-05 13:52:46'),
(458, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-05 16:07:21', '2024-03-05 16:07:21'),
(459, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.139 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-05 16:07:25', '2024-03-05 16:07:25'),
(460, '89.149.23.239', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2024-03-05 17:32:39', '2024-03-05 17:32:39'),
(461, '18.202.29.249', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-03-05 20:27:59', '2024-03-05 20:27:59'),
(462, '51.132.38.44', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-05 23:28:39', '2024-03-05 23:28:39'),
(463, '40.77.167.1', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-06 03:07:21', '2024-03-06 03:07:21'),
(464, '5.133.192.175', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 8.1.0; jhs561 Build/GIADA.eng.zc.20200922.153858; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/81.0.4044.138 Safari/537.36', '2024-03-06 09:01:35', '2024-03-06 09:01:35'),
(465, '5.133.192.203', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 8.1.0; jhs561 Build/GIADA.eng.zc.20200922.153858; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/81.0.4044.138 Safari/537.36', '2024-03-06 09:01:36', '2024-03-06 09:01:36'),
(466, '192.121.135.39', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 8.1.0; jhs561 Build/GIADA.eng.zc.20200922.153858; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/81.0.4044.138 Safari/537.36', '2024-03-06 09:01:36', '2024-03-06 09:01:36'),
(467, '185.61.154.16', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-06 10:33:00', '2024-03-06 10:33:00'),
(468, '67.222.142.146', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-06 11:24:51', '2024-03-06 11:24:51'),
(469, '89.248.172.174', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'python-requests/2.31.0', '2024-03-06 11:41:06', '2024-03-06 11:41:06'),
(470, '89.248.172.174', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'python-requests/2.31.0', '2024-03-06 11:41:06', '2024-03-06 11:41:06'),
(471, '36.73.181.217', 'Asia', 'Indonesia', 'Situbondo', 'East Java', 'Asia/Jakarta', '-7.7125', '114.0081', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68', '2024-03-06 13:59:57', '2024-03-06 13:59:57'),
(472, '182.42.104.32', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-06 14:44:21', '2024-03-06 14:44:21'),
(473, '146.70.174.180', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-06 15:07:54', '2024-03-06 15:07:54'),
(474, '35.241.255.75', 'Europe', 'Belgium', 'Brussels', 'Brussels Capital', 'Europe/Brussels', '50.8534', '4.347', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-03-06 16:20:24', '2024-03-06 16:20:24'),
(475, '35.241.255.75', 'Europe', 'Belgium', 'Brussels', 'Brussels Capital', 'Europe/Brussels', '50.8534', '4.347', 'Python/3.8 aiohttp/3.9.1', '2024-03-06 16:20:25', '2024-03-06 16:20:25'),
(476, '51.81.46.212', 'North America', 'United States', 'Warrenton', 'Virginia', 'America/New_York', '38.719', '-77.7416', NULL, '2024-03-06 21:22:31', '2024-03-06 21:22:31'),
(477, '34.174.59.123', 'North America', 'United States', 'Dallas', 'Texas', 'America/Chicago', '32.7797', '-96.8022', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-03-07 00:34:50', '2024-03-07 00:34:50'),
(478, '142.93.212.216', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-07 01:55:16', '2024-03-07 01:55:16'),
(479, '35.165.240.177', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-07 04:13:28', '2024-03-07 04:13:28'),
(480, '54.190.139.159', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-07 04:13:32', '2024-03-07 04:13:32'),
(481, '17.241.227.51', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-07 11:49:59', '2024-03-07 11:49:59'),
(482, '69.63.184.6', 'North America', 'United States', 'Social Circle', 'Georgia', 'America/New_York', '33.6816', '-83.6851', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-08 02:20:08', '2024-03-08 02:20:08'),
(483, '209.97.180.8', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', NULL, '2024-03-08 05:32:16', '2024-03-08 05:32:16'),
(484, '209.97.180.8', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA270239) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.3589.98 Mobile Safari/537.3', '2024-03-08 05:32:17', '2024-03-08 05:32:17'),
(485, '209.97.180.8', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Go-http-client/1.1', '2024-03-08 05:32:19', '2024-03-08 05:32:19'),
(486, '205.169.39.104', 'North America', 'United States', 'Del Norte', 'Colorado', 'America/Denver', '37.6479', '-106.4104', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-03-08 05:32:31', '2024-03-08 05:32:31'),
(487, '205.169.39.104', 'North America', 'United States', 'Del Norte', 'Colorado', 'America/Denver', '37.6479', '-106.4104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-03-08 05:32:40', '2024-03-08 05:32:40'),
(488, '51.159.214.65', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-03-08 05:34:21', '2024-03-08 05:34:21'),
(489, '34.118.12.41', 'Europe', 'Poland', 'Warsaw', 'Mazovia', 'Europe/Warsaw', '52.2296', '21.0067', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', '2024-03-08 05:35:23', '2024-03-08 05:35:23'),
(490, '154.28.229.1', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-03-08 05:36:23', '2024-03-08 05:36:23'),
(491, '104.164.173.21', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-03-08 05:36:26', '2024-03-08 05:36:26'),
(492, '88.99.26.177', 'Europe', 'Germany', 'Aachen', 'North Rhine-Westphalia', 'Europe/Berlin', '50.7688', '6.0758', 'Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.5993.80 Mobile Safari/537.36', '2024-03-08 05:38:09', '2024-03-08 05:38:09'),
(493, '54.36.149.57', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-08 05:41:27', '2024-03-08 05:41:27'),
(494, '43.163.1.85', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-08 07:18:03', '2024-03-08 07:18:03'),
(495, '93.174.93.215', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'python-requests/2.31.0', '2024-03-08 09:47:26', '2024-03-08 09:47:26'),
(496, '17.241.219.72', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-08 10:48:16', '2024-03-08 10:48:16'),
(497, '142.202.48.16', 'North America', 'United States', 'New York', 'New York', 'America/New_York', '40.7123', '-74.0068', 'Apache/2.4.34 (Ubuntu) OpenSSL/1.1.1 (internal dummy connection)', '2024-03-08 11:30:56', '2024-03-08 11:30:56'),
(498, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (X11; Linux i586; rv:31.0) Gecko/20100101 Firefox/31.0', '2024-03-08 13:58:40', '2024-03-08 13:58:40'),
(499, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8b2) Gecko/20050702', '2024-03-08 15:08:51', '2024-03-08 15:08:51'),
(500, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0', '2024-03-08 15:31:14', '2024-03-08 15:31:14'),
(501, '212.227.216.213', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-08 15:34:56', '2024-03-08 15:34:56'),
(502, '212.227.216.133', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-08 15:43:49', '2024-03-08 15:43:49'),
(503, '101.44.249.49', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-08 16:20:39', '2024-03-08 16:20:39'),
(504, '47.251.11.3', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-03-09 01:44:43', '2024-03-09 01:44:43'),
(505, '47.89.195.210', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-03-09 01:44:45', '2024-03-09 01:44:45'),
(506, '47.88.5.56', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-03-09 01:44:48', '2024-03-09 01:44:48'),
(507, '143.198.9.177', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-09 02:03:37', '2024-03-09 02:03:37'),
(508, '182.44.9.147', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-09 02:27:40', '2024-03-09 02:27:40'),
(509, '69.63.184.9', 'North America', 'United States', 'Social Circle', 'Georgia', 'America/New_York', '33.6816', '-83.6851', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-09 02:39:55', '2024-03-09 02:39:55'),
(510, '64.227.170.189', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-09 08:40:21', '2024-03-09 08:40:21'),
(511, '35.225.82.182', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2024-03-09 09:20:42', '2024-03-09 09:20:42'),
(512, '213.202.233.34', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-03-09 09:58:36', '2024-05-07 11:35:10'),
(513, '104.197.254.109', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'python-httpx/0.22.0', '2024-03-09 10:15:58', '2024-03-09 10:15:58'),
(514, '103.230.107.40', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-09 14:10:11', '2024-03-09 14:10:11'),
(515, '5.133.192.135', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-03-09 15:01:17', '2024-03-09 15:01:17'),
(516, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-09 16:09:30', '2024-03-09 16:09:30'),
(517, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-09 16:09:30', '2024-03-09 16:09:30'),
(518, '54.36.148.204', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-09 19:01:49', '2024-03-09 19:01:49'),
(519, '54.36.148.83', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-09 19:01:51', '2024-03-09 19:01:51'),
(520, '202.239.4.206', 'Asia', 'Japan', '', '', 'Asia/Tokyo', '35.6897', '139.6895', 'Mozilla/5.0 (compatible; Y!J-WSC/1.0; +https://yahoo.jp/3BSZgF)', '2024-03-09 22:08:12', '2024-03-09 22:08:12'),
(521, '202.239.4.194', 'Asia', 'Japan', '', '', 'Asia/Tokyo', '35.6897', '139.6895', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; Y!J-WSC/1.0; +https://yahoo.jp/3BSZgF) Chrome/120.0.0.0 Safari/537.36', '2024-03-09 22:08:16', '2024-03-09 22:08:16'),
(522, '147.78.103.90', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.364', '4.8913', NULL, '2024-03-09 23:28:12', '2024-03-09 23:28:12'),
(523, '223.113.128.219', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'curl/7.29.0', '2024-03-10 02:03:56', '2024-03-10 02:03:56'),
(524, '52.167.144.16', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-10 03:34:15', '2024-03-10 03:34:15'),
(525, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 10.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3546.88 Safari/537.36', '2024-03-10 03:53:42', '2024-03-10 03:53:42'),
(526, '200.208.59.2', 'South America', 'Brazil', 'Cuiabá', 'Mato Grosso', 'America/Cuiaba', '-15.597', '-56.0958', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-03-10 04:03:23', '2024-03-10 04:03:23'),
(527, '66.249.66.33', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-10 07:11:45', '2024-03-10 07:11:45'),
(528, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-10 07:11:46', '2024-03-10 07:11:46'),
(529, '209.182.219.227', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 CK={} (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2024-03-10 08:36:18', '2024-03-10 08:36:18'),
(530, '103.230.107.26', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-10 08:52:22', '2024-03-10 08:52:22'),
(531, '173.252.107.9', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-10 12:39:44', '2024-03-10 12:39:44'),
(532, '103.127.3.141', 'Asia', 'Bangladesh', 'Chittagong', 'Chittagong', 'Asia/Dhaka', '22.3468', '91.83', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/448.0.0.44.109;FBBV/573299778;FBDV/iPhone14,3;FBMD/iPhone;FBSN/iOS;FBSV/17.3.1;FBSS/3;FBCR/;FBID/phone;FBLC/en-GB;FBOP/80]', '2024-03-10 12:39:49', '2024-03-10 12:39:49'),
(533, '103.230.106.26', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-10 12:40:26', '2024-03-10 12:40:26'),
(534, '70.34.208.213', 'Europe', 'Sweden', 'Spanga', 'Stockholm County', 'Europe/Stockholm', '59.3779', '17.9155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-03-10 12:52:44', '2024-03-10 12:52:44'),
(535, '65.154.226.166', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2024-03-10 23:06:07', '2024-05-08 05:44:47'),
(536, '34.238.159.203', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-03-10 23:07:02', '2024-03-10 23:07:02'),
(537, '138.68.132.113', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-11 01:06:28', '2024-03-11 01:06:28'),
(538, '182.44.2.148', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-11 02:06:51', '2024-03-11 02:06:51'),
(539, '44.234.110.207', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-11 02:27:04', '2024-03-11 02:27:04'),
(540, '40.77.167.33', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-11 02:27:47', '2024-03-11 02:27:47'),
(541, '89.187.164.172', 'North America', 'United States', 'Dallas', 'Texas', 'America/Chicago', '32.7797', '-96.8022', NULL, '2024-03-11 02:39:44', '2024-03-11 02:39:44'),
(542, '44.193.25.146', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '2024-03-11 06:30:03', '2024-03-11 06:30:03'),
(543, '184.168.28.1', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-03-11 07:03:49', '2024-03-11 07:03:49'),
(544, '101.44.249.235', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-11 16:44:22', '2024-03-11 16:44:22'),
(545, '185.220.101.46', 'Europe', 'Germany', 'Brandenburg', 'Brandenburg', 'Europe/Berlin', '52.6171', '13.1207', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '2024-03-11 17:03:45', '2024-03-11 17:03:45'),
(546, '68.183.54.131', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-03-11 18:15:17', '2024-03-11 18:15:17'),
(547, '51.254.199.11', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2024-03-11 18:48:39', '2024-03-11 18:48:39'),
(548, '87.236.176.118', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-11 21:01:00', '2024-03-11 21:01:00'),
(549, '52.81.203.9', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/591.50 (KHTML, like Gecko) Chrome/89.0.1575 Safari/537.36', '2024-03-11 21:31:48', '2024-03-11 21:31:48'),
(550, '52.81.208.25', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Go-http-client/1.1', '2024-03-11 22:02:08', '2024-03-11 22:02:08'),
(551, '52.81.208.25', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Mozilla/5.0 (Windows NT 8_1; Win64; x64) AppleWebKit/572.42 (KHTML, like Gecko) Chrome/85.0.496 Safari/537.36', '2024-03-11 22:02:44', '2024-03-11 22:02:44'),
(552, '93.158.90.71', 'Europe', 'Sweden', 'Västerås', 'Västmanland County', 'Europe/Stockholm', '59.6146', '16.5528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-11 23:01:59', '2024-03-11 23:01:59'),
(553, '93.158.90.70', 'Europe', 'Sweden', 'Västerås', 'Västmanland County', 'Europe/Stockholm', '59.6146', '16.5528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-11 23:02:00', '2024-03-11 23:02:00'),
(554, '93.158.90.72', 'Europe', 'Sweden', 'Västerås', 'Västmanland County', 'Europe/Stockholm', '59.6146', '16.5528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-11 23:02:00', '2024-03-11 23:02:00'),
(555, '89.248.174.9', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'python-requests/2.31.0', '2024-03-11 23:43:22', '2024-03-11 23:43:22'),
(556, '89.248.174.9', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'python-requests/2.31.0', '2024-03-11 23:43:22', '2024-03-11 23:43:22'),
(557, '46.4.33.48', 'Europe', 'Germany', 'Bad Muenstereifel', 'North Rhine-Westphalia', 'Europe/Berlin', '50.5597', '6.7705', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.0.1) Gecko/2008070208', '2024-03-12 00:15:01', '2024-03-12 00:15:01'),
(558, '207.46.13.153', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-12 02:36:40', '2024-03-12 02:36:40'),
(559, '82.165.224.106', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-12 03:30:05', '2024-03-12 03:30:05'),
(560, '82.165.224.122', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-12 03:38:24', '2024-03-12 03:38:24'),
(561, '157.55.39.13', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-12 03:42:25', '2024-03-12 03:42:25'),
(562, '46.101.80.192', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36', '2024-03-12 04:23:20', '2024-03-12 04:23:20'),
(563, '42.83.147.34', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-03-12 08:29:12', '2024-03-12 08:29:12'),
(564, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-12 11:32:38', '2024-03-12 11:32:38'),
(565, '64.15.129.103', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-12 13:48:47', '2024-03-12 13:48:47'),
(566, '64.15.129.124', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-12 13:48:49', '2024-03-12 13:48:49'),
(567, '192.175.111.249', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-12 13:49:06', '2024-03-12 13:49:06'),
(568, '192.175.111.253', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-12 13:49:07', '2024-03-12 13:49:07'),
(569, '5.61.55.96', 'Europe', 'The Netherlands', 'Dronten', 'Flevoland', 'Europe/Amsterdam', '52.5281', '5.7137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2024-03-12 13:51:25', '2024-03-12 13:51:25'),
(570, '92.223.85.247', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '2024-03-12 19:23:28', '2024-03-12 19:23:28'),
(571, '103.253.24.156', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'python-requests/2.27.1', '2024-03-12 22:11:21', '2024-03-12 22:11:21'),
(572, '165.232.108.139', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-13 01:43:59', '2024-03-13 01:43:59'),
(573, '113.141.91.58', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-13 03:43:38', '2024-03-13 03:43:38'),
(574, '54.200.37.174', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-13 04:18:44', '2024-03-13 04:18:44');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(575, '54.212.65.249', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-13 04:18:48', '2024-03-13 04:18:48'),
(576, '31.13.115.117', 'Europe', 'Sweden', 'Luleå', 'Norrbotten County', 'Europe/Stockholm', '65.5864', '22.1457', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-13 07:28:57', '2024-03-13 07:28:57'),
(577, '122.201.124.74', 'Oceania', 'Australia', '', '', 'Australia/Sydney', '-33.494', '143.2104', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-13 09:18:49', '2024-03-13 09:18:49'),
(578, '42.240.135.244', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Go-http-client/2.0', '2024-03-13 13:37:36', '2024-03-13 13:37:36'),
(579, '161.35.124.194', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-03-13 15:58:41', '2024-03-13 15:58:41'),
(580, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-13 16:05:05', '2024-03-13 16:05:05'),
(581, '66.249.66.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-13 16:05:09', '2024-03-13 16:05:09'),
(582, '185.220.101.45', 'Europe', 'Germany', 'Brandenburg', 'Brandenburg', 'Europe/Berlin', '52.6171', '13.1207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', '2024-03-13 20:50:28', '2024-03-13 20:50:28'),
(583, '3.249.50.132', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Pandalytics/1.0 (https://domainsbot.com/pandalytics/)', '2024-03-13 23:33:46', '2024-03-13 23:33:46'),
(584, '128.90.128.18', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1188', '8.6843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-03-14 00:04:25', '2024-03-14 00:04:25'),
(585, '178.254.24.91', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-03-14 00:50:05', '2024-03-14 00:50:05'),
(586, '89.23.107.132', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/89.0.4447.51', '2024-03-14 02:36:07', '2024-03-14 02:36:07'),
(587, '54.218.186.206', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-03-14 03:56:24', '2024-03-14 03:56:24'),
(588, '123.249.109.227', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Linux; Android 11; Pro Build/RKQ2.200567.005; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/81.0.4044.145 Mobile Safari/537.36', '2024-03-14 05:41:48', '2024-03-14 05:41:48'),
(589, '34.223.48.49', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-03-14 07:10:25', '2024-03-14 07:10:25'),
(590, '64.15.129.101', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-14 07:18:52', '2024-03-14 07:18:52'),
(591, '64.15.129.100', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-14 07:19:10', '2024-03-14 07:19:10'),
(592, '64.15.129.102', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-14 07:19:11', '2024-03-14 07:19:11'),
(593, '120.71.59.24', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-14 09:40:15', '2024-03-14 09:40:15'),
(594, '135.148.195.3', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2024-03-14 10:19:14', '2024-03-14 10:19:14'),
(595, '37.19.223.200', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2024-03-14 12:11:42', '2024-03-14 12:11:42'),
(596, '84.239.45.11', 'North America', 'United States', 'Providence', 'Rhode Island', 'America/New_York', '41.8244', '-71.408', 'panscient.com', '2024-03-14 14:08:45', '2024-03-14 14:08:45'),
(597, '101.44.251.191', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-14 15:42:40', '2024-03-14 15:42:40'),
(598, '54.36.149.1', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-14 17:51:37', '2024-03-14 17:51:37'),
(599, '54.36.148.193', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-14 17:51:48', '2024-03-14 17:51:48'),
(600, '182.42.105.85', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-14 19:39:32', '2024-03-14 19:39:32'),
(601, '172.174.232.79', 'North America', 'United States', 'Washington', 'Virginia', 'America/New_York', '38.7095', '-78.1539', 'python-requests/2.27.1', '2024-03-14 21:36:48', '2024-03-14 21:36:48'),
(602, '199.45.154.19', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-14 22:25:11', '2024-03-14 22:25:11'),
(603, '139.59.64.192', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', NULL, '2024-03-15 00:25:38', '2024-03-15 00:25:38'),
(604, '64.23.192.134', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-15 00:58:06', '2024-03-15 00:58:06'),
(605, '199.244.88.232', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-03-15 02:43:39', '2024-03-15 02:43:39'),
(606, '35.90.178.183', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-15 04:07:24', '2024-03-15 04:07:24'),
(607, '54.71.180.249', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-15 04:07:26', '2024-03-15 04:07:26'),
(608, '87.236.176.211', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-15 04:51:33', '2024-03-15 04:51:33'),
(609, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 10.7; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.2171.88 Safari/537.36', '2024-03-15 05:36:51', '2024-03-15 05:36:51'),
(610, '5.133.192.108', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-03-15 08:15:43', '2024-03-15 08:15:43'),
(611, '13.59.43.55', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', NULL, '2024-03-15 09:07:22', '2024-03-15 09:07:22'),
(612, '101.44.248.49', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-15 12:25:41', '2024-03-15 12:25:41'),
(613, '45.141.215.132', 'Europe', 'Poland', 'Warsaw', 'Mazovia', 'Europe/Warsaw', '52.2296', '21.0067', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-03-15 12:53:55', '2024-03-15 12:53:55'),
(614, '54.36.149.28', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-15 18:56:13', '2024-03-15 18:56:13'),
(615, '173.252.87.116', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-15 23:59:58', '2024-03-15 23:59:58'),
(616, '69.160.160.50', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Nicecrawler/1.1; +http://www.nicecrawler.com/) Chrome/90.0.4430.97 Safari/537.36', '2024-03-16 01:13:58', '2024-03-16 01:13:58'),
(617, '69.160.160.50', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/78.0.3904.70 Safari/537.36', '2024-03-16 01:14:03', '2024-03-16 01:14:03'),
(618, '36.134.147.75', 'Asia', 'China', 'Guangzhou', 'Guangdong', 'Asia/Shanghai', '23.1181', '113.2539', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-16 02:51:48', '2024-03-16 02:51:48'),
(619, '44.234.144.157', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-03-16 08:36:44', '2024-03-16 08:36:44'),
(620, '54.36.148.118', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-16 09:38:02', '2024-03-16 09:38:02'),
(621, '64.23.214.106', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '2024-03-16 12:24:16', '2024-03-16 12:24:16'),
(622, '65.154.226.170', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2024-03-16 15:45:13', '2024-04-20 13:44:41'),
(623, '87.236.176.241', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-16 16:39:18', '2024-03-16 16:39:18'),
(624, '167.99.181.223', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-17 02:29:16', '2024-03-17 02:29:16'),
(625, '173.252.107.117', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-17 04:46:34', '2024-03-17 04:46:34'),
(626, '103.230.106.44', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Linux; Android 12; Redmi Note 9 Pro Max Build/SKQ1.211019.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.64 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/449.0.0.47.111;]', '2024-03-17 04:46:53', '2024-03-17 04:46:53'),
(627, '64.15.129.104', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:08:37', '2024-03-17 05:08:37'),
(628, '64.15.129.111', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:08:39', '2024-03-17 05:08:39'),
(629, '192.175.111.251', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:08:58', '2024-03-17 05:08:58'),
(630, '192.175.111.242', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:09:00', '2024-03-17 05:09:00'),
(631, '192.175.111.233', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:09:02', '2024-03-17 05:09:02'),
(632, '64.15.129.126', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:09:19', '2024-03-17 05:09:19'),
(633, '192.175.111.229', 'North America', 'Canada', '', '', 'America/Toronto', '43.6319', '-79.3716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 05:09:20', '2024-03-17 05:09:20'),
(634, '103.234.202.85', 'Asia', 'Bangladesh', 'Bogra', 'Bogra', 'Asia/Dhaka', '24.813', '89.3152', 'Mozilla/5.0 (Linux; Android 13; SM-M127G Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.106 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/449.0.0.47.111;]', '2024-03-17 05:28:37', '2024-03-17 05:28:37'),
(635, '130.255.165.110', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-17 10:52:33', '2024-03-17 10:52:33'),
(636, '151.248.1.103', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-17 10:52:34', '2024-03-17 10:52:34'),
(637, '93.158.98.56', 'Europe', 'Norway', 'Oslo', 'Oslo County', 'Europe/Oslo', '59.955', '10.859', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2024-03-17 10:52:35', '2024-03-17 10:52:35'),
(638, '94.156.64.15', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '2024-03-17 17:47:11', '2024-03-17 17:47:11'),
(639, '82.165.224.240', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-17 21:27:03', '2024-03-17 21:27:03'),
(640, '82.165.224.192', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-17 21:32:03', '2024-03-17 21:32:03'),
(641, '89.248.172.92', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'python-requests/2.31.0', '2024-03-17 22:09:55', '2024-03-17 22:09:55'),
(642, '45.133.4.24', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-03-17 22:38:52', '2024-03-17 22:38:52'),
(643, '45.133.4.40', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-03-17 22:38:57', '2024-03-17 22:38:57'),
(644, '101.44.249.110', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-18 03:01:54', '2024-03-18 03:01:54'),
(645, '18.232.107.72', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-03-18 03:35:19', '2024-03-18 03:35:19'),
(646, '66.249.83.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-18 04:37:32', '2024-03-18 04:37:32'),
(647, '66.249.83.32', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-18 04:37:33', '2024-03-18 04:37:33'),
(648, '66.249.83.33', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-18 04:37:35', '2024-03-18 04:37:35'),
(649, '150.109.16.20', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-18 04:49:43', '2024-03-18 04:49:43'),
(650, '3.92.63.167', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-03-18 07:56:44', '2024-03-18 07:56:44'),
(651, '17.241.75.38', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-18 09:02:00', '2024-03-18 09:02:00'),
(652, '17.241.219.231', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-18 09:06:51', '2024-03-18 09:06:51'),
(653, '142.202.48.16', 'North America', 'United States', 'New York', 'New York', 'America/New_York', '40.7123', '-74.0068', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-03-18 12:18:10', '2024-03-18 12:18:10'),
(654, '17.241.75.216', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-18 13:23:26', '2024-03-18 13:23:26'),
(655, '17.246.23.88', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-03-18 13:30:26', '2024-03-18 13:30:26'),
(656, '43.163.0.99', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-18 14:09:52', '2024-03-18 14:09:52'),
(657, '128.199.31.190', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-19 02:14:33', '2024-03-19 02:14:33'),
(658, '52.25.224.45', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-19 04:24:53', '2024-03-19 04:24:53'),
(659, '18.237.184.180', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-19 04:24:54', '2024-03-19 04:24:54'),
(660, '144.76.67.169', 'Europe', 'Germany', 'Bad Bellingen', 'Baden-Wurttemberg', 'Europe/Berlin', '47.7328', '7.5505', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-03-19 10:35:13', '2024-03-19 10:35:13'),
(661, '59.103.55.254', 'Asia', 'Pakistan', 'Lahore', 'Punjab', 'Asia/Karachi', '31.5826', '74.3276', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '2024-03-19 14:04:23', '2024-03-19 14:04:23'),
(662, '128.90.141.17', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-03-19 17:40:00', '2024-03-19 17:40:00'),
(663, '49.7.227.204', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-20 04:02:17', '2024-03-20 04:02:17'),
(664, '69.63.184.1', 'North America', 'United States', 'Social Circle', 'Georgia', 'America/New_York', '33.6816', '-83.6851', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-20 06:30:41', '2024-03-20 06:30:41'),
(665, '69.63.184.17', 'North America', 'United States', 'Social Circle', 'Georgia', 'America/New_York', '33.6816', '-83.6851', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-20 06:30:43', '2024-03-20 06:30:43'),
(666, '91.92.245.210', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', NULL, '2024-03-20 15:09:04', '2024-03-20 15:09:04'),
(667, '86.127.230.205', 'Europe', 'Spain', '', '', 'Europe/Madrid', '40.4172', '-3.684', 'Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36', '2024-03-20 17:56:01', '2024-03-20 17:56:01'),
(668, '199.45.154.64', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-20 20:30:51', '2024-03-20 20:30:51'),
(669, '64.226.82.62', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-21 00:36:08', '2024-03-21 00:36:08'),
(670, '149.56.150.85', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-03-21 01:35:04', '2024-03-21 01:35:04'),
(671, '149.56.150.85', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (Linux; Android 10; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Mobile Safari/537.36', '2024-03-21 01:35:10', '2024-03-21 01:35:10'),
(672, '149.56.150.150', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-03-21 01:35:28', '2024-03-21 01:35:28'),
(673, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-21 02:14:31', '2024-03-21 02:14:31'),
(674, '54.190.35.32', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-21 04:57:45', '2024-03-21 04:57:45'),
(675, '34.220.37.6', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-21 04:57:48', '2024-03-21 04:57:48'),
(676, '124.225.164.130', 'Asia', 'China', 'Hangzhou', 'Zhejiang', 'Asia/Shanghai', '30.2994', '120.1612', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-21 10:22:52', '2024-03-21 10:22:52'),
(677, '3.7.18.179', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-21 11:27:38', '2024-03-21 11:27:38'),
(678, '151.106.12.251', 'Europe', 'France', 'Strasbourg', 'Bas-Rhin', 'Europe/Paris', '48.5855', '7.7418', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Iron Safari/537.36', '2024-03-21 17:55:00', '2024-03-21 17:55:00'),
(679, '8.41.221.50', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 Firefox/33.0', '2024-03-21 20:33:00', '2024-03-21 20:33:00'),
(680, '183.136.225.45', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 QIHU 360SE', '2024-03-21 22:31:32', '2024-03-21 22:31:32'),
(681, '51.15.98.125', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2024-03-22 01:25:30', '2024-03-22 01:25:30'),
(682, '199.45.154.16', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-22 01:31:47', '2024-03-22 01:31:47'),
(683, '135.148.195.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-22 02:59:30', '2024-03-22 02:59:30'),
(684, '54.36.148.191', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-22 05:54:19', '2024-03-22 05:54:19'),
(685, '72.13.62.26', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; ips-agent)', '2024-03-22 08:16:25', '2024-03-22 08:16:25'),
(686, '87.236.176.10', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-22 08:56:32', '2024-03-22 08:56:32'),
(687, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-03-22 09:33:11', '2024-03-22 09:33:11'),
(688, '81.177.136.216', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-22 11:30:49', '2024-03-22 11:30:49'),
(689, '5.42.65.47', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.46 Safari/537.36', '2024-03-22 11:35:00', '2024-03-22 11:35:00'),
(690, '37.19.223.25', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.5414.120 Safari/537.36', '2024-03-22 13:14:57', '2024-03-22 13:14:57'),
(691, '167.88.61.92', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-03-22 15:54:33', '2024-03-22 15:54:33'),
(692, '62.141.44.236', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-03-22 16:05:22', '2024-03-22 16:05:22'),
(693, '38.128.66.69', 'North America', 'United States', 'Chicago', 'Illinois', 'America/Chicago', '41.8874', '-87.6318', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-03-22 18:14:09', '2024-03-22 18:14:09'),
(694, '212.227.216.51', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-22 21:33:36', '2024-03-22 21:33:36'),
(695, '178.62.4.99', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-23 00:20:43', '2024-03-23 00:20:43'),
(696, '138.197.170.115', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-23 01:21:03', '2024-03-23 01:21:03'),
(697, '43.159.128.172', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-23 01:22:00', '2024-03-23 01:22:00'),
(698, '67.205.136.37', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Linux; Android 11; SM-A326U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '2024-03-23 02:37:14', '2024-03-23 02:37:14'),
(699, '39.96.216.30', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-23 08:57:16', '2024-03-23 08:57:16'),
(700, '130.255.166.80', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604', '2024-03-23 11:57:44', '2024-03-23 11:57:44'),
(701, '130.255.166.98', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604', '2024-03-23 11:57:45', '2024-03-23 11:57:45'),
(702, '130.255.166.82', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604', '2024-03-23 11:57:45', '2024-03-23 11:57:45'),
(703, '54.36.148.16', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-23 15:36:03', '2024-03-23 15:36:03'),
(704, '116.206.63.147', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-24 01:50:05', '2024-03-24 01:50:05'),
(705, '116.206.63.147', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-24 01:56:58', '2024-03-24 01:56:58'),
(706, '193.46.243.66', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (compatible; t3versionsBot/1.0; +https://www.t3versions.com/bot)', '2024-03-24 02:56:57', '2024-03-24 02:56:57'),
(707, '101.44.248.85', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-24 06:23:58', '2024-03-24 06:23:58'),
(708, '101.44.251.210', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-24 09:21:46', '2024-03-24 09:21:46'),
(709, '3.110.170.194', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/121.0.0.0 Safari/537.36', '2024-03-24 10:11:02', '2024-03-24 10:11:02'),
(710, '3.17.37.36', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'curl/8.3.0', '2024-03-24 10:57:20', '2024-03-24 10:57:20'),
(711, '54.36.149.48', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-24 15:12:48', '2024-03-24 15:12:48'),
(712, '177.52.160.32', 'South America', 'Brazil', 'São Paulo', 'São Paulo', 'America/Sao_Paulo', '-23.5335', '-46.6359', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-24 16:33:22', '2024-03-24 16:33:22'),
(713, '46.19.138.210', 'Europe', 'Switzerland', 'Zurich', 'Zurich', 'Europe/Zurich', '47.3604', '8.5388', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.71 Safari/537.36 OPR/63.0.3368.17 (Edition beta)', '2024-03-24 20:22:58', '2024-03-24 20:22:58'),
(714, '165.232.32.208', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-25 00:21:02', '2024-03-25 00:21:02'),
(715, '46.29.234.176', 'Europe', 'Lithuania', 'Vilnius', 'Vilnius', 'Europe/Vilnius', '54.8333', '25.3333', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', '2024-03-25 04:08:26', '2024-03-25 04:08:26'),
(716, '45.130.83.16', 'North America', 'United States', 'New York', 'New York', 'America/New_York', '40.7123', '-74.0068', 'Go-http-client/2.0', '2024-03-25 06:32:30', '2024-03-25 06:32:30'),
(717, '54.234.76.128', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '2024-03-25 07:48:21', '2024-03-25 07:48:21'),
(718, '37.19.223.201', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-03-25 20:08:59', '2024-03-25 20:08:59'),
(719, '147.78.47.230', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2024-03-25 20:44:44', '2024-03-25 20:44:44'),
(720, '87.236.176.18', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-25 21:44:39', '2024-03-25 21:44:39'),
(721, '199.45.154.18', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-26 01:01:29', '2024-03-26 01:01:29'),
(722, '109.61.102.55', 'Europe', 'Hungary', 'Budapest', 'Budapest', 'Europe/Budapest', '47.5636', '19.0947', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', '2024-03-26 02:43:58', '2024-03-26 02:43:58'),
(723, '212.227.216.69', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-26 03:50:45', '2024-03-26 03:50:45'),
(724, '212.227.216.53', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-26 04:02:50', '2024-03-26 04:02:50'),
(725, '43.130.39.101', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-26 10:30:29', '2024-03-26 10:30:29'),
(726, '128.90.170.38', 'Europe', 'Poland', 'Warsaw', 'Mazovia', 'Europe/Warsaw', '52.1828', '20.9846', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-03-26 13:41:22', '2024-03-26 13:41:22'),
(727, '154.28.144.96', 'North America', 'United States', '', 'New York', 'America/New_York', '40.7064', '-73.9473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2024-03-26 17:41:11', '2024-03-26 17:41:11'),
(728, '145.220.91.19', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:122.0) Gecko/20100101 Firefox/122.0', '2024-03-26 18:11:29', '2024-03-26 18:11:29'),
(729, '223.93.149.202', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-26 20:19:23', '2024-03-26 20:19:23'),
(730, '199.244.88.229', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-03-26 21:29:41', '2024-03-26 21:29:41'),
(731, '35.235.105.183', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-03-27 01:00:48', '2024-03-27 01:00:48'),
(732, '159.223.221.124', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-27 01:51:23', '2024-03-27 01:51:23'),
(733, '67.220.86.160', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.5.30729; .NET4.0E)', '2024-03-27 04:48:10', '2024-03-27 04:48:10'),
(734, '87.236.176.101', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-03-27 06:49:52', '2024-03-27 06:49:52'),
(735, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-27 08:33:26', '2024-03-27 08:33:26'),
(736, '66.249.66.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-27 11:39:46', '2024-03-27 11:39:46'),
(737, '123.249.116.30', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Linux; U; Android 11; zh-cn; Redmi K30 Pro Build/RKQ1.200826.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.147 Mobile Safari/537.36', '2024-03-27 12:47:29', '2024-03-27 12:47:29'),
(738, '5.188.62.174', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2024-03-28 01:35:54', '2024-03-28 01:35:54'),
(739, '54.36.149.12', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-03-28 02:02:13', '2024-03-28 02:02:13'),
(740, '101.44.248.41', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-03-28 05:30:35', '2024-03-28 05:30:35'),
(741, '36.111.67.189', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-28 10:09:09', '2024-03-28 10:09:09'),
(742, '203.115.100.194', 'Asia', 'India', 'Gurugram', 'Haryana', 'Asia/Kolkata', '28.4597', '77.0282', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-28 10:53:18', '2024-03-28 10:53:18'),
(743, '46.29.234.173', 'Europe', 'Lithuania', 'Vilnius', 'Vilnius', 'Europe/Vilnius', '54.8333', '25.3333', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1264.71', '2024-03-28 13:25:14', '2024-03-28 13:25:14'),
(744, '159.203.38.192', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-29 01:02:46', '2024-03-29 01:02:46'),
(745, '54.191.108.117', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-29 04:03:42', '2024-03-29 04:03:42'),
(746, '52.33.19.225', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-29 04:03:43', '2024-03-29 04:03:43'),
(747, '199.45.155.54', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-29 04:51:38', '2024-03-29 04:51:38'),
(748, '199.45.155.53', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-29 05:13:08', '2024-03-29 05:13:08'),
(749, '135.148.195.3', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', '2024-03-29 05:42:31', '2024-03-29 05:42:31'),
(750, '182.42.111.156', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-03-29 06:08:43', '2024-03-29 06:08:43'),
(751, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 9.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.1247.88 Safari/537.36', '2024-03-29 07:36:23', '2024-03-29 07:36:23'),
(752, '171.244.49.8', 'Asia', 'Vietnam', 'Hanoi', 'Hanoi', 'Asia/Bangkok', '21.0292', '105.8526', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-29 15:02:44', '2024-03-29 15:02:44'),
(753, '92.204.175.86', 'Europe', 'France', 'Strasbourg', 'Bas-Rhin', 'Europe/Paris', '48.5855', '7.7418', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Iron Safari/537.36', '2024-03-30 01:17:13', '2024-03-30 01:17:13'),
(754, '52.167.144.20', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-30 02:16:50', '2024-03-30 02:16:50'),
(755, '40.77.167.22', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-30 03:05:52', '2024-03-30 03:05:52'),
(756, '84.54.51.68', 'Europe', 'The Netherlands', 'Eygelshoven', 'Limburg', 'Europe/Amsterdam', '50.8897', '6.0563', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '2024-03-30 08:16:46', '2024-03-30 08:16:46'),
(757, '89.248.172.115', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2024-03-30 14:10:16', '2024-03-30 14:10:16'),
(758, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-03-30 15:42:54', '2024-03-30 15:42:54'),
(759, '82.165.224.30', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-30 20:06:16', '2024-03-30 20:06:16'),
(760, '82.165.224.14', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-03-30 20:12:13', '2024-03-30 20:12:13'),
(761, '77.75.77.17', 'Europe', 'Czechia', '', '', 'Europe/Prague', '50.0853', '14.411', 'Mozilla/5.0 (compatible; SeznamBot/4.0; +http://napoveda.seznam.cz/seznambot-intro/)', '2024-03-30 22:17:09', '2024-03-30 22:17:09'),
(762, '207.46.13.78', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-31 02:10:14', '2024-03-31 02:10:14'),
(763, '199.45.154.70', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-31 02:20:17', '2024-03-31 02:20:17'),
(764, '199.45.154.20', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-03-31 02:30:57', '2024-03-31 02:30:57'),
(765, '173.252.107.6', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-31 02:34:40', '2024-03-31 02:34:40'),
(766, '159.203.34.4', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-03-31 02:34:50', '2024-03-31 02:34:50'),
(767, '157.55.39.15', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-03-31 02:57:29', '2024-03-31 02:57:29'),
(768, '18.237.240.26', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-31 04:13:31', '2024-03-31 04:13:31');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(769, '34.213.62.85', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-03-31 04:13:33', '2024-03-31 04:13:33'),
(770, '139.59.25.223', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-03-31 11:37:25', '2024-03-31 11:37:25'),
(771, '173.252.107.112', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-03-31 17:51:23', '2024-03-31 17:51:23'),
(772, '157.55.39.55', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-01 02:15:52', '2024-04-01 02:15:52'),
(773, '3.236.106.199', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-04-01 02:52:08', '2024-04-01 02:52:08'),
(774, '207.46.13.128', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-01 03:21:00', '2024-04-01 03:21:00'),
(775, '44.222.107.181', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'got (https://github.com/sindresorhus/got)', '2024-04-01 09:54:36', '2024-04-01 09:54:36'),
(776, '173.252.87.118', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-01 09:55:17', '2024-04-01 09:55:17'),
(777, '34.162.232.45', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-04-01 13:10:05', '2024-04-01 13:10:05'),
(778, '5.133.192.87', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-01 15:52:40', '2024-04-01 15:52:40'),
(779, '13.212.96.93', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', NULL, '2024-04-01 17:58:51', '2024-04-01 17:58:51'),
(780, '134.209.42.109', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-04-01 18:20:30', '2024-04-01 18:20:30'),
(781, '107.189.7.191', 'Europe', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Europe/Luxembourg', '49.6113', '6.1294', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', '2024-04-01 20:24:30', '2024-04-01 20:24:30'),
(782, '186.10.84.234', 'South America', 'Chile', 'Santiago', 'Santiago Metropolitan', 'America/Santiago', '-33.4521', '-70.6536', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-04-01 20:26:04', '2024-04-01 20:26:04'),
(783, '185.184.155.105', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-01 21:34:17', '2024-04-01 21:34:17'),
(784, '195.90.221.76', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-04-01 23:28:59', '2024-04-01 23:28:59'),
(785, '157.55.39.10', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-02 02:13:00', '2024-04-02 02:13:00'),
(786, '134.209.147.149', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-02 02:58:44', '2024-04-02 02:58:44'),
(787, '207.46.13.154', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-02 03:10:45', '2024-04-02 03:10:45'),
(788, '34.221.203.16', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-02 04:37:47', '2024-04-02 04:37:47'),
(789, '35.93.96.137', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-02 04:37:58', '2024-04-02 04:37:58'),
(790, '54.36.148.23', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-02 05:19:09', '2024-04-02 05:19:09'),
(791, '54.36.148.25', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-02 05:19:11', '2024-04-02 05:19:11'),
(792, '176.9.18.134', 'Europe', 'Germany', 'Falkenstein', 'Saxony', 'Europe/Berlin', '50.4777', '12.3649', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/122 Mobile/15E148 Version/15.0', '2024-04-02 05:21:05', '2024-04-02 05:21:05'),
(793, '54.36.148.208', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-02 13:09:04', '2024-04-02 13:09:04'),
(794, '188.126.94.213', 'Europe', 'Denmark', 'Copenhagen', 'Capital Region', 'Europe/Copenhagen', '55.6798', '12.4287', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.71 Safari/537.36', '2024-04-02 18:03:01', '2024-04-02 18:03:01'),
(795, '182.44.12.37', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-02 20:20:30', '2024-04-02 20:20:30'),
(796, '185.220.101.62', 'Europe', 'Germany', 'Brandenburg', 'Brandenburg', 'Europe/Berlin', '52.6171', '13.1207', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', '2024-04-03 00:24:04', '2024-04-03 00:24:04'),
(797, '119.148.61.149', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-03 00:44:06', '2024-04-03 00:44:06'),
(798, '20.7.221.176', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-03 00:44:26', '2024-04-03 00:44:26'),
(799, '54.36.148.8', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-03 01:05:28', '2024-04-03 01:05:28'),
(800, '13.48.190.46', 'Europe', 'Sweden', 'Stockholm', 'Stockholm County', 'Europe/Stockholm', '59.3241', '18.0517', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2024-04-03 02:26:36', '2024-04-03 02:26:36'),
(801, '3.253.173.194', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-04-03 10:45:47', '2024-04-03 10:45:47'),
(802, '54.76.121.168', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-04-03 13:41:23', '2024-04-03 13:41:23'),
(803, '82.165.224.116', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-03 17:39:53', '2024-04-03 17:39:53'),
(804, '82.165.224.52', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-03 17:45:46', '2024-04-03 17:45:46'),
(805, '165.22.120.68', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-04 00:24:28', '2024-04-04 00:24:28'),
(806, '119.96.24.54', 'Asia', 'China', 'Wuhan', 'Hubei', 'Asia/Shanghai', '30.589', '114.2681', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-04 01:35:28', '2024-04-04 01:35:28'),
(807, '46.29.234.144', 'Europe', 'Lithuania', 'Vilnius', 'Vilnius', 'Europe/Vilnius', '54.8333', '25.3333', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-04-04 02:18:38', '2024-04-04 02:18:38'),
(808, '185.238.231.55', 'North America', 'United States', 'Denver', 'Colorado', 'America/Denver', '39.7388', '-104.9868', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-04 03:57:17', '2024-04-04 03:57:17'),
(809, '185.238.231.56', 'North America', 'United States', 'Denver', 'Colorado', 'America/Denver', '39.7388', '-104.9868', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-04 03:57:19', '2024-04-04 03:57:19'),
(810, '157.245.194.189', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-04-05 00:05:42', '2024-04-05 00:05:42'),
(811, '128.90.141.40', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-05 00:37:20', '2024-04-05 00:37:20'),
(812, '101.44.249.186', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-05 01:49:37', '2024-04-05 01:49:37'),
(813, '187.79.81.149', 'South America', 'Brazil', 'Rio de Janeiro', 'Rio de Janeiro', 'America/Sao_Paulo', '-22.9201', '-43.0811', 'Embarcadero URI Client/1.0', '2024-04-05 03:13:56', '2024-04-05 03:13:56'),
(814, '117.221.174.238', 'Asia', 'India', 'Jājpur', 'Odisha', 'Asia/Kolkata', '20.8554', '86.3413', 'Screaming Frog SEO Spider/19.8', '2024-04-05 05:02:45', '2024-04-05 05:02:45'),
(815, '66.249.70.135', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-05 09:43:56', '2024-04-05 09:43:56'),
(816, '128.199.255.92', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-04-05 20:11:34', '2024-04-05 20:11:34'),
(817, '181.215.25.177', 'Europe', 'United Kingdom', 'Coventry', 'Coventry', 'Europe/London', '52.4064', '-1.5082', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2024-04-05 20:55:17', '2024-04-05 20:55:17'),
(818, '181.215.25.174', 'Europe', 'United Kingdom', 'Coventry', 'Coventry', 'Europe/London', '52.4064', '-1.5082', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2024-04-05 20:55:18', '2024-04-05 20:55:18'),
(819, '89.248.172.92', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '2024-04-06 00:39:01', '2024-04-06 00:39:01'),
(820, '159.65.170.24', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-06 00:41:46', '2024-04-06 00:41:46'),
(821, '170.106.104.42', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-06 01:50:01', '2024-04-06 01:50:01'),
(822, '207.46.13.111', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-06 02:42:01', '2024-04-06 02:42:01'),
(823, '207.46.13.14', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-06 03:41:17', '2024-04-06 03:41:17'),
(824, '91.92.254.184', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2024-04-06 04:27:42', '2024-04-06 04:27:42'),
(825, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-06 04:59:05', '2024-04-06 04:59:05'),
(826, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-06 05:06:02', '2024-04-06 05:06:02'),
(827, '54.176.91.0', 'North America', 'United States', 'San Jose', 'California', 'America/Los_Angeles', '37.1835', '-121.7714', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Mobile/14G60 MicroMessenger/7.0.4(0x17000428) NetType/WIFI Language/zh_CN', '2024-04-06 05:12:28', '2024-04-06 05:12:28'),
(828, '161.35.179.24', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-06 08:52:25', '2024-04-06 08:52:25'),
(829, '223.113.128.142', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'curl/7.29.0', '2024-04-06 10:41:06', '2024-04-06 10:41:06'),
(830, '45.154.35.141', 'Europe', 'Lithuania', '', '', 'Europe/Vilnius', '55.4167', '24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.9 Safari/536.5', '2024-04-06 12:46:46', '2024-04-06 12:46:46'),
(831, '85.119.122.23', 'Europe', 'Malta', '', '', 'Europe/Malta', '35.9167', '14.4333', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-06 13:09:31', '2024-04-06 13:09:31'),
(832, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-06 16:44:58', '2024-04-06 16:44:58'),
(833, '217.76.60.255', 'Europe', 'Germany', 'Düsseldorf', 'North Rhine-Westphalia', 'Europe/Berlin', '51.1878', '6.8607', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-06 17:21:59', '2024-04-06 17:21:59'),
(834, '101.44.250.117', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-06 17:36:38', '2024-04-06 17:36:38'),
(835, '82.165.224.28', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-06 17:55:56', '2024-04-06 17:55:56'),
(836, '82.165.224.76', 'Europe', 'Germany', 'Karlsruhe', 'Baden-Wurttemberg', 'Europe/Berlin', '48.9751', '8.4456', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-06 18:07:08', '2024-04-06 18:07:08'),
(837, '157.55.39.6', 'North America', 'United States', '', 'Washington', 'America/Los_Angeles', '47.6034', '-122.3414', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-07 02:34:50', '2024-04-07 02:34:50'),
(838, '185.221.219.155', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-04-07 03:18:32', '2024-04-07 03:18:32'),
(839, '52.167.144.181', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-07 10:44:34', '2024-04-07 10:44:34'),
(840, '93.158.91.11', 'Europe', 'Sweden', 'Västerås', 'Västmanland County', 'Europe/Stockholm', '59.6146', '16.5528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-07 11:26:43', '2024-04-07 11:26:43'),
(841, '54.254.162.138', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'undici', '2024-04-07 11:33:53', '2024-04-07 11:33:53'),
(842, '101.44.248.236', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-07 12:39:24', '2024-04-07 12:39:24'),
(843, '213.202.233.34', 'Europe', 'Germany', 'Düsseldorf', 'North Rhine-Westphalia', 'Europe/Berlin', '51.22', '6.763', 'Mozilla/6.4 (Windows NT 11.1) Gecko/2010102 Firefox/99.0', '2024-04-07 15:49:50', '2024-04-07 15:49:50'),
(844, '89.248.174.34', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', '2024-04-07 21:48:05', '2024-04-07 21:48:05'),
(845, '64.23.135.213', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.3931', '-121.962', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-08 00:21:11', '2024-04-08 00:21:11'),
(846, '199.45.155.50', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-04-08 02:30:38', '2024-04-08 02:30:38'),
(847, '35.87.14.60', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-08 03:44:10', '2024-04-08 03:44:10'),
(848, '35.92.159.51', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-08 03:44:16', '2024-04-08 03:44:16'),
(849, '130.255.165.110', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', '2024-04-08 04:16:04', '2024-04-08 04:16:04'),
(850, '141.138.213.100', 'Europe', 'Malta', '', '', 'Europe/Malta', '35.9167', '14.4333', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', '2024-04-08 04:16:04', '2024-04-08 04:16:04'),
(851, '45.55.60.131', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'security_txt_analysis/1.0', '2024-04-08 09:57:16', '2024-04-08 09:57:16'),
(852, '89.248.172.174', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', '2024-04-08 11:06:35', '2024-04-08 11:06:35'),
(853, '79.137.44.190', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-08 12:43:23', '2024-04-08 12:43:23'),
(854, '54.36.149.93', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-08 23:11:22', '2024-04-08 23:11:22'),
(855, '101.44.251.218', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-09 03:48:36', '2024-04-09 03:48:36'),
(856, '147.135.5.75', 'North America', 'United States', '', 'Virginia', 'America/New_York', '38.6583', '-77.2481', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '2024-04-09 05:28:46', '2024-04-09 05:28:46'),
(857, '170.106.171.77', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-09 05:42:18', '2024-04-09 05:42:18'),
(858, '188.126.94.251', 'Europe', 'Denmark', 'Copenhagen', 'Capital Region', 'Europe/Copenhagen', '55.6798', '12.4287', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.64', '2024-04-09 07:45:59', '2024-04-09 07:45:59'),
(859, '37.48.112.43', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3716', '4.8883', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '2024-04-09 09:50:24', '2024-04-09 09:50:24'),
(860, '212.8.253.179', 'Europe', 'The Netherlands', 'Naaldwijk', 'South Holland', 'Europe/Amsterdam', '51.9981', '4.198', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '2024-04-09 10:00:14', '2024-04-09 10:00:14'),
(861, '146.59.146.119', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-09 12:12:47', '2024-04-09 12:12:47'),
(862, '43.159.128.149', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-09 15:25:07', '2024-04-09 15:25:07'),
(863, '185.220.101.38', 'Europe', 'Germany', 'Brandenburg', 'Brandenburg', 'Europe/Berlin', '52.6171', '13.1207', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-04-09 18:38:07', '2024-04-09 18:38:07'),
(864, '100.21.18.129', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-04-09 19:34:41', '2024-04-09 19:34:41'),
(865, '52.81.33.66', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/572.54 (KHTML, like Gecko) Chrome/86.0.1442 Safari/537.36', '2024-04-09 21:43:30', '2024-04-09 21:43:30'),
(866, '52.81.33.66', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Go-http-client/1.1', '2024-04-09 21:43:58', '2024-04-09 21:43:58'),
(867, '52.81.236.145', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Go-http-client/1.1', '2024-04-09 21:45:19', '2024-04-09 21:45:19'),
(868, '64.23.255.222', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-10 01:28:57', '2024-04-10 01:28:57'),
(869, '37.111.243.242', 'Asia', 'Bangladesh', 'Rajshahi', 'Rajshahi', 'Asia/Dhaka', '24.2873', '88.7574', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-10 04:36:43', '2024-04-10 04:37:00'),
(870, '103.130.215.173', 'Asia', 'Vietnam', '', '', 'Asia/Bangkok', '16.1667', '107.8333', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-10 11:59:31', '2024-04-10 11:59:31'),
(871, '106.75.165.113', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Go-http-client/2.0', '2024-04-10 17:55:51', '2024-04-10 17:55:51'),
(872, '92.204.139.118', 'North America', 'United States', 'Warrenton', 'Virginia', 'America/New_York', '38.6877', '-77.8369', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-10 20:41:10', '2024-04-10 20:41:10'),
(873, '54.36.148.122', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-10 23:16:16', '2024-04-10 23:16:16'),
(874, '35.85.248.3', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-04-10 23:52:57', '2024-04-10 23:52:57'),
(875, '35.84.185.24', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-04-11 03:03:45', '2024-04-11 03:03:45'),
(876, '47.37.218.123', 'North America', 'United States', 'Waynesville', 'North Carolina', 'America/New_York', '35.5055', '-82.9912', 'Go-http-client/2.0', '2024-04-11 03:30:25', '2024-04-11 03:30:25'),
(877, '173.252.107.118', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-11 05:36:05', '2024-04-11 05:36:05'),
(878, '199.45.154.55', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-04-11 07:40:00', '2024-04-11 07:40:00'),
(879, '175.178.35.245', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-11 12:38:33', '2024-04-11 12:38:33'),
(880, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-11 16:00:08', '2024-04-11 16:00:08'),
(881, '45.67.15.60', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0019', '-77.4556', 'Mozilla/5.0 (iPad; CPU OS 13_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Mobile/15E148 Safari/604.1', '2024-04-11 16:59:55', '2024-04-11 16:59:55'),
(882, '194.242.57.123', 'Europe', 'Germany', 'Düsseldorf', 'North Rhine-Westphalia', 'Europe/Berlin', '51.2184', '6.7734', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2024-04-11 22:16:52', '2024-04-11 22:16:52'),
(883, '137.184.172.91', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.709', '-79.4057', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-12 00:53:27', '2024-04-12 00:53:27'),
(884, '38.89.70.199', 'North America', 'United States', 'Seattle', 'Washington', 'America/Los_Angeles', '47.4902', '-122.3004', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-04-12 02:11:45', '2024-04-12 02:11:45'),
(885, '124.243.151.132', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-12 02:53:48', '2024-04-12 02:53:48'),
(886, '212.227.216.109', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-12 16:53:35', '2024-04-12 16:53:35'),
(887, '212.227.216.45', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-12 17:05:27', '2024-04-12 17:05:27'),
(888, '195.154.49.91', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0#Boss# (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-13 01:39:43', '2024-04-13 01:39:43'),
(889, '93.158.91.30', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-13 06:58:01', '2024-04-13 06:58:01'),
(890, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 8.7; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.1543.88 Safari/537.36', '2024-04-13 09:01:52', '2024-04-13 09:01:52'),
(891, '216.24.210.74', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-04-13 12:46:12', '2024-04-13 12:46:12'),
(892, '93.158.90.45', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115', '2024-04-13 17:34:57', '2024-04-13 17:34:57'),
(893, '35.88.44.214', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-04-14 00:34:33', '2024-04-14 00:34:33'),
(894, '128.199.31.221', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '2024-04-14 01:04:01', '2024-04-14 01:04:01'),
(895, '182.44.67.97', 'Asia', 'China', 'Fuzhou', 'Fujian', 'Asia/Shanghai', '26.0492', '119.2906', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-14 05:07:27', '2024-04-14 05:07:27'),
(896, '185.220.101.168', 'Europe', 'Germany', 'Brandenburg', 'Brandenburg', 'Europe/Berlin', '52.6171', '13.1207', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15', '2024-04-14 08:50:04', '2024-04-14 08:50:04'),
(897, '188.126.94.229', 'Europe', 'Denmark', 'Copenhagen', 'Capital Region', 'Europe/Copenhagen', '55.6798', '12.4287', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Iron Safari/537.36', '2024-04-14 12:42:56', '2024-04-14 12:42:56'),
(898, '35.88.49.34', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.0; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-04-14 14:56:10', '2024-04-14 14:56:10'),
(899, '54.36.148.202', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-14 16:05:35', '2024-04-14 16:05:35'),
(900, '212.102.44.163', 'North America', 'United States', 'Denver', 'Colorado', 'America/Denver', '39.7388', '-104.9868', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-04-14 18:29:54', '2024-04-14 18:29:54'),
(901, '17.241.227.88', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-04-14 22:59:16', '2024-04-14 22:59:16'),
(902, '66.249.70.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-15 05:34:18', '2024-04-15 05:34:18'),
(903, '54.36.60.119', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-15 08:28:24', '2024-04-15 08:28:24'),
(904, '23.108.48.144', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.7689', '-80.1946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2024-04-15 10:00:14', '2024-04-15 10:00:14'),
(905, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-15 10:04:33', '2024-04-15 10:04:33'),
(906, '138.199.60.12', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-04-15 11:29:09', '2024-04-15 11:29:09'),
(907, '217.70.186.133', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-15 12:24:02', '2024-04-15 12:24:02'),
(908, '136.244.115.163', 'Europe', 'France', 'Aubervilliers', 'Seine-Saint-Denis', 'Europe/Paris', '48.9163', '2.3869', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-04-15 16:58:10', '2024-04-15 16:58:10'),
(909, '66.249.70.2', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-15 22:30:39', '2024-04-15 22:30:39'),
(910, '142.93.150.54', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-16 01:02:52', '2024-04-16 01:02:52'),
(911, '34.86.162.128', 'North America', 'United States', 'Washington', 'District of Columbia', 'America/New_York', '38.894', '-77.0365', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-04-16 01:28:10', '2024-04-16 01:28:10'),
(912, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-04-16 03:02:37', '2024-04-16 03:02:37'),
(913, '87.236.176.247', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-04-16 03:21:15', '2024-04-16 03:21:15'),
(914, '173.252.95.120', 'North America', 'United States', 'Altoona', 'Iowa', 'America/Chicago', '41.6473', '-93.4744', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-16 04:37:33', '2024-04-16 04:37:33'),
(915, '87.236.176.83', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-04-16 06:27:26', '2024-04-16 06:27:26'),
(916, '138.199.30.2', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-04-16 15:35:24', '2024-04-16 15:35:24'),
(917, '66.249.72.67', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-16 17:23:20', '2024-04-16 17:23:20'),
(918, '103.111.226.51', 'Asia', 'Bangladesh', 'Jamālpur', 'Jamalpur', 'Asia/Dhaka', '24.9169', '89.9474', 'python-requests/2.31.0', '2024-04-16 17:24:52', '2024-04-16 17:24:52'),
(919, '199.244.88.220', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-16 20:43:00', '2024-04-16 20:43:00'),
(920, '66.249.76.73', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-16 21:51:21', '2024-04-16 21:51:21'),
(921, '212.227.216.119', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-16 23:43:56', '2024-04-16 23:43:56'),
(922, '212.227.216.55', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-16 23:53:43', '2024-04-16 23:53:43'),
(923, '77.75.76.162', 'Europe', 'Czechia', '', '', 'Europe/Prague', '50.0853', '14.411', 'Mozilla/5.0 (compatible; SeznamBot/4.0; +http://napoveda.seznam.cz/seznambot-intro/)', '2024-04-17 07:05:19', '2024-04-17 07:05:19'),
(924, '161.97.120.186', 'Europe', 'Germany', 'Nuremberg', 'Bavaria', 'Europe/Berlin', '49.405', '11.1617', 'Mozilla/5.0 (Windows NT 6.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3152.119 Safari/537.36', '2024-04-17 08:11:19', '2024-04-17 08:11:19'),
(925, '38.122.112.147', 'North America', 'United States', 'Chicago', 'Illinois', 'America/Chicago', '41.8874', '-87.6318', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36 Edg/91.0.864.37', '2024-04-17 15:06:20', '2024-04-17 15:06:20'),
(926, '159.138.105.125', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-17 15:42:35', '2024-04-17 15:42:35'),
(927, '178.128.245.237', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-18 00:52:57', '2024-04-18 00:52:57'),
(928, '35.87.238.94', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-18 03:46:11', '2024-04-18 03:46:11'),
(929, '52.36.20.182', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-18 03:46:15', '2024-04-18 03:46:15'),
(930, '154.161.154.107', 'Africa', 'Ghana', '', '', 'Africa/Accra', '8.1', '-1.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2024-04-18 08:59:18', '2024-04-18 08:59:18'),
(931, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 7.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.1675.88 Safari/537.36', '2024-04-18 15:01:27', '2024-04-18 15:01:27'),
(932, '13.234.117.191', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'axios/1.6.5', '2024-04-18 16:20:05', '2024-04-18 16:20:05'),
(933, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-18 17:37:34', '2024-04-18 17:37:34'),
(934, '154.72.77.42', 'Africa', 'Tanzania', 'Dar es Salaam', 'Dar es Salaam Region', 'Africa/Dar_es_Salaam', '-6.8135', '39.2686', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-04-18 20:20:49', '2024-04-18 20:20:49'),
(935, '5.133.192.133', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-19 02:14:47', '2024-04-19 02:14:47'),
(936, '93.158.90.68', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', '2024-04-19 07:12:23', '2024-04-19 07:12:23'),
(937, '69.171.231.7', 'North America', 'United States', 'Eagle Mountain', 'Utah', 'America/Denver', '40.3833', '-111.9895', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-19 14:40:04', '2024-04-19 14:40:04'),
(938, '69.171.231.6', 'North America', 'United States', 'Eagle Mountain', 'Utah', 'America/Denver', '40.3833', '-111.9895', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-19 14:40:06', '2024-04-19 14:40:06'),
(939, '54.36.148.246', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-19 15:46:01', '2024-04-19 15:46:01'),
(940, '43.130.37.62', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-19 17:42:02', '2024-04-19 17:42:02'),
(941, '142.93.0.206', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-19 22:45:15', '2024-04-19 22:45:15'),
(942, '34.174.183.198', 'North America', 'United States', 'Dallas', 'Texas', 'America/Chicago', '32.7797', '-96.8022', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-04-19 22:46:55', '2024-04-19 22:46:55'),
(943, '138.197.67.131', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-20 01:08:35', '2024-04-20 01:08:35'),
(944, '139.59.58.159', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-04-20 02:24:25', '2024-04-20 02:24:25'),
(945, '54.244.37.63', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-20 03:35:00', '2024-04-20 03:35:00'),
(946, '34.221.203.213', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-20 03:35:01', '2024-04-20 03:35:01'),
(947, '149.56.150.111', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-04-20 03:56:31', '2024-04-20 03:56:31'),
(948, '149.56.150.111', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (Linux; Android 10; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Mobile Safari/537.36', '2024-04-20 03:56:37', '2024-04-20 03:56:37'),
(949, '149.56.160.182', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (compatible; Dataprovider.com)', '2024-04-20 03:57:07', '2024-04-20 03:57:07'),
(950, '185.6.10.231', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.1 (Windows NT 6.0; WOW64) AppleWebKit/537.37 (KHTML, like Gecko) Chrome/58.0.1145.75 Safari/537.37', '2024-04-20 10:45:38', '2024-04-20 10:45:38'),
(951, '54.36.149.22', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-20 11:31:38', '2024-04-20 11:31:38'),
(952, '54.36.149.27', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-20 11:31:39', '2024-04-20 11:31:39'),
(953, '95.217.18.177', 'Europe', 'Finland', 'Helsinki', 'Uusimaa', 'Europe/Helsinki', '60.1719', '24.9347', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2024-04-20 13:44:26', '2024-04-20 13:44:26'),
(954, '209.38.208.202', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', NULL, '2024-04-20 13:44:30', '2024-04-20 13:44:30'),
(955, '209.38.208.202', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA270239) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.3589.98 Mobile Safari/537.3', '2024-04-20 13:44:31', '2024-04-20 13:44:31'),
(956, '209.38.208.202', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Go-http-client/1.1', '2024-04-20 13:44:32', '2024-04-20 13:44:32'),
(957, '65.154.226.166', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-04-20 13:44:36', '2024-04-20 13:44:36'),
(958, '34.122.147.229', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', '2024-04-20 13:44:37', '2024-04-20 13:44:37'),
(959, '205.169.39.98', 'North America', 'United States', 'Engelhard', 'North Carolina', 'America/New_York', '35.5118', '-76.0331', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-04-20 13:44:48', '2024-04-20 13:44:48'),
(960, '205.169.39.98', 'North America', 'United States', 'Engelhard', 'North Carolina', 'America/New_York', '35.5118', '-76.0331', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-04-20 13:44:58', '2024-04-20 13:44:58'),
(961, '195.211.77.140', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7482', '37.6177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-04-20 13:44:59', '2024-04-20 13:44:59'),
(962, '195.211.77.142', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7482', '37.6177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-04-20 13:45:06', '2024-04-20 13:45:06'),
(963, '154.28.229.161', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-04-20 15:20:26', '2024-04-20 15:20:26');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(964, '104.164.173.216', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-04-20 15:20:26', '2024-04-20 15:20:26'),
(965, '154.28.229.33', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-04-20 15:20:26', '2024-04-20 15:20:26'),
(966, '154.28.229.236', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-04-20 15:20:26', '2024-04-20 15:20:26'),
(967, '82.165.224.19', 'Europe', 'Germany', 'Birlenbach', 'Rheinland-Pfalz', 'Europe/Berlin', '50.3612', '7.9989', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-20 16:07:21', '2024-04-20 16:07:21'),
(968, '82.165.224.83', 'Europe', 'Germany', 'Birlenbach', 'Rheinland-Pfalz', 'Europe/Berlin', '50.3612', '7.9989', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-20 16:18:48', '2024-04-20 16:18:48'),
(969, '5.164.29.116', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 (scanner.ducks.party)', '2024-04-20 16:58:10', '2024-04-20 16:58:10'),
(970, '217.69.1.241', 'Europe', 'France', 'Aubervilliers', 'Seine-Saint-Denis', 'Europe/Paris', '48.9163', '2.3869', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-04-20 17:14:35', '2024-04-20 17:14:35'),
(971, '66.249.76.1', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Googlebot-Image/1.0', '2024-04-20 17:24:33', '2024-04-20 17:24:33'),
(972, '129.213.88.75', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.018', '-77.539', 'Mozilla/5.0 (Windows NT 10.0; Trident/7.0; AS; rv:11.0) like Gecko', '2024-04-20 19:39:09', '2024-04-20 19:39:09'),
(973, '37.19.223.101', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.71 Safari/537.36', '2024-04-20 20:10:56', '2024-04-20 20:10:56'),
(974, '203.159.81.90', 'Asia', 'Israel', 'Tel Aviv', 'Tel Aviv', 'Asia/Jerusalem', '32.0803', '34.7805', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2024-04-21 01:24:10', '2024-04-21 01:24:10'),
(975, '203.159.81.55', 'Asia', 'Israel', 'Tel Aviv', 'Tel Aviv', 'Asia/Jerusalem', '32.0803', '34.7805', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2024-04-21 01:24:12', '2024-04-21 01:24:12'),
(976, '52.81.44.220', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Mozilla/5.0 (Windows NT 7_2; Win64; x64) AppleWebKit/594.45 (KHTML, like Gecko) Chrome/94.0.632 Safari/537.36', '2024-04-21 04:06:12', '2024-04-21 04:06:12'),
(977, '52.81.44.220', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Go-http-client/1.1', '2024-04-21 04:07:01', '2024-04-21 04:07:01'),
(978, '52.81.44.220', 'Asia', 'China', '', 'Hunan', 'Asia/Shanghai', '28.1822', '113.1051', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2024-04-21 04:07:21', '2024-04-21 04:07:21'),
(979, '217.76.139.249', 'Europe', 'Spain', '', '', 'Europe/Madrid', '40.4172', '-3.684', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-21 04:41:48', '2024-04-21 04:41:48'),
(980, '45.125.223.26', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.8175', '90.4096', 'python-requests/2.31.0', '2024-04-21 05:31:33', '2024-04-21 05:31:33'),
(981, '173.252.83.118', 'North America', 'United States', 'Springfield', 'Nebraska', 'America/Chicago', '41.0765', '-96.1438', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-21 06:07:57', '2024-04-21 06:07:57'),
(982, '154.28.229.126', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-04-21 07:08:54', '2024-04-21 07:08:54'),
(983, '154.28.229.88', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-04-21 07:08:54', '2024-04-21 07:08:54'),
(984, '154.28.229.126', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-04-21 07:09:01', '2024-04-21 07:09:01'),
(985, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9.0.9) Gecko/2009040821', '2024-04-21 07:54:02', '2024-04-21 07:54:02'),
(986, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1', '2024-04-21 10:44:38', '2024-04-21 10:44:38'),
(987, '213.180.203.123', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0', '2024-04-21 14:04:48', '2024-04-21 14:04:48'),
(988, '119.148.62.100', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-04-21 14:29:27', '2024-04-21 14:29:27'),
(989, '87.236.176.109', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-04-21 14:46:09', '2024-04-21 14:46:09'),
(990, '107.189.28.123', 'Europe', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Europe/Luxembourg', '49.6113', '6.1294', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', '2024-04-21 17:08:07', '2024-04-21 17:08:07'),
(991, '106.75.174.148', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Go-http-client/2.0', '2024-04-21 21:57:59', '2024-04-21 21:57:59'),
(992, '206.189.178.25', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-22 01:28:13', '2024-04-22 01:28:13'),
(993, '40.77.167.44', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-22 02:25:49', '2024-04-22 02:25:49'),
(994, '87.250.224.207', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '2024-04-22 03:30:51', '2024-04-22 03:30:51'),
(995, '5.255.231.52', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0', '2024-04-22 03:30:51', '2024-04-22 03:30:51'),
(996, '213.136.93.164', 'Europe', 'Germany', 'Nuremberg', 'Bavaria', 'Europe/Berlin', '49.405', '11.1617', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-22 13:15:32', '2024-04-22 13:15:32'),
(997, '49.0.207.93', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2024-04-22 13:25:59', '2024-04-22 13:25:59'),
(998, '103.108.45.105', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-22 15:19:27', '2024-04-22 15:19:27'),
(999, '173.252.107.116', 'North America', 'United States', 'Sandston', 'Virginia', 'America/New_York', '37.5137', '-77.2664', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-22 17:04:22', '2024-04-22 17:04:22'),
(1000, '131.153.22.13', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-22 17:19:43', '2024-04-22 17:19:43'),
(1001, '87.249.132.24', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Iron Safari/537.36', '2024-04-23 07:08:06', '2024-04-23 07:08:06'),
(1002, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', '2024-04-23 07:44:35', '2024-04-23 07:44:35'),
(1003, '206.168.34.47', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-04-23 16:01:56', '2024-04-23 16:01:56'),
(1004, '64.23.185.112', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Go-http-client/1.1', '2024-04-23 18:05:29', '2024-04-23 18:05:29'),
(1005, '23.26.108.127', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2024-04-23 18:26:59', '2024-04-23 18:26:59'),
(1006, '118.193.58.180', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', '2024-04-23 20:45:40', '2024-04-23 20:45:40'),
(1007, '18.226.186.157', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'curl/8.3.0', '2024-04-23 22:02:23', '2024-04-23 22:02:23'),
(1008, '45.138.16.178', 'Europe', 'Poland', 'Warsaw', 'Mazovia', 'Europe/Warsaw', '52.2296', '21.0067', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2024-04-24 00:15:00', '2024-04-24 00:15:00'),
(1009, '34.94.153.60', 'North America', 'United States', 'Los Angeles', 'California', 'America/Los_Angeles', '34.0544', '-118.2441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-04-24 00:23:34', '2024-04-24 00:23:34'),
(1010, '204.48.26.132', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-24 01:06:56', '2024-04-24 01:06:56'),
(1011, '40.77.167.79', 'North America', 'United States', 'Boydton', 'Virginia', 'America/New_York', '36.6534', '-78.375', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-04-24 02:20:48', '2024-04-24 02:20:48'),
(1012, '66.249.70.2', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-24 02:29:07', '2024-04-24 02:29:07'),
(1013, '35.94.117.172', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-04-24 03:42:49', '2024-04-24 03:42:49'),
(1014, '198.54.132.241', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6227', '-79.3892', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2024-04-24 05:33:31', '2024-04-24 05:33:31'),
(1015, '54.36.148.115', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-24 10:11:43', '2024-04-24 10:11:43'),
(1016, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2024-04-24 14:09:53', '2024-04-24 14:09:53'),
(1017, '192.42.116.208', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15', '2024-04-24 14:42:15', '2024-04-24 14:42:15'),
(1018, '93.158.90.70', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', '2024-04-24 20:13:31', '2024-04-24 20:13:31'),
(1019, '188.225.60.227', 'Europe', 'Poland', 'Warsaw', 'Mazovia', 'Europe/Warsaw', '52.2296', '21.0067', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.79 Safari/537.36', '2024-04-25 00:34:20', '2024-04-25 00:34:20'),
(1020, '202.86.219.48', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7272', '90.4093', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-25 00:48:57', '2024-04-25 00:48:57'),
(1021, '35.244.103.216', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Go-http-client/2.0', '2024-04-25 02:48:20', '2024-04-25 02:48:20'),
(1022, '179.43.191.18', 'Europe', 'Switzerland', 'Zurich', 'Zurich', 'Europe/Zurich', '47.3934', '8.5163', 'Searcherweb', '2024-04-25 07:02:25', '2024-04-25 07:02:25'),
(1023, '65.1.148.86', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1664.3 Safari/537.36', '2024-04-25 14:57:06', '2024-04-25 14:57:06'),
(1024, '87.249.132.24', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2024-04-25 18:56:31', '2024-04-25 18:56:31'),
(1025, '128.199.87.110', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-04-25 19:42:40', '2024-04-25 19:42:40'),
(1026, '43.224.108.175', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7004', '90.4287', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', '2024-04-25 23:55:22', '2024-04-25 23:55:22'),
(1027, '74.125.151.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36', '2024-04-25 23:55:26', '2024-04-25 23:55:26'),
(1028, '74.125.151.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36', '2024-04-25 23:55:37', '2024-04-25 23:55:37'),
(1029, '143.198.34.148', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-26 00:31:38', '2024-04-26 00:31:38'),
(1030, '54.36.149.45', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-26 02:02:59', '2024-04-26 02:02:59'),
(1031, '54.36.148.64', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-26 02:03:03', '2024-04-26 02:03:03'),
(1032, '107.178.207.137', 'North America', 'United States', 'Mountain View', 'California', 'America/Los_Angeles', '37.4043', '-122.0748', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19582', '2024-04-26 04:18:06', '2024-04-26 04:18:06'),
(1033, '179.43.167.18', 'Europe', 'Switzerland', 'Zurich', 'Zurich', 'Europe/Zurich', '47.3934', '8.5163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.80 Safari/537.36', '2024-04-26 08:40:34', '2024-04-26 08:40:34'),
(1034, '144.217.66.186', 'North America', 'Canada', 'Beauharnois', 'Quebec', 'America/Toronto', '45.322', '-73.8741', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-26 13:14:37', '2024-04-26 13:14:37'),
(1035, '122.180.182.234', 'Asia', 'India', 'New Delhi', 'National Capital Territory of Delhi', 'Asia/Kolkata', '28.652', '77.1663', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/89.0.4447.51', '2024-04-26 17:08:12', '2024-04-26 17:08:12'),
(1036, '82.165.224.63', 'Europe', 'Germany', 'Birlenbach', 'Rheinland-Pfalz', 'Europe/Berlin', '50.3612', '7.9989', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-27 00:17:34', '2024-04-27 00:17:34'),
(1037, '82.165.224.111', 'Europe', 'Germany', 'Birlenbach', 'Rheinland-Pfalz', 'Europe/Berlin', '50.3612', '7.9989', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-04-27 00:30:50', '2024-04-27 00:30:50'),
(1038, '68.183.149.30', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (compatible; RSiteAuditor)', '2024-04-27 01:04:57', '2024-04-27 01:04:57'),
(1039, '50.62.150.87', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-04-27 11:04:01', '2024-04-27 11:04:01'),
(1040, '43.157.40.137', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2024-04-27 18:28:26', '2024-04-27 18:28:26'),
(1041, '143.244.130.248', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-04-27 23:36:33', '2024-04-27 23:36:33'),
(1042, '100.26.139.4', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Linux; U; Android 4.0.3; en-us; KFTT Build/IML74K) AppleWebKit/535.19 (KHTML, like Gecko) Silk/2.1 Mobile Safari/535.19 Silk-Accelerated=true', '2024-04-28 01:02:29', '2024-04-28 01:02:29'),
(1043, '65.154.226.169', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2024-04-28 01:06:03', '2024-04-28 01:06:03'),
(1044, '178.128.229.167', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-28 02:35:12', '2024-04-28 02:35:12'),
(1045, '142.132.185.129', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.9999.0 Safari/537.36 Auction', '2024-04-28 03:00:33', '2024-04-28 03:00:33'),
(1046, '88.80.20.86', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)', '2024-04-28 04:09:38', '2024-04-28 04:09:38'),
(1047, '173.249.0.2', 'Europe', 'Germany', 'Nuremberg', 'Bavaria', 'Europe/Berlin', '49.405', '11.1617', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-28 09:27:26', '2024-04-28 09:27:26'),
(1048, '223.244.35.77', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-04-28 12:32:51', '2024-04-28 12:32:51'),
(1049, '92.119.36.142', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-04-28 13:28:22', '2024-04-28 13:28:22'),
(1050, '178.254.29.124', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-04-28 18:46:24', '2024-04-28 18:46:24'),
(1051, '104.238.189.239', 'Europe', 'France', 'Aubervilliers', 'Seine-Saint-Denis', 'Europe/Paris', '48.9163', '2.3869', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-04-28 20:08:24', '2024-04-28 20:08:24'),
(1052, '51.158.205.64', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-04-29 03:37:14', '2024-04-29 03:37:14'),
(1053, '54.36.149.65', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-04-29 05:19:31', '2024-04-29 05:19:31'),
(1054, '34.162.111.233', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-04-29 05:32:32', '2024-04-29 05:32:32'),
(1055, '146.70.212.85', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/22.7.0 Yowser/2.5 Safari/537.36', '2024-04-29 07:49:04', '2024-04-29 07:49:04'),
(1056, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/22.7.0 Yowser/2.5 Safari/537.36', '2024-04-29 15:07:32', '2024-04-29 15:07:32'),
(1057, '93.158.90.31', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115', '2024-04-29 17:19:35', '2024-04-29 17:19:35'),
(1058, '158.69.25.39', 'North America', 'Canada', 'Montreal', 'Quebec', 'America/Toronto', '45.5075', '-73.5887', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2024-04-29 17:35:36', '2024-04-29 17:35:36'),
(1059, '173.252.87.120', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-04-29 17:48:59', '2024-04-29 17:48:59'),
(1060, '104.238.189.239', 'Europe', 'France', 'Aubervilliers', 'Seine-Saint-Denis', 'Europe/Paris', '48.9163', '2.3869', 'python-requests/2.27.1', '2024-04-29 18:07:01', '2024-04-29 18:07:01'),
(1061, '77.68.22.155', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-29 22:06:16', '2024-04-29 22:06:16'),
(1062, '161.97.71.25', 'Europe', 'Germany', 'Nuremberg', 'Bavaria', 'Europe/Berlin', '49.405', '11.1617', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', '2024-04-29 22:12:07', '2024-04-29 22:12:07'),
(1063, '91.227.68.183', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; WOW64; Trident/5.0)', '2024-04-29 22:45:38', '2024-04-29 22:45:38'),
(1064, '149.255.62.60', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-30 00:04:04', '2024-04-30 00:04:04'),
(1065, '104.248.29.125', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-04-30 01:03:03', '2024-04-30 01:03:03'),
(1066, '159.203.4.87', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-04-30 10:19:07', '2024-04-30 10:19:07'),
(1067, '212.112.19.20', 'Europe', 'Sweden', 'Stockholm', 'Stockholm County', 'Europe/Stockholm', '59.3241', '18.0517', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36', '2024-04-30 14:58:23', '2024-04-30 14:58:23'),
(1068, '5.133.192.138', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-04-30 17:26:17', '2024-04-30 17:26:17'),
(1069, '37.19.223.100', 'Europe', 'Austria', 'Vienna', 'Vienna', 'Europe/Vienna', '48.2049', '16.3662', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.289 Safari/537.36', '2024-04-30 18:08:39', '2024-04-30 18:08:39'),
(1070, '185.104.248.229', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (Windows NT 5.2; WOW64) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.77 Safari/535.7', '2024-04-30 18:16:12', '2024-04-30 18:16:12'),
(1071, '185.104.248.229', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.2; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', '2024-04-30 18:16:13', '2024-04-30 18:16:13'),
(1072, '185.104.248.229', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Yandex/1.01.001 (compatible; Win16; I)', '2024-04-30 18:16:15', '2024-04-30 18:16:15'),
(1073, '185.104.248.229', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (SymbianOS/9.2; U; Series60/3.1 NokiaN95/31.0.017; Profile/MIDP-2.0 Configuration/CLDC-1.1 ) AppleWebKit/413 (KHTML, like Gecko) Safari/413', '2024-04-30 18:16:25', '2024-04-30 18:16:25'),
(1074, '118.69.175.73', 'Asia', 'Vietnam', 'Ho Chi Minh City', 'Ho Chi Minh', 'Asia/Ho_Chi_Minh', '10.822', '106.6257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', '2024-04-30 18:56:07', '2024-04-30 18:56:07'),
(1075, '66.249.65.41', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.91 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-04-30 19:08:29', '2024-04-30 19:08:29'),
(1076, '123.6.49.38', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', '2024-04-30 22:50:33', '2024-04-30 22:50:33'),
(1077, '54.159.90.187', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '2024-05-01 06:43:41', '2024-05-01 06:43:41'),
(1078, '173.252.87.1', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-05-01 10:14:57', '2024-05-01 10:14:57'),
(1079, '194.154.184.188', 'Europe', 'United Kingdom', 'Aldershot', 'Hampshire', 'Europe/London', '51.2521', '-0.7295', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-05-01 13:09:15', '2024-05-01 13:09:15'),
(1080, '87.236.176.88', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-05-01 13:49:38', '2024-05-01 13:49:38'),
(1081, '20.172.15.155', 'North America', 'United States', 'Phoenix', 'Arizona', 'America/Phoenix', '33.4475', '-112.0866', NULL, '2024-05-01 14:42:43', '2024-05-01 14:42:43'),
(1082, '89.108.72.177', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '2024-05-01 22:23:22', '2024-05-01 22:23:22'),
(1083, '209.38.152.243', 'North America', 'United States', 'San Francisco', 'California', 'America/Los_Angeles', '37.7809', '-122.4245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-02 00:32:57', '2024-05-02 00:32:57'),
(1084, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-02 01:47:53', '2024-05-02 01:47:53'),
(1085, '66.249.66.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-02 01:48:09', '2024-05-02 01:48:09'),
(1086, '135.181.207.185', 'Europe', 'Finland', 'Helsinki', 'Uusimaa', 'Europe/Helsinki', '60.1719', '24.9347', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '2024-05-02 11:39:59', '2024-05-02 11:39:59'),
(1087, '54.171.164.176', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-05-02 12:29:03', '2024-05-02 12:29:03'),
(1088, '207.241.236.85', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; archive.org_bot +http://archive.org/details/archive.org_bot) Zeno/0569f25 warc/v0.8.33', '2024-05-02 16:16:33', '2024-05-02 16:16:33'),
(1089, '123.60.68.42', 'Asia', 'China', 'Shanghai', 'Shanghai', 'Asia/Shanghai', '31.2222', '121.4581', 'Mozilla/5.0 (Windows NT 7.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.1346.88 Safari/537.36', '2024-05-02 19:11:48', '2024-05-02 19:11:48'),
(1090, '135.148.195.16', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-05-02 23:08:46', '2024-05-02 23:08:46'),
(1091, '66.249.69.101', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-03 02:28:16', '2024-05-03 02:28:16'),
(1092, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Go-http-client/2.0', '2024-05-03 05:58:34', '2024-05-03 05:58:34'),
(1093, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Go-http-client/2.0', '2024-05-03 05:58:34', '2024-05-03 05:58:34'),
(1094, '142.93.8.206', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Windows NT 6.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3152.119 Safari/537.36', '2024-05-03 07:15:02', '2024-05-03 07:15:02'),
(1095, '173.252.87.9', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-05-03 12:00:21', '2024-05-03 12:00:21'),
(1096, '54.85.65.1', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-05-03 17:33:04', '2024-05-03 17:33:04'),
(1097, '65.154.226.168', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2024-05-03 17:44:55', '2024-05-03 17:44:55'),
(1098, '165.227.207.94', 'North America', 'United States', 'North Bergen', 'New Jersey', 'America/New_York', '40.793', '-74.0247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-03 21:17:29', '2024-05-03 21:17:29'),
(1099, '54.162.182.25', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-05-04 01:05:05', '2024-05-04 01:05:05'),
(1100, '165.22.123.233', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-04 01:27:01', '2024-05-04 01:27:01'),
(1101, '54.36.148.45', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-05-04 02:53:10', '2024-05-04 02:53:10'),
(1102, '54.36.148.231', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-05-04 02:53:15', '2024-05-04 02:53:15'),
(1103, '5.188.87.47', 'South America', 'Brazil', 'Uruaçu', 'Goiás', 'America/Sao_Paulo', '-14.4245', '-49.0602', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '2024-05-04 14:58:08', '2024-05-04 14:58:08'),
(1104, '209.126.10.240', 'North America', 'United States', 'St Louis', 'Missouri', 'America/Chicago', '38.6364', '-90.1985', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.111 Mobile Safari/537.36', '2024-05-04 16:55:07', '2024-05-04 16:55:07'),
(1105, '199.45.155.47', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-05-04 22:06:34', '2024-05-04 22:06:34'),
(1106, '43.134.98.238', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2024-05-04 23:45:59', '2024-05-04 23:45:59'),
(1107, '90.156.211.64', 'Europe', 'Russia', 'St Petersburg', 'St.-Petersburg', 'Europe/Moscow', '59.9417', '30.3096', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', '2024-05-05 00:41:21', '2024-05-05 00:41:21'),
(1108, '34.22.213.78', 'Europe', 'Belgium', 'Brussels', 'Brussels Capital', 'Europe/Brussels', '50.8534', '4.347', 'python-requests/2.31.0', '2024-05-05 02:12:16', '2024-05-05 02:12:16'),
(1109, '3.142.250.108', 'North America', 'United States', 'Columbus', 'Ohio', 'America/New_York', '39.9625', '-83.0061', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:20.0) Gecko/20100101 Firefox/20.0', '2024-05-05 03:31:56', '2024-05-05 03:31:56'),
(1110, '103.212.98.210', 'Asia', 'Hong Kong', '', '', 'Asia/Hong_Kong', '22.2578', '114.1657', 'ALittle Client', '2024-05-05 04:24:57', '2024-05-05 04:24:57'),
(1111, '34.76.51.203', 'Europe', 'Belgium', 'Brussels', 'Brussels Capital', 'Europe/Brussels', '50.8534', '4.347', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-05-05 09:46:08', '2024-05-05 09:46:08'),
(1112, '103.230.107.26', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-05 11:12:39', '2024-05-05 11:12:39'),
(1113, '103.230.107.26', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Linux; Android 12; Redmi Note 9 Pro Max Build/SKQ1.211019.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.123 Mobile Safari/537.36', '2024-05-05 11:31:58', '2024-05-05 11:31:58'),
(1114, '70.32.128.253', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 13; Redfin 64-bit only Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.74 Mobile Safari/537.36', '2024-05-05 12:21:15', '2024-05-05 12:21:15'),
(1115, '70.32.128.248', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 13; Redfin 64-bit only Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.74 Mobile Safari/537.36', '2024-05-05 12:21:16', '2024-05-05 12:21:16'),
(1116, '108.177.7.80', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; moto g(20) Build/RTAS31.68-66-3; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:21:28', '2024-05-05 12:21:28'),
(1117, '108.177.7.80', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 13; Pixel 7 Build/TQ3A.230605.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/109.0.5414.123 Mobile Safari/537.36', '2024-05-05 12:22:13', '2024-05-05 12:22:13'),
(1118, '70.32.128.58', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; Pixel 5 Build/RQ3A.211001.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36', '2024-05-05 12:22:25', '2024-05-05 12:22:25'),
(1119, '108.177.7.84', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SQ1D.220205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/91.0.4472.114 Mobile Safari/537.36', '2024-05-05 12:22:27', '2024-05-05 12:22:27'),
(1120, '70.32.128.243', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; Pixel 5 Build/RQ3A.211001.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36', '2024-05-05 12:22:27', '2024-05-05 12:22:27'),
(1121, '35.203.128.11', 'North America', 'United States', 'The Dalles', 'Oregon', 'America/Los_Angeles', '45.6056', '-121.1807', 'Mozilla/5.0 (Linux; Android 12; sdk_goog3_gpc_x86_64 Build/SE2B.220326.027; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36', '2024-05-05 12:24:45', '2024-05-05 12:24:45'),
(1122, '35.203.128.15', 'North America', 'United States', 'The Dalles', 'Oregon', 'America/Los_Angeles', '45.6056', '-121.1807', 'Mozilla/5.0 (Linux; Android 12; sdk_goog3_gpc_x86_64 Build/SE2B.220326.027; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36', '2024-05-05 12:24:47', '2024-05-05 12:24:47'),
(1123, '66.249.88.229', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:25:38', '2024-05-05 12:25:38'),
(1124, '66.249.88.227', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:25:42', '2024-05-05 12:25:42'),
(1125, '66.249.88.228', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:25:43', '2024-05-05 12:25:43'),
(1126, '74.125.212.67', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:26:57', '2024-05-05 12:26:57'),
(1127, '74.125.212.69', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:27:00', '2024-05-05 12:27:00'),
(1128, '74.125.212.68', 'North America', 'United States', 'Regency of Iowa Mobile Home Park', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-05 12:27:01', '2024-05-05 12:27:01'),
(1129, '34.136.2.140', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (Linux; Android 12; sdk_goog3_gpc_x86_64 Build/SE2B.220326.027; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36', '2024-05-05 12:31:25', '2024-05-05 12:31:25'),
(1130, '34.136.2.142', 'North America', 'United States', 'Council Bluffs', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (Linux; Android 12; sdk_goog3_gpc_x86_64 Build/SE2B.220326.027; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36', '2024-05-05 12:31:28', '2024-05-05 12:31:28'),
(1131, '34.218.159.145', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Linux; Android 12; Pixel 6 Pro Build/SP2A.220505.008; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/95.0.4638.74 Mobile Safari/537.36', '2024-05-05 13:04:22', '2024-05-05 13:04:22'),
(1132, '177.136.203.45', 'South America', 'Brazil', '', '', 'America/Sao_Paulo', '-22.8305', '-43.2192', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-05 14:15:52', '2024-05-05 14:15:52'),
(1133, '223.113.128.167', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'curl/7.29.0', '2024-05-05 15:35:43', '2024-05-05 15:35:43'),
(1134, '154.58.198.40', 'Europe', 'Spain', 'Madrid', 'Madrid', 'Europe/Madrid', '40.4163', '-3.6934', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', '2024-05-05 20:05:47', '2024-05-05 20:05:47'),
(1135, '172.96.172.152', 'North America', 'United States', 'Miami', 'Florida', 'America/New_York', '25.8119', '-80.2318', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-05 20:43:41', '2024-05-05 20:43:41'),
(1136, '54.246.248.87', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-05-05 22:30:13', '2024-05-05 22:30:13'),
(1137, '167.248.133.57', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-05-05 22:33:14', '2024-05-05 22:33:14'),
(1138, '54.89.53.57', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/534.1', '2024-05-05 22:52:49', '2024-05-05 22:52:49'),
(1139, '198.23.254.123', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (compatible; version/1.0; Windows NT 5.1', '2024-05-05 23:27:22', '2024-05-05 23:27:22'),
(1140, '137.184.174.43', 'North America', 'Canada', 'Toronto', 'Ontario', 'America/Toronto', '43.6547', '-79.3623', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-06 01:20:24', '2024-05-06 01:20:24'),
(1141, '62.12.114.42', 'Africa', 'Kenya', 'Nairobi', 'Nairobi County', 'Africa/Nairobi', '-1.2841', '36.8155', 'Mozilla/5.0 (Windows NT 10.0; WOW64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/89.0.4447.51', '2024-05-06 02:51:22', '2024-05-06 02:51:22'),
(1142, '54.73.191.12', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '2024-05-06 03:54:27', '2024-05-06 03:54:27'),
(1143, '143.198.217.248', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', NULL, '2024-05-06 07:23:20', '2024-05-06 07:23:20'),
(1144, '147.45.178.15', 'Europe', 'Russia', '', '', 'Europe/Moscow', '55.7386', '37.6068', 'Mozilla/5.0 (Windows NT 10.0; WOW64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/89.0.4447.51', '2024-05-06 08:45:52', '2024-05-06 08:45:52'),
(1145, '167.71.226.207', 'Asia', 'India', 'Bengaluru', 'Karnataka', 'Asia/Kolkata', '12.9634', '77.5855', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-05-06 08:54:29', '2024-05-06 08:54:29'),
(1146, '87.236.176.61', 'Europe', 'United Kingdom', '', '', 'Europe/London', '51.4964', '-0.1224', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-05-06 13:00:33', '2024-05-06 13:00:33'),
(1147, '85.17.76.141', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Mobile/15E148 Safari/604.1', '2024-05-06 13:57:54', '2024-05-06 13:57:54'),
(1148, '130.255.166.82', 'Europe', 'Sweden', '', '', 'Europe/Stockholm', '59.3247', '18.056', 'Mozilla/5.0 (Linux; Android 14; SM-S901B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.280 Mobile Safari/537.36 OPR/80.4.4244.7786', '2024-05-06 14:09:00', '2024-05-06 14:09:00'),
(1149, '82.165.224.201', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-05-06 16:29:53', '2024-05-06 16:29:53'),
(1150, '82.165.224.225', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-05-06 16:37:37', '2024-05-06 16:37:37'),
(1151, '201.143.89.71', 'North America', 'Mexico', 'Mexicali', 'Baja California', 'America/Tijuana', '32.6323', '-115.3183', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2024-05-06 18:33:13', '2024-05-06 18:33:13'),
(1152, '84.32.41.136', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5238', '-0.089', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-06 18:44:51', '2024-05-06 18:44:51'),
(1153, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1154, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1155, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00');
INSERT INTO `visitors` (`id`, `ip`, `continent_name`, `country`, `capital`, `city`, `timezone`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(1156, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1157, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1158, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1159, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1160, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1161, '5.45.80.183', 'Europe', 'Russia', 'Moscow', 'Moscow', 'Europe/Moscow', '55.7483', '37.6171', 'Mozilla/5.0 (X11; Linux x86_64)', '2024-05-06 21:03:00', '2024-05-06 21:03:00'),
(1162, '66.249.66.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.118 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-06 21:06:42', '2024-05-06 21:06:42'),
(1163, '3.234.142.68', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-05-06 23:33:57', '2024-05-06 23:33:57'),
(1164, '119.148.61.149', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-07 00:25:41', '2024-05-08 01:19:57'),
(1165, '103.230.106.28', 'Asia', 'Bangladesh', '', '', 'Asia/Dhaka', '23.7018', '90.3742', 'Mozilla/5.0 (Linux; Android 12; Redmi Note 9 Pro Max Build/SKQ1.211019.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.123 Mobile Safari/537.36', '2024-05-07 00:25:58', '2024-05-07 00:25:58'),
(1166, '89.248.172.92', 'Europe', 'The Netherlands', 'Utrecht', 'Utrecht', 'Europe/Amsterdam', '52.0922', '5.1268', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1 OPX/2.2.0', '2024-05-07 02:40:08', '2024-05-07 02:40:08'),
(1167, '198.203.28.235', 'North America', 'United States', 'Jacksonville', 'Florida', 'America/New_York', '30.3209', '-81.6829', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-07 04:37:10', '2024-05-07 04:37:10'),
(1168, '43.155.169.133', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-05-07 17:52:51', '2024-05-07 17:52:51'),
(1169, '220.181.108.155', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '2024-05-07 22:48:31', '2024-05-07 22:48:31'),
(1170, '116.179.37.153', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)', '2024-05-07 22:48:43', '2024-05-07 22:48:43'),
(1171, '108.177.7.81', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SQ1D.220205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/91.0.4472.114 Mobile Safari/537.36', '2024-05-08 01:16:57', '2024-05-08 01:16:57'),
(1172, '66.102.7.99', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:20:10', '2024-05-08 01:20:10'),
(1173, '66.102.7.101', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:20:13', '2024-05-08 01:20:13'),
(1174, '66.102.7.100', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:21:00', '2024-05-08 01:21:00'),
(1175, '74.125.210.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:21:30', '2024-05-08 01:21:30'),
(1176, '74.125.210.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:21:31', '2024-05-08 01:21:31'),
(1177, '74.125.210.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 11; OnePlus8Pro Build/QKR1.191246.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2024-05-08 01:22:19', '2024-05-08 01:22:19'),
(1178, '167.99.211.9', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-08 02:29:39', '2024-05-08 02:29:39'),
(1179, '87.249.132.181', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-08 02:36:07', '2024-05-08 02:36:07'),
(1180, '66.249.66.33', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-08 03:17:01', '2024-05-08 03:17:01'),
(1181, '206.81.24.227', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', NULL, '2024-05-08 05:29:50', '2024-05-08 05:29:50'),
(1182, '206.81.24.227', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA270239) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.3589.98 Mobile Safari/537.3', '2024-05-08 05:29:50', '2024-05-08 05:29:50'),
(1183, '206.81.24.227', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Go-http-client/1.1', '2024-05-08 05:29:51', '2024-05-08 05:29:51'),
(1184, '66.63.167.224', 'North America', 'United States', 'Chicago', 'Illinois', 'America/Chicago', '42.0048', '-87.9954', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-05-08 05:30:07', '2024-05-08 05:30:07'),
(1185, '34.116.68.153', 'Oceania', 'Australia', 'Sydney', 'New South Wales', 'Australia/Sydney', '-33.8715', '151.2006', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', '2024-05-08 05:30:08', '2024-05-08 05:30:08'),
(1186, '65.154.226.170', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-05-08 05:32:00', '2024-05-08 05:32:00'),
(1187, '51.159.14.99', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-05-08 05:36:21', '2024-05-08 05:36:21'),
(1188, '51.159.111.112', 'Europe', 'France', 'Paris', 'Paris', 'Europe/Paris', '48.8323', '2.4075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-05-08 05:44:46', '2024-05-08 05:44:46'),
(1189, '199.244.88.227', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-05-08 06:00:56', '2024-05-08 06:00:56'),
(1190, '74.125.212.67', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Safari/537.36 PlayStore-Google', '2024-05-08 06:22:31', '2024-05-08 06:22:31'),
(1191, '74.125.212.68', 'North America', 'United States', 'Regency of Iowa Mobile Home Park', 'Iowa', 'America/Chicago', '41.2591', '-95.8517', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Safari/537.36 PlayStore-Google', '2024-05-08 06:22:32', '2024-05-08 06:22:32'),
(1192, '74.125.212.69', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Safari/537.36 PlayStore-Google', '2024-05-08 06:22:32', '2024-05-08 06:22:32'),
(1193, '185.190.42.200', 'Europe', 'Russia', 'Ozersk', 'Chelyabinsk Oblast', 'Asia/Yekaterinburg', '55.7585', '60.7079', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-08 07:05:16', '2024-05-08 07:05:16'),
(1194, '154.28.229.97', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:33', '2024-05-08 07:43:33'),
(1195, '154.28.229.217', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:33', '2024-05-08 07:43:33'),
(1196, '154.28.229.217', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:36', '2024-05-08 07:43:36'),
(1197, '154.28.229.206', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:48', '2024-05-08 07:43:48'),
(1198, '154.28.229.172', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:48', '2024-05-08 07:43:48'),
(1199, '154.28.229.172', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-05-08 07:43:52', '2024-05-08 07:43:52'),
(1200, '154.28.229.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 07:43:58', '2024-05-08 07:43:58'),
(1201, '104.133.219.13', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-05-08 07:44:31', '2024-05-08 07:44:31'),
(1202, '66.249.66.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'GoogleOther', '2024-05-08 07:44:31', '2024-05-08 07:44:31'),
(1203, '104.133.219.32', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (Linux; Android 14; SM-A235F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/117.0.0.0 Mobile Safari/537.36', '2024-05-08 07:44:50', '2024-05-08 07:44:50'),
(1204, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'GoogleOther', '2024-05-08 07:45:20', '2024-05-08 07:45:20'),
(1205, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'GoogleOther', '2024-05-08 07:48:30', '2024-05-08 07:48:30'),
(1206, '104.133.219.22', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-08 07:48:30', '2024-05-08 07:48:30'),
(1207, '104.133.219.36', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (Linux; Android 13; SM-A325F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.123 Mobile Safari/537.36', '2024-05-08 07:50:41', '2024-05-08 07:50:41'),
(1208, '104.164.173.47', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-05-08 08:23:50', '2024-05-08 08:23:50'),
(1209, '104.164.173.77', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-05-08 08:23:50', '2024-05-08 08:23:50'),
(1210, '171.67.70.233', 'North America', 'United States', 'Mountain View', 'California', 'America/Los_Angeles', '37.4043', '-122.0748', 'Mozilla/5.0 zgrab/0.x', '2024-05-08 09:29:50', '2024-05-08 09:29:50'),
(1211, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-08 11:00:28', '2024-05-08 11:00:28'),
(1212, '205.169.39.189', 'North America', 'United States', 'Del Norte', 'Colorado', 'America/Denver', '37.6479', '-106.4104', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-05-08 11:21:35', '2024-05-08 11:21:35'),
(1213, '205.169.39.189', 'North America', 'United States', 'Del Norte', 'Colorado', 'America/Denver', '37.6479', '-106.4104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-05-08 11:21:42', '2024-05-08 11:21:42'),
(1214, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.118 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-08 12:08:38', '2024-05-08 12:08:38'),
(1215, '85.120.244.156', 'Europe', 'Romania', 'Cluj-Napoca', 'Cluj County', 'Europe/Bucharest', '46.7495', '23.4895', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-08 12:09:34', '2024-05-08 12:09:34'),
(1216, '52.80.18.29', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 8_0_2) AppleWebKit/554.35 (KHTML, like Gecko) Chrome/57.0.2979 Safari/537.36', '2024-05-08 12:38:06', '2024-05-08 12:38:06'),
(1217, '52.80.18.29', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Go-http-client/1.1', '2024-05-08 12:38:13', '2024-05-08 12:38:13'),
(1218, '52.80.18.29', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2024-05-08 12:38:21', '2024-05-08 12:38:21'),
(1219, '109.202.99.46', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Go-http-client/1.1', '2024-05-08 12:51:44', '2024-05-08 12:51:44'),
(1220, '109.202.99.46', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Go-http-client/1.1', '2024-05-08 12:51:44', '2024-05-08 12:51:44'),
(1221, '109.202.99.46', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Go-http-client/1.1', '2024-05-08 12:51:44', '2024-05-08 12:51:44'),
(1222, '109.202.99.46', 'Europe', 'The Netherlands', '', '', 'Europe/Amsterdam', '52.3824', '4.8995', 'Go-http-client/1.1', '2024-05-08 12:51:44', '2024-05-08 12:51:44'),
(1223, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; de-AT; rv:1.8a5) Gecko/20041122', '2024-05-08 13:31:57', '2024-05-08 13:31:57'),
(1224, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Opera/9.80 (Windows NT 6.0; U; en) Presto/2.8.99 Version/11.10', '2024-05-08 13:31:58', '2024-05-08 13:31:58'),
(1225, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-au; rv:1.9.0.1) Gecko/2008070206', '2024-05-08 13:33:33', '2024-05-08 13:33:33'),
(1226, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008090713', '2024-05-08 13:47:54', '2024-05-08 13:47:54'),
(1227, '27.128.246.110', 'Asia', 'China', 'Shijiazhuang', 'Hebei', 'Asia/Shanghai', '38.036', '114.4654', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-08 14:05:52', '2024-05-08 14:05:52'),
(1228, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Opera/9.80 (Windows NT 6.1; WOW64; U; pt) Presto/2.10.229 Version/11.62', '2024-05-08 15:21:01', '2024-05-08 15:21:01'),
(1229, '115.77.227.109', 'Asia', 'Vietnam', 'Ho Chi Minh City', 'Ho Chi Minh', 'Asia/Ho_Chi_Minh', '10.822', '106.6257', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-08 15:56:46', '2024-05-08 15:56:46'),
(1230, '171.67.70.238', 'North America', 'United States', 'Mountain View', 'California', 'America/Los_Angeles', '37.4043', '-122.0748', 'Mozilla/5.0 zgrab/0.x', '2024-05-08 17:29:50', '2024-05-08 17:29:50'),
(1231, '47.89.193.239', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-05-08 17:34:39', '2024-05-08 17:34:39'),
(1232, '47.88.94.28', 'North America', 'United States', '', 'California', 'America/Los_Angeles', '34.0544', '-118.244', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-05-08 17:34:41', '2024-05-08 17:34:41'),
(1233, '47.254.76.138', 'North America', 'United States', 'Santa Clara', 'California', 'America/Los_Angeles', '37.353', '-121.9543', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '2024-05-08 17:34:43', '2024-05-08 17:34:43'),
(1234, '185.196.220.26', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.018', '-77.539', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-08 20:20:02', '2024-05-08 20:20:02'),
(1235, '169.61.66.59', 'North America', 'United States', 'Brooklyn', 'New York', 'America/New_York', '40.6368', '-74.0005', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '2024-05-08 20:46:44', '2024-05-08 20:46:44'),
(1236, '154.28.229.249', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-05-08 21:00:49', '2024-05-08 21:00:49'),
(1237, '104.164.173.83', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-05-08 21:00:50', '2024-05-08 21:00:50'),
(1238, '154.28.229.245', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-05-08 21:00:54', '2024-05-08 21:00:54'),
(1239, '52.215.205.231', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', '2024-05-09 01:41:37', '2024-05-09 01:41:37'),
(1240, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', '2024-05-09 02:22:48', '2024-05-09 02:22:48'),
(1241, '47.242.224.70', 'Asia', 'Hong Kong', 'Hong Kong', '', 'Asia/Hong_Kong', '22.2842', '114.1759', 'Mozilla/5.0 (Windows NT 6.0; rv:2.0) Gecko/20100101 Firefox/4.0 Opera 12.14', '2024-05-09 02:22:54', '2024-05-09 02:22:54'),
(1242, '156.146.55.184', 'Europe', 'Bulgaria', 'Sofia', 'Sofia-Capital', 'Europe/Sofia', '42.6951', '23.325', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', '2024-05-09 02:35:14', '2024-05-09 02:35:14'),
(1243, '54.36.149.95', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-05-09 03:44:53', '2024-05-09 03:44:53'),
(1244, '104.133.49.65', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-09 05:08:16', '2024-05-09 05:08:16'),
(1245, '104.133.219.36', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-09 06:02:49', '2024-05-09 06:02:49'),
(1246, '104.133.219.42', 'Asia', 'India', '', '', 'Asia/Kolkata', '21.9974', '79.0011', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-09 06:16:59', '2024-05-09 06:16:59'),
(1247, '66.249.66.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-09 10:33:29', '2024-05-09 10:33:29'),
(1248, '144.126.137.215', 'North America', 'United States', 'St Louis', 'Missouri', 'America/Chicago', '38.6287', '-90.1988', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-05-09 11:04:13', '2024-05-09 11:04:13'),
(1249, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.155 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-09 15:39:59', '2024-05-09 15:39:59'),
(1250, '150.136.92.54', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.018', '-77.539', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', '2024-05-09 18:45:19', '2024-05-09 18:45:19'),
(1251, '34.174.245.15', 'North America', 'United States', 'Dallas', 'Texas', 'America/Chicago', '32.7797', '-96.8022', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-05-09 21:27:22', '2024-05-09 21:27:22'),
(1252, '40.119.193.220', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-05-09 21:48:30', '2024-05-09 21:48:30'),
(1253, '40.119.193.220', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.76', '2024-05-09 21:48:34', '2024-05-09 21:48:34'),
(1254, '40.119.193.220', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36', '2024-05-09 21:48:37', '2024-05-09 21:48:37'),
(1255, '40.119.193.220', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10; rv:52.0) Gecko/20100101 Firefox/52.0', '2024-05-09 21:48:39', '2024-05-09 21:48:39'),
(1256, '213.239.221.117', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', '2024-05-09 22:06:04', '2024-05-09 22:06:04'),
(1257, '135.148.195.11', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-05-09 22:57:13', '2024-05-09 22:57:13'),
(1258, '159.223.213.22', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-10 00:47:57', '2024-05-10 00:47:57'),
(1259, '54.36.148.143', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', '2024-05-10 02:12:26', '2024-05-10 02:12:26'),
(1260, '124.243.136.249', 'Asia', 'Singapore', '', '', 'Asia/Singapore', '1.3673', '103.8014', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-05-10 05:18:11', '2024-05-10 05:18:11'),
(1261, '92.205.171.87', 'Europe', 'France', '', '', 'Europe/Paris', '48.8582', '2.3387', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/87.0.4280.77 Mobile/15E148 Safari/604.1', '2024-05-10 06:45:21', '2024-05-10 06:45:21'),
(1262, '103.130.218.13', 'Asia', 'Vietnam', '', '', 'Asia/Bangkok', '16.1667', '107.8333', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-10 10:34:32', '2024-05-10 10:34:32'),
(1263, '66.249.66.45', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.155 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-10 12:24:46', '2024-05-10 12:24:46'),
(1264, '212.227.216.132', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-05-10 15:59:22', '2024-05-10 15:59:22'),
(1265, '212.227.216.236', 'Europe', 'Germany', '', '', 'Europe/Berlin', '51.2993', '9.491', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', '2024-05-10 16:06:00', '2024-05-10 16:06:00'),
(1266, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.155 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-10 16:45:45', '2024-05-10 16:45:45'),
(1267, '161.35.19.65', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2024-05-10 18:11:10', '2024-05-10 18:11:10'),
(1268, '44.228.129.132', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.1; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-05-10 21:02:13', '2024-05-10 21:02:13'),
(1269, '52.187.40.92', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.2868', '103.8503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '2024-05-10 23:30:51', '2024-05-10 23:30:51'),
(1270, '45.94.31.203', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-11 00:13:18', '2024-05-11 00:13:18'),
(1271, '45.94.31.191', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-11 01:08:19', '2024-05-11 01:08:19'),
(1272, '44.238.103.223', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-05-11 07:06:37', '2024-05-11 07:06:37'),
(1273, '35.95.88.169', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (compatible; wpbot/1.1; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-05-11 08:56:47', '2024-05-11 08:56:47'),
(1274, '66.249.66.8', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-11 10:05:32', '2024-05-11 10:05:32'),
(1275, '66.249.92.9', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.118 Safari/537.36 PlayStore-Google', '2024-05-11 12:07:18', '2024-05-11 12:07:18'),
(1276, '54.216.201.106', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', '2024-05-11 12:40:41', '2024-05-11 12:40:41'),
(1277, '65.154.226.169', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-05-11 13:10:21', '2024-05-11 13:10:21'),
(1278, '65.154.226.169', 'North America', 'United States', 'Salt Lake City', 'Utah', 'America/Denver', '40.6571', '-111.8343', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/119.0.6045.199 Safari/537.36', '2024-05-11 13:10:33', '2024-05-11 13:10:33'),
(1279, '212.30.33.98', 'Europe', 'Spain', 'Madrid', 'Madrid', 'Europe/Madrid', '40.4163', '-3.6934', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-11 17:11:31', '2024-05-11 17:11:31'),
(1280, '106.75.98.180', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Go-http-client/1.1', '2024-05-11 23:47:53', '2024-05-11 23:47:53'),
(1281, '52.80.60.159', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Windows NT 7_2_1; Win64; x64) AppleWebKit/566.54 (KHTML, like Gecko) Chrome/60.0.753 Safari/537.36', '2024-05-11 23:48:31', '2024-05-11 23:48:31'),
(1282, '52.80.60.159', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Go-http-client/1.1', '2024-05-11 23:48:42', '2024-05-11 23:48:42'),
(1283, '52.80.60.159', 'Asia', 'China', 'Beijing', 'Beijing', 'Asia/Shanghai', '39.911', '116.395', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2024-05-11 23:48:53', '2024-05-11 23:48:53'),
(1284, '64.225.8.8', 'North America', 'United States', 'Clifton', 'New Jersey', 'America/New_York', '40.8364', '-74.1403', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-12 00:52:08', '2024-05-12 00:52:08'),
(1285, '93.158.91.252', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', '2024-05-12 01:01:29', '2024-05-12 01:01:29'),
(1286, '220.181.108.114', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '2024-05-12 04:05:06', '2024-05-12 04:05:06'),
(1287, '116.179.37.40', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)', '2024-05-12 04:05:10', '2024-05-12 04:05:10'),
(1288, '112.94.253.183', 'Asia', 'China', 'Guangzhou', 'Guangdong', 'Asia/Shanghai', '23.1181', '113.2539', 'Mozilla/5.051975669 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2024-05-12 10:34:37', '2024-05-12 10:34:37'),
(1289, '179.43.152.66', 'Europe', 'Switzerland', 'Zurich', 'Zurich', 'Europe/Zurich', '47.3934', '8.5163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-12 10:37:26', '2024-05-12 10:37:26'),
(1290, '93.158.91.12', 'Europe', 'Sweden', 'Nyköping', 'Södermanland County', 'Europe/Stockholm', '58.756', '17.0095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-05-12 10:58:52', '2024-05-12 10:58:52'),
(1291, '184.94.240.88', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0', '2024-05-12 14:37:10', '2024-05-12 14:37:10'),
(1292, '91.92.244.237', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-05-12 23:22:49', '2024-05-12 23:22:49'),
(1293, '199.45.155.46', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-05-13 01:48:29', '2024-05-13 01:48:29'),
(1294, '18.201.228.1', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', '2024-05-13 02:16:00', '2024-05-13 02:16:00'),
(1295, '136.243.61.201', 'Europe', 'Germany', 'Kitzingen', 'Bavaria', 'Europe/Berlin', '49.7435', '10.1615', 'NetAPI v1', '2024-05-13 02:38:50', '2024-05-13 02:38:50'),
(1296, '66.249.66.10', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.155 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-13 03:20:28', '2024-05-13 03:20:28'),
(1297, '45.94.31.202', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-13 03:20:57', '2024-05-13 03:20:57'),
(1298, '157.230.127.68', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.75', '2024-05-13 04:04:36', '2024-05-13 04:04:36'),
(1299, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.155 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-13 04:28:41', '2024-05-13 04:28:41'),
(1300, '43.155.183.138', 'Asia', 'South Korea', 'Seoul', 'Seoul', 'Asia/Seoul', '37.5794', '126.9754', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-05-13 04:52:10', '2024-05-13 04:52:10'),
(1301, '196.242.89.19', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-13 08:08:11', '2024-05-13 08:08:11'),
(1302, '196.242.21.229', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-13 08:08:11', '2024-05-13 08:08:11'),
(1303, '196.242.21.120', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-13 08:08:11', '2024-05-13 08:08:11'),
(1304, '196.199.40.77', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-13 08:08:12', '2024-05-13 08:08:12'),
(1305, '196.196.31.109', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-13 08:08:14', '2024-05-13 08:08:14'),
(1306, '66.249.70.137', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-13 09:35:18', '2024-05-13 09:35:18'),
(1307, '66.249.70.136', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-13 09:35:27', '2024-05-13 09:35:27'),
(1308, '164.90.225.193', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1169', '8.6837', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 09:59:24', '2024-05-13 09:59:24'),
(1309, '196.242.21.163', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 00:50:39', '2024-05-14 00:50:39'),
(1310, '196.199.40.77', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 00:50:39', '2024-05-14 00:50:39'),
(1311, '196.247.160.210', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 00:50:43', '2024-05-14 00:50:43'),
(1312, '198.240.90.40', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 00:50:45', '2024-05-14 00:50:45'),
(1313, '68.183.42.33', 'Europe', 'United Kingdom', 'Slough', 'Slough', 'Europe/London', '51.5368', '-0.6718', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-14 01:06:03', '2024-05-14 01:06:03'),
(1314, '66.249.70.2', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-14 02:42:16', '2024-05-14 02:42:16'),
(1315, '35.164.189.252', 'North America', 'United States', 'Boardman', 'Oregon', 'America/Los_Angeles', '45.8234', '-119.7257', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-05-14 03:43:27', '2024-05-14 03:43:27'),
(1316, '91.92.244.237', 'Europe', 'Bulgaria', '', '', 'Europe/Sofia', '42.696', '23.332', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-14 04:10:50', '2024-05-14 04:10:50'),
(1317, '45.94.31.204', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.3759', '4.8975', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-14 05:26:20', '2024-05-14 05:26:20'),
(1318, '198.240.91.231', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 09:32:35', '2024-05-14 09:32:35'),
(1319, '198.240.91.138', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5074', '-0.1196', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 09:32:36', '2024-05-14 09:32:36'),
(1320, '185.223.234.151', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 09:32:37', '2024-05-14 09:32:37'),
(1321, '109.230.218.71', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 09:32:38', '2024-05-14 09:32:38'),
(1322, '165.231.45.153', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 09:32:40', '2024-05-14 09:32:40'),
(1323, '66.249.70.138', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Google-adstxt', '2024-05-14 09:35:25', '2024-05-14 09:35:25'),
(1324, '3.255.179.212', 'Europe', 'Ireland', 'Dublin', 'Leinster', 'Europe/Dublin', '53.3379', '-6.2591', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', '2024-05-14 09:45:14', '2024-05-14 09:45:14'),
(1325, '173.252.87.16', 'North America', 'United States', 'Fort Worth', 'Texas', 'America/Chicago', '32.7505', '-97.3082', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-05-14 10:11:06', '2024-05-14 10:11:06'),
(1326, '178.128.92.139', 'Asia', 'Singapore', 'Singapore', '', 'Asia/Singapore', '1.3078', '103.6818', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '2024-05-14 11:59:47', '2024-05-14 11:59:47'),
(1327, '204.8.96.88', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', '2024-05-14 12:17:15', '2024-05-14 12:17:15'),
(1328, '84.17.48.214', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-05-14 15:05:11', '2024-05-14 15:05:11'),
(1329, '109.230.218.192', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 15:44:24', '2024-05-14 15:44:24'),
(1330, '196.196.255.193', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 15:44:25', '2024-05-14 15:44:25'),
(1331, '196.196.255.145', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 15:44:26', '2024-05-14 15:44:26'),
(1332, '185.223.234.186', 'Europe', 'United Kingdom', 'London', 'England', 'Europe/London', '51.5088', '-0.093', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:114.0) Gecko/20100101 Firefox/114.0', '2024-05-14 15:44:27', '2024-05-14 15:44:27'),
(1333, '69.171.249.8', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-05-14 17:00:42', '2024-05-14 17:00:42'),
(1334, '79.166.181.29', 'Europe', 'Greece', 'Athens', 'Attica', 'Europe/Athens', '37.9842', '23.7353', 'Python/3.9 aiohttp/3.8.3', '2024-05-15 09:21:21', '2024-05-15 09:21:21'),
(1335, '68.178.145.156', 'Asia', 'India', 'Mumbai', 'Maharashtra', 'Asia/Kolkata', '19.0748', '72.8856', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-15 11:11:04', '2024-05-15 11:11:04'),
(1336, '38.68.134.6', 'North America', 'United States', 'Dallas', 'Texas', 'America/Chicago', '32.7797', '-96.8022', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', '2024-05-15 14:00:06', '2024-05-15 14:00:06'),
(1337, '178.128.253.60', 'Europe', 'The Netherlands', 'Amsterdam', 'North Holland', 'Europe/Amsterdam', '52.352', '4.9392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-05-16 00:52:07', '2024-05-16 00:52:07'),
(1338, '66.249.65.41', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-05-16 03:17:10', '2024-05-16 03:17:10'),
(1339, '116.179.32.25', 'Asia', 'China', '', '', 'Asia/Shanghai', '34.7732', '113.722', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '2024-05-16 11:04:39', '2024-05-16 11:04:39'),
(1340, '138.117.149.62', 'South America', 'Chile', 'Santiago', 'Santiago Metropolitan', 'America/Santiago', '-33.4521', '-70.6536', 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/95.0', '2024-05-16 15:11:03', '2024-05-16 15:11:03'),
(1341, '216.24.216.109', 'Europe', 'Germany', 'Frankfurt am Main', 'Hesse', 'Europe/Berlin', '50.1187', '8.6842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.71', '2024-05-16 16:40:39', '2024-05-16 16:40:39'),
(1342, '3.224.220.101', 'North America', 'United States', 'Ashburn', 'Virginia', 'America/New_York', '39.0469', '-77.4903', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5 (Amazonbot/0.1; +https://developer.amazon.com/support/amazonbot)', '2024-05-16 22:30:56', '2024-05-16 22:30:56'),
(1343, '135.148.195.14', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2024-05-16 23:00:48', '2024-05-16 23:00:48'),
(1344, '17.241.75.237', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-05-17 01:23:32', '2024-05-17 01:23:32'),
(1345, '17.246.19.254', 'North America', 'United States', '', '', 'America/Chicago', '37.751', '-97.822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2024-05-17 01:25:49', '2024-05-17 01:25:49'),
(1346, '119.148.61.149', 'Asia', 'Bangladesh', 'Dhaka', 'Dhaka', 'Asia/Dhaka', '23.7167', '90.349', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-17 01:16:34', '2025-04-17 01:16:34'),
(1347, '20.55.61.179', 'North America', 'United States', 'Washington', 'Virginia', 'America/New_York', '38.7095', '-78.1539', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2025-04-17 01:18:13', '2025-04-17 01:18:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_mes`
--
ALTER TABLE `about_mes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_images_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_mes`
--
ALTER TABLE `about_mes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1348;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD CONSTRAINT `portfolio_images_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
