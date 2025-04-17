-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2025 at 06:55 PM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sherazdev`
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
(4, 1, 'Apasen HRM', 'frontend/images/projects/6800ac314e403.jpg', 'This is HRM software', 'Ather Khan', 'Apasen HRM', 'JS, Laravel, MySQL', '2024-03-30', 'https://apasenhrm.co.uk', '2024-07-04 01:45:12', '2025-04-17 01:22:25'),
(5, 1, 'ePrap', 'frontend/images/projects/680146f763cb5.jpg', 'This is LMS software', 'Samson Chisi', 'ePrap', 'JS, CodeIgniter, MySQL', NULL, 'https://eprap.com', '2024-07-04 01:45:12', '2025-04-17 12:22:47'),
(6, 1, 'Lite Hoster', 'frontend/images/projects/6801485000ca8.jpg', 'Domain Hosting Provider Company', 'Sheraz Howlader', 'ePrap', 'Vanila JS, AJAX, PHP, Laravel', NULL, 'https://litehoster.com', '2024-07-04 01:45:12', '2025-04-17 12:28:32');

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
(14, 3, 'frontend/images/project_images/6800b151adb66.jpg', '2025-04-17 01:44:17', '2025-04-17 01:44:17'),
(15, 3, 'frontend/images/project_images/68013dd6632a9.jpg', '2025-04-17 11:43:50', '2025-04-17 11:43:50'),
(16, 3, 'frontend/images/project_images/68013ed61ccba.jpg', '2025-04-17 11:48:06', '2025-04-17 11:48:06'),
(17, 5, 'frontend/images/project_images/680144e629fc9.jpg', '2025-04-17 12:13:58', '2025-04-17 12:13:58'),
(18, 5, 'frontend/images/project_images/680146934d6db.jpg', '2025-04-17 12:21:07', '2025-04-17 12:21:07'),
(19, 5, 'frontend/images/project_images/680147219083c.jpg', '2025-04-17 12:23:29', '2025-04-17 12:23:29'),
(20, 6, 'frontend/images/project_images/680148630ab8f.jpg', '2025-04-17 12:28:51', '2025-04-17 12:28:51'),
(21, 6, 'frontend/images/project_images/680148cded923.jpg', '2025-04-17 12:30:37', '2025-04-17 12:30:37'),
(22, 6, 'frontend/images/project_images/6801494156e50.jpg', '2025-04-17 12:32:33', '2025-04-17 12:32:33'),
(23, 4, 'frontend/images/project_images/68014a15d89a6.jpg', '2025-04-17 12:36:05', '2025-04-17 12:36:05');

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
(1, 'admin@sherazdev.com.bd', NULL, NULL, 'Full Stack Developer in Bangladesh', 'Sheraz Howlader, a skilled Full Stack Developer Bangladesh, offering expertise in web development and innovative solutions.', 'Full Stack Developer Bangladesh, experienced full stack developer, Full Stack Developer, Web Development, Software Engineer, Coding Expert, Frontend & Backend Development, JavaScript, HTML5 & CSS3, Database Management, Responsive Design, Innovative Solutions, Bangladesh, Problem Solver, Agile Development, API Integration, Code Optimization, Sheraz Howlader', NULL, 'Full Stack Developer', '2024-01-28 09:34:13', '2025-04-17 12:45:44');

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
(1, 1, 'Sheraz', 'Howlader', 'frontend/images/profile.jpg', '22-12-1997', '+8801728692643', '+8809638555680', 'admin@sherazdev.com.bd', NULL, 'H - 248, R - 08, <br>Phaze - 2, Sonadanga. <br>Khulna - 9100 </p>', '$2y$12$CwgRGrvppsztqvCwIydoE.72uXaEae6MahRHPZQHd5junbx1vY8g2', NULL, NULL, NULL, 'frontend/sheraz-howlader.pdf', NULL, NULL, NULL, '2024-01-28 09:34:13', '2024-01-28 09:34:13');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
