-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 05:06 PM
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
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`id_resep`, `judul`, `deskripsi`, `gambar`) VALUES
(1, 'Nasi Goreng', 'Nasi goreng adalah hidangan nasi goreng Asia Tenggara, biasanya dimasak dengan potongan daging dan sayuran.', 'nasi_goreng.jpeg'),
(2, 'Mie Goreng', 'Mie goreng adalah makanan yang terbuat dari mie yang diaduk dengan bumbu-bumbu seperti kecap, bawang merah, bawang putih, dan cabe. Biasanya disajikan dengan telur mata sapi, ayam goreng, atau kerupuk.', 'mie-goreng.jpeg'),
(3, 'Tinutuan (Bubur Manado)', 'Tinutuan atau juga disebut Bubur Manado merupakan makanan khas Manado, Sulawesi Utara. Makanan ini dominan terbuat dari sayur-sayuran yang dicampurkan dengan nasi dan bahan-bahan lainnya.', 'tinutuan.jpeg'),
(4, 'Rendang', 'Rendang adalah masakan Minang. Ini adalah hidangan kaya daging yang telah dimasak perlahan dan direbus dalam santan yang dibumbui dengan campuran bumbu dan rempah-rempah sampai cairannya menguap dan dagingnya berubah menjadi coklat tua dan empuk, menjadi karamel dan diresapi dengan rasa yang kaya.', 'rendang.jpeg'),
(5, 'Capcay', 'Cap cai, terkadang dieja cap cay, adalah istilah yang berasal dari bahasa Hokkien untuk hidangan sayur tumis Cina Indonesia dan Peranakan populer yang berasal dari masakan Fujian.', 'capcay.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
