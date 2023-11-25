-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 03:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products_db`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_24_205910_create_products_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Watch', '111', 2000, '2023-11-24 16:49:03', '2023-11-25 07:31:06'),
(4, 'Pendrive', '10', 500, NULL, NULL),
(5, 'Hard Disk 100', '2311', 300011, NULL, '2023-11-25 08:19:12'),
(6, 'Ram', '21', 40000, NULL, '2023-11-25 06:29:24'),
(7, 'Pendrive', '10', 500, NULL, NULL),
(8, 'Hard Disk', '23', 3000, NULL, NULL),
(9, 'Ram', '21', 40000, NULL, NULL),
(11, 'Hard Disk 100', '233', 30003, NULL, '2023-11-25 07:41:13'),
(22, 'Sde7vx1AlO', '12', 922, NULL, NULL),
(23, 'GGTLPYGq3A', '32', 603, NULL, NULL),
(24, '6ie41EEZg2', '25', 677, NULL, NULL),
(25, 'SN3PwhqInH', '50', 482, NULL, NULL),
(26, 'BN1Aezz5Fp', '85', 288, NULL, NULL),
(27, 'IcMLNFr3Ba', '97', 573, NULL, NULL),
(28, 'M8lkyYRIpr', '40', 899, NULL, NULL),
(29, 'wJVudLSPfJ', '43', 293, NULL, NULL),
(30, 'xn19v6p6hF', '66', 675, NULL, NULL),
(31, 'fefmw9qRvE', '27', 123, NULL, NULL),
(32, '2FKExQJ1a2', '88', 976, NULL, NULL),
(33, 'R4I2NBKz3R', '45', 330, NULL, NULL),
(34, 'jGwkbeJi2e', '49', 353, NULL, NULL),
(35, '9rWZgXJvAc', '35', 436, NULL, NULL),
(36, 'VXkrVWKpN8', '73', 174, NULL, NULL),
(37, 'kbugEc75PQ', '40', 820, NULL, NULL),
(38, 'uSPePAIeq1', '100', 824, NULL, NULL),
(39, 'Fp1hmqdGny', '90', 874, NULL, NULL),
(40, 'JpHqKFbqPe', '97', 437, NULL, NULL),
(41, 'KeTHiPGU3h', '76', 892, NULL, NULL),
(42, '9aE8sjpYOY', '96', 540, NULL, NULL),
(43, 'AfQpdHflPQ', '56', 251, NULL, NULL),
(44, 'zAoo4wZ9hp', '83', 769, NULL, NULL),
(45, 'oCk4CqQ17X', '51', 227, NULL, NULL),
(46, 'PRNjT37KDb', '55', 105, NULL, NULL),
(47, '8QeROdg5Za', '72', 409, NULL, NULL),
(48, 'fxuhTLkrza', '48', 606, NULL, NULL),
(49, 'NoTt6wWSSk', '90', 707, NULL, NULL),
(50, 'h2XKFIVgCm', '56', 400, NULL, NULL),
(51, 'GZzEuedvFp', '26', 921, NULL, NULL),
(52, 'n2cJUQs2hl', '88', 376, NULL, NULL),
(53, 'mCRD0Y1ZC7', '27', 969, NULL, NULL),
(54, 'Gr91c5YDSV', '58', 416, NULL, NULL),
(55, 'UYcoW6SBhC', '51', 582, NULL, NULL),
(56, 'IlzoKrddaJ', '24', 576, NULL, NULL),
(57, 'WGd6daXGKo', '37', 513, NULL, NULL),
(58, 'oc3bItlYRN', '37', 989, NULL, NULL),
(59, 'rl1bimlR9W', '46', 226, NULL, NULL),
(60, 'B76i2NV06C', '37', 175, NULL, NULL),
(61, 'rPO4GI4Tn7', '71', 922, NULL, NULL),
(62, 'PjbVFSpqwJ', '70', 778, NULL, NULL),
(63, 'Osgds4KoYn', '25', 226, NULL, NULL),
(64, 'ob0J8e0e6Z', '32', 111, NULL, NULL),
(65, 'gXWscXa3p5', '89', 613, NULL, NULL),
(66, '9dRHVoAntv', '83', 916, NULL, NULL),
(67, 'fcfYOnhJ78', '39', 171, NULL, NULL),
(68, 'J5QCpT1rgh', '69', 965, NULL, NULL),
(69, 'z31Iy1k0Fd', '71', 305, NULL, NULL),
(70, 'LGUaymg3vZ', '87', 314, NULL, NULL),
(71, 'FSLJH2RnEg', '21', 427, NULL, NULL),
(72, 'Y7vWNZMOAW', '60', 286, NULL, NULL),
(73, 'NN0h2UvZ6B', '18', 725, NULL, NULL),
(74, 'NBVUwW8rNz', '72', 476, NULL, NULL),
(75, 'xl2b2UYVx7', '76', 329, NULL, NULL),
(76, 'tFAHL4jcGY', '96', 138, NULL, NULL),
(77, 'MhZXXmi8Al', '78', 362, NULL, NULL),
(78, 'YmmI52CRAC', '39', 936, NULL, NULL),
(79, '9JaGhkYh2N', '31', 804, NULL, NULL),
(80, 'RRsudcb17M', '88', 898, NULL, NULL),
(81, 'Hs1hs27xvt', '60', 881, NULL, NULL),
(82, 'BnkOKJsWV2', '42', 704, NULL, NULL),
(83, '39AqxZt9LI', '11', 269, NULL, NULL),
(84, '2mHPbkUD4D', '97', 679, NULL, NULL),
(85, 'j5Vqd8id3l', '19', 415, NULL, NULL),
(86, 'wDHw67V3jf', '89', 782, NULL, NULL),
(87, 'VT3lliGvnV', '54', 432, NULL, NULL),
(88, 'LDJDhCwg9l', '24', 405, NULL, NULL),
(89, 'm44Im2rxcL', '35', 178, NULL, NULL),
(90, 'USTeOvMJ90', '54', 640, NULL, NULL),
(91, 'Unez7YlOBm', '95', 533, NULL, NULL),
(92, 'Fg8jWIr7pF', '50', 368, NULL, NULL),
(93, 'kfgMCIJ4wq', '77', 452, NULL, NULL),
(94, 'wD3M8510bW', '58', 665, NULL, NULL),
(95, 'K8Gcpsycz1', '11', 175, NULL, NULL),
(96, 'vupQNnmDuw', '48', 857, NULL, NULL),
(97, 'PBTD273Ihu', '22', 995, NULL, NULL),
(98, 'YzwxiqjXOa', '79', 912, NULL, NULL),
(99, 'cMIPqXMoth', '53', 939, NULL, NULL),
(100, 'z2t5YLAwpO', '75', 862, NULL, NULL),
(101, 'UXLMqeM7IL', '62', 735, NULL, NULL),
(102, '222dLfP8PY', '57', 792, NULL, NULL),
(103, '6nwIS3nuTs', '38', 498, NULL, NULL),
(104, 'jfuo3znXsj', '47', 776, NULL, NULL),
(105, '0FsQk9GF3K', '43', 724, NULL, NULL),
(106, 'WSGOtmlyTt', '59', 586, NULL, NULL),
(107, 'elSYhK9evT', '47', 318, NULL, NULL),
(108, 'paWsRDirD8', '89', 777, NULL, NULL),
(109, 'ITv7LzQEcb', '48', 374, NULL, NULL),
(110, 'T568NsM4sz', '55', 632, NULL, NULL),
(111, 'kQWdfva8kL', '73', 466, NULL, NULL),
(112, 'VgxcdWvel6', '12', 169, NULL, NULL),
(113, 'KHj92X3k7j', '80', 236, NULL, NULL),
(114, '7cp3zqzMaZ', '76', 748, NULL, NULL),
(115, 'TuGNPfgI4f', '92', 981, NULL, NULL),
(116, 'SiKgtP81M3', '80', 187, NULL, NULL),
(117, 'gZSQ9wX068', '46', 985, NULL, NULL),
(118, 'TTpxmumz9o', '42', 150, NULL, NULL),
(119, 'Dd2VhvgTk0', '30', 513, NULL, NULL),
(120, 'yJ7MnbZvkM', '61', 531, NULL, NULL),
(121, '8pi9BwfRXU', '42', 213, NULL, NULL),
(122, '7s2RGdqWFX', '64', 285, NULL, NULL),
(123, 'HJyx1J6ihp', '12', 347, NULL, NULL),
(124, 'MhfVDZD2hx', '76', 189, NULL, NULL),
(125, 'S15flMcmyL', '11', 605, NULL, NULL),
(126, 'W6PQKAEEaO', '65', 392, NULL, NULL),
(127, 'q9NmeExtqV', '16', 895, NULL, NULL),
(128, 'VTW3rDIVCz', '89', 545, NULL, NULL),
(129, '5GsESuaweG', '68', 416, NULL, NULL),
(130, '0MnVRnNjMU', '45', 936, NULL, NULL),
(131, 'eTBF27uEwl', '83', 549, NULL, NULL),
(132, 'XFUA0IFpwv', '45', 873, NULL, NULL),
(133, 'bUFNlSyty8', '29', 359, NULL, NULL),
(134, 'ceIJZO9bYq', '50', 862, NULL, NULL),
(135, 'TErdOcaOd8', '33', 948, NULL, NULL),
(136, 'SMFyA6Xvv2', '95', 650, NULL, NULL),
(137, 'YoVYuFPg09', '60', 520, NULL, NULL),
(138, 'NJed0kkDlU', '94', 405, NULL, NULL),
(139, '64xUrjvnXz', '39', 133, NULL, NULL),
(140, 'lAcRE9lTkG', '53', 611, NULL, NULL),
(141, '6kRBxoBqsN', '60', 218, NULL, NULL),
(142, 'ek8OxpNk57', '99', 441, NULL, NULL),
(143, 'qiDGte4a6R', '72', 215, NULL, NULL),
(144, 'tdFWt23Uy7', '76', 860, NULL, NULL),
(145, '6wYKgkJVf3', '69', 271, NULL, NULL),
(146, 'FVpeCXWm2P', '90', 673, NULL, NULL),
(147, '7srnNEfnWa', '75', 757, NULL, NULL),
(148, 'HP3C1vqTxn', '51', 527, NULL, NULL),
(149, '0899y6F5Gu', '73', 816, NULL, NULL),
(150, 'BqgoqCHW8z', '86', 409, NULL, NULL),
(151, 'FUoWErLH2H', '27', 289, NULL, NULL),
(152, 'QdA70PnMLl', '89', 535, NULL, NULL),
(153, 'NEZZUI3p54', '43', 600, NULL, NULL),
(154, 'uBwuNlgu46', '34', 532, NULL, NULL),
(155, 'SVPhZmyN9x', '60', 438, NULL, NULL),
(156, 'doTCltxh9a', '38', 179, NULL, NULL),
(157, 'GpI88uuNMR', '20', 139, NULL, NULL),
(158, 'akor9UYEjD', '72', 828, NULL, NULL),
(159, 'pqvkH0KH8u', '47', 892, NULL, NULL),
(160, 'UrOkG53qtQ', '38', 448, NULL, NULL),
(161, 'BVwdsVk9AE', '56', 688, NULL, NULL),
(162, 'iwQg7OYFpL', '87', 669, NULL, NULL),
(163, 'swxM10gxNN', '51', 962, NULL, NULL),
(164, 'UGdVyIxGrx', '82', 599, NULL, NULL),
(165, 'UvTxhB6i8w', '15', 306, NULL, NULL),
(166, 'XmK3gTNcm7', '10', 178, NULL, NULL),
(167, 'Ae909G7Qvw', '20', 909, NULL, NULL),
(168, 'esxIT8vcry', '91', 756, NULL, NULL),
(169, 'FVrjxYL7vg', '65', 681, NULL, NULL),
(170, 'oNs6x9dHLx', '49', 496, NULL, NULL),
(171, 'tjcBdjw9eB', '14', 203, NULL, NULL),
(172, 'HWi9BXdRO2', '66', 525, NULL, NULL),
(173, 'rw8sTexxxA', '62', 305, NULL, NULL),
(174, '4zoheEq8el', '78', 795, NULL, NULL),
(175, 'XxEgQ0wk8Z', '49', 948, NULL, NULL),
(176, 'WOoCkaul9O', '99', 456, NULL, NULL),
(177, 'ptPNS3fLqV', '84', 150, NULL, NULL),
(178, 'VmqbHV8ir1', '79', 238, NULL, NULL),
(179, '6nExZIgHJj', '50', 119, NULL, NULL),
(180, 'pXOYoiTIQm', '34', 187, NULL, NULL),
(181, 'DQoNzt1tJe', '44', 623, NULL, NULL),
(182, '8tyrR1jpYt', '33', 371, NULL, NULL),
(183, 'vjejDl1Qxp', '65', 124, NULL, NULL),
(184, 'wvFNol3kBc', '19', 286, NULL, NULL),
(185, 'NdhPW1dkdh', '79', 555, NULL, NULL),
(186, 'gS1rDYLpRy', '47', 337, NULL, NULL),
(187, 'NCWysmTO2v', '18', 518, NULL, NULL),
(188, 'WSZUTb2PAA', '89', 868, NULL, NULL),
(189, '7REmw1iQ8z', '97', 721, NULL, NULL),
(190, 'dhoE7HS4fq', '87', 816, NULL, NULL),
(191, 'WmMbKZPZ6b', '20', 705, NULL, NULL),
(192, 'p5AUnclVBJ', '12', 206, NULL, NULL),
(193, '46q4dQndTB', '76', 430, NULL, NULL),
(194, 'oaMn9a3bYJ', '54', 171, NULL, NULL),
(195, 'twpJcinBTO', '48', 971, NULL, NULL),
(196, '24pq7n9siU', '13', 875, NULL, NULL),
(197, 'YAj1yo51Cc', '25', 906, NULL, NULL),
(198, 'o23z8vSgsO', '51', 680, NULL, NULL),
(199, 'zu4ivXAuEX', '64', 346, NULL, NULL),
(200, '2G2OHD0XoP', '20', 485, NULL, NULL),
(201, 'r3RnJnHkgA', '80', 971, NULL, NULL),
(202, 'pmRKUW52nr', '48', 887, NULL, NULL),
(203, 'U8yGdxRQG3', '63', 517, NULL, NULL),
(204, '5JPgzJs9ZV', '39', 732, NULL, NULL),
(205, 'w3s6mmzuDT', '95', 442, NULL, NULL),
(206, 'pcUVV7e8Z6', '74', 749, NULL, NULL),
(207, 'ekSagaXpTu', '97', 284, NULL, NULL),
(208, 'qs2PnbS1HY', '34', 835, NULL, NULL),
(209, 'Ls3qeA3pcI', '89', 740, NULL, NULL),
(210, 'bBwvqy6YIr', '76', 296, NULL, NULL),
(211, 'A6QZrcDD7m', '24', 446, NULL, NULL),
(212, 'ezyolFqazC', '98', 772, NULL, NULL),
(213, 'EKKrDnjoMH', '78', 631, NULL, NULL),
(215, 'rhNGj92jQ2', '70', 568, NULL, NULL),
(216, 'ivoiZEx93v', '24', 910, NULL, NULL),
(217, '3iayL8cpSC', '90', 182, NULL, NULL),
(218, 'yqiX1LIBqY', '15', 624, NULL, NULL),
(219, 'yyuSYrzsIk', '85', 345, NULL, NULL),
(220, 'rwTVdrcn0u', '97', 659, NULL, NULL),
(221, 'yNiimodWRe', '11', 712, NULL, NULL),
(222, '0EyfIrqQyo', '40', 326, NULL, NULL),
(223, '1xQocWFjvM', '26', 566, NULL, NULL),
(224, 'AwMgSNKd8d', '41', 773, NULL, NULL),
(225, 'Q68ZELuYqp', '70', 798, NULL, NULL),
(226, '1Z5MxB48Fh', '10', 505, NULL, NULL),
(227, 'u4F1jainfY', '45', 144, NULL, NULL),
(229, 'Calculator', '45', 2444, '2023-11-24 19:15:14', '2023-11-24 19:15:14'),
(230, 'Pen', '200', 600, '2023-11-25 04:56:43', '2023-11-25 04:56:43'),
(231, 'Pencil', '200', 300, '2023-11-25 05:00:30', '2023-11-25 05:00:30'),
(232, 'Ear-Phone', '5000', 50000, '2023-11-25 05:32:36', '2023-11-25 05:33:07'),
(233, 'Medicine', '200', 2000, '2023-11-25 05:42:45', '2023-11-25 05:42:54'),
(234, 'Rubber', '2000', 5000, '2023-11-25 05:49:11', '2023-11-25 05:49:11'),
(235, 'Calculator', '1000', 200000, '2023-11-25 06:30:04', '2023-11-25 06:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tafsir Haque Arnob', 'tharnobhi@gmail.com', NULL, '$2y$12$WYv98WHY9c31andXORaDYedqetiByotX.VWJaSn7LHV8l8garA762', NULL, '2023-11-24 14:51:57', '2023-11-24 14:51:57'),
(2, 'Sathil', 'sathil@gmail.com', NULL, '$2y$12$mOuJkJ.wQ/N4Hnyjn4n2Q.1fpfUWFsY7DTaCtAWkCYKksIFYaXU4a', NULL, '2023-11-25 06:32:20', '2023-11-25 06:32:27');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
