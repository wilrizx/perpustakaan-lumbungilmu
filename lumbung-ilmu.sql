-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2025 at 04:36 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumbung-ilmu`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `student_id`, `date`, `time_in`, `created_at`, `updated_at`) VALUES
(6, 522, '2025-11-26', '21:58:42', '2025-11-26 14:58:42', '2025-11-26 14:58:42'),
(7, 604, '2025-11-26', '22:02:08', '2025-11-26 15:02:08', '2025-11-26 15:02:08'),
(8, 115, '2025-11-26', '22:59:54', '2025-11-26 15:59:54', '2025-11-26 15:59:54'),
(9, 21, '2025-11-30', '19:25:00', '2025-11-30 12:25:49', '2025-11-30 12:25:49'),
(10, 775, '2025-11-30', '19:26:36', '2025-11-30 12:26:36', '2025-11-30 12:26:36'),
(11, 37, '2025-11-30', '19:45:32', '2025-11-30 12:45:32', '2025-11-30 12:45:32'),
(12, 744, '2025-12-03', '00:42:48', '2025-12-02 17:42:48', '2025-12-02 17:42:48'),
(13, 699, '2025-12-04', '10:37:57', '2025-12-04 03:37:57', '2025-12-04 03:37:57'),
(14, 115, '2025-12-04', '11:18:38', '2025-12-04 04:18:38', '2025-12-04 04:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_year` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` int NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publication_year`, `category`, `category_other`, `pages`, `cover_photo`, `created_at`, `updated_at`) VALUES
(337, '1648', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(338, '24 Sauh (Kumpu', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(339, '3 Koplak Mencar', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(340, '5 cm.', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(341, 'Babi Ngesol', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(342, 'Beautiful Regret', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(343, 'Believe Me Love', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(344, 'Bidadari-Bidadar', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(345, 'Catatan Hati Seo', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(346, 'Cinta Seumur Ja', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(347, 'Diego\'s Great Di', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(348, 'Exo Salah Gaul', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(349, 'K-Pop Salah Ga', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(350, 'Kicau Burung di', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(351, 'Komik Nvinvi', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(352, 'Kulitku Gelap, Ku', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(353, 'Laskar Pelangi', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(354, 'Negeri 5 Menara', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(355, 'Omelan Mama', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(356, 'Pelarian Romant', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(357, 'Peta Yang Hilang', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(358, 'Pintu Waktu', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(359, 'Pulau Topeng', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(360, 'Rahasia Sang Ib', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(361, 'Romansa Dua B', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(362, 'Sang Pemimpi', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(363, 'Sesuk', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(364, 'Si Pitung', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(365, 'Still Alice', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(366, 'The Gift (Kado T', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(367, 'The Last Barong', 'Tidak Diketahui', 2020, 'Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(368, '10 Sahabat Rasu', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(369, '19 Keys Hidup B', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(370, '25 Nabi dan Ras', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(371, 'Al-Quran Dan Te', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(372, 'Awakening the G', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(373, 'Back to Allah', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(374, 'Beternak Kerbau', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(375, 'Budidaya Apel', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(376, 'Budidaya Ayam', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(377, 'Budidaya Ikan Ni', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(378, 'Budidaya Jambu', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(379, 'Budidaya Jati', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(380, 'Budidaya Kacan', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(381, 'Budidaya Kedela', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(382, 'Budidaya Kuda', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(383, 'Budidaya Lele', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(384, 'Budidaya Petai', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(385, 'Catatan Harian E', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(386, 'Cerdas & Kreatif', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(387, 'Ensiklopedia De', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(388, 'Harga Sebuah L', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(389, 'Helen Keller', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(390, 'Imam Hanafi Pen', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(391, 'Imam Hanali Pen', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(392, 'Intensif Budidaya', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(393, 'It\'s Me (Kisah Ny', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(394, 'Jurus Jitu Go Pu', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(395, 'Jus Amma \"\"Teks', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(396, 'Kamus Istilah Po', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(397, 'Kaya Dunia Akhi', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(398, 'Kepemimpinan M', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(399, 'Kisah 25 Rasul (', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(400, 'Kisah Nyata 25 N', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(401, 'Kisah Nyata 25 N', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(402, 'Kisah Nyata 25 N', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(403, 'Kumpulan Kisah', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(404, 'Kumpulan Kisah', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(405, 'Melepaskan Pan', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(406, 'Mengenal Syaha', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(407, 'Mengenal Waral', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(408, 'Mengenal Zakat', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(409, 'Menjadi Remaja', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(410, 'Panduan Lengka', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(411, 'Panduan Praktis', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(412, 'Panduan Shalat', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(413, 'Panduan Shalat', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(414, 'Pesona Ibadah N', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(415, 'Pisang-Pisang K', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(416, 'RPIL (Rangkuma', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(417, 'Rasulullah Kisah', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(418, 'Smart in Leaders', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(419, 'Svekh Siti Jenar', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(420, 'Syekh Subakir', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(421, 'Terapi Hati', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(422, 'Tuntunan Haji &', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(423, 'Tuntunan Ibadah', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(424, 'UU RI No 41 TH', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(425, 'Walt Disney', 'Tidak Diketahui', 2020, 'Lainnya', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(426, '1649', 'Tidak Diketahui', 2020, 'Lovely! Lovely! L Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(427, 'Aku Anak Indone', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(428, 'Ayo Mengenal In', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(429, 'Bangga Indonesi', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(430, 'Ensiklopedia Pen', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(431, 'Himpunan UU RI', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(432, 'Lanka Papua', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(433, 'Pergulatan Advo', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(434, 'UU RI No 22 TH', 'Tidak Diketahui', 2020, 'Non Fiksi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(435, 'Pertolongan Pert', 'Tidak Diketahui', 2020, 'Olahraga', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(436, 'Al-Islam Pendidi', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(437, 'Boom! English G', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(438, 'Cara Ampuh Mer', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(439, 'Ensiklopedia Ana', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(440, 'Intisari Kata Bah', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(441, 'Islamic Parenting', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(442, 'Islamic Teen Par', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(443, 'Kamus Inggris - I', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(444, 'Kenali Narkoba d', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(445, 'Kuat Karakterku,', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(446, 'Manajemen Berb', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(447, 'Manajemen Pen', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(448, 'Membangun Kar', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(449, 'Membangun Kar', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(450, 'Menjadi Guru Pr', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(451, 'Mindful Learning', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(452, 'Panduan Manaje', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(453, 'Panduan Pendid', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(454, 'Pendidikan Kara', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(455, 'Pendidikan Kara', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(456, 'Strategi Pendidik', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(457, 'UU RI No 20 TH', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(458, 'Wajah Baru Pen', 'Tidak Diketahui', 2020, 'Pendidikan', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(459, 'A-Z Geografi Vol', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(460, 'A-Z Geografi Vol', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(461, 'A-Z Sains Vol 1 A', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(462, 'A-Z Tubuh Manu', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(463, 'A-Z tubuh Manus', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(464, 'Apatosaurus Si E', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(465, 'Bersorak Sehat', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(466, 'Deteksi Pencem', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(467, 'Ensiklopedia Ant', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(468, 'Ensiklopedia Ra', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(469, 'Lebih Dekat den', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(470, 'Lebih Dekat den', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(471, 'Lebih Detail Sep', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(472, 'Mengenal Benda', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(473, 'Mengenal Virus', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(474, 'Sains untuk Pem', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(475, 'Sains untuk Pem', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(476, 'Sains untuk Pem', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(477, 'Sains untuk Pem', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(478, 'Sehatkan Jantun', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(479, 'UU RI No 24 TH', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(480, 'UU RI No 32 TH', 'Tidak Diketahui', 2020, 'Sains', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(481, 'Alfred Bernhard', 'Tidak Diketahui', 2020, 'Sejarah', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(482, 'Badshah Khan', 'Tidak Diketahui', 2020, 'Sejarah', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(483, 'Ensiklopedia sej', 'Tidak Diketahui', 2020, 'Sejarah', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(484, 'Indonesia Habis', 'Tidak Diketahui', 2020, 'Sejarah', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(485, 'Menyulut Lahan', 'Tidak Diketahui', 2020, 'Sejarah', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(486, 'Berkreasi dan Be', 'Tidak Diketahui', 2020, 'Seni', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(487, 'Ensiklopedia De', 'Tidak Diketahui', 2020, 'Seni', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(488, 'Ide Unik Dekoras', 'Tidak Diketahui', 2020, 'Seni', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(489, 'Kreasi Kolase, M', 'Tidak Diketahui', 2020, 'Seni', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(490, 'Semua Bisa Men', 'Tidak Diketahui', 2020, 'Seni', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(491, 'Buku Serial Mist', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(492, 'Merancang Web', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(493, 'Microsoft Access', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(494, 'Microsoft Office', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(495, 'Microsoft Windo', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(496, 'Nggaak Kuper &', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(497, 'Pengantar Komp', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(498, 'Pengantar Teori', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(499, 'Sistem Operasi', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(500, 'Teknik Pengolah', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(501, 'Teks dan Grafik', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(502, 'Tinjauan Komput', 'Tidak Diketahui', 2020, 'Teknologi', NULL, 0, NULL, '2025-11-30 05:06:38', '2025-11-30 05:06:38'),
(503, 'madilog', 'bisma harish', 2005, 'Lainnya', 'Buku novel', 300, NULL, '2025-12-04 04:24:19', '2025-12-04 04:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_25_123747_create_students_table', 1),
(5, '2025_08_25_123755_create_books_table', 1),
(6, '2025_08_25_123758_create_attendances_table', 1),
(7, '2025_08_26_140148_remove_grade_from_students_table', 1),
(8, '2025_11_23_183417_add_class_to_students_table', 2),
(9, '2025_11_23_200655_add_category_other_to_books_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `nis`, `class`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Afika Kurniadianty', '9325', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(6, 'Ahmad Hamdan Fadillah Wibowo', '9326', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(7, 'Airlangga Juan Satriaji', '9327', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(8, 'Anindhita Naomi Carissa Anggraeni', '9328', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(9, 'Annisa Puteri Shahibussalam', '9329', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(10, 'Aqoilla Meutia Rahmi', '9330', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(11, 'Asyifa Machfiroh Ferni Putri', '9331', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(12, 'Attar Raffasya Desatria', '9332', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(13, 'Bakti Pandu Insani', '9333', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(14, 'Bodhi Lathra Alifa Putra', '9334', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(15, 'Eza Saputra', '9335', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(16, 'Fadlan Al-Ghazali Rifkianto', '9336', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(17, 'Fellicia Aurel Radisty', '9337', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(18, 'Kanaya Assabila Hakim', '9338', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(19, 'Kayra Anindya Savira', '9339', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(20, 'Keysa Andaresta', '9340', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(21, 'Mahila Sakinah Irda', '9341', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(22, 'Mahindri Sulistyowati', '9342', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(23, 'Mashitah Kendra Rafif Viliansyah', '9343', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(24, 'Mochammad Baqil Khoir', '9344', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(25, 'Mohamad Fathir Komarudin', '9345', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(26, 'Muhammad Akbar Haychal Putra Febrian', '9346', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(27, 'Muhammad Arsya Nabiha Virendra Pradipta', '9347', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(28, 'Muhammad Ismail Bachtiar', '9348', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(29, 'Muhammad Zahfran', '9349', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(30, 'Orieana Rachael Salsabila Putri', '9350', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(31, 'Raisha Stefanny Wardana', '9351', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(32, 'Reynard Tristan Alvaro', '9352', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(33, 'Satriya Althaf Wiranata', '9353', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(34, 'Sulis Niafani', '9354', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(35, 'Uliana Kasih Sitohang', '9355', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(36, 'Wahyu Tegar Syahputra', '9356', '7A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(37, 'Achmad Maulana Maliki', '9357', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(38, 'Afiqah Najwa Zumar Setiawan', '9358', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(39, 'Andi Aurelia Shidqia Putri', '9359', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(40, 'Ayunindyasaqya Tamtarin', '9360', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(41, 'Bima Adha Madavickya', '9361', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(42, 'Briand Yusuf Hamka', '9362', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(43, 'Callista Putri Arini', '9363', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(44, 'Clarissa Davinasari Krisna Putri', '9364', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(45, 'Dafinah Kurniawan', '9365', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(46, 'Devania Asyadilla Sania Lutfi', '9366', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(47, 'Dewi Anggun Natasya', '9367', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(48, 'Dhoni Kurniawan Arasta', '9368', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(49, 'Emmanuel Davano Leonard Silitonga', '9369', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(50, 'Fabrizio Azka Abrisam Siswoyo', '9370', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(51, 'Fadhil Putra Ramadhan', '9371', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(52, 'Felcia Kayana Azzahra Waroka Purnomo', '9372', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(53, 'Fitri Zulfiah', '9373', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(54, 'Hanif Daffa Ananto', '9374', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(55, 'Ignatius Matthew Priyono', '9375', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(56, 'Javier Abdi Rashid', '9376', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(57, 'Jovan Fulvian Zahran Kuntaryanto', '9377', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(58, 'Kenzo Van Java Al Khalifi Jayaputra', '9378', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(59, 'Khaira Catasasch Prasetya', '9379', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(60, 'Khanza Adela Putri Rifalia', '9380', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(61, 'Muhammad Ardan Alfarizie', '9381', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(62, 'Nestialivin Feriska May', '9382', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(63, 'Rafael Alvaro Aldiansyah', '9383', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(64, 'Sabihisma Putri Dediyansah', '9384', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(65, 'Syafriel Ulinnuha', '9385', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(66, 'Thabrani Al Hakim Nwa Prihadi', '9386', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(67, 'Widhyadari Kaisah Kayana', '9387', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(68, 'Zahra Hastitis Berlian', '9388', '7B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(69, 'Adri Aulia Akbar Nasution', '9389', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(70, 'Afiqa Ninditya Zara', '9390', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(71, 'Afriayani Putri Surya', '9391', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(72, 'Afrizal Fikri Risqulah', '9392', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(73, 'Airlangga Satria Putra', '9393', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(74, 'Aishani Chamira Choiron', '9394', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(75, 'Aisyahrani Kamila Shafira', '9395', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(76, 'Aqila Mutiara Balques', '9396', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(77, 'Azalea Valerryeta Arofah', '9397', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(78, 'Azzahra Nayla Putri Rahmadani', '9398', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(79, 'Cinta Aqiella Saharaputri', '9399', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(80, 'Cintya Ainur Rohmah Az-Zahra', '9400', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(81, 'Diajeng Kencana Putri', '9401', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(82, 'Dimas Dwi Firmansyah', '9402', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(83, 'Fadli Ar-Razi Rizkianto', '9403', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(84, 'Finola Kitra Cosmanova', '9404', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(85, 'Galih Hari Wibowo', '9405', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(86, 'Gerino Al-Fatoni Barakat', '9406', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(87, 'Ilham Pratama', '9407', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(88, 'Jomas Zenagga', '9408', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(89, 'Kamila Raida Fakhira', '9409', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(90, 'Khalis Gilang Ariesdhianto', '9410', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(91, 'Latief Sukron Rafsanjani', '9411', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(92, 'Natasya Regina Permata Putri', '9412', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(93, 'Rayshiva Micha Putra Ramadhan', '9413', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(94, 'Rendy Yusuf Hariyanto', '9414', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(95, 'Satria Pandawa Al Fattan', '9415', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(96, 'Soraya Wulandari', '9416', '7C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(97, 'Abella Zineta Kusnandar', '9417', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(98, 'Aini Karunia Putri', '9418', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(99, 'Aldo Prasetiyo', '9419', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(100, 'Arenesta Redho Athaya', '9420', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(101, 'Ashila Kinanti Erwinsyah', '9421', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(102, 'Aurelya Maysya Maharani', '9422', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(103, 'Fahira Lovyta Kurnia Saputra', '9423', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(104, 'Geraldi Alpha Tree Saktyawan', '9424', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(105, 'Ginzaura', '9425', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(106, 'Halwa Aira Hidayat', '9426', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(107, 'Keyra Alexandria', '9427', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(108, 'Maylani Nur Qomariyah', '9428', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(109, 'Muhammad Ferdiansyah Putra', '9429', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(110, 'Muhammad Husain Habibi', '9430', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(111, 'Muhammad Iqbal Mahendra', '9431', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(112, 'Muhammad Naufal Rafif Putra Pradana', '9432', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(113, 'Muhammad Novim Aryatama', '9433', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(114, 'Naura Hasna Aqilah', '9434', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(115, 'Nelson Abel Jabar Al Muharram', '9435', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(116, 'Novita Sari', '9436', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(117, 'Queenza Nazilla Janitra Andriyanto', '9437', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(118, 'Rafa Prasetyo Kusnoto', '9438', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(119, 'Rangga Jaler Akbar Ramadhani', '9439', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(120, 'Riski Dwi Saputra', '9440', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(121, 'Salsabillah Nayla Bilqis', '9441', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(122, 'Soran Augusta Ibrahim', '9442', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(123, 'Syamsa Arundina', '9443', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(124, 'Whisnu Anugerah Try Firmansyah', '9444', '7D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(125, 'Aflah Messi Rahuillah', '9445', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(126, 'Aisyah Husna Kamilah', '9446', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(127, 'Aisyah Nur Ramadhani', '9447', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(128, 'Akbar Nur Parameswara', '9448', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(129, 'Almira Agsha Kayla Dewi', '9449', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(130, 'Aqilla Radhiya Salsabillah', '9450', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(131, 'Axelle Akanda Triathlon', '9451', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(132, 'Devanio Arvico Syhanto', '9452', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(133, 'Inaya Azmi Athifa Eiji', '9453', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(134, 'Kenny Rafarizky Kurniawan', '9454', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(135, 'Kenzo Tofani', '9455', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(136, 'Khanza Khairunisa Setyoko', '9456', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(137, 'Maurentya Nada Kuncoro', '9457', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(138, 'Moch. Raditya Arrasyid Rizqulloh', '9458', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(139, 'Muhamad Alif Brian Azizi', '9459', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(140, 'Muhammad Afandi Maulana', '9460', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(141, 'Muhammad Fahrezy Devanka', '9461', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(142, 'Naafisah Maritza Hendrasari', '9462', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(143, 'Naura Ata Azarencha', '9463', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(144, 'Naura Hasya Ivana', '9464', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(145, 'Raisya Mumtaazah Calluella', '9465', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(146, 'Rakha Naufal Bahtiar', '9466', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(147, 'Rasyadan Hasbi Kasyfurrahman', '9467', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(148, 'Revina Dewi Wardani', '9468', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(149, 'Reysha Shareena Setiyo Putri', '9469', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(150, 'Rifky Ibnusiena Dwi Putra', '9470', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(151, 'Satria Airlangga Dirgantara Putra Prasetya', '9471', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(152, 'Taufiqurrahman Adicandra', '9472', '7E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(153, 'Achmad Rizki Firmansyah', '9473', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(154, 'Agung Setya Budi', '9474', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(155, 'Annisa Nur Fadilah', '9475', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(156, 'Atha Marta Ibrahim', '9476', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(157, 'Ayra Ayu Angeline', '9477', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(158, 'Biancha Naura Syifauliana', '9478', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(159, 'Clarinta Austrin Anandianto', '9479', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(160, 'Damia Aulia Azzahra', '9480', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(161, 'Daniswara Nendra Hutama', '9481', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(162, 'Daval Armando', '9482', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(163, 'Dzeko Ferellino Fahrezi Agitza', '9483', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(164, 'Elok Suryaningtyas Wulandari', '9484', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(165, 'Fandiansyah Putra Setiawan', '9485', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(166, 'Fico Zhafran Fardiansyah', '9486', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(167, 'Fiskhil Azuzi Fastabiqul Khoirot', '9487', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(168, 'Gheisya Shafira Putri Aulia', '9488', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(169, 'Hilmi Alviko Putra Darmawan', '9489', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(170, 'Khayla Azra Fakhira', '9490', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(171, 'Kirana Aurelia Putri', '9491', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(172, 'Mochamad Rakha Azfareza', '9492', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(173, 'Muhammad Baihaq Islam Nur', '9493', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(174, 'Muhammad Fadhli Mubarak', '9494', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(175, 'Nafisha Arsy Kurniawan', '9495', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(176, 'Qudsiah Gazala Al Hakim', '9496', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(177, 'Radhika Putra Alfiansya', '9497', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(178, 'Salsabilla Putri Aprilia', '9498', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(179, 'Sasikirana Atifah Nayra Rusti', '9499', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(180, 'Tiara Fitri', '9500', '7F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(181, 'Abimanyu Arya Sena', '9501', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(182, 'Afifah Nadif Annisah', '9502', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(183, 'Ahmad Fauzul Azdhiim', '9503', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(184, 'Aisyah Quroitul Putri Nur Ain', '9504', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(185, 'Akmal Faeyza Darmawan', '9505', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(186, 'Alvino Dwi Andhika', '9506', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(187, 'Argya Diandra Pratama', '9507', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(188, 'Arzila Naomi Fatikah Nurani', '9508', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(189, 'Aziela Balqis', '9509', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(190, 'Azriel Kris Pratama', '9510', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(191, 'Beatrix Kinanzea Tandingan', '9511', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(192, 'Cesha Kinar Valeria', '9512', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(193, 'Cinta Ashara Tri Pitaloka', '9513', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(194, 'Egy As\'At Audin', '9514', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(195, 'Fransiscus Alzio Andhika Setyawan', '9515', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(196, 'Johartnes Minggus', '9516', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(197, 'Kaina Nur Zahra', '9517', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(198, 'Khoirun Nisya', '9518', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(199, 'Kian Ahnaf Alfaro', '9519', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(200, 'Laurensius Adhyastha Wirahadi', '9520', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(201, 'Mahatma Gandhi Putra Armansyah', '9521', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(202, 'Maria Margaretha Ariani Puteri', '9522', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(203, 'Muhammad \'Azzam Amrullah', '9523', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(204, 'Nafa Binar Adi Ratna', '9524', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(205, 'Omar Abimanyu Khairy Wibowo', '9525', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(206, 'Ramadhan Putra Bintoro', '9526', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(207, 'Sabrina Zeeya Rawdah', '9527', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(208, 'Shaqila Maulidya Setyasarie', '9528', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(209, 'Yusufasiola Cantika Meylani Arnindhita', '9529', '7G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(210, 'Aqeela Talita Sakhi', '9530', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(211, 'Aqila Nashwa Saabirah', '9531', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(212, 'Asrosivan Radithya Athasokya', '9532', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(213, 'Azzahra Aighar Zannubairi', '9533', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(214, 'Ega Wijaya Suhardiono', '9534', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(215, 'Fachry Satria Setiyawan', '9535', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(216, 'Falisha As Shafiyyah', '9536', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(217, 'Galih Wahid Ramadhan', '9537', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(218, 'Jabriel Abdi Khalik', '9538', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(219, 'Kaiza Nafisah Zahira', '9539', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(220, 'Kalyla Wiritanaya Yuvi Putri Paraditha', '9540', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(221, 'Keysha Widya Putri Fachrudin', '9541', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(222, 'Lathifa Aini Zahroh', '9542', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(223, 'Moch. Ubaidillah Faqih', '9543', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(224, 'Mohammad Haikal Arya Putra', '9544', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(225, 'Muh. Akbar Maulana Hidayat', '9545', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(226, 'Muhammad Fahri Saputra', '9546', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(227, 'Muhammad Rasydhan Darmajati', '9547', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(228, 'Nafisah Liya Agatha', '9548', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(229, 'Natasya Indah Pratiwi', '9549', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(230, 'Nathaya Zahwa Lutfia Putri', '9550', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(231, 'Raditya Afif Arrafi', '9551', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(232, 'Rizky Tirta Maulana', '9552', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(233, 'Shasmira Azzalia Kinasih Zain', '9553', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(234, 'Siti Sa\'Udah Fauziah', '9554', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(235, 'Talitha Naifa Azura', '9555', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(236, 'Zahira Ramadhani', '9556', '7H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(237, 'Adek Putri Nurhandayani', '9557', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(238, 'Alicya Gusti Nur Zukhrufi', '9558', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(239, 'Alya Firzana', '9559', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(240, 'Azzahra Firmannia Putri', '9560', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(241, 'Dini Nur Fadilla', '9561', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(242, 'Farendra Tholibul Ilham', '9562', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(243, 'Farza Khalidiyah', '9563', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(244, 'Genuine Aisyah Pious', '9564', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(245, 'I Gusti Made Arya Widnyana', '9565', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(246, 'Inzhaky Zaidan Rulialvaro', '9566', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(247, 'Istiqhfara Ramadhaniar', '9567', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(248, 'Janeta Naura Ayu Subagiyo', '9568', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(249, 'Kayla Faradhiba Putri Ashari', '9569', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(250, 'Mircea Yasmine Efendini Putri', '9570', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(251, 'Moh. Wafi Azhar Muttaqin', '9571', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(252, 'Muhammad Ardian Prasetio', '9572', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(253, 'Muhammad Aysar Amsar', '9573', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(254, 'Muhammad Hisyam Amiruddin', '9574', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(255, 'Najwaa Atiiqah Salsabil', '9575', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(256, 'Nizam Arya Tsaqif', '9576', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(257, 'Raheza Adhipati Bimantara Iswahyudi', '9577', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(258, 'Rizkyqu Eksar Putra Harfianto', '9578', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(259, 'Sekar Ayu Anggraini', '9579', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(260, 'Warid Firmansya', '9580', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(261, 'Xavier Putra Dega', '9581', '7I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(262, 'Akhtar Ehsan Izdihara', '9058', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(263, 'Alik Sisam Putra', '9059', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(264, 'Amalia Nazila Nur Anisa', '9060', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(265, 'Andrian Eka Ferdiansyah', '9061', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(266, 'Bayu Azka Saputra', '9062', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(267, 'Btari Sandhyakayla Patriabudi', '9063', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(268, 'Carisa Zelda Quena Sukarlin', '9064', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(269, 'Chiko Madani Putra', '9065', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(270, 'Chonita Carlin Afandi', '9066', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(271, 'Dimas Zarindra Nawasyah Putera', '9067', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(272, 'Dita Ramadhani', '9068', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(273, 'El Messia Sammy Arka Krisna Wicaksana', '9069', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(274, 'Isyana Latifah Arizona', '9071', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(275, 'Lucita Christien Decianti Mafhia', '9073', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(276, 'Moch. Latief Arrajav', '9074', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(277, 'Muhammad Raiyan Anandari Nasution', '9075', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(278, 'Nadira Chairunisa Guritno', '9076', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(279, 'Nailah Azara Atallah Putri', '9077', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(280, 'Rangga Bayu Ananto', '9078', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(281, 'Rasendriya Althea Ayunindia', '9079', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(282, 'Reginald Excel Putra Purnomo', '9080', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(283, 'Ricardo Katon Gumilang', '9081', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(284, 'Risang Syailendra', '9082', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(285, 'Rizky Novelino Putra', '9083', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(286, 'Satura Ghaisani Aryan', '9084', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(287, 'Sergio Bayu Saputra', '9085', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(288, 'Steven Imanuel Ouwaleng', '9086', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(289, 'Sylfara Aulia Putri', '9087', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(290, 'Tievania Nabila Aura Putri', '9088', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(291, 'Veriska Winarta', '9089', '8A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(292, 'Ahmad Naufal At Tamimi', '9090', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(293, 'Aurel Putri Rahadi', '9091', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(294, 'Diello Kenneth Zuriel Lani', '9092', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(295, 'Dyah Ayu Putri Kusumaningtyas', '9093', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(296, 'Evelyn Dwi Novitasari', '9094', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(297, 'Feivel Kenzo Ezechiel', '9095', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(298, 'Feli Aulia Anandita', '9096', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(299, 'Galihsakha Atiku Almadjidi', '9097', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(300, 'Ghaisan Aryobimo Respati', '9098', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(301, 'Ghathfan Faiz Priyanto', '9099', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(302, 'Giovanno Nathanael', '9100', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(303, 'Marcello Ryonaldo Theo Novendra', '9101', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(304, 'Moch. Raihan Sholeh', '9102', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(305, 'Muhammad Zaidan Fayyadh Hail', '9103', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(306, 'Natanael Kristona Moka', '9104', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(307, 'Nur Khadzam Yarjuna Firdaus', '9106', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(308, 'Putri Ayu Puspa Damayanti', '9107', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(309, 'Rafa Adly Saputra', '9108', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(310, 'Revalina Dwi Noviani', '9109', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(311, 'Risqi Mukhamad Maulana', '9110', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(312, 'Rizky Prayoga', '9111', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(313, 'Salsabila Mega Pratama Putri', '9112', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(314, 'Santia Kirana Rahmayanti', '9113', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(315, 'Shafira Azka Mazaya Wahyudi', '9114', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(316, 'Syifa Aurelia Hakari', '9115', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(317, 'Triana Kusuma Dewi', '9116', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(318, 'Vico Putra Pratama', '9117', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(319, 'Yakfi Irfan Satriyo', '9118', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(320, 'Yudan Putra Ava Ardiansyah', '9119', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(321, 'Zahirah Talita Sakhi', '9120', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(322, 'Zivara Filzah Tara', '9121', '8B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(323, 'Adelio Tristan Putra Kamajaya Umen', '9122', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(324, 'Afifah Alhusna Zhafirah', '9123', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(325, 'Aisyah Azzahra Setiya Budi', '9124', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(326, 'Alishwa Izzah Insyirah Tabina', '9125', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(327, 'Ananditha Tasya Arofan Putri', '9126', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(328, 'Andhika Wahyu Buchori', '9127', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(329, 'Andika Refandi Nuriyah Ramadhan', '9128', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(330, 'Azzaria Siti Kirana Wijaya', '9129', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(331, 'Dea Aulia Filosofi', '9130', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(332, 'Dewi Konie Febiyanti', '9131', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(333, 'Eldrida Tisha Soemarto', '9132', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(334, 'Fadjar Arofah', '9133', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(335, 'Faiz Hilmi An Naufal', '9134', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(336, 'Firli Adha Putra', '9135', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(337, 'Gifanny Putri Ameylia', '9136', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(338, 'Githaayufebiana', '9137', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(339, 'Hafid Akbar Susanto', '9138', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(340, 'Haikkel Enzhio Nanda Wardhana', '9139', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(341, 'Izza Fadhilah Abidha', '9140', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(342, 'Keishaa Arum', '9141', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(343, 'Muhammad Alkhoir Anandiar\'Aza', '9142', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(344, 'Muhammad Ananda Rifa\'I', '9143', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(345, 'Muhammad Ervan Kencono Putro', '9144', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(346, 'Muhammad Idris', '9145', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(347, 'Neysa Zevita Maheswari Ardianty', '9147', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(348, 'Raja Ashraf Kurniawan', '9148', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(349, 'Reihan Riskiansya Giri', '9149', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(350, 'Syifa Ayu Setyowati', '9150', '8C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(351, 'Abrar Dafa Huzaifah', '9151', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(352, 'Achmad Firmansyah Sahadi', '9152', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(353, 'Adroit Zealous Zaka Islami', '9153', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(354, 'Aira Aprilly Azzahra Putri', '9154', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(355, 'Alesha Rafanda Callysta Kirani', '9155', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(356, 'Amirah Husna Alhanun', '9156', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(357, 'Anindya Kirana Fadya Izzati', '9157', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(358, 'Annisa Naura Heaven', '9158', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(359, 'Athalia Nindi Alya', '9159', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(360, 'Athar Dhiyaulhaq Arfiansyah', '9160', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(361, 'Daffa Ardian Syahputra', '9161', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(362, 'Fathurrozzi Romadhoni', '9162', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(363, 'Felicia Gani Qaulan Sakila', '9163', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(364, 'Frevita Syifa Auvellia', '9164', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(365, 'Hamizan Alfarizi Putra', '9165', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(366, 'Hanum Ayatul Firdhousya', '9166', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(367, 'Ido Brillianto', '9167', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(368, 'Mascelo Noah Arka Aquira', '9168', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(369, 'M. Bima Satriawan Putra', '9169', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(370, 'Muhamad Sahrul Wijaya', '9170', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(371, 'Muhammad Akbar Arash Rabbani', '9171', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(372, 'Muhammad Evzhenvind Al-Fatih', '9172', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(373, 'Muhammad Fikri Wahiduz Zaman', '9173', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(374, 'Muhammad Iqbal Azzahir', '9174', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(375, 'Natasya Ayunanda Putri', '9175', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(376, 'Nazhifah Tiara Putri', '9176', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(377, 'Rachel Aurelia Ramadani', '9177', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(378, 'Riana Elvi Ningtyas', '9178', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(379, 'Valerina Candra Silvia', '9179', '8D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(380, 'Ahmad Fahris Dimas Oktavian', '9180', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(381, 'Aisyah Ramadhania', '9181', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(382, 'Akmalia Devvi Angelina', '9182', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(383, 'Alesha Dania Putri', '9183', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(384, 'Arjuna Putra Rahmad Dany', '9184', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(385, 'Aryo Bima Putra Nugroho', '9185', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(386, 'Ayu Shifa Alfiani', '9186', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(387, 'Belva Rajendra Davin', '9187', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(388, 'Deiko Pisca Damansyah', '9188', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(389, 'Evelyn Catharina Candrawati', '9189', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(390, 'Haris Candra Satriyawan', '9190', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(391, 'Juan Marcello Prasetyo', '9191', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(392, 'Kalisha Dinnar Zahira', '9192', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(393, 'Kanaya Putri Arisma', '9193', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(394, 'Kenzie Achmad Nascala', '9194', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(395, 'Lailan Isla Hendricha', '9195', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(396, 'Mariamovi Alliya Rosy', '9196', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(397, 'Maulana Alvien Christianto', '9197', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(398, 'Maulana Harun Arrasyid', '9198', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(399, 'Muhammad Adillah Fawwaz Syauqillah', '9199', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(400, 'Raditya Pratama', '9200', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(401, 'Rajwa Ardhana Putra Romadhon', '9201', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(402, 'Regina Keysha Az Zahra Aziez', '9202', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(403, 'Setia Ayu Nur Pertiwi', '9203', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(404, 'Syaskiya Putri', '9204', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(405, 'Tiffanycallista Putri', '9205', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(406, 'Yusuf Nur Ahmad', '9206', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(407, 'Zhahirah Aura Kusuma', '9207', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(408, 'Zhefanya Noverin Fernando', '9208', '8E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(409, 'Adi Putera Oktorisad Samudera', '9209', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(410, 'Ahnaf Rifqii Zaidaan Sayoga', '9210', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(411, 'Aissyila Nafa Putri', '9211', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(412, 'Alimatussirriy Al-Fushush', '9212', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(413, 'Cello Aditya Putra Pramudya', '9215', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(414, 'Chumairo Zakiyatus Solichah', '9216', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(415, 'Dhafa Aprilio', '9217', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(416, 'Elang Satria Awanta', '9218', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(417, 'Elvira Cefitri Anggraeni', '9219', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(418, 'Fadhia Alya Zahra', '9220', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(419, 'Gibran Al Fath Rescha', '9221', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(420, 'Javier Fathan Mubina', '9222', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(421, 'Jesi Anggelina Oktaviyanti', '9223', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(422, 'Kevin Ahmad Dzakky Ramadhan', '9224', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(423, 'Maulida Ariani', '9225', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(424, 'M. Rasya Afifi Sulistiawan', '9226', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(425, 'Muhamad Reyhan Maulana', '9227', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(426, 'Muhammad Arvin Azzam', '9228', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(427, 'Nayara Maulidyah', '9229', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(428, 'Neil Aushaf Herlambang', '9230', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(429, 'Putri Syafa Aulia Rahma', '9231', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(430, 'Rahma Azaleia', '9232', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(431, 'Rahma Hamidah Zuhriyyah', '9233', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(432, 'Razilfa Aila Putri Arcyra Santoso', '9234', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(433, 'Rendi Irawan', '9235', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(434, 'Rizky Octa Pratama', '9236', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(435, 'Rizky Wahyu Eki Putra Mustaqim', '9237', '8F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(436, 'Adiva Xaviera Hamsyah', '9238', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(437, 'Alverta Valency Anggara', '9239', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(438, 'Andhara Keysa Zahra', '9240', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(439, 'Andhita Gusti Ayu', '9241', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(440, 'Aneira Humaida', '9242', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(441, 'Anindita Zahra Rizyandri', '9243', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(442, 'Anugrah Miftakhul Ulum', '9244', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(443, 'Asyiffa Wahyu Wulan Yuliana', '9245', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(444, 'Athallah Rafie Mardiansyah', '9246', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(445, 'Dinda Febri Aulia', '9247', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(446, 'Fadhil Hafiz Zakariyah', '9248', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(447, 'Fatimatus Zahra', '9249', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(448, 'Gusti Aditya Rangga Putra', '9250', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(449, 'Ilham Alif Rusadi', '9251', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(450, 'Joachim Gavriel Widhiarta', '9252', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(451, 'Kirani Eka Vriansha', '9253', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(452, 'Kristian Abe Pratama', '9254', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(453, 'Lanang Satria Awanta', '9255', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(454, 'Marcello Raditya Oka', '9256', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(455, 'M. Azzam Al Ghani Prasetyo', '9257', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(456, 'Mochammad Faza Irvansyah', '9258', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(457, 'Nasifa Maulidyah', '9260', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(458, 'Nikma Nur\'Aini', '9261', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(459, 'Nindyta Putri Suwanah', '9262', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(460, 'Nugik Ichsan Hakim', '9263', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(461, 'Raditya Mico Widjanarko', '9264', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(462, 'Rayfal Satya Pranata', '9265', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(463, 'Yuanita Dwi Astutik', '9266', '8G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(464, 'Alfikri Amanah Aji Kusuma', '9267', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(465, 'Allan Abdillah Pratama', '9268', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(466, 'Anindita Almeera Larasati', '9269', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(467, 'Averro Kenzie Fanata', '9270', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(468, 'Cantika Oktarista Azora', '9271', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(469, 'Chelsea Callista Kristianto', '9272', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(470, 'Cinta Pinangan Rembulan', '9273', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(471, 'Dafara Rehan Sahputra', '9274', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(472, 'David Setyo Pambudi', '9275', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(473, 'Desta Putra Firmansyah', '9276', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(474, 'Fakhira Putri Febyana', '9277', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(475, 'Ghiffahri Dani Sarwono', '9278', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(476, 'Husein Muhammad', '9279', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(477, 'Irvi Qischil Cleverly', '9280', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(478, 'Jihan Wulansari', '9281', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(479, 'Krishna Aditya Javas Nararya', '9282', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(480, 'Mikhaila Shafiqa Shaumi Rahmansyah', '9283', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(481, 'Mirabel Anabela Izdihar Widodo', '9284', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(482, 'Mischa Ira Elvira', '9285', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(483, 'Moch Akbar Nasrullah Setiawan', '9286', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(484, 'Mochamad Bagus Oktaviano', '9287', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(485, 'Muhammad Ilzam Mubarok', '9288', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(486, 'Narendra Zhafran Ervyansyah', '9289', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(487, 'Nina Anjany', '9290', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(488, 'Nizam Muazzam', '9291', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(489, 'Olyvia Bintang Shofiani', '9292', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(490, 'Prida Avisa Ghaniyah', '9293', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(491, 'Rizki Ramadhani', '9294', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(492, 'Rorencia Jeslynnata Saputri', '9295', '8H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(493, 'Aditya Rizky Aryansyah', '9296', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(494, 'Aliyandra Arum Maulida', '9297', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(495, 'Al Nava Kahira Suwondo', '9298', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(496, 'Alvaro Putra Yulanda', '9299', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(497, 'Annisa Dewi Novita', '9300', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(498, 'Arifian Dwi Aguseptian', '9301', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(499, 'Bilal Faqih Ilmi', '9303', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(500, 'Candra Dewirania', '9304', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(501, 'Cindy Putri Ariyanti', '9305', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(502, 'Giovinno Putra Kandow', '9306', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(503, 'Hasan Muhammad', '9307', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(504, 'Kanza Dila Kirnawati', '9308', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(505, 'Mayfa Hellena Putri Cahya', '9309', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(506, 'Meisya Ika Ferdianti', '9310', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(507, 'Moch. Akbarul A\'Dhom', '9311', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(508, 'Mochamad Rafif Vigi Fahriansyah', '9312', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(509, 'Moch. Satria Naufal Alfa Rizqy', '9313', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(510, 'Muhammad Ivander Alva Rizky', '9314', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(511, 'Nada Nur Rahmatillah', '9315', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(512, 'Nandini Anindiya Putri Maharani', '9316', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(513, 'Naoki Aimar Dzaky', '9317', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(514, 'Nayra Nirvana Sallsafira Nabila Purnomo', '9318', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(515, 'Nur Ariqah Ailatat', '9319', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(516, 'Reivanda Fauzi Umpain', '9320', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22');
INSERT INTO `students` (`id`, `name`, `nis`, `class`, `photo`, `created_at`, `updated_at`) VALUES
(517, 'Syafira Tri Oktaviani', '9321', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(518, 'Vino Abyaz Aryoseno', '9322', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(519, 'Viona Dwi Choilia Indrianti', '9323', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(520, 'Wahyu Aprianto', '9324', '8I', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(521, 'Agsastra Shaumakayra Senjaning Solavia', '8795', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(522, 'Ahmad Rifa\'I Zaitansyah', '8796', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(523, 'Ahmad Riza Robbani Herwandi Putra', '8797', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(524, 'Aisya Alya Nabila', '8798', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(525, 'Assaell Rizkya Putra Wicaksono', '8799', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(526, 'Avicenna Agnaf Rajendra Nurizky', '8800', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(527, 'Bima Arya Saputra', '8801', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(528, 'Callista Azzahra', '8802', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(529, 'Evander Samuel Wibowo', '8803', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(530, 'Fardan Raditya Rahman', '8804', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(531, 'Feny Adelia Permatasari', '8805', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(532, 'Ghea Nabila Larasati', '8806', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(533, 'Ibrahim Movic Ulil Abshor', '8807', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(534, 'Jennifer Rachel Stefani Lee Tendean', '8808', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(535, 'M. Ainur Rizky', '8809', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(536, 'Marcelo Alfaresi Akbar', '8810', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(537, 'Muhammad Avis Al-Farid', '8811', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(538, 'Muhammad Habibie Bina Wyakta', '8812', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(539, 'Nismara Adi Makayasa', '8814', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(540, 'Pradita Zakaria Endriyanto', '8815', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(541, 'Rachel Graceia Utomo Putri', '8816', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(542, 'Rania Slavania Fourtonely', '8817', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(543, 'Ray Ivanna', '8818', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(544, 'Rayvansyah Manggala Putra Setyawan', '8819', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(545, 'Risky Acmad Adi Saputra', '8820', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(546, 'Salsa Adelia Putri Ariyanto', '8821', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(547, 'Sheibian Rui Shafira', '8822', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(548, 'Siti Fatimah Azarah', '8823', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(549, 'Susanti Nur Oktaviani', '8824', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(550, 'Titania Sefriana Anggraeni', '8825', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(551, 'Wulan Puspita Sari', '8826', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(552, 'Yoshie Davin Surya Pratama', '8827', '9A', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(553, 'Aida Rosidatul Mukaromah', '8828', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(554, 'Amelia Tri Tungga Dewi', '8829', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(555, 'Andi Anisa Kumala Dewi', '8830', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(556, 'Andika Putra Pratama', '8831', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(557, 'Arya Linggar Kayndra', '8832', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(558, 'Bahynaufal Dary Rizqwitha', '8833', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(559, 'Carissa Adelia Arietha Putri', '8834', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(560, 'Cinta Sayla Wahyusalma', '8835', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(561, 'Delta Maulana Ma\'Rup', '8836', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(562, 'Emeralda Charisa Widyan', '8837', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(563, 'Ghavinno Jolana Treavrylio Hollo', '8838', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(564, 'Hanif Raihan Zuhdi', '8839', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(565, 'Keanu Alvaro Maulana Median', '8840', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(566, 'Kevin Nugroho', '8841', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(567, 'Kezia Irene Mainolo', '8842', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(568, 'Latasya Gladiz Eka Shivara', '8843', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(569, 'Muhammad Bari\' Aljabbar', '8844', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(570, 'Muhammad Naail Abyansyah', '8845', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(571, 'Muhammad Valenci El Fayruz', '8846', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(572, 'Nabila Nur Zerlina Putri', '8847', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(573, 'Natasya Indah Kusuma Dewi', '8848', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(574, 'Naura Addina Zahra', '8849', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(575, 'Nesya Cantika Putri', '8850', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(576, 'Rachma Shifaul Umma', '8851', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(577, 'Risnu Alvaro Nugraha', '8852', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(578, 'Sabrina Abelia Larasati', '8853', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(579, 'Savena Naja Cinta Rimba Setiawan', '8854', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(580, 'Shelliana Salsabila', '8855', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(581, 'Syaffa Satya Novaryka', '8857', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(582, 'Syahril Rassyah Ramadhan', '8858', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(583, 'Valenscho Movic', '8859', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(584, 'Zara Keisha Rifa\'I', '8860', '9B', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(585, 'Achi Yusmia Putri Murdianto', '8861', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(586, 'Aghisna', '8862', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(587, 'Agiza Putri Nur Az Zahra', '8863', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(588, 'Aldea Damara Nizhy', '8864', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(589, 'Allegra Fabella Gubtha', '8865', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(590, 'Angel Lika Madisaputri', '8866', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(591, 'Angelique Aura Cantika', '8867', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(592, 'Annas Al-Ayubiie', '8868', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(593, 'Ardelia Aqilah Zhafirah', '8869', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(594, 'Banyu Putra Prayuga', '8870', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(595, 'Bima Putra Firmansyah', '8871', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(596, 'Darrius Wisnu Putra Wardhana', '8872', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(597, 'Dava Putra Ramawardana', '8873', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(598, 'Dimaz Raditya Dirja', '8874', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(599, 'Fatihah Rohmah', '8875', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(600, 'Galang Pramudya', '8876', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(601, 'Giga Karina', '8877', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(602, 'Hado Muhammad Putra', '8878', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(603, 'Mahdiyyah Dini Alamsah', '8879', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(604, 'Masyid Royyan Maulana Khofi', '8880', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(605, 'Muhamad Arya Satya', '8881', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(606, 'Muhammad Fadil Rafa Rachmawan', '8882', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(607, 'Radja Brillian Al Ghifari', '8883', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(608, 'Rehan Andriansah', '8884', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(609, 'Revian Zaqi Ramadhan', '8885', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(610, 'Rizky Dwi Kurniawan', '8886', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(611, 'Safira Dewi Aziza', '8887', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(612, 'Septia Fitri Amelia', '8888', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(613, 'Syaqiilah Bella Olivia', '8889', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(614, 'Vanecya Olyvia Putri', '8890', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(615, 'Vanesa Valencia Bustami', '8891', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(616, 'Yulio Andre Pratama', '8892', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(617, 'Zahifa Ratih Anjani', '8893', '9C', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(618, 'Adil Wicaksono', '8894', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(619, 'Ahmad Zidan Rayhan', '8895', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(620, 'Aldea Rayssa Kinara', '8896', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(621, 'Algis Fredella', '8897', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(622, 'Almira Mayesa Zada', '8898', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(623, 'Arifah Fahhama Rizki Arianes', '8899', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(624, 'Aurella Zivana Happy', '8900', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(625, 'Azriel Ilham Az-Zindani', '8901', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(626, 'Azzahra Maulida Yusuf', '8902', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(627, 'Endita Girly Afrilia', '8903', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(628, 'Fatimah Wulung Ayu', '8904', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(629, 'Hanifah Dinny Aliyah', '8906', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(630, 'Indrawan Adi Pranata', '8907', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(631, 'Lailatul Hasanah Putri', '8908', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(632, 'Mahesa Abimanyu Maalikalmulki Kartono', '8909', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(633, 'M. Dafa Alfarisi', '8910', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(634, 'Mikaildaud Zein Almayda', '8911', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(635, 'Moch. Reja Al Fathin', '8912', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(636, 'Muhammad Azriel Akbar', '8913', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(637, 'Muhammad Fachri Al Ghazali', '8914', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(638, 'Muhammad Irfanuddaqiqi Yaqin', '8915', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(639, 'Muhammad Isma\'Il Rusydi', '8916', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(640, 'Muhammad Rizky Aditya', '8917', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(641, 'Nadia Qaireen Evandi', '8918', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(642, 'Novirda Rindyantiputri P.B', '8919', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(643, 'Prubebi Sakti Amanullah', '8920', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(644, 'Putri Khairul Maulid Dilah', '8921', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(645, 'Rizky Wahyu Aji Wicaksono', '8922', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(646, 'Sheila Putrie Bagus', '8923', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(647, 'Shifa Chalista Putri', '8924', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(648, 'Tomica Ramdan Putra Ari P', '8925', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(649, 'Zhahravellia Bilqis Thabita Hirania Kurniawan', '8926', '9D', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(650, 'Aisha Tiara Rahma', '8928', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(651, 'Alysha Ariyanti Rahmadani', '8929', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(652, 'Amanda Salsabila Eliana', '8930', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(653, 'Azizan Shaleh Wiraseptian', '8932', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(654, 'Brian Arundaya Nararya', '8933', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(655, 'Emika Cempaka Putri Kresna', '8934', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(656, 'Fitri Ayu Haryani', '8935', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(657, 'Hafidz Aschaf Felani', '8936', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(658, 'Halimatus Syafira', '8937', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(659, 'Hanif Maulana', '8938', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(660, 'Jihan Adelia Mayca', '8939', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(661, 'Jingga Maria Christie Sumilih', '8940', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(662, 'M. Alfa Rizki', '8941', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(663, 'Muchamad Alif Sabillal', '8942', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(664, 'Muhammad Imron Ghozali Syahma', '8943', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(665, 'Muhammad Rizqi Izdiono', '8944', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(666, 'Nabila Alya Zafira', '8945', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(667, 'Nadia Nur Rohma', '8946', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(668, 'Nafiira Anine Febbyana', '8947', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(669, 'Naufal Hanif Nurfatih', '8948', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(670, 'Neysa Nakeisha', '8949', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(671, 'Olivia Dwi Primadahayu', '8950', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(672, 'Putera Hiban', '8951', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(673, 'Putra Alief Damiansyah', '8952', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(674, 'Raffi Azka Fachrian Putra', '8953', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(675, 'Rasendriya Bintang Pradipta', '8954', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(676, 'Reicyla Aura Safir Putri Arfian', '8955', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(677, 'Rizky Maulana Adika', '8956', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(678, 'Tiara Putri Andini', '8957', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(679, 'Vicky Eza Pratama', '8958', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(680, 'Vino Nugroho Yanuar Suhud', '8959', '9E', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(681, 'Achmad Zulfan As\'Ari', '8960', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(682, 'Adivika Nailah Rahmania', '8961', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(683, 'Anindyta Kirana Putri Ramadhani', '8962', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(684, 'Arina Alifiana Rifadli', '8963', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(685, 'Asila Oktavia Nur Fadhila', '8964', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(686, 'Bagus Sebastian Venera', '8965', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(687, 'Baret Alez Sambora', '8966', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(688, 'Chelsea Bilqis Az Zahra', '8967', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(689, 'Chiquita Nasyailla Saptanto', '8968', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(690, 'Davis Frizzy Brasco', '8969', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(691, 'Diandra Wiraditama Nasution', '8970', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(692, 'Ervina Rateh Azzara', '8971', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(693, 'Febrion Redica Putra', '8972', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(694, 'Jessikha Gusti Putri Wahyuniar', '8973', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(695, 'Kayla Lidya Almavira', '8974', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(696, 'Kaysan Muhammad Arkanza Hakim', '8975', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(697, 'Maulana Zaky Akbar', '8976', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(698, 'Mochamad Rizky Firdaus', '8977', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(699, 'Muhamad Hendra Putra Pratama', '8978', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(700, 'Muhammad Rizal', '8979', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(701, 'Muhammad Zaki Gufron', '8980', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(702, 'Nadilla Rahma Tsaniah', '8981', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(703, 'Putri Ainun Shofiah', '8982', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(704, 'Queeneta Medina Syarf Puti Prihadi', '8983', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(705, 'Raissa Nabila Erika Putri', '8984', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(706, 'Rara Faneshya Putri', '8985', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(707, 'Raykal Nafi Pramana Hidayat', '8986', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(708, 'Reza Andriansyah Wahyudi', '8987', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(709, 'R. Furqon Putra Bismariana', '8988', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(710, 'Senandung Nacita Herdeanvy', '8989', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(711, 'Siti Fatimah Fath Ya Widi', '8990', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(712, 'Thomas Rahadiansyah', '8991', '9F', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(713, 'Aaliyah Rizki Rahmania', '8992', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(714, 'Abdullah Azhar Hadi', '8993', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(715, 'Adam Jaris Humayun', '8994', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(716, 'Aura Dzakivah Maharani Putri', '8995', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(717, 'Azira Marseilla Habibah', '8996', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(718, 'Bella Anugerayeni', '8997', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(719, 'Diandra Arkananta', '8998', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(720, 'Fadli Sandi Hidayatulloh', '8999', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(721, 'Fitria Melati Dwi Heniati', '9000', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(722, 'Galih Rahmadani', '9001', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(723, 'Gendis Febriyani', '9002', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(724, 'Giorgius Satria Darrell Alvino Wiandi', '9003', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(725, 'Giovano Febrian Putra Siswanto', '9004', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(726, 'Ifah Nur Arsianti', '9005', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(727, 'Iqbal Satria Nugraha', '9006', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(728, 'Lusia Cheverly Rori', '9007', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(729, 'Mochammad Rafdan Ariffin', '9009', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(730, 'Moch. Reyhan Aldiansyah', '9010', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(731, 'Muhammad Rizki Febriansyah', '9011', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(732, 'Nadia Kayla Salsabila', '9012', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(733, 'Nadine Vemmy Kurniawan', '9013', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(734, 'Naswa Alfira Maharani', '9014', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(735, 'Nur Fauziyyah As-Syifa\'', '9015', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(736, 'Nur Qomariyah Romadhoni', '9016', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(737, 'Pandu Pratama', '9017', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(738, 'Robertus Yose Adi Setiawan', '9018', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(739, 'Safira Zalfania Putri', '9019', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(740, 'Sesya Aurelia', '9020', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(741, 'Shafadillah Ramadhani', '9021', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(742, 'Syahromi Hutomo Al-Farras', '9022', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(743, 'Verlyta Saskia Ramadhani', '9023', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(744, 'Wildan Dzulwan Permana', '9024', '9G', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(745, 'Aisyah Nur Laili', '9025', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(746, 'Ardan Dipa Kaka Radys Syah', '9026', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(747, 'Audhyan Tri Prayoga', '9027', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(748, 'Berliana Ameylia Putri', '9029', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(749, 'Brenda Nova Ayu Susanti Darmawan', '9030', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(750, 'Cholifatur Rohma', '9031', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(751, 'Dinda Ayu Wardani', '9032', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(752, 'Farah Aulia Ramadhani', '9033', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(753, 'Helda Sofi Riana', '9034', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(754, 'I Putu Ardana Arsa Saputra', '9035', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(755, 'Kenny Febri Yustiani', '9036', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(756, 'Laverda Marella Widyadhana', '9037', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(757, 'Maulana Azzaqqy Zhaidan Firdaus', '9038', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(758, 'Mifal Afghani', '9039', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(759, 'Mochammad Ismail', '9040', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(760, 'Muhamad Rifki Aditiawan', '9041', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(761, 'Muhammad Fadhil Fiandhika \'Allaamsyah', '9042', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(762, 'Muhammad Maulana Brilian', '9043', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(763, 'Muhammad Ramadhan Alviansyah', '9044', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(764, 'Nadiah Syakilah Putri Akaseh', '9045', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(765, 'Nailah Bahirotul Alfiyah', '9046', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(766, 'Putri Misyela Radika Ramadani', '9047', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(767, 'Putri Noviana', '9048', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(768, 'Rafisha Putra Wardana', '9049', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(769, 'Raihan Bariq Ramadhan', '9050', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(770, 'Revalina Putri Novianti', '9051', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(771, 'Sekar Ayu Kurniasari', '9052', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(772, 'Sufia Nuraini Rahayuningrum', '9053', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(773, 'Umi Nur Fajerin', '9054', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(774, 'Zaky Akhdan Maulana', '9055', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22'),
(775, 'Zanuwar Hendra Saputra', '9056', '9H', NULL, '2025-11-25 00:57:22', '2025-11-25 00:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@lumbungilmu.com', NULL, '$2y$12$uRh8zFHj2rhD70ltdtV6jOoxqnumsMmO3l8bqL8bScq5d5/eJieJG', NULL, '2025-11-22 14:35:43', '2025-11-22 14:35:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nis_unique` (`nis`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
