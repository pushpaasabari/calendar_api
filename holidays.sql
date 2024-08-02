-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 06:06 PM
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
-- Database: `holidays`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
