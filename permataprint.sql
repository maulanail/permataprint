-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 03:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `permataprint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(4, 'permataprint', '759f4ac20b20b752f0933f33aa356cba', 0),
(5, 'lanangkun', 'fffb3dfbf05b81d94ed9e395686a493a', 0),
(6, 'kaizen', '4ff6f7fd26ebb420f3630c2d2231c5e8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(50) NOT NULL,
  `id_produk` int(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `upload_gambar` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `ukuran_produk` varchar(50) NOT NULL,
  `jenis_cat` varchar(50) NOT NULL,
  `ukuran_desain` varchar(50) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `jumlah_produk` int(100) NOT NULL,
  `file_desain` varchar(100) NOT NULL,
  `deskripsi_desain` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_produk`, `username`, `upload_gambar`, `nama_produk`, `ukuran_produk`, `jenis_cat`, `ukuran_desain`, `harga_produk`, `jumlah_produk`, `file_desain`, `deskripsi_desain`, `status`, `address`, `total_harga`) VALUES
(131, 53, 'Erik', '357448936_dusty_prev_ui.png', 'Kaos Cotton 20s O-Neck - Dusty', 'M', 'Rubber', '1 - 3 warna + A5 (20 x 14 cm)', '1000', 2, 'DSC00218.JPG', 'sablon di belakang baju', 3, 'Talaga Bestari', '2000'),
(132, 53, 'Erik', '357448936_dusty_prev_ui.png', 'Kaos Cotton 20s O-Neck - Dusty', 'M', 'Rubber', '1 - 3 warna + A5 (20 x 14 cm)', '1000', 3, 'ww.png', 'Sablon di belakang baju', 3, 'taman balaraja', '3000'),
(143, 56, 'Ilham Maulana', '1867371554_white0_prev_ui.png', 'Kaos Cotton O-Neck - Putih', 'M', 'Rubber', '1 - 3 warna + A6 (20 x 7 cm))', '55000', 1, 'ESA UNGGUL.png', 'warna biru nya lebih muda', 3, 'citra raya', '55000'),
(145, 53, 'Ilham Maulana', '357448936_dusty_prev_ui.png', 'Kaos Cotton 20s O-Neck - Dusty', 'M', 'Rubber', '1 - 3 warna + A5 (20 x 14 cm)', '1000', 1, 'Screenshot_2023-08-16_150925-removebg-preview.png', 'Sablon di belakang baju', 3, 'Talaga Bestari', '1000'),
(149, 53, 'Ilham Maulana', '357448936_dusty_prev_ui.png', 'Kaos Cotton 20s O-Neck - Dusty', 'L', 'Plastisol', '1 - 3 warna + A5 (28 x 10 cm)', '1000', 1, 'Screenshot_2023-08-16_150925-removebg-preview.png', '', 1, 'Talaga Bestari', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `masterproduk`
--

CREATE TABLE `masterproduk` (
  `id_produk` int(15) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `upload_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterproduk`
--

INSERT INTO `masterproduk` (`id_produk`, `kode`, `nama_produk`, `harga`, `ukuran`, `jumlah`, `deskripsi`, `upload_gambar`) VALUES
(51, 'KC20sHA', 'Kaos Cotton O-Neck - Hijau Army', 55000, 'L', 10, 'T-Shirt 100% Cotton Combed. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '2102267010_army_prev_ui.png'),
(53, 'KC20DUS', 'Kaos Cotton 20s O-Neck - Dusty', 1000, 'L', 10, 'T-Shirt 100% Cotton Combed. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '357448936_dusty_prev_ui.png'),
(54, 'KC20sHI', 'Kaos Cotton O-Neck - Hitam', 55000, 'L', 50, 'T-Shirt 100% Cotton Combed. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1926705426_hita_prev_ui.png'),
(55, 'KC20sME', 'Kaos Cotton O-Neck - Merah', 55000, 'L', 10, 'T-Shirt 100% Cotton Combed. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '590884568_redo_prev_ui.png'),
(56, 'KC20sPU', 'Kaos Cotton O-Neck - Putih', 55000, 'L', 10, 'T-Shirt 100% Cotton Combed. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1867371554_white0_prev_ui.png'),
(58, 'HRL', 'Kaos Raglan Merah Putih', 61000, 'M', 10, 'T-Shirt 100% Hyget. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1166858282_hyget2.png'),
(59, 'Jhaa', 'Kaos Jersey - Hitam Abu-Abu', 90000, 'XL', 15, 'T-Shirt 100% Jersey. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1043345504_jersey1.png'),
(60, 'jhb', 'Kaos Jersey - Hitam Biru', 85000, 'L', 20, 'T-Shirt 100% Jersey. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1740745367_jersey2.png'),
(61, 'pk', 'Kaos Polyster - Kuning', 65000, 'L', 20, 'T-Shirt 100% Polyster. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '2139656212_polykuning.png'),
(62, 'ph', 'Kaos Polyster - Hijau', 65000, 'M', 10, 'T-Shirt 100% Polyster. Kaos yang perusahaan kami gunakan merupakan kaos yang telah terbukti bagus dan digunakan oleh kebanyakan perusahaan yang serupa dengan kami.', '1728824359_polyhijau.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `cusname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ponsel` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `cusname`, `email`, `ponsel`, `alamat`, `password`) VALUES
(12, 'Ferdi', 'Ferdiansyah', 'yansahferdi99@gmail.com', '089686025163', 'Taman Balaraja blok C2 No.19', '0b955b35fcf2122e5e4dbbe9758b5861'),
(15, 'Ipan Erik', 'Erik', 'erik991100@gmail.com', '0895330178897', 'Balaraja', '6a42dd6e7ca9a813693714b0d9aa1ad8'),
(16, 'permataprint', 'permataprint', 'permataprint@gmail.com', '085780178107', 'Jl. Pasir Awi, RT.003/RW.002, Sukaasih, Kec. Ps. Kemis, Kabupaten Tangerang, Banten 15560', '759f4ac20b20b752f0933f33aa356cba'),
(17, 'Nurcholis', 'Cholis', 'choliskun@gmail.com', '081225304505', 'Jl. Perum Bukit Tiara No.G2, RW.16, Pasir Jaya, Kec. Cikupa, Kabupaten Tangerang, Banten 15710', '0e3dcc34425e5f4f856f31072e951eb7'),
(19, 'Ilham Maulana', 'Ilham Maulana', 'ilham.mau711@gmail.com', '081311394346', 'Kp. Tegal Kali Baru', 'aff4b352312d5569903d88e0e68d3fbb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `masterproduk`
--
ALTER TABLE `masterproduk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `masterproduk`
--
ALTER TABLE `masterproduk`
  MODIFY `id_produk` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
