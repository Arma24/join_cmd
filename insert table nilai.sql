-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2017 at 04:44 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coba_join`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` char(5) NOT NULL,
  `NIS` char(10) NOT NULL,
  `kd_mapel` char(10) NOT NULL,
  `nilai1` int(10) NOT NULL,
  `nilai2` int(10) NOT NULL,
  `nilai_UTS` int(10) NOT NULL,
  `nilai_UAS` int(10) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `NIS`, `kd_mapel`, `nilai1`, `nilai2`, `nilai_UTS`, `nilai_UAS`) VALUES
('1', '1000', 'A1', 80, 78, 88, 90),
('2', '1001', 'B1', 77, 75, 85, 89),
('3', '1002', 'C1', 85, 80, 80, 85),
('4', '1003', 'D1', 83, 77, 87, 92);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
('1000', 'Armaningtyas Utami', 'P', 'Ngawi', '2000-01-24', 'Jln.Ratulangi'),
('1001', 'Luviana Dewi Indirasari', 'P', 'Magetan', '2000-05-13', 'Jln.Magetan'),
('1002', 'Alsyazani Juansyah Abahid', 'L', 'Ngawi', '2017-07-27', 'Jln.Ngawi'),
('1003', 'Panju Anggoro', 'L', 'Madiun', '1987-09-20', 'Jln.Madiun');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
