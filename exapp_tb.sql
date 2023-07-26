-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 05:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exapp_tb`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hypothesis_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `hypothesis_id`, `name`, `description`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'jonathan', 'pasien', 0.53, '2023-07-19 11:29:37', '2023-07-19 11:29:37'),
(2, 1, 'zeppeli', 'pasien', 0.65, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(3, 1, 'erina', 'pasien', 0.73, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(4, 1, 'dio', 'pasien', 0.64, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(5, 1, 'speedwagon', 'pasien', 0.94, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(6, 2, 'joseph', 'pasien', 0.75, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(7, 2, 'cecar', 'pasien', 0.88, '2023-07-19 11:29:38', '2023-07-19 11:29:38'),
(8, 2, 'lisa', 'pasien', 0.78, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(9, 2, 'jotaro', 'pasien', 0.50, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(10, 2, 'kakyoin', 'pasien', 0.53, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(11, 2, 'avdol', 'pasien', 0.60, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(12, 3, 'polnaref', 'pasien', 0.58, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(13, 3, 'josuke', 'pasien', 0.65, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(14, 3, 'okuyasu', 'pasien', 0.89, '2023-07-19 11:29:39', '2023-07-19 11:29:39'),
(15, 3, 'koichi', 'pasien', 0.55, '2023-07-19 11:29:40', '2023-07-19 11:29:40'),
(16, 3, 'rohan', 'pasien', 0.53, '2023-07-19 11:29:40', '2023-07-19 11:29:40'),
(17, 3, 'giorno', 'pasien', 0.87, '2023-07-19 11:29:40', '2023-07-19 11:29:40'),
(18, 4, 'bucalati', 'pasien', 0.60, '2023-07-19 11:29:40', '2023-07-19 11:29:40'),
(19, 4, 'mista', 'pasien', 0.91, '2023-07-19 11:29:40', '2023-07-19 11:29:40'),
(20, 4, 'fugo', 'pasien', 0.54, '2023-07-19 11:29:41', '2023-07-19 11:29:41'),
(21, 4, 'narancia', 'pasien', 0.83, '2023-07-19 11:29:41', '2023-07-19 11:29:41'),
(22, 4, 'abacio', 'pasien', 0.51, '2023-07-19 11:29:41', '2023-07-19 11:29:41'),
(23, 4, 'jolyne', 'pasien', 0.63, '2023-07-19 11:29:41', '2023-07-19 11:29:41'),
(24, 4, 'ermes', 'pasien', 0.87, '2023-07-19 11:29:41', '2023-07-19 11:29:41'),
(25, 2, 'fas', 'sadsad', 0.76, '2023-07-19 12:08:50', '2023-07-19 12:08:50'),
(26, 4, 'asdasd', 'asdsad', 0.15, '2023-07-19 12:16:09', '2023-07-19 12:16:09'),
(27, 4, 'sadsad', 'sadsad', 0.79, '2023-07-19 12:27:04', '2023-07-19 12:27:04'),
(28, 6, 'sopian', 'sadsa', 0.85, '2023-07-19 13:08:40', '2023-07-19 13:08:40'),
(29, 8, 'fikri', 'assaa', 0.95, '2023-07-19 13:11:34', '2023-07-19 13:11:34'),
(30, 2, 'korek api', 'tanaman alpukat', 0.92, '2023-07-19 13:15:09', '2023-07-19 13:15:09'),
(31, 7, 'kaca spion', 'tanaman alpukat', 0.95, '2023-07-19 13:26:03', '2023-07-19 13:26:03'),
(32, 5, 'sasa', 'asas', 0.48, '2023-07-19 21:56:36', '2023-07-19 21:56:36'),
(33, 1, 'fikri', 'sadas', 0.96, '2023-07-19 22:15:23', '2023-07-19 22:15:23'),
(34, 1, 'kaca spion', 'ikkjhjk', 0.96, '2023-07-20 00:16:20', '2023-07-20 00:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `evidence`
--

CREATE TABLE `evidence` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evidence`
--

