-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 12:14 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siamang`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id_acara` int(11) NOT NULL,
  `nama_acara` varchar(50) NOT NULL,
  `gs` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `lokasi` varchar(80) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `rating` int(10) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id_acara`, `nama_acara`, `gs`, `genre`, `lokasi`, `harga`, `tanggal`, `deskripsi`, `rating`, `gambar`) VALUES
(19, 'RADAR MALANG Music Versary', 'Sheila On 7', 'pop', 'GRAHA CAKRAWALA', '180.000', '2017-05-10', 'Acara ini merupakan acara tahunan yang diadakan oleh Radar Malang untuk memperingati hari ulang tahun Radar Malang.', 8, 'poster1.jpg'),
(20, 'Castle Project', 'Raisa, Maliq D\'Essentials, Payung Teduh', 'pop', 'UMM DOME', '200.000', '2017-06-01', 'Castle Project adalah acara malam puncak dari Diesnatalis FEB UMM.', 9, 'poster2.jpg'),
(21, 'HITZ STAGE', 'NEV ft BAMS, Danilla', 'pop', 'UMM DOME', '50.000', '2017-10-28', 'HITZ STAGE adalah acara yang diadakan oleh AXIS dalam rangka memberi hiburan kepada masyarakat Malang.', 7, 'poster3.jpg'),
(22, 'Malang JAZZ Festival 2017', 'Sheila On 7, The Overtunes', 'dangdut', 'LEMBAH DIENG', '90.000', '2017-10-07', 'Malang JAZZ Festival adalah acara tahunan untuk memberikan hiburan musik-musik jazz kepada masyarakat Malang.', 9, 'poster-malang-jazz.jpg'),
(23, 'The Neith', 'HIVI, Atlesta', 'pop', 'GRAHA CAKRAWALA', '45.000', '2017-02-26', 'The Neith adalah rangkaian acara dari perayaan Diesnatalis FILKOM UB.', 8, 'poster-the-neith.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(20) NOT NULL,
  `id_acara` int(20) NOT NULL,
  `komentar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_acara`, `komentar`) VALUES
(1, 19, 'coba'),
(2, 20, 'hai'),
(3, 20, 'coba'),
(4, 19, 'Bagus kak'),
(5, 19, 'Yippi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `nama` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `username`, `password`, `role`, `nama`) VALUES
(1, 'admin1', 'admin1', 'admin', 'admin1'),
(2, 'user', 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_acara` (`id_acara`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `id_acara` FOREIGN KEY (`id_acara`) REFERENCES `acara` (`id_acara`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
