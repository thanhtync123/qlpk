-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2025 at 08:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel4`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `motivation` text NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `created_at`, `updated_at`, `date`, `start_time`, `end_time`, `motivation`, `patient_id`, `user_id`) VALUES
(1, '2025-03-14 00:05:29', '2025-03-14 00:05:29', '2012-09-24', '12:17:56', '11:39:45', 'Ut sed magnam ducimus et. Totam consequatur natus est. Dolores labore sunt eligendi et quam et eaque.', 2, 2),
(2, '2025-03-14 00:05:29', '2025-03-14 00:05:29', '1987-10-26', '22:12:06', '02:37:25', 'Eos ab deserunt debitis ut. Earum sit libero aliquid nobis corrupti. Reiciendis tenetur pariatur minima sit asperiores harum quod. Quam sequi est dolor vero quisquam illo vitae.', 4, 2),
(3, '2025-03-14 00:05:29', '2025-03-14 00:05:29', '1972-12-05', '08:05:44', '15:26:57', 'Eum officiis reiciendis occaecati ullam esse accusamus dolores. Distinctio est vel tenetur perspiciatis quos quaerat facilis sed.', 1, 2),
(4, '2025-03-14 00:05:29', '2025-03-14 00:05:29', '1990-12-10', '18:33:13', '23:36:13', 'Amet deserunt veniam autem et nam. A qui dolorem harum eveniet quia. Est omnis officiis voluptatem.', 2, 2),
(5, '2025-03-14 00:05:29', '2025-03-14 00:05:29', '1991-01-27', '12:09:07', '16:32:30', 'Sed dolore corporis consequatur. Quae ipsa qui autem voluptatibus molestiae necessitatibus. Velit laboriosam quaerat quibusdam fugiat earum voluptatem. In reiciendis et quod provident dolor rerum doloribus.', 2, 1),
(6, '2025-03-14 00:10:47', '2025-03-14 00:10:47', '2025-03-11', '12:24:00', '12:41:00', '213412', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

CREATE TABLE `doctor_patient` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`created_at`, `updated_at`, `patient_id`, `user_id`) VALUES
(NULL, NULL, 1, 1),
(NULL, NULL, 2, 1),
(NULL, NULL, 3, 2),
(NULL, NULL, 4, 1),
(NULL, NULL, 5, 2),
(NULL, NULL, 2, 2),
(NULL, NULL, 6, 4);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_17_182010_create_patients_table', 1),
(6, '2022_10_19_120120_create_scans_table', 1),
(7, '2022_10_19_160514_add_patient_id_to_scans_table', 1),
(8, '2022_10_20_142615_create_orientation_letters_table', 1),
(9, '2022_10_20_143728_add_patient_id_to_orientation_letters_table', 1),
(10, '2022_10_21_165843_create_appointments_table', 1),
(11, '2022_10_21_170138_add_patient_id_to_appointments_table', 1),
(12, '2022_10_21_170215_add_doctor_id_to_appointments_table', 1),
(13, '2022_10_22_224954_create_prescriptions_table', 1),
(14, '2022_10_22_225323_add_patient_id_to_prescriptions_table', 1),
(15, '2022_10_28_143456_create_doctor_patient_table', 1),
(16, '2022_11_01_175122_add_doctor_id_to_prescriptions_table', 1),
(17, '2022_11_01_184522_add_doctor_id_to__orientation_letter_table', 1),
(18, '2022_11_01_185750_add_doctor_id_to_scans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orientation_letters`
--

CREATE TABLE `orientation_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text NOT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orientation_letters`
--