INSERT INTO `evidence` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'EC0001', 'Daun-daun tidak utuh dan terdapat bekas gigitan', '2023-07-19 11:29:35', '2023-07-19 11:49:03'),
(2, 'EC0002', 'kepompong terdapat di antara daun', '2023-07-19 11:29:35', '2023-07-19 11:49:24'),
(3, 'EC0003', 'buah yang terserang akan terlihat pucat', '2023-07-19 11:29:35', '2023-07-19 11:51:57'),
(4, 'EC0004', 'Permukaan daun berbintik-bintik kuning yang kemudian akan berubah menjadi merah tua seperti karat', '2023-07-19 11:29:35', '2023-07-19 11:52:14'),
(5, 'EC0005', 'Terlihat bintik hitam/benjolan pada permukaan buah', '2023-07-19 11:29:35', '2023-07-19 11:52:40'),
(6, 'EC0006', 'berwarna cokleat hijau sampai hitam kelabu dan sporanya berwarna jingga', '2023-07-19 11:29:35', '2023-07-19 11:53:00'),
(7, 'EC0007', 'bercak cokelat berubah menjadi bintik-bintik kelabu', '2023-07-19 11:29:35', '2023-07-19 11:53:26'),
(8, 'EC0008', 'Bagian dalam buah berlubang dan busuk karena dimakan larva', '2023-07-19 11:53:47', '2023-07-19 11:53:47'),
(9, 'EC0009', 'terlihat kepompong bergelantungan', '2023-07-19 11:54:01', '2023-07-19 11:54:01'),
(10, 'EC0010', 'mengeluarkan embun madu yang biasanya ditumbuhi cendawan jelaga sehingga daun menjadi hitam dan semut berdatangan', '2023-07-19 11:54:17', '2023-07-19 11:54:17'),
(11, 'EC0011', 'Daunnya yang mudah layu dan rontok', '2023-07-19 11:54:33', '2023-07-19 11:54:33'),
(12, 'EC0012', 'Pada bagian bawah permukaan daun akan terlihat anyaman benang yang halus', '2023-07-19 11:54:51', '2023-07-19 11:54:51'),
(13, 'EC0013', 'terlihat dari warna daun yang berubah menjadi kehitaman', '2023-07-19 11:55:07', '2023-07-19 11:55:07'),
(14, 'EC0014', 'tanaman yang semakin kurus. Bagian tangkai buah, daun, bunganya akan terlihat pucat', '2023-07-19 11:55:22', '2023-07-19 11:55:22'),
(15, 'EC0015', 'serangan semua bagian tanaman kecuali akar berkarat', '2023-07-19 11:55:43', '2023-07-19 12:13:15');

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
-- Table structure for table `hypotheses`
--

CREATE TABLE `hypotheses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `description` text NOT NULL,
  `solution` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hypotheses`
--

