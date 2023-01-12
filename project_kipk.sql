-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 04:21 PM
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
-- Database: `project_kipk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(50) DEFAULT NULL,
  `admin_foto` varchar(255) DEFAULT NULL,
  `admin_username` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_foto`, `admin_username`, `admin_password`) VALUES
(1, 'ADMIN', '711009944_941369.png', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kriteria`
--

CREATE TABLE `bobot_kriteria` (
  `bobot_id` int(11) NOT NULL,
  `bobot_kriteria` int(11) DEFAULT NULL,
  `bobot_keterangan` varchar(50) DEFAULT NULL,
  `bobot_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_kriteria`
--

INSERT INTO `bobot_kriteria` (`bobot_id`, `bobot_kriteria`, `bobot_keterangan`, `bobot_nilai`) VALUES
(1, 1, 'ADA', 5),
(2, 1, 'TIDAK ADA', 1),
(6, 2, 'ADA', 5),
(7, 2, 'TIDAK ADA', 1),
(11, 3, 'ADA', 5),
(13, 3, 'TIDAK ADA', 1),
(16, 4, 'ADA', 5),
(18, 4, 'TIDAK ADA', 1),
(21, 5, 'YA', 5),
(25, 5, 'TIDAK', 1),
(26, 6, 'Tidak Berpenghasilan', 11),
(28, 6, '< Rp. 250.000', 10),
(29, 6, 'Rp. 250.001 – Rp. 750.000	', 9),
(30, 6, 'Rp. 750.001 – Rp. 1.000.000', 8),
(31, 6, 'Rp. 1.000.001 – Rp. 1.250.000', 7),
(32, 6, 'Rp. 1.250.001 – Rp. 1.500.000', 6),
(33, 6, 'Rp. 1.500.001 – Rp. 1.750.000', 5),
(34, 6, 'Rp. 1.750.001 – Rp. 2.000.000', 4),
(35, 6, 'Rp. 2.000.001 – Rp. 2.250.000', 3),
(36, 6, 'Rp. 2.250.001 – Rp. 2.500.000', 2),
(37, 6, '> Rp. 2.500.000	', 1),
(38, 7, 'Tidak Berpenghasilan', 11),
(39, 7, '< Rp. 250.000	', 10),
(40, 7, 'Rp. 250.001 – Rp. 750.000', 9),
(41, 7, 'Rp. 750.001 – Rp. 1.000.000', 8),
(42, 7, 'Rp. 1.000.001 – Rp. 1.250.000', 7),
(43, 7, 'Rp. 1.250.001 – Rp. 1.500.000', 6),
(44, 7, 'Rp. 1.500.001 – Rp. 1.750.000', 5),
(45, 7, 'Rp. 1.750.001 – Rp. 2.000.000', 4),
(46, 7, 'Rp. 2.000.001 – Rp. 2.250.000', 3),
(47, 7, 'Rp. 2.250.001 – Rp. 2.500.000', 2),
(48, 7, '> Rp. 2.500.000	', 1),
(49, 8, '>4', 5),
(50, 8, '4', 4),
(51, 8, '3', 3),
(52, 8, '2', 2),
(53, 8, '1', 1),
(54, 9, 'ADA', 5),
(55, 9, 'TIDAK ADA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `kriteria_id` int(11) NOT NULL,
  `kriteria_inisial` varchar(30) DEFAULT NULL,
  `kriteria_keterangan` varchar(30) DEFAULT NULL,
  `kriteria_bobot` int(11) DEFAULT NULL,
  `kriteria_sifat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`kriteria_id`, `kriteria_inisial`, `kriteria_keterangan`, `kriteria_bobot`, `kriteria_sifat`) VALUES
