-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 05:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_hmvc`
--
CREATE DATABASE IF NOT EXISTS `ecom_hmvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom_hmvc`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(120) NOT NULL,
  `created_on` varchar(50) NOT NULL,
  `updated_on` varchar(200) NOT NULL,
  `cat_img` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `cat_name`, `created_on`, `updated_on`, `cat_img`, `status`) VALUES
(1, 'Electronics', '2024-05-22 18:22:07', '2024-05-22 18:22:07', NULL, 1),
(2, 'Home & Kitchen', '2024-05-22 18:22:10', '2024-05-22 18:22:10', '', 1),
(3, 'Tools & Home Improvement', '2024-05-22 18:22:12', '2024-05-22 18:22:12', '', 1),
(4, 'Industrial & Scientific', '2024-05-22 18:22:14', '2024-05-22 18:22:14', '', 1),
(5, 'Sports, Fitness & Outdoors', '2024-05-22 18:22:17', '2024-05-22 18:22:17', '', 1),
(6, 'Health & Personal Care', '2024-05-22 18:22:20', '2024-05-22 18:22:20', '', 1),
(7, 'Baby', '2024-05-22 18:22:23', '2024-05-22 18:22:23', '', 1),
(8, 'Clothing & Accessories', '2024-05-22 18:22:29', '2024-05-22 18:22:29', '', 1),
(9, 'Musical Instruments', '2024-05-22 18:22:32', '2024-05-22 18:22:32', '', 1),
(10, 'Video Games', '2024-05-22 18:22:34', '2024-05-22 18:22:34', '', 1),
(11, 'Watches', '2024-05-22 18:22:39', '2024-05-22 18:22:39', '', 1),
(12, 'Computers & Accessories', '2024-05-22 18:22:48', '2024-05-22 18:22:48', 'download.jpg', 1),
(13, 'Grocery', '2024-05-23 22:22:50', '2024-05-24 07:39:34', 'grocery.jpg', 1);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, 'seller_basic', 1),
(3, 'sub_category', 1),
(4, 'sub_sub_category', 1),
(5, 'product', 2),
(6, 'category', 3),
(7, 'user_basic', 4),
(8, 'user_extended', 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(120) NOT NULL,
  `pro_slug` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `sub_sub_category` int(11) NOT NULL,
  `pro_short_desc` text NOT NULL,
  `pro_desc` text NOT NULL,
  `mrp_price` varchar(11) NOT NULL,
  `sale_price` varchar(11) NOT NULL,
  `pro_file` varchar(255) NOT NULL,
  `pro_meta_title` varchar(255) NOT NULL,
  `pro_meta_desc` varchar(255) NOT NULL,
  `pro_tags` varchar(255) NOT NULL,
  `pro_created_on` varchar(150) NOT NULL,
  `pro_updated_on` varchar(150) DEFAULT NULL,
  `pro_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_slug`, `category`, `sub_category`, `sub_sub_category`, `pro_short_desc`, `pro_desc`, `mrp_price`, `sale_price`, `pro_file`, `pro_meta_title`, `pro_meta_desc`, `pro_tags`, `pro_created_on`, `pro_updated_on`, `pro_status`) VALUES
(1, 'Redmi Note 13 Pro+', 'redmi-note-13-pro', 1, 1, 1, 'Display: 6.67 Inches; 120 Hz 3D Curved AMOLED 1.5K Display with Corning Gorilla Glass Victus', 'Display: 6.67 Inches; 120 Hz 3D Curved AMOLED 1.5K Display with Corning Gorilla Glass Victus', '37999', '34999', '71Gog1FR3JL._SL1500_.jpg', 'Redmi Note 13 Pro+', 'Redmi Note 13 Pro+', 'Redmi Note 13 Pro+', '2024-06-01 19:31:10', '2024-06-01 19:22:27', 1),
(2, 'Redmi Note 13 Pro', 'redmi-note-13-pro', 1, 1, 1, 'Display: 6.67 Inches; 120 Hz AMOLED 1.5K Display with Corning Gorilla Glass Victus; Resolution: 2712 x 1220 Pixels; Dolby Vision, 68.7billion colors, 1800nits Peak Brightness', 'Display: 6.67 Inches; 120 Hz AMOLED 1.5K Display with Corning Gorilla Glass Victus; Resolution: 2712 x 1220 Pixels; Dolby Vision, 68.7billion colors, 1800nits Peak Brightness', '27999', '24999', '71XQD0wtMPL._SL1500_.jpg', 'Redmi Note 13 Pro', 'Redmi Note 13 Pro', 'Redmi Note 13 Pro', '2024-06-01 19:23:09', NULL, 1),
(3, 'Redmi Note 13 5G', 'redmi-note-13-5g', 1, 1, 1, 'Redmi Note 13 5G', 'Redmi Note 13 5G', '20999', '15999', '71VW8LmqqPL._SL1500_.jpg', 'Redmi Note 13 5G', 'Redmi Note 13 5G', 'Redmi Note 13 5G', '2024-05-22 20:09:10', NULL, 1),
(4, 'Redmi 13C 5G', 'redmi-13c-5g', 1, 1, 1, 'Redmi 13C 5G', 'Redmi 13C 5G', '17999', '12999', '81Z1scL6HvL._SL1500_.jpg', 'Redmi 13C 5G', 'Redmi 13C 5G', 'Redmi 13C 5G', '2024-05-22 20:09:44', NULL, 1),
(5, 'Redmi 12 5G', 'redmi-12-5g', 1, 1, 1, 'Redmi 12 5G Jade Black 6GB RAM 128GB ROM', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><b>Snapdragon 4 Gen 2 Mobile Platform </b>: Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><b>Display: </b>Large 17.24cm FHD+ 90Hz AdaptiveSync display with Corning Gorilla Glass 3 Protection</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><b>Camera: </b>50MP f/1.8 AI Dual camera with classic film filters, Film Frame, Portrait, Night Mode, 50MP mode, Time-lapse, Google lens | 8MP Selfie camera</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><b>5000mAh(typ) battery</b> with 22.5W charger in-box</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><b>MIUI Dialer | MIUI 14 with Android 13 | Side fingerprint | IR blaster | 3.5mm Audio jack | IP53 rating</b></span></li></ul><table class=\"a-normal a-spacing-micro\" style=\"width: 513.25px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 0px !important;\"><tbody></tbody></table>', '15999', '10499', '71tCOhEigtL._SL1500_.jpg', 'Snapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual', 'Snapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual', 'Snapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual', '2024-05-27 11:54:11', '2024-05-24 07:44:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_basic`
--