INSERT INTO `orientation_letters` (`id`, `created_at`, `updated_at`, `content`, `patient_id`, `user_id`) VALUES
(1, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Animi aut fugit quia modi minus tempore. Dolorum voluptate quo dolores cum officiis praesentium est. Error totam corporis nihil sequi rerum voluptatem rem.', 3, 2),
(2, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Hic consequatur ut nemo ab sed omnis. Aut omnis nesciunt nobis est iusto sunt pariatur similique. In fugiat ducimus numquam dignissimos.', 5, 1),
(3, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Qui est distinctio ut sunt. Quisquam incidunt qui rerum qui repudiandae. Quis et necessitatibus ut illo tenetur rem.', 5, 2),
(4, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Earum ab illum aut doloribus. Et aperiam unde voluptatem minus exercitationem autem. Eius rerum sed minus temporibus nam sint. Blanditiis soluta occaecati dolores architecto. Et similique et omnis assumenda magnam temporibus rerum itaque.', 4, 2),
(5, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Rerum velit consequatur quisquam ipsum at ad consequatur. Qui quia asperiores ipsam aut dolores voluptatum. Cupiditate veniam sed eaque voluptatem aliquid. Non non ipsa dolorem.', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `noSSocial` int(11) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diseases` varchar(255) DEFAULT NULL,
  `allergies` varchar(255) DEFAULT NULL,
  `antecedents` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `created_at`, `updated_at`, `name`, `lastname`, `noSSocial`, `dob`, `phone`, `email`, `diseases`, `allergies`, `antecedents`, `comments`) VALUES
(1, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Lora Rath III', 'Dawn Bechtelar', 14, '2004-03-07', '+1.865.820.8311', 'gleason.kaden@example.com', 'Et qui autem eum.', 'Officia quos nulla qui quis aut.', 'Et accusantium illo qui vero ipsam qui amet.', 'Quidem impedit sint quibusdam rerum est alias minus. Molestiae similique dolor quae delectus ut similique. Sit accusantium facere eum repellat nihil tempore placeat.'),
(2, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Dwight Torp', 'Evie Purdy II', 10, '1975-06-28', '+1-669-904-5304', 'lubowitz.adalberto@example.net', 'Ut consequatur sit recusandae praesentium quos sequi deleniti qui.', 'Ut itaque dolores sit et.', 'Commodi velit ea ad nobis eligendi.', 'Consequatur distinctio recusandae nam expedita est nemo soluta. Sed cupiditate consequatur sint provident et id. Dolore a in unde quae deleniti dolor architecto blanditiis. Sequi sunt aut labore hic reprehenderit porro.'),
(3, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Mrs. Winona Dickinson', 'Easter Reynolds', 20, '1975-10-21', '+1-979-425-5390', 'vrunte@example.net', 'Reprehenderit labore aliquid ut aliquam nemo quos vero tenetur.', 'Quae sunt velit exercitationem quia.', 'Tempore non qui unde placeat natus.', 'Repudiandae est molestias assumenda et aut rerum ex. Expedita suscipit ipsam non aut eius. Accusantium et et laudantium voluptatem.'),
(4, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Maci Rath', 'Prof. Princess Quitzon MD', 18, '2013-11-21', '+1 (540) 849-6717', 'dusty.reilly@example.net', 'Consequatur perspiciatis sed porro necessitatibus eos excepturi repellendus.', 'Reiciendis deleniti molestiae asperiores.', 'Omnis voluptas non est provident explicabo ipsam sequi.', 'Mollitia similique quo necessitatibus. Enim natus architecto eum ad quisquam est. Quis laudantium vel ex velit.'),
(5, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Miss Lauryn Marks', 'Evans Schulist II', 17, '2015-08-05', '1-732-775-6670', 'fstokes@example.com', 'Est sint ad omnis incidunt temporibus temporibus.', 'Ut ad commodi eaque excepturi esse.', 'Dignissimos amet odio voluptatum quia ut magnam.', 'Maiores nam tempora quam cupiditate quis voluptas. Eligendi non dolore a ea iusto.'),
(6, '2025-03-14 00:18:05', '2025-03-14 00:18:05', '2131', '12321', 12312, '2003-12-07', '09-14-16-18-44', '123123', NULL, NULL, NULL, NULL);

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
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `created_at`, `updated_at`, `content`, `patient_id`, `user_id`) VALUES
(1, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Autem corporis voluptas amet. Sunt dolorem rerum sit occaecati impedit architecto quia. Dicta accusantium dicta eveniet sequi. Tempore earum et quia doloremque. Rerum consequuntur officia quo libero ullam vel vero.', 2, 1),
(2, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Qui aperiam illum fugiat et. Error officia similique et ad magni quae voluptatem. Repellat necessitatibus beatae est rerum illo qui. Quia ipsam perspiciatis veritatis in officia repellat velit maxime.', 4, 1),
(3, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Eum dolorem cupiditate officiis corporis recusandae voluptatem unde officiis. Consequatur non temporibus molestias dolorum dolorem. Perspiciatis ut hic ipsa sit nesciunt asperiores qui. Quia recusandae deserunt ipsa modi in. Accusantium pariatur iusto dolor enim iusto.', 5, 2),
(4, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Molestiae deleniti natus temporibus soluta et. Ratione molestiae et deleniti labore impedit eligendi. Sed veritatis voluptatem beatae quae natus pariatur iste.', 5, 1),
(5, '2025-03-14 00:05:29', '2025-03-14 00:05:29', 'Dolores quas accusamus assumenda dolorem. Ad voluptatum voluptate sint impedit ut autem. Similique assumenda sit ratione libero et dolores veniam enim. Assumenda nam sit unde ullam quam amet.', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scans`
--

CREATE TABLE `scans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `scan_path` text NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', 'Doctor_lastname', 'Doctor_username', 'doctor@clinictlemcen.com', NULL, '$2y$10$zUqUhaWHZ3/D3/Gde0ZRrehidbM3hdy/5tfIY9Kn5A2.aREBvuUke', 0, NULL, '2025-03-14 00:05:29', '2025-03-14 00:05:29'),
(2, 'Doctor2', 'Doctor2_lastname', 'Doctor2_username', 'doctor2@clinictlemcen.com', NULL, '$2y$10$gSpcpJ9TAgyZ0n08gAkfV.Brxlydu/po.3.bMyqprQFdiAVadcWva', 0, NULL, '2025-03-14 00:05:29', '2025-03-14 00:05:29'),
(3, 'Secretary', 'Secretary_lastname', 'Secretary_username', 'secretary@clinictlemcen.com', NULL, '$2y$10$HUGzQO4x7TryFdpGW/Z.j.DDN1k0553dNdkLBlrIzGUSIVgCbARCy', 1, NULL, '2025-03-14 00:05:29', '2025-03-14 00:05:29'),
(4, 'Admin', 'Admin_lastname', 'Admin_username', 'admin@clinictlemcen.com', NULL, '$2y$10$c1R7vfK496rlQDagwv7G1.ilFTPyssNJmIdCZN/3q57oFXwtw41p6', 2, NULL, '2025-03-14 00:05:29', '2025-03-14 00:05:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_patient_id_foreign` (`patient_id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD KEY `doctor_patient_patient_id_foreign` (`patient_id`),
  ADD KEY `doctor_patient_user_id_foreign` (`user_id`);

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
-- Indexes for table `orientation_letters`
--
ALTER TABLE `orientation_letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orientation_letters_patient_id_foreign` (`patient_id`),
  ADD KEY `orientation_letters_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_patient_id_foreign` (`patient_id`),
  ADD KEY `prescriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `scans`
--
ALTER TABLE `scans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scans_patient_id_foreign` (`patient_id`),
  ADD KEY `scans_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orientation_letters`
--
ALTER TABLE `orientation_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scans`
--
ALTER TABLE `scans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD CONSTRAINT `doctor_patient_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_patient_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orientation_letters`
--
ALTER TABLE `orientation_letters`
  ADD CONSTRAINT `orientation_letters_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orientation_letters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scans`
--
ALTER TABLE `scans`
  ADD CONSTRAINT `scans_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
