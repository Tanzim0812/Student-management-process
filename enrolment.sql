-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 02:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrolment`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `class_id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bangla', '101', '2020-06-21 00:53:03', '2020-06-21 00:53:03'),
(2, 1, 'English', '102', '2020-06-21 00:53:15', '2020-06-21 00:53:15'),
(3, 1, 'Math', '105', '2020-06-21 00:53:24', '2020-06-21 00:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `enrolments`
--

CREATE TABLE `enrolments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolments`
--

INSERT INTO `enrolments` (`id`, `class`, `mobile_no`, `created_at`, `updated_at`) VALUES
(1, 'Ten', 1555555555, NULL, NULL),
(3, 'four', 123456789, '2020-06-20 11:15:14', '2020-06-20 11:15:14'),
(4, 'four', 12345678, '2020-06-20 11:26:31', '2020-06-20 11:26:31'),
(5, 'five', 123456, '2020-06-20 11:26:45', '2020-06-20 11:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_20_145529_create_enrolments_table', 2),
(4, '2020_06_21_062025_create_courses_table', 3),
(5, '2020_06_21_074843_create_students_table', 4),
(6, '2020_06_21_114315_create_token_stors_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `name`, `roll`, `address`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 0, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL),
(4, 2, 'Human2', '121', 'dhaka', 'human2@gmail.com', '$2y$10$xwvdB46pAeMWOQvcpoMX5uKjn80uoZnSwS6PkG2qy191sGg1H634K', '2020-06-21 02:25:58', '2020-06-21 02:25:58'),
(5, 2, 'Human2', '1213', 'dhaka', 'human2@gmail.com', '$2y$10$A0eqUnt.SdINsoKnNdiPj.XcYGmCnzRescEv/FkiMoxErXHMbrZSO', '2020-06-21 02:26:07', '2020-06-21 02:26:07'),
(6, 1, 'Hmn', '12341', 'dhaka', 'hmn@gmail.com', '$2y$10$mMyS1XAUleaN91le7yZGZeKQD9f8nbO7B36jTZDEvMQZf4pYsb19C', '2020-06-21 02:32:46', '2020-06-21 02:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `token_store`
--

CREATE TABLE `token_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_store`
--

INSERT INTO `token_store` (`id`, `user_id`, `auth_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'xyz', '2020-06-21 05:52:50', '2020-06-21 05:52:50'),
(5, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU5Mjc0MTE3OSwiZXhwIjoxNTkyNzQ0Nzc5LCJuYmYiOjE1OTI3NDExNzksImp0aSI6Ik5KNm5jd3NhREcyS0sxN1ciLCJzdWIiOjYsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.o-bP4eZ3yYCLXvGoGOMDjxY2OjeDQIxG_miIOQh-D6c', '2020-06-21 06:06:19', '2020-06-21 06:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MRX', 'MRX@gmail.com', '2020-06-23 08:40:40', '$2y$10$LKN2Tb0Q6.ISQt5VOzlNtO3V6S.b11m6hPCu.PA4NZ9qVFC5XPP.S', NULL, NULL, NULL),
(2, 'MRY', 'MrY@gmail.com', NULL, '$2y$10$d6KxhALMPvmP/nKR22aQZuJGOSpzKJAHmcW0dx1vZPhS61gdAoYjK', NULL, '2020-06-21 04:41:09', '2020-06-21 04:41:09'),
(4, 'MRY', 'MrYY@gmail.com', NULL, '$2y$10$9UF2YgOHZ1wOtcck8vzZBOfB6LDwxLjkfRMgFxAT6JaB2V.rcUXva', NULL, '2020-06-21 04:45:47', '2020-06-21 04:45:47'),
(6, 'MRZ', 'MrZ@gmail.com', NULL, '$2y$10$s.tfsLCx60raA/SoWaZkuua6FlfKZsYnA5vET2rKo0YWDmNeG2BBO', NULL, '2020-06-21 04:46:45', '2020-06-21 04:46:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_store`
--
ALTER TABLE `token_store`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrolments`
--
ALTER TABLE `enrolments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `token_store`
--
ALTER TABLE `token_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