CREATE TABLE `seller_basic` (
  `sellerid` int(10) UNSIGNED NOT NULL,
  `seller_name` varchar(120) NOT NULL,
  `seller_email` varchar(120) NOT NULL,
  `seller_mobile` varchar(120) NOT NULL,
  `seller_pwd` varchar(120) NOT NULL,
  `seller_created_on` varchar(50) NOT NULL,
  `seller_updated_on` varchar(50) NOT NULL,
  `seller_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_cat_id` int(10) UNSIGNED NOT NULL,
  `sub_cat_name` varchar(120) NOT NULL,
  `main_cat_id` int(11) NOT NULL,
  `sub_created_on` varchar(50) NOT NULL,
  `sub_cat_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_cat_id`, `sub_cat_name`, `main_cat_id`, `sub_created_on`, `sub_cat_status`) VALUES
(1, 'Mobiles & Accessories', 1, '2024-05-22 18:23:33', 1),
(2, 'Computers & Accessories', 1, '2024-05-22 18:23:41', 1),
(3, 'Tablets', 1, '2024-05-22 18:23:43', 1),
(4, 'Cameras & Photography', 1, '2024-05-22 18:24:09', 1),
(5, 'Smart Living Store', 2, '2024-05-22 18:23:55', 1),
(6, 'Home Improvement Electrical', 3, '2024-05-22 18:27:25', 1),
(7, 'Safety & Security', 3, '2024-05-22 18:27:38', 1),
(8, 'Home Theater, TV & Video', 1, '2024-05-22 18:28:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_category`
--

CREATE TABLE `sub_sub_category` (
  `sub_sub_cat_id` int(10) UNSIGNED NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `sub_sub_cat_name` varchar(120) NOT NULL,
  `main_cat_id` int(11) NOT NULL,
  `sub_sub_created_on` varchar(50) NOT NULL,
  `sub_sub_cat_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_category`
--

INSERT INTO `sub_sub_category` (`sub_sub_cat_id`, `sub_cat_id`, `sub_sub_cat_name`, `main_cat_id`, `sub_sub_created_on`, `sub_sub_cat_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Smartphones & Basic Mobiles', 1, '2024-05-22 18:14:55', 1, NULL, NULL),
(2, 1, 'Mobile Accessories', 1, '2024-05-22 18:14:57', 1, NULL, NULL),
(3, 1, 'Smartwatches', 1, '2024-05-22 18:14:59', 1, NULL, NULL),
(4, 2, 'Accessories', 1, '2024-05-22 18:15:01', 1, NULL, NULL),
(5, 2, 'External Devices & Data Storage', 1, '2024-05-22 18:15:03', 1, NULL, NULL),
(6, 2, 'Keyboards, Mice & Input Devices', 1, '2024-05-22 18:15:05', 1, NULL, NULL),
(7, 3, 'Tablets & Accessories', 1, '2024-05-22 18:15:08', 1, NULL, NULL),
(8, 4, 'Accessories', 1, '2024-05-22 18:15:11', 1, NULL, NULL),
(9, 4, 'Digital Cameras', 1, '2024-05-22 18:15:13', 1, NULL, NULL),
(10, 4, 'Video Cameras', 1, '2024-05-22 18:15:15', 1, NULL, NULL),
(11, 4, 'Cases & Bags', 1, '2024-05-22 18:15:19', 1, NULL, NULL),
(12, 4, 'Photo Printers', 1, '2024-05-22 18:15:22', 1, NULL, NULL),
(13, 4, 'Video Projectors', 1, '2024-05-22 18:15:25', 1, NULL, NULL),
(14, 4, 'Photo Studio & Lighting', 1, '2024-05-22 18:15:28', 1, NULL, NULL),
(15, 4, 'Action Cameras', 1, '2024-05-22 18:15:32', 1, NULL, NULL),
(16, 4, 'Binoculars, Telescopes & Optics', 1, '2024-05-22 18:15:36', 1, NULL, NULL),
(17, 4, 'Body Mounted Cameras', 1, '2024-05-22 18:15:40', 1, NULL, NULL),
(18, 5, 'Home Improvement', 2, '2024-05-22 18:25:59', 1, NULL, NULL),
(19, 8, 'Accessories', 1, '2024-05-22 18:39:06', 1, NULL, NULL),
(20, 8, 'AV Receivers & Amplifiers', 1, '2024-05-22 18:39:15', 1, NULL, NULL),
(21, 8, 'Blu-ray Players & Recorders', 1, '2024-05-22 18:39:19', 1, NULL, NULL),
(22, 8, 'DVD Players & Recorders', 1, '2024-05-22 18:39:23', 1, NULL, NULL),
(23, 8, 'HD DVD Players', 1, '2024-05-22 18:39:28', 1, NULL, NULL),
(24, 8, 'Home Theater Systems', 1, '2024-05-22 18:39:33', 1, NULL, NULL),
(25, 8, 'Media Streaming Devices', 1, '2024-05-22 18:39:37', 1, NULL, NULL),
(26, 8, 'Portable DVD & Blu-ray Players', 1, '2024-05-22 18:39:41', 1, NULL, NULL),
(27, 8, 'Projectors', 1, '2024-05-22 18:39:45', 1, NULL, NULL),
(28, 8, 'Satellite Dishes', 1, '2024-05-22 18:39:50', 1, NULL, NULL),
(29, 8, 'Satellite Equipment', 1, '2024-05-22 18:39:55', 1, NULL, NULL),
(30, 8, 'Satellite Television Systems', 1, '2024-05-22 18:39:59', 1, NULL, NULL),
(31, 8, 'Speakers', 1, '2024-05-22 18:40:02', 1, NULL, NULL),
(32, 8, 'Televisions', 1, '2024-05-22 18:40:07', 1, NULL, NULL),
(33, 8, 'TV Receivers', 1, '2024-05-22 18:40:11', 1, NULL, NULL),
(34, 8, 'Video Glasses', 1, '2024-05-22 18:40:16', 1, NULL, NULL),
(35, 8, 'Video Players & Recorders', 1, '2024-05-22 18:40:20', 1, NULL, NULL),
(36, 1, 'SIM Cards', 1, '2024-05-22 18:43:02', 1, NULL, NULL),
(37, 1, 'Mobile Broadband Devices', 1, '2024-05-22 18:43:11', 1, NULL, NULL),
(38, 2, 'Components', 1, '2024-05-22 18:47:58', 1, NULL, NULL),
(39, 2, 'Networking Devices', 1, '2024-05-22 18:48:08', 1, NULL, NULL),
(40, 2, 'Webcams & VoIP Equipment', 1, '2024-05-22 18:48:15', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic`
--

CREATE TABLE `user_basic` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `user_email` varchar(120) NOT NULL,
  `user_mobile` varchar(120) NOT NULL,
  `user_pwd` varchar(120) NOT NULL,
  `user_created_on` varchar(50) NOT NULL,
  `user_updated_on` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic`
--

INSERT INTO `user_basic` (`user_id`, `user_name`, `user_email`, `user_mobile`, `user_pwd`, `user_created_on`, `user_updated_on`, `user_status`) VALUES
(1, 'Sabarinathan R', 'pushpaasabari@gmail.com', '9629291034', '$2y$10$089QiRvYDFnVV.P0JkUQ/uWj1AJzDYRWDEwEL03CU.ymL.dep5PsG', '22-May-2024 07:02:47', '22-May-2024 07:02:47', 0),
(2, 'admin@admin.com', 'admin@admin.com', '213457897', '$2y$10$DrUTwqE0PUYXNl9L9V9qTOPcZkw6GdfUlFg5qJPnIGxDz1deXEkNC', '28-Jul-2024 01:41:02', '28-Jul-2024 01:41:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_extended`
--

CREATE TABLE `user_extended` (
  `user_ext_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `add_1` varchar(240) DEFAULT NULL,
  `add_2` varchar(240) DEFAULT NULL,
  `add_3` varchar(120) DEFAULT NULL,
  `town` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_on` varchar(50) NOT NULL,
  `updated_on` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_extended`
--

INSERT INTO `user_extended` (`user_ext_id`, `user_id`, `name`, `country`, `mobile`, `pincode`, `add_1`, `add_2`, `add_3`, `town`, `state`, `created_on`, `updated_on`, `status`) VALUES
(1, '1', 'Sabarinathan R', 'India', '9629291034', '636809', '1-204, Kanapatti Mal Kottai,', 'Palavadi Post,', NULL, 'Dharmapuri,', 'Tamilnadu.', '02-Jun-2024 12:43:40', '02-Jun-2024 12:43:40', 1),
(2, '1', 'Sabarinathan R', 'India', '9629291034', '636809', '1-204, Kanapatti Mal Kottai,', 'Palavadi Post,', NULL, 'Dharmapuri,', 'Tamilnadu.', '02-Jun-2024 12:44:50', '02-Jun-2024 12:44:50', 1),
(3, '1', 'Sabarinathan R', 'India', '9629291034', '636809', '55, Teachers Colony,', 'Papparapatti,', NULL, 'Dharmapuri,', 'Tamilnadu.', '02-Jun-2024 08:19:02', '02-Jun-2024 08:19:02', 1),
(4, '1', 'Pavithra', 'India', '9597313779', '636809', '1-204, Kanapatti Mel Kottai,', 'Palavadi Post,', NULL, 'Dharmapuri,', 'Tamilnadu.', '02-Jun-2024 10:40:30', '02-Jun-2024 10:40:30', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `category_catid_unique` (`catid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `product_pro_id_unique` (`pro_id`);

--
-- Indexes for table `seller_basic`
--
ALTER TABLE `seller_basic`
  ADD PRIMARY KEY (`sellerid`),
  ADD UNIQUE KEY `seller_basic_sellerid_unique` (`sellerid`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD UNIQUE KEY `sub_category_sub_cat_id_unique` (`sub_cat_id`);

--
-- Indexes for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  ADD PRIMARY KEY (`sub_sub_cat_id`),
  ADD UNIQUE KEY `sub_sub_category_sub_sub_cat_id_unique` (`sub_sub_cat_id`);

--
-- Indexes for table `user_basic`
--
ALTER TABLE `user_basic`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_basic_user_id_unique` (`user_id`);

--
-- Indexes for table `user_extended`
--
ALTER TABLE `user_extended`
  ADD PRIMARY KEY (`user_ext_id`),
  ADD UNIQUE KEY `user_extended_user_ext_id_unique` (`user_ext_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller_basic`
--
ALTER TABLE `seller_basic`
  MODIFY `sellerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  MODIFY `sub_sub_cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_basic`
--
ALTER TABLE `user_basic`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_extended`
--
ALTER TABLE `user_extended`
  MODIFY `user_ext_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `holidays`
--
CREATE DATABASE IF NOT EXISTS `holidays` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `holidays`;

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
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `date`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', '2024-01-01', 'Optional holiday', 'New Year’s Day is celebrated many countries such as in India on the January 1 in the Gregorian calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(2, 'Lohri', '2024-01-13', 'National holiday', 'Lohri is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(3, 'Makar Sankranti', '2024-01-14', 'Hinduism, Optional holiday', 'Makar Sankranti is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(4, 'Pongal', '2024-01-15', 'Hinduism, Optional holiday', 'Many southern states in India, particularly Tamil Nadu, celebrate Pongal as a thanksgiving for the good harvest season in mid-January every year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(5, 'Guru Govind Singh Jayanti', '2024-01-17', 'Observance', 'Guru Gobind Singh Jayanti is the Sikh annual celebration that occurs in countries such as India around December or January in the Gregorian calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(6, 'Hazarat Ali\'s Birthday', '2024-01-25', 'Optional holiday', 'Hazarat Ali\'s Birthday is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(7, 'Republic Day', '2024-01-26', 'National holiday', 'India\'s Republic Day marks the anniversary of the adoption of the Indian constitution. It is an annual gazetted holiday in India on January 26.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(8, 'Lunar New Year', '2024-02-10', 'Observance', 'Lunar New year is an annual global celebration in many countries including India.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(9, 'Vasant Panchami', '2024-02-14', 'Hinduism, Optional holiday', 'Vasant Panchami, or India’s spring festival, is a Hindu event that includes special rituals and highlights the start of spring.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(10, 'Valentine\'s Day', '2024-02-14', 'Observance', 'Valentine’s Day is celebrated in many places worldwide, including in India, on February 14 each year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(11, 'Shivaji Jayanti', '2024-02-19', 'Optional holiday', 'Shivaji Jayanti is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(12, 'Guru Ravidas Jayanti', '2024-02-24', 'Optional holiday', 'Guru Ravidas Jayanti is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(13, 'Maharishi Dayanand Saraswati Jayanti', '2024-03-06', 'Optional holiday', 'Maharishi Dayanand Saraswati Jayanti is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(14, 'Maha Shivaratri/Shivaratri', '2024-03-08', 'Hinduism, Optional holiday', 'Maha Shivratri is an annual festival dedicated to Shiva, the Hindu God of destruction. For devotees, is a day of reflection and meditation.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(15, 'Ramadan Start', '2024-03-12', 'Observance', 'Ramadan is a period of prayer, reflection and fasting for many Muslims worldwide. It is the ninth month in the Islamic calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(16, 'March Equinox', '2024-03-20', 'Season', 'March Equinox in India (New Delhi)', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(17, 'Holika Dahana', '2024-03-24', 'Optional holiday', 'Holika Dahana is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(18, 'Holi', '2024-03-25', 'National holiday, Hinduism', 'Holi is a spring festival of colors celebrated by Hindus, Sikhs and others. It celebrates the triumph of good over evil and the upcoming season of spring. The festival can last up to sixteen days.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(19, 'Dolyatra', '2024-03-25', 'National holiday', 'Dolyatra is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(20, 'Maundy Thursday', '2024-03-28', 'Observance, Christian', 'Maundy Thursday is a Christian observance on the Thursday during Holy Week. It is the day before Good Friday.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(21, 'Good Friday', '2024-03-29', 'National holiday', 'Many Christians commemorate Jesus Christ’s crucifixion and death on Good Friday. It is a gazetted holiday in India.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(22, 'Easter Day', '2024-03-31', 'Optional holiday', 'Easter Sunday commemorates Jesus Christ’s resurrection, according to Christian belief.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(23, 'Jamat Ul-Vida', '2024-04-05', 'Optional holiday', 'Jamat Ul-Vida is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(24, 'Chaitra Sukhladi', '2024-04-09', 'Hinduism, Optional holiday', 'Chaitra Sukhladi is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(25, 'Ugadi', '2024-04-09', 'Hinduism, Optional holiday', 'Ugadi is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(26, 'Gudi Padwa', '2024-04-09', 'Hinduism, Optional holiday', 'Gudi Padwa is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(27, 'Ramzan Id/Eid-ul-Fitar', '2024-04-10', 'Muslim, Common local holiday', 'One day of Eid-ul-Fitar, which marks the end of Ramadan, is a gazetted holiday in India.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(28, 'Ramzan Id/Eid-ul-Fitar', '2024-04-11', 'National holiday', 'Eid al-Fitr is a holiday to mark the end of the Islamic month of Ramadan, during which Muslims fast during the hours of daylight.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(29, 'Vaisakhi', '2024-04-13', 'Optional holiday', 'Vaisakhi, also known as Baisakhi, is a harvest celebration on either April 13 or April 14 in the Gregorian calendar. It is one of India’s most notable celebrations.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(30, 'Mesadi / Vaisakhadi', '2024-04-14', 'Optional holiday', 'Mesadi / Vaisakhadi is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(31, 'Ambedkar Jayanti', '2024-04-14', 'National holiday', 'Ambedkar Jayanti is a central government holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(32, 'Rama Navami', '2024-04-17', 'National holiday, Hinduism', 'Rama Navami is a Hindu festival that celebrates the birth of Rama, the first son of King Dasaratha of Ayodhya.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(33, 'Mahavir Jayanti', '2024-04-21', 'National holiday', 'Mahavir Jayanti is a gazetted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(34, 'First day of Passover', '2024-04-23', 'Observance', 'During Passover, the Jewish people remember the liberation of the Israelites from slavery, their exodus from Egypt, and that their first-born children were spared during the 10th plague, as told in the Haggadah.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(35, 'International Worker\'s Day', '2024-05-01', 'Observance', '', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(36, 'Birthday of Rabindranath', '2024-05-08', 'Optional holiday', 'Birthday of Rabindranath is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(37, 'Mothers\' Day', '2024-05-12', 'Observance', 'Mother’s Day celebrates the achievements and efforts of mothers and mother figures.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(38, 'Buddha Purnima/Vesak', '2024-05-23', 'National holiday', 'Vesak, also known as Buddha Purnima, celebrates of Gautama Buddha\'s birth, enlightenment and death.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(39, 'Fathers\' Day', '2024-06-16', 'Observance', 'Father’s Day celebrates fatherhood and male parenting on different dates worldwide.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(40, 'Bakrid/Eid ul-Adha', '2024-06-17', 'National holiday', 'For India\'s more than 200 million Muslims, Bakrid, the Festival of Sacrifice, is one of the holiest days of the year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(41, 'June Solstice', '2024-06-21', 'Season', 'June Solstice in India (New Delhi)', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(42, 'Rath Yatra', '2024-07-07', 'Hinduism, Optional holiday', 'Rath Yatra is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(43, 'Muharram/Ashura', '2024-07-17', 'National holiday', 'Muharram, or the Islamic New Year, is a public holiday in India.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(44, 'Guru Purnima', '2024-07-21', 'Observance', 'Guru Purnima is a festival that honors spiritual Gurus by remembering their life and teachings. It is observed on the full moon day, Purnima, in the Hindu month of Ashadh, which is usually June or July.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(45, 'Friendship Day', '2024-08-04', 'Observance', 'Friendship Day is a observance in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(46, 'Independence Day', '2024-08-15', 'National holiday', 'India\'s Independence Day is an annual gazetted holiday on August 15 to commemorate the day India became an independent nation.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(47, 'Parsi New Year', '2024-08-15', 'Optional holiday', 'Parsi New Year is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(48, 'Raksha Bandhan (Rakhi)', '2024-08-19', 'Hinduism, Optional holiday', 'Raksha Bandhan is a Hindu festival that is celebrated on the full moon of the Hindu month of Shravana (Shravan Poornima). The day is also sometimes referred to as Brother and Sister Day because it honors the relationship between brother and sister.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(49, 'Janmashtami', '2024-08-26', 'National holiday, Hinduism', 'Krishna Janmashtami is a Hindu festival that celebrates the birth of Krishna, the eighth incarnation of the god Vishnu. It is celebrated on the eighth day of the Hindu month of Bhadrava (Bhadrapada), which is usually in August or September.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(50, 'Janmashtami (Smarta)', '2024-08-26', 'Observance', 'Janmashtami (Smarta) is a observance in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(51, 'Ganesh Chaturthi/Vinayaka Chaturthi', '2024-09-07', 'Hinduism, Optional holiday', 'Ganesh Chaturthi is the great Ganesha festival that celebrates the birthday of Lord Ganesha during the Hindu Month of Bhadra, which usually falls between mid-August and mid-September. It is also known as Vinayaka Chaturthi and can last up to 10 days.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(52, 'Onam', '2024-09-15', 'Hinduism, Optional holiday', 'Onam is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(53, 'Milad un-Nabi/Id-e-Milad', '2024-09-16', 'National holiday', 'Milad un-Nabi is a gazetted holiday in India and marks the Prophet Muhammad\'s birthday.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(54, 'September Equinox', '2024-09-22', 'Season', 'September Equinox in India (New Delhi)', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(55, 'Mahatma Gandhi Jayanti', '2024-10-02', 'National holiday', 'Mahatma Gandhi\'s birthday is an annual gazetted holiday in India on October 2.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(56, 'First Day of Sharad Navratri', '2024-10-03', 'Observance, Hinduism', 'First Day of Sharad Navratri is a observance and Hindu holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(57, 'First Day of Durga Puja Festivities', '2024-10-09', 'Observance, Hinduism', 'First Day of Durga Puja Festivities is a observance and Hindu holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(58, 'Maha Saptami', '2024-10-10', 'Optional holiday', 'Maha Saptami is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(59, 'Maha Navami', '2024-10-11', 'Optional holiday', 'Maha Navami is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(60, 'Maha Ashtami', '2024-10-11', 'Optional holiday', 'Maha Ashtami is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(61, 'Dussehra', '2024-10-12', 'National holiday, Hinduism', 'Dussehra, also known as Vijaya Dashami, is an Indian festival that celebrates good forces over evil forces. It spans for 10 days and is celebrated in varied traditions across India.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(62, 'Maharishi Valmiki Jayanti', '2024-10-17', 'Optional holiday', 'Maharishi Valmiki Jayanti is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(63, 'Karaka Chaturthi (Karva Chauth)', '2024-10-20', 'Hinduism, Optional holiday', 'Karwa Chauth is an annual one-day festival that honors the Hindu god Shiva and goddess Parvati. It is celebrated by all married Hindu women on the fourth day after the full moon in the Hindu month of Kartik, which is usually in October.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(64, 'Halloween', '2024-10-31', 'Observance', 'Halloween is a festive occasion that is celebrated in many countries on October 31 each year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(65, 'Naraka Chaturdasi', '2024-10-31', 'Optional holiday', 'Naraka Chaturdasi is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(66, 'Diwali/Deepavali', '2024-10-31', 'National holiday, Hinduism', 'Diwali is a festival of physical and spiritual light celebrated in October or November each year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(67, 'Govardhan Puja', '2024-11-02', 'Optional holiday', 'Govardhan Puja is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(68, 'Bhai Duj', '2024-11-03', 'Hinduism, Optional holiday', 'Bhai Duj is a Hindu festival that celebrates the relationship between a brother and a sister on the second day after the new moon in the Hindu month of Kartika.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(69, 'Chhat Puja (Pratihar Sashthi/Surya Sashthi)', '2024-11-07', 'Hinduism, Optional holiday', 'Chhat Puja (Pratihar Sashthi/Surya Sashthi) is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(70, 'Guru Nanak Jayanti', '2024-11-15', 'National holiday', 'Guru Nanak Jayanti is a gazetted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(71, 'Guru Tegh Bahadur\'s Martyrdom Day', '2024-11-24', 'Optional holiday', 'Guru Tegh Bahadur\'s Martyrdom Day is a restricted holiday in India', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(72, 'December Solstice', '2024-12-21', 'Season', 'December Solstice in India (New Delhi)', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(73, 'Christmas Eve', '2024-12-24', 'Optional holiday', 'Christmas Eve is the day before Christmas Day and falls on December 24 in the Gregorian calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(74, 'Christmas', '2024-12-25', 'National holiday', 'Many Christians celebrate Christmas Day, which is a gazetted holiday in India, on December 25 each year.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(75, 'First Day of Hanukkah', '2024-12-26', 'Observance', 'Hanukkah, also known as Chanukah or the Festival of Lights, is celebrated for 8 days between the 25th day of the month of Kislev to the second day of Tevet in the Hebrew calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11'),
(76, 'New Year\'s Eve', '2024-12-31', 'Observance', 'New Year’s Eve is the last day of the year, December 31, in the Gregorian calendar.', '2024-07-31 22:50:11', '2024-07-31 22:50:11');

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
(5, '2024_07_31_160635_create_holidays_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel9`
--
CREATE DATABASE IF NOT EXISTS `laravel9` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel9`;

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
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'Sabarinathan', 'R', '2024-07-28 03:04:48', '2024-07-28 03:04:48'),
(2, 'Navaneethakrishnan', 'S', '2024-07-28 03:05:01', '2024-07-28 03:05:01'),
(3, 'Pavithra', 'P', '2024-07-28 03:07:12', '2024-07-28 03:07:12');

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
(5, '2024_07_28_082225_create_members_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_student_mgmt`
--
CREATE DATABASE IF NOT EXISTS `laravel_student_mgmt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_student_mgmt`;

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
(5, '2024_07_27_170820_teachers_basic', 2),
(6, '2024_07_28_040705_student', 3);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `subject`, `mark`, `created_at`, `updated_at`) VALUES
(1, 'Student 0', 'Maths', '88', '2024-07-27 23:07:44', '2024-07-28 13:21:00'),
(2, 'Student 1', 'English', '85', '2024-07-28 00:04:08', '2024-07-28 09:15:46'),
(3, 'Student 2', 'English', '80', '2024-07-28 00:13:42', '2024-07-28 00:13:42'),
(4, 'Student 3', 'Social', '72', '2024-07-28 00:14:28', '2024-07-28 00:14:28'),
(5, 'Student 4', 'Computer Science', '95', '2024-07-28 00:20:50', '2024-07-28 00:44:24'),
(6, 'Student 5', 'Physics', '95', '2024-07-28 00:47:38', '2024-07-28 00:47:38'),
(7, 'Student 6', 'Computer Science', '83', '2024-07-28 03:47:49', '2024-07-28 11:57:59'),
(12, 'Student 7', 'Maths', '100', '2024-07-28 12:04:38', '2024-07-28 12:08:00'),
(13, 'Student 8', 'Physics', '89', '2024-07-28 12:07:11', '2024-07-28 12:07:11'),
(15, 'Student 9', 'Maths', '100', '2024-07-28 12:14:25', '2024-07-28 12:15:07'),
(16, 'Student 10', 'Computer Science', '74', '2024-07-28 12:26:22', '2024-07-28 13:07:13'),
(17, 'Student 11', 'Physics', '100', '2024-07-28 12:37:30', '2024-07-28 13:07:49'),
(18, 'Student 12', 'Chemistry', '75', '2024-07-28 12:44:23', '2024-07-28 13:08:48'),
(19, 'Student 13', 'English', '88', '2024-07-28 12:47:20', '2024-07-28 13:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_basic`
--

CREATE TABLE `teachers_basic` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `pwd` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `last_logged_in` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers_basic`
--

INSERT INTO `teachers_basic` (`id`, `email`, `pwd`, `name`, `last_logged_in`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pushpaasabari@gmail.com', '$2y$10$089QiRvYDFnVV.P0JkUQ/uWj1AJzDYRWDEwEL03CU.ymL.dep5PsG', 'Sabarinathan R', '', 1, NULL, NULL),
(2, 'admin@admin.com', '$2y$10$DrUTwqE0PUYXNl9L9V9qTOPcZkw6GdfUlFg5qJPnIGxDz1deXEkNC', 'Teacher', '', 1, NULL, NULL);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id_unique` (`id`);

--
-- Indexes for table `teachers_basic`
--
ALTER TABLE `teachers_basic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_basic_id_unique` (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teachers_basic`
--
ALTER TABLE `teachers_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'student_management', 'root', 'select * from student where subject=\'english\' ORDER by mark DESC limit 0,1;', 'select * from student where subject=\'english\' ORDER by mark DESC limit 0,1;');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"holidays\",\"table\":\"holidays\"},{\"db\":\"student_management\",\"table\":\"teachers_basic\"},{\"db\":\"student_management\",\"table\":\"student\"},{\"db\":\"laravel_student_mgmt\",\"table\":\"teachers_basic\"},{\"db\":\"laravel_student_mgmt\",\"table\":\"student\"},{\"db\":\"laravel_student_mgmt\",\"table\":\"users\"},{\"db\":\"ecom_hmvc\",\"table\":\"user_basic\"},{\"db\":\"ecom_hmvc\",\"table\":\"user_extended\"},{\"db\":\"student_management\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'student_management', 'student', '{\"sorted_col\":\"`student`.`mark` DESC\"}', '2024-08-01 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-08-01 15:39:36', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student_management`
--
CREATE DATABASE IF NOT EXISTS `student_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_management`;

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
(5, '2024_07_27_170820_teachers_basic', 2),
(6, '2024_07_28_040705_student', 3);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `subject`, `mark`, `created_at`, `updated_at`) VALUES
(35, 'Sabarinathan R', 'English', '91', '2024-07-29 06:19:31', '2024-08-01 05:05:28'),
(36, 'Sabarinathan R', 'Maths', '82', '2024-07-29 06:19:56', '2024-07-29 06:19:56'),
(37, 'Sabarinathan R', 'Chemistry', '90', '2024-07-29 06:20:15', '2024-07-29 06:20:32'),
(38, 'Sabarinathan R', 'Physics', '90', '2024-07-29 06:20:59', '2024-07-29 06:21:32'),
(39, 'Sabarinathan R', 'Computer Science', '95', '2024-07-29 06:21:56', '2024-07-29 06:22:13'),
(41, 'Madhunisha', 'maths', '95', '2024-08-01 04:07:01', '2024-08-01 05:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_basic`
--

CREATE TABLE `teachers_basic` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `pwd` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `last_logged_in` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers_basic`
--

INSERT INTO `teachers_basic` (`id`, `email`, `pwd`, `name`, `last_logged_in`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pushpaasabari@gmail.com', '$2y$10$BW0A2i/8qeca/AlWbTbQduYQEInfQ3vG1uTW5pJbnUQSY3yeuQl.q', 'Sabarinathan R', '2024-08-01 08:15:43', 1, '2024-08-01 02:45:43', '2024-08-01 02:45:43');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id_unique` (`id`);

--
-- Indexes for table `teachers_basic`
--
ALTER TABLE `teachers_basic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_basic_id_unique` (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `teachers_basic`
--
ALTER TABLE `teachers_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
