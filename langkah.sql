-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 05:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `langkah`
--

CREATE TABLE `langkah` (
  `id_langkah` int(11) NOT NULL,
  `id_resep` int(11) DEFAULT NULL,
  `nomor_langkah` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `langkah`
--

INSERT INTO `langkah` (`id_langkah`, `id_resep`, `nomor_langkah`, `deskripsi`) VALUES
(1, 1, 1, 'Panaskan minyak goreng di dalam wajan. Tumis bawang putih hingga harum.'),
(2, 1, 2, 'Tambahkan telur kocok dan aduk hingga telur matang.'),
(3, 1, 3, 'Masukkan wortel, daun bawang, garam, dan merica bubuk. Aduk rata.'),
(4, 1, 4, 'Masukkan nasi putih. Aduk hingga merata.'),
(5, 1, 5, 'Tumis hingga nasi matang dan sedikit kering.'),
(6, 1, 6, 'Sajikan nasi goreng dalam piring saji.'),
(7, 1, 1, 'Panaskan minyak goreng di dalam wajan. Tumis bawang putih hingga harum.'),
(8, 1, 2, 'Tambahkan telur kocok dan aduk hingga telur matang.'),
(9, 1, 3, 'Masukkan wortel, daun bawang, garam, dan merica bubuk. Aduk rata.'),
(10, 1, 4, 'Masukkan nasi putih. Aduk hingga merata.'),
(11, 1, 5, 'Tumis hingga nasi matang dan sedikit kering.'),
(12, 1, 6, 'Sajikan nasi goreng dalam piring saji.'),
(13, 2, 1, 'Tumis irisan bawang merah, putih, dan cabai hingga harum.'),
(14, 2, 2, 'Tambahkan kocokan telur lepas dan aduk rata di atas wajan.'),
(15, 2, 3, 'Masukkan mie, taoge, dan sawi yang telah direbus dan ditiriskan sebelumnya. Aduk perlahan.'),
(16, 2, 4, 'Tambahkan gula, garam, merica, dan Bango Kecap Manis secukupnya.'),
(17, 2, 5, 'Setelah matang dan tercampur rata, angkat dan sajikan dengan pelengkap.'),
(18, 3, 1, 'Rebus beras beserta daun salam dan serai hingga lunak. Masukkan jagung pipilan, santan, garam, dan kaldu bubuk, aduk rata. Masak sambil diaduk hingga jagung matang.'),
(19, 3, 2, 'Masukkan labu kuning dan ubi merah, masak sampai ubi dan labu matang, aduk rata.'),
(20, 3, 3, 'Tambahkan dengan daun labu, daun kangkung, dan daun kemangi, aduk rata hingga bubur mengental dan sayuran lunak, kemudian angkat.'),
(21, 3, 4, 'Sajikan bubur manado selagi panas dengan ikan asin jambal roti yang telah digoreng.'),
(22, 4, 1, 'Haluskan cabai merah teropong, cabai merah keriting, bawang merah, bawang putih, jahe, ketumbar, jinten, kemiri, garam, kaldu bubuk, lada, dan minyak menggunakan blender. Sisihkan.'),
(23, 4, 2, 'Sangrai kelapa parut. Sisihkan.'),
(24, 4, 3, 'Masak bumbu yang sudah dihaluskan, masukkan potongan daging sapi, tambahkan daun jeruk, kapulaga cengkih, lengkuas, daun salam, kayu manis, parutan pala, dan kelapa sangrai. Aduk-aduk. Tambahkan santan cair. Masak sebentar.'),
(25, 4, 4, 'Masukkan santan kental, masak hingga kering. Angkat dan sajikan.'),
(26, 5, 1, 'Panaskan minyak goreng, tumis bawang putih dan jahe.'),
(27, 5, 2, 'Masukkan udang dan saus tiram, aduk rata.'),
(28, 5, 3, 'Tambahkan garam, merica, dan minyak wijen. Aduk rata.'),
(29, 5, 4, 'Masukkan air, masak hingga mendidih.'),
(30, 5, 5, 'Kentalkan dengan larutan tepung maizena.'),
(31, 5, 6, 'Masukkan jagung, wortel, daun bawang, brokoli, dan kembang kol. Masak sebentar.'),
(32, 5, 7, 'Angkat. Sajikan hangat.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `langkah`
--
ALTER TABLE `langkah`
  ADD PRIMARY KEY (`id_langkah`),
  ADD KEY `id_resep` (`id_resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `langkah`
--
ALTER TABLE `langkah`
  MODIFY `id_langkah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `langkah`
--
ALTER TABLE `langkah`
  ADD CONSTRAINT `langkah_ibfk_1` FOREIGN KEY (`id_resep`) REFERENCES `resep` (`id_resep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
