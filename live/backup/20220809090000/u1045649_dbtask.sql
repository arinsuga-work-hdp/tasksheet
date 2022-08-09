-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2022 at 08:40 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1045649_dbtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activitytype_id` int(11) DEFAULT NULL,
  `activitysubtype_id` int(11) DEFAULT NULL,
  `activitystatus_id` int(11) DEFAULT NULL,
  `tasktype_id` int(11) DEFAULT NULL,
  `tasksubtype1_id` int(11) DEFAULT NULL,
  `tasksubtype2_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdt` datetime DEFAULT NULL,
  `enddt` datetime DEFAULT NULL,
  `targetdt` datetime DEFAULT NULL,
  `enduser_id` bigint(20) DEFAULT NULL,
  `enduserdept_id` bigint(20) DEFAULT NULL,
  `endusersubdept_id` bigint(20) DEFAULT NULL,
  `technician_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `activitytype_id`, `activitysubtype_id`, `activitystatus_id`, `tasktype_id`, `tasksubtype1_id`, `tasksubtype2_id`, `name`, `subject`, `description`, `resolution`, `image`, `startdt`, `enddt`, `targetdt`, `enduser_id`, `enduserdept_id`, `endusersubdept_id`, `technician_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 1, 1, 2, 2, 4, 4, NULL, 'Tambah member email Pltu Suralaya', 'Masukan Wica, Eko dan Wira Int untuk proyek pltu', 'Sudah ditambahkan ke email group pltu_suralaya@hadiprana.co.id', NULL, '2022-05-12 08:36:36', '2022-05-12 09:35:01', NULL, 2, 9, 9, 6, '2022-05-12 01:36:36', '2022-05-12 02:35:01', '', ''),
(3, 1, 1, 2, 9, 33, 20, NULL, 'Akses File Server Perencanaan', 'Akses untuk Rizal dan Abdurahman ke RT. Pak Martin', 'Sudah ditambahkan ke file perencanaan RT Martin dan email group mwresidence@hadiprana.co.id', NULL, '2022-05-12 09:54:55', '2022-05-12 10:03:23', NULL, 3, 9, 9, 6, '2022-05-12 02:54:55', '2022-05-12 03:03:23', '', ''),
(4, 2, 4, 2, 15, NULL, NULL, NULL, 'Pergantiaan Access Point Ruang Meeting', 'Mengganti wifi ruang meeting founder', 'ok', NULL, '2022-05-12 11:17:34', '2022-05-12 14:38:43', NULL, NULL, NULL, NULL, 9, '2022-05-12 04:17:34', '2022-05-12 07:38:43', '', ''),
(5, 1, 1, 2, 3, 9, 9, NULL, 'Ganti Monitor', 'Ganti Monitor lama', 'Sudah diganti dengan monitor baru', NULL, '2022-05-12 14:44:18', '2022-05-12 14:45:01', NULL, 2, 9, 9, 9, '2022-05-12 07:44:18', '2022-05-12 07:45:01', NULL, NULL),
(8, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network - OK', NULL, '2022-05-13 08:46:10', '2022-05-13 09:36:13', NULL, NULL, NULL, NULL, 9, '2022-05-13 01:46:10', '2022-05-13 02:36:13', NULL, NULL),
(9, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Proyek Handoyo Denpasar 85', 'Buka Akses Proyek Handoyo Denpasar 85 untuk Agus B', 'Buka Akses Proyek RT. Handoyo Denpasar 85 untuk Agus B', NULL, '2022-05-13 09:30:27', '2022-05-13 09:34:06', NULL, 9, 9, 9, 6, '2022-05-13 02:30:27', '2022-05-13 02:34:06', NULL, NULL),
(10, 2, 3, 2, 23, NULL, NULL, NULL, 'Update data Sparepart', 'Update serah terima data sparepart', 'Update sampai dengan 13 may 2022', NULL, '2022-05-13 09:31:34', '2022-05-13 13:20:08', NULL, NULL, NULL, NULL, 6, '2022-05-13 02:31:35', '2022-05-13 06:20:08', NULL, NULL),
(11, 1, 2, 2, 3, 9, 8, NULL, 'Monitor tidak menyala', 'Monitor tidak menyala', 'Kencangkan kabel power', NULL, '2022-05-13 12:43:12', '2022-05-13 12:50:55', NULL, 8, 10, 13, 9, '2022-05-13 05:43:12', '2022-05-13 05:50:55', NULL, NULL),
(12, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network - OK', NULL, '2022-05-17 08:52:43', '2022-05-17 10:28:57', NULL, NULL, NULL, NULL, 9, '2022-05-17 01:52:43', '2022-05-17 03:28:57', NULL, NULL),
(13, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login Domain', 'Rubah jam ke jam server', NULL, '2022-05-17 09:18:19', '2022-05-17 09:22:20', NULL, 18, 4, 4, 9, '2022-05-17 02:18:19', '2022-05-17 02:22:20', NULL, NULL),
(14, 1, 1, 2, 3, 9, 9, NULL, 'Ganti Monitor Lenovo Thinkvision T24v-20', 'Ganti Monitor LG yang lama dengan yang baru', 'Monitor Lenovo Thinkvision T24v-20 integrated dengan camera webcame untuk zoom', NULL, '2022-05-17 09:28:06', '2022-05-17 09:29:28', NULL, 2, 9, 9, 7, '2022-05-17 02:28:06', '2022-05-17 02:29:28', NULL, NULL),
(15, 1, 1, 2, 3, 9, 8, NULL, 'Menambahkan monitor lain ke PC jadi dual monitor', 'Menambahkan monitor lain ke PC jadi dual monitor, karena mendukung pekerjaan landscape', 'Menambahkan monitor lain ke PC jadi dual monitor, dengan menambahkan converter HDMI to VGA, karena mendukung pekerjaan landscape', NULL, '2022-05-17 09:32:20', '2022-05-17 09:39:19', NULL, 19, 9, 9, 7, '2022-05-17 02:32:20', '2022-05-17 02:39:19', NULL, NULL),
(16, 2, 3, 2, 24, NULL, NULL, NULL, 'UAT Aplikasi task', 'Daily UAT aplikasi task.hadipranadesign.com', 'terlampir dalam file Onedrive Coordinator hadiprana', NULL, '2022-05-17 09:33:20', '2022-05-17 13:22:09', NULL, NULL, NULL, NULL, 6, '2022-05-17 02:33:20', '2022-05-17 06:22:09', NULL, NULL),
(17, 1, 2, 2, 10, 35, NULL, NULL, 'Adobe Pro', 'Adobe pro belum aktif menurut user', 'Harus disign ulang \r\nusername : ika@hadiprana.co.id\r\nPassword : #A********12*', NULL, '2022-05-17 10:48:12', '2022-05-17 11:02:53', NULL, 20, 4, 4, 6, '2022-05-17 03:48:12', '2022-05-17 04:02:53', NULL, NULL),
(18, 1, 2, 2, 4, 17, NULL, NULL, 'Tidak bisa Login Domain', 'Trust Relationship to Domain Failed', 'Join Domain Ulang', NULL, '2022-05-17 10:49:00', '2022-05-17 10:56:09', NULL, 11, 9, 10, 9, '2022-05-17 03:49:00', '2022-05-17 03:56:09', NULL, NULL),
(19, 1, 1, 2, 2, 3, NULL, NULL, 'Password', 'Request password email andhika_perdana@hadiprana.co.id', 'sudah diberikan password sesuai data IT', NULL, '2022-05-17 13:30:35', '2022-05-17 13:35:16', NULL, 1, 9, 9, 6, '2022-05-17 06:30:35', '2022-05-17 06:35:16', NULL, NULL),
(20, 1, 1, 2, 10, 37, 41, NULL, 'Setting Classic', 'Setting tampilan classic', 'repair profil autocad classic', NULL, '2022-05-17 13:45:39', '2022-05-17 13:53:25', NULL, 1, 9, 9, 6, '2022-05-17 06:45:39', '2022-05-17 06:53:25', NULL, NULL),
(21, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Server & Network-OK', NULL, '2022-05-18 08:54:17', '2022-05-18 10:51:32', NULL, NULL, NULL, NULL, 9, '2022-05-18 01:54:17', '2022-05-18 03:51:32', NULL, NULL),
(22, 1, 1, 2, 5, 22, NULL, NULL, 'Setting LAN Laptop Untuk Zoom', 'Setting LAN Laptop Untuk Zoom di ruang meeting Interior', 'Setting IP IT di laptop', NULL, '2022-05-18 09:25:53', '2022-05-18 09:33:19', NULL, 22, 9, 10, 6, '2022-05-18 02:25:53', '2022-05-18 02:33:19', NULL, NULL),
(23, 2, 3, 2, 15, NULL, NULL, NULL, 'Cek CCTV', 'Cek CCTV', 'CCTV - OK', NULL, '2022-05-18 09:40:00', '2022-05-18 10:51:12', NULL, NULL, NULL, NULL, 9, '2022-05-18 02:40:00', '2022-05-18 03:51:12', NULL, NULL),
(24, 1, 2, 2, 10, 34, 22, NULL, 'File MAX sangat lambat untuk dibuka', 'File MAX sangat lambat untuk dibuka', 'Upgrade Max 2021 ke Max 2023 bersama dengan vray nya', NULL, '2022-05-18 12:57:15', '2022-05-18 13:16:39', NULL, 24, 3, 3, 7, '2022-05-18 05:57:15', '2022-05-18 06:16:39', NULL, NULL),
(25, 1, 1, 2, 3, 9, 8, NULL, 'Ganti monitor rusak dengan monitor backup', 'Ganti monitor rusak dengan monitor backup', 'Ganti monitor rusak dengan monitor backup', NULL, '2022-05-18 12:59:00', '2022-05-18 13:12:52', NULL, 4, 8, 8, 7, '2022-05-18 05:59:00', '2022-05-18 06:12:52', NULL, NULL),
(26, 1, 2, 2, 10, 37, 41, NULL, 'Autocad Architechture 2010 tidak bisa digunakan', 'Autocad Architechture 2010 tidak bisa digunakan, butuh aktivasi ulang', 'Klik aktivasi, dan buka cad kembali', NULL, '2022-05-18 13:04:00', '2022-05-18 13:13:29', NULL, 25, 9, 10, 7, '2022-05-18 06:04:00', '2022-05-18 06:13:29', NULL, NULL),
(27, 1, 1, 2, 10, 37, 41, NULL, 'Autocad Architecture 2022 tidak bisa di buka', 'Autocad Architecture 2022 tidak bisa di buka, minta aktivasi', 'Masukan login cad4@hadiprana.co.id dan passwordnya, lalu klik sign in, dan buka cad 2022 kembali', NULL, '2022-05-18 13:08:21', '2022-05-18 13:16:00', NULL, 26, 9, 9, 7, '2022-05-18 06:08:21', '2022-05-18 06:16:00', NULL, NULL),
(28, 1, 2, 2, 5, 21, NULL, NULL, 'Tidak bisa inet di Jadwal Drafter', 'Tidak bisa inet di Jadwal Drafter', 'Setting jam hillstone dengan jam DC server', NULL, '2022-05-18 13:08:31', '2022-05-18 13:28:56', NULL, 27, 9, 9, 9, '2022-05-18 06:08:31', '2022-05-18 06:28:56', NULL, NULL),
(29, 1, 1, 2, 10, 40, 33, NULL, 'Upgrade Office 2007 ke 2010', 'Upgrade Office 2007 ke 2010', 'Upgrade Office 2007 ke 2010', NULL, '2022-05-18 14:05:13', '2022-05-18 14:22:24', NULL, 8, 10, 13, 9, '2022-05-18 07:05:14', '2022-05-18 07:22:24', NULL, NULL),
(30, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network - OK', NULL, '2022-05-19 08:43:48', '2022-05-19 11:01:10', NULL, NULL, NULL, NULL, 9, '2022-05-19 01:43:48', '2022-05-19 04:01:10', NULL, NULL),
(31, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa copy file menggunakan Wifi', 'Tidak bisa copy file menggunakan Wifi', 'Disable Enable WIFI Adapter', NULL, '2022-05-19 09:12:01', '2022-05-19 09:16:23', NULL, 28, 9, 10, 6, '2022-05-19 02:12:01', '2022-05-19 02:16:23', NULL, NULL),
(32, 1, 2, 2, 6, NULL, NULL, NULL, 'Tidak bisa Buka WA WEB', 'Tidak bisa Buka WA WEB', 'Install Google Chrome', NULL, '2022-05-19 11:04:17', '2022-05-19 11:18:57', NULL, 29, 6, 6, 9, '2022-05-19 04:04:17', '2022-05-19 04:18:57', NULL, NULL),
(33, 1, 2, 2, 10, 43, NULL, NULL, 'Nitro PDF tidak bisa dibuka', 'Nitro PDF tidak bisa dibuka', 'Restart PC', NULL, '2022-05-19 14:01:51', '2022-05-19 14:16:32', NULL, 30, 9, 9, 6, '2022-05-19 07:01:51', '2022-05-19 07:16:32', NULL, NULL),
(34, 1, 1, 2, 10, 43, NULL, NULL, 'Install Aplikasi', 'Install Adobe Photoshop 2020, Office 2010, Sketchup Pro 2020, Gstarcad 2016, Setting Printer, Setting Email dan Import Email Lama, setting Map File Server Artwork,', 'Install Adobe Photoshop 2020, Office 2010, Sketchup Pro 2020, Gstarcad 2016, Setting Printer, Setting Email dan Import Email Lama, setting Map File Server Artwork,', NULL, '2022-05-19 14:11:50', '2022-05-19 14:26:17', NULL, 31, 4, 4, 7, '2022-05-19 07:11:50', '2022-05-19 07:26:17', NULL, NULL),
(35, 1, 1, 2, 10, 44, NULL, NULL, 'Install Nitro PDF 8', 'Install Nitro PDF 8', 'Install Nitro PDF 8', NULL, '2022-05-19 14:12:37', '2022-05-19 14:26:35', NULL, 18, 4, 4, 7, '2022-05-19 07:12:37', '2022-05-19 07:26:35', NULL, NULL),
(37, 1, 1, 2, 10, 40, 31, NULL, 'Aktivasi Office 365', 'Aktivasi Office 365', 'Aktivasi Office 365, assign akun art09@hadiprana.onmicrosoft.com', NULL, '2022-05-19 14:17:22', '2022-05-19 14:31:44', NULL, 33, 4, 4, 7, '2022-05-19 07:17:22', '2022-05-19 07:31:44', NULL, NULL),
(38, 1, 1, 2, 10, 40, 31, NULL, 'Aktivasi Office 365', 'Aktivasi Office 365', 'Aktivasi Office 365, assign akun art10@hadiprana.onmicrosoft.com ke office.com', NULL, '2022-05-19 14:19:06', '2022-05-19 14:35:32', NULL, 34, 4, 4, 7, '2022-05-19 07:19:06', '2022-05-19 07:35:32', NULL, NULL),
(39, 1, 1, 2, 10, 34, 21, NULL, 'Upgrade MAX dari 2021 ke MAX 2023', 'Upgrade MAX dari 2021 ke MAX 2023, dan Vray 2021 ke Vray 2023', 'Upgrade MAX dari 2021 ke MAX 2023, dan Vray 2021 ke Vray 2023, download dari Autodesk.com', NULL, '2022-05-19 14:24:22', '2022-05-19 14:32:22', NULL, 23, 3, 3, 7, '2022-05-19 07:24:22', '2022-05-19 07:32:22', NULL, NULL),
(40, 1, 2, 2, 7, 26, NULL, NULL, 'Printer tidak bisa mencetak normal', 'Printer tidak bisa mencetak normal, sering nyangkut, hasil cetakan ada garis kuning dan biru', 'Sudah ditangani teknis astragraphia Pak Asep dan Pak Hadi, dengan mengganti IBT dan Clutch Assy, R1 dan R2 Drum, test print kembali dan hasil sudah sesuai', NULL, '2022-05-19 14:39:15', '2022-05-19 14:40:18', NULL, 32, 3, 3, 7, '2022-05-19 07:39:15', '2022-05-19 07:40:18', NULL, NULL),
(41, 1, 2, 2, 3, 9, 9, NULL, 'Monitor Bergaris dan buram', 'Monitor Bergaris dan buram', 'Ganti Dengan Monitor Sebelah Trias (Monitor Exist diService )', NULL, '2022-05-19 14:48:06', '2022-05-19 14:51:23', NULL, 35, 3, 3, 9, '2022-05-19 07:48:06', '2022-05-19 07:51:23', NULL, NULL),
(42, 1, 1, 2, 2, 1, NULL, NULL, 'Buat Email Baru', 'Buat Email baru', 'Add Email febrian@hadiprana.co.id di Mail Server', NULL, '2022-05-19 14:48:43', '2022-05-19 14:51:46', NULL, 33, 4, 4, 9, '2022-05-19 07:48:43', '2022-05-19 07:51:46', NULL, NULL),
(43, 1, 1, 2, 2, 2, 1, NULL, 'Setting Email di PC', 'setting email febrian@hadiprana.co.id di PC', 'setting email febrian@hadiprana.co.id di PC', NULL, '2022-05-19 14:56:27', '2022-05-19 15:03:25', NULL, 33, 4, 4, 9, '2022-05-19 07:56:27', '2022-05-19 08:03:25', NULL, NULL),
(44, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop Artwork di Ruang Meeting Founder', 'Setting laptop Artwork di Ruang Meeting Founder untuk Meeting Bu Ika', 'Setting laptop Artwork di Ruang Meeting Founder untuk Meeting Bu Ika', NULL, '2022-05-20 08:17:45', '2022-05-20 08:29:47', NULL, 36, 4, 4, 9, '2022-05-20 01:17:45', '2022-05-20 01:29:47', NULL, NULL),
(45, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network - OK', NULL, '2022-05-20 08:18:09', '2022-05-20 10:28:44', NULL, NULL, NULL, NULL, 9, '2022-05-20 01:18:09', '2022-05-20 03:28:44', NULL, NULL),
(46, 1, 1, 2, 6, 59, 45, NULL, 'Restore data Proyek RT. Ibu Nadhira Pejaten', 'Restore data Proyek RT. Ibu Nadhira Pejaten', 'Restore data Proyek RT. Ibu Nadhira Pejaten', NULL, '2022-05-20 08:51:38', '2022-05-20 08:57:43', NULL, 37, 9, 9, 9, '2022-05-20 01:51:38', '2022-05-20 01:57:43', NULL, NULL),
(47, 2, 3, 2, 24, NULL, NULL, NULL, 'UAT Aplikasi task', 'UAT aplikasi task', 'Tambahan beberapa point pada cloud Coordinator Hadiprana', NULL, '2022-05-20 09:02:24', '2022-05-20 14:33:37', NULL, NULL, NULL, NULL, 6, '2022-05-20 02:02:24', '2022-05-20 07:33:37', NULL, NULL),
(48, 1, 1, 2, 6, 59, 45, NULL, 'Restore Data Proyek Ibu Mia Fatmawati', 'Restore Data Proyek Ibu Mia Fatmawati', 'Restore Data Proyek Ibu Mia Fatmawati', NULL, '2022-05-20 09:19:00', '2022-05-20 09:23:43', NULL, 38, 9, 9, 9, '2022-05-20 02:19:00', '2022-05-20 02:23:43', NULL, NULL),
(49, 2, 4, 2, 15, NULL, NULL, NULL, 'Pemasangan Router WIFI di Ruang Meeting Bulat', 'Pemasangan Router WIFI Asus RT-AX55 di Ruang Meeting Bulat', 'Pemasangan Router WIFI Asus RT-AX55 di Ruang Meeting Bulat', NULL, '2022-05-20 10:28:27', '2022-05-23 09:08:42', NULL, NULL, NULL, NULL, 9, '2022-05-20 03:28:27', '2022-05-23 02:08:42', NULL, NULL),
(50, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Proyek RT Hans PIK', 'Buka Akses Proyek RT Hans PIK', 'Buka Akses Proyek RT Hans PIK', NULL, '2022-05-20 10:53:45', '2022-05-20 11:06:30', NULL, 27, 9, 9, 9, '2022-05-20 03:53:45', '2022-05-20 04:06:30', NULL, NULL),
(51, 1, 1, 2, 10, 38, 29, NULL, 'Install Google Chrome', 'Install Google Chrome', 'Install Google Chrome', NULL, '2022-05-20 11:07:52', '2022-05-20 11:12:52', NULL, 39, 9, 9, 9, '2022-05-20 04:07:52', '2022-05-20 04:12:52', NULL, NULL),
(52, 1, 1, 2, 10, 39, NULL, NULL, 'Upgrade Gstarcad 2022', 'Upgrade Gstarcad 2022', 'Upgrade Gstarcad 2022', NULL, '2022-05-20 15:16:31', '2022-05-20 15:17:04', NULL, 40, 4, 4, 7, '2022-05-20 08:16:31', '2022-05-20 08:17:04', NULL, NULL),
(53, 1, 1, 2, 10, 39, NULL, NULL, 'Upgrade Gstarcad 2022', 'Upgrade Gstarcad 2022', 'Upgrade Gstarcad 2022', NULL, '2022-05-20 15:17:47', '2022-05-20 15:18:05', NULL, 18, 4, 4, 7, '2022-05-20 08:17:47', '2022-05-20 08:18:05', NULL, NULL),
(54, 1, 1, 2, 10, 44, NULL, NULL, 'Install Nitro PDF 8', 'Install Nitro PDF 8', 'Install Nitro PDF 8', NULL, '2022-05-20 15:20:11', '2022-05-20 15:20:26', NULL, 41, 3, 3, 7, '2022-05-20 08:20:11', '2022-05-20 08:20:26', NULL, NULL),
(55, 1, 2, 2, 5, 22, NULL, NULL, 'Mesin Absensi Bawah Tidak bisa tarik data', 'Mesin Absensi Bawah Tidak bisa tarik data ( communication failure )', 'Cek Kabel LAN', NULL, '2022-05-23 09:03:14', '2022-05-23 09:42:12', NULL, 4, 8, 8, 9, '2022-05-23 02:03:14', '2022-05-23 02:42:12', NULL, NULL),
(56, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', NULL, '2022-05-23 09:09:07', '2022-05-23 11:14:55', NULL, NULL, NULL, NULL, 9, '2022-05-23 02:09:07', '2022-05-23 04:14:55', NULL, NULL),
(57, 2, 3, 2, 24, NULL, NULL, NULL, 'Review UAT Aplikasi task', 'review lanjutan', 'Penambahan Dashboard pada aplikasi task dengan modul  \r\n-Open Ticket \r\n-Absen\r\n-My Task\r\n-Bar Chart \r\n- Pie Chart\r\n- Project/Action Plan', NULL, '2022-05-23 09:24:50', '2022-05-23 13:38:40', NULL, NULL, NULL, NULL, 6, '2022-05-23 02:24:50', '2022-05-23 06:38:40', NULL, NULL),
(58, 1, 1, 2, 10, 60, 46, NULL, 'Install Aplikasi Winrar', 'Install permintaan user aplikasi winrar', 'Telah diinstall aplikasi winrar 5 karena dengan 7zip tidak bisa', NULL, '2022-05-23 09:37:33', '2022-05-23 09:46:27', NULL, 42, 9, 9, 6, '2022-05-23 02:37:33', '2022-05-23 02:46:27', NULL, NULL),
(59, 1, 1, 2, 4, 17, NULL, NULL, 'Buat Login User baru', 'Buat Login User baru Badzlina Taradipa', 'Buat Login User baru Badzlina Taradipa', NULL, '2022-05-23 09:42:55', '2022-05-23 09:50:00', NULL, 36, 4, 4, 9, '2022-05-23 02:42:55', '2022-05-23 02:50:00', NULL, NULL),
(60, 1, 1, 2, 2, 1, NULL, NULL, 'Buat Email User baru', 'Buat Email User baru badzlinatara@hadiprana.co.id', 'Buat Email User baru badzlinatara@hadiprana.co.id', NULL, '2022-05-23 09:43:30', '2022-05-23 09:50:20', NULL, 36, 4, 4, 6, '2022-05-23 02:43:30', '2022-05-23 02:50:20', NULL, NULL),
(61, 1, 2, 2, 10, 40, NULL, NULL, 'Tidak bisa buka double excel', 'Tidak bisa buka double excel', 'setting view di ms excel', NULL, '2022-05-23 10:37:58', '2022-05-23 10:59:13', NULL, 43, 6, 6, 6, '2022-05-23 03:37:58', '2022-05-23 03:59:13', NULL, NULL),
(62, 1, 2, 2, 10, 48, NULL, NULL, 'Error Sketchup Unsupported Graphic', 'Error Sketchup Unsupported Graphic', 'Reinstal Driver VGA', NULL, '2022-05-23 14:47:39', '2022-05-23 15:09:58', NULL, 44, 9, 9, 9, '2022-05-23 07:47:39', '2022-05-23 08:09:58', NULL, NULL),
(63, 3, NULL, 2, 17, 61, NULL, NULL, 'Report dipisah antara Support/project/maintenance', 'Pemisahan data report yang ditampilkan dengan menu terpisah dan data sesuai menu report yang dipilih', 'Perbaikan pada view blade untuk support, maintenance dan project', NULL, '2022-05-23 15:06:50', '2022-05-24 13:23:46', NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:06:50', '2022-05-24 06:23:46', NULL, NULL),
(64, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop di ruang meeting Postmo', 'Setting laptop di ruang meeting Postmo untuk Zoom', 'Setting laptop di ruang meeting Postmo untuk Zoom', NULL, '2022-05-24 09:58:07', '2022-05-24 10:09:17', NULL, 7, 10, 13, 9, '2022-05-24 02:58:07', '2022-05-24 03:09:17', NULL, NULL),
(65, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', NULL, '2022-05-24 09:58:33', '2022-05-24 11:49:52', NULL, NULL, NULL, NULL, 9, '2022-05-24 02:58:33', '2022-05-24 04:49:52', NULL, NULL),
(66, 1, 1, 2, 10, 45, NULL, NULL, 'Install Adobe Photoshop 2022', 'Install Adobe Photoshop 2022', 'Uninstall Adobe Photoshop Lama dan Install Adobe Photoshop 2022', NULL, '2022-05-24 11:25:01', '2022-05-24 11:27:01', NULL, 31, 4, 4, 7, '2022-05-24 04:25:01', '2022-05-24 04:27:01', NULL, NULL),
(67, 1, 1, 2, 1, NULL, NULL, NULL, 'Tidak bisa masuk ke windows', 'Tidak bisa masuk ke windows', 'Join domain ulang ke hadipranasvr', NULL, '2022-05-24 11:26:12', '2022-05-24 11:26:32', NULL, 34, 4, 4, 7, '2022-05-24 04:26:12', '2022-05-24 04:26:32', NULL, NULL),
(68, 1, 1, 2, 10, 40, 31, NULL, 'Install Ms Project', 'Install Microsoft Project', 'Install Microsoft Project 2007', NULL, '2022-05-24 11:49:35', '2022-05-24 13:00:43', NULL, 45, 9, 10, 9, '2022-05-24 04:49:35', '2022-05-24 06:00:43', NULL, NULL),
(69, 1, 1, 2, 10, 45, NULL, NULL, 'Activasi Photoshop', 'Aktivasi photoshop', 'Sudah dilakukan aktivasi untuk user Fianita dan Herman menggunakan email fianita@hadiprana.co.id dan herman@hadiprana.co.id', NULL, '2022-05-24 13:03:43', '2022-05-24 13:52:34', NULL, 31, 4, 4, 6, '2022-05-24 06:03:43', '2022-05-24 06:52:34', NULL, NULL),
(70, 3, NULL, 2, 17, 61, NULL, NULL, 'Content dropdown project', 'Content dropdown project belum sesuai dengan dropdown jenis project', 'Selesai development siap di upload ke hosting.', NULL, '2022-05-24 13:24:25', '2022-05-24 13:59:32', NULL, NULL, NULL, NULL, NULL, '2022-05-24 06:24:25', '2022-05-24 06:59:32', NULL, NULL),
(71, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', NULL, '2022-05-25 09:05:34', '2022-05-25 11:01:25', NULL, NULL, NULL, NULL, 9, '2022-05-25 02:05:34', '2022-05-25 04:01:25', NULL, NULL),
(72, 1, 2, 2, 5, 22, NULL, NULL, 'Mesin Absensi Bawah tidak Connect', 'Mesin Absensi Bawah tidak Connect', 'Ganti kabel LAN', NULL, '2022-05-25 09:06:05', '2022-05-25 09:16:23', NULL, 4, 8, 8, 9, '2022-05-25 02:06:05', '2022-05-25 02:16:23', NULL, NULL),
(73, 1, 2, 2, 10, 43, NULL, NULL, 'Tampilan Anydesk menumpuk', 'Tampilan Anydesk menumpuk', 'close window anydesk di pc yang diremote', NULL, '2022-05-25 15:27:01', '2022-05-25 16:10:17', NULL, 46, 9, 10, 9, '2022-05-25 08:27:01', '2022-05-25 09:10:17', NULL, NULL),
(74, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', NULL, '2022-05-27 08:51:39', '2022-05-30 09:53:25', NULL, NULL, NULL, NULL, 9, '2022-05-27 01:51:39', '2022-05-30 02:53:25', NULL, NULL),
(75, 1, 2, 2, 5, 21, NULL, NULL, 'Laptop tidak bisa internet', 'Laptop tidak bisa internet', 'Matikan Airplane Mode', NULL, '2022-05-27 09:17:53', '2022-05-27 09:31:04', NULL, 43, 6, 6, 9, '2022-05-27 02:17:53', '2022-05-27 02:31:04', NULL, NULL),
(76, 2, 3, 2, 12, NULL, NULL, NULL, 'Delete Log dan Restart Server Zentyal AD', 'Delete Log dan Restart Server Zentyal AD', 'Delete Log dan Restart Server Zentyal AD', NULL, '2022-05-27 09:18:52', '2022-05-27 09:30:46', NULL, NULL, NULL, NULL, 9, '2022-05-27 02:18:52', '2022-05-27 02:30:46', NULL, NULL),
(77, 1, 1, 2, 3, 58, 43, NULL, 'Setting Laptop dan Kamera untuk Zoom di Ruang Meeting Interior', 'Setting Laptop dan Kamera untuk Zoom di Ruang Meeting Interior', 'Setting Laptop dan Kamera untuk Zoom di Ruang Meeting Interior', NULL, '2022-05-27 09:44:16', '2022-05-27 10:25:25', NULL, 47, 9, 10, 9, '2022-05-27 02:44:16', '2022-05-27 03:25:25', NULL, NULL),
(78, 1, 2, 2, 3, 8, NULL, NULL, 'PC Lambat Response', 'PC Lambat Response', 'Stop service indexing windows', NULL, '2022-05-27 10:36:45', '2022-05-27 10:54:20', NULL, 37, 9, 9, 9, '2022-05-27 03:36:45', '2022-05-27 03:54:20', NULL, NULL),
(79, 1, 1, 2, 10, 48, 37, NULL, 'Install Sketchup 2020', 'Install Sketchup 2020', 'Install Sketchup 2020', NULL, '2022-05-27 11:00:03', '2022-05-27 11:11:12', NULL, 1, 9, 9, 9, '2022-05-27 04:00:03', '2022-05-27 04:11:12', NULL, NULL),
(80, 2, 3, 2, 23, NULL, NULL, NULL, 'Input Data Sparepart', 'Input / update data sparepart', 'Update dan tambah data sparepart', NULL, '2022-05-27 13:12:41', '2022-05-27 14:25:26', NULL, NULL, NULL, NULL, 6, '2022-05-27 06:12:41', '2022-05-27 07:25:26', NULL, NULL),
(81, 1, 1, 2, 10, 43, NULL, NULL, 'Instal Software Corel Draw', 'install software corel', 'Sudah diinstall dengan versi portable', NULL, '2022-05-27 14:27:28', '2022-05-27 16:32:55', NULL, 48, 4, 4, 6, '2022-05-27 07:27:28', '2022-05-27 09:32:55', NULL, NULL),
(82, 1, 1, 2, 10, 35, 25, NULL, 'Install Adobe Pro', 'Install Adobe Pro', 'Sudah diinstall adobe Pro DC', NULL, '2022-05-27 14:43:55', '2022-05-27 16:32:40', NULL, 36, 4, 4, 6, '2022-05-27 07:43:55', '2022-05-27 09:32:40', NULL, NULL),
(83, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', NULL, '2022-05-30 09:53:13', '2022-05-30 11:58:47', NULL, NULL, NULL, NULL, 9, '2022-05-30 02:53:13', '2022-05-30 04:58:47', NULL, NULL),
(84, 1, 2, 2, 10, 48, NULL, NULL, 'Tidak bisa buka Sketchup', 'Tidak bisa buka Sketchup', 'Create Virtual memory', NULL, '2022-05-30 09:55:33', '2022-05-30 10:22:28', NULL, 49, 9, 10, 9, '2022-05-30 02:55:33', '2022-05-30 03:22:28', NULL, NULL),
(85, 1, 1, 2, 7, 28, NULL, NULL, 'Add Printer L1300 di PC', 'Add Printer L1300 di PC', 'Add Printer L1300 di PC', NULL, '2022-05-30 10:13:09', '2022-05-30 10:22:40', NULL, 48, 4, 4, 9, '2022-05-30 03:13:09', '2022-05-30 03:22:40', NULL, NULL),
(86, 1, 2, 2, 10, 42, NULL, NULL, 'Tidak bisa masuk ke windows 10, restart terus', 'Tidak bisa masuk ke windows 10, restart terus', 'Cabut semua kabel, lalu pasang kembali, nyalakan pc seperti semula', NULL, '2022-05-30 10:27:55', '2022-05-30 10:28:29', NULL, 50, 7, 7, 7, '2022-05-30 03:27:55', '2022-05-30 03:28:29', NULL, NULL),
(87, 1, 1, 2, 3, 7, 7, NULL, 'Mouse tidak bisa digunakan', 'Mouse tidak bisa digunakan', 'Ganti dengan mouse yang baru, pasang batery alkaline baru, dan pasang ke usb fornt panel', NULL, '2022-05-30 10:44:36', '2022-05-30 10:46:09', NULL, 51, 9, 9, 7, '2022-05-30 03:44:36', '2022-05-30 03:46:09', NULL, NULL),
(88, 1, 1, 2, 10, 35, 25, NULL, 'Tidak bisa combine 2 file pdf', 'Tidak bisa combine 2 file pdf', 'Masuk ke adobe crative cloud dan pilih adobe reader DC, lalu pilih combine files', NULL, '2022-05-30 10:49:07', '2022-05-30 10:50:46', NULL, 36, 4, 4, 7, '2022-05-30 03:49:07', '2022-05-30 03:50:46', NULL, NULL),
(89, 3, NULL, 2, 17, 61, NULL, NULL, 'Konfirmasi ketika ingin menghapus Activity, maintenance & Project', 'Konfirmasi terlebih dahulu sebelum hapus data', 'siap di deploy. penambahan bootstrap modal dialog konfirmation', NULL, '2022-05-30 11:02:01', '2022-05-30 11:13:48', NULL, NULL, NULL, NULL, NULL, '2022-05-30 04:02:01', '2022-05-30 04:13:48', NULL, NULL),
(90, 3, NULL, 2, 17, 61, NULL, NULL, 'Pada saat close activity tampilkan popup resolusi saja dan tombol save', 'Tampilkan modal dialog untuk input resolusi pada saat proses close', 'Tambah modal dialog dan tambah field resolusi pada modal dialog.', NULL, '2022-05-30 11:22:54', '2022-05-30 15:09:38', NULL, NULL, NULL, NULL, NULL, '2022-05-30 04:22:54', '2022-05-30 08:09:38', NULL, NULL),
(91, 1, 1, 2, 3, 7, 7, NULL, 'Ganti Mouse', 'ganti mouse yang lama dengan Mouse yang baru', 'ganti mouse yang lama dengan Mouse yang baru', NULL, '2022-05-30 13:44:34', '2022-05-31 10:29:05', NULL, 4, 8, 8, 7, '2022-05-30 06:44:34', '2022-05-31 03:29:05', NULL, NULL),
(92, 1, 1, 2, 3, 7, 7, NULL, 'Ganti Mouse', 'Ganti Mouse yang lama dengan mouse yang baru', 'Ganti Mouse yang lama dengan mouse yang baru', NULL, '2022-05-30 13:48:16', '2022-05-31 10:29:16', NULL, 52, 9, 9, 7, '2022-05-30 06:48:16', '2022-05-31 03:29:16', NULL, NULL),
(93, 1, 1, 2, 3, 7, NULL, NULL, 'Ganti Mouse', 'Ganti Mouse yang lama dengan mouse yang baru', 'ganti dengan mouse yang baru', NULL, '2022-05-30 13:51:59', '2022-05-31 10:22:52', NULL, 53, 3, 3, 7, '2022-05-30 06:51:59', '2022-05-31 03:22:52', NULL, NULL),
(94, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', NULL, '2022-05-31 10:01:07', '2022-05-31 11:55:24', NULL, NULL, NULL, NULL, 9, '2022-05-31 03:01:07', '2022-05-31 04:55:24', NULL, NULL),
(95, 2, 5, 2, 15, NULL, NULL, NULL, 'AI MESH WIFI Studio Interior Not Connect', 'AI MESH WIFI Studio Interior Not Connect', 'Configure Ulang AI Mesh di Router Wifi', NULL, '2022-05-31 10:01:42', '2022-05-31 11:55:15', NULL, NULL, NULL, NULL, 9, '2022-05-31 03:01:42', '2022-05-31 04:55:15', NULL, NULL),
(96, 1, 2, 2, 9, 33, NULL, NULL, 'Tidak bisa save di server dari Photoshop', 'Tidak bisa save di server dari Photoshop', 'Tambah Quota ke 30 GB di File Transfer', NULL, '2022-05-31 10:02:31', '2022-05-31 10:10:56', NULL, 44, 9, 9, 9, '2022-05-31 03:02:31', '2022-05-31 03:10:56', NULL, NULL),
(97, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke Wifi Studio Interior', 'Tidak bisa connect ke Wifi Studio Interior', 'Forget SSID dan connect ulang', NULL, '2022-05-31 10:08:58', '2022-05-31 10:22:18', NULL, 28, 9, 10, 9, '2022-05-31 03:08:58', '2022-05-31 03:22:18', NULL, NULL),
(98, 2, 3, 2, 25, NULL, NULL, NULL, 'Cek CCTV', 'Cek CCTV', 'Cek CCTV', NULL, '2022-05-31 10:23:48', '2022-05-31 10:37:46', NULL, NULL, NULL, NULL, 9, '2022-05-31 03:23:48', '2022-05-31 03:37:46', NULL, NULL),
(99, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke WIF Founder', 'Tidak bisa connect ke WIF Founder', 'Forget SSID Lama dan connect kembali', NULL, '2022-05-31 10:32:47', '2022-05-31 10:37:19', NULL, 54, 3, 3, 9, '2022-05-31 03:32:47', '2022-05-31 03:37:19', NULL, NULL),
(100, 1, 2, 2, 3, 58, 43, NULL, 'Tidak bisa menampilkan Gambar ke Layar', 'Tidak bisa menampilkan Gambar ke Layar', 'setting display to duplicate', NULL, '2022-05-31 10:49:37', '2022-05-31 11:00:36', NULL, 8, 10, 13, 9, '2022-05-31 03:49:37', '2022-05-31 04:00:36', NULL, NULL),
(101, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa detect sinyal WIFI dari Laptop DELL', 'Tidak bisa detect sinyal WIFI dari Laptop DELL Interior', 'Reinstall Driver Wireless Dell', NULL, '2022-05-31 11:01:43', '2022-05-31 11:52:46', NULL, 55, 9, 10, 9, '2022-05-31 04:01:43', '2022-05-31 04:52:46', NULL, NULL),
(102, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop untuk Zoom di Founder', 'Setting laptop untuk Zoom di Founder', 'Setting laptop untuk Zoom di Founder', NULL, '2022-05-31 13:09:24', '2022-05-31 13:35:59', NULL, 55, 9, 10, 9, '2022-05-31 06:09:24', '2022-05-31 06:35:59', NULL, NULL),
(103, 2, 3, 2, 23, NULL, NULL, NULL, 'Data Sparepart Keluar', 'Data serah terima sparepart', 'telah selesai sampai 31 mei 2022', NULL, '2022-05-31 13:45:54', '2022-05-31 14:10:16', NULL, NULL, NULL, NULL, 6, '2022-05-31 06:45:54', '2022-05-31 07:10:16', NULL, NULL),
(104, 1, 1, 2, 6, NULL, NULL, NULL, 'Install Font hadiprana', 'Install Font hadiprana', 'Install Font hadiprana', NULL, '2022-05-31 13:48:30', '2022-05-31 14:06:51', NULL, 56, 4, 4, 9, '2022-05-31 06:48:30', '2022-05-31 07:06:51', NULL, NULL),
(105, 1, 1, 2, 10, 35, 25, NULL, 'Install Adobe DC', 'Install Adobe DC', 'Install Adobe Reader DC', NULL, '2022-05-31 14:20:06', '2022-05-31 14:25:33', NULL, 18, 4, 4, 7, '2022-05-31 07:20:06', '2022-05-31 07:25:33', NULL, NULL),
(106, 1, 1, 2, 10, 35, 25, NULL, 'Adobe Reader DC', 'Adobe Reader DC', 'Adobe Reader DC', NULL, '2022-05-31 14:20:54', '2022-05-31 14:26:23', NULL, 36, 4, 4, 7, '2022-05-31 07:20:54', '2022-05-31 07:26:23', NULL, NULL),
(107, 1, 1, 2, 10, 39, NULL, NULL, 'Gstarcad tidak bisa menyimpan file', 'Gstarcad tidak bisa menyimpan file', 'Aktivasi ke network 192.168.0.186, buka gstarcad kembali', NULL, '2022-05-31 14:21:39', '2022-05-31 14:27:23', NULL, 2, 9, 9, 7, '2022-05-31 07:21:39', '2022-05-31 07:27:23', NULL, NULL),
(108, 1, 1, 2, 10, 43, NULL, NULL, 'Install Aplikasi Standart', 'Install Aplikasi Standart', 'Install Aplikasi Standart, adobe reader, photoshop, autocad 2016, browser, 7zip, join domain, mapping file server, sketchup pro 2020, microsoft office 365', '', '2022-05-31 14:22:27', '2022-06-06 09:06:29', NULL, 21, 9, 10, 7, '2022-05-31 07:22:27', '2022-06-06 02:06:29', NULL, NULL),
(109, 1, 1, 2, 10, 43, NULL, NULL, 'Install Enscape add on', 'Install Enscape add on', 'Install Enscape add on', NULL, '2022-05-31 14:38:18', '2022-05-31 14:38:31', NULL, 59, 9, 10, 7, '2022-05-31 07:38:18', '2022-05-31 07:38:31', NULL, NULL),
(110, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-OK', NULL, '2022-06-02 09:05:16', '2022-06-02 11:25:49', NULL, NULL, NULL, NULL, 9, '2022-06-02 02:05:16', '2022-06-02 04:25:49', NULL, NULL),
(111, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop untuk Meeting di Postmo', 'Setting laptop untuk Meeting di Postmo', 'Setting laptop untuk Meeting di Postmo', NULL, '2022-06-02 09:39:32', '2022-06-02 09:54:17', NULL, 60, 4, 4, 9, '2022-06-02 02:39:32', '2022-06-02 02:54:17', NULL, NULL),
(112, 1, 1, 2, 10, 43, NULL, NULL, 'Install Font', 'Install Font', 'Install Font Hadiprana', NULL, '2022-06-02 09:54:04', '2022-06-02 10:11:19', NULL, 31, 4, 4, 6, '2022-06-02 02:54:04', '2022-06-02 03:11:19', NULL, NULL),
(113, 1, 2, 2, 5, 22, NULL, NULL, 'Tidak Connect ke server', 'Tidak Connect ke server', 'Cek kembali kabel di Outlet', NULL, '2022-06-02 10:41:23', '2022-06-02 11:13:22', NULL, 61, 3, 3, 6, '2022-06-02 03:41:23', '2022-06-02 04:13:22', NULL, NULL),
(114, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Sesuaikan jam PC dengan server', NULL, '2022-06-02 11:14:09', '2022-06-02 11:17:20', NULL, 10, 9, 9, 9, '2022-06-02 04:14:09', '2022-06-02 04:17:20', NULL, NULL),
(115, 1, 2, 2, 3, 11, NULL, NULL, 'PC Tidak Bisa menyala', 'PC Tidak Bisa menyala', 'Kabel power tidak terpasang dengan benar', NULL, '2022-06-02 11:43:07', '2022-06-02 12:15:14', NULL, 62, 3, 3, 9, '2022-06-02 04:43:07', '2022-06-02 05:15:14', NULL, NULL),
(117, 3, NULL, 2, 17, 61, NULL, NULL, 'Default teknisi berdasarkan Login user', 'Penambahan feature Default teknisi berdasarkan Login user pada activity support', 'refactor di view blade sesuai login user', '', '2022-06-02 14:45:33', '2022-07-12 11:58:32', NULL, NULL, NULL, NULL, NULL, '2022-06-02 07:45:33', '2022-07-12 04:58:32', NULL, NULL),
(118, 1, 2, 2, 10, 43, NULL, NULL, 'Tidak bisa connect ke anydesk', 'Tidak bisa connect ke anydesk', 'restart service anydesk di PC', '', '2022-06-03 08:34:15', '2022-06-03 08:45:28', NULL, 37, 9, 9, 9, '2022-06-03 01:34:15', '2022-06-03 01:45:28', NULL, NULL),
(119, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', '', '2022-06-03 08:35:09', '2022-06-03 11:33:15', NULL, NULL, NULL, NULL, 9, '2022-06-03 01:35:09', '2022-06-03 04:33:15', NULL, NULL),
(120, 1, 1, 2, 5, 22, NULL, NULL, 'Setting LAN di Laptop', 'Setting LAN di Laptop', 'Setting LAN dengan IP Interior', '', '2022-06-03 08:52:40', '2022-06-03 09:00:38', NULL, 11, 9, 10, 9, '2022-06-03 01:52:40', '2022-06-03 02:00:38', NULL, NULL),
(121, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke WIFI Lobby', 'Tidak bisa connect ke WIFI Lobby', 'Restart WIFI Lobby', '', '2022-06-03 11:35:25', '2022-06-03 13:13:37', NULL, 13, 9, 10, 9, '2022-06-03 04:35:25', '2022-06-03 06:13:37', NULL, NULL),
(122, 1, 2, 2, 3, 9, 8, NULL, 'Unsupport VGA', 'Unsupport VGA', 'Pindahkan kabel vga dari onboard ke vga card pci express', '', '2022-06-06 09:11:14', '2022-06-06 09:15:38', NULL, 64, 9, 9, 7, '2022-06-06 02:11:14', '2022-06-06 02:15:38', NULL, NULL),
(123, 1, 1, 2, 5, 22, NULL, NULL, 'Tidak connect ke file server', 'Tidak connect ke file server', 'Kabel LAN terlepas dari PC, pasang kembali Kabel LAN ke pc, dan test koneksi ke file server', '', '2022-06-06 09:16:16', '2022-06-06 09:16:58', NULL, 64, 9, 9, 7, '2022-06-06 02:16:16', '2022-06-06 02:16:58', NULL, NULL),
(124, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-06-06 09:55:23', '2022-06-06 12:44:09', NULL, NULL, NULL, NULL, 9, '2022-06-06 02:55:23', '2022-06-06 05:44:09', NULL, NULL),
(125, 1, 2, 2, 10, 43, NULL, NULL, 'Tidak Bisa konek ke anydesk', 'Tidak Bisa konek ke anydesk', 'Restart Service Anydesk Di PC', '', '2022-06-06 09:56:31', '2022-06-06 10:05:38', NULL, 4, 8, 8, 9, '2022-06-06 02:56:31', '2022-06-06 03:05:38', NULL, NULL),
(126, 1, 2, 2, 7, 28, NULL, NULL, 'Printer Warna Marketing Blinking', 'Printer Warna Marketing Blinking', 'Reset Printer dan hapus job pending', '', '2022-06-06 09:57:57', '2022-06-06 10:24:02', NULL, 8, 10, 13, 9, '2022-06-06 02:57:57', '2022-06-06 03:24:02', NULL, NULL),
(127, 1, 2, 2, 2, 2, NULL, NULL, 'Tidak bisa terima email ( Mailbox Full )', 'Tidak bisa terima email ( Mailbox Full )', 'add quota mailbox to 2 GB', '', '2022-06-06 10:12:10', '2022-06-06 10:25:08', NULL, 65, 9, 9, 9, '2022-06-06 03:12:10', '2022-06-06 03:25:08', NULL, NULL),
(128, 1, 1, 2, 2, 1, NULL, NULL, 'Setting Email dan Account Onedrive di HP', 'Setting Email dan Account Onedrive di HP', 'setting email arizka@hadiprana.co.id dan one drive arizka@hadiprana.co', '', '2022-06-06 15:20:02', '2022-06-06 15:45:52', NULL, 62, 3, 3, 9, '2022-06-06 08:20:02', '2022-06-06 08:45:52', NULL, NULL),
(129, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-OK', '', '2022-06-07 09:00:29', '2022-06-07 13:11:11', NULL, NULL, NULL, NULL, 9, '2022-06-07 02:00:29', '2022-06-07 06:11:11', NULL, NULL),
(130, 1, 1, 2, 7, 28, NULL, NULL, 'Setting Printer L3150 di PC Bian', 'Setting Printer L3150 di PC Bian', 'Setting Printer L3150 di PC Bian', '', '2022-06-07 09:05:59', '2022-06-07 09:19:27', NULL, 36, 4, 4, 9, '2022-06-07 02:05:59', '2022-06-07 02:19:27', NULL, NULL),
(131, 2, 3, 2, 12, NULL, NULL, NULL, 'Backup Sync Proyek Perencanaan 2', 'Backup Sync Proyek Perencanaan 2', 'Backup Sync Proyek Perencanaan 2', '', '2022-06-07 09:22:50', '2022-06-07 13:41:55', NULL, NULL, NULL, NULL, 9, '2022-06-07 02:22:50', '2022-06-07 06:41:55', NULL, NULL),
(132, 2, 3, 2, 26, NULL, NULL, NULL, 'Administrasi', 'Dokumen administrasi, penawaran Service, UPS server', 'Request penawaran untuk kebutuhan marketing ext SSD dan Usb Flashdisk , Hadiprana bali printer A3', '', '2022-06-07 09:44:34', '2022-06-07 11:36:39', NULL, NULL, NULL, NULL, 6, '2022-06-07 02:44:34', '2022-06-07 04:36:39', NULL, NULL),
(133, 1, 2, 2, 27, NULL, NULL, NULL, 'Tidak Bisa Scan', 'Tidak Bisa Scan', 'Cek di device and printer Scanner', '', '2022-06-07 09:44:50', '2022-06-07 09:50:30', NULL, 36, 4, 4, 9, '2022-06-07 02:44:50', '2022-06-07 02:50:30', NULL, NULL),
(134, 1, 2, 2, 7, 28, NULL, NULL, 'Tidak Bisa Print ke 5200', 'Tidak Bisa Print ke 5200', 'setting Ulang Printer', '', '2022-06-07 11:09:07', '2022-06-07 11:24:22', NULL, 66, 9, 9, 9, '2022-06-07 04:09:07', '2022-06-07 04:24:22', NULL, NULL),
(135, 1, 2, 2, 7, 26, NULL, NULL, 'Printer C2271 tidak bisa digunakan', 'Printer C2271 tidak bisa digunakan', 'Sedang di perbaiki oleh teknisi astragraphia', '', '2022-06-07 11:36:59', '2022-06-07 11:37:23', NULL, 67, 3, 3, 7, '2022-06-07 04:36:59', '2022-06-07 04:37:23', NULL, NULL),
(136, 2, 3, 2, 24, NULL, NULL, NULL, 'UAT Aplikasi task', 'Uat lanjutan aplikasi task', 'Report Export to Excel , Pdf  tambahan', '', '2022-06-07 11:38:02', '2022-06-07 14:40:37', NULL, NULL, NULL, NULL, 6, '2022-06-07 04:38:02', '2022-06-07 07:40:37', NULL, NULL),
(137, 1, 1, 2, 3, 6, NULL, NULL, 'Pindahkan data lama dari HDD lama ke SSD Baru', 'Pindahkan data lama dari HDD lama ke SSD Baru', 'Pindahkan data lama dari HDD lama ke SSD Baru, \r\nPindahkan data lama ke ssd baru pada Drive G,H, I, J', '', '2022-06-07 11:38:39', '2022-06-07 11:39:21', NULL, 21, 9, 10, 7, '2022-06-07 04:38:39', '2022-06-07 04:39:21', NULL, NULL),
(142, 3, NULL, 2, 16, 54, NULL, NULL, 'Pengadaan UPS untuk Ruang Server', 'Pengadaan UPS 3000VA untuk ruang server atas', 'Sudah dilakukan pemasangan UPS ACP 3000VA sebagai pengganti APC lama', '', '2022-06-07 13:11:06', '2022-06-30 11:50:03', NULL, NULL, NULL, NULL, NULL, '2022-06-07 06:11:06', '2022-06-30 04:50:03', NULL, NULL),
(144, 3, NULL, 2, 17, 61, NULL, NULL, 'Filter Data', '1. Filter Tanggal disetiap listdata\r\n2. Listdata setiap halaman dimunculkan per 20 baris \r\n3. Tambah bagian activity , open ticket dan history bedasarkan keyword', 'Refactor route controller dan view untuk penambahan filter', '', '2022-06-07 13:15:24', '2022-07-12 11:59:16', NULL, NULL, NULL, NULL, NULL, '2022-06-07 06:15:24', '2022-07-12 04:59:16', NULL, NULL),
(145, 1, 2, 2, 10, 42, NULL, NULL, 'Windows Lemot', 'lambat ketika buka browser', 'Komputer menjadi lambat karena mengunjungi website BNI Internet Banking', '', '2022-06-07 16:08:41', '2022-06-07 16:34:54', NULL, 68, 6, 6, 6, '2022-06-07 09:08:41', '2022-06-07 09:34:54', NULL, NULL),
(146, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', '', '2022-06-08 09:27:46', '2022-06-08 11:23:43', NULL, NULL, NULL, NULL, 9, '2022-06-08 02:27:46', '2022-06-08 04:23:43', NULL, NULL),
(147, 1, 1, 2, 3, 58, 43, NULL, 'Setting Laptop Untuk Meeting di Ruang Postmo', 'Setting Laptop Untuk Meeting di Ruang Postmo', 'Setting Laptop Untuk Meeting di Ruang Postmo', '', '2022-06-08 09:28:22', '2022-06-08 09:36:48', NULL, 55, 9, 10, 9, '2022-06-08 02:28:22', '2022-06-08 02:36:48', NULL, NULL),
(148, 1, 2, 2, 2, NULL, NULL, NULL, 'Terdeteksi Email Spam', 'Terdeteksi Email Spam', 'Add Email source aquapleinair.com blok di amavisd Zimbra', '', '2022-06-08 09:29:40', '2022-06-08 09:37:21', NULL, 36, 4, 4, 9, '2022-06-08 02:29:40', '2022-06-08 02:37:21', NULL, NULL),
(149, 1, 2, 2, 3, 9, 9, NULL, 'Laptop Tidak tampil di Layar di Meeting Founder', 'Laptop Tidak tampil di Layar di Meeting Founder', 'Rubah Extend menjadi Duplicate display di laptop', '', '2022-06-08 09:53:53', '2022-06-08 10:07:27', NULL, 69, 4, 4, 9, '2022-06-08 02:53:53', '2022-06-08 03:07:27', NULL, NULL),
(150, 1, 2, 2, 7, 26, NULL, NULL, 'Printer C2271 tidak bisa digunakan', 'Printer C2271 tidak bisa digunakan', 'Penggantian Sparepart Fuser Assy oleh teknisi Astragraphia', '', '2022-06-08 10:37:38', '2022-06-08 10:43:30', NULL, 67, 3, 3, 7, '2022-06-08 03:37:38', '2022-06-08 03:43:30', NULL, NULL),
(151, 1, 1, 2, 2, 5, NULL, NULL, 'Tidak bisa masuk email arsitek.zoom@hadiprana.co.id', 'Tidak bisa masuk email arsitek.zoom@hadiprana.co.id', 'Kirim info password email : *4rs#hadiprana ke Mas firdause', '', '2022-06-08 10:39:14', '2022-06-08 10:47:39', NULL, 2, 9, 9, 7, '2022-06-08 03:39:14', '2022-06-08 03:47:39', NULL, NULL),
(152, 2, 3, 2, 26, NULL, NULL, NULL, 'Permintaan barang', 'review penawaran dan permintaan barang', 'Permintaan barang yang di ajukan\r\n- Service Monitor Dede HRD, Printer Juli P\r\n- Permintaan Printer A3 Bali \r\n- Permintaan UPS Server 3000VA\r\n- Permintaan Wifi Router Ruang Ibu Nora\r\n- Service Ploter Interior dan Arsitek \r\n- Permintaan Harddisk Ext dan flashdisk 32 KInanti Marketing', '', '2022-06-09 08:58:04', '2022-06-09 11:23:47', NULL, NULL, NULL, NULL, 6, '2022-06-09 01:58:04', '2022-06-09 04:23:47', NULL, NULL),
(153, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', '', '2022-06-09 09:27:28', '2022-06-09 11:21:32', NULL, NULL, NULL, NULL, 9, '2022-06-09 02:27:28', '2022-06-09 04:21:32', NULL, NULL),
(154, 2, 3, 2, 12, NULL, NULL, NULL, 'Backup Sync Server Artwork', 'Backup Sync Server Artwork', 'Backup Sync Server Artwork', '', '2022-06-09 09:27:52', '2022-06-09 10:40:37', NULL, NULL, NULL, NULL, 9, '2022-06-09 02:27:52', '2022-06-09 03:40:37', NULL, NULL),
(155, 1, 2, 2, 10, 48, 40, NULL, 'error Sketchup', 'error skectup ketika buka file', 'Update driver Nvidia G210', 'support/RSTPKG5a2uGRH6bkTz0k4jP1PFcRcI0HNo10WVwk.jpeg', '2022-06-09 13:53:48', '2022-06-09 14:23:57', NULL, 57, 9, 9, 6, '2022-06-09 06:53:48', '2022-06-09 07:23:57', NULL, NULL),
(156, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Set Jam PC ke Server', '', '2022-06-10 08:59:08', '2022-06-10 09:02:44', NULL, 10, 9, 9, 9, '2022-06-10 01:59:08', '2022-06-10 02:02:44', NULL, NULL),
(157, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-OK', '', '2022-06-10 08:59:26', '2022-06-10 11:36:13', NULL, NULL, NULL, NULL, 9, '2022-06-10 01:59:26', '2022-06-10 04:36:13', NULL, NULL),
(158, 2, 3, 2, 23, NULL, NULL, NULL, 'Data Sparepart', 'update data sparepart', 'update sparepart', '', '2022-06-10 09:24:44', '2022-06-10 10:55:39', NULL, NULL, NULL, NULL, 6, '2022-06-10 02:24:44', '2022-06-10 03:55:39', NULL, NULL),
(159, 2, 5, 1, 14, NULL, NULL, NULL, 'Tidak bisa print', 'tidak bisa print', NULL, '', '2022-06-10 11:05:40', NULL, NULL, NULL, NULL, NULL, 7, '2022-06-10 04:05:40', '2022-06-10 04:05:40', NULL, NULL),
(160, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily cek Server & network', 'Daily cek Server & network', 'Daily cek Server & network', '', '2022-06-13 09:33:01', '2022-06-13 10:52:15', NULL, NULL, NULL, NULL, 9, '2022-06-13 02:33:01', '2022-06-13 03:52:15', NULL, NULL),
(161, 1, 2, 2, 2, NULL, NULL, NULL, 'Email terdeteksi SPAM', 'Email terdeteksi SPAM', 'Delete Email di outlook dan server', '', '2022-06-13 09:35:00', '2022-06-13 09:49:57', NULL, 70, 9, 9, 9, '2022-06-13 02:35:00', '2022-06-13 02:49:57', NULL, NULL),
(162, 1, 2, 2, 2, NULL, NULL, NULL, 'Email terdeteksi SPAM', 'Email terdeteksi SPAM', 'Delete Email di Outlook dan Server', '', '2022-06-13 09:35:24', '2022-06-13 09:50:16', NULL, 36, 4, 4, 9, '2022-06-13 02:35:24', '2022-06-13 02:50:16', NULL, NULL),
(163, 1, 2, 2, 7, 28, NULL, NULL, 'Tidak Bisa Print', 'Tidak Bisa Print', 'Delete Job Active di Print Job', '', '2022-06-13 11:44:33', '2022-06-13 13:34:21', NULL, 71, 9, 10, 9, '2022-06-13 04:44:33', '2022-06-13 06:34:21', NULL, NULL),
(164, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Restart PC dan login kembali ke windows, masukan username dan password, lalu klik ok', '', '2022-06-14 08:42:27', '2022-06-14 08:43:14', NULL, 72, 9, 9, 7, '2022-06-14 01:42:27', '2022-06-14 01:43:14', NULL, NULL),
(165, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-06-14 08:50:24', '2022-06-14 11:18:17', NULL, NULL, NULL, NULL, 9, '2022-06-14 01:50:24', '2022-06-14 04:18:17', NULL, NULL),
(166, 1, 2, 2, 7, 28, NULL, NULL, 'Tidak bisa print HP 1020', 'Tidak bisa print HP 1020', 'Delete Printer dan ad ulang printer lalu restart PC', '', '2022-06-14 08:52:52', '2022-06-14 09:16:01', NULL, 73, 10, 13, 9, '2022-06-14 01:52:52', '2022-06-14 02:16:01', NULL, NULL),
(167, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke wifi arsitek', 'Tidak bisa connect ke wifi arsitek', 'Wireless di Mac enable', '', '2022-06-14 09:38:47', '2022-06-14 09:51:37', NULL, 51, 9, 9, 9, '2022-06-14 02:38:47', '2022-06-14 02:51:37', NULL, NULL),
(168, 1, 1, 2, 9, 33, 20, NULL, 'Buka Proyek Mason Pine', 'Buka Akses Proyek Mason Pine', 'Buka Akses Proyek Mason Pine', '', '2022-06-14 11:02:51', '2022-06-14 11:07:53', NULL, 27, 9, 9, 9, '2022-06-14 04:02:51', '2022-06-14 04:07:53', NULL, NULL),
(169, 1, 2, 2, 7, 28, NULL, NULL, 'Job Stuck dan tidak bisa print', 'Job Stuck dan tidak bisa print di Printer Warna marketing', 'delete job dan reset printer', '', '2022-06-14 14:10:55', '2022-06-14 14:27:09', NULL, 73, 10, 13, 9, '2022-06-14 07:10:55', '2022-06-14 07:27:09', NULL, NULL),
(170, 1, 2, 2, 7, 28, NULL, NULL, 'hasil print tidak keluar', 'hasil print tidak keluar', 'Reset Printer', '', '2022-06-14 14:27:54', '2022-06-15 08:28:20', NULL, 37, 9, 9, 9, '2022-06-14 07:27:54', '2022-06-15 01:28:20', NULL, NULL),
(171, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-ok', '', '2022-06-15 08:28:40', '2022-06-15 11:23:20', NULL, NULL, NULL, NULL, 9, '2022-06-15 01:28:40', '2022-06-15 04:23:20', NULL, NULL),
(172, 1, 1, 2, 10, 44, NULL, NULL, 'Install Nitro PDF 8', 'Install Nitro PDF 8', 'Install Nitro PDF 8', '', '2022-06-15 13:44:16', '2022-06-15 13:44:32', NULL, 48, 4, 4, 7, '2022-06-15 06:44:16', '2022-06-15 06:44:32', NULL, NULL),
(173, 1, 1, 2, 7, 29, NULL, NULL, 'Hasil print tidak keluar gambar nya', 'Hasil print tidak keluar gambar nya', 'Ganti toner lama dengan toner yang baru', '', '2022-06-15 15:45:53', '2022-06-15 15:46:16', NULL, 38, 9, 9, 7, '2022-06-15 08:45:53', '2022-06-15 08:46:16', NULL, NULL),
(174, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-ok', '', '2022-06-16 08:02:39', '2022-06-16 11:38:25', NULL, NULL, NULL, NULL, 9, '2022-06-16 01:02:39', '2022-06-16 04:38:25', NULL, NULL),
(175, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'sesuaikan jam PC dengan jam Server', '', '2022-06-16 08:03:04', '2022-06-16 08:07:12', NULL, 10, 9, 9, 9, '2022-06-16 01:03:04', '2022-06-16 01:07:12', NULL, NULL),
(176, 1, 1, 2, 7, 28, NULL, NULL, 'Setting Printer Epson L1300 dan Canon Pro 10', 'Setting Printer Epson L1300 dan Canon Pro 10', 'Setting Printer Epson L1300 dan Canon Pro 10', '', '2022-06-16 10:14:37', '2022-06-16 10:26:49', NULL, 33, 4, 4, 7, '2022-06-16 03:14:37', '2022-06-16 03:26:49', NULL, NULL),
(177, 1, 2, 2, 7, 28, NULL, NULL, 'Tidak bisa print PDF', 'Tidak bisa print PDF', 'Reset Printer', '', '2022-06-16 10:18:39', '2022-06-16 10:56:31', NULL, 7, 10, 13, 9, '2022-06-16 03:18:39', '2022-06-16 03:56:31', NULL, NULL),
(178, 2, 4, 2, 15, NULL, NULL, NULL, 'Ganti Router AP Ruang Finance', 'Ganti Router AP Ruang Finance ke Dlink DIR-1253', 'Ganti Router Finance dengan Dlink DIR 1253', '', '2022-06-16 16:38:33', '2022-06-17 10:19:22', NULL, NULL, NULL, NULL, 9, '2022-06-16 09:38:34', '2022-06-17 03:19:22', NULL, NULL),
(179, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Set Jam PC dengan Jam Server', '', '2022-06-17 08:28:13', '2022-06-17 08:39:20', NULL, 75, 6, 6, 9, '2022-06-17 01:28:13', '2022-06-17 01:39:20', NULL, NULL),
(180, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-ok', '', '2022-06-17 08:28:31', '2022-06-17 11:11:29', NULL, NULL, NULL, NULL, 9, '2022-06-17 01:28:31', '2022-06-17 04:11:29', NULL, NULL),
(181, 1, 2, 2, 3, 8, NULL, NULL, 'PC Menyala namun monitor hitam', 'PC Menyala namun monitor hitam', 'Cabut pasang Memory di slot berbeda', '', '2022-06-17 08:41:03', '2022-06-17 08:58:48', NULL, 76, 9, 10, 9, '2022-06-17 01:41:03', '2022-06-17 01:58:48', NULL, NULL),
(182, 1, 2, 2, 5, 22, NULL, NULL, 'PC Tidak Connect ke jaringan', 'PC Tidak Connect ke jaringan ) Driver LAn Card hilang )', 'Install Ulang Driver LAN card', '', '2022-06-17 08:50:51', '2022-06-17 09:52:40', NULL, 77, 9, 10, 9, '2022-06-17 01:50:51', '2022-06-17 02:52:40', NULL, NULL),
(183, 1, 1, 2, 5, 22, NULL, NULL, 'Tidak bisa connect ke Server Autocad Architechture 2016', 'Tidak bisa connect ke Server Autocad Architechture 2016', 'Kabel Terlepas, sambung kembali kabel yang terlepas, buka autocad kembali', '', '2022-06-17 10:56:46', '2022-06-17 10:57:26', NULL, 78, 9, 10, 7, '2022-06-17 03:56:46', '2022-06-17 03:57:26', NULL, NULL),
(184, 1, 1, 2, 5, 22, NULL, NULL, 'Tidak connect ke file server', 'Tidak connect ke file server', 'kabel lan terlepas, pasang kembali kabel Lan ke outlet', '', '2022-06-17 11:25:07', '2022-06-17 11:25:34', NULL, 79, 3, 3, 7, '2022-06-17 04:25:07', '2022-06-17 04:25:34', NULL, NULL),
(185, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-ok', '', '2022-06-20 09:08:38', '2022-06-20 13:04:30', NULL, NULL, NULL, NULL, 9, '2022-06-20 02:08:38', '2022-06-20 06:04:30', NULL, NULL);
INSERT INTO `activity` (`id`, `activitytype_id`, `activitysubtype_id`, `activitystatus_id`, `tasktype_id`, `tasksubtype1_id`, `tasksubtype2_id`, `name`, `subject`, `description`, `resolution`, `image`, `startdt`, `enddt`, `targetdt`, `enduser_id`, `enduserdept_id`, `endusersubdept_id`, `technician_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(186, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Proyek Handoyo Denpasar No 3', 'Buka Akses Proyek Handoyo Denpasar No 3 untuk:Budi sarwono,Jejen,Agus W,Vanda,Noor Cholis,Naufal', 'Buka Akses Proyek Handoyo Denpasar No 3 untuk:Budi sarwono,Jejen,Agus W,Vanda,Noor Cholis,Naufal', '', '2022-06-20 09:15:33', '2022-06-20 09:20:32', NULL, 38, 9, 9, 9, '2022-06-20 02:15:33', '2022-06-20 02:20:32', NULL, NULL),
(187, 2, 3, 2, 25, NULL, NULL, NULL, 'Cek CCTV', 'Cek CCTV', 'Cek CCTV-ok', '', '2022-06-20 09:56:18', '2022-06-20 10:24:40', NULL, NULL, NULL, NULL, 9, '2022-06-20 02:56:18', '2022-06-20 03:24:40', NULL, NULL),
(188, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-06-20 09:58:52', '2022-06-20 10:00:19', NULL, 80, 9, 10, 7, '2022-06-20 02:58:52', '2022-06-20 03:00:19', NULL, NULL),
(189, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop untuk Zoom di Ruang Meeting Interior', 'Setting laptop untuk Zoom di Ruang Meeting Interior', 'Setting laptop untuk Zoom di Ruang Meeting Interior', '', '2022-06-20 14:18:24', '2022-06-20 14:28:43', NULL, 16, 9, 10, 9, '2022-06-20 07:18:24', '2022-06-20 07:28:43', NULL, NULL),
(190, 1, 1, 2, 9, 33, 20, NULL, 'Buat Folder Proyek Hotel Crowne Plaza Labuan Bajo', 'Buat Folder Proyek Hotel Crowne Plaza Labuan Bajo', 'buat server untuk Hotel Crowne Plaza Labuan Bajo yg anggotanya :\r\n\r\n1. Afwina Kamal\r\n2. Arief Sedijanto\r\n3. Andhika\r\n4. Bimo Imbalo\r\n5. Maghfira\r\n6. Yoshua\r\n7. Mesalina\r\n8. Budi S\r\n9. Suherman\r\n10. Agus W\r\n11. Supriyanto\r\n12. Irfan Adiyagi', '', '2022-06-20 14:30:01', '2022-06-20 14:39:53', NULL, 81, 9, 9, 9, '2022-06-20 07:30:01', '2022-06-20 07:39:53', NULL, NULL),
(191, 1, 1, 2, 7, 28, NULL, NULL, 'Tidak bisa mengeprint', 'Tidak bisa mengeprint', 'Nyalakan tombol power printer HP', '', '2022-06-20 15:01:23', '2022-06-20 15:01:49', NULL, 8, 10, 13, 7, '2022-06-20 08:01:23', '2022-06-20 08:01:49', NULL, NULL),
(192, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-ok', '', '2022-06-21 08:29:25', '2022-06-21 14:08:20', NULL, NULL, NULL, NULL, 9, '2022-06-21 01:29:25', '2022-06-21 07:08:20', NULL, NULL),
(193, 2, 3, 2, 26, NULL, NULL, NULL, 'Data Sparepart', 'Data Update Sparepart', 'Update Data harddisk SSD 2 unit dari Artwork sebagai pengganti yang dipakai dari IT', '', '2022-06-21 11:12:21', '2022-06-21 11:18:15', NULL, NULL, NULL, NULL, 6, '2022-06-21 04:12:21', '2022-06-21 04:18:15', NULL, NULL),
(194, 2, 3, 1, 24, NULL, NULL, NULL, 'UAT task', 'UAT task', NULL, '', '2022-06-21 11:18:52', NULL, NULL, NULL, NULL, NULL, 6, '2022-06-21 04:18:52', '2022-06-21 04:18:52', NULL, NULL),
(195, 1, 1, 2, 10, 37, 41, NULL, 'Downgrade Autocad', 'Downgrade Autocad Architechture 2020 ke Autocad Architechture 2012', 'Uninstall Autocad existing dan install autocad yang baru', '', '2022-06-21 13:00:27', '2022-06-21 14:16:28', NULL, 66, 9, 9, 7, '2022-06-21 06:00:27', '2022-06-21 07:16:28', NULL, NULL),
(196, 1, 1, 2, 10, 40, 31, NULL, 'Tidak bisa menyimpan file di MS Word', 'Tidak bisa menyimpan file di MS Word', 'Buka settingan security di drive D full akses', NULL, '2022-06-22 10:00:43', '2022-06-24 14:32:01', NULL, 67, 3, 3, 7, '2022-06-22 03:00:43', '2022-06-24 07:32:01', NULL, NULL),
(197, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-06-23 07:31:58', '2022-06-23 13:55:30', NULL, NULL, NULL, NULL, 9, '2022-06-23 00:31:58', '2022-06-23 06:55:30', NULL, NULL),
(198, 1, 2, 2, 5, 22, NULL, NULL, 'Tidak konek ke internet', 'Tidak konek ke internet', 'Pasang Uplink ke port di switch yang terlepas', '', '2022-06-23 09:55:19', '2022-06-23 10:09:06', NULL, 82, 9, 10, 9, '2022-06-23 02:55:19', '2022-06-23 03:09:06', NULL, NULL),
(199, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-ok', '', '2022-06-24 08:15:55', '2022-06-24 11:17:13', NULL, NULL, NULL, NULL, 9, '2022-06-24 01:15:55', '2022-06-24 04:17:13', NULL, NULL),
(200, 1, 2, 2, 10, 40, NULL, NULL, 'Tidak bisa jalankan macro dari office 365', 'Tidak bisa jalankan macro .xlsm dari office 365', 'add fileserverart\\artwork di trust location pada trust center excel lalu mapp drive server artwork dengan nama bukan dengan IP address', '', '2022-06-24 08:46:31', '2022-06-24 11:16:56', NULL, 83, 4, 4, 9, '2022-06-24 01:46:31', '2022-06-24 04:16:56', NULL, NULL),
(201, 1, 2, 2, 3, 10, NULL, NULL, 'Komputer Tidak dapat dihidupkan', 'komputer tidak dapat dihidupkan', 'Method 1\r\nShut off your computer\r\nHold the power button until your computer starts and shuts down again\r\nPress the power button again, your backup BIOS should kick in now and should re-flash the backup BIOS if there\'s anything wrong with the new one.\r\nMethod 2\r\nShut off your computer\r\nHold the power AND the reset button for about 10 sec, than release.\r\nIt should boot into the backup BIOS now.', '', '2022-06-27 08:26:30', '2022-06-27 10:57:33', NULL, 5, 8, 8, 6, '2022-06-27 01:26:30', '2022-06-27 03:57:33', NULL, NULL),
(202, 1, 2, 2, 4, NULL, NULL, NULL, 'Tidak Bisa login', 'tidak dapat login windows', 'sesuaikan jam dengan server', '', '2022-06-27 09:36:00', '2022-06-27 10:57:49', NULL, 84, 3, 3, 6, '2022-06-27 02:36:00', '2022-06-27 03:57:49', NULL, NULL),
(203, 1, 1, 2, 3, 16, 17, NULL, 'Upgrade VGA', 'Upgrade VGA Asus Nvidia GT730', 'Upgrade VGA Asus Nvidia GT730 2 GB DDR5, install driver dan restart PC', '', '2022-06-27 09:38:48', '2022-06-27 09:39:43', NULL, 48, 4, 4, 7, '2022-06-27 02:38:48', '2022-06-27 02:39:43', NULL, NULL),
(204, 1, 1, 2, 3, 16, 17, NULL, 'Upgrade VGA', 'Upgrade VGA', 'Upgrade VGA Asus Nvidia GT 730 2 GB DDR5', '', '2022-06-27 09:48:23', '2022-06-27 09:48:50', NULL, 31, 4, 4, 7, '2022-06-27 02:48:23', '2022-06-27 02:48:50', NULL, NULL),
(205, 1, 1, 2, 10, 35, NULL, NULL, 'Install Adobe Reader', 'Install Adobe Reader', 'Install Adobe Reader', '', '2022-06-27 09:49:30', '2022-06-27 09:50:09', NULL, 18, 4, 4, 7, '2022-06-27 02:49:30', '2022-06-27 02:50:09', NULL, NULL),
(206, 2, 3, 2, 26, NULL, NULL, NULL, 'Hadiprana Bali', 'Review permintaan Hadiprana bali', 'Permintaan monitor untuk PC didik dan pc server', '', '2022-06-28 08:44:45', '2022-06-28 09:48:13', NULL, NULL, NULL, NULL, 6, '2022-06-28 01:44:45', '2022-06-28 02:48:13', NULL, NULL),
(207, 1, 2, 2, 3, 11, NULL, NULL, 'PC Mati Total', 'PC Mati Total', 'PC tidak nyala karena psu dan startup windows error, \r\nganti PSU dan SSD 1 TB, install ulang windows, upgrade windows dari win 7 ke win 10, install ulang aplikasi, setting email dan printer, buat mapping server ke file server artwork', '', '2022-06-28 09:30:09', '2022-06-28 09:32:53', NULL, 69, 4, 4, 7, '2022-06-28 02:30:09', '2022-06-28 02:32:53', NULL, NULL),
(208, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-06-28 09:52:18', '2022-06-28 11:52:15', NULL, NULL, NULL, NULL, 9, '2022-06-28 02:52:18', '2022-06-28 04:52:15', NULL, NULL),
(209, 2, 5, 2, 15, NULL, NULL, NULL, 'Wifi Founder Tidak bisa Internet', 'Wifi Founder Tidak bisa Internet', 'Restart Router WIFI', '', '2022-06-28 09:52:38', '2022-06-28 10:10:51', NULL, NULL, NULL, NULL, 9, '2022-06-28 02:52:38', '2022-06-28 03:10:51', NULL, NULL),
(210, 1, 1, 2, 10, 43, NULL, NULL, 'Resolusi Monitor sering berubah ubah', 'Resolusi Monitor sering berubah ubah', 'Pilih resolusi yang sesuai dengan monitor dell, lalu pilih ok', '', '2022-06-28 09:53:01', '2022-06-28 09:53:47', NULL, 85, 9, 10, 7, '2022-06-28 02:53:01', '2022-06-28 02:53:47', NULL, NULL),
(211, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Set Jam PC dengan Jam Server', '', '2022-06-28 09:53:19', '2022-06-28 09:57:28', NULL, 10, 9, 9, 9, '2022-06-28 02:53:19', '2022-06-28 02:57:28', NULL, NULL),
(212, 1, 2, 2, 10, 37, 41, NULL, 'License Cad 2013 Not Sync', 'License Cad 2013 Not Sync', 'Set Lic Server ke 192.168.4.21', '', '2022-06-28 09:53:54', '2022-06-28 09:58:53', NULL, 37, 9, 9, 9, '2022-06-28 02:53:54', '2022-06-28 02:58:53', NULL, NULL),
(213, 1, 1, 2, 9, 33, 20, NULL, 'Buat Folder Proyek baru Hotel Labersa Resort Toba', 'Buat Folder Proyek baru Hotel Labersa Resort Toba', 'Buat Folder Proyek 2.Hotel Labersa Resort Toba dengan akses yang diminta', '', '2022-06-28 09:55:04', '2022-06-28 10:11:32', NULL, 86, 9, 9, 9, '2022-06-28 02:55:04', '2022-06-28 03:11:32', NULL, NULL),
(214, 1, 1, 2, 2, 1, 49, NULL, 'Buat Email group Labersa Resort', 'Buat Email group Labersa Resort', 'Buat email group labersa_resort@hadiprana.co.id', '', '2022-06-28 09:57:04', '2022-06-28 10:11:48', NULL, 86, 9, 9, 9, '2022-06-28 02:57:04', '2022-06-28 03:11:48', NULL, NULL),
(215, 1, 1, 2, 3, 6, NULL, NULL, 'HDD Penuh', 'HDD Penuh, tidak bisa menyimpan file', 'Menambahkan SSD 1 TB ke PC', '', '2022-06-28 10:56:17', '2022-06-28 10:58:13', NULL, 87, 9, 9, 7, '2022-06-28 03:56:17', '2022-06-28 03:58:13', NULL, NULL),
(216, 1, 1, 2, 3, 6, NULL, NULL, 'HDD Penuh', 'HDD Penuh, tidak bisa menyimpan File', 'Menambahkan SSD 1 TB ke PC', '', '2022-06-28 10:59:36', '2022-06-28 11:00:07', NULL, 88, 9, 9, 7, '2022-06-28 03:59:36', '2022-06-28 04:00:07', NULL, NULL),
(217, 1, 1, 2, 10, 40, NULL, NULL, 'Tidak bisa menyimpan ke file server artwork', 'Tidak bisa menyimpan ke file server artwork', 'Tambahkan dns alternatif, cek enabled editing pada menubar excel, dan simpan ke server artwork', '', '2022-06-28 14:52:09', '2022-06-28 14:53:01', NULL, 34, 4, 4, 7, '2022-06-28 07:52:09', '2022-06-28 07:53:01', NULL, NULL),
(218, 1, 2, 2, 11, 51, NULL, NULL, 'Tidak bisa buka PWA di PC', 'Tidak bisa buka PWA di PC', 'allow security content di chrome', '', '2022-06-28 15:22:52', '2022-06-28 16:01:43', NULL, 89, 9, 10, 9, '2022-06-28 08:22:52', '2022-06-28 09:01:43', NULL, NULL),
(219, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-06-29 08:09:51', '2022-06-29 14:27:17', NULL, NULL, NULL, NULL, 9, '2022-06-29 01:09:51', '2022-06-29 07:27:17', NULL, NULL),
(220, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-06-29 09:39:05', '2022-06-29 09:39:38', NULL, 30, 9, 9, 7, '2022-06-29 02:39:05', '2022-06-29 02:39:38', NULL, NULL),
(221, 1, 1, 2, 2, 1, 49, NULL, 'Add member Email group bandara kediri', 'Add member Email group bandara kediri untuk mesa,firdause,yoko', 'Add to bandarakediri@hadiprana.co.id', '', '2022-06-29 14:27:56', '2022-06-29 14:53:38', NULL, 56, 4, 4, 9, '2022-06-29 07:27:56', '2022-06-29 07:53:38', NULL, NULL),
(222, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-ok', '', '2022-06-30 08:11:48', '2022-06-30 11:23:12', NULL, NULL, NULL, NULL, 9, '2022-06-30 01:11:48', '2022-06-30 04:23:12', NULL, NULL),
(223, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Sesuaikan Jam PC dengan Jam Server', '', '2022-06-30 08:24:09', '2022-06-30 08:30:06', NULL, 90, 9, 9, 9, '2022-06-30 01:24:09', '2022-06-30 01:30:06', NULL, NULL),
(224, 1, 2, 2, 5, 21, NULL, NULL, 'PC Tidak bisa konek ke internet', 'PC Tidak bisa konek ke internet', 'restart switch di belakang meja angel', '', '2022-06-30 09:53:23', '2022-06-30 11:22:57', NULL, 91, 4, 4, 9, '2022-06-30 02:53:23', '2022-06-30 04:22:57', NULL, NULL),
(225, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa konek ke WIFI di ruang meeting Postmo', 'Tidak bisa konek ke WIFI di ruang meeting Postmo', 'Enable Adapter WIFI di laptop', '', '2022-06-30 16:39:07', '2022-06-30 16:45:55', NULL, 92, 9, 10, 9, '2022-06-30 09:39:07', '2022-06-30 09:45:55', NULL, NULL),
(226, 1, 1, 2, 2, 2, NULL, NULL, 'Reset Password Email Marketing', 'Reset Password Email Marketing', 'reset to m4rk3t9ch', '', '2022-06-30 16:39:36', '2022-07-01 07:48:28', NULL, 7, 10, 13, 9, '2022-06-30 09:39:36', '2022-07-01 00:48:28', NULL, NULL),
(227, 2, 4, 2, 12, NULL, NULL, NULL, 'Buat Cloning Server License Autocad 2016 Interior', 'Buat Cloning Server License Autocad 2016 Interior', 'Buat server license auto cad di vm dengan Ip 192.168.4.13', '', '2022-06-30 16:40:10', '2022-07-01 07:49:12', NULL, NULL, NULL, NULL, 9, '2022-06-30 09:40:10', '2022-07-01 00:49:12', NULL, NULL),
(228, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network-ok', '', '2022-07-01 07:48:49', '2022-07-04 13:58:52', NULL, NULL, NULL, NULL, 9, '2022-07-01 00:48:49', '2022-07-04 06:58:52', NULL, NULL),
(229, 3, NULL, 2, 17, 62, NULL, NULL, 'Pembuatan Aplikasi Budget IT', 'Modul Setting Departemen, Supplier', 'Sudah dibuat Modul Setting Departemen dan Supplier , Django - Mysql', '', '2022-07-01 09:12:48', '2022-07-21 13:21:27', NULL, NULL, NULL, NULL, NULL, '2022-07-01 02:12:48', '2022-07-21 06:21:27', NULL, NULL),
(230, 1, 1, 2, 9, 33, 20, NULL, 'Akses Bluebird 2', 'permintaan akses ke proyek bluebird 2', 'Sudah ditambahkan hak akses Bluebird 2 untuk afwina', '', '2022-07-01 13:43:38', '2022-07-01 14:01:36', NULL, 51, 9, 9, 6, '2022-07-01 06:43:38', '2022-07-01 07:01:36', NULL, NULL),
(231, 1, 1, 2, 10, 37, 41, NULL, 'Tidak bisa konek ke server cad 2016', 'Tidak bisa konek ke server cad 2016', 'Restart PC dan coba konek kembali ke license cad', '', '2022-07-04 08:48:40', '2022-07-04 08:49:45', NULL, 93, 9, 10, 7, '2022-07-04 01:48:40', '2022-07-04 01:49:45', NULL, NULL),
(232, 1, 1, 2, 10, 34, 21, NULL, 'Tidak connect ke server 3d max 2013', 'Tidak connect ke server 3d max 2013', 'Restart service server 3d max 2013, kemudian coba kembali 3d max nya', '', '2022-07-04 10:37:28', '2022-07-04 10:38:13', NULL, 94, 3, 3, 7, '2022-07-04 03:37:28', '2022-07-04 03:38:13', NULL, NULL),
(233, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-04 13:59:11', '2022-07-05 08:47:26', NULL, NULL, NULL, NULL, 9, '2022-07-04 06:59:11', '2022-07-05 01:47:26', NULL, NULL),
(234, 2, 3, 2, 12, NULL, NULL, NULL, 'Perapihan UPS Ruang Server Lantai 3', 'Perapihan UPS Ruang Server Lantai 3', 'Perapihan UPS Ruang Server Lantai 3', '', '2022-07-04 13:59:36', '2022-07-05 08:47:18', NULL, NULL, NULL, NULL, 9, '2022-07-04 06:59:36', '2022-07-05 01:47:18', NULL, NULL),
(235, 1, 1, 2, 4, 17, NULL, NULL, 'Buat Login User Baru', 'Buat Login User Baru', 'buat login user alvira.salwa', '', '2022-07-04 14:00:34', '2022-07-04 14:22:16', NULL, 95, 9, 10, 9, '2022-07-04 07:00:34', '2022-07-04 07:22:16', NULL, NULL),
(236, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke WIFI Studio Interior', 'Tidak bisa connect ke WIFI Studio Interior', 'Allow connection di aplikasi lenovo', '', '2022-07-04 14:01:04', '2022-07-04 14:21:56', NULL, 28, 9, 10, 9, '2022-07-04 07:01:04', '2022-07-04 07:21:56', NULL, NULL),
(237, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-05 08:47:39', '2022-07-05 15:01:52', NULL, NULL, NULL, NULL, 9, '2022-07-05 01:47:39', '2022-07-05 08:01:52', NULL, NULL),
(238, 1, 1, 2, 3, 58, 43, NULL, 'Setting Laptop di Ruang Founder', 'Setting Laptop di Ruang Founder', 'Setting laptop ke tv di ruang founder', '', '2022-07-05 15:03:13', '2022-07-05 15:27:15', NULL, 67, 3, 3, 9, '2022-07-05 08:03:13', '2022-07-05 08:27:15', NULL, NULL),
(239, 1, 2, 2, 5, 24, NULL, NULL, 'Wireless Interior Tidak Bisa', 'Wireless Interior Tidak Bisa ( Router tereset )', 'set up ulang router asus', '', '2022-07-05 15:03:48', '2022-07-05 15:56:10', NULL, 28, 9, 10, 9, '2022-07-05 08:03:48', '2022-07-05 08:56:10', NULL, NULL),
(240, 1, 1, 2, 6, 59, 45, NULL, 'Restore data di Proyek Villa Gunung malang', 'Restore data di Proyek Villa Gunung malang', 'Restore', '', '2022-07-05 16:29:59', '2022-07-05 17:04:34', NULL, 96, 3, 3, 9, '2022-07-05 09:29:59', '2022-07-05 10:04:34', NULL, NULL),
(241, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-07-06 07:27:26', '2022-07-07 08:05:08', NULL, NULL, NULL, NULL, 9, '2022-07-06 00:27:26', '2022-07-07 01:05:08', NULL, NULL),
(242, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Sesuaikan jam dengan jam server', '', '2022-07-06 08:07:21', '2022-07-06 09:03:14', NULL, 10, 9, 9, 9, '2022-07-06 01:07:21', '2022-07-06 02:03:14', NULL, NULL),
(243, 1, 1, 2, 10, 43, NULL, NULL, 'Setting Anydesk di PC Salwa', 'Setting Anydesk di PC Salwa', 'Install dan setting anydesk di PC', '', '2022-07-06 09:05:50', '2022-07-06 09:52:42', NULL, 95, 9, 10, 9, '2022-07-06 02:05:50', '2022-07-06 02:52:42', NULL, NULL),
(244, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Sesuaikan jam pc dengan jam komputer', '', '2022-07-06 10:55:03', '2022-07-06 13:34:55', NULL, 97, 10, 14, 9, '2022-07-06 03:55:03', '2022-07-06 06:34:55', NULL, NULL),
(245, 1, 1, 2, 10, 39, NULL, NULL, 'Install GStarcad', 'Install GStarcad 2016', 'Install GStartcad 2016', '', '2022-07-06 10:55:28', '2022-07-06 13:35:39', NULL, 69, 4, 4, 9, '2022-07-06 03:55:28', '2022-07-06 06:35:39', NULL, NULL),
(246, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network-ok', '', '2022-07-07 08:05:22', '2022-07-08 07:25:04', NULL, NULL, NULL, NULL, 9, '2022-07-07 01:05:22', '2022-07-08 00:25:04', NULL, NULL),
(247, 1, 1, 2, 5, 22, NULL, NULL, 'Setting LAN di ruang perpus untuk karyawan baru', 'Setting LAN di ruang perpus untuk karyawan baru', 'Pasang Switch dan setting ip di pc', '', '2022-07-07 08:05:49', '2022-07-07 09:56:08', NULL, 86, 9, 9, 9, '2022-07-07 01:05:49', '2022-07-07 02:56:08', NULL, NULL),
(248, 1, 1, 2, 10, 40, NULL, NULL, 'Setting Signature di Outlook', 'Setting Signature di Outlook', 'Setting signature di outlook', '', '2022-07-07 14:19:34', '2022-07-07 14:23:14', NULL, 98, 6, 6, 9, '2022-07-07 07:19:34', '2022-07-07 07:23:14', NULL, NULL),
(249, 1, 1, 2, 10, 60, 46, NULL, 'Install WINRAR', 'Install WINRAR', 'Install WInrar 5', '', '2022-07-07 14:20:02', '2022-07-07 14:25:06', NULL, 30, 9, 9, 9, '2022-07-07 07:20:02', '2022-07-07 07:25:06', NULL, NULL),
(250, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-08 07:25:20', '2022-07-08 15:13:31', NULL, NULL, NULL, NULL, 9, '2022-07-08 00:25:20', '2022-07-08 08:13:31', NULL, NULL),
(251, 2, 3, 2, 25, NULL, NULL, NULL, 'Cek CCTV', 'Cek CCTV', 'Cek CCTV', '', '2022-07-08 07:27:09', '2022-07-08 09:16:03', NULL, NULL, NULL, NULL, 9, '2022-07-08 00:27:09', '2022-07-08 02:16:03', NULL, NULL),
(252, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Proyek Ibu Nadhira', 'Buka Akses Proyek Ibu Nadhira', 'Buka Akses Proyek Ibu Nadhira', '', '2022-07-08 09:16:34', '2022-07-08 09:56:17', NULL, 37, 9, 9, 9, '2022-07-08 02:16:34', '2022-07-08 02:56:17', NULL, NULL),
(253, 1, 1, 2, 4, 17, NULL, NULL, 'Buat Login User Baru', 'Buat Login User Baru', 'Buat user Annisa.Kirana', '', '2022-07-08 09:56:42', '2022-07-08 10:09:37', NULL, 99, 9, 10, 9, '2022-07-08 02:56:42', '2022-07-08 03:09:37', NULL, NULL),
(254, 1, 1, 2, 2, 1, 48, NULL, 'Add Email Karyawan Baru', 'Add Email Karyawan Baru', 'add email annisa.kirana@hadiprana.co.id', '', '2022-07-08 09:57:12', '2022-07-08 10:15:53', NULL, 99, 9, 10, 9, '2022-07-08 02:57:12', '2022-07-08 03:15:53', NULL, NULL),
(255, 2, 5, 2, 15, NULL, NULL, NULL, 'Konfigure Ulang WIFI Ruang Meeting Bulat', 'Konfigure Ulang WIFI Ruang Meeting Bulat', 'Setting Ulang Vlan port ruang meeting bulat', '', '2022-07-08 15:13:15', '2022-07-11 08:03:26', NULL, NULL, NULL, NULL, 9, '2022-07-08 08:13:15', '2022-07-11 01:03:26', NULL, NULL),
(256, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Daily Cek Server & network', '', '2022-07-11 08:03:44', '2022-07-12 08:49:52', NULL, NULL, NULL, NULL, 9, '2022-07-11 01:03:44', '2022-07-12 01:49:52', NULL, NULL),
(257, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Sesuaikan jam pc dengan jam server', '', '2022-07-11 08:34:30', '2022-07-11 08:37:55', NULL, 100, 4, 4, 9, '2022-07-11 01:34:30', '2022-07-11 01:37:55', NULL, NULL),
(258, 1, 1, 2, 10, 37, NULL, NULL, 'Autocad tidak bisa di buka', 'Autocad tidak bisa di buka karena komputer Hang', 'Restart PC, login dan coba buka cad kembali', '', '2022-07-11 09:15:18', '2022-07-11 09:15:43', NULL, 27, 9, 9, 7, '2022-07-11 02:15:18', '2022-07-11 02:15:43', NULL, NULL),
(259, 1, 1, 2, 10, 48, 40, NULL, 'Sketchup muncul bug split', 'Sketchup muncul bug split, model tidak bisa bergerak', 'Install sketchup 2020, install sketchup 2021 dan vray next 5, install plug in sketchup extension manager, dan coba kembali', '', '2022-07-11 11:39:39', '2022-07-11 11:51:51', NULL, 45, 9, 10, 7, '2022-07-11 04:39:39', '2022-07-11 04:51:51', NULL, NULL),
(260, 1, 1, 2, 6, 59, 45, NULL, 'Restore Data', 'M:\\PROPOSAL ARTWORK\\1 PROPOSAL\\2022\\GHJ Grand Cafe Balcony Sofa and Cushion\r\n\r\nNama File : Permintaan Estimasi Harga', 'Restore data', '', '2022-07-11 13:32:05', '2022-07-11 13:42:47', NULL, 33, 4, 4, 9, '2022-07-11 06:32:05', '2022-07-11 06:42:47', NULL, NULL),
(261, 1, 1, 2, 3, 58, 43, NULL, 'Setting laptop untuk meeting zoom di Ruang Bulat', 'Setting laptop untuk meeting zoom di Ruang Bulat', 'Setting laptop untuk meeting zoom di Ruang Bulat', '', '2022-07-11 13:32:34', '2022-07-11 14:24:00', NULL, 101, 3, 3, 9, '2022-07-11 06:32:34', '2022-07-11 07:24:00', NULL, NULL),
(262, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-12 08:50:11', '2022-07-12 15:13:10', NULL, NULL, NULL, NULL, 9, '2022-07-12 01:50:11', '2022-07-12 08:13:10', NULL, NULL),
(263, 1, 1, 2, 5, 22, NULL, NULL, 'Tidak connect ke file server', 'Tidak connect ke file server dari ruang posmo', 'Pasang kabel adaptor hub, dan setting IP address di laptop, coba test koneksi ke file server', '', '2022-07-12 09:47:48', '2022-07-12 10:26:36', NULL, 44, 9, 9, 7, '2022-07-12 02:47:48', '2022-07-12 03:26:36', NULL, NULL),
(264, 1, 1, 2, 10, 40, 31, NULL, 'Install Office MS Project', 'Install Office MS Project', 'Install MS Project 2010', '', '2022-07-12 10:27:16', '2022-07-12 10:30:34', NULL, 2, 9, 9, 7, '2022-07-12 03:27:16', '2022-07-12 03:30:34', NULL, NULL),
(265, 1, 2, 2, 10, 40, NULL, NULL, 'Tidak bisa buka file ms word', 'Tidak bisa buka file ms word', 'restart ms office', '', '2022-07-12 16:11:43', '2022-07-12 16:58:10', NULL, 67, 3, 3, 9, '2022-07-12 09:11:43', '2022-07-12 09:58:10', NULL, NULL),
(266, 1, 2, 2, 3, 58, 43, NULL, 'Layar Laptop tidak tampil di TV', 'Layar Laptop tidak tampil di TV', 'Setting duplicate layar', '', '2022-07-12 16:12:15', '2022-07-12 16:23:46', NULL, 7, 10, 13, 9, '2022-07-12 09:12:15', '2022-07-12 09:23:46', NULL, NULL),
(267, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-14 07:59:21', '2022-07-18 11:00:20', NULL, NULL, NULL, NULL, 9, '2022-07-14 00:59:21', '2022-07-18 04:00:20', NULL, NULL),
(268, 1, 1, 2, 9, 33, NULL, NULL, 'Tambah Quota File Transfer', 'Tambah Quota File Transfer', 'Tambah Quota 30 GB', '', '2022-07-14 08:00:07', '2022-07-14 08:18:29', NULL, 59, 9, 10, 9, '2022-07-14 01:00:07', '2022-07-14 01:18:29', NULL, NULL),
(269, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak Bisa Login', 'PC Tidak Bisa Login', 'Sesuaikan jam pc dengan jam server', '', '2022-07-14 08:18:50', '2022-07-14 08:20:46', NULL, 6, 8, 7, 9, '2022-07-14 01:18:50', '2022-07-14 01:20:46', NULL, NULL),
(270, 2, 3, 2, 26, NULL, NULL, NULL, 'Data Sparepart - penawaran', 'update sparepart dan penwaran', 'update', '', '2022-07-14 09:39:56', '2022-07-15 11:24:35', NULL, NULL, NULL, NULL, 6, '2022-07-14 02:39:56', '2022-07-15 04:24:35', NULL, NULL),
(271, 3, NULL, 3, 17, 61, NULL, NULL, 'Export Report', 'Export to Excel and PDF', NULL, NULL, '2022-07-14 12:47:06', '2022-07-18 14:00:19', NULL, NULL, NULL, NULL, NULL, '2022-07-14 05:47:06', '2022-07-18 07:00:19', NULL, NULL),
(272, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-07-18 09:36:12', '2022-07-18 09:36:55', NULL, 102, 3, 3, 7, '2022-07-18 02:36:12', '2022-07-18 02:36:55', NULL, NULL),
(273, 2, 3, 2, 26, NULL, NULL, NULL, 'Review Penaawaran', 'Review penawaran kebutuhan ruang founder', 'Review Polystudio, NUC dan Keyboard mouse untuk meeting founder', '', '2022-07-18 10:58:22', '2022-07-18 11:19:21', NULL, NULL, NULL, NULL, 6, '2022-07-18 03:58:22', '2022-07-18 04:19:21', NULL, NULL),
(274, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Daily Cek Server & Network', '', '2022-07-18 11:02:39', '2022-07-18 12:16:28', NULL, NULL, NULL, NULL, 9, '2022-07-18 04:02:39', '2022-07-18 05:16:28', NULL, NULL),
(275, 2, 3, 2, 24, NULL, NULL, NULL, 'UAT task', 'UAT aplikasi task', 'Jenis request type dapat diedit ketika statusnya sudah close(hal ini untuk bahan koreksi jika support salah dalam menentukan Incident atau request)', '', '2022-07-18 13:01:19', '2022-07-18 13:53:19', NULL, NULL, NULL, NULL, 6, '2022-07-18 06:01:19', '2022-07-18 06:53:19', NULL, NULL),
(276, 3, NULL, 2, 17, 55, NULL, NULL, 'Renewal kaspersky 2022', 'renew lisensi', 'Data Kaspersky antivirus sudah diperpanjang sampai dengan tahun 2023', '', '2022-07-18 13:29:39', '2022-08-05 13:24:23', NULL, NULL, NULL, NULL, NULL, '2022-07-18 06:29:39', '2022-08-05 06:24:23', NULL, NULL),
(277, 2, 3, 2, 26, NULL, NULL, NULL, 'Update Data Cad Arsitek dan prioritas upgrade PC', 'laporan untuk update lisensi cad departemen arsitek dan prioritas upgrade PC', 'terupdate', '', '2022-07-18 13:31:33', '2022-07-18 14:27:29', NULL, NULL, NULL, NULL, 6, '2022-07-18 06:31:33', '2022-07-18 07:27:29', NULL, NULL),
(278, 1, 1, 2, 9, 32, NULL, NULL, 'Buka Akses proyek di onedrive DnB', 'Buka Akses proyek di onedrive DnB', 'Buka Akses', '', '2022-07-18 13:47:43', '2022-07-18 14:00:10', NULL, 103, 3, 3, 9, '2022-07-18 06:47:43', '2022-07-18 07:00:10', NULL, NULL),
(279, 3, NULL, 2, 17, 61, NULL, NULL, 'Edit jenis pengaduan', 'Revisi agak user bisa melakukan edit jenis pengaduan apapun status activity nya', 'penambahan view dan refactor supportcontroller', '', '2022-07-18 14:20:49', '2022-07-20 16:00:28', NULL, NULL, NULL, NULL, NULL, '2022-07-18 07:20:49', '2022-07-20 09:00:28', NULL, NULL),
(280, 1, 2, 2, 7, 28, NULL, NULL, 'Tidak bisa print', 'Tidak bisa print dari ms word', 'add ulamg printer', '', '2022-07-18 15:28:21', '2022-07-18 15:56:01', NULL, 73, 10, 13, 9, '2022-07-18 08:28:21', '2022-07-18 08:56:01', NULL, NULL),
(281, 1, 1, 2, 5, 22, NULL, NULL, 'Setting LAN', 'Setting Ip donny ke lan logistik', 'sudah disetting dengn IP henry 192.168.1.39', '', '2022-07-19 09:40:25', '2022-07-19 10:20:03', NULL, 104, 10, 15, 6, '2022-07-19 02:40:25', '2022-07-19 03:20:03', NULL, NULL),
(282, 1, 1, 2, 9, 33, 20, NULL, 'Access', 'Akses ke fileserver pagi sore bogor', 'akses sudah ditambahkan ke 8. pagi sore bogor', '', '2022-07-19 10:30:58', '2022-07-19 10:34:02', NULL, 105, 9, 9, 6, '2022-07-19 03:30:58', '2022-07-19 03:34:02', NULL, NULL),
(283, 1, 1, 2, 10, 43, NULL, NULL, 'Drive C Full', 'Drive C Full', 'Pindahkan beberapa folder dari drive C ke drive D, lalu disk clean up', '', '2022-07-19 10:37:26', '2022-07-19 10:44:42', NULL, 106, 9, 10, 7, '2022-07-19 03:37:26', '2022-07-19 03:44:42', NULL, NULL),
(284, 1, 1, 2, 10, 43, NULL, NULL, 'Drive C Full', 'Drive C Full', 'Disk Clean UP Drive C, lalu klik adobe photoshop dan save ke my document', '', '2022-07-19 10:39:05', '2022-07-19 10:45:36', NULL, 107, 3, 3, 7, '2022-07-19 03:39:05', '2022-07-19 03:45:36', NULL, NULL),
(285, 1, 1, 2, 10, 38, 29, NULL, 'Tidak bisa browsing ke site tertentu', 'Tidak bisa browsing ke site tertentu', 'Pilih Advanced dan pilih stringfixer.com', '', '2022-07-19 10:42:06', '2022-07-19 10:43:53', NULL, 108, 3, 3, 7, '2022-07-19 03:42:06', '2022-07-19 03:43:53', NULL, NULL),
(286, 1, 1, 2, 9, 33, 20, NULL, 'Akses Fileserver', 'Akses file server perc2', 'Akses file Gunung Geulis Extend', '', '2022-07-19 15:23:05', '2022-07-19 15:25:47', NULL, 38, 9, 9, 6, '2022-07-19 08:23:05', '2022-07-19 08:25:47', NULL, NULL),
(287, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Cek Server & Network', '', '2022-07-20 09:14:58', '2022-07-21 14:17:11', NULL, NULL, NULL, NULL, 9, '2022-07-20 02:14:58', '2022-07-21 07:17:11', NULL, NULL),
(288, 1, 2, 2, 10, 37, 41, NULL, 'Licensi Cad Not Detect', 'Licensi Cad Not Detect', 'set license server ke 192.168.0.178', '', '2022-07-20 09:15:43', '2022-07-20 09:27:14', NULL, 105, 9, 9, 9, '2022-07-20 02:15:43', '2022-07-20 02:27:14', NULL, NULL),
(289, 1, 1, 2, 7, 28, NULL, NULL, 'Add Printer Donny ke PC', 'Add Printer Donny ke PC', 'add printer', '', '2022-07-20 09:17:01', '2022-07-20 09:37:19', NULL, 109, 10, 15, 9, '2022-07-20 02:17:01', '2022-07-20 02:37:19', NULL, NULL),
(290, 1, 1, 2, 3, 63, 50, NULL, 'Reset Admin Fingerprint', 'Reset Admin Fingerprint P207', 'reset pakai software attandance management', '', '2022-07-20 11:59:52', '2022-07-20 13:36:51', NULL, 110, 5, 5, 9, '2022-07-20 04:59:52', '2022-07-20 06:36:51', NULL, NULL),
(291, 1, 1, 2, 2, 1, 48, NULL, 'Buat Email user baru', 'Buat Email user baru Yoshua@hadiprana.co.id', 'buat email yoshua@hadiprana.co.id', '', '2022-07-20 13:37:29', '2022-07-20 14:36:35', NULL, 86, 9, 9, 9, '2022-07-20 06:37:29', '2022-07-20 07:36:35', NULL, NULL),
(292, 1, 1, 2, 10, 44, NULL, NULL, 'Tidak bisa buka pdf yang terzip', 'Tidak bisa buka pdf yang terzip', 'Setting 7zip, centang semua pilihan zip, buka file pdf yang yang terzip, ekstrak folder ke mu document, buka file pdf nya', NULL, '2022-07-20 14:51:23', '2022-07-20 14:54:19', NULL, 8, 10, 13, 7, '2022-07-20 07:51:23', '2022-07-20 08:53:25', NULL, NULL),
(294, 1, 1, 2, 10, 39, NULL, NULL, 'Tidak bisa buka gstarcad', 'Gstarcad tidak bisa terbuka', 'Aktivasi gstarcad kembali ke IP server 192.168.0.186', '', '2022-07-21 10:11:24', '2022-07-21 10:12:37', NULL, 34, 4, 4, 7, '2022-07-21 03:11:24', '2022-07-21 03:12:37', NULL, NULL),
(295, 1, 1, 2, 10, 39, NULL, NULL, 'Tidak bisa buka gstarcad', 'Tidak bisa buka gstarcad', 'Aktivasi ulang gstarcad 2016 nya', '', '2022-07-21 10:12:12', '2022-07-21 10:51:38', NULL, 2, 9, 9, 7, '2022-07-21 03:12:12', '2022-07-21 03:51:38', NULL, NULL),
(296, 1, 1, 2, 7, 28, NULL, NULL, 'Sharing printer ke PC Donny', 'Sharing printer ke PC Donny', 'Sharing Printer ke PC Donny', '', '2022-07-21 10:52:28', '2022-07-21 10:54:14', NULL, 58, 3, 3, 7, '2022-07-21 03:52:28', '2022-07-21 03:54:14', NULL, NULL),
(297, 1, 1, 2, 10, 37, 41, NULL, 'License CAD error', 'License CAD error', 'Setting DNS dan setting IP, buka cad kembali', '', '2022-07-21 11:10:59', '2022-07-21 11:15:31', NULL, 1, 9, 9, 7, '2022-07-21 04:10:59', '2022-07-21 04:15:31', NULL, NULL),
(298, 1, 1, 2, 1, NULL, NULL, NULL, 'Sharing Printer', 'Sharing Printer ke Epson L3150', 'Setting Creditial IP 192.168.2.3, masukin username : Admin-Artwork, dan password: hadiprana, lalu sharing printer, dan klik kanan connect printer Epson L3150', '', '2022-07-21 11:29:46', '2022-07-21 12:15:13', NULL, 40, 4, 4, 7, '2022-07-21 04:29:46', '2022-07-21 05:15:13', NULL, NULL),
(299, 3, NULL, 1, 17, 62, NULL, NULL, 'Modul Login - Landingpage', 'Pembuatan modul lanjutan , Login user dan landing page', NULL, '', '2022-07-21 13:22:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 06:22:55', '2022-07-21 06:22:55', NULL, NULL),
(300, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-07-21 14:17:26', '2022-07-21 16:02:56', NULL, NULL, NULL, NULL, 9, '2022-07-21 07:17:26', '2022-07-21 09:02:56', NULL, NULL),
(301, 1, 1, 2, 2, 1, 48, NULL, 'Buat Email user Prawidhana', 'Buat Email user Prawidhana', 'buat email prawidhana@hadiprana.co.id', '', '2022-07-21 14:18:03', '2022-07-21 14:22:59', NULL, 86, 9, 9, 9, '2022-07-21 07:18:03', '2022-07-21 07:22:59', NULL, NULL),
(302, 1, 1, 2, 10, 43, NULL, NULL, 'Install Archicad', 'Install Archicad', 'Install Archicad', '', '2022-07-21 14:19:00', '2022-07-21 14:30:30', NULL, 2, 9, 9, 9, '2022-07-21 07:19:00', '2022-07-21 07:30:30', NULL, NULL),
(303, 1, 2, 2, 10, 40, NULL, NULL, 'Office 365 t', 'office 365 tidak dapat login', 'update password user', '', '2022-07-22 08:58:28', '2022-07-22 09:04:27', NULL, 103, 3, 3, 6, '2022-07-22 01:58:28', '2022-07-22 02:04:27', NULL, NULL),
(304, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-07-22 09:32:49', '2022-07-22 11:43:23', NULL, NULL, NULL, NULL, 9, '2022-07-22 02:32:49', '2022-07-22 04:43:23', NULL, NULL),
(305, 1, 2, 2, 10, 37, 41, NULL, 'Tidak bisa buka Autocad ( License error )', 'Tidak bisa buka Autocad ( License error )', 'setting licpath autocad', '', '2022-07-22 09:33:31', '2022-07-22 09:39:14', NULL, 105, 9, 9, 9, '2022-07-22 02:33:31', '2022-07-22 02:39:14', NULL, NULL),
(306, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Crowne Plaza labuan bajo', 'Buka Akses Crowne Plaza labuan bajo', 'Buka Akses Server untuk jejen dan Agus', '', '2022-07-22 11:24:28', '2022-07-22 11:42:49', NULL, 12, 9, 9, 9, '2022-07-22 04:24:28', '2022-07-22 04:42:49', NULL, NULL),
(307, 1, 2, 2, 10, 40, NULL, NULL, 'Excel Not Responding', 'Excel Not Responding', 'close dari task manager', '', '2022-07-22 11:25:57', '2022-07-22 11:43:08', NULL, 111, 9, 10, 9, '2022-07-22 04:25:57', '2022-07-22 04:43:08', NULL, NULL),
(308, 1, 1, 2, 10, 43, NULL, NULL, 'Install Anydesk', 'Install Anydesk', 'Install Anydesk', '', '2022-07-22 13:32:29', '2022-07-22 14:03:00', NULL, 31, 4, 4, 9, '2022-07-22 06:32:29', '2022-07-22 07:03:00', NULL, NULL),
(309, 1, 1, 2, 3, 58, 42, NULL, 'Install Ulang Laptop Ganti SSD', 'Install Ulang Laptop Ganti SSD', 'install ulang laptop', '', '2022-07-22 14:04:06', '2022-07-22 15:56:20', NULL, 112, 9, 10, 9, '2022-07-22 07:04:06', '2022-07-22 08:56:20', NULL, NULL),
(310, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-07-25 08:44:50', '2022-07-25 11:22:55', NULL, NULL, NULL, NULL, 9, '2022-07-25 01:44:50', '2022-07-25 04:22:55', NULL, NULL),
(311, 1, 2, 2, 5, 22, NULL, NULL, 'Kabel Unplug', 'Kabel Unplug', 'pasang kabel ke outlet', '', '2022-07-25 08:57:33', '2022-07-25 10:48:36', NULL, 40, 4, 4, 9, '2022-07-25 01:57:33', '2022-07-25 03:48:36', NULL, NULL),
(312, 1, 2, 2, 10, 42, NULL, NULL, 'Tidak bisa masuk windows', 'Tidak bisa masuk windows', 'static pc dan restart', '', '2022-07-25 08:58:02', '2022-07-25 10:48:47', NULL, 18, 4, 4, 9, '2022-07-25 01:58:02', '2022-07-25 03:48:47', NULL, NULL),
(313, 1, 1, 2, 3, 63, 50, NULL, 'Setting Admin untuk Derry', 'Setting Admin untuk Derry', 'setting finger untuk derry', '', '2022-07-25 09:08:52', '2022-07-25 09:21:05', NULL, 110, 5, 5, 9, '2022-07-25 02:08:52', '2022-07-25 02:21:05', NULL, NULL),
(314, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-07-25 09:48:39', '2022-07-25 09:50:09', NULL, 113, 4, 4, 7, '2022-07-25 02:48:39', '2022-07-25 02:50:09', NULL, NULL),
(315, 1, 1, 2, 3, 9, 8, NULL, 'Monitor tidak bisa nyala', 'Monitor tidak bisa nyala', 'kencangkan kabel power monitor dan nyalakan monitor nya kembali', '', '2022-07-25 10:49:50', '2022-07-25 10:54:15', NULL, 114, 9, 10, 7, '2022-07-25 03:49:50', '2022-07-25 03:54:15', NULL, NULL),
(316, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Proyek casa jardin', 'Buka Akses Proyek casa jardin untuk budi sarwono dan sardi', 'Buka Akses Proyek casa jardin untuk budi sarwono dan sardi', '', '2022-07-25 14:55:18', '2022-07-25 15:12:12', NULL, 38, 9, 9, 9, '2022-07-25 07:55:18', '2022-07-25 08:12:12', NULL, NULL),
(317, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-07-26 08:35:34', '2022-07-26 08:40:45', NULL, 10, 9, 9, 7, '2022-07-26 01:35:34', '2022-07-26 01:40:45', NULL, NULL),
(318, 1, 1, 2, 5, 21, NULL, NULL, 'Tidak bisa connect ke internet', 'Tidak bisa connect ke internet', 'Restart PC, buka inet kembali', '', '2022-07-26 08:41:29', '2022-07-26 08:50:21', NULL, 34, 4, 4, 7, '2022-07-26 01:41:29', '2022-07-26 01:50:21', NULL, NULL),
(319, 1, 1, 2, 10, 46, NULL, NULL, 'Tidak bisa connect ke Anydesk', 'Tidak bisa connect ke Anydesk', 'Install Ulang Anydesk', '', '2022-07-26 08:51:08', '2022-07-26 08:54:40', NULL, 71, 9, 10, 7, '2022-07-26 01:51:08', '2022-07-26 01:54:40', NULL, NULL),
(320, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-07-26 09:08:58', '2022-07-26 09:31:30', NULL, 115, 9, 10, 7, '2022-07-26 02:08:58', '2022-07-26 02:31:30', NULL, NULL),
(321, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-07-26 09:12:19', '2022-07-26 16:48:19', NULL, NULL, NULL, NULL, 9, '2022-07-26 02:12:19', '2022-07-26 09:48:19', NULL, NULL),
(322, 1, 1, 2, 3, 58, 43, NULL, 'Setting Laptop untuk meeting zoom di ruang meeting Interior', 'Setting Laptop untuk meeting zoom di ruang meeting Interior', 'Setting laptop', '', '2022-07-26 09:22:59', '2022-07-26 09:27:13', NULL, 116, 9, 10, 9, '2022-07-26 02:22:59', '2022-07-26 02:27:13', NULL, NULL),
(323, 1, 1, 2, 3, 11, NULL, NULL, 'PC Tidak nyala', 'PC Tidak nyala', 'Sambungkan kabel power ke PC, dan kabel lan ke pc', '', '2022-07-26 09:32:12', '2022-07-26 09:34:45', NULL, 100, 4, 4, 7, '2022-07-26 02:32:12', '2022-07-26 02:34:45', NULL, NULL),
(324, 1, 1, 2, 10, 48, NULL, NULL, 'Tidak bisa save as skp', 'Tidak bisa save as skp', 'Upgrade SKP ver 2020', '', '2022-07-26 09:34:20', '2022-07-26 09:51:13', NULL, 27, 9, 9, 7, '2022-07-26 02:34:20', '2022-07-26 02:51:13', NULL, NULL),
(325, 2, 3, 2, 26, NULL, NULL, NULL, 'Data Sparepart', 'Update data sparepart', 'Update', '', '2022-07-26 10:03:14', '2022-07-26 10:49:52', NULL, NULL, NULL, NULL, 6, '2022-07-26 03:03:14', '2022-07-26 03:49:52', NULL, NULL),
(326, 1, 1, 2, 10, 46, NULL, NULL, 'Tidak connect ke Anydesk', 'Tidak connect ke Anydesk', 'Install Ulang Anydesk, masukan passwordnya, kemudian restart kembali pc nya', '', '2022-07-26 16:11:56', '2022-07-26 16:13:18', NULL, 46, 9, 10, 7, '2022-07-26 09:11:56', '2022-07-26 09:13:18', NULL, NULL),
(327, 1, 1, 2, 6, 59, 45, NULL, 'Restore RT Kencana Permai', 'Restore RT Kencana Permai', 'Restore RT Kencana Permai', '', '2022-07-26 16:33:41', '2022-07-26 16:47:59', NULL, 47, 9, 10, 9, '2022-07-26 09:33:41', '2022-07-26 09:47:59', NULL, NULL),
(328, 1, 1, 2, 27, NULL, NULL, NULL, 'Scanner tidak bisa digunakan', 'Scanner tidak bisa digunakan', 'Restart PC dan Restart Printer, coba scan kembali', '', '2022-07-27 09:12:02', '2022-07-27 09:13:59', NULL, 36, 4, 4, 7, '2022-07-27 02:12:02', '2022-07-27 02:13:59', NULL, NULL),
(329, 1, 1, 2, 5, 22, NULL, NULL, 'Tidak bisa connect ke file server', 'Tidak bisa connect ke file server di ruang meeting interior', 'Ganti kabel lan yg lama dengan kabel lan yang lain di laptop dell', '', '2022-07-27 09:12:58', '2022-07-27 09:13:37', NULL, 47, 9, 10, 7, '2022-07-27 02:12:58', '2022-07-27 02:13:37', NULL, NULL),
(330, 1, 2, 2, 7, 28, NULL, NULL, 'tidak bisa print', 'tidak bisa [rint ke L1300', 'Restart Print server 192.168.2.25', '', '2022-07-27 10:50:44', '2022-07-27 11:14:11', NULL, 48, 4, 4, 6, '2022-07-27 03:50:44', '2022-07-27 04:14:11', NULL, NULL),
(331, 1, 1, 2, 7, 27, NULL, NULL, 'Sharing Printer Epson L3150 dan L1300', 'Sharing Printer Epson L3150 dan L1300', 'Setting dan Sharing Printer Epson L3150 dan Epson L1300', '', '2022-07-27 12:46:41', '2022-07-27 12:48:07', NULL, 48, 4, 4, 7, '2022-07-27 05:46:41', '2022-07-27 05:48:07', NULL, NULL),
(332, 1, 1, 2, 9, 33, 20, NULL, 'Akses', 'Buka akses crown labuan bajo', 'sudah dimasukan dalam akses proyek Crown Labuan Bajo', '', '2022-07-27 13:38:35', '2022-07-27 14:21:09', NULL, 9, 9, 9, 6, '2022-07-27 06:38:35', '2022-07-27 07:21:09', NULL, NULL),
(333, 1, 1, 2, 9, 33, NULL, NULL, 'Tidak bisa masuk ke file server', 'Tidak bisa masuk ke file server', 'setting IP Address, mapping file server (File Transfer, dan Proyek Perencanaan 2)', '', '2022-07-28 09:29:32', '2022-07-28 09:36:29', NULL, 117, 9, 10, 7, '2022-07-28 02:29:32', '2022-07-28 02:36:29', NULL, NULL),
(334, 1, 1, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke wifi', 'Tidak bisa connect ke wifi', 'Restart Wifi, dan coba wifi kembali, buka aplikasi zoom', '', '2022-07-28 09:30:26', '2022-07-28 09:36:58', NULL, 16, 9, 10, 7, '2022-07-28 02:30:26', '2022-07-28 02:36:58', NULL, NULL),
(335, 1, 1, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke wifi', 'Tidak bisa connect ke wifi', 'Disconnect ke Wifi, dan connect wifi kembali, buka aplikasi zoom', '', '2022-07-28 09:34:37', '2022-07-28 09:39:13', NULL, 28, 9, 10, 7, '2022-07-28 02:34:37', '2022-07-28 02:39:13', NULL, NULL),
(336, 1, 1, 2, 10, 48, 39, NULL, 'Upgrade Sketch Up', 'upgrade dari 2016', 'upgrade ke versi 2022', '', '2022-07-28 13:48:02', '2022-07-28 14:01:52', NULL, 118, 9, 10, 6, '2022-07-28 06:48:02', '2022-07-28 07:01:52', NULL, NULL),
(337, 1, 2, 2, 3, 13, 14, NULL, 'Tidak berfungsi', 'Scanner tidak dapat berfungsi', 'Klik – Start.\r\nJenis – Services.\r\nTekan – Enter.\r\nSetelah jendela Layanan muncul, gulir ke bawah dan temukan – Windows Image Acquisition service (WIA).\r\nKlik kanan pada layanan ini dan pilih – Properties.\r\nKlik tarik-turun untuk Startup type.\r\nPilih – Automatic.\r\nDi bawah Status layanan, klik – Start.\r\nPilih Apply oleh OK.', '', '2022-07-29 13:03:56', '2022-07-29 13:17:02', NULL, 36, 4, 4, 6, '2022-07-29 06:03:56', '2022-07-29 06:17:02', NULL, NULL),
(338, 1, 1, 2, 10, 36, 27, NULL, 'Upgrade Antivirus Kaspersky', 'Upgrade Antivirus Kaspersky', 'Install Kaspersky Antivirus ver 11', '', '2022-07-29 13:47:32', '2022-07-29 15:30:53', NULL, 71, 9, 10, 7, '2022-07-29 06:47:32', '2022-07-29 08:30:53', NULL, NULL),
(339, 1, 1, 2, 9, 33, 20, NULL, 'Tidak bisa connect ke file server', 'Tidak bisa connect ke file server', 'Setting Maping File Server', '', '2022-07-29 13:49:14', '2022-07-29 15:31:18', NULL, 99, 9, 10, 7, '2022-07-29 06:49:14', '2022-07-29 08:31:18', NULL, NULL),
(340, 1, 1, 2, 9, 33, 20, NULL, 'Tidak connect ke file server', 'Laptop Asus Tidak bisa connect ke file server', 'Setting mapping file transfer, mapping proyek perencanaan', '', '2022-08-01 09:05:50', '2022-08-01 09:13:17', NULL, 3, 9, 9, 7, '2022-08-01 02:05:50', '2022-08-01 02:13:17', NULL, NULL),
(341, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke windows', 'Tidak bisa login ke windows', 'Setting adjust and time properties sesuai dengan server active directori', '', '2022-08-01 09:13:40', '2022-08-01 09:17:38', NULL, 10, 9, 9, 7, '2022-08-01 02:13:40', '2022-08-01 02:17:38', NULL, NULL),
(342, 2, 3, 2, 26, NULL, NULL, NULL, 'Laporan Untuk Audit Internal', 'Laporan Audir januari - juli 2022', 'laporan sampai denga Juli 2022', '', '2022-08-01 10:02:44', '2022-08-01 16:02:21', NULL, NULL, NULL, NULL, 6, '2022-08-01 03:02:44', '2022-08-01 09:02:21', NULL, NULL),
(343, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-08-01 12:17:09', '2022-08-01 14:33:24', NULL, NULL, NULL, NULL, 9, '2022-08-01 05:17:09', '2022-08-01 07:33:24', NULL, NULL),
(344, 1, 1, 2, 3, 58, 43, NULL, 'Setting Laptop ke Infocus', 'Setting Laptop ke Infocus di Andrawina', 'Setting Laptop ke Infocus di Andrawina', '', '2022-08-01 12:18:08', '2022-08-01 13:12:45', NULL, 18, 4, 4, 9, '2022-08-01 05:18:08', '2022-08-01 06:12:45', NULL, NULL),
(345, 1, 1, 2, 10, NULL, NULL, NULL, 'Install Software Di Laptop', 'Install Software Cad,Nitro,Sketchup, Diallux,Photoshop Di Laptop', 'Install Software Cad,Nitro,Sketchup, Diallux,Photoshop', '', '2022-08-01 12:19:01', '2022-08-01 14:33:42', NULL, 55, 9, 10, 9, '2022-08-01 05:19:01', '2022-08-01 07:33:42', NULL, NULL),
(346, 2, 4, 2, 15, NULL, NULL, NULL, 'Setting kabel LAN di Ruang Artwork', 'Setting dan penarikan kabel LAN di Ruang Artwork setelah relayout', 'Setting kabel LAN di Ruang Artwork', '', '2022-08-01 12:19:45', '2022-08-01 13:51:46', NULL, NULL, NULL, NULL, 9, '2022-08-01 05:19:45', '2022-08-01 06:51:46', NULL, NULL),
(347, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Cek Server & Network', '', '2022-08-02 07:32:29', '2022-08-02 11:35:15', NULL, NULL, NULL, NULL, 9, '2022-08-02 00:32:29', '2022-08-02 04:35:15', NULL, NULL),
(348, 2, 3, 2, 26, NULL, NULL, NULL, 'Laporan Untuk Audit Internal', 'Melanjutkan laporan IT 2022 bagian downtime server', 'Update laporan IT 2022 + data Downtime server 2022', '', '2022-08-02 09:13:53', '2022-08-02 11:28:25', NULL, NULL, NULL, NULL, 6, '2022-08-02 02:13:53', '2022-08-02 04:28:25', NULL, NULL),
(349, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses Server Proyek Pagi Sore untuk PC Aji', 'Buka Akses Server Proyek Pagi Sore untuk PC Aji', 'Buka Akses Server Proyek Pagi Sore untuk PC Aji', '', '2022-08-02 10:37:39', '2022-08-02 10:41:11', NULL, 105, 9, 9, 9, '2022-08-02 03:37:39', '2022-08-02 03:41:11', NULL, NULL),
(350, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & network', 'Daily Cek Server & network', 'Cek Server & network', '', '2022-08-03 08:30:10', '2022-08-04 09:22:08', NULL, NULL, NULL, NULL, 9, '2022-08-03 01:30:10', '2022-08-04 02:22:08', NULL, NULL),
(351, 1, 2, 2, 4, 17, NULL, NULL, 'PC Tidak bisa Login', 'PC Tidak bisa Login', 'Set jam pc dengan jam server', '', '2022-08-03 08:30:39', '2022-08-03 08:33:12', NULL, 10, 9, 9, 9, '2022-08-03 01:30:39', '2022-08-03 01:33:12', NULL, NULL),
(352, 1, 2, 2, 3, 9, 9, NULL, 'Monitor tidak keluar gambar', 'Monitor tidak keluar gambar', 'power monitor terlepas- pasang kembali', '', '2022-08-03 09:18:49', '2022-08-03 09:40:34', NULL, 49, 9, 10, 9, '2022-08-03 02:18:49', '2022-08-03 02:40:34', NULL, NULL),
(353, 1, 2, 2, 3, 58, 43, NULL, 'Tidak keluar suara saat zoom', 'Tidak keluar suara saat zoom', 'set speaker unmute', '', '2022-08-03 09:44:18', '2022-08-03 09:52:57', NULL, 55, 9, 10, 9, '2022-08-03 02:44:18', '2022-08-03 02:52:57', NULL, NULL),
(354, 1, 2, 2, 5, 21, NULL, NULL, 'Tidak konek ke internet di tab', 'Tidak konek ke internet di tab', 'forget wifi dan connect ke studio arsitek', '', '2022-08-03 09:53:28', '2022-08-03 10:18:15', NULL, 3, 9, 9, 9, '2022-08-03 02:53:28', '2022-08-03 03:18:15', NULL, NULL),
(355, 1, 2, 2, 2, 1, NULL, NULL, 'Add Email Whitelist', 'Add Email Whitelist paramountenterprise.co.id', 'Add Email Whitelist paramountenterprise.co.id', '', '2022-08-03 10:27:57', '2022-08-03 10:42:24', NULL, 116, 9, 10, 9, '2022-08-03 03:27:57', '2022-08-03 03:42:24', NULL, NULL),
(356, 1, 1, 2, 7, 27, NULL, NULL, 'Tidak bisa mengeprint', 'Tidak bisa mengeprint', 'Install Printer Epson L3150 dan Epson 1300', '', '2022-08-03 11:01:01', '2022-08-03 11:39:06', NULL, 83, 4, 4, 7, '2022-08-03 04:01:01', '2022-08-03 04:39:06', NULL, NULL),
(357, 1, 1, 2, 2, 3, NULL, NULL, 'Tidak bisa connect ke email', 'Tidak bisa connect ke email Bu Ika', 'Signout User Rani, send and receive email Bu Ika di PC Rani', '', '2022-08-03 11:02:58', '2022-08-03 11:40:35', NULL, 36, 4, 4, 7, '2022-08-03 04:02:58', '2022-08-03 04:40:35', NULL, NULL),
(358, 1, 1, 2, 10, NULL, NULL, NULL, 'Install MS Project', 'Install MS Project', 'Install MS Project', '', '2022-08-03 11:04:46', '2022-08-03 11:40:47', NULL, 59, 9, 10, 7, '2022-08-03 04:04:46', '2022-08-03 04:40:47', NULL, NULL),
(359, 3, NULL, 2, 17, 61, NULL, NULL, 'Created By tidak sesuai', 'Kolom Created By tidak sesuai ( Empty dan hardcode \"created b\")\r\npada report Support dan Project', 'RFT - eady for testing', '', '2022-08-03 11:33:12', '2022-08-05 14:44:56', NULL, NULL, NULL, NULL, NULL, '2022-08-03 04:33:12', '2022-08-05 07:44:56', NULL, '10'),
(360, 1, 1, 2, 10, 40, 31, NULL, 'Install MS Project', 'Install MS Project', 'Install MS Project', '', '2022-08-03 11:42:05', '2022-08-03 11:42:20', NULL, 119, 9, 10, 7, '2022-08-03 04:42:05', '2022-08-03 04:42:20', NULL, NULL),
(361, 1, 1, 2, 10, 39, NULL, NULL, 'Tidak bisa bloking gambar', 'Tidak bisa bloking gambar', 'Install Ulang Gstarcad 2016, dan Upgrade ke Gstarcad 2017', '', '2022-08-03 11:42:48', '2022-08-03 11:46:04', NULL, 41, 3, 3, 7, '2022-08-03 04:42:48', '2022-08-03 04:46:04', NULL, NULL),
(362, 1, 1, 2, 9, 33, NULL, NULL, 'Mapping Drive File Transfer', 'Mapping Drive File Transfer', 'Mapping Drive File Transfer', '', '2022-08-03 14:01:44', '2022-08-03 14:05:14', NULL, 95, 9, 10, 9, '2022-08-03 07:01:44', '2022-08-03 07:05:14', NULL, NULL),
(363, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Cek Server & Network', '', '2022-08-04 09:21:58', '2022-08-04 12:40:29', NULL, NULL, NULL, NULL, 9, '2022-08-04 02:21:58', '2022-08-04 05:40:29', NULL, NULL),
(364, 1, 1, 2, 10, 46, NULL, NULL, 'Install Anydesk', 'Install Anydesk', 'Install Anydesk, assign password', '', '2022-08-04 09:46:05', '2022-08-04 09:47:43', NULL, 73, 10, 13, 7, '2022-08-04 02:46:05', '2022-08-04 02:47:43', NULL, NULL);
INSERT INTO `activity` (`id`, `activitytype_id`, `activitysubtype_id`, `activitystatus_id`, `tasktype_id`, `tasksubtype1_id`, `tasksubtype2_id`, `name`, `subject`, `description`, `resolution`, `image`, `startdt`, `enddt`, `targetdt`, `enduser_id`, `enduserdept_id`, `endusersubdept_id`, `technician_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(365, 1, 1, 2, 4, 17, NULL, NULL, 'Tidak bisa login ke anydesk', 'Tidak bisa login ke anydesk', 'login ke windows dan sign in ke anydesk', '', '2022-08-04 09:47:20', '2022-08-04 09:48:19', NULL, 114, 9, 10, 7, '2022-08-04 02:47:20', '2022-08-04 02:48:19', NULL, NULL),
(366, 1, 2, 2, 10, 43, NULL, NULL, 'Monitor tidak tampil', 'Monitor tidak tampil', 'Driver vga hilang jadi download driver vga Nvidia Geforce GT 430', '', '2022-08-04 10:16:39', '2022-08-04 10:27:11', NULL, 120, 3, 3, 7, '2022-08-04 03:16:39', '2022-08-04 03:27:11', NULL, NULL),
(367, 1, 1, 2, 10, 43, NULL, NULL, 'Minta kode OTP Zoom INT SPL Hadiprana', 'Minta kode OTP Zoom INT SPL Hadiprana', 'buka webmail intspl.zoom@hadiprana.co.id, masukin password : *1nt#1420, dan copy OTP zoom, login ke meeting zoom', '', '2022-08-04 10:17:30', '2022-08-04 10:24:45', NULL, 11, 9, 10, 7, '2022-08-04 03:17:30', '2022-08-04 03:24:45', NULL, NULL),
(368, 1, 2, 2, 3, 9, 9, NULL, 'Monitor keluar gambar gembok', 'Monitor keluar gambar gembok', 'unlock OSD Display', '', '2022-08-04 12:41:11', '2022-08-04 12:52:01', NULL, 97, 10, 14, 9, '2022-08-04 05:41:11', '2022-08-04 05:52:01', NULL, NULL),
(369, 1, 1, 2, 7, 29, NULL, NULL, 'Ganti Toner Printer Arsitek', 'Ganti Toner Printer Arsitek', 'Ganti Toner Printer Arsitek HP93A', '', '2022-08-04 14:54:40', '2022-08-04 15:04:08', NULL, 86, 9, 9, 9, '2022-08-04 07:54:40', '2022-08-04 08:04:08', NULL, NULL),
(370, 2, 3, 2, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', 'Cek Server & Network', '', '2022-08-05 08:49:43', '2022-08-05 13:22:10', NULL, NULL, NULL, NULL, 9, '2022-08-05 01:49:43', '2022-08-05 06:22:10', NULL, NULL),
(371, 1, 1, 2, 7, 29, NULL, NULL, 'Ada notifikasi reorder Tinta Hitam', 'Ada notifikasi reorder Tinta Hitam', 'Toner Baru diantar CS Astragraphia', '', '2022-08-05 10:05:15', '2022-08-08 10:10:53', NULL, 89, 9, 10, 7, '2022-08-05 03:05:15', '2022-08-08 03:10:53', NULL, '7'),
(372, 1, 2, 2, 5, 22, NULL, NULL, 'Kabel Unplug', 'Kabel Unplug', 'pasang kabel ke outlet', '', '2022-08-05 10:44:14', '2022-08-05 10:53:43', NULL, 40, 4, 4, 9, '2022-08-05 03:44:14', '2022-08-05 03:53:43', NULL, NULL),
(373, 1, 2, 2, 3, 64, NULL, NULL, 'PC Tidak Bisa Masuk Windows', 'PC Tidak Bisa Masuk Windows', 'safe mode dan install ulang driver vga', '', '2022-08-05 11:53:36', '2022-08-05 14:08:41', NULL, 121, 9, 10, 9, '2022-08-05 04:53:36', '2022-08-05 07:08:41', NULL, '9'),
(374, 1, 1, 2, 10, 43, NULL, NULL, 'Downloader Youtube', 'Downloader Youtube', 'use y2mate.com', '', '2022-08-05 13:32:39', '2022-08-05 13:40:59', NULL, 122, 9, 10, 9, '2022-08-05 06:32:39', '2022-08-05 06:40:59', NULL, '9'),
(375, 1, 1, 2, 9, 33, 20, NULL, 'Buka Akses PLTU Suralaya', 'Buka Akses PLTU Suralaya', 'Buka Akses PLTU Suralaya', '', '2022-08-05 13:33:04', '2022-08-05 13:35:57', NULL, 105, 9, 9, 9, '2022-08-05 06:33:04', '2022-08-05 06:35:57', NULL, NULL),
(377, 2, 3, 1, 12, NULL, NULL, NULL, 'tes created by', 'tes created by', NULL, '', '2022-08-05 14:01:47', NULL, NULL, NULL, NULL, NULL, 6, '2022-08-05 07:01:47', '2022-08-05 07:01:47', '10', NULL),
(378, 1, 2, 2, 5, 24, NULL, NULL, 'Tidak bisa connect ke wifi di laptop Zephyrus Arsitek', 'Tidak bisa connect ke wifi di laptop Zephyrus Arsitek', 'disable dan enable WIFI di laptop', '', '2022-08-08 09:40:55', '2022-08-08 10:13:55', NULL, 3, 9, 9, 9, '2022-08-08 02:40:55', '2022-08-08 03:13:55', '9', '9'),
(379, 1, 1, 2, 10, 48, 39, NULL, 'Upgrade Sketchup di Laptop Interior', 'Upgrade Sketchup di Laptop Interior', 'upgrade sketchu 2018 ke 2020', '', '2022-08-08 09:42:46', '2022-08-08 10:14:41', NULL, 92, 9, 10, 9, '2022-08-08 02:42:46', '2022-08-08 03:14:41', '9', '9'),
(380, 2, 3, 1, 12, NULL, NULL, NULL, 'Daily Cek Server & Network', 'Daily Cek Server & Network', NULL, '', '2022-08-08 09:43:05', NULL, NULL, NULL, NULL, NULL, 9, '2022-08-08 02:43:05', '2022-08-08 02:43:05', '9', NULL),
(381, 1, 1, 2, 3, 6, NULL, NULL, 'HDD Penuh', 'HDD Penuh', 'Ganti dengan SSD WD 1 TB', '', '2022-08-08 10:11:35', '2022-08-08 11:51:38', NULL, 121, 9, 10, 7, '2022-08-08 03:11:35', '2022-08-08 04:51:38', '7', '7'),
(382, 1, 1, 2, 10, 43, NULL, NULL, 'Whatsapp expired', 'Whatsapp expired', 'upgrade whatsapp app', '', '2022-08-08 10:14:23', '2022-08-08 11:11:11', NULL, 92, 9, 10, 9, '2022-08-08 03:14:23', '2022-08-08 04:11:11', '9', '9'),
(383, 2, 3, 2, 26, NULL, NULL, NULL, 'Data Sparepart', 'update data sparepart', 'update data sparepart + penawaran', '', '2022-08-08 11:17:43', '2022-08-08 11:31:48', NULL, NULL, NULL, NULL, 6, '2022-08-08 04:17:43', '2022-08-08 04:31:48', '6', '6'),
(384, 2, 3, 2, 26, NULL, NULL, NULL, 'Budget PC Drafter Arsitek', 'pembuatan rencana budget untuk drafter dan designer Arsitek', 'Tinggal harga PC designer yang harus di input', '', '2022-08-08 12:03:23', '2022-08-08 14:00:10', NULL, NULL, NULL, NULL, 6, '2022-08-08 05:03:24', '2022-08-08 07:00:10', '6', '6'),
(385, 1, 1, 2, 10, 36, 27, NULL, 'Update License Key', 'Update License Key Antivirus', 'Masukin license key ke antivirus kaspersky', '', '2022-08-08 14:54:25', '2022-08-08 14:54:55', NULL, 123, 9, 10, 7, '2022-08-08 07:54:25', '2022-08-08 07:54:55', '7', '7');

-- --------------------------------------------------------

--
-- Table structure for table `activitystatus`
--

CREATE TABLE `activitystatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activitystatus`
--

INSERT INTO `activitystatus` (`id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Open', 'Open', NULL, 10, 1, NULL, NULL),
(2, 'Close', 'Close', NULL, 20, 1, NULL, NULL),
(3, 'Pending', 'Pending', NULL, 30, 1, NULL, NULL),
(4, 'Cancel', 'Cancel', NULL, 40, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activitysubtype`
--

CREATE TABLE `activitysubtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `activitytype_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activitysubtype`
--

INSERT INTO `activitysubtype` (`id`, `activitytype_id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Request', 'Request', NULL, 10, 1, NULL, NULL),
(2, 1, 'Incident', 'Incident', NULL, 20, 1, NULL, NULL),
(3, 2, 'Reguler', 'Reguler', NULL, 30, 1, NULL, NULL),
(4, 2, 'Request', 'Request', NULL, 40, 1, NULL, NULL),
(5, 2, 'Incident', 'Incident', NULL, 50, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activitytype`
--

CREATE TABLE `activitytype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activitytype`
--

INSERT INTO `activitytype` (`id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SUPPORT', 'Support Hardware, Software/Aplikasi, Jaringan, Troubleshoot, Request User', NULL, 10, 1, NULL, NULL),
(2, 'MAINTENANCE ', 'Perawatan Hardware, Software/Aplikasi dan Jaringan', NULL, 20, 1, NULL, NULL),
(3, 'PROJECT ', 'Project Hardware, Software/Aplikasi dan Networking', NULL, 30, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'tsk', 'Tasksheet', 'Task Management System', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `app_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bizunit`
--

CREATE TABLE `bizunit` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bloodtype`
--

CREATE TABLE `bloodtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bloodtype`
--

INSERT INTO `bloodtype` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A', 'A', 'A', 'A', 10, 1, NULL, NULL),
(2, 'B', 'B', 'B', 'B', 20, 1, NULL, NULL),
(3, 'AB', 'AB', 'AB', 'AB', 30, 1, NULL, NULL),
(4, 'O', 'O', 'O', 'O', 40, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ACCENT', 'Accent', 'Accent', 'Accent', 10, 1, NULL, NULL),
(2, 'BALI', 'Bali', 'Bali', 'Bali', 20, 1, NULL, NULL),
(3, 'GCH', 'Graha Cipta Hadiprana', 'Graha Cipta Hadiprana', 'Graha Cipta Hadiprana', 30, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MAN', 'Manajemen', 'Manajemen', 'Manajemen', 10, 1, NULL, NULL),
(2, 'DIR', 'Board Of Director', 'Direksi', 'Direksi', 20, 1, NULL, NULL),
(3, 'DNB', 'Accent', 'Accent', 'Accent', 30, 1, NULL, NULL),
(4, 'ART', 'Artwork', 'Artwork', 'Artwork', 40, 1, NULL, NULL),
(5, 'PLK', 'Disain and Build', 'Disain and Build', 'Disain and Build', 50, 1, NULL, NULL),
(6, 'KEU', 'Direktorat Keuangan', 'Direktorat Keuangan', 'Direktorat Keuangan', 60, 1, NULL, NULL),
(7, 'UMUM', 'Legal Corporate', 'Legal Corporate', 'Legal Corporate', 70, 1, NULL, NULL),
(8, 'HRD', 'SDM dan Umum', 'SDM dan Umum', 'SDM dan Umum', 80, 1, NULL, NULL),
(9, 'PRC', 'Perencanaan', 'Perencanaan', 'Perencanaan', 90, 1, NULL, NULL),
(10, 'SUP', 'Support', 'Support', 'Support', 100, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SMA', 'SMA', 'SMA', 'Sekolah Menengah Atas', 10, 1, NULL, NULL),
(2, 'SMK', 'SMK', 'SMK', 'Sekolah Menengah Kejuruan', 20, 1, NULL, NULL),
(3, 'D1', 'D1', 'D1', 'Ahli Pratama', 30, 1, NULL, NULL),
(4, 'D2', 'D2', 'D2', 'Ahli Muda', 40, 1, NULL, NULL),
(5, 'D3', 'D3', 'D3', 'Ahli Madya', 50, 1, NULL, NULL),
(6, 'S1', 'S1', 'S1', 'Sarjana', 60, 1, NULL, NULL),
(7, 'S2', 'S2', 'S2', 'Magister', 70, 1, NULL, NULL),
(8, 'S3', 'S3', 'S3', 'Doctor', 80, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noabsen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_dt` datetime DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annleave_balance` int(11) DEFAULT NULL,
  `annleave_lastdt` datetime DEFAULT NULL,
  `sabbatical_balance` int(11) DEFAULT NULL,
  `sabbatical_lastdt` datetime DEFAULT NULL,
  `join_dt` datetime DEFAULT NULL,
  `probstart_dt` datetime DEFAULT NULL,
  `probend_dt` datetime DEFAULT NULL,
  `contstart_dt` datetime DEFAULT NULL,
  `contend_dt` datetime DEFAULT NULL,
  `empstatus_id` int(11) DEFAULT NULL,
  `emptype_id` int(11) DEFAULT NULL,
  `inactivetype_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `superior_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `subdept_id` int(11) DEFAULT NULL,
  `bizunit_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_id` int(11) DEFAULT NULL,
  `bloodtype_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_province_id` int(11) DEFAULT NULL,
  `ktp_city_id` int(11) DEFAULT NULL,
  `ktp_street1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_street3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_province_id` int(11) DEFAULT NULL,
  `dom_city_id` int(11) DEFAULT NULL,
  `dom_street1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_street3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_accountname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user_id`, `nik`, `noabsen`, `name`, `birth_dt`, `birth_place`, `image`, `annleave_balance`, `annleave_lastdt`, `sabbatical_balance`, `sabbatical_lastdt`, `join_dt`, `probstart_dt`, `probend_dt`, `contstart_dt`, `contend_dt`, `empstatus_id`, `emptype_id`, `inactivetype_id`, `job_id`, `superior_id`, `branch_id`, `dept_id`, `subdept_id`, `bizunit_id`, `level_id`, `gender_id`, `marital_id`, `bloodtype_id`, `religion_id`, `nationality_id`, `education_id`, `phone1`, `phone2`, `phone3`, `cellphone1`, `cellphone2`, `cellphone3`, `whatsapp1`, `whatsapp2`, `whatsapp3`, `email`, `ktp_number`, `ktp_province_id`, `ktp_city_id`, `ktp_street1`, `ktp_street2`, `ktp_street3`, `ktp_postal`, `dom_province_id`, `dom_city_id`, `dom_street1`, `dom_street2`, `dom_street3`, `bank_id`, `bank_account`, `bank_accountname`, `twitter`, `facebook`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, NULL, '000001', NULL, 'Andhika Perdana', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 06:06:56', '2022-05-09 06:06:56'),
(2, NULL, '000002', NULL, 'Firdause Santiadjie', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 01:35:06', '2022-05-12 01:35:06'),
(3, NULL, '000003', NULL, 'Arianto Wibowo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 02:53:48', '2022-05-12 02:53:48'),
(4, NULL, NULL, NULL, 'Dede Adang K', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, NULL, 8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:12:03', '2022-05-13 02:12:03'),
(5, NULL, NULL, NULL, 'Juli Purnomo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:12:28', '2022-07-01 02:16:20'),
(6, NULL, NULL, NULL, 'Nanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:12:55', '2022-07-01 02:16:06'),
(7, NULL, NULL, NULL, 'Ika Handayani', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:13:44', '2022-05-13 02:13:44'),
(8, NULL, NULL, NULL, 'Kinanti Puteri', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:22:26', '2022-05-13 02:22:26'),
(9, NULL, NULL, NULL, 'Agus Budianto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:29:42', '2022-05-13 02:32:10'),
(10, NULL, NULL, NULL, 'Naufal Ramansyah', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:42:00', '2022-05-13 02:42:00'),
(11, NULL, NULL, NULL, 'Joel Constantin', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:43:26', '2022-05-13 02:43:26'),
(12, NULL, NULL, NULL, 'Jejen Suwarnas', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:45:23', '2022-05-13 02:45:23'),
(13, NULL, NULL, NULL, 'Iwan Kristiyanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 03:04:07', '2022-05-13 03:04:07'),
(14, NULL, NULL, NULL, 'Zaid Nur Ihsan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 03:06:08', '2022-05-13 03:06:08'),
(15, NULL, NULL, NULL, 'Yoga Budihartamto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 03:22:30', '2022-05-13 03:22:30'),
(16, NULL, NULL, NULL, 'Twiceastian Fastiary', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 03:40:54', '2022-05-13 03:40:54'),
(17, NULL, NULL, NULL, 'Vanda Warsita', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 03:41:32', '2022-05-13 03:41:32'),
(18, NULL, NULL, NULL, 'Adinda Alisa', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 02:17:41', '2022-05-17 02:17:41'),
(19, NULL, NULL, NULL, 'Tri Murdono', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 02:30:47', '2022-05-17 02:30:47'),
(20, NULL, NULL, NULL, 'Ika Marthawati', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 03:47:06', '2022-05-17 03:47:06'),
(21, NULL, NULL, NULL, 'Tanya Djohan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 02:24:07', '2022-05-18 02:24:07'),
(22, NULL, NULL, NULL, 'Monica Tendy', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 02:24:57', '2022-05-18 02:24:57'),
(23, NULL, NULL, NULL, 'Muhammad  Riski Alvin', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 05:52:34', '2022-05-18 05:52:34'),
(24, NULL, NULL, NULL, 'Jihad Athoillah', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 05:56:15', '2022-06-20 04:21:59'),
(25, NULL, NULL, NULL, 'Siti Rahmawati', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 06:02:53', '2022-06-20 04:20:27'),
(26, NULL, NULL, NULL, 'Supriyanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 06:04:24', '2022-06-20 04:18:54'),
(27, NULL, NULL, NULL, 'Achmad Tonny', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 06:07:51', '2022-05-18 06:07:51'),
(28, NULL, NULL, NULL, 'Wira Azareel', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 02:11:18', '2022-05-19 02:11:18'),
(29, NULL, NULL, NULL, 'Dwi Ferdian', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 04:03:33', '2022-06-20 05:02:55'),
(30, NULL, NULL, NULL, 'Irfan Agyadi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:01:16', '2022-05-19 07:01:16'),
(31, NULL, NULL, NULL, 'Agnes Fianita', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:05:08', '2022-05-19 07:05:08'),
(32, NULL, NULL, NULL, 'Araaf Bayutama', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:13:09', '2022-05-19 07:13:09'),
(33, NULL, NULL, NULL, 'Febrian Hayat', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:16:31', '2022-05-19 07:16:31'),
(34, NULL, NULL, NULL, 'Badzlin Taradipa', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:18:11', '2022-05-19 07:18:11'),
(35, NULL, NULL, NULL, 'Bella Nabila', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:47:27', '2022-06-20 04:19:30'),
(36, NULL, NULL, NULL, 'Monika Rajamila', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 01:16:15', '2022-05-20 01:16:15'),
(37, NULL, NULL, NULL, 'Daniel Denny', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 01:51:01', '2022-05-20 01:51:01'),
(38, NULL, NULL, NULL, 'Budi Sarwono', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 02:16:57', '2022-05-20 02:16:57'),
(39, NULL, NULL, NULL, 'Arief Sedijanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 04:05:38', '2022-05-20 04:05:38'),
(40, NULL, NULL, NULL, 'Annisa Pratiwi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:15:42', '2022-05-20 08:15:42'),
(41, NULL, NULL, NULL, 'Risnan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:19:31', '2022-05-20 08:19:31'),
(42, NULL, NULL, NULL, 'Neysa', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 02:34:32', '2022-05-23 02:34:32'),
(43, NULL, NULL, NULL, 'Nora W', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 03:37:23', '2022-05-23 03:37:23'),
(44, NULL, NULL, NULL, 'Irfan Luthfi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 07:46:58', '2022-05-23 07:46:58'),
(45, NULL, NULL, NULL, 'Lita Fidya', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:23:14', '2022-05-24 04:23:14'),
(46, NULL, NULL, NULL, 'Dwi Astuti Kusumaningrum', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 08:26:16', '2022-06-20 04:19:48'),
(47, NULL, NULL, NULL, 'Adlina', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 02:43:21', '2022-05-27 02:43:21'),
(48, NULL, NULL, NULL, 'Herman Maulana', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 07:26:39', '2022-05-27 07:26:39'),
(49, NULL, NULL, NULL, 'Trivesti Laksmi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 02:54:56', '2022-05-30 02:54:56'),
(50, NULL, NULL, NULL, 'Ghani', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, 7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 03:00:30', '2022-05-30 03:00:30'),
(51, NULL, NULL, NULL, 'Afwina', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 03:43:14', '2022-05-30 03:43:14'),
(52, NULL, NULL, NULL, 'Haryoko', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 06:46:20', '2022-05-30 06:46:20'),
(53, NULL, NULL, NULL, 'Yohannes Suparman', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 06:51:16', '2022-05-30 06:51:16'),
(55, NULL, NULL, NULL, 'Dian Anggraini', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 04:01:00', '2022-05-31 04:01:00'),
(56, NULL, NULL, NULL, 'Ajeng Monika F', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 06:40:51', '2022-05-31 06:40:51'),
(57, NULL, NULL, NULL, 'Abdur Rahman', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 07:23:24', '2022-05-31 07:23:24'),
(58, NULL, NULL, NULL, 'Slamet Purwanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 07:24:50', '2022-05-31 07:24:50'),
(59, NULL, NULL, NULL, 'Eko Warsito', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 07:37:23', '2022-05-31 07:37:23'),
(60, NULL, NULL, NULL, 'Medi Setiadi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 02:38:31', '2022-06-02 02:38:31'),
(61, NULL, NULL, NULL, 'Hartati', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 03:40:57', '2022-06-02 03:40:57'),
(62, NULL, NULL, NULL, 'Arizka Sibpryani', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 04:42:23', '2022-06-02 04:42:23'),
(64, NULL, NULL, NULL, 'AlFajri Rahmatullah', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 02:07:51', '2022-06-20 04:16:26'),
(65, NULL, NULL, NULL, 'Bimo Imbalo R', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 03:11:29', '2022-06-06 03:11:29'),
(66, NULL, NULL, NULL, 'Suherman', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 04:08:37', '2022-06-07 04:08:37'),
(67, NULL, NULL, NULL, 'Tohasanudin', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 04:36:09', '2022-06-20 04:17:20'),
(68, NULL, NULL, NULL, 'Dodi Suryadi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 09:08:04', '2022-06-07 09:08:04'),
(69, NULL, NULL, NULL, 'Anugrah Fikriyanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 02:53:15', '2022-06-08 02:53:15'),
(70, NULL, NULL, NULL, 'Verena Rafaella', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 02:34:35', '2022-06-20 04:17:02'),
(71, NULL, NULL, NULL, 'Rafi Danan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 04:42:44', '2022-06-13 04:42:44'),
(72, NULL, NULL, NULL, 'Hardi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 01:41:26', '2022-06-14 01:41:26'),
(73, NULL, NULL, NULL, 'Sheill Natalia L', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 01:52:18', '2022-06-14 01:52:18'),
(74, NULL, NULL, NULL, 'Febrian Hayat', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 03:19:13', '2022-06-16 03:19:13'),
(75, NULL, NULL, NULL, 'Sri Yanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 01:27:49', '2022-06-17 01:27:49'),
(76, NULL, NULL, NULL, 'Wemby Fadillah', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 01:40:16', '2022-06-17 01:40:16'),
(77, NULL, NULL, NULL, 'Marissa Aisy A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 01:50:09', '2022-06-17 01:50:09'),
(78, NULL, NULL, NULL, 'Saeful Anam', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 03:55:36', '2022-06-20 04:16:40'),
(79, NULL, NULL, NULL, 'Hartati', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 04:20:46', '2022-06-17 04:20:46'),
(80, NULL, NULL, NULL, 'Nanang Saputra', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 02:57:46', '2022-06-20 02:57:46'),
(81, NULL, NULL, NULL, 'Maghfira Chaerani N', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 07:29:18', '2022-06-20 07:29:18'),
(82, NULL, NULL, NULL, 'Ariyanto Suryowibowo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 02:54:46', '2022-06-23 02:54:46'),
(83, NULL, NULL, NULL, 'Risqarani', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:20:33', '2022-06-24 01:20:33'),
(84, NULL, NULL, NULL, 'Trisna Jaya', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 02:22:57', '2022-06-27 02:22:57'),
(85, NULL, NULL, NULL, 'Marzuki', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 02:51:20', '2022-06-28 02:51:20'),
(86, NULL, NULL, NULL, 'Mesalina', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 02:54:18', '2022-06-28 02:54:18'),
(87, NULL, NULL, NULL, 'Achmad Abdul Karim', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:54:28', '2022-06-28 03:54:28'),
(88, NULL, NULL, NULL, 'Ismu Novayanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:58:47', '2022-06-28 03:58:47'),
(89, NULL, NULL, NULL, 'Bunga Astra', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 08:21:53', '2022-06-28 08:21:53'),
(90, NULL, NULL, NULL, 'Ariyanto ( Arie )', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30 01:23:44', '2022-06-30 01:23:44'),
(91, NULL, NULL, NULL, 'Angelica', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30 02:52:54', '2022-06-30 02:52:54'),
(92, NULL, NULL, NULL, 'Rosalima Sastyhartanti', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30 09:38:23', '2022-06-30 09:38:23'),
(93, NULL, NULL, NULL, 'Rudi Baskoro', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 01:46:07', '2022-07-04 01:46:07'),
(94, NULL, NULL, NULL, 'Muhammad Ichwan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 03:36:33', '2022-07-04 03:36:33'),
(95, NULL, NULL, NULL, 'Alvira Salwa Aulia', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 06:59:57', '2022-07-04 06:59:57'),
(96, NULL, NULL, NULL, 'Henry Yanoto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 09:29:27', '2022-07-05 09:29:27'),
(97, NULL, NULL, NULL, 'Ika Sisti', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, 10, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06 03:54:42', '2022-07-06 03:54:42'),
(98, NULL, NULL, NULL, 'Eddy Roeswiyanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 07:18:42', '2022-07-07 07:18:42'),
(99, NULL, NULL, NULL, 'Annisa Kirana A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 02:56:00', '2022-07-08 02:56:00'),
(100, NULL, NULL, NULL, 'Veronica', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 01:34:07', '2022-07-11 01:34:07'),
(101, NULL, NULL, NULL, 'Merry', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 06:31:26', '2022-07-11 06:31:26'),
(102, NULL, NULL, NULL, 'Ratna Yusmira', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 02:34:56', '2022-07-18 02:34:56'),
(103, NULL, NULL, NULL, 'Anggraini Ramsey', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 06:46:55', '2022-07-18 06:46:55'),
(104, NULL, NULL, NULL, 'Donny', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 02:39:42', '2022-07-19 02:39:42'),
(105, NULL, NULL, NULL, 'Lilik', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 03:30:26', '2022-07-19 03:30:26'),
(106, NULL, NULL, NULL, 'Salut Utomo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 03:36:20', '2022-07-19 03:36:20'),
(107, NULL, NULL, NULL, 'Yudha Kharisma', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 03:37:55', '2022-07-19 03:37:55'),
(108, NULL, NULL, NULL, 'Anita Nuraeni', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 03:40:41', '2022-07-19 03:40:41'),
(109, NULL, NULL, NULL, 'Deni Sukmana', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 02:16:26', '2022-07-20 02:16:26'),
(110, NULL, NULL, NULL, 'Derry', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 04:57:19', '2022-07-20 04:57:19'),
(111, NULL, NULL, NULL, 'Achmad beny', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 04:25:18', '2022-07-22 04:25:18'),
(112, NULL, NULL, NULL, 'Olivia', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 07:03:33', '2022-07-22 07:03:33'),
(113, NULL, NULL, NULL, 'Aldy Kasatia', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 02:47:26', '2022-07-25 02:47:26'),
(114, NULL, NULL, NULL, 'Agy Satria Dewandaru', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 03:48:59', '2022-07-25 03:48:59'),
(115, NULL, NULL, NULL, 'Aries Suryanto', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 01:59:37', '2022-07-26 01:59:37'),
(116, NULL, NULL, NULL, 'Azizah', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 02:22:23', '2022-07-26 02:22:23'),
(117, NULL, NULL, NULL, 'Olivia Gabriella', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-28 02:28:31', '2022-07-28 02:28:31'),
(118, NULL, NULL, NULL, 'Cynthia', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-28 06:47:08', '2022-07-28 06:47:08'),
(119, NULL, NULL, NULL, 'Arie Suryowibowo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 04:06:21', '2022-08-03 04:06:21');
INSERT INTO `employee` (`id`, `user_id`, `nik`, `noabsen`, `name`, `birth_dt`, `birth_place`, `image`, `annleave_balance`, `annleave_lastdt`, `sabbatical_balance`, `sabbatical_lastdt`, `join_dt`, `probstart_dt`, `probend_dt`, `contstart_dt`, `contend_dt`, `empstatus_id`, `emptype_id`, `inactivetype_id`, `job_id`, `superior_id`, `branch_id`, `dept_id`, `subdept_id`, `bizunit_id`, `level_id`, `gender_id`, `marital_id`, `bloodtype_id`, `religion_id`, `nationality_id`, `education_id`, `phone1`, `phone2`, `phone3`, `cellphone1`, `cellphone2`, `cellphone3`, `whatsapp1`, `whatsapp2`, `whatsapp3`, `email`, `ktp_number`, `ktp_province_id`, `ktp_city_id`, `ktp_street1`, `ktp_street2`, `ktp_street3`, `ktp_postal`, `dom_province_id`, `dom_city_id`, `dom_street1`, `dom_street2`, `dom_street3`, `bank_id`, `bank_account`, `bank_accountname`, `twitter`, `facebook`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(120, NULL, NULL, NULL, 'Nadya Alisa', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:15:24', '2022-08-04 03:15:24'),
(121, NULL, NULL, NULL, 'Dwiyantoro', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:52:18', '2022-08-05 04:52:18'),
(122, NULL, NULL, NULL, 'William Kurniawan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:32:11', '2022-08-05 06:32:11'),
(123, NULL, NULL, NULL, 'Teuku Rinaldy', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:53:36', '2022-08-08 07:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `empstatus`
--

CREATE TABLE `empstatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `emptype`
--

CREATE TABLE `emptype` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LAKI-LAKI', 'Laki-laki', 'Laki-laki', 'Laki-laki', 10, 1, NULL, NULL),
(2, 'PEREMPUAN', 'Perempuan', 'Perempuan', 'Perempuan', 20, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inactivetype`
--

CREATE TABLE `inactivetype` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FOUND', 'FOUNDER', 'FOUNDER', 'FOUNDER', 10, 1, NULL, NULL),
(2, 'KOM', 'KOMISARIS', 'KOMISARIS', 'KOMISARIS', 20, 1, NULL, NULL),
(3, 'DIRUT', 'DIREKTUR UTAMA', 'DIREKTUR UTAMA', 'DIREKTUR UTAMA', 30, 1, NULL, NULL),
(4, 'DIROPS', 'DIR. OPERASIONAL', 'DIR. OPERASIONAL', 'DIR. OPERASIONAL', 40, 1, NULL, NULL),
(5, 'FINCTL', 'FINANCIAL CONTROLLER', 'FINANCIAL CONTROLLER', 'FINANCIAL CONTROLLER', 50, 1, NULL, NULL),
(6, 'DISPRIN', 'PRINCIPAL DESAINER', 'PRINCIPAL DESAINER', 'PRINCIPAL DESAINER', 60, 1, NULL, NULL),
(7, 'KADEP', 'Kepala Departement', 'Kepala Departement', 'Kepala Departement', 70, 1, NULL, NULL),
(8, 'KADIV', 'Kepala Divisi', 'Kepala Divisi', 'Kepala Divisi', 80, 1, NULL, NULL),
(9, 'DIS', 'DESAINER', 'DESAINER', 'DESAINER', 90, 1, NULL, NULL),
(10, 'PM', 'PM', 'PM', 'PM', 100, 1, NULL, NULL),
(11, 'PPC', 'PPC', 'PPC', 'PPC', 110, 1, NULL, NULL),
(12, 'PROKO', 'Project Koordinator', 'Project Koordinator', 'Project Koordinator', 120, 1, NULL, NULL),
(13, 'HEADSTU', 'KEP. STUDIO PROD', 'KEP. STUDIO PROD', 'KEP. STUDIO PROD', 130, 1, NULL, NULL),
(14, 'QC', 'QUALITY CONTROL', 'QUALITY CONTROL', 'QUALITY CONTROL', 140, 1, NULL, NULL),
(15, 'ARSENG', 'Architect Engineer', 'Architect Engineer', 'Architect Engineer', 150, 1, NULL, NULL),
(16, 'DTLQCDRF', 'DETAILE / QCDRAFT', 'DETAILE / QCDRAFT', 'DETAILE / QCDRAFT', 160, 1, NULL, NULL),
(17, 'SPEKTOR', 'PRESPEKTOR', 'PRESPEKTOR', 'PRESPEKTOR', 170, 1, NULL, NULL),
(18, 'EST', 'ESTIMATOR', 'ESTIMATOR', 'ESTIMATOR', 180, 1, NULL, NULL),
(19, 'DISASS', 'ASS. DESAINER', 'ASS. DESAINER', 'ASS. DESAINER', 190, 1, NULL, NULL),
(20, 'DRAFTARS', 'DRAFTER ARSITEKTUR', 'DRAFTER ARSITEKTUR', 'DRAFTER ARSITEKTUR', 200, 1, NULL, NULL),
(21, 'ADM', 'ADMINISTRASI', 'ADMINISTRASI', 'ADMINISTRASI', 210, 1, NULL, NULL),
(22, 'PENGAWAS', 'PENGAWAS', 'PENGAWAS', 'PENGAWAS', 220, 1, NULL, NULL),
(23, 'ADPRO', 'ADPRO', 'ADPRO', 'ADPRO', 230, 1, NULL, NULL),
(24, '3DART', '3D ARTIS', '3D ARTIS', '3D ARTIS', 240, 1, NULL, NULL),
(25, 'DRAFTMKT', 'DRAFT MAKETTER', 'DRAFT MAKETTER', 'DRAFT MAKETTER', 250, 1, NULL, NULL),
(26, 'PLK', 'PELAKSANA', 'PELAKSANA', 'PELAKSANA', 260, 1, NULL, NULL),
(27, 'SM', 'SM', 'SM', 'SM', 270, 1, NULL, NULL),
(28, 'OPRTLP', 'OPERATOR TLP', 'OPERATOR TLP', 'OPERATOR TLP', 280, 1, NULL, NULL),
(29, 'KOORENG', 'KOOR ENGINEER', 'KOOR ENGINEER', 'KOOR ENGINEER', 290, 1, NULL, NULL),
(30, 'SPECWRT', 'SPECT WRITTER', 'SPECT WRITTER', 'SPECT WRITTER', 300, 1, NULL, NULL),
(31, 'ASSTPC', 'ASIST. PC', 'ASIST. PC', 'ASIST. PC', 310, 1, NULL, NULL),
(32, 'ILLUSTRATOR', 'ILLUSTRATOR', 'ILLUSTRATOR', 'ILLUSTRATOR', 320, 1, NULL, NULL),
(33, 'DRAFTER ', 'DRAFTER ', 'DRAFTER ', 'DRAFTER ', 330, 1, NULL, NULL),
(34, 'DTLSPECCTL', 'DETAIL SPEC.CONTROL', 'DETAIL SPEC.CONTROL', 'DETAIL SPEC.CONTROL', 340, 1, NULL, NULL),
(35, 'DRIVER', 'DRIVER', 'DRIVER', 'DRIVER', 350, 1, NULL, NULL),
(36, 'SECURITY', 'SECURITY', 'SECURITY', 'SECURITY', 360, 1, NULL, NULL),
(37, 'QA', 'QUALITY ASSURANCE', 'QUALITY ASSURANCE', 'QUALITY ASSURANCE', 370, 1, NULL, NULL),
(38, 'STAFFMKT', 'STAFF MARKETING', 'STAFF MARKETING', 'STAFF MARKETING', 380, 1, NULL, NULL),
(39, 'INTAUD', 'INTERNAL AUDIT', 'INTERNAL AUDIT', 'INTERNAL AUDIT', 390, 1, NULL, NULL),
(40, 'KSR', 'STAFF KASIR', 'STAFF KASIR', 'STAFF KASIR', 400, 1, NULL, NULL),
(41, 'SEXEC', 'SENIOR EXECUTIVE', 'SENIOR EXECUTIVE', 'SENIOR EXECUTIVE', 410, 1, NULL, NULL),
(42, 'STAFFGDG', 'STAFF GUDANG', 'STAFF GUDANG', 'STAFF GUDANG', 420, 1, NULL, NULL),
(43, 'KURIR', 'KURIR', 'KURIR', 'KURIR', 430, 1, NULL, NULL),
(44, 'DIRDIS', 'DIREKTUR DESAIN', 'DIREKTUR DESAIN', 'DIREKTUR DESAIN', 440, 1, NULL, NULL),
(45, 'KOORDKEND', 'KOORD. KENDARAAN', 'KOORD. KENDARAAN', 'KOORD. KENDARAAN', 450, 1, NULL, NULL),
(46, 'STAFFPJK', 'STAFF PAJAK', 'STAFF PAJAK', 'STAFF PAJAK', 460, 1, NULL, NULL),
(47, 'RECEPTIONIST', 'RECEPTIONIST', 'RECEPTIONIST', 'RECEPTIONIST', 470, 1, NULL, NULL),
(48, 'STAFFIT', 'STAFF IT', 'STAFF IT', 'STAFF IT', 480, 1, NULL, NULL),
(49, 'OFFBOY', 'OFFICE BOY', 'OFFICE BOY', 'OFFICE BOY', 490, 1, NULL, NULL),
(50, 'TEKHNISI', 'TEKHNISI', 'TEKHNISI', 'TEKHNISI', 500, 1, NULL, NULL),
(51, 'STAFFKEU', 'STAFF KEUANGAN', 'STAFF KEUANGAN', 'STAFF KEUANGAN', 510, 1, NULL, NULL),
(52, 'KORPRCDIS', 'KORD.PERENC/DIS', 'KORD.PERENC/DIS', 'KORD.PERENC/DIS', 520, 1, NULL, NULL),
(53, 'STAFFPLK', 'STAFF PELAKSANA', 'STAFF PELAKSANA', 'STAFF PELAKSANA', 530, 1, NULL, NULL),
(54, 'STAFFLOG', 'STAFF LOGISTIK', 'STAFF LOGISTIK', 'STAFF LOGISTIK', 540, 1, NULL, NULL),
(55, 'STAFFACT', 'STAFF ACCOUNTING', 'STAFF ACCOUNTING', 'STAFF ACCOUNTING', 550, 1, NULL, NULL),
(56, 'STAFFPERPUS', 'STAFF PERPUSTAKAAN', 'STAFF PERPUSTAKAAN', 'STAFF PERPUSTAKAAN', 560, 1, NULL, NULL),
(57, 'STAFFSEK', 'STAFF SEKRETARIAT', 'STAFF SEKRETARIAT', 'STAFF SEKRETARIAT', 570, 1, NULL, NULL),
(58, 'STAFFTAGIH', 'STAFF PENAGIHAN', 'STAFF PENAGIHAN', 'STAFF PENAGIHAN', 580, 1, NULL, NULL),
(59, 'KPSTUDIO', 'DRAFT/KP.STUDIO', 'DRAFT/KP.STUDIO', 'DRAFT/KP.STUDIO', 590, 1, NULL, NULL),
(60, 'ASS.DIS.LANDSCAPE', 'ASS.DIS.LANDSCAPE', 'ASS.DIS.LANDSCAPE', 'ASS.DIS.LANDSCAPE', 600, 1, NULL, NULL),
(61, 'DRAWING QC', 'DRAWING QC', 'DRAWING QC', 'DRAWING QC', 610, 1, NULL, NULL),
(62, 'PRODUKSI', 'PRODUKSI', 'PRODUKSI', 'PRODUKSI', 620, 1, NULL, NULL),
(63, 'STAFF PENUNJANG', 'STAFF PENUNJANG', 'STAFF PENUNJANG', 'STAFF PENUNJANG', 630, 1, NULL, NULL),
(64, 'PROJECT CONTROL', 'PROJECT CONTROL', 'PROJECT CONTROL', 'PROJECT CONTROL', 640, 1, NULL, NULL),
(65, 'ASS.ARSITEK', 'ASS.ARSITEK', 'ASS.ARSITEK', 'ASS.ARSITEK', 650, 1, NULL, NULL),
(66, 'ASS.PERENCANAAN', 'ASS.PERENCANAAN', 'ASS.PERENCANAAN', 'ASS.PERENCANAAN', 660, 1, NULL, NULL),
(67, 'LANDSCAPE', 'LANDSCAPE', 'LANDSCAPE', 'LANDSCAPE', 670, 1, NULL, NULL),
(68, 'STAFF DRAFTER', 'STAFF DRAFTER', 'STAFF DRAFTER', 'STAFF DRAFTER', 680, 1, NULL, NULL),
(69, 'SUPERVISOR', 'SUPERVISOR', 'SUPERVISOR', 'SUPERVISOR', 690, 1, NULL, NULL),
(70, 'COST CONTROL', 'COST CONTROL', 'COST CONTROL', 'COST CONTROL', 700, 1, NULL, NULL),
(71, 'Desainer Produk', 'Desainer Produk', 'Desainer Produk', 'Desainer Produk', 710, 1, NULL, NULL),
(72, 'DRAFTER LANDSCAPE', 'DRAFTER LANDSCAPE', 'DRAFTER LANDSCAPE', 'DRAFTER LANDSCAPE', 720, 1, NULL, NULL),
(73, 'KABAG OPERASIONAL', 'KABAG OPERASIONAL', 'KABAG OPERASIONAL', 'KABAG OPERASIONAL', 730, 1, NULL, NULL),
(74, 'Marketing Officer', 'Marketing Officer', 'Marketing Officer', 'Marketing Officer', 740, 1, NULL, NULL),
(75, 'INTERIOR ENGGINERING', 'INTERIOR ENGGINERING', 'INTERIOR ENGGINERING', 'INTERIOR ENGGINERING', 750, 1, NULL, NULL),
(76, 'Project Desainer', 'Project Desainer', 'Project Desainer', 'Project Desainer', 760, 1, NULL, NULL),
(77, 'ISO OFFICER', 'ISO OFFICER', 'ISO OFFICER', 'ISO OFFICER', 770, 1, NULL, NULL),
(78, 'PUBLIC RELATIONS', 'PUBLIC RELATIONS', 'PUBLIC RELATIONS', 'PUBLIC RELATIONS', 780, 1, NULL, NULL),
(79, 'Desainer Landscape', 'Desainer Landscape', 'Desainer Landscape', 'Desainer Landscape', 790, 1, NULL, NULL),
(80, 'MARKETING PELAKSANAAN', 'MARKETING PELAKSANAAN', 'MARKETING PELAKSANAAN', 'MARKETING PELAKSANAAN', 800, 1, NULL, NULL),
(81, 'IT Support', 'IT Support', 'IT Support', 'IT Support', 810, 1, NULL, NULL),
(82, 'IT Programmer', 'IT Programmer', 'IT Programmer', 'IT Programmer', 820, 1, NULL, NULL),
(83, 'Associate', 'Associate', 'Associate', 'Associate', 830, 1, NULL, NULL),
(84, 'Desainer Arsitektur', 'Desainer Arsitektur', 'Desainer Arsitektur', 'Desainer Arsitektur', 840, 1, NULL, NULL),
(85, 'Legal Officer', 'Legal Officer', 'Legal Officer', 'Legal Officer', 850, 1, NULL, NULL),
(86, 'Marketing Interior Designer', 'Marketing Interior Designer', 'Marketing Interior Designer', 'Marketing Interior Designer', 860, 1, NULL, NULL),
(87, 'Desainer Utama', 'Desainer Utama', 'Desainer Utama', 'Desainer Utama', 870, 1, NULL, NULL),
(88, 'Kepala Produksi', 'Kepala Produksi', 'Kepala Produksi', 'Kepala Produksi', 880, 1, NULL, NULL),
(89, 'Koordinator Project Control', 'Koordinator Project Control', 'Koordinator Project Control', 'Koordinator Project Control', 890, 1, NULL, NULL),
(90, 'Project Cost Controll', 'Project Cost Controll', 'Project Cost Controll', 'Project Cost Controll', 900, 1, NULL, NULL),
(91, 'Desainer Interior', 'Desainer Interior', 'Desainer Interior', 'Desainer Interior', 910, 1, NULL, NULL),
(92, 'Kepala Bagian Umum', 'Kepala Bagian Umum', 'Kepala Bagian Umum', 'Kepala Bagian Umum', 920, 1, NULL, NULL),
(93, 'Installer', 'Installer', 'Installer', 'Installer', 930, 1, NULL, NULL),
(94, 'Koordinator Principal Desainer', 'Koordinator Principal Desainer', 'Koordinator Principal Desainer', 'Koordinator Principal Desainer', 940, 1, NULL, NULL),
(95, 'Bussiness Development', 'Bussiness Development', 'Bussiness Development', 'Bussiness Development', 950, 1, NULL, NULL),
(96, 'Koord.Team Desainer', 'Koord.Team Desainer', 'Koord.Team Desainer', 'Koord.Team Desainer', 960, 1, NULL, NULL),
(97, 'Desainer Lighting', 'Desainer Lighting', 'Desainer Lighting', 'Desainer Lighting', 970, 1, NULL, NULL),
(98, 'Chief Security', 'Chief Security', 'Chief Security', 'Chief Security', 980, 1, NULL, NULL),
(99, 'Staff GA', 'Staff GA', 'Staff GA', 'Staff GA', 990, 1, NULL, NULL),
(100, 'Project Support Koordinator', 'Project Support Koordinator', 'Project Support Koordinator', 'Project Support Koordinator', 1000, 1, NULL, NULL),
(101, 'IT Server', 'IT Server', 'IT Server', 'IT Server', 1010, 1, NULL, NULL),
(102, 'IT Network', 'IT Network', 'IT Network', 'IT Network', 1020, 1, NULL, NULL),
(103, 'Brand Representative', 'Brand Representative', 'Brand Representative', 'Brand Representative', 1030, 1, NULL, NULL),
(104, 'Owner Representative', 'Owner Representative', 'Owner Representative', 'Owner Representative', 1040, 1, NULL, NULL),
(105, 'Supervisor Accounting', 'Supervisor Accounting', 'Supervisor Accounting', 'Supervisor Accounting', 1050, 1, NULL, NULL),
(106, 'Supervisor Keuangan', 'Supervisor Keuangan', 'Supervisor Keuangan', 'Supervisor Keuangan', 1060, 1, NULL, NULL),
(107, 'Staff HRD', 'Staff HRD', 'Staff HRD', 'Staff HRD', 1070, 1, NULL, NULL),
(108, 'Design Strategic Partner', 'Design Strategic Partner', 'Design Strategic Partner', 'Design Strategic Partner', 1080, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GOL01', 'Golongan 1', 'Golongan 1', 'Golongan 1', 10, 1, NULL, NULL),
(2, 'GOL02', 'Golongan 2', 'Golongan 2', 'Golongan 2', 20, 1, NULL, NULL),
(3, 'GOL03', 'Golongan 3', 'Golongan 3', 'Golongan 3', 30, 1, NULL, NULL),
(4, 'GOL04', 'Golongan 4', 'Golongan 4', 'Golongan 4', 40, 1, NULL, NULL),
(5, 'GOL05', 'Golongan 5', 'Golongan 5', 'Golongan 5', 50, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marital`
--

CREATE TABLE `marital` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_29_083534_create_users_table', 1),
(2, '2019_01_29_083705_create_password_resets_table', 1),
(3, '2019_02_21_092749_create_apps_table', 1),
(4, '2019_02_21_093156_create_app_user_table', 1),
(5, '2019_02_23_232543_create_roles_table', 1),
(6, '2019_02_23_233448_create_role_user_table', 1),
(7, '2021_08_02_105640_create_activitytype_table', 1),
(8, '2021_08_02_105655_create_activity_table', 1),
(9, '2021_11_03_101204_create_employee_table', 1),
(10, '2021_11_11_085625_create_gender_table', 1),
(11, '2021_11_11_090447_create_bloodtype_table', 1),
(12, '2021_11_11_090600_create_religion_table', 1),
(13, '2021_11_11_090725_create_nationality_table', 1),
(14, '2021_11_11_090805_create_education_table', 1),
(15, '2021_11_11_090856_create_level_table', 1),
(16, '2021_11_11_091126_create_bizunit_table', 1),
(17, '2021_11_11_091200_create_subdept_table', 1),
(18, '2021_11_11_091235_create_dept_table', 1),
(19, '2021_11_11_091305_create_branch_table', 1),
(20, '2021_11_11_091447_create_superior_table', 1),
(21, '2021_11_11_091520_create_job_table', 1),
(22, '2021_11_11_091550_create_inactivetype_table', 1),
(23, '2021_11_11_091628_create_emptype_table', 1),
(24, '2021_11_11_091701_create_empstatus_table', 1),
(25, '2021_11_15_102325_create_marital_table', 1),
(26, '2022_01_20_120813_create_activitysubtype_table', 1),
(27, '2022_01_20_120831_create_tasktype_table', 1),
(28, '2022_01_20_120844_create_tasksubtype1_table', 1),
(29, '2022_02_02_140145_create_tasksubtype2_table', 1),
(30, '2022_02_04_125713_create_activitystatus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'US', 'United States', 'United States', 'United States', 10, 1, NULL, NULL),
(2, 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan', 20, 1, NULL, NULL),
(3, 'AL', 'Albania', 'Albania', 'Albania', 30, 1, NULL, NULL),
(4, 'DZ', 'Algeria', 'Algeria', 'Algeria', 40, 1, NULL, NULL),
(5, 'AS', 'American Samoa', 'American Samoa', 'American Samoa', 50, 1, NULL, NULL),
(6, 'AD', 'Andorra', 'Andorra', 'Andorra', 60, 1, NULL, NULL),
(7, 'AO', 'Angola', 'Angola', 'Angola', 70, 1, NULL, NULL),
(8, 'AI', 'Anguilla', 'Anguilla', 'Anguilla', 80, 1, NULL, NULL),
(9, 'AQ', 'Antarctica', 'Antarctica', 'Antarctica', 90, 1, NULL, NULL),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 100, 1, NULL, NULL),
(11, 'AR', 'Argentina', 'Argentina', 'Argentina', 110, 1, NULL, NULL),
(12, 'AM', 'Armenia', 'Armenia', 'Armenia', 120, 1, NULL, NULL),
(13, 'AW', 'Aruba', 'Aruba', 'Aruba', 130, 1, NULL, NULL),
(14, 'AU', 'Australia', 'Australia', 'Australia', 140, 1, NULL, NULL),
(15, 'AT', 'Austria', 'Austria', 'Austria', 150, 1, NULL, NULL),
(16, 'AZ', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 160, 1, NULL, NULL),
(17, 'BS', 'Bahamas', 'Bahamas', 'Bahamas', 170, 1, NULL, NULL),
(18, 'BH', 'Bahrain', 'Bahrain', 'Bahrain', 180, 1, NULL, NULL),
(19, 'BD', 'Bangladesh', 'Bangladesh', 'Bangladesh', 190, 1, NULL, NULL),
(20, 'BB', 'Barbados', 'Barbados', 'Barbados', 200, 1, NULL, NULL),
(21, 'BY', 'Belarus', 'Belarus', 'Belarus', 210, 1, NULL, NULL),
(22, 'BE', 'Belgium', 'Belgium', 'Belgium', 220, 1, NULL, NULL),
(23, 'BZ', 'Belize', 'Belize', 'Belize', 230, 1, NULL, NULL),
(24, 'BJ', 'Benin', 'Benin', 'Benin', 240, 1, NULL, NULL),
(25, 'BM', 'Bermuda', 'Bermuda', 'Bermuda', 250, 1, NULL, NULL),
(26, 'BT', 'Bhutan', 'Bhutan', 'Bhutan', 260, 1, NULL, NULL),
(27, 'BO', 'Bolivia', 'Bolivia', 'Bolivia', 270, 1, NULL, NULL),
(28, 'BA', 'Bosnia-Herzegovina', 'Bosnia-Herzegovina', 'Bosnia-Herzegovina', 280, 1, NULL, NULL),
(29, 'BW', 'Botswana', 'Botswana', 'Botswana', 290, 1, NULL, NULL),
(30, 'BV', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 300, 1, NULL, NULL),
(31, 'BR', 'Brazil', 'Brazil', 'Brazil', 310, 1, NULL, NULL),
(32, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 320, 1, NULL, NULL),
(33, 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 330, 1, NULL, NULL),
(34, 'BG', 'Bulgaria', 'Bulgaria', 'Bulgaria', 340, 1, NULL, NULL),
(35, 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 350, 1, NULL, NULL),
(36, 'BI', 'Burundi', 'Burundi', 'Burundi', 360, 1, NULL, NULL),
(37, 'KH', 'Cambodia', 'Cambodia', 'Cambodia', 370, 1, NULL, NULL),
(38, 'CM', 'Cameroon', 'Cameroon', 'Cameroon', 380, 1, NULL, NULL),
(39, 'CV', 'Cape Verde', 'Cape Verde', 'Cape Verde', 390, 1, NULL, NULL),
(40, 'KY', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 400, 1, NULL, NULL),
(41, 'CF', 'Central African Republic', 'Central African Republic', 'Central African Republic', 410, 1, NULL, NULL),
(42, 'TD', 'Chad', 'Chad', 'Chad', 420, 1, NULL, NULL),
(43, 'CL', 'Chile', 'Chile', 'Chile', 430, 1, NULL, NULL),
(44, 'CN', 'China', 'China', 'China', 440, 1, NULL, NULL),
(45, 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island', 450, 1, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 460, 1, NULL, NULL),
(47, 'CO', 'Colombia', 'Colombia', 'Colombia', 470, 1, NULL, NULL),
(48, 'KM', 'Comoros', 'Comoros', 'Comoros', 480, 1, NULL, NULL),
(49, 'CG', 'Congo', 'Congo', 'Congo', 490, 1, NULL, NULL),
(50, 'CD', 'Congo (Democratic Republic)', 'Congo (Democratic Republic)', 'Congo (Democratic Republic)', 500, 1, NULL, NULL),
(51, 'CK', 'Cook Islands', 'Cook Islands', 'Cook Islands', 510, 1, NULL, NULL),
(52, 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica', 520, 1, NULL, NULL),
(53, 'HR', 'Croatia', 'Croatia', 'Croatia', 530, 1, NULL, NULL),
(54, 'CU', 'Cuba', 'Cuba', 'Cuba', 540, 1, NULL, NULL),
(55, 'CY', 'Cyprus', 'Cyprus', 'Cyprus', 550, 1, NULL, NULL),
(56, 'CZ', 'Czech Republic', 'Czech Republic', 'Czech Republic', 560, 1, NULL, NULL),
(57, 'DK', 'Denmark', 'Denmark', 'Denmark', 570, 1, NULL, NULL),
(58, 'DJ', 'Djibouti', 'Djibouti', 'Djibouti', 580, 1, NULL, NULL),
(59, 'DM', 'Dominica', 'Dominica', 'Dominica', 590, 1, NULL, NULL),
(60, 'DO', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 600, 1, NULL, NULL),
(61, 'TP', 'East Timor', 'East Timor', 'East Timor', 610, 1, NULL, NULL),
(62, 'EC', 'Ecuador', 'Ecuador', 'Ecuador', 620, 1, NULL, NULL),
(63, 'EG', 'Egypt', 'Egypt', 'Egypt', 630, 1, NULL, NULL),
(64, 'SV', 'El Salvador', 'El Salvador', 'El Salvador', 640, 1, NULL, NULL),
(65, 'GQ', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 650, 1, NULL, NULL),
(66, 'ER', 'Eritrea', 'Eritrea', 'Eritrea', 660, 1, NULL, NULL),
(67, 'EE', 'Estonia', 'Estonia', 'Estonia', 670, 1, NULL, NULL),
(68, 'ET', 'Ethiopia', 'Ethiopia', 'Ethiopia', 680, 1, NULL, NULL),
(69, 'FK', 'Falkland Islands', 'Falkland Islands', 'Falkland Islands', 690, 1, NULL, NULL),
(70, 'FO', 'Faroe Islands', 'Faroe Islands', 'Faroe Islands', 700, 1, NULL, NULL),
(71, 'FJ', 'Fiji', 'Fiji', 'Fiji', 710, 1, NULL, NULL),
(72, 'FI', 'Finland', 'Finland', 'Finland', 720, 1, NULL, NULL),
(73, 'FR', 'France', 'France', 'France', 730, 1, NULL, NULL),
(74, 'FX', 'France (European Territory)', 'France (European Territory)', 'France (European Territory)', 740, 1, NULL, NULL),
(75, 'GF', 'French Guiana', 'French Guiana', 'French Guiana', 750, 1, NULL, NULL),
(76, 'TF', 'French Southern Territories', 'French Southern Territories', 'French Southern Territories', 760, 1, NULL, NULL),
(77, 'GA', 'Gabon', 'Gabon', 'Gabon', 770, 1, NULL, NULL),
(78, 'GM', 'Gambia', 'Gambia', 'Gambia', 780, 1, NULL, NULL),
(79, 'GE', 'Georgia', 'Georgia', 'Georgia', 790, 1, NULL, NULL),
(80, 'DE', 'Germany', 'Germany', 'Germany', 800, 1, NULL, NULL),
(81, 'GH', 'Ghana', 'Ghana', 'Ghana', 810, 1, NULL, NULL),
(82, 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar', 820, 1, NULL, NULL),
(83, 'GR', 'Greece', 'Greece', 'Greece', 830, 1, NULL, NULL),
(84, 'GL', 'Greenland', 'Greenland', 'Greenland', 840, 1, NULL, NULL),
(85, 'GD', 'Grenada', 'Grenada', 'Grenada', 850, 1, NULL, NULL),
(86, 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 860, 1, NULL, NULL),
(87, 'GU', 'Guam', 'Guam', 'Guam', 870, 1, NULL, NULL),
(88, 'GT', 'Guatemala', 'Guatemala', 'Guatemala', 880, 1, NULL, NULL),
(89, 'GN', 'Guinea', 'Guinea', 'Guinea', 890, 1, NULL, NULL),
(90, 'GW', 'Guinea Bissau', 'Guinea Bissau', 'Guinea Bissau', 900, 1, NULL, NULL),
(91, 'GY', 'Guyana', 'Guyana', 'Guyana', 910, 1, NULL, NULL),
(92, 'HT', 'Haiti', 'Haiti', 'Haiti', 920, 1, NULL, NULL),
(93, 'HM', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 930, 1, NULL, NULL),
(94, 'VA', 'Holy See (Vatican)', 'Holy See (Vatican)', 'Holy See (Vatican)', 940, 1, NULL, NULL),
(95, 'HN', 'Honduras', 'Honduras', 'Honduras', 950, 1, NULL, NULL),
(96, 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong', 960, 1, NULL, NULL),
(97, 'HU', 'Hungary', 'Hungary', 'Hungary', 970, 1, NULL, NULL),
(98, 'IS', 'Iceland', 'Iceland', 'Iceland', 980, 1, NULL, NULL),
(99, 'IN', 'India', 'India', 'India', 990, 1, NULL, NULL),
(100, 'ID', 'Indonesia', 'Indonesia', 'Indonesia', 1000, 1, NULL, NULL),
(101, 'IR', 'Iran', 'Iran', 'Iran', 1010, 1, NULL, NULL),
(102, 'IQ', 'Iraq', 'Iraq', 'Iraq', 1020, 1, NULL, NULL),
(103, 'IE', 'Ireland', 'Ireland', 'Ireland', 1030, 1, NULL, NULL),
(104, 'IL', 'Israel', 'Israel', 'Israel', 1040, 1, NULL, NULL),
(105, 'IT', 'Italy', 'Italy', 'Italy', 1050, 1, NULL, NULL),
(106, 'CI', 'Ivory Coast (Cote D\'Ivoire)', 'Ivory Coast (Cote D\'Ivoire)', 'Ivory Coast (Cote D\'Ivoire)', 1060, 1, NULL, NULL),
(107, 'JM', 'Jamaica', 'Jamaica', 'Jamaica', 1070, 1, NULL, NULL),
(108, 'JP', 'Japan', 'Japan', 'Japan', 1080, 1, NULL, NULL),
(109, 'JO', 'Jordan', 'Jordan', 'Jordan', 1090, 1, NULL, NULL),
(110, 'KZ', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 1100, 1, NULL, NULL),
(111, 'KE', 'Kenya', 'Kenya', 'Kenya', 1110, 1, NULL, NULL),
(112, 'KI', 'Kiribati', 'Kiribati', 'Kiribati', 1120, 1, NULL, NULL),
(113, 'KW', 'Kuwait', 'Kuwait', 'Kuwait', 1130, 1, NULL, NULL),
(114, 'KG', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 1140, 1, NULL, NULL),
(115, 'LA', 'Laos', 'Laos', 'Laos', 1150, 1, NULL, NULL),
(116, 'LV', 'Latvia', 'Latvia', 'Latvia', 1160, 1, NULL, NULL),
(117, 'LB', 'Lebanon', 'Lebanon', 'Lebanon', 1170, 1, NULL, NULL),
(118, 'LS', 'Lesotho', 'Lesotho', 'Lesotho', 1180, 1, NULL, NULL),
(119, 'LR', 'Liberia', 'Liberia', 'Liberia', 1190, 1, NULL, NULL),
(120, 'LY', 'Libya', 'Libya', 'Libya', 1200, 1, NULL, NULL),
(121, 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 1210, 1, NULL, NULL),
(122, 'LT', 'Lithuania', 'Lithuania', 'Lithuania', 1220, 1, NULL, NULL),
(123, 'LU', 'Luxembourg', 'Luxembourg', 'Luxembourg', 1230, 1, NULL, NULL),
(124, 'MO', 'Macau', 'Macau', 'Macau', 1240, 1, NULL, NULL),
(125, 'MK', 'Macedonia', 'Macedonia', 'Macedonia', 1250, 1, NULL, NULL),
(126, 'MG', 'Madagascar', 'Madagascar', 'Madagascar', 1260, 1, NULL, NULL),
(127, 'MW', 'Malawi', 'Malawi', 'Malawi', 1270, 1, NULL, NULL),
(128, 'MY', 'Malaysia', 'Malaysia', 'Malaysia', 1280, 1, NULL, NULL),
(129, 'MV', 'Maldives', 'Maldives', 'Maldives', 1290, 1, NULL, NULL),
(130, 'ML', 'Mali', 'Mali', 'Mali', 1300, 1, NULL, NULL),
(131, 'MT', 'Malta', 'Malta', 'Malta', 1310, 1, NULL, NULL),
(132, 'MH', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 1320, 1, NULL, NULL),
(133, 'MQ', 'Martinique', 'Martinique', 'Martinique', 1330, 1, NULL, NULL),
(134, 'MR', 'Mauritania', 'Mauritania', 'Mauritania', 1340, 1, NULL, NULL),
(135, 'MU', 'Mauritius', 'Mauritius', 'Mauritius', 1350, 1, NULL, NULL),
(136, 'YT', 'Mayotte', 'Mayotte', 'Mayotte', 1360, 1, NULL, NULL),
(137, 'MX', 'Mexico', 'Mexico', 'Mexico', 1370, 1, NULL, NULL),
(138, 'FM', 'Micronesia', 'Micronesia', 'Micronesia', 1380, 1, NULL, NULL),
(139, 'MD', 'Moldova', 'Moldova', 'Moldova', 1390, 1, NULL, NULL),
(140, 'MC', 'Monaco', 'Monaco', 'Monaco', 1400, 1, NULL, NULL),
(141, 'MN', 'Mongolia', 'Mongolia', 'Mongolia', 1410, 1, NULL, NULL),
(142, 'MS', 'Montserrat', 'Montserrat', 'Montserrat', 1420, 1, NULL, NULL),
(143, 'MA', 'Morocco', 'Morocco', 'Morocco', 1430, 1, NULL, NULL),
(144, 'MZ', 'Mozambique', 'Mozambique', 'Mozambique', 1440, 1, NULL, NULL),
(145, 'MM', 'Myanmar', 'Myanmar', 'Myanmar', 1450, 1, NULL, NULL),
(146, 'NA', 'Namibia', 'Namibia', 'Namibia', 1460, 1, NULL, NULL),
(147, 'NR', 'Nauru', 'Nauru', 'Nauru', 1470, 1, NULL, NULL),
(148, 'NP', 'Nepal', 'Nepal', 'Nepal', 1480, 1, NULL, NULL),
(149, 'NL', 'Netherlands', 'Netherlands', 'Netherlands', 1490, 1, NULL, NULL),
(150, 'AN', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 1500, 1, NULL, NULL),
(151, 'NC', 'New Caledonia', 'New Caledonia', 'New Caledonia', 1510, 1, NULL, NULL),
(152, 'NZ', 'New Zealand', 'New Zealand', 'New Zealand', 1520, 1, NULL, NULL),
(153, 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua', 1530, 1, NULL, NULL),
(154, 'NE', 'Niger', 'Niger', 'Niger', 1540, 1, NULL, NULL),
(155, 'NG', 'Nigeria', 'Nigeria', 'Nigeria', 1550, 1, NULL, NULL),
(156, 'NU', 'Niue', 'Niue', 'Niue', 1560, 1, NULL, NULL),
(157, 'NF', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 1570, 1, NULL, NULL),
(158, 'KP', 'North Korea', 'North Korea', 'North Korea', 1580, 1, NULL, NULL),
(159, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 1590, 1, NULL, NULL),
(160, 'NO', 'Norway', 'Norway', 'Norway', 1600, 1, NULL, NULL),
(161, 'OM', 'Oman', 'Oman', 'Oman', 1610, 1, NULL, NULL),
(162, 'PK', 'Pakistan', 'Pakistan', 'Pakistan', 1620, 1, NULL, NULL),
(163, 'PW', 'Palau', 'Palau', 'Palau', 1630, 1, NULL, NULL),
(164, 'PS', 'Palestinian Territory', 'Palestinian Territory', 'Palestinian Territory', 1640, 1, NULL, NULL),
(165, 'PA', 'Panama', 'Panama', 'Panama', 1650, 1, NULL, NULL),
(166, 'PG', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 1660, 1, NULL, NULL),
(167, 'PY', 'Paraguay', 'Paraguay', 'Paraguay', 1670, 1, NULL, NULL),
(168, 'PE', 'Peru', 'Peru', 'Peru', 1680, 1, NULL, NULL),
(169, 'PH', 'Philippines', 'Philippines', 'Philippines', 1690, 1, NULL, NULL),
(170, 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn', 1700, 1, NULL, NULL),
(171, 'PL', 'Poland', 'Poland', 'Poland', 1710, 1, NULL, NULL),
(172, 'PF', 'Polynesia', 'Polynesia', 'Polynesia', 1720, 1, NULL, NULL),
(173, 'PT', 'Portugal', 'Portugal', 'Portugal', 1730, 1, NULL, NULL),
(174, 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 1740, 1, NULL, NULL),
(175, 'QA', 'Qatar', 'Qatar', 'Qatar', 1750, 1, NULL, NULL),
(176, 'RE', 'Reunion', 'Reunion', 'Reunion', 1760, 1, NULL, NULL),
(177, 'RO', 'Romania', 'Romania', 'Romania', 1770, 1, NULL, NULL),
(178, 'RU', 'Russian Federation', 'Russian Federation', 'Russian Federation', 1780, 1, NULL, NULL),
(179, 'RW', 'Rwanda', 'Rwanda', 'Rwanda', 1790, 1, NULL, NULL),
(180, 'GS', 'S. Georgia & S. Sandwich Isls.', 'S. Georgia & S. Sandwich Isls.', 'S. Georgia & S. Sandwich Isls.', 1800, 1, NULL, NULL),
(181, 'SH', 'Saint Helena', 'Saint Helena', 'Saint Helena', 1810, 1, NULL, NULL),
(182, 'KN', 'Saint Kitts & Nevis Anguilla', 'Saint Kitts & Nevis Anguilla', 'Saint Kitts & Nevis Anguilla', 1820, 1, NULL, NULL),
(183, 'LC', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 1830, 1, NULL, NULL),
(184, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 1840, 1, NULL, NULL),
(185, 'VC', 'Saint Vincent & Grenadines', 'Saint Vincent & Grenadines', 'Saint Vincent & Grenadines', 1850, 1, NULL, NULL),
(186, 'WS', 'Samoa', 'Samoa', 'Samoa', 1860, 1, NULL, NULL),
(187, 'SM', 'San Marino', 'San Marino', 'San Marino', 1870, 1, NULL, NULL),
(188, 'ST', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 1880, 1, NULL, NULL),
(189, 'SA', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 1890, 1, NULL, NULL),
(190, 'SN', 'Senegal', 'Senegal', 'Senegal', 1900, 1, NULL, NULL),
(191, 'SC', 'Seychelles', 'Seychelles', 'Seychelles', 1910, 1, NULL, NULL),
(192, 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 1920, 1, NULL, NULL),
(193, 'SG', 'Singapore', 'Singapore', 'Singapore', 1930, 1, NULL, NULL),
(194, 'SK', 'Slovakia', 'Slovakia', 'Slovakia', 1940, 1, NULL, NULL),
(195, 'SI', 'Slovenia', 'Slovenia', 'Slovenia', 1950, 1, NULL, NULL),
(196, 'SB', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 1960, 1, NULL, NULL),
(197, 'SO', 'Somalia', 'Somalia', 'Somalia', 1970, 1, NULL, NULL),
(198, 'ZA', 'South Africa', 'South Africa', 'South Africa', 1980, 1, NULL, NULL),
(199, 'KR', 'South Korea', 'South Korea', 'South Korea', 1990, 1, NULL, NULL),
(200, 'ES', 'Spain', 'Spain', 'Spain', 2000, 1, NULL, NULL),
(201, 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 2010, 1, NULL, NULL),
(202, 'SD', 'Sudan', 'Sudan', 'Sudan', 2020, 1, NULL, NULL),
(203, 'SR', 'Suriname', 'Suriname', 'Suriname', 2030, 1, NULL, NULL),
(204, 'SZ', 'Swaziland', 'Swaziland', 'Swaziland', 2040, 1, NULL, NULL),
(205, 'SE', 'Sweden', 'Sweden', 'Sweden', 2050, 1, NULL, NULL),
(206, 'CH', 'Switzerland', 'Switzerland', 'Switzerland', 2060, 1, NULL, NULL),
(207, 'SY', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 2070, 1, NULL, NULL),
(208, 'TW', 'Taiwan', 'Taiwan', 'Taiwan', 2080, 1, NULL, NULL),
(209, 'TJ', 'Tajikistan', 'Tajikistan', 'Tajikistan', 2090, 1, NULL, NULL),
(210, 'TZ', 'Tanzania', 'Tanzania', 'Tanzania', 2100, 1, NULL, NULL),
(211, 'TH', 'Thailand', 'Thailand', 'Thailand', 2110, 1, NULL, NULL),
(212, 'TG', 'Togo', 'Togo', 'Togo', 2120, 1, NULL, NULL),
(213, 'TK', 'Tokelau', 'Tokelau', 'Tokelau', 2130, 1, NULL, NULL),
(214, 'TO', 'Tonga', 'Tonga', 'Tonga', 2140, 1, NULL, NULL),
(215, 'TT', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 2150, 1, NULL, NULL),
(216, 'TN', 'Tunisia', 'Tunisia', 'Tunisia', 2160, 1, NULL, NULL),
(217, 'TR', 'Turkey', 'Turkey', 'Turkey', 2170, 1, NULL, NULL),
(218, 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 2180, 1, NULL, NULL),
(219, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 2190, 1, NULL, NULL),
(220, 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu', 2200, 1, NULL, NULL),
(221, 'UG', 'Uganda ', 'Uganda ', 'Uganda ', 2210, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ISL', 'Islam', 'Islam', 'Islam', 10, 1, NULL, NULL),
(2, 'KRI', 'Kristen', 'Kristen', 'Kristen', 20, 1, NULL, NULL),
(3, 'KAT', 'Katolik', 'Katolik', 'Katolik', 30, 1, NULL, NULL),
(4, 'HIN', 'Hindu', 'Hindu', 'Hindu', 40, 1, NULL, NULL),
(5, 'BUD', 'Buddha', 'Buddha', 'Buddha', 50, 1, NULL, NULL),
(6, 'KHO', 'Khonghucu', 'Khonghucu', 'Khonghucu', 60, 1, NULL, NULL),
(7, 'SHI', 'Shinto', 'Shinto', 'Shinto', 70, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `app_id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'adm', 'Super Admin', 'Role Super Admin memiliki akses ke semua feature aplikasi.', NULL, NULL),
(2, 1, 'post', 'Content Poster Admin', 'Role Content Poster hanya memiliki akses untuk memposting content.', NULL, NULL),
(3, 1, 'rpt', 'Content Reporter', 'Role Content Reporter hanya memiliki akses untuk membuat laporan.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `app_id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 2, NULL, NULL),
(3, 1, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdept`
--

CREATE TABLE `subdept` (
  `id` int(10) UNSIGNED NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subdept`
--

INSERT INTO `subdept` (`id`, `dept_id`, `code`, `name`, `displayname`, `description`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'MAN', 'Manajemen', 'Manajemen', 'Manajemen', 10, 1, NULL, NULL),
(2, 2, 'DIR', 'Direksi', 'Direksi', 'Direksi', 11, 1, NULL, NULL),
(3, 3, 'DNB', 'DNB', 'DNB', 'DNB', 12, 1, NULL, NULL),
(4, 4, 'ART', 'Artwork', 'Artwork', 'Artwork', 13, 1, NULL, NULL),
(5, 5, 'PLK', 'Pelaksanaan', 'Pelaksanaan', 'Pelaksanaan', 14, 1, NULL, NULL),
(6, 6, 'KEU', 'Finance - Accounting', 'Finance – Accounting', 'Finance – Accounting', 15, 1, NULL, NULL),
(7, 7, 'UMUM', 'UMUM', 'UMUM', 'UMUM', 16, 1, NULL, NULL),
(8, 8, 'HRD', 'HRD', 'HRD', 'HRD', 17, 1, NULL, NULL),
(9, 9, 'ARS', 'Perencanaan Arsitek - Landscape', 'Perencanaan Arsitek - Landscape', 'Perencanaan Arsitek - Landscape', 18, 1, NULL, NULL),
(10, 9, 'INT', 'Perencanaan Interior - Special Lighting', 'Perencanaan Interior - Special Lighting', 'Perencanaan Interior - Special Lighting', 19, 1, NULL, NULL),
(12, 10, 'IT', 'IT', 'IT', 'IT', 21, 1, NULL, NULL),
(13, 10, 'MKT', 'Marketing', 'Marketing', 'Marketing', 22, 1, NULL, NULL),
(14, 10, 'LOG', 'Logistik', 'Logistik', 'Logistik', 23, 1, NULL, NULL),
(15, 10, 'QA', 'QA', 'QA', 'QA', 24, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `superior`
--

CREATE TABLE `superior` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tasksubtype1`
--

CREATE TABLE `tasksubtype1` (
  `id` int(10) UNSIGNED NOT NULL,
  `activitytype_id` int(11) DEFAULT NULL,
  `tasktype_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tasksubtype1`
--

INSERT INTO `tasksubtype1` (`id`, `activitytype_id`, `tasktype_id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Add Email', 'Add Email', NULL, 10, 1, NULL, NULL),
(2, 1, 2, 'Email Client', 'Email Client', NULL, 20, 1, NULL, NULL),
(3, 1, 2, 'Email Client Setting', 'Email Client Setting', NULL, 30, 1, NULL, NULL),
(4, 1, 2, 'Email Group', 'Email Group', NULL, 40, 1, NULL, NULL),
(5, 1, 2, 'Webmail', 'Webmail', NULL, 50, 1, NULL, NULL),
(6, 1, 3, 'harddisk', 'harddisk', NULL, 60, 1, NULL, NULL),
(7, 1, 3, 'I/O Device', 'I/O Device', NULL, 70, 1, NULL, NULL),
(8, 1, 3, 'Memory', 'Memory', NULL, 80, 1, NULL, NULL),
(9, 1, 3, 'Monitor', 'Monitor', NULL, 90, 1, NULL, NULL),
(10, 1, 3, 'Motherboard', 'Motherboard', 'sIIxXIRoawEdn66jOawLr0sWHMJBxPxNxNfm3MKt.png', 100, 1, NULL, '2022-05-10 09:32:55'),
(11, 1, 3, 'Power Suplay', 'Power Suplay', 'hLRoeqD0CvF9ogLzBcpcN35IpfaLTXkT1EgQ3jty.png', 110, 1, NULL, '2022-05-10 09:32:18'),
(12, 1, 3, 'Processor', 'Processor', 'lQkH9MEnDf0YQx5Tx1MeehM6U0WxOx9kMRKLL2Ic.png', 120, 1, NULL, '2022-05-10 09:30:43'),
(13, 1, 3, 'Scanner', 'Scanner', 'CSAs8VLpzWMAqNPFExoxAQm7EXMIwTpHX0JpzdXF.png', 130, 1, NULL, '2022-05-10 09:30:05'),
(14, 1, 3, 'ThinClient', 'ThinClient', 'SxYBw5OupjUOk4DRwx11SJcUaeRgIGCEzJEn9Lo4.jpeg', 140, 1, NULL, '2022-05-10 09:29:33'),
(15, 1, 3, 'UPS', 'UPS', 'yeptfL1hSwTQvRyXJnuFCeMBwuyicig7SVz2z7P0.png', 150, 1, NULL, '2022-05-10 09:28:54'),
(16, 1, 3, 'VGA', 'VGA', 'zhszAftAEbZHbJuuA9Bt5qOII1fIIku51SGBa6kw.png', 160, 1, NULL, '2022-05-10 09:28:16'),
(17, 1, 4, 'Login User', 'Login User', 'DgA1ClEBkMU6WWAsRmC0vZfKDrSXdiQdQiY3FM4D.png', 170, 1, NULL, '2022-05-10 09:27:44'),
(18, 1, 4, 'Password', 'Password', 'yt4DyuDOD52yw9aF4LCuDLK7JA9XfD8Gqhk7jXvK.png', 180, 1, NULL, '2022-05-10 09:27:14'),
(19, 1, 5, 'DHCP', 'DHCP', 'FmTwa0JwAhWotWzrAT4DFqGEzkHgHwStJ8PWaRJD.png', 190, 1, NULL, '2022-05-10 09:26:36'),
(20, 1, 5, 'Firewall', 'Firewall', 'RziyWRDszl7CMUCJFDwcTf9t0fHFUY49GyBTVsjo.png', 200, 1, NULL, '2022-05-10 09:25:53'),
(21, 1, 5, 'Internet', 'Internet', 'd1pQzb4Ko3QBxUinsizyxjKNc3eA7qIG5hcdqLUK.png', 210, 1, NULL, '2022-05-10 09:25:02'),
(22, 1, 5, 'LAN', 'LAN', 'hhaInVcBCNaFst8QTpw7VAsrwcrZCO9heKLGlqLX.png', 220, 1, NULL, '2022-05-10 09:07:23'),
(23, 1, 5, 'WAN', 'WAN', 'VMIPlrZ3yCqT1vWuWUax2luzmYo7fNrN053dcT9D.png', 230, 1, NULL, '2022-05-10 09:24:15'),
(24, 1, 5, 'Wireless', 'Wireless', 'cPj2uNsnPmeBMHjDoFYnOHtIodEpKFHT2PDicMy6.png', 240, 1, NULL, '2022-05-10 09:23:44'),
(25, 1, 7, 'Plotter', 'Plotter', 'xzXGzVy3JcKt12vx15yVWlGddUZ62qblpZBoEuuh.png', 250, 1, NULL, '2022-05-10 09:21:46'),
(26, 1, 7, 'Print Quality', 'Print Quality', 'VNmw5h0RhwXHDISNzanxMXtXKLep9yezwQjpVkiy.png', 260, 1, NULL, '2022-05-10 09:23:07'),
(27, 1, 7, 'Printer Driver / Software', 'Printer Driver / Software', 'MpyKy1eBgS22gvzvQJQItqN9gUo6WNHWn861jSnQ.png', 270, 1, NULL, '2022-05-10 09:22:30'),
(28, 1, 7, 'Printer Setting', 'Printer Setting', 'q8y7DLVGyU3l5E072r6PBpDFEMJ2YRHxD7PNJoPO.png', 280, 1, NULL, '2022-05-10 09:22:14'),
(29, 1, 7, 'Toner / Cartridge', 'Toner / Cartridge', 'btywoIkwjr2lP0J1PpPSSzfF9cpc4tIU1efawUNt.webp', 290, 1, NULL, '2022-05-10 09:21:00'),
(30, 1, 8, 'MS Project', 'MS Project', '1dyGxlpiroUXYOaz6zXb7gtymALwrnLyJN6MVETr.png', 300, 1, NULL, '2022-05-10 09:19:12'),
(31, 1, 8, 'PWA', 'PWA', 'TQiKrbA46TC2GH34kQFUxwLpZEcVu47wf8mqg31A.png', 310, 1, NULL, '2022-05-10 09:18:08'),
(32, 1, 9, 'Cloud Server', 'Cloud Server', '8jb00rn1nXPBr5iAaMbxfhsH3ibGXOL3XGrQzCbO.png', 320, 1, NULL, '2022-05-10 09:17:10'),
(33, 1, 9, 'File Server', 'File Server', 'zVwCoCcEOk49rBZmOt32loDZFAPxix9NW8EIAj8d.png', 330, 1, NULL, '2022-05-10 09:16:36'),
(34, 1, 10, '3D Max', '3D Max', 'VqkuXHdALVRvIKCCDpCEQbrbZObdDFXd6Ok7vlvD.jpeg', 340, 1, NULL, '2022-05-10 09:15:07'),
(35, 1, 10, 'Adobe Reader', 'Adobe Reader', '4C6WwQlDUQyh9pwRY2dMpdcjvglts1nPmEIL9XJY.png', 350, 1, NULL, '2022-05-10 09:15:45'),
(36, 1, 10, 'Antivirus', 'Antivirus', '1pji71MdbyNFSZxxnVlI267LcY9K1jROsWTK6jQJ.png', 360, 1, NULL, '2022-05-10 09:14:23'),
(37, 1, 10, 'Autocad', 'Autocad', 'SIJ7VhSZEk57SCvohuOBT8nG0JEXWqZIoMpgZN80.png', 370, 1, NULL, '2022-05-10 09:13:42'),
(38, 1, 10, 'Browser', 'Browser', 'ZUH1tEvXC5Lj6TuL0KuQQhHjNSVWbxIJiqEIVaHw.png', 380, 1, NULL, '2022-05-10 09:12:13'),
(39, 1, 10, 'GstarCad', 'GstarCad', 'K5JXXxAbWasdD9D9NuLM4jMYM8lX5m6H0GIBiGCk.jpeg', 390, 1, NULL, '2022-05-10 09:12:52'),
(40, 1, 10, 'MS Office', 'MS Office', 'olLTMJtFJfjqM2bBmfVLQ4EFtAa6LlInBpjxvnwe.png', 400, 1, NULL, '2022-05-10 09:10:53'),
(41, 1, 10, 'MSSQL Server', 'MSSQL Server', 'BXsyP7vBGt9g04H1YCWdSlnaTMiNlrWGRQMdaqtl.png', 410, 1, NULL, '2022-05-10 09:11:29'),
(42, 1, 10, 'Operating System', 'Operating System', '8qYauHwpZpDZ5JhRIeA0miaBeb9ELwKpnGhwxjMb.png', 420, 1, NULL, '2022-05-10 09:10:22'),
(43, 1, 10, 'Other', 'Other', NULL, 430, 1, NULL, NULL),
(44, 1, 10, 'PDF', 'PDF', 'ycKNVdA4i5WfFYhGxXS3BuyxmtjOoBUz1AnjnMBd.png', 440, 1, NULL, '2022-05-10 09:09:31'),
(45, 1, 10, 'Photoshop', 'Photoshop', 'LsD8B9zYGQk1FAOpA4wbguEVwyhEmhkFvKDqI2jh.png', 450, 1, NULL, '2022-05-10 09:08:50'),
(46, 1, 10, 'Remote Server', 'Remote Server', NULL, 460, 1, NULL, NULL),
(47, 1, 10, 'ServiceDesk Plus', 'ServiceDesk Plus', NULL, 470, 1, NULL, NULL),
(48, 1, 10, 'Sketchup', 'Sketchup', NULL, 480, 1, NULL, NULL),
(49, 1, 10, 'Virtual Memory', 'Virtual Memory', NULL, 490, 1, NULL, NULL),
(50, 1, 10, 'VRAY', 'VRAY', NULL, 500, 1, NULL, NULL),
(51, 1, 11, 'Akses Timesheet', 'Akses Timesheet', 'QLGb0ZHsnG22tjiEwxqeSVT8jXhPaFOVBlpGtdiG.png', 510, 1, NULL, '2022-05-10 06:33:04'),
(54, 3, 16, 'UPS', 'Penambahan UPS diruang server lantai 3', '', NULL, NULL, '2022-05-17 03:23:01', '2022-05-17 03:23:01'),
(55, 3, 17, 'Renewal Kaspersky 2022 - 2023', 'Renewal Kaspersky untuk periode tahun 2022 - 2023', '', NULL, NULL, '2022-05-17 03:24:02', '2022-05-17 03:24:02'),
(56, 3, 16, 'Renewal SSL', 'Renewal SSL untuk Mail server, PWA, Cloud Hadiprana', '', NULL, NULL, '2022-05-17 03:24:37', '2022-05-17 03:24:37'),
(57, 3, 18, 'Renewal Hillstone', 'renewal hillstone firewall', '', NULL, NULL, '2022-05-17 03:25:14', '2022-05-17 03:25:14'),
(58, 1, 3, 'Laptop', 'Laptop', '', NULL, NULL, '2022-05-20 01:24:32', '2022-05-20 01:24:32'),
(59, 1, 6, 'Backup / Restore', 'Backup And Restore Data', '', NULL, NULL, '2022-05-20 01:49:33', '2022-05-20 01:49:33'),
(60, 1, 10, 'Compress File zip Rar', 'Aplikasi file compress', '', NULL, NULL, '2022-05-23 02:36:42', '2022-05-23 02:36:42'),
(61, 3, 17, 'Tasksheet', 'Project Aplikasi Activity Report', '', NULL, NULL, '2022-05-23 08:05:46', '2022-05-23 08:05:46'),
(62, 3, 17, 'Budget IT', 'Aplikasi budget tahunan IT', '', NULL, NULL, '2022-06-30 08:01:08', '2022-06-30 08:01:08'),
(63, 1, 3, 'Fingerprint', 'Fingerprint', '', NULL, NULL, '2022-07-20 04:58:10', '2022-07-20 04:58:50'),
(64, 1, 3, 'CPU', 'PC', '', NULL, NULL, '2022-08-05 04:53:09', '2022-08-05 04:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `tasksubtype2`
--

CREATE TABLE `tasksubtype2` (
  `id` int(10) UNSIGNED NOT NULL,
  `activitytype_id` int(11) DEFAULT NULL,
  `tasktype_id` int(11) DEFAULT NULL,
  `tasksubtype1_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tasksubtype2`
--

INSERT INTO `tasksubtype2` (`id`, `activitytype_id`, `tasktype_id`, `tasksubtype1_id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 'MS Outlook', 'MS Outlook', NULL, 10, 1, NULL, NULL),
(2, 1, 2, 2, 'Thunderbird', 'Thunderbird', NULL, 20, 1, NULL, NULL),
(3, 1, 2, 2, 'Zimbra', 'Zimbra', NULL, 30, 1, NULL, NULL),
(4, 1, 2, 4, 'Add Email Group', 'Add Email Group', NULL, 40, 1, NULL, NULL),
(5, 1, 2, 4, 'Remove Email Group', 'Remove Email Group', NULL, 50, 1, NULL, NULL),
(6, 1, 3, 7, 'Keyboard', 'Keyboard', NULL, 60, 1, NULL, NULL),
(7, 1, 3, 7, 'Mouse', 'Mouse', NULL, 70, 1, NULL, NULL),
(8, 1, 3, 9, 'Monitor LCD', 'Monitor LCD', NULL, 80, 1, NULL, NULL),
(9, 1, 3, 9, 'Monitor LED', 'Monitor LED', NULL, 90, 1, NULL, NULL),
(10, 1, 3, 9, 'Tube', 'Tube', NULL, 100, 1, NULL, NULL),
(11, 1, 3, 10, 'Motherboard AMD', 'Motherboard AMD', NULL, 110, 1, NULL, NULL),
(12, 1, 3, 10, 'Motherboard Intel', 'Motherboard Intel', NULL, 120, 1, NULL, NULL),
(13, 1, 3, 13, 'Scanner A3', 'Scanner A3', NULL, 130, 1, NULL, NULL),
(14, 1, 3, 13, 'Scanner A4', 'Scanner A4', NULL, 140, 1, NULL, NULL),
(15, 1, 3, 14, 'Ncomputing', 'Ncomputing', NULL, 150, 1, NULL, NULL),
(16, 1, 3, 16, 'Onboard', 'Onboard', NULL, 160, 1, NULL, NULL),
(17, 1, 3, 16, 'PCI Ex', 'PCI Ex', NULL, 170, 1, NULL, NULL),
(18, 1, 4, 18, 'Change Password', 'Change Password', NULL, 180, 1, NULL, NULL),
(19, 1, 4, 18, 'Reset Password', 'Reset Password', NULL, 190, 1, NULL, NULL),
(20, 1, 9, 33, 'Access', 'Access', NULL, 200, 1, NULL, NULL),
(21, 1, 10, 34, 'Fix', 'Fix', NULL, 210, 1, NULL, NULL),
(22, 1, 10, 34, 'Install', 'Install', NULL, 220, 1, NULL, NULL),
(23, 1, 10, 34, 'Uninstall', 'Uninstall', NULL, 230, 1, NULL, NULL),
(24, 1, 10, 34, 'Upgrade', 'Upgrade', NULL, 240, 1, NULL, NULL),
(25, 1, 10, 35, 'Install', 'Install', NULL, 250, 1, NULL, NULL),
(26, 1, 10, 35, 'Uninstall', 'Uninstall', NULL, 260, 1, NULL, NULL),
(27, 1, 10, 36, 'Install', 'Install', NULL, 270, 1, NULL, NULL),
(28, 1, 10, 36, 'Uninstall', 'Uninstall', NULL, 280, 1, NULL, NULL),
(29, 1, 10, 38, 'Install', 'Install', NULL, 290, 1, NULL, NULL),
(30, 1, 10, 38, 'Uninstall', 'Uninstall', NULL, 300, 1, NULL, NULL),
(31, 1, 10, 40, 'Install', 'Install', NULL, 310, 1, NULL, NULL),
(32, 1, 10, 40, 'Uninstall', 'Uninstall', NULL, 320, 1, NULL, NULL),
(33, 1, 10, 40, 'Upgrade', 'Upgrade', NULL, 330, 1, NULL, NULL),
(34, 1, 10, 41, 'Install', 'Install', NULL, 340, 1, NULL, NULL),
(35, 1, 10, 41, 'Uninstall', 'Uninstall', NULL, 350, 1, NULL, NULL),
(36, 1, 11, 51, 'Login Timesheet', 'Login Timesheet', NULL, 360, 1, NULL, NULL),
(37, 1, 10, 48, 'Install', 'Install', '', NULL, NULL, '2022-05-17 06:27:58', '2022-05-17 06:27:58'),
(38, 1, 10, 48, 'Uninstall', 'Uninstall', '', NULL, NULL, '2022-05-17 06:28:48', '2022-05-17 06:28:48'),
(39, 1, 10, 48, 'Upgrade', 'Upgrade Version', '', NULL, NULL, '2022-05-17 06:29:15', '2022-05-17 06:29:15'),
(40, 1, 10, 48, 'Repair', 'Repair - Fix', '', NULL, NULL, '2022-05-17 06:29:44', '2022-05-17 06:29:44'),
(41, 1, 10, 37, 'Setting', 'Setting - Konfigurasi', '', NULL, NULL, '2022-05-17 06:45:04', '2022-05-17 06:45:04'),
(42, 1, 3, 58, 'Install Ulang', 'Install Ulang laptop', '', NULL, NULL, '2022-05-20 01:25:39', '2022-05-20 01:25:39'),
(43, 1, 3, 58, 'Setting laptop', 'Setting Laptop', '', NULL, NULL, '2022-05-20 01:26:00', '2022-05-20 01:26:00'),
(44, 1, 6, 59, 'Backup Data', 'Backup Data', '', NULL, NULL, '2022-05-20 01:50:10', '2022-05-20 01:50:10'),
(45, 1, 6, 59, 'Restore Data', 'Restore Data', '', NULL, NULL, '2022-05-20 01:50:29', '2022-05-20 01:50:29'),
(46, 1, 10, 60, 'Install', 'Install Application Compress File', '', NULL, NULL, '2022-05-23 02:44:39', '2022-05-23 02:44:39'),
(47, 1, 10, 60, 'Uninstall - Repair', 'Uninstall repair', '', NULL, NULL, '2022-05-23 02:45:18', '2022-05-23 02:45:18'),
(48, 1, 2, 1, 'Email Account', 'Add New Email Account', '', NULL, NULL, '2022-06-28 02:56:10', '2022-06-28 02:56:10'),
(49, 1, 2, 1, 'Add Email Group', 'Add New Email Group', '', NULL, NULL, '2022-06-28 02:56:34', '2022-06-28 02:56:34'),
(50, 1, 3, 63, 'Solution P207', 'Fingerprint Solution P207', '', NULL, NULL, '2022-07-20 04:59:17', '2022-07-20 04:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `tasktype`
--

CREATE TABLE `tasktype` (
  `id` int(10) UNSIGNED NOT NULL,
  `activitytype_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numsort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tasktype`
--

INSERT INTO `tasktype` (`id`, `activitytype_id`, `name`, `description`, `image`, `numsort`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Domain', 'Domain', NULL, 10, 1, NULL, NULL),
(2, 1, 'Email', 'Email', 'SH8Hqs21grN8f5Y2n7GeiRz1mJiWjKD2CrsFYSZv.png', 20, 1, NULL, '2022-05-09 06:37:17'),
(3, 1, 'Hardware', 'Hardware', NULL, 30, 1, NULL, NULL),
(4, 1, 'Login', 'Login', 'OSZRqLXWKNC3Hi5G1l9XrFFEfzwQ0w9Fo7gic6NC.png', 40, 1, NULL, '2022-05-09 06:36:28'),
(5, 1, 'Network', 'Network', NULL, 50, 1, NULL, NULL),
(6, 1, 'Others', 'Others', 'OP3BmSn0tnJFC57tKAu8sEHF8jRQjO49ibXTsZ73.png', 60, 1, NULL, '2022-05-09 06:39:17'),
(7, 1, 'Printers', 'Printers', NULL, 70, 1, NULL, NULL),
(8, 1, 'Project Server', 'Project Server', NULL, 80, 1, NULL, NULL),
(9, 1, 'Server', 'Server', NULL, 90, 1, NULL, NULL),
(10, 1, 'Software', 'Software', NULL, 100, 1, NULL, NULL),
(11, 1, 'Timesheet', 'Timesheet', 'kL8AhLswiKEpeWdmomPF3QqaY2CbEKIKWp0DNJ6J.png', 110, 1, NULL, '2022-05-09 06:28:33'),
(12, 2, 'Server', 'Server', '3HrCXr8dVjvI4uLEbi7JgVqCMxzg57GAPhkMExcP.png', 120, 1, NULL, '2022-05-09 06:26:50'),
(13, 2, 'PC', 'PC', 'QCrSF90r4yukMOsyw5wjqxI1zJGtXrqpftXyQc3w.png', 130, 1, NULL, '2022-05-09 06:25:59'),
(14, 2, 'Printer/Plotter', 'Printer/Plotter', 'SnciVYFCstYF6Y1wvoVKtNNyPX7ReinRMycFB6FU.png', 140, 1, NULL, '2022-05-09 06:24:39'),
(15, 2, 'Networking', 'Networking', 'l8YStmkKnFo2i3yQxfZuCuIVscUTN2t7gMJvPK0x.png', 150, 1, NULL, '2022-05-09 06:21:40'),
(16, 3, 'Hardware', 'Hardware', 'YZptQpy5vx9yHnF2b2i4nCI4YCB9EmNukE00rGG1.png', 160, 1, NULL, '2022-05-09 06:21:25'),
(17, 3, 'Software', 'Software', 'ehhzfC1UDA9aHGx1QKMhHznvPGVuQThIc8Z5XdID.png', 170, 1, NULL, '2022-05-09 06:35:05'),
(18, 3, 'Network', 'Network', 'jrNh4Qle9F1FI4KgrpmolnRRJqxmW58UlElpmzv0.png', 180, 1, NULL, '2022-05-09 06:19:11'),
(23, 2, 'Sparepart', 'Maintenance Data Sparepart', 'o5aewppLmWGv2sDVpK3IaaZcTbYp08IrvXUrWqYA.png', NULL, NULL, '2022-05-13 02:29:54', '2022-05-13 02:30:53'),
(24, 2, 'Software', 'Software / Aplikasi', 'FNB0PlL740SjHi2bJgNFFnh0DxQZZh50nVtqeoTJ.png', NULL, NULL, '2022-05-17 02:32:29', '2022-05-17 02:32:43'),
(25, 2, 'CCTV', 'Maintenance CCTV', '', NULL, NULL, '2022-05-20 01:23:47', '2022-05-20 01:23:47'),
(26, 2, 'Administrasi', 'Administrasi Dokumen, Penawaran', '', NULL, NULL, '2022-06-07 02:43:26', '2022-06-07 02:43:26'),
(27, 1, 'Scanner', 'Scanner', '', NULL, NULL, '2022-06-07 02:44:22', '2022-06-07 02:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bo` tinyint(1) NOT NULL DEFAULT 0,
  `technician` tinyint(1) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bo`, `technician`, `disabled`) VALUES
(1, 'Super Admin', 'superadmin@mail.com', '2022-05-09 02:47:32', '$2y$10$uLojOvY1X38XheIvcqPnderRi9R4nyHPc4sWHqee/tQ6AuPpTZmsW', 'EEbmp8fMMN', NULL, NULL, 1, 0, 0),
(2, 'Post Admin', 'postadmin@mail.com', '2022-05-09 02:47:32', '$2y$10$JmkU81bcBAnAVhCQuGJyyuUWDCVXEdP8epv.JVB.qeEGUsvgZ/v66', 'uWWX6QLqtA', NULL, NULL, 1, 0, 0),
(3, 'Report Admin', 'reportadmin@mail.com', '2022-05-09 02:47:33', '$2y$10$B1Ux5cbJpIDOBVPNAdlxxOU1TuCz6t32HgwXVJPgIhIQMtyE0eV72', 'pI1yv01msk', NULL, NULL, 1, 0, 0),
(4, 'Guest 1', 'guest1@mail.com', '2022-05-09 02:47:33', '$2y$10$wKu5Hd2JvFDNAuT9hHHEtOndk3/fKzhCV.Oh0XvxmPJzoiLQn8CwC', 'pwYE7NXKxq', NULL, NULL, 0, 0, 0),
(5, 'Guest 2', 'guest2@mail.com', '2022-05-09 02:47:33', '$2y$10$yOX5K7hoVLVCdhwbs5VMseEnXL5doxPV2GqYIGYf9dBPilL2ZMfHK', 'fuKrp3I7tb', NULL, NULL, 0, 0, 0),
(6, 'Arief Sunjaya', 'arief_sunjaya@hadiprana.co.id', '2022-05-09 02:47:33', '$2y$10$DDy3gxyOyIqT3feHd2X6gOzQz4XysK5/ju290lww1EH6JPASx1/3K', 'GEIPWVwFK1tIP1TW3C1AxGcbrv9Q4II97ekbfhjsLHclyh4A5s8AnFu0oAfh', NULL, NULL, 1, 1, 0),
(7, 'Hendi Pratama', 'hendi.pratama@hadiprana.co.id', '2022-05-09 02:47:33', '$2y$10$2oHkdTh0u8SNj/E/W2o4Y.Z2X18vxi3r1lzeu7wjdScT2Ml7DXEnm', 'Q5roSdkTSGfj7qYMqmM8nQyOxLxMwzgTTBEBwGF9OpohTpEfjsRmlCPnN9sx', NULL, NULL, 1, 1, 0),
(9, 'Fandhi', 'fandhi@hadiprana.co.id', '2022-05-09 02:47:33', '$2y$10$vuv7zmR6t8T/QQw57hKWqu/sR/G6jmkRSCG795T7mIQOXcAKxQz72', 'Xk23HtDlGDWTPjXwf8d78Aby7PkA9ENFHggcBA2pvTtUAyb0fQTvlZNDhBMw', NULL, NULL, 1, 1, 0),
(10, 'Arin', 'arinsuga@hadiprana.co.id', '2022-05-09 02:47:33', '$2y$10$fTyRJdNJdHeqVZQ/epMD7uyERsZy8TNzy5Jvzwn4fJ0VLSOMrqaJa', 'c5GbV9PTiP6j8KLeILt0EjLis2O3Xv6TA3n4phyg9sqWhIFu1Zhynu20FLr7', NULL, NULL, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activitystatus`
--
ALTER TABLE `activitystatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activitysubtype`
--
ALTER TABLE `activitysubtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activitytype`
--
ALTER TABLE `activitytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bizunit`
--
ALTER TABLE `bizunit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodtype`
--
ALTER TABLE `bloodtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empstatus`
--
ALTER TABLE `empstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emptype`
--
ALTER TABLE `emptype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inactivetype`
--
ALTER TABLE `inactivetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital`
--
ALTER TABLE `marital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdept`
--
ALTER TABLE `subdept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superior`
--
ALTER TABLE `superior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasksubtype1`
--
ALTER TABLE `tasksubtype1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasksubtype2`
--
ALTER TABLE `tasksubtype2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasktype`
--
ALTER TABLE `tasktype`
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
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `activitystatus`
--
ALTER TABLE `activitystatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activitysubtype`
--
ALTER TABLE `activitysubtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activitytype`
--
ALTER TABLE `activitytype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bizunit`
--
ALTER TABLE `bizunit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodtype`
--
ALTER TABLE `bloodtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `empstatus`
--
ALTER TABLE `empstatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emptype`
--
ALTER TABLE `emptype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inactivetype`
--
ALTER TABLE `inactivetype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marital`
--
ALTER TABLE `marital`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subdept`
--
ALTER TABLE `subdept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `superior`
--
ALTER TABLE `superior`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasksubtype1`
--
ALTER TABLE `tasksubtype1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tasksubtype2`
--
ALTER TABLE `tasksubtype2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tasktype`
--
ALTER TABLE `tasktype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
