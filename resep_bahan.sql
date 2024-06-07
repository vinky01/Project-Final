-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 05:08 PM
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
-- Table structure for table `resep_bahan`
--

CREATE TABLE `resep_bahan` (
  `id_resep` int(11) NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `jumlah_satuan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resep_bahan`
--

INSERT INTO `resep_bahan` (`id_resep`, `nama_bahan`, `jumlah_satuan`) VALUES
(1, 'Bakso sapi', '4 butir'),
(1, 'Bawang merah', '6 butir'),
(1, 'Bawang merah goreng untuk pelengkap', ''),
(1, 'Bawang putih', '2 siung'),
(1, 'Cabai merah keriting', '2 buah'),
(1, 'Garam', '1/2 sdt'),
(1, 'Kecap manis', '1 sdm'),
(1, 'Mentega', '2 sdm'),
(1, 'Mentimun iris untuk pelengkap', '1 buah'),
(1, 'Nasi putih', '600 gr'),
(1, 'Royco sapi', '1 bungkus'),
(1, 'Telur ayam', '2 butir'),
(1, 'Terasi', '1/2 sdt'),
(1, 'Tomat', '1 buah'),
(2, 'Bawang merah, iris tipis', '2 butir'),
(2, 'Bawang putih, iris tipis', '2 siung'),
(2, 'Cabai rawit, iris tipis', '2 buah'),
(2, 'Garam', '1 sdt'),
(2, 'Kecap manis', '30ml'),
(2, 'Merica putih bubuk dan gula', '1/2 sdt'),
(2, 'Mie telur, rebus lalu sisihkan', '120g'),
(2, 'Minyak sayur', '2 sdm'),
(2, 'Sawi, iris kasar lalu seduh dan tiriskan', '200g'),
(2, 'Taoge, siram air panas dan tiriskan', '100g'),
(2, 'Telur ayam kampung, kocok lepas', '2 butir'),
(3, 'Air', '1100 ml'),
(3, 'Beras, cuci bersih', '150 gram'),
(3, 'Daun kangkung', '100 gram'),
(3, 'Daun kemangi, siangi', '5 tangkai'),
(3, 'Daun labu, bersihkan', '100 gram'),
(3, 'Daun salam', '2 lembar'),
(3, 'Garam', '2 sdt'),
(3, 'Ikan asin jambal roti, goreng kering', '150 gram'),
(3, 'Jagung pipilan', '300 gram'),
(3, 'Kaldu bubuk rasa ayam', '2 sdt'),
(3, 'Labu kuning, potong dadu 2 cm', '200 gram'),
(3, 'Santan kental', '500 ml'),
(3, 'Serai', '1 batang'),
(3, 'Ubi merah, potong dadu 2 cm', '150 gram'),
(4, 'Bawang merah', '9-10 buah'),
(4, 'Bawang putih', '5 siung'),
(4, 'Cabai merah keriting', '5 buah'),
(4, 'Cabai merah teropong', '5 buah'),
(4, 'Cengkih', '5 butir'),
(4, 'Daging sapi, potong-potong', '1 kg'),
(4, 'Daun jeruk', '5 lembar'),
(4, 'Daun salam', '5 lembar'),
(4, 'Garam', '1 sdt'),
(4, 'Jahe', '5 cm'),
(4, 'Jinten', '1 sdt'),
(4, 'Kaldu bubuk', '1 sdt'),
(4, 'Kapulaga', '5 butir'),
(4, 'Kayu manis', '5 cm'),
(4, 'Kelapa parut', '1 buah'),
(4, 'Kemiri', '3 butir'),
(4, 'Ketumbar', '1 1/2 sdt'),
(4, 'Lada', 'secukupnya'),
(4, 'Lengkuas', '5 cm'),
(4, 'Minyak', 'secukupnya'),
(4, 'Pala', 'secukupnya, parut'),
(4, 'Santan encer', '600 ml'),
(4, 'Santan kental', '200 ml'),
(4, 'Serai', '2 batang'),
(5, 'Air', '100 ml'),
(5, 'Bawang putih, memarkan', '3 siung'),
(5, 'Brokoli, rebus matang', '150 gram'),
(5, 'Daun bawang, iris', '2 batang'),
(5, 'Garam', '1 sdt'),
(5, 'Jagung muda', '50 gram'),
(5, 'Jahe, memarkan', '3 cm'),
(5, 'Kembang kol, rebus matang', '150 gram'),
(5, 'Merica bubuk', '1 sdt'),
(5, 'Minyak goreng', '2 sdm'),
(5, 'Minyak wijen', '1 sdm'),
(5, 'Saus tiram', '2 sdm'),
(5, 'Tepung maizena, larutkan dengan sedikit air', '1 sdt'),
(5, 'Udang sedang', '12 ekor'),
(5, 'Wortel, iris', '2 batang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resep_bahan`
--
ALTER TABLE `resep_bahan`
  ADD PRIMARY KEY (`id_resep`,`nama_bahan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resep_bahan`
--
ALTER TABLE `resep_bahan`
  ADD CONSTRAINT `resep_bahan_ibfk_1` FOREIGN KEY (`id_resep`) REFERENCES `resep` (`id_resep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