INSERT INTO `hypotheses` (`id`, `code`, `name`, `weight`, `description`, `solution`, `created_at`, `updated_at`) VALUES
(1, 'HC0001', 'Ulat Kipat', 0.70, 'Daun pohon alpukat juga banyak yang berlubang atau tidak utuh karena dimakan oleh ulat kipat', 'Untuk mengendalikan hama ulat kipat bisa menggunakan ekstrak daun pepaya. Cara mengolahnya ialah dengan merendam 50 gram irisan daun pepaya kedalam 100 ml air.\r\nRendam hingga 24 jam kemudian peras dan saring. Tambahkan larutan ini kedalam 2-3 liter air lalu semprotkan ke tanaman yang terkena hama ulat kipat.\r\nJika ingin memakai bahan kimia bisa pula menggunakan insektisida yang mengandung bahan monokrotofos atau sipermetrin.\r\nDosisnya hanya 1.3 cc per liternya dan semprot ke bagian tanaman yang ada ulatnya.', '2023-07-19 11:29:36', '2023-07-19 13:19:13'),
(2, 'HC0002', 'Ulat Kupu-Kupu Gajah', 0.70, 'Daun alpukat tidak akan utuh seperti ada bekas gigitan', 'Lima siung bawang dicampur dengan misa dan 50 ml minyak sayur serta sedikit air.Semprotkan larutan tersebut ke pohon alpukat hingga 3 hari maka ulat kupu-kupu gajah akan segera mati.', '2023-07-19 11:29:36', '2023-07-19 13:19:57'),
(3, 'HC0003', 'Aphis Gossypii Glov', 0.70, 'Gejala serangannya terlihat dari warna daun yang berubah menjadi kehitaman. Selain itu Aphis gossypii Glov juga mengganggu pertumbuhan tanaman alpukat. Tanaman alpukat pun menjadi kerdil.', 'Hama jenis ini bisa dibasmi dengan ekstrak cabai merah. Cara pembuatannya bisa dengan menyiapkan 4 mangkuk cabai merah ditambah 30 gram detergen., mendidihkan cabai selama 20 menit lalu tambahkan 3 liter air.\r\nDinginkan terlebih dahulu baru kemudian tambahkan detergen lalu semprotkan ke tanaman. Semprotkan setiap pagi dan sore hari hingga hama tanaman menghilang.', '2023-07-19 11:29:36', '2023-07-19 13:20:44'),
(4, 'HC0004', 'Kutu Dompalan Putih', 0.80, 'Gejala serangan hama ini bisa terlihat pada perkembangan tanaman yang semakin kurus. Bagian tangkai buah, daun, bunganya akan terlihat pucat. Lama-kelamaan bagian tanaman akan tertutup hama berwarna putih dan mengering.', 'Dengan menggunakan insektisida berbahan karbaril, formotion, monocrotophos atau dimetoat\r\n\r\nMenggunakan ekstrak jahe yang ditambahkan air dan detergen larutan ini kemudian disemprotkan ke tanaman.', '2023-07-19 11:29:36', '2023-07-19 13:21:25'),
(5, 'HC0005', 'Tungau Merah', 0.60, 'Daunnya yang mudah layu dan rontok.\r\nPermukaan daun akan berbintik kuning lalu berubah menjadi merah tua.\r\nPada bagian bawah permukaan daun akan terlihat anyaman benang yang halus dari si tungau.', 'Menggunakan ekstrak ketumbar dengan hancurkan 200 biji ketumbar lalu tambahkan 2 liter air kemudian semprotkan ke seluruh bagian tanaman pada pagi hari.', '2023-07-19 11:59:37', '2023-07-19 13:22:11'),
(6, 'HC0006', 'Lalat Buah Dacus', 0.70, 'Buah alpukat telihat benjolan atau bintik hitam pada permukaan buah. Hal ini terjadi karena hama lalat tersebut menusukan buah sebagai lokasi meletakan telurnya. Bagian dalam buah alpukat yang diserang hama ini nantinya akan busuk karena dimakan larva.', 'Untuk mengendalikan hama ini bisa dengan menyemprotkan insektisida maupun memakai obat organik. Kamu bisa menggunakan ekstrak selasih maupun minyak citronella.\r\nCaranya rajang 50 gram daun selasih lalu rendam sehari semalam. Saringlah kemudian tambah detergen dan aduk merata.\r\nSemprotkan cairan ini pada bagian tanaman setiap pagi atau sore hari', '2023-07-19 11:59:59', '2023-07-19 13:22:56'),
(7, 'HC0007', 'Antraknosa', 0.90, 'timbulnya Jamur Colletotrichum gloeosporioides (Penz.) sacc.', 'Pemangkasan ranting dan cabang yang mati. Penelitian buah dilakukan agak awal (sudah tua tapi belum matang). Dapat juga disemprot dengan fungisida yang berbahan aktif seperti pada Velimex 80 WP. Fungisida ini diberikan 2 minggu sebelum pemetikan dengan dosis 2-2,5 gram/liter.', '2023-07-19 12:01:04', '2023-07-19 13:23:37'),
(8, 'HC0008', 'Bercak daun', 0.80, 'karena ada cercospora purpurea Cke atau Pseudocercospora purpurea(Cke.) Deighton.', 'Penyemprotan fungisida Masalgin 50 WP yang mengandung benomyl, dengan dosis 1-2 gram/liter atau dapat juga dengan mengoleskan bubur Bordeaux.', '2023-07-19 12:01:26', '2023-07-19 13:24:16'),
(9, 'HC0009', 'Busuk buah', 0.70, 'Adanya jamur bernama Botryodiplodia theobromae pat. Yang menyerang saat permukaan buah memiliki luka.', 'Oleskan bubur Bordeaux/ semprotkan fungisida Velimex 80N WP yang berbahan aktif Zineb, dengan dosis 2-2,5 gram/liter.', '2023-07-19 12:01:46', '2023-07-19 13:24:53');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_04_05_020247_create_evidence_table', 1),
(15, '2023_04_05_021652_create_hypotheses_table', 1),
(16, '2023_04_05_034742_create_diagnoses_table', 1),
(17, '2023_04_05_040945_create_rules_table', 1),
(18, '2023_04_05_050709_create_settings_table', 1);

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
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evidence_id` bigint(20) UNSIGNED NOT NULL,
  `hypothesis_id` bigint(20) UNSIGNED NOT NULL,
  `weight` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `evidence_id`, `hypothesis_id`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.80, '2023-07-19 11:29:41', '2023-07-19 12:43:30'),
(2, 2, 1, 0.10, '2023-07-19 11:29:41', '2023-07-19 12:43:30'),
(3, 3, 1, 0.60, '2023-07-19 11:29:41', '2023-07-19 12:43:30'),
(4, 4, 1, 0.90, '2023-07-19 11:29:43', '2023-07-19 12:43:30'),
(5, 5, 1, 0.10, '2023-07-19 11:29:43', '2023-07-19 12:43:30'),
(6, 6, 1, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:43:30'),
(7, 7, 1, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:43:30'),
(8, 1, 2, 0.80, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(9, 2, 2, 0.60, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(10, 3, 2, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(11, 4, 2, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(12, 5, 2, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(13, 6, 2, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(14, 7, 2, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:45:59'),
(15, 1, 3, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:47:20'),
(16, 2, 3, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:47:21'),
(17, 3, 3, 0.10, '2023-07-19 11:29:44', '2023-07-19 12:47:21'),
(18, 4, 3, 0.90, '2023-07-19 11:29:44', '2023-07-19 12:47:21'),
(19, 5, 3, 0.60, '2023-07-19 11:29:45', '2023-07-19 12:47:21'),
(20, 6, 3, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:47:21'),
(21, 7, 3, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:47:21'),
(22, 1, 4, 0.80, '2023-07-19 11:29:45', '2023-07-19 12:48:07'),
(23, 2, 4, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:48:07'),
(24, 3, 4, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:48:07'),
(25, 4, 4, 0.90, '2023-07-19 11:29:45', '2023-07-19 12:48:07'),
(26, 5, 4, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:48:07'),
(27, 6, 4, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:48:08'),
(28, 7, 4, 0.10, '2023-07-19 11:29:45', '2023-07-19 12:48:08'),
(29, 8, 1, 0.10, '2023-07-19 11:53:47', '2023-07-19 11:53:47'),
(30, 8, 2, 0.10, '2023-07-19 11:53:47', '2023-07-19 11:53:47'),
(31, 8, 3, 0.10, '2023-07-19 11:53:47', '2023-07-19 11:53:47'),
(32, 8, 4, 0.10, '2023-07-19 11:53:47', '2023-07-19 11:53:47'),
(33, 9, 1, 0.90, '2023-07-19 11:54:01', '2023-07-19 12:43:30'),
(34, 9, 2, 0.10, '2023-07-19 11:54:01', '2023-07-19 11:54:01'),
(35, 9, 3, 0.10, '2023-07-19 11:54:01', '2023-07-19 11:54:01'),
(36, 9, 4, 0.10, '2023-07-19 11:54:01', '2023-07-19 11:54:01'),
(37, 10, 1, 0.10, '2023-07-19 11:54:17', '2023-07-19 11:54:17'),
(38, 10, 2, 0.10, '2023-07-19 11:54:17', '2023-07-19 11:54:17'),
(39, 10, 3, 0.80, '2023-07-19 11:54:17', '2023-07-19 12:47:21'),
(40, 10, 4, 0.80, '2023-07-19 11:54:17', '2023-07-19 12:48:08'),
(41, 11, 1, 0.10, '2023-07-19 11:54:33', '2023-07-19 11:54:33'),
(42, 11, 2, 0.10, '2023-07-19 11:54:33', '2023-07-19 11:54:33'),
(43, 11, 3, 0.10, '2023-07-19 11:54:33', '2023-07-19 11:54:33'),
(44, 11, 4, 0.10, '2023-07-19 11:54:33', '2023-07-19 11:54:33'),
(45, 12, 1, 0.10, '2023-07-19 11:54:51', '2023-07-19 11:54:51'),
(46, 12, 2, 0.10, '2023-07-19 11:54:51', '2023-07-19 11:54:51'),
(47, 12, 3, 0.10, '2023-07-19 11:54:51', '2023-07-19 11:54:51'),
(48, 12, 4, 0.10, '2023-07-19 11:54:51', '2023-07-19 11:54:51'),
(49, 13, 1, 0.10, '2023-07-19 11:55:07', '2023-07-19 11:55:07'),
(50, 13, 2, 0.10, '2023-07-19 11:55:07', '2023-07-19 11:55:07'),
(51, 13, 3, 0.60, '2023-07-19 11:55:07', '2023-07-19 12:47:21'),
(52, 13, 4, 0.10, '2023-07-19 11:55:07', '2023-07-19 11:55:07'),
(53, 14, 1, 0.10, '2023-07-19 11:55:23', '2023-07-19 11:55:23'),
(54, 14, 2, 0.80, '2023-07-19 11:55:23', '2023-07-19 12:45:59'),
(55, 14, 3, 0.10, '2023-07-19 11:55:23', '2023-07-19 11:55:23'),
(56, 14, 4, 0.10, '2023-07-19 11:55:23', '2023-07-19 11:55:23'),
(57, 15, 1, 0.10, '2023-07-19 11:55:43', '2023-07-19 11:55:43'),
(58, 15, 2, 0.10, '2023-07-19 11:55:43', '2023-07-19 11:55:43'),
(59, 15, 3, 0.10, '2023-07-19 11:55:43', '2023-07-19 11:55:43'),
(60, 15, 4, 0.10, '2023-07-19 11:55:43', '2023-07-19 11:55:43'),
(61, 1, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(62, 2, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(63, 3, 5, 0.60, '2023-07-19 11:59:39', '2023-07-19 12:49:03'),
(64, 4, 5, 0.90, '2023-07-19 11:59:39', '2023-07-19 12:49:03'),
(65, 5, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(66, 6, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(67, 7, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(68, 8, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(69, 9, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(70, 10, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(71, 11, 5, 0.60, '2023-07-19 11:59:39', '2023-07-19 12:49:03'),
(72, 12, 5, 0.60, '2023-07-19 11:59:39', '2023-07-19 12:49:03'),
(73, 13, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(74, 14, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(75, 15, 5, 0.10, '2023-07-19 11:59:39', '2023-07-19 11:59:39'),
(76, 1, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(77, 2, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(78, 3, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(79, 4, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(80, 5, 6, 0.60, '2023-07-19 11:59:59', '2023-07-19 12:49:51'),
(81, 6, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(82, 7, 6, 0.90, '2023-07-19 11:59:59', '2023-07-19 12:49:51'),
(83, 8, 6, 0.60, '2023-07-19 11:59:59', '2023-07-19 12:49:51'),
(84, 9, 6, 0.10, '2023-07-19 11:59:59', '2023-07-19 11:59:59'),
(85, 10, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(86, 11, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(87, 12, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(88, 13, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(89, 14, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(90, 15, 6, 0.10, '2023-07-19 12:00:00', '2023-07-19 12:00:00'),
(91, 1, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(92, 2, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(93, 3, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(94, 4, 7, 0.90, '2023-07-19 12:01:04', '2023-07-19 12:50:23'),
(95, 5, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(96, 6, 7, 0.90, '2023-07-19 12:01:04', '2023-07-19 12:50:23'),
(97, 7, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(98, 8, 7, 0.10, '2023-07-19 12:01:04', '2023-07-19 12:01:04'),
(99, 9, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(100, 10, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(101, 11, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(102, 12, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(103, 13, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(104, 14, 7, 0.10, '2023-07-19 12:01:05', '2023-07-19 12:01:05'),
(105, 15, 7, 1.00, '2023-07-19 12:01:05', '2023-07-19 12:50:23'),
(106, 1, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(107, 2, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(108, 3, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(109, 4, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(110, 5, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(111, 6, 8, 0.90, '2023-07-19 12:01:26', '2023-07-19 12:50:56'),
(112, 7, 8, 0.90, '2023-07-19 12:01:26', '2023-07-19 12:50:56'),
(113, 8, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(114, 9, 8, 0.10, '2023-07-19 12:01:26', '2023-07-19 12:01:26'),
(115, 10, 8, 0.10, '2023-07-19 12:01:27', '2023-07-19 12:01:27'),
(116, 11, 8, 0.10, '2023-07-19 12:01:27', '2023-07-19 12:01:27'),
(117, 12, 8, 0.10, '2023-07-19 12:01:27', '2023-07-19 12:01:27'),
(118, 13, 8, 0.10, '2023-07-19 12:01:27', '2023-07-19 12:01:27'),
(119, 14, 8, 0.80, '2023-07-19 12:01:27', '2023-07-19 12:50:56'),
(120, 15, 8, 0.10, '2023-07-19 12:01:27', '2023-07-19 12:01:27'),
(121, 1, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(122, 2, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(123, 3, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(124, 4, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(125, 5, 9, 0.60, '2023-07-19 12:01:47', '2023-07-19 12:51:20'),
(126, 6, 9, 0.90, '2023-07-19 12:01:47', '2023-07-19 12:51:21'),
(127, 7, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(128, 8, 9, 0.60, '2023-07-19 12:01:47', '2023-07-19 12:51:21'),
(129, 9, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(130, 10, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(131, 11, 9, 0.10, '2023-07-19 12:01:47', '2023-07-19 12:01:47'),
(132, 12, 9, 0.10, '2023-07-19 12:01:48', '2023-07-19 12:01:48'),
(133, 13, 9, 0.10, '2023-07-19 12:01:48', '2023-07-19 12:01:48'),
(134, 14, 9, 0.10, '2023-07-19 12:01:48', '2023-07-19 12:01:48'),
(135, 15, 9, 0.10, '2023-07-19 12:01:48', '2023-07-19 12:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `component`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Sistem Pakar Penyakit', '2023-07-19 11:29:45', '2023-07-19 11:29:45'),
(2, 'description', '\n            Sistem pakar adalah sistem komputer yang dirancang untuk menyelesaikan masalah atau memberikan solusi yang rumit dengan cara mengaplikasikan pengetahuan dari seorang ahli dalam bidang tertentu. Sistem pakar memanfaatkan berbagai macam metode untuk menghasilkan solusi yang tepat dan efektif. Salah satu metode yang sering digunakan dalam sistem pakar adalah metode teorema Bayes.\n            Metode teorema Bayes digunakan untuk menghitung probabilitas kejadian suatu peristiwa berdasarkan kondisi awal atau informasi sebelumnya. Dalam sistem pakar, teorema Bayes digunakan untuk mengambil keputusan atau memberikan rekomendasi dengan mempertimbangkan informasi awal atau kondisi sebelumnya.\n            Contoh penerapan metode teorema Bayes dalam sistem pakar adalah dalam bidang kesehatan. Seorang ahli medis dapat memanfaatkan metode ini untuk mendiagnosis suatu penyakit berdasarkan gejala dan kondisi pasien. Dalam hal ini, informasi awal atau kondisi sebelumnya adalah gejala yang dialami oleh pasien, sedangkan kejadian yang ingin diketahui probabilitasnya adalah apakah pasien tersebut menderita penyakit tertentu atau tidak.\n        ', '2023-07-19 11:29:45', '2023-07-19 11:29:45'),
(3, 'evidence', 'Gejala', '2023-07-19 11:29:46', '2023-07-19 11:29:46'),
(4, 'hypothesis', 'Penyakit', '2023-07-19 11:29:46', '2023-07-19 11:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$lqzrgxdQnc9UMWnosK9p8uz25BAVsLnhvwB2K39WOnrlIpp5VS5LK', 'admin', NULL, NULL, '2023-07-19 11:29:34', '2023-07-19 11:29:34'),
(2, 'user', 'user@mail.com', '$2y$10$4BX1PZfL2cxNvPubWjHfKuVCaqgirdN9R6v5RRl0aSBL7prCksBtO', 'user', NULL, NULL, '2023-07-19 11:29:35', '2023-07-19 11:29:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnoses_hypothesis_id_foreign` (`hypothesis_id`);

--
-- Indexes for table `evidence`
--
ALTER TABLE `evidence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hypotheses`
--
ALTER TABLE `hypotheses`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_evidence_id_foreign` (`evidence_id`),
  ADD KEY `rules_hypothesis_id_foreign` (`hypothesis_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `evidence`
--
ALTER TABLE `evidence`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hypotheses`
--
ALTER TABLE `hypotheses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_hypothesis_id_foreign` FOREIGN KEY (`hypothesis_id`) REFERENCES `hypotheses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rules`
--
ALTER TABLE `rules`
  ADD CONSTRAINT `rules_evidence_id_foreign` FOREIGN KEY (`evidence_id`) REFERENCES `evidence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rules_hypothesis_id_foreign` FOREIGN KEY (`hypothesis_id`) REFERENCES `hypotheses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