(1, 'C1', 'KARTU KIPK', 15, 'Benefit'),
(2, 'C2', 'KARTU PKH', 15, 'Benefit'),
(3, 'C3', 'KARTU KKS', 15, 'Benefit'),
(4, 'C4', 'TERCATAT DI DTKS', 15, 'Benefit'),
(5, 'C5', 'LOLOS SELEKSI', 10, 'Benefit'),
(6, 'C6', 'PENGHASILAN ORANG TUA (AYAH)', 8, 'Cost'),
(7, 'C7', 'PENGHASILAN ORANG TUA (IBU)', 8, 'Cost'),
(8, 'C8', 'TANGGUNGAN ORANG TUA', 8, 'Cost'),
(9, 'C9', 'PRESTASI', 6, 'Cost');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `mahasiswa_email` varchar(255) NOT NULL,
  `mahasiswa_nama` varchar(255) DEFAULT NULL,
  `mahasiswa_alamat` varchar(255) DEFAULT NULL,
  `mahasiswa_kelamin` varchar(255) DEFAULT NULL,
  `mahasiswa_kontak` varchar(255) DEFAULT NULL,
  `mahasiswa_foto` varchar(255) DEFAULT NULL,
  `mahasiswa_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `mahasiswa_email`, `mahasiswa_nama`, `mahasiswa_alamat`, `mahasiswa_kelamin`, `mahasiswa_kontak`, `mahasiswa_foto`, `mahasiswa_password`) VALUES
(1, 'sintafauziah74@gmail.com', 'R', NULL, NULL, '0898934938', NULL, 'f5bb0c8de146c67b44babbf4e6584cc0'),
(2, 'syafrinaaini18@gmail.com', 'S', NULL, NULL, '0778873843', NULL, 'f5bb0c8de146c67b44babbf4e6584cc0'),
(3, 'yuanbwi1@gmail.com', 'T', NULL, NULL, '0882009663784', NULL, '25d55ad283aa400af464c76d713c07ad'),
(4, 'bilalbinrobbah10@gmail.com', 'A', NULL, NULL, '0882009663784', NULL, '25d55ad283aa400af464c76d713c07ad'),
(5, 'dipaputra040@gmail.com', 'H', NULL, NULL, '085707278266', NULL, '25d55ad283aa400af464c76d713c07ad'),
(6, 'fajararifp09@gmail.com', 'I', NULL, NULL, '085336750573', NULL, '25d55ad283aa400af464c76d713c07ad'),
(7, 'seliseokjin@gmail.com', 'P', '', 'Perempuan', '087777874112', NULL, '25d55ad283aa400af464c76d713c07ad'),
(8, 'raniputri181920@gmail.com', 'TT', '', 'Perempuan', '085232313375', NULL, '25d55ad283aa400af464c76d713c07ad'),
(9, 'maulidiabwi77@gmail.com', 'O', '', 'Perempuan', '081310703603', NULL, '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nilai_id` int(11) NOT NULL,
  `nilai_periode` int(11) DEFAULT NULL,
  `nilai_mahasiswa` int(11) NOT NULL,
  `nilai_kriteria` int(11) NOT NULL,
  `nilai_bobot` int(11) NOT NULL,
  `nilai_bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nilai_id`, `nilai_periode`, `nilai_mahasiswa`, `nilai_kriteria`, `nilai_bobot`, `nilai_bukti`) VALUES
(113, 4, 1, 1, 2, '1237671656_KIPK.pdf'),
(114, 4, 1, 2, 7, '1124146007_KIPK.pdf'),
(115, 4, 1, 3, 13, '339304915_KIPK.pdf'),
(116, 4, 1, 4, 18, '202566394_KIPK.pdf'),
(117, 4, 1, 5, 21, '1500819440_KIPK.pdf'),
(118, 4, 1, 6, 35, '903438028_KIPK.pdf'),
(119, 4, 1, 7, 38, '2059636359_KIPK.pdf'),
(120, 4, 1, 8, 52, '640089084_KIPK.pdf'),
(121, 4, 1, 9, 55, '127327227_KIPK.pdf'),
(122, 4, 2, 1, 2, '798150425_KIPK.pdf'),
(123, 4, 2, 2, 7, '1819657629_KIPK.pdf'),
(124, 4, 2, 3, 13, '728866659_KIPK.pdf'),
(125, 4, 2, 4, 18, '1814245021_KIPK.pdf'),
(126, 4, 2, 5, 21, '13314528_KIPK.pdf'),
(127, 4, 2, 6, 32, '606876761_KIPK.pdf'),
(128, 4, 2, 7, 38, '44759812_KIPK.pdf'),
(129, 4, 2, 8, 49, '1512306350_KIPK.pdf'),
(130, 4, 2, 9, 54, '1534043786_KIPK.pdf'),
(131, 4, 3, 1, 2, '1356244037_KIPK.pdf'),
(132, 4, 3, 2, 7, '348671569_KIPK.pdf'),
(133, 4, 3, 3, 13, '14731193_KIPK.pdf'),
(134, 4, 3, 4, 18, '803184873_KIPK.pdf'),
(135, 4, 3, 5, 21, '1763624309_KIPK.pdf'),
(136, 4, 3, 6, 30, '697771612_KIPK.pdf'),
(137, 4, 3, 7, 38, '2118896325_KIPK.pdf'),
(138, 4, 3, 8, 49, '596106540_KIPK.pdf'),
(139, 4, 3, 9, 55, '892445769_KIPK.pdf'),
(140, 4, 4, 1, 1, '244268974_KIPK.pdf'),
(141, 4, 4, 2, 7, '911496699_KIPK.pdf'),
(142, 4, 4, 3, 13, '1498721322_KIPK.pdf'),
(143, 4, 4, 4, 18, '842555567_KIPK.pdf'),
(144, 4, 4, 5, 21, '1304901814_KIPK.pdf'),
(145, 4, 4, 6, 32, '1090628185_KIPK.pdf'),
(146, 4, 4, 7, 38, '1873683093_KIPK.pdf'),
(147, 4, 4, 8, 52, '115603138_KIPK.pdf'),
(148, 4, 4, 9, 55, '930161645_KIPK.pdf'),
(149, 4, 5, 1, 1, '747112891_KIPK.pdf'),
(150, 4, 5, 2, 7, '921801099_KIPK.pdf'),
(151, 4, 5, 3, 13, '1894998686_KIPK.pdf'),
(152, 4, 5, 4, 18, '875101465_KIPK.pdf'),
(153, 4, 5, 5, 21, '648082063_KIPK.pdf'),
(154, 4, 5, 6, 32, '700840732_KIPK.pdf'),
(155, 4, 5, 7, 38, '801782602_KIPK.pdf'),
(156, 4, 5, 8, 53, '640730952_KIPK.pdf'),
(157, 4, 5, 9, 55, '1195664781_KIPK.pdf'),
(158, 4, 6, 1, 1, '314290571_KIPK.pdf'),
(159, 4, 6, 2, 7, '1561143925_KIPK.pdf'),
(160, 4, 6, 3, 11, '561050418_KIPK.pdf'),
(161, 4, 6, 4, 18, '28753501_KIPK.pdf'),
(162, 4, 6, 5, 21, '2001790234_KIPK.pdf'),
(163, 4, 6, 6, 33, '1791978267_KIPK.pdf'),
(164, 4, 6, 7, 38, '707347171_KIPK.pdf'),
(165, 4, 6, 8, 52, '1042975839_KIPK.pdf'),
(166, 4, 6, 9, 54, '1710314061_KIPK.pdf'),
(167, 4, 7, 1, 2, '965953434_KIPK.pdf'),
(168, 4, 7, 2, 7, '1044159593_KIPK.pdf'),
(169, 4, 7, 3, 13, '558927465_KIPK.pdf'),
(170, 4, 7, 4, 18, '1123252197_KIPK.pdf'),
(171, 4, 7, 5, 21, '1540338080_KIPK.pdf'),
(172, 4, 7, 6, 29, '1683480746_KIPK.pdf'),
(173, 4, 7, 7, 39, '1881160127_KIPK.pdf'),
(174, 4, 7, 8, 50, '1290368612_KIPK.pdf'),
(175, 4, 7, 9, 55, '1177385032_KIPK.pdf'),
(176, 4, 9, 1, 1, '1834295602_KIPK.pdf'),
(177, 4, 9, 2, 7, '333204958_KIPK.pdf'),
(178, 4, 9, 3, 11, '1541079023_KIPK.pdf'),
(179, 4, 9, 4, 18, '238470018_KIPK.pdf'),
(180, 4, 9, 5, 21, '2103111846_KIPK.pdf'),
(181, 4, 9, 6, 26, '1662178864_KIPK.pdf'),
(182, 4, 9, 7, 40, '356306624_KIPK.pdf'),
(183, 4, 9, 8, 49, '965217509_KIPK.pdf'),
(184, 4, 9, 9, 55, '2072822393_KIPK.pdf'),
(185, 4, 8, 1, 1, '570215472_KIPK.pdf'),
(186, 4, 8, 2, 7, '546086616_KIPK.pdf'),
(187, 4, 8, 3, 11, '2019584059_KIPK.pdf'),
(188, 4, 8, 4, 18, '1648799135_KIPK.pdf'),
(189, 4, 8, 5, 21, '1410265368_KIPK.pdf'),
(190, 4, 8, 6, 32, '1402593272_KIPK.pdf'),
(191, 4, 8, 7, 43, '946569533_KIPK.pdf'),
(192, 4, 8, 8, 52, '1168032901_KIPK.pdf'),
(193, 4, 8, 9, 55, '1725279913_KIPK.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `periode_id` int(11) NOT NULL,
  `periode_tanggal_buka` date DEFAULT NULL,
  `periode_tanggal_tutup` date DEFAULT NULL,
  `periode_status` varchar(20) DEFAULT NULL,
  `periode_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`periode_id`, `periode_tanggal_buka`, `periode_tanggal_tutup`, `periode_status`, `periode_file`) VALUES
(4, '2022-07-02', '2022-12-03', 'Aktif', NULL),
(5, '2022-02-13', '2022-02-27', 'Tutup', NULL),
(6, '2022-03-22', '2022-04-14', 'Tutup', NULL),
(7, '2022-04-05', '2022-06-29', 'Tutup', NULL),
(8, '2022-07-01', '2022-08-11', 'Tutup', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `periode_mahasiswa`
--

CREATE TABLE `periode_mahasiswa` (
  `pm_id` int(11) NOT NULL,
  `pm_periode` int(11) DEFAULT NULL,
  `pm_mahasiswa` int(11) DEFAULT NULL,
  `pm_tanggal_daftar` date DEFAULT NULL,
  `pm_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periode_mahasiswa`
--

INSERT INTO `periode_mahasiswa` (`pm_id`, `pm_periode`, `pm_mahasiswa`, `pm_tanggal_daftar`, `pm_status`) VALUES
(1, 4, 1, '2022-12-27', 'Diterima'),
(2, 4, 2, '2022-12-27', 'Diterima'),
(3, 4, 3, '2022-12-27', 'Diterima'),
(4, 4, 4, '2022-12-27', 'Diterima'),
(5, 4, 5, '2022-12-27', 'Diterima'),
(6, 4, 6, '2022-12-27', 'Diterima'),
(7, 4, 7, '2022-12-27', 'Diterima'),
(8, 4, 9, '2022-12-27', 'Diterima'),
(9, 4, 8, '2022-12-27', 'Diterima');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD PRIMARY KEY (`bobot_id`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kriteria_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`),
  ADD UNIQUE KEY `mahasiswa_nim` (`mahasiswa_email`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nilai_id`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`periode_id`);

--
-- Indexes for table `periode_mahasiswa`
--
ALTER TABLE `periode_mahasiswa`
  ADD PRIMARY KEY (`pm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  MODIFY `bobot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `kriteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `nilai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `periode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `periode_mahasiswa`
--
ALTER TABLE `periode_mahasiswa`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
