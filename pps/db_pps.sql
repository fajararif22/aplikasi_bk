-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 12:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beka`
--
CREATE DATABASE IF NOT EXISTS `beka` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beka`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `hp_admin` varchar(13) DEFAULT NULL,
  `status_admin` varchar(1) DEFAULT NULL,
  `alamat_admin` text,
  `password_admin` varchar(225) DEFAULT NULL,
  `jenkel_admin` varchar(1) DEFAULT NULL,
  `id_akses_admin` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `hp_admin`, `status_admin`, `alamat_admin`, `password_admin`, `jenkel_admin`, `id_akses_admin`) VALUES
('AD001', 'Mochamad Arsyi Yunizar', '089509159761', '1', 'Jalan Budhi', '22ba172fa4e408497c1688f3bb74af23', 'L', 'AD');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` varchar(5) NOT NULL,
  `ns_config` varchar(5) NOT NULL,
  `nama_sistem` varchar(50) DEFAULT NULL,
  `nama_instansi` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `status_config` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `ns_config`, `nama_sistem`, `nama_instansi`, `author`, `status_config`) VALUES
('BK1', 'SI BK', 'SI Bimbingan Konseling', 'SMK MAJU MUNDUR', 'Moch Faizal Ansyori', '1');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` varchar(25) NOT NULL,
  `alamat_guru` text,
  `nama_guru` varchar(225) DEFAULT NULL,
  `jenkel_guru` varchar(1) DEFAULT NULL,
  `hp_guru` varchar(12) DEFAULT NULL,
  `pass_guru` varchar(225) DEFAULT NULL,
  `status_guru` varchar(1) DEFAULT NULL,
  `id_akses_guru` varchar(50) NOT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `alamat_guru`, `nama_guru`, `jenkel_guru`, `hp_guru`, `pass_guru`, `status_guru`, `id_akses_guru`, `nip`) VALUES
('GR0002', 'Cianjur', 'Bu Siti', 'P', '098765777', 'd786a9ee4595786f0aada39869125f2b', '1', 'GR', '65438'),
('GR0004', 'Cijerah', 'Pa Firman', 'L', '08653648', '3d0579cbb5af618cc9ab58288cafc8fc', '1', 'GR', '855738');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_hak_akses` varchar(2) NOT NULL,
  `nama_hak_akses` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id_hak_akses`, `nama_hak_akses`, `status`) VALUES
('AD', 'Administrator', '1'),
('GR', 'Guru', '1'),
('OT', 'Orang Tua', '1'),
('SI', 'Siswa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `akronim_jurusan` varchar(50) DEFAULT NULL,
  `status_jurusan` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `akronim_jurusan`, `status_jurusan`) VALUES
('JUR0001', 'Rekayasa Perangkat Lunak', 'RPL', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pelanggaran`
--

CREATE TABLE `kategori_pelanggaran` (
  `id_kategori_pelanggaran` int(11) NOT NULL,
  `nama_kategori_kategori_pelanggaran` varchar(225) NOT NULL,
  `status_kategori_pelanggaran` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_pelanggaran`
--

INSERT INTO `kategori_pelanggaran` (`id_kategori_pelanggaran`, `nama_kategori_kategori_pelanggaran`, `status_kategori_pelanggaran`) VALUES
(3, 'Buku, Majalah, dan Kaset Terlarang, dan Handphone', '1'),
(4, 'Senjata', '1'),
(5, 'Obat atau Minuman Terlarang', '1'),
(6, 'Perkelahian', '1'),
(7, 'Keterlambatan', '1'),
(8, 'Kehadiran', '1'),
(9, 'Kerapian Pakaian', '1'),
(10, 'Rambut', '1'),
(11, 'MABUK', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `status_kelas` varchar(1) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `tingkatan_kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `status_kelas`, `nama_kelas`, `tingkatan_kelas`) VALUES
('KLS0001', '1', 'Sepuluh', 'X'),
('KLS0002', '1', 'Sebelas', 'XI'),
('KLS0003', '1', 'Duabelas', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `kelasjurusan`
--

CREATE TABLE `kelasjurusan` (
  `id_kelasjurusan` varchar(50) NOT NULL,
  `id_kelas_kelasjurusan` varchar(50) DEFAULT NULL,
  `id_jurusan_kelasjurusan` varchar(50) DEFAULT NULL,
  `daya_tampung_kelasjurusan` int(3) DEFAULT NULL,
  `status_kelasjurusan` varchar(1) DEFAULT NULL,
  `urutan_kelasjurusan` varchar(5) DEFAULT NULL,
  `id_walikelas_kelasjurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelasjurusan`
--

INSERT INTO `kelasjurusan` (`id_kelasjurusan`, `id_kelas_kelasjurusan`, `id_jurusan_kelasjurusan`, `daya_tampung_kelasjurusan`, `status_kelasjurusan`, `urutan_kelasjurusan`, `id_walikelas_kelasjurusan`) VALUES
('KLJ0001', 'KLS0003', 'JUR0005', 32, '1', 'A', 'GR0002');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kelastetap`
-- (See below for the actual view)
--
CREATE TABLE `kelastetap` (
`id_kelasjurusan` varchar(50)
,`id_kelas_kelasjurusan` varchar(50)
,`id_jurusan_kelasjurusan` varchar(50)
,`daya_tampung_kelasjurusan` int(3)
,`status_kelasjurusan` varchar(1)
,`urutan_kelasjurusan` varchar(5)
,`id_walikelas_kelasjurusan` varchar(50)
,`id_kelas` varchar(10)
,`status_kelas` varchar(1)
,`nama_kelas` varchar(50)
,`tingkatan_kelas` varchar(10)
,`id_jurusan` varchar(10)
,`nama_jurusan` varchar(100)
,`akronim_jurusan` varchar(50)
,`status_jurusan` varchar(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `waktu_log` datetime NOT NULL,
  `id_log` int(10) NOT NULL,
  `pelaku_log` varchar(8) NOT NULL,
  `dikenai_log` varchar(8) NOT NULL,
  `menu_log` varchar(225) NOT NULL,
  `kegiatan_log` varchar(225) NOT NULL,
  `data_lama_log` text NOT NULL,
  `data_baru_log` text NOT NULL,
  `riwayat_log` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`waktu_log`, `id_log`, `pelaku_log`, `dikenai_log`, `menu_log`, `kegiatan_log`, `data_lama_log`, `data_baru_log`, `riwayat_log`) VALUES
('2017-06-13 08:23:41', 1, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
('2017-06-13 08:26:43', 2, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'x', ''),
('2017-06-13 15:13:16', 3, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
('2017-06-13 15:13:33', 4, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
('2017-06-13 15:14:02', 5, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
('2017-06-13 15:21:38', 6, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
('2017-06-13 15:21:58', 7, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
('2017-06-13 15:57:16', 8, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:57:31', 9, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:58:27', 10, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:58:39', 11, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Hair', 'Rambut', '10'),
('2017-06-13 21:36:09', 12, 'tes', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Tambah <br> 1<br> 100', ''),
('2017-06-13 21:48:06', 13, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2017-06-17 05:17:56', 14, 'tes', 'AD001', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-17 05:21:21', 15, 'AD001', '', 'SI BK &raquo; Logout', 'Logout from : Administrator', '', '', ''),
('2017-06-17 05:22:04', 16, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-17 05:33:03', 17, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-18 06:02:41', 18, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 06:39:06', 19, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-18 06:51:50', 20, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-18 06:56:04', 21, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XII', ''),
('2017-06-18 07:05:17', 22, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XII', 'Tiga BelasI<br>XIII', 'KLS0004'),
('2017-06-18 07:05:28', 23, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga BelasI<br>XIII', 'Tiga Belas<br>XIII', 'KLS0004'),
('2017-06-18 07:06:38', 24, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XIII', 'Empat Belas<br>XIV', 'KLS0004'),
('2017-06-18 12:00:57', 25, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 12:01:19', 26, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Empat Belas<br>XIV', ''),
('2017-06-18 18:01:17', 27, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 20:35:00', 28, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 20:35:25', 29, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Rekayasa Perangkat Lunak<br>', ''),
('2017-06-18 20:36:47', 30, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2017-06-18 20:40:49', 31, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Komputer dan Jaringan', ''),
('2017-06-18 20:42:13', 32, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>XXXXXXXXX', ''),
('2017-06-18 20:49:49', 33, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0003'),
('2017-06-18 20:55:22', 34, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Tata Boga', ''),
('2017-06-18 21:03:37', 35, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Tata Boga<br>TB', 'Komputer Akuntansi<br>', 'JUR0003'),
('2017-06-18 21:04:11', 36, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>', 'Komputer Akuntansi<br>KA', 'JUR0003'),
('2017-06-18 21:04:40', 37, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>KA', 'Komputer Akuntansi<br>KA', 'JUR0003'),
('2017-06-18 21:10:43', 38, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Desain Komunikasi Visual', ''),
('2017-06-19 14:22:18', 39, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:36:22', 40, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:36:32', 41, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:36:46', 42, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:36:55', 43, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-06-19 14:37:02', 44, 'GR001', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2017-06-19 14:37:27', 45, '99828084', '', 'SI BK &raquo; Login', 'Login As Siswa', '', '', ''),
('2017-06-19 14:46:16', 46, '99828084', '', 'SI BK &raquo; Logout', 'Logout From Siswa', '', '', ''),
('2017-06-19 14:46:32', 47, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:49:17', 48, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:49:39', 49, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-06-29 09:21:53', 50, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 13:53:32', 51, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 13:56:25', 52, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-29 13:57:09', 53, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Duabelas<br>XI', 'Duabelas<br>XII', 'KLS0003'),
('2017-06-29 13:58:45', 54, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
('2017-06-29 14:51:26', 55, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br><br>B', ''),
('2017-06-29 14:51:54', 56, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0001<br>32<br><br>A', ''),
('2017-06-29 14:53:24', 57, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0002<br>32<br><br>A', ''),
('2017-06-29 15:02:00', 58, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
('2017-06-29 16:42:09', 59, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', '<br>', '<br>', 'ada'),
('2017-06-29 17:08:50', 60, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000432C', 'KLJ0001'),
('2017-06-29 17:10:33', 61, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2017-06-29 17:10:57', 62, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Pemesinan', ''),
('2017-06-29 17:11:16', 63, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Teknik Kendaraan Ringan', ''),
('2017-06-29 17:11:32', 64, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Akuntansi', ''),
('2017-06-29 17:11:49', 65, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0005<br>Desain Komunikasi Visual', ''),
('2017-06-29 17:12:07', 66, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
('2017-06-29 17:12:29', 67, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532B', 'KLJ0001'),
('2017-06-29 17:12:54', 68, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0003<br>JUR0005<br>32<br>B', 'KLS0001<br>JUR000132A', 'KLJ0001'),
('2017-06-29 17:13:36', 69, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0005<br>32<br>A', ''),
('2017-06-29 17:17:41', 70, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532C', 'KLJ0001'),
('2017-06-29 17:30:44', 71, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
('2017-06-29 17:30:45', 72, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
('2017-06-29 19:55:35', 73, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 20:11:48', 74, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'djhfkd<br>v', ''),
('2017-06-29 20:11:55', 75, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'djhfkd<br>v', 'sfsdf<br>v', 'KLS0004'),
('2017-06-29 20:12:02', 76, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
('2017-06-29 20:16:13', 77, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 20:45:54', 78, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-30 13:17:30', 79, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-30 14:25:40', 80, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-30 14:26:49', 81, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Asma<br>Petak<br>085735469090<br>P<br>GR', ''),
('2017-06-30 14:27:47', 82, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '9986973738947<br>Muhammad Al Kautsar<br>Petak<br>085735469080<br>L<br>GR', ''),
('2017-06-30 14:59:11', 83, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '<br>Asma<br>Petak<br>085735469090<br>P', '<br>Asma Binuril Qolbi<br>Surabaya<br>085735469091<br>P', 'GR0001'),
('2017-06-30 15:09:41', 84, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2017-07-02 12:35:28', 85, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-02 15:03:39', 86, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:04:10', 87, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'KLJ0002'),
('2017-07-02 15:05:09', 88, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:05:16', 89, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'GR0002'),
('2017-07-02 15:06:12', 90, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:06:19', 91, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : GR0002', '', 'KLJ0002'),
('2017-07-04 19:42:42', 92, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-04 19:44:23', 93, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-04 21:12:34', 94, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
('2017-07-05 06:50:10', 95, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 16:00:24', 96, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 18:14:18', 97, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 18:28:09', 98, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '<br>Ali Jaber<br>Indonesia<br>035390879090<br>L<br>SI', ''),
('2017-07-05 18:44:31', 99, 'AD001', '', 'SI BK &raquo; Siswa', 'Mengedit Data', '99869090123<br>Ali Jaber<br>Indonesia<br>035390879090<br>L', '99869090121<br>Yon AHy<br>Bojonegoro<br>035390879091<br>P', '99869090123'),
('2017-07-05 18:48:16', 100, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
('2017-07-05 18:48:16', 101, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
('2017-07-06 09:39:40', 102, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-06 10:29:15', 103, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '70011897673<br>Cahyono Islami<br>Ds Gg Gandi<br>03538080121<br>L<br>SI', ''),
('2017-07-06 10:30:36', 104, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '8989899898<br>Putri Titian<br>Mojodelik<br>08564342432<br>P<br>SI', ''),
('2017-07-06 18:31:20', 105, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 13:53:41', 106, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 14:35:51', 107, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 18:35:09', 108, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 21:58:44', 109, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 04:58:50', 110, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 05:25:44', 111, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 06:12:54', 112, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732520170708061254<br>70011897673<br>25<br>AD001<br>20170708061254<br>2017-07-06<br>Belakang Sekolah<br>Dikarenakan cewek', ''),
('2017-07-08 06:14:12', 113, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673220170708061412<br>70011897673<br>2<br>AD001<br>20170708061412<br>2017-07-01<br>Belakang Sekolah<br>-', ''),
('2017-07-08 08:19:20', 114, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731220170708081920<br>70011897673<br>12<br>AD001<br>20170708081920<br>2017-07-03<br>Kelas<br>Merokok di kelas saat jam istirahat', ''),
('2017-07-08 08:23:05', 115, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673320170708082305<br>70011897673<br>3<br>AD001<br>20170708082305<br>2017-07-15<br>Belakang Sekolah<br>Melompati pagar', ''),
('2017-07-08 08:25:33', 116, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708082533<br>70011897673<br>13<br>AD001<br>20170708082533<br>2017-07-12<br>Di depan warung<br>Merokok saat seusai pulang sekolah dengan memakai seragam', ''),
('2017-07-08 09:21:50', 117, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708092150<br>70011897673<br>13<br>AD001<br>2017-07-01<br>20170708092150<br>Ruang Kelas<br>Merokok saat jam istirahat', ''),
('2017-07-08 09:22:57', 118, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976734420170708092257<br>70011897673<br>44<br>AD001<br>2017-07-01<br>20170708092257<br>Ruang Kelas<br>Tidak memakai hasduk saat hari sabtu di kelas', ''),
('2017-07-08 09:38:30', 119, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '99828084991520170708093829<br>9982808499<br>15<br>AD001<br>2017-07-04<br>20170708093829<br>Di kelas<br>-', ''),
('2017-07-08 14:43:31', 120, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 14:45:27', 121, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731520170708144527<br>70011897673<br>15<br>AD001<br>2017-07-03<br>20170708144527<br>Di kelas<br>Menyebarkan kaset porno', ''),
('2017-07-08 14:49:48', 122, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731820170708144948<br>70011897673<br>18<br>AD001<br>2017-07-06<br>20170708144948<br>Di kelas<br>Melukai karena cemburu', ''),
('2017-07-08 14:50:41', 123, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732320170708145041<br>70011897673<br>23<br>AD001<br>2017-07-14<br>20170708145041<br>Didepan gerbang<br>', ''),
('2017-07-09 13:26:50', 124, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 19:10:50', 125, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 19:15:58', 126, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>B', ''),
('2017-07-09 19:51:44', 127, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195144<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195144<br>f<br>f', ''),
('2017-07-09 19:52:08', 128, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195208<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195208<br>f<br>f', ''),
('2017-07-09 19:53:06', 129, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195306<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195306<br>f<br>f', ''),
('2017-07-09 19:53:32', 130, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195332<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195332<br>f<br>f', ''),
('2017-07-09 19:57:26', 131, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195726<br>8989899898<br>12<br>AD001<br>2017-07-02<br>20170709195726<br>F<br>f', ''),
('2017-07-09 19:59:47', 132, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195946<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709195946<br>f<br>f', ''),
('2017-07-09 20:00:37', 133, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709200037<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709200037<br>f<br>f', ''),
('2017-07-09 20:59:01', 134, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Siti Badriyah<br>Ds. Jampet<br>085790909090<br>P<br>GR', ''),
('2017-07-09 21:00:09', 135, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0003', 'KLJ0002'),
('2017-07-09 21:00:48', 136, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
('2017-07-09 21:01:35', 137, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>A', ''),
('2017-07-09 21:01:59', 138, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>B', ''),
('2017-07-09 21:02:25', 139, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>C', ''),
('2017-07-09 21:03:55', 140, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '99864348933<br>Muhammad El Sharawi<br>Ds Kedung Adem<br>085743431212<br>L<br>SI', ''),
('2017-07-09 21:04:48', 141, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '380483298393489<br>Mashuri<br>Ds Bakung<br>085734342122<br>L<br>SI', ''),
('2017-07-09 21:05:35', 142, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '54354354523<br>Marshanda<br>Ds Jakarta<br>098574343412<br>P<br>SI', ''),
('2017-07-09 21:07:09', 143, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '3804832983931220170709210709<br>380483298393<br>12<br>AD001<br>2017-07-01<br>20170709210709<br>F<br>', ''),
('2017-07-09 21:35:56', 144, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-07-09 21:36:25', 145, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 21:38:46', 146, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-07-09 21:39:04', 147, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-07-09 21:57:57', 148, 'GR0002', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '998643489331220170709215757<br>99864348933<br>12<br>GR0002<br>2017-07-02<br>20170709215757<br>Di Kantin<br>', ''),
('2022-01-18 09:35:31', 149, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 09:36:23', 150, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0002'),
('2022-01-18 09:36:30', 151, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0003'),
('2022-01-18 09:39:38', 152, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 10:46:34', 153, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 10:48:51', 154, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 10:51:10', 155, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 10:58:16', 156, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0002'),
('2022-01-18 10:58:24', 157, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0003'),
('2022-01-18 10:58:33', 158, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0004'),
('2022-01-18 10:58:39', 159, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0005'),
('2022-01-18 11:02:49', 160, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:04:28', 161, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '123456<br>JOJO<br>ARAB<br>089567421<br>L<br>GR', ''),
('2022-01-18 11:04:41', 162, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2022-01-18 11:06:46', 163, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P<br>GR', ''),
('2022-01-18 11:07:08', 164, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>L', 'GR0001'),
('2022-01-18 11:07:23', 165, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>L', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P', 'GR0001'),
('2022-01-18 11:12:52', 166, 'AD001', '', 'SI BK &raquo; Siswa', 'Mengedit Data', '9982808499<br>Moch Faizal Ansyori<br>Petak Beged<br>085735469080<br>L', '9982808499<br>M Ridwan<br>Jln Cimindi<br>085735469080<br>L', '9982808499'),
('2022-01-18 11:13:21', 167, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0001', 'KLJ0003'),
('2022-01-18 11:15:07', 168, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '65438<br>Bu Siti<br>Cianjur<br>098765777<br>P<br>GR', ''),
('2022-01-18 11:16:26', 169, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '87769954<br>Pa Dadang<br>Jln Budi<br>08567779<br>L<br>GR', ''),
('2022-01-18 11:32:11', 170, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:42:08', 171, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:43:20', 172, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '855738<br>Pa Firman<br>Cijerah<br>08653648<br>L<br>GR', ''),
('2022-01-18 11:43:53', 173, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0004'),
('2022-01-18 11:44:07', 174, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0003', 'KLJ0005'),
('2022-01-18 11:44:29', 175, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0004', 'KLJ0006'),
('2022-01-18 11:44:45', 176, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0007'),
('2022-01-18 13:01:16', 177, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 13:01:35', 178, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 13:01:43', 179, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:49:09', 180, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:49:27', 181, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-28 10:53:35', 182, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:55:40', 183, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-01-28 10:57:17', 184, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '9982808499'),
('2022-01-28 10:57:35', 185, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99864348933'),
('2022-01-28 10:57:46', 186, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '380483298393'),
('2022-01-28 10:58:00', 187, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '54354354523'),
('2022-01-28 10:58:30', 188, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0002'),
('2022-01-28 10:58:37', 189, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0003'),
('2022-01-28 10:58:45', 190, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0004'),
('2022-01-28 10:58:51', 191, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0005'),
('2022-01-28 10:58:58', 192, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0006'),
('2022-01-28 10:59:05', 193, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0007'),
('2022-02-03 10:06:01', 194, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-02-03 10:45:05', 195, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-02-04 16:31:41', 196, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-22 08:12:56', 197, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-22 09:05:52', 198, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0003'),
('2022-03-22 09:06:00', 199, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2022-03-22 09:06:43', 200, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-22 09:11:05', 201, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0001<br>33<br>b', ''),
('2022-03-22 09:14:09', 202, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '190764328<br>arsyi<br>jl.budi<br>089754343<br>L<br>SI', ''),
('2022-03-22 09:15:54', 203, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '190654987<br>teguh<br>jl.budi<br>0838647777<br>L<br>SI', ''),
('2022-03-26 13:27:18', 204, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-26 13:28:42', 205, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'MABUK', ''),
('2022-03-26 13:29:29', 206, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0002'),
('2022-03-26 13:31:45', 207, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Membawa Rokok <br> 2<br> 10', ''),
('2022-03-26 13:32:17', 208, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:30', 209, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:51', 210, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:58', 211, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:05', 212, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:15', 213, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:42', 214, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:58', 215, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:34:09', 216, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0001'),
('2022-03-26 13:34:31', 217, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2022-03-26 13:35:01', 218, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Mabal <br> 8<br> 5', ''),
('2022-03-26 13:35:20', 219, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:35:32', 220, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:42:13', 221, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Teguh <br> 2<br> 10', ''),
('2022-03-26 13:42:30', 222, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '2'),
('2022-03-26 13:52:42', 223, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:52:51', 224, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:53:21', 225, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-27 10:51:37', 226, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 10:52:29', 227, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Berkelahi <br> 6<br> 10', ''),
('2022-03-27 10:52:49', 228, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 10:52:56', 229, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 10:53:33', 230, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 15:11:56', 231, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id_ortu` varchar(10) NOT NULL,
  `alamat_ortu` varchar(50) DEFAULT NULL,
  `nama_ortu` varchar(100) DEFAULT NULL,
  `jenkel_ortu` text,
  `pekerjaan_ortu` varchar(50) DEFAULT NULL,
  `hp_ortu` varchar(50) DEFAULT NULL,
  `status_ortu` varchar(1) DEFAULT NULL,
  `id_akses_ortu` varchar(2) DEFAULT NULL,
  `pass_ortu` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id_ortu`, `alamat_ortu`, `nama_ortu`, `jenkel_ortu`, `pekerjaan_ortu`, `hp_ortu`, `status_ortu`, `id_akses_ortu`, `pass_ortu`) VALUES
('OT001', 'Sendang rejo', 'Muhammad Iqbal', 'L', 'Tentara', '085768903489', '1', 'OT', '1b74530ff1c8fdbb50405347962aeab3');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(225) NOT NULL,
  `id_kategori_pelanggaran` varchar(10) NOT NULL,
  `point_pelanggaran` int(11) NOT NULL,
  `status_pelanggaran` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `id_kategori_pelanggaran`, `point_pelanggaran`, `status_pelanggaran`) VALUES
(1, 'Membuat keributan/ kegaduhan dalam kelas saat berlangsung pelajaran', '1', 10, '1'),
(2, 'Masuk lingkungan sekolah dengan loncat pagar', '1', 5, '1'),
(3, 'Keluar dari lingkungan sekolah tanpa izin', '1', 10, '1'),
(4, 'Mengotori (mencoret-coret) benda milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
(5, 'Merusak/ menghilangkan barang milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
(6, 'Mengambil (mencuri) barang milik sekolah, guru, pegawai dan teman', '1', 25, '1'),
(7, 'Makan dan minum didalam kelas saat berlangsung pelajaran', '1', 5, '1'),
(8, 'Membawa benda yang tidak ada kaitannya dengan proses belajar', '1', 10, '1'),
(9, 'Bertengkar/ bertentangan dengan teman dilingkungan sekolah', '1', 10, '1'),
(10, 'Malakukan tindakan asusila (maksiat) didalam maupun diluar lingkungan sekolah', '1', 90, '1'),
(11, 'Melakukan perbuatan yang berakibat mencemarkan nama baik sekolah', '1', 40, '1'),
(12, 'Membawa rokok', '2', 25, '1'),
(13, 'Merokok/ menghisap roko disekolah atau ditempat lain', '2', 50, '1'),
(14, 'Membawa buku, majalah, atau kaset (terlarang) dan HP', '3', 25, '1'),
(15, 'Menjual buku, Majalah atau kaset (terlarang) dan HP', '3', 25, '1'),
(16, 'Membawa senjata tajam tanpa izin', '4', 30, '1'),
(17, 'Memperjual belikan senjata tajam', '4', 50, '1'),
(18, 'Menggunakan senjata tajam untuk mengancam', '4', 75, '1'),
(19, 'Menggunakan senjata tajam untuk melukai', '4', 100, '1'),
(20, 'Membawa obat/ minuman terlarang', '5', 50, '1'),
(21, 'Menggunakan obat/ minuman terlarang', '5', 75, '1'),
(22, 'Memperjual belikan obat/ minuman terlarang', '5', 75, '1'),
(23, 'Disebabkan oleh siswa dalam sekolah (Intern)', '6', 15, '1'),
(24, 'Disebabkan oleh siswa sekolah lain', '6', 25, '1'),
(25, 'Antar siswa', '6', 50, '1'),
(26, 'Satu kali', '7', 5, '1'),
(27, 'Dua kali', '7', 10, '1'),
(28, 'Tiga kali', '7', 10, '1'),
(29, 'Terlambat masuk karena izin', '7', 5, '1'),
(30, 'Terlambat masuk karena diberi tugas guru', '7', 5, '1'),
(31, 'Terlambat masuk karena alasan dibuat-buat 5 poin', '7', 25, '1'),
(32, 'Izin keluar saat proses belajar berlangsung tidak kembali', '7', 25, '1'),
(33, 'Pulang tanpa izin', '7', 25, '1'),
(34, 'Sakit tanpa keterangan (surat)', '8', 5, '1'),
(35, 'Izin tanpa keterangan', '8', 10, '1'),
(36, 'Alfa', '8', 10, '1'),
(37, 'Tidak mengikuti kegiatan belajar (bolos)', '8', 20, '1'),
(38, 'Tidak masuk sekolah dengan membuat surat keterangan palsu', '8', 15, '1'),
(39, 'Keluar kelas saat proses belajar mengajar berlangsung', '8', 15, '1'),
(40, 'Tidak mengikuti shalat dzuhur berjama’ah', '8', 10, '1'),
(41, 'Tidak menghadiri kegiatan ekstrakurikuler', '8', 5, '1'),
(42, 'Memakai seragam tidak rapi/ tidak dimasukkan (laki-laki)', '9', 3, '1'),
(43, 'Memakai seragam yang ketat', '9', 3, '1'),
(44, 'Tidak berpakaian seragam lengkap beserta atribut (sesuai ketentuan)', '9', 5, '1'),
(45, 'Tidak memakai ikat pinggang hitam polos', '9', 5, '1'),
(46, 'Tidak memakai sepatu hitam bertali', '9', 5, '1'),
(47, 'Tidak memakai kaos kaki (sesuai ketentuan)', '9', 5, '1'),
(48, 'Tidak memakai kaos dalam (sesuai ketentuan)', '9', 5, '1'),
(49, 'Memakai peci bagi putra dan jilbab bagi putri (sesuai ketentuan)', '9', 5, '1'),
(50, 'Siswa putri memakai perhiasan berlebihan', '9', 10, '1'),
(51, 'Siswa putra memakai perhiasan atau assesoris (kalung, gelang, dll)', '9', 5, '1'),
(52, 'Memakai pin assesoris yang tidak berkaitan dengan sekolah', '9', 5, '1'),
(53, 'Memakai jaket/ Switer kedalam kelas', '9', 5, '1'),
(54, 'Memanjangkan kuku/ mencatnya', '9', 5, '1'),
(55, 'Mencoret-coret pakaian sekolah dengan sengaja', '9', 20, '1'),
(56, 'Mencoret-coret pakaian sekolah dengan sengaja (setelah berakhirnya UN)', '9', 50, '1'),
(57, 'Panjang melalui batas ketentuan (telinga, alis, dan krah baju)', '10', 5, '1'),
(58, 'Pendek/ dicukur tidak rapi untuk siswa putra', '10', 10, '1'),
(59, 'Dicat/ warna-warnai (putra/putri)', '10', 10, '1'),
(60, 'Tambah', '1', 100, '1'),
(61, 'Membawa Rokok', '2', 10, '1'),
(62, 'Mabal', '8', 5, '1'),
(63, 'Teguh', '2', 10, '1'),
(64, 'Berkelahi', '6', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `id_pelanggaran_siswa` varchar(50) NOT NULL,
  `nis_pelanggaran_siswa` varchar(12) NOT NULL,
  `id_pelanggaran_pelanggaran_siswa` varchar(10) NOT NULL,
  `id_guru_pelanggaran_siswa` varchar(25) NOT NULL,
  `waktu_melanggar_pelanggaran_siswa` date NOT NULL,
  `waktu_input_pelanggaran_siswa` datetime NOT NULL,
  `tempat_pelanggaran_siswa` varchar(225) NOT NULL,
  `keterangan_pelanggaran_siswa` text NOT NULL,
  `status_pelanggaran_siswa` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran_siswa`
--

INSERT INTO `pelanggaran_siswa` (`id_pelanggaran_siswa`, `nis_pelanggaran_siswa`, `id_pelanggaran_pelanggaran_siswa`, `id_guru_pelanggaran_siswa`, `waktu_melanggar_pelanggaran_siswa`, `waktu_input_pelanggaran_siswa`, `tempat_pelanggaran_siswa`, `keterangan_pelanggaran_siswa`, `status_pelanggaran_siswa`) VALUES
('3804832983931220170709210709', '380483298393', '12', 'AD001', '2017-07-01', '2017-07-09 21:07:09', 'F', '', '1'),
('700118976731320170708092150', '70011897673', '13', 'GR0002', '2017-07-01', '2017-07-08 09:24:44', 'Ruang Kelas', 'Merokok saat jam istirahat', '1'),
('700118976731520170708144527', '70011897673', '15', 'AD001', '2017-07-03', '2017-07-08 14:45:27', 'Di kelas', 'Menyebarkan kaset porno', '1'),
('700118976731820170708144948', '70011897673', '18', 'AD001', '2017-07-06', '2017-07-08 14:49:48', 'Di kelas', 'Melukai karena cemburu', '1'),
('700118976732320170708145041', '70011897673', '23', 'AD001', '2017-07-14', '2017-07-08 14:50:41', 'Didepan gerbang', '', '1'),
('700118976734420170708092257', '70011897673', '44', 'GR0002', '2017-07-01', '2017-07-08 09:21:22', 'Ruang Kelas', 'Tidak memakai hasduk saat hari sabtu di kelas', '1'),
('8989899898120170709195144', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:51:44', 'f', 'f', '1'),
('8989899898120170709195208', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:52:08', 'f', 'f', '1'),
('8989899898120170709195306', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:06', 'f', 'f', '1'),
('8989899898120170709195332', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:32', 'f', 'f', '1'),
('89898998981220170709195726', '8989899898', '12', 'AD001', '2017-07-02', '2017-07-09 19:57:26', 'F', 'f', '1'),
('89898998981220170709195946', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 19:59:46', 'f', 'f', '1'),
('89898998981220170709200037', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 20:00:37', 'f', 'f', '1'),
('99828084991520170708093829', '9982808499', '15', 'AD001', '2017-07-04', '2017-07-08 09:38:29', 'Di kelas', '-', '1'),
('998643489331220170709215757', '99864348933', '12', 'GR0002', '2017-07-02', '2017-07-09 21:57:57', 'Di Kantin', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis_siswa` varchar(12) NOT NULL,
  `nama_siswa` varchar(225) NOT NULL,
  `jenkel_siswa` varchar(1) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `hp_siswa` varchar(12) NOT NULL,
  `id_ayah_siswa` varchar(10) NOT NULL,
  `id_ibu_siswa` varchar(10) NOT NULL,
  `id_wali_siswa` varchar(12) NOT NULL,
  `id_kelas_siswa` varchar(225) NOT NULL,
  `id_akses_siswa` varchar(2) NOT NULL,
  `pass_siswa` varchar(225) NOT NULL,
  `status_siswa` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis_siswa`, `nama_siswa`, `jenkel_siswa`, `alamat_siswa`, `hp_siswa`, `id_ayah_siswa`, `id_ibu_siswa`, `id_wali_siswa`, `id_kelas_siswa`, `id_akses_siswa`, `pass_siswa`, `status_siswa`) VALUES
('190654987', 'teguh', 'L', 'jl.budi', '0838647777', '', '', '', 'KLJ0002', 'SI', '64a2373a63bbbdcd0b5ba09c8473836a', '1'),
('190764328', 'arsyi', 'L', 'jl.budi', '089754343', '', '', '', 'KLJ0002', 'SI', '32cd221df381adaea31f8ba8927b6ae7', '1');

-- --------------------------------------------------------

--
-- Structure for view `kelastetap`
--
DROP TABLE IF EXISTS `kelastetap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kelastetap`  AS  select `kelasjurusan`.`id_kelasjurusan` AS `id_kelasjurusan`,`kelasjurusan`.`id_kelas_kelasjurusan` AS `id_kelas_kelasjurusan`,`kelasjurusan`.`id_jurusan_kelasjurusan` AS `id_jurusan_kelasjurusan`,`kelasjurusan`.`daya_tampung_kelasjurusan` AS `daya_tampung_kelasjurusan`,`kelasjurusan`.`status_kelasjurusan` AS `status_kelasjurusan`,`kelasjurusan`.`urutan_kelasjurusan` AS `urutan_kelasjurusan`,`kelasjurusan`.`id_walikelas_kelasjurusan` AS `id_walikelas_kelasjurusan`,`kelas`.`id_kelas` AS `id_kelas`,`kelas`.`status_kelas` AS `status_kelas`,`kelas`.`nama_kelas` AS `nama_kelas`,`kelas`.`tingkatan_kelas` AS `tingkatan_kelas`,`jurusan`.`id_jurusan` AS `id_jurusan`,`jurusan`.`nama_jurusan` AS `nama_jurusan`,`jurusan`.`akronim_jurusan` AS `akronim_jurusan`,`jurusan`.`status_jurusan` AS `status_jurusan` from ((`kelasjurusan` join `kelas` on((`kelasjurusan`.`id_kelas_kelasjurusan` = `kelas`.`id_kelas`))) join `jurusan` on((`kelasjurusan`.`id_jurusan_kelasjurusan` = `jurusan`.`id_jurusan`))) where ((`kelasjurusan`.`status_kelasjurusan` = '1') and (`kelas`.`status_kelas` = '1') and (`jurusan`.`status_jurusan` = '1')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  ADD PRIMARY KEY (`id_kategori_pelanggaran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelasjurusan`
--
ALTER TABLE `kelasjurusan`
  ADD PRIMARY KEY (`id_kelasjurusan`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_kategori` (`id_kategori_pelanggaran`);

--
-- Indexes for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`id_pelanggaran_siswa`),
  ADD KEY `nis` (`nis_pelanggaran_siswa`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran_pelanggaran_siswa`),
  ADD KEY `id_guru` (`id_guru_pelanggaran_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis_siswa`),
  ADD KEY `id_kelas_siswa` (`id_kelas_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  MODIFY `id_kategori_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Database: `beka_arsyi`
--
CREATE DATABASE IF NOT EXISTS `beka_arsyi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beka_arsyi`;
--
-- Database: `bimbingan_konseling`
--
CREATE DATABASE IF NOT EXISTS `bimbingan_konseling` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bimbingan_konseling`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('123456789', 'Rino Oktavianto', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `benpel`
--

CREATE TABLE `benpel` (
  `c_benpel` varchar(10) NOT NULL,
  `c_katbenpel` varchar(10) NOT NULL,
  `benpel` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benpel`
--

INSERT INTO `benpel` (`c_benpel`, `c_katbenpel`, `benpel`, `bobot`) VALUES
('5XafCJsV5', 'b4tFXbsU5', 'Berkelahi dengan sekolahan lain', 100),
('cn7rgthJl', 'FSyln8F5q', 'Berkata Kotor Dengan Guru', 50),
('jODakRHnk', 'jGC4JtGo0', 'Memasukkan Baju (Siswa Putri)', 2),
('kmIn6bv43', 'jGC4JtGo0', 'Bertato', 20),
('M8yHhFw6o', 'b4tFXbsU5', 'Terbukti melakukan kejahatan', 50),
('o6zIRf55a', 'wE2hDSZ0H', 'Meninggalkan Kelas Tanpa Izin', 5),
('qlW4RnkLE', 'jGC4JtGo0', 'Tidak Memasukkan Baju (Siswa Putra)', 20),
('rkCV0Qegy', 'jGC4JtGo0', 'Berambut Gondrong (Siswa Putra)/dicat/diwarna', 2),
('UtkxKRhBu', 'wE2hDSZ0H', 'Tidak Mengikuti Pelajaran Tanpa Izin', 10),
('y1Xs82Iud', 'wE2hDSZ0H', 'Tidak Mengikuti Upacara', 5),
('yYuI3otvA', 'FSyln8F5q', 'Mengejek Guru', 10);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL,
  `pesan` text NOT NULL,
  `at` datetime NOT NULL,
  `w_g` varchar(1) NOT NULL,
  `sg` varchar(1) NOT NULL,
  `sw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_chat`, `c_guru`, `c_orangtua`, `pesan`, `at`, `w_g`, `sg`, `sw`) VALUES
(1, 'DPCcMKMey', 'tW6FuMey0', 'Assalamualaikum', '2017-11-28 18:49:28', 'w', 'y', 'y'),
(2, 'DPCcMKMey', 'tW6FuMey0', 'Bapak?', '2017-11-28 18:56:49', 'w', 'y', 'y'),
(3, 'DPCcMKMey', '0vEcBeBgF', 'Bismillah', '2017-11-28 19:00:36', 'g', 'y', 'y'),
(4, 'DPCcMKMey', 'tW6FuMey0', 'Iya', '2017-11-29 05:38:34', 'g', 'y', 'y'),
(5, 'DPCcMKMey', 'tW6FuMey0', 'Anak Saya tolong dibimbing ya bapak', '2017-11-29 05:47:55', 'w', 'y', 'y'),
(6, 'DPCcMKMey', 'tW6FuMey0', 'insya Allah bapak, kami selalu berusaha seperti itu, dan juga mohon untuk dibimbing dari pihak keluarga', '2017-11-29 05:59:08', 'g', 'y', 'y'),
(7, 'DPCcMKMey', 'tW6FuMey0', 'Terimakasih bapak', '2017-11-29 05:59:36', 'w', 'y', 'y'),
(8, 'DPCcMKMey', 'tW6FuMey0', 'sama sama', '2017-12-01 06:33:32', 'g', 'y', 'n'),
(9, 'G2sSiWyoD', 'supyLA8lg', 'contoh', '2017-12-13 09:07:33', 'g', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nama`, `username`, `password`, `foto`) VALUES
('DPCcMKMey', 'Ahmad Zubaidi', 'pakobet', 'pakobet', 'foto/download.jpg'),
('G2sSiWyoD', 'M. Zainnuri S.Kom', 'pakzen', 'pakzen', 'foto/20170816145718.jpg'),
('Ztknli361', 'Aris Andriyanto', 'pakaris', 'pakaris', '');

-- --------------------------------------------------------

--
-- Table structure for table `katbenpel`
--

CREATE TABLE `katbenpel` (
  `c_katbenpel` varchar(10) NOT NULL,
  `katbenpel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katbenpel`
--

INSERT INTO `katbenpel` (`c_katbenpel`, `katbenpel`) VALUES
('b4tFXbsU5', 'KEJAHATAN'),
('FSyln8F5q', 'KESOPANAN'),
('jGC4JtGo0', 'KERAPIAN'),
('wE2hDSZ0H', 'KERAJINAN');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('bf14I0amf', 'X RPL'),
('fi5IJXCDs', 'X TKJ'),
('g20VX0r3h', 'X TKR'),
('NFVN6oSIZ', 'X TPL');

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE `orangtua` (
  `c_orangtua` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`c_orangtua`, `c_siswa`, `nama`, `username`, `password`) VALUES
('0vEcBeBgF', 'djrCE5y6z', 'Bapaknya Amalia', 'bpa', 'bpa'),
('supyLA8lg', 'XKHcfzVUR', 'Bapak Ali Husain', 'alihusain', 'alihusain'),
('tW6FuMey0', 'ukxWhAq84', 'Muhammad Hasan Bisri', 'hasan', 'hasan');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `c_pelanggaran` varchar(5) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_benpel` varchar(10) NOT NULL,
  `bobot` int(4) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`c_pelanggaran`, `c_siswa`, `c_kelas`, `c_benpel`, `bobot`, `c_guru`, `at`) VALUES
('0qib', 'aYlxwzZu6', 'fi5IJXCDs', 'qlW4RnkLE', 20, 'DPCcMKMey', '2017-12-01 06:10:55'),
('0vnB', 'I73vNKyU9', 'fi5IJXCDs', 'UtkxKRhBu', 10, 'DPCcMKMey', '2017-11-29 08:48:16'),
('46kg', 'ukxWhAq84', 'bf14I0amf', 'o6zIRf55a', 5, 'G2sSiWyoD', '2017-11-28 11:34:54'),
('6mR4', '9sgiPEKLX', 'g20VX0r3h', 'yYuI3otvA', 10, 'DPCcMKMey', '2017-12-01 06:18:42'),
('9', 'XKHcfzVUR', 'fi5IJXCDs', 'qlW4RnkLE', 20, 'G2sSiWyoD', '2017-11-25 14:55:26'),
('AqI1', 'ukxWhAq84', 'bf14I0amf', 'qlW4RnkLE', 20, 'Ztknli361', '2017-12-01 06:02:29'),
('c11k', 'I73vNKyU9', 'fi5IJXCDs', 'y1Xs82Iud', 5, 'DPCcMKMey', '2017-11-29 08:36:36'),
('F6kZ', 'ukxWhAq84', 'bf14I0amf', 'UtkxKRhBu', 10, 'G2sSiWyoD', '2017-11-28 11:34:54'),
('g9zH', '9sgiPEKLX', 'g20VX0r3h', 'qlW4RnkLE', 20, 'DPCcMKMey', '2017-12-01 06:18:42'),
('GnvK', 'unCWwBalF', 'bf14I0amf', 'o6zIRf55a', 5, 'G2sSiWyoD', '2017-12-13 09:09:54'),
('hA6I', 'I73vNKyU9', 'fi5IJXCDs', 'cn7rgthJl', 50, 'DPCcMKMey', '2017-12-01 06:16:59'),
('hLD0', '9sgiPEKLX', 'g20VX0r3h', 'y1Xs82Iud', 5, 'Ztknli361', '2017-12-02 08:58:38'),
('mfQQ', 'ukxWhAq84', 'bf14I0amf', 'o6zIRf55a', 5, 'G2sSiWyoD', '2017-12-13 09:09:54'),
('PxW7', 'NJOgsxL8z', 'bf14I0amf', 'cn7rgthJl', 50, 'G2sSiWyoD', '2017-11-27 06:26:59'),
('sNGD', 'AKbptUszm', 'g20VX0r3h', 'kmIn6bv43', 20, 'Ztknli361', '2017-12-01 05:56:49'),
('y7Et', 'ukxWhAq84', 'bf14I0amf', 'qlW4RnkLE', 20, 'DPCcMKMey', '2017-11-28 18:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `relasichat`
--

CREATE TABLE `relasichat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasichat`
--

INSERT INTO `relasichat` (`c_chat`, `c_guru`, `c_orangtua`) VALUES
(5, 'DPCcMKMey', '0vEcBeBgF'),
(7, 'DPCcMKMey', 'tW6FuMey0'),
(8, 'G2sSiWyoD', 'supyLA8lg');

-- --------------------------------------------------------

--
-- Table structure for table `sanksi`
--

CREATE TABLE `sanksi` (
  `c_sanksi` varchar(10) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `bobot_dari` int(3) NOT NULL,
  `bobot_sampai` int(3) NOT NULL,
  `sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanksi`
--

INSERT INTO `sanksi` (`c_sanksi`, `kriteria`, `bobot_dari`, `bobot_sampai`, `sanksi`) VALUES
('0DhOeINEy', 'Pelanggaran Ringan', 1, 5, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran'),
('d3e8l5Jts', 'Pelanggaran Sedang', 6, 20, '1. Dicatat<br>2. Membuat Surat Pernyataan'),
('Sk8x467Qm', 'Pelanggaran Berat', 50, 100, '1. Diberikan Peringatan dan Surat Perjanjian<br>2. BIla Melanggar Kembali dikeluarkan dari sekolahan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `c_kelas`, `nisn`, `nama`, `jk`, `alamat`, `tl`) VALUES
('3mPRqCUvC', 'fi5IJXCDs', '45643646', 'Irfan Bachdim', '', '', '0000-00-00'),
('8XmoU43aM', 'g20VX0r3h', '989898898', 'M. Lionel Messi', 'P', 'Barcelona', '1998-10-22'),
('9sgiPEKLX', 'g20VX0r3h', '123456789', 'Muhammad Ali', 'L', '', '0000-00-00'),
('AKbptUszm', 'g20VX0r3h', '9980802501', 'Muhammad Irfan Sukoco Basyuri', 'L', '', '0000-00-00'),
('aYlxwzZu6', 'fi5IJXCDs', '4374734626', 'Michael Essien Woi', 'L', 'Nganjuk', '1998-11-05'),
('BNlJPHC33', 'bf14I0amf', '43544354', 'Muhammad Nur Hidayat', '', '', '0000-00-00'),
('djrCE5y6z', 'fi5IJXCDs', '46437437', 'Amalia Utami', '', '', '0000-00-00'),
('I73vNKyU9', 'fi5IJXCDs', '362362362', 'Febri Hariyadi', '', '', '0000-00-00'),
('iYDGaCQDM', 'g20VX0r3h', '123123123', 'Khusnul Yuliansyah Putra', 'L', 'Baron', '1998-10-15'),
('j1gD4Sei6', 'g20VX0r3h', '39090909090', 'Diva Anggraini', 'P', 'Nganjuk', '1998-05-16'),
('NJOgsxL8z', 'bf14I0amf', '465437345', 'Muhammad Rizky Ridho', '', '', '0000-00-00'),
('ukxWhAq84', 'bf14I0amf', '46346436436', 'Evan Dimas Darmono', 'L', 'Surabaya', '1997-10-18'),
('unCWwBalF', 'bf14I0amf', '35326436436', 'M. Ronaldo', '', '', '0000-00-00'),
('XKHcfzVUR', 'fi5IJXCDs', '46436437437', 'Alvaro Morata', 'L', 'Lengkong', '1999-03-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `benpel`
--
ALTER TABLE `benpel`
  ADD PRIMARY KEY (`c_benpel`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `katbenpel`
--
ALTER TABLE `katbenpel`
  ADD PRIMARY KEY (`c_katbenpel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`c_orangtua`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`c_pelanggaran`);

--
-- Indexes for table `relasichat`
--
ALTER TABLE `relasichat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`c_sanksi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `relasichat`
--
ALTER TABLE `relasichat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `bk_arsyi`
--
CREATE DATABASE IF NOT EXISTS `bk_arsyi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bk_arsyi`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `hp_admin` varchar(13) DEFAULT NULL,
  `status_admin` varchar(1) DEFAULT NULL,
  `alamat_admin` text,
  `password_admin` varchar(225) DEFAULT NULL,
  `jenkel_admin` varchar(1) DEFAULT NULL,
  `id_akses_admin` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `hp_admin`, `status_admin`, `alamat_admin`, `password_admin`, `jenkel_admin`, `id_akses_admin`) VALUES
('AD001', 'Mochamad Arsyi Yunizar', '089509159761', '1', 'Jalan Budhi', '22ba172fa4e408497c1688f3bb74af23', 'L', 'AD');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` varchar(5) NOT NULL,
  `ns_config` varchar(5) NOT NULL,
  `nama_sistem` varchar(50) DEFAULT NULL,
  `nama_instansi` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `status_config` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `ns_config`, `nama_sistem`, `nama_instansi`, `author`, `status_config`) VALUES
('BK1', 'SI BK', 'SI Bimbingan Konseling', 'SMK MAJU MUNDUR', 'Moch Faizal Ansyori', '1');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` varchar(25) NOT NULL,
  `alamat_guru` text,
  `nama_guru` varchar(225) DEFAULT NULL,
  `jenkel_guru` varchar(1) DEFAULT NULL,
  `hp_guru` varchar(12) DEFAULT NULL,
  `pass_guru` varchar(225) DEFAULT NULL,
  `status_guru` varchar(1) DEFAULT NULL,
  `id_akses_guru` varchar(50) NOT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `alamat_guru`, `nama_guru`, `jenkel_guru`, `hp_guru`, `pass_guru`, `status_guru`, `id_akses_guru`, `nip`) VALUES
('GR0002', 'Cianjur', 'Bu Siti', 'P', '098765777', 'd786a9ee4595786f0aada39869125f2b', '1', 'GR', '65438'),
('GR0004', 'Cijerah', 'Pa Firman', 'L', '08653648', '3d0579cbb5af618cc9ab58288cafc8fc', '1', 'GR', '855738');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_hak_akses` varchar(2) NOT NULL,
  `nama_hak_akses` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id_hak_akses`, `nama_hak_akses`, `status`) VALUES
('AD', 'Administrator', '1'),
('GR', 'Guru', '1'),
('OT', 'Orang Tua', '1'),
('SI', 'Siswa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `akronim_jurusan` varchar(50) DEFAULT NULL,
  `status_jurusan` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `akronim_jurusan`, `status_jurusan`) VALUES
('JUR0001', 'Rekayasa Perangkat Lunak', 'RPL', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pelanggaran`
--

CREATE TABLE `kategori_pelanggaran` (
  `id_kategori_pelanggaran` int(11) NOT NULL,
  `nama_kategori_kategori_pelanggaran` varchar(225) NOT NULL,
  `status_kategori_pelanggaran` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_pelanggaran`
--

INSERT INTO `kategori_pelanggaran` (`id_kategori_pelanggaran`, `nama_kategori_kategori_pelanggaran`, `status_kategori_pelanggaran`) VALUES
(3, 'Buku, Majalah, dan Kaset Terlarang, dan Handphone', '1'),
(4, 'Senjata', '1'),
(5, 'Obat atau Minuman Terlarang', '1'),
(6, 'Perkelahian', '1'),
(7, 'Keterlambatan', '1'),
(8, 'Kehadiran', '1'),
(9, 'Kerapian Pakaian', '1'),
(10, 'Rambut', '1'),
(11, 'MABUK', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `status_kelas` varchar(1) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `tingkatan_kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `status_kelas`, `nama_kelas`, `tingkatan_kelas`) VALUES
('KLS0001', '1', 'Sepuluh', 'X'),
('KLS0002', '1', 'Sebelas', 'XI'),
('KLS0003', '1', 'Duabelas', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `kelasjurusan`
--

CREATE TABLE `kelasjurusan` (
  `id_kelasjurusan` varchar(50) NOT NULL,
  `id_kelas_kelasjurusan` varchar(50) DEFAULT NULL,
  `id_jurusan_kelasjurusan` varchar(50) DEFAULT NULL,
  `daya_tampung_kelasjurusan` int(3) DEFAULT NULL,
  `status_kelasjurusan` varchar(1) DEFAULT NULL,
  `urutan_kelasjurusan` varchar(5) DEFAULT NULL,
  `id_walikelas_kelasjurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelasjurusan`
--

INSERT INTO `kelasjurusan` (`id_kelasjurusan`, `id_kelas_kelasjurusan`, `id_jurusan_kelasjurusan`, `daya_tampung_kelasjurusan`, `status_kelasjurusan`, `urutan_kelasjurusan`, `id_walikelas_kelasjurusan`) VALUES
('KLJ0001', 'KLS0003', 'JUR0005', 32, '1', 'A', 'GR0002');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kelastetap`
-- (See below for the actual view)
--
CREATE TABLE `kelastetap` (
`id_kelasjurusan` varchar(50)
,`id_kelas_kelasjurusan` varchar(50)
,`id_jurusan_kelasjurusan` varchar(50)
,`daya_tampung_kelasjurusan` int(3)
,`status_kelasjurusan` varchar(1)
,`urutan_kelasjurusan` varchar(5)
,`id_walikelas_kelasjurusan` varchar(50)
,`id_kelas` varchar(10)
,`status_kelas` varchar(1)
,`nama_kelas` varchar(50)
,`tingkatan_kelas` varchar(10)
,`id_jurusan` varchar(10)
,`nama_jurusan` varchar(100)
,`akronim_jurusan` varchar(50)
,`status_jurusan` varchar(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `waktu_log` datetime NOT NULL,
  `id_log` int(10) NOT NULL,
  `pelaku_log` varchar(8) NOT NULL,
  `dikenai_log` varchar(8) NOT NULL,
  `menu_log` varchar(225) NOT NULL,
  `kegiatan_log` varchar(225) NOT NULL,
  `data_lama_log` text NOT NULL,
  `data_baru_log` text NOT NULL,
  `riwayat_log` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`waktu_log`, `id_log`, `pelaku_log`, `dikenai_log`, `menu_log`, `kegiatan_log`, `data_lama_log`, `data_baru_log`, `riwayat_log`) VALUES
('2017-06-13 08:23:41', 1, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
('2017-06-13 08:26:43', 2, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'x', ''),
('2017-06-13 15:13:16', 3, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
('2017-06-13 15:13:33', 4, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
('2017-06-13 15:14:02', 5, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
('2017-06-13 15:21:38', 6, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
('2017-06-13 15:21:58', 7, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
('2017-06-13 15:57:16', 8, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:57:31', 9, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:58:27', 10, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
('2017-06-13 15:58:39', 11, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Hair', 'Rambut', '10'),
('2017-06-13 21:36:09', 12, 'tes', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Tambah <br> 1<br> 100', ''),
('2017-06-13 21:48:06', 13, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2017-06-17 05:17:56', 14, 'tes', 'AD001', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-17 05:21:21', 15, 'AD001', '', 'SI BK &raquo; Logout', 'Logout from : Administrator', '', '', ''),
('2017-06-17 05:22:04', 16, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-17 05:33:03', 17, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-18 06:02:41', 18, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 06:39:06', 19, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-18 06:51:50', 20, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-18 06:56:04', 21, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XII', ''),
('2017-06-18 07:05:17', 22, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XII', 'Tiga BelasI<br>XIII', 'KLS0004'),
('2017-06-18 07:05:28', 23, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga BelasI<br>XIII', 'Tiga Belas<br>XIII', 'KLS0004'),
('2017-06-18 07:06:38', 24, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XIII', 'Empat Belas<br>XIV', 'KLS0004'),
('2017-06-18 12:00:57', 25, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 12:01:19', 26, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Empat Belas<br>XIV', ''),
('2017-06-18 18:01:17', 27, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 20:35:00', 28, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-18 20:35:25', 29, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Rekayasa Perangkat Lunak<br>', ''),
('2017-06-18 20:36:47', 30, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2017-06-18 20:40:49', 31, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Komputer dan Jaringan', ''),
('2017-06-18 20:42:13', 32, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>XXXXXXXXX', ''),
('2017-06-18 20:49:49', 33, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0003'),
('2017-06-18 20:55:22', 34, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Tata Boga', ''),
('2017-06-18 21:03:37', 35, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Tata Boga<br>TB', 'Komputer Akuntansi<br>', 'JUR0003'),
('2017-06-18 21:04:11', 36, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>', 'Komputer Akuntansi<br>KA', 'JUR0003'),
('2017-06-18 21:04:40', 37, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>KA', 'Komputer Akuntansi<br>KA', 'JUR0003'),
('2017-06-18 21:10:43', 38, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Desain Komunikasi Visual', ''),
('2017-06-19 14:22:18', 39, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:36:22', 40, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:36:32', 41, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:36:46', 42, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:36:55', 43, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-06-19 14:37:02', 44, 'GR001', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2017-06-19 14:37:27', 45, '99828084', '', 'SI BK &raquo; Login', 'Login As Siswa', '', '', ''),
('2017-06-19 14:46:16', 46, '99828084', '', 'SI BK &raquo; Logout', 'Logout From Siswa', '', '', ''),
('2017-06-19 14:46:32', 47, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-19 14:49:17', 48, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-19 14:49:39', 49, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-06-29 09:21:53', 50, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 13:53:32', 51, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 13:56:25', 52, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
('2017-06-29 13:57:09', 53, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Duabelas<br>XI', 'Duabelas<br>XII', 'KLS0003'),
('2017-06-29 13:58:45', 54, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
('2017-06-29 14:51:26', 55, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br><br>B', ''),
('2017-06-29 14:51:54', 56, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0001<br>32<br><br>A', ''),
('2017-06-29 14:53:24', 57, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0002<br>32<br><br>A', ''),
('2017-06-29 15:02:00', 58, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
('2017-06-29 16:42:09', 59, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', '<br>', '<br>', 'ada'),
('2017-06-29 17:08:50', 60, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000432C', 'KLJ0001'),
('2017-06-29 17:10:33', 61, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2017-06-29 17:10:57', 62, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Pemesinan', ''),
('2017-06-29 17:11:16', 63, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Teknik Kendaraan Ringan', ''),
('2017-06-29 17:11:32', 64, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Akuntansi', ''),
('2017-06-29 17:11:49', 65, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0005<br>Desain Komunikasi Visual', ''),
('2017-06-29 17:12:07', 66, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
('2017-06-29 17:12:29', 67, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532B', 'KLJ0001'),
('2017-06-29 17:12:54', 68, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0003<br>JUR0005<br>32<br>B', 'KLS0001<br>JUR000132A', 'KLJ0001'),
('2017-06-29 17:13:36', 69, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0005<br>32<br>A', ''),
('2017-06-29 17:17:41', 70, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532C', 'KLJ0001'),
('2017-06-29 17:30:44', 71, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
('2017-06-29 17:30:45', 72, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
('2017-06-29 19:55:35', 73, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 20:11:48', 74, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'djhfkd<br>v', ''),
('2017-06-29 20:11:55', 75, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'djhfkd<br>v', 'sfsdf<br>v', 'KLS0004'),
('2017-06-29 20:12:02', 76, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
('2017-06-29 20:16:13', 77, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-29 20:45:54', 78, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-06-30 13:17:30', 79, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-30 14:25:40', 80, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-06-30 14:26:49', 81, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Asma<br>Petak<br>085735469090<br>P<br>GR', ''),
('2017-06-30 14:27:47', 82, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '9986973738947<br>Muhammad Al Kautsar<br>Petak<br>085735469080<br>L<br>GR', ''),
('2017-06-30 14:59:11', 83, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '<br>Asma<br>Petak<br>085735469090<br>P', '<br>Asma Binuril Qolbi<br>Surabaya<br>085735469091<br>P', 'GR0001'),
('2017-06-30 15:09:41', 84, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2017-07-02 12:35:28', 85, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-02 15:03:39', 86, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:04:10', 87, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'KLJ0002'),
('2017-07-02 15:05:09', 88, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:05:16', 89, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'GR0002'),
('2017-07-02 15:06:12', 90, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-02 15:06:19', 91, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : GR0002', '', 'KLJ0002'),
('2017-07-04 19:42:42', 92, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-04 19:44:23', 93, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
('2017-07-04 21:12:34', 94, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
('2017-07-05 06:50:10', 95, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 16:00:24', 96, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 18:14:18', 97, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-05 18:28:09', 98, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '<br>Ali Jaber<br>Indonesia<br>035390879090<br>L<br>SI', ''),
('2017-07-05 18:44:31', 99, 'AD001', '', 'SI BK &raquo; Siswa', 'Mengedit Data', '99869090123<br>Ali Jaber<br>Indonesia<br>035390879090<br>L', '99869090121<br>Yon AHy<br>Bojonegoro<br>035390879091<br>P', '99869090123'),
('2017-07-05 18:48:16', 100, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
('2017-07-05 18:48:16', 101, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
('2017-07-06 09:39:40', 102, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-06 10:29:15', 103, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '70011897673<br>Cahyono Islami<br>Ds Gg Gandi<br>03538080121<br>L<br>SI', ''),
('2017-07-06 10:30:36', 104, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '8989899898<br>Putri Titian<br>Mojodelik<br>08564342432<br>P<br>SI', ''),
('2017-07-06 18:31:20', 105, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 13:53:41', 106, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 14:35:51', 107, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 18:35:09', 108, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-07 21:58:44', 109, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 04:58:50', 110, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 05:25:44', 111, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 06:12:54', 112, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732520170708061254<br>70011897673<br>25<br>AD001<br>20170708061254<br>2017-07-06<br>Belakang Sekolah<br>Dikarenakan cewek', ''),
('2017-07-08 06:14:12', 113, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673220170708061412<br>70011897673<br>2<br>AD001<br>20170708061412<br>2017-07-01<br>Belakang Sekolah<br>-', ''),
('2017-07-08 08:19:20', 114, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731220170708081920<br>70011897673<br>12<br>AD001<br>20170708081920<br>2017-07-03<br>Kelas<br>Merokok di kelas saat jam istirahat', ''),
('2017-07-08 08:23:05', 115, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673320170708082305<br>70011897673<br>3<br>AD001<br>20170708082305<br>2017-07-15<br>Belakang Sekolah<br>Melompati pagar', ''),
('2017-07-08 08:25:33', 116, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708082533<br>70011897673<br>13<br>AD001<br>20170708082533<br>2017-07-12<br>Di depan warung<br>Merokok saat seusai pulang sekolah dengan memakai seragam', ''),
('2017-07-08 09:21:50', 117, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708092150<br>70011897673<br>13<br>AD001<br>2017-07-01<br>20170708092150<br>Ruang Kelas<br>Merokok saat jam istirahat', ''),
('2017-07-08 09:22:57', 118, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976734420170708092257<br>70011897673<br>44<br>AD001<br>2017-07-01<br>20170708092257<br>Ruang Kelas<br>Tidak memakai hasduk saat hari sabtu di kelas', ''),
('2017-07-08 09:38:30', 119, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '99828084991520170708093829<br>9982808499<br>15<br>AD001<br>2017-07-04<br>20170708093829<br>Di kelas<br>-', ''),
('2017-07-08 14:43:31', 120, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-08 14:45:27', 121, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731520170708144527<br>70011897673<br>15<br>AD001<br>2017-07-03<br>20170708144527<br>Di kelas<br>Menyebarkan kaset porno', ''),
('2017-07-08 14:49:48', 122, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731820170708144948<br>70011897673<br>18<br>AD001<br>2017-07-06<br>20170708144948<br>Di kelas<br>Melukai karena cemburu', ''),
('2017-07-08 14:50:41', 123, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732320170708145041<br>70011897673<br>23<br>AD001<br>2017-07-14<br>20170708145041<br>Didepan gerbang<br>', ''),
('2017-07-09 13:26:50', 124, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 19:10:50', 125, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 19:15:58', 126, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>B', ''),
('2017-07-09 19:51:44', 127, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195144<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195144<br>f<br>f', ''),
('2017-07-09 19:52:08', 128, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195208<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195208<br>f<br>f', ''),
('2017-07-09 19:53:06', 129, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195306<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195306<br>f<br>f', ''),
('2017-07-09 19:53:32', 130, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195332<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195332<br>f<br>f', ''),
('2017-07-09 19:57:26', 131, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195726<br>8989899898<br>12<br>AD001<br>2017-07-02<br>20170709195726<br>F<br>f', ''),
('2017-07-09 19:59:47', 132, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195946<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709195946<br>f<br>f', ''),
('2017-07-09 20:00:37', 133, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709200037<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709200037<br>f<br>f', ''),
('2017-07-09 20:59:01', 134, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Siti Badriyah<br>Ds. Jampet<br>085790909090<br>P<br>GR', ''),
('2017-07-09 21:00:09', 135, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0003', 'KLJ0002'),
('2017-07-09 21:00:48', 136, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
('2017-07-09 21:01:35', 137, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>A', ''),
('2017-07-09 21:01:59', 138, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>B', ''),
('2017-07-09 21:02:25', 139, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>C', ''),
('2017-07-09 21:03:55', 140, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '99864348933<br>Muhammad El Sharawi<br>Ds Kedung Adem<br>085743431212<br>L<br>SI', ''),
('2017-07-09 21:04:48', 141, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '380483298393489<br>Mashuri<br>Ds Bakung<br>085734342122<br>L<br>SI', ''),
('2017-07-09 21:05:35', 142, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '54354354523<br>Marshanda<br>Ds Jakarta<br>098574343412<br>P<br>SI', ''),
('2017-07-09 21:07:09', 143, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '3804832983931220170709210709<br>380483298393<br>12<br>AD001<br>2017-07-01<br>20170709210709<br>F<br>', ''),
('2017-07-09 21:35:56', 144, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-07-09 21:36:25', 145, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2017-07-09 21:38:46', 146, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2017-07-09 21:39:04', 147, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2017-07-09 21:57:57', 148, 'GR0002', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '998643489331220170709215757<br>99864348933<br>12<br>GR0002<br>2017-07-02<br>20170709215757<br>Di Kantin<br>', ''),
('2022-01-18 09:35:31', 149, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 09:36:23', 150, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0002'),
('2022-01-18 09:36:30', 151, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0003'),
('2022-01-18 09:39:38', 152, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 10:46:34', 153, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 10:48:51', 154, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 10:51:10', 155, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 10:58:16', 156, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0002'),
('2022-01-18 10:58:24', 157, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0003'),
('2022-01-18 10:58:33', 158, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0004'),
('2022-01-18 10:58:39', 159, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0005'),
('2022-01-18 11:02:49', 160, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:04:28', 161, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '123456<br>JOJO<br>ARAB<br>089567421<br>L<br>GR', ''),
('2022-01-18 11:04:41', 162, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2022-01-18 11:06:46', 163, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P<br>GR', ''),
('2022-01-18 11:07:08', 164, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>L', 'GR0001'),
('2022-01-18 11:07:23', 165, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>L', '123456<br>BU TITIN<br>CILEMBER<br>08976543<br>P', 'GR0001'),
('2022-01-18 11:12:52', 166, 'AD001', '', 'SI BK &raquo; Siswa', 'Mengedit Data', '9982808499<br>Moch Faizal Ansyori<br>Petak Beged<br>085735469080<br>L', '9982808499<br>M Ridwan<br>Jln Cimindi<br>085735469080<br>L', '9982808499'),
('2022-01-18 11:13:21', 167, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0001', 'KLJ0003'),
('2022-01-18 11:15:07', 168, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '65438<br>Bu Siti<br>Cianjur<br>098765777<br>P<br>GR', ''),
('2022-01-18 11:16:26', 169, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '87769954<br>Pa Dadang<br>Jln Budi<br>08567779<br>L<br>GR', ''),
('2022-01-18 11:32:11', 170, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:42:08', 171, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 11:43:20', 172, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '855738<br>Pa Firman<br>Cijerah<br>08653648<br>L<br>GR', ''),
('2022-01-18 11:43:53', 173, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0004'),
('2022-01-18 11:44:07', 174, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0003', 'KLJ0005'),
('2022-01-18 11:44:29', 175, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0004', 'KLJ0006'),
('2022-01-18 11:44:45', 176, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0007'),
('2022-01-18 13:01:16', 177, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-18 13:01:35', 178, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-18 13:01:43', 179, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:49:09', 180, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:49:27', 181, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-01-28 10:53:35', 182, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-01-28 10:55:40', 183, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-01-28 10:57:17', 184, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '9982808499'),
('2022-01-28 10:57:35', 185, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99864348933'),
('2022-01-28 10:57:46', 186, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '380483298393'),
('2022-01-28 10:58:00', 187, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '54354354523'),
('2022-01-28 10:58:30', 188, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0002'),
('2022-01-28 10:58:37', 189, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0003'),
('2022-01-28 10:58:45', 190, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0004'),
('2022-01-28 10:58:51', 191, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0005'),
('2022-01-28 10:58:58', 192, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0006'),
('2022-01-28 10:59:05', 193, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0007'),
('2022-02-03 10:06:01', 194, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-02-03 10:45:05', 195, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-02-04 16:31:41', 196, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-22 08:12:56', 197, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-22 09:05:52', 198, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0003'),
('2022-03-22 09:06:00', 199, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
('2022-03-22 09:06:43', 200, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-22 09:11:05', 201, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0001<br>33<br>b', ''),
('2022-03-22 09:14:09', 202, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '190764328<br>arsyi<br>jl.budi<br>089754343<br>L<br>SI', ''),
('2022-03-22 09:15:54', 203, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '190654987<br>teguh<br>jl.budi<br>0838647777<br>L<br>SI', ''),
('2022-03-26 13:27:18', 204, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-26 13:28:42', 205, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'MABUK', ''),
('2022-03-26 13:29:29', 206, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0002'),
('2022-03-26 13:31:45', 207, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Membawa Rokok <br> 2<br> 10', ''),
('2022-03-26 13:32:17', 208, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:30', 209, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:51', 210, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:32:58', 211, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:05', 212, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:15', 213, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:42', 214, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:33:58', 215, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:34:09', 216, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0001'),
('2022-03-26 13:34:31', 217, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
('2022-03-26 13:35:01', 218, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Mabal <br> 8<br> 5', ''),
('2022-03-26 13:35:20', 219, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:35:32', 220, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:42:13', 221, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Teguh <br> 2<br> 10', ''),
('2022-03-26 13:42:30', 222, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '2'),
('2022-03-26 13:52:42', 223, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:52:51', 224, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-26 13:53:21', 225, 'AD001', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
('2022-03-27 10:51:37', 226, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 10:52:29', 227, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Berkelahi <br> 6<br> 10', ''),
('2022-03-27 10:52:49', 228, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 10:52:56', 229, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 10:53:33', 230, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 15:11:56', 231, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 15:16:07', 232, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 15:17:12', 233, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 15:17:27', 234, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 15:43:19', 235, 'GR0002', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2022-03-27 15:43:25', 236, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 15:45:53', 237, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 15:46:02', 238, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 15:46:41', 239, 'GR0002', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2022-03-27 15:46:52', 240, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 15:47:21', 241, 'AD001', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Teguh <br> 4<br> 10', ''),
('2022-03-27 15:47:27', 242, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 15:47:34', 243, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 15:55:44', 244, 'GR0002', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2022-03-27 15:56:37', 245, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
('2022-03-27 16:00:20', 246, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
('2022-03-27 16:00:46', 247, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
('2022-03-27 16:02:47', 248, 'GR0002', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
('2022-03-27 16:03:06', 249, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id_ortu` varchar(10) NOT NULL,
  `alamat_ortu` varchar(50) DEFAULT NULL,
  `nama_ortu` varchar(100) DEFAULT NULL,
  `jenkel_ortu` text,
  `pekerjaan_ortu` varchar(50) DEFAULT NULL,
  `hp_ortu` varchar(50) DEFAULT NULL,
  `status_ortu` varchar(1) DEFAULT NULL,
  `id_akses_ortu` varchar(2) DEFAULT NULL,
  `pass_ortu` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id_ortu`, `alamat_ortu`, `nama_ortu`, `jenkel_ortu`, `pekerjaan_ortu`, `hp_ortu`, `status_ortu`, `id_akses_ortu`, `pass_ortu`) VALUES
('OT001', 'Sendang rejo', 'Muhammad Iqbal', 'L', 'Tentara', '085768903489', '1', 'OT', '1b74530ff1c8fdbb50405347962aeab3');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(225) NOT NULL,
  `id_kategori_pelanggaran` varchar(10) NOT NULL,
  `point_pelanggaran` int(11) NOT NULL,
  `status_pelanggaran` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `id_kategori_pelanggaran`, `point_pelanggaran`, `status_pelanggaran`) VALUES
(1, 'Membuat keributan/ kegaduhan dalam kelas saat berlangsung pelajaran', '1', 10, '1'),
(2, 'Masuk lingkungan sekolah dengan loncat pagar', '1', 5, '1'),
(3, 'Keluar dari lingkungan sekolah tanpa izin', '1', 10, '1'),
(4, 'Mengotori (mencoret-coret) benda milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
(5, 'Merusak/ menghilangkan barang milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
(6, 'Mengambil (mencuri) barang milik sekolah, guru, pegawai dan teman', '1', 25, '1'),
(7, 'Makan dan minum didalam kelas saat berlangsung pelajaran', '1', 5, '1'),
(8, 'Membawa benda yang tidak ada kaitannya dengan proses belajar', '1', 10, '1'),
(9, 'Bertengkar/ bertentangan dengan teman dilingkungan sekolah', '1', 10, '1'),
(10, 'Malakukan tindakan asusila (maksiat) didalam maupun diluar lingkungan sekolah', '1', 90, '1'),
(11, 'Melakukan perbuatan yang berakibat mencemarkan nama baik sekolah', '1', 40, '1'),
(12, 'Membawa rokok', '2', 25, '1'),
(13, 'Merokok/ menghisap roko disekolah atau ditempat lain', '2', 50, '1'),
(14, 'Membawa buku, majalah, atau kaset (terlarang) dan HP', '3', 25, '1'),
(15, 'Menjual buku, Majalah atau kaset (terlarang) dan HP', '3', 25, '1'),
(16, 'Membawa senjata tajam tanpa izin', '4', 30, '1'),
(17, 'Memperjual belikan senjata tajam', '4', 50, '1'),
(18, 'Menggunakan senjata tajam untuk mengancam', '4', 75, '1'),
(19, 'Menggunakan senjata tajam untuk melukai', '4', 100, '1'),
(20, 'Membawa obat/ minuman terlarang', '5', 50, '1'),
(21, 'Menggunakan obat/ minuman terlarang', '5', 75, '1'),
(22, 'Memperjual belikan obat/ minuman terlarang', '5', 75, '1'),
(23, 'Disebabkan oleh siswa dalam sekolah (Intern)', '6', 15, '1'),
(24, 'Disebabkan oleh siswa sekolah lain', '6', 25, '1'),
(25, 'Antar siswa', '6', 50, '1'),
(26, 'Satu kali', '7', 5, '1'),
(27, 'Dua kali', '7', 10, '1'),
(28, 'Tiga kali', '7', 10, '1'),
(29, 'Terlambat masuk karena izin', '7', 5, '1'),
(30, 'Terlambat masuk karena diberi tugas guru', '7', 5, '1'),
(31, 'Terlambat masuk karena alasan dibuat-buat 5 poin', '7', 25, '1'),
(32, 'Izin keluar saat proses belajar berlangsung tidak kembali', '7', 25, '1'),
(33, 'Pulang tanpa izin', '7', 25, '1'),
(34, 'Sakit tanpa keterangan (surat)', '8', 5, '1'),
(35, 'Izin tanpa keterangan', '8', 10, '1'),
(36, 'Alfa', '8', 10, '1'),
(37, 'Tidak mengikuti kegiatan belajar (bolos)', '8', 20, '1'),
(38, 'Tidak masuk sekolah dengan membuat surat keterangan palsu', '8', 15, '1'),
(39, 'Keluar kelas saat proses belajar mengajar berlangsung', '8', 15, '1'),
(40, 'Tidak mengikuti shalat dzuhur berjama’ah', '8', 10, '1'),
(41, 'Tidak menghadiri kegiatan ekstrakurikuler', '8', 5, '1'),
(42, 'Memakai seragam tidak rapi/ tidak dimasukkan (laki-laki)', '9', 3, '1'),
(43, 'Memakai seragam yang ketat', '9', 3, '1'),
(44, 'Tidak berpakaian seragam lengkap beserta atribut (sesuai ketentuan)', '9', 5, '1'),
(45, 'Tidak memakai ikat pinggang hitam polos', '9', 5, '1'),
(46, 'Tidak memakai sepatu hitam bertali', '9', 5, '1'),
(47, 'Tidak memakai kaos kaki (sesuai ketentuan)', '9', 5, '1'),
(48, 'Tidak memakai kaos dalam (sesuai ketentuan)', '9', 5, '1'),
(49, 'Memakai peci bagi putra dan jilbab bagi putri (sesuai ketentuan)', '9', 5, '1'),
(50, 'Siswa putri memakai perhiasan berlebihan', '9', 10, '1'),
(51, 'Siswa putra memakai perhiasan atau assesoris (kalung, gelang, dll)', '9', 5, '1'),
(52, 'Memakai pin assesoris yang tidak berkaitan dengan sekolah', '9', 5, '1'),
(53, 'Memakai jaket/ Switer kedalam kelas', '9', 5, '1'),
(54, 'Memanjangkan kuku/ mencatnya', '9', 5, '1'),
(55, 'Mencoret-coret pakaian sekolah dengan sengaja', '9', 20, '1'),
(56, 'Mencoret-coret pakaian sekolah dengan sengaja (setelah berakhirnya UN)', '9', 50, '1'),
(57, 'Panjang melalui batas ketentuan (telinga, alis, dan krah baju)', '10', 5, '1'),
(58, 'Pendek/ dicukur tidak rapi untuk siswa putra', '10', 10, '1'),
(59, 'Dicat/ warna-warnai (putra/putri)', '10', 10, '1'),
(60, 'Tambah', '1', 100, '1'),
(61, 'Membawa Rokok', '2', 10, '1'),
(62, 'Mabal', '8', 5, '1'),
(63, 'Teguh', '2', 10, '1'),
(64, 'Berkelahi', '6', 10, '1'),
(65, 'Teguh', '4', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `id_pelanggaran_siswa` varchar(50) NOT NULL,
  `nis_pelanggaran_siswa` varchar(12) NOT NULL,
  `id_pelanggaran_pelanggaran_siswa` varchar(10) NOT NULL,
  `id_guru_pelanggaran_siswa` varchar(25) NOT NULL,
  `waktu_melanggar_pelanggaran_siswa` date NOT NULL,
  `waktu_input_pelanggaran_siswa` datetime NOT NULL,
  `tempat_pelanggaran_siswa` varchar(225) NOT NULL,
  `keterangan_pelanggaran_siswa` text NOT NULL,
  `status_pelanggaran_siswa` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran_siswa`
--

INSERT INTO `pelanggaran_siswa` (`id_pelanggaran_siswa`, `nis_pelanggaran_siswa`, `id_pelanggaran_pelanggaran_siswa`, `id_guru_pelanggaran_siswa`, `waktu_melanggar_pelanggaran_siswa`, `waktu_input_pelanggaran_siswa`, `tempat_pelanggaran_siswa`, `keterangan_pelanggaran_siswa`, `status_pelanggaran_siswa`) VALUES
('3804832983931220170709210709', '380483298393', '12', 'AD001', '2017-07-01', '2017-07-09 21:07:09', 'F', '', '1'),
('700118976731320170708092150', '70011897673', '13', 'GR0002', '2017-07-01', '2017-07-08 09:24:44', 'Ruang Kelas', 'Merokok saat jam istirahat', '1'),
('700118976731520170708144527', '70011897673', '15', 'AD001', '2017-07-03', '2017-07-08 14:45:27', 'Di kelas', 'Menyebarkan kaset porno', '1'),
('700118976731820170708144948', '70011897673', '18', 'AD001', '2017-07-06', '2017-07-08 14:49:48', 'Di kelas', 'Melukai karena cemburu', '1'),
('700118976732320170708145041', '70011897673', '23', 'AD001', '2017-07-14', '2017-07-08 14:50:41', 'Didepan gerbang', '', '1'),
('700118976734420170708092257', '70011897673', '44', 'GR0002', '2017-07-01', '2017-07-08 09:21:22', 'Ruang Kelas', 'Tidak memakai hasduk saat hari sabtu di kelas', '1'),
('8989899898120170709195144', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:51:44', 'f', 'f', '1'),
('8989899898120170709195208', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:52:08', 'f', 'f', '1'),
('8989899898120170709195306', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:06', 'f', 'f', '1'),
('8989899898120170709195332', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:32', 'f', 'f', '1'),
('89898998981220170709195726', '8989899898', '12', 'AD001', '2017-07-02', '2017-07-09 19:57:26', 'F', 'f', '1'),
('89898998981220170709195946', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 19:59:46', 'f', 'f', '1'),
('89898998981220170709200037', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 20:00:37', 'f', 'f', '1'),
('99828084991520170708093829', '9982808499', '15', 'AD001', '2017-07-04', '2017-07-08 09:38:29', 'Di kelas', '-', '1'),
('998643489331220170709215757', '99864348933', '12', 'GR0002', '2017-07-02', '2017-07-09 21:57:57', 'Di Kantin', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis_siswa` varchar(12) NOT NULL,
  `nama_siswa` varchar(225) NOT NULL,
  `jenkel_siswa` varchar(1) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `hp_siswa` varchar(12) NOT NULL,
  `id_ayah_siswa` varchar(10) NOT NULL,
  `id_ibu_siswa` varchar(10) NOT NULL,
  `id_wali_siswa` varchar(12) NOT NULL,
  `id_kelas_siswa` varchar(225) NOT NULL,
  `id_akses_siswa` varchar(2) NOT NULL,
  `pass_siswa` varchar(225) NOT NULL,
  `status_siswa` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis_siswa`, `nama_siswa`, `jenkel_siswa`, `alamat_siswa`, `hp_siswa`, `id_ayah_siswa`, `id_ibu_siswa`, `id_wali_siswa`, `id_kelas_siswa`, `id_akses_siswa`, `pass_siswa`, `status_siswa`) VALUES
('190654987', 'teguh', 'L', 'jl.budi', '0838647777', '', '', '', 'KLJ0002', 'SI', '64a2373a63bbbdcd0b5ba09c8473836a', '1'),
('190764328', 'arsyi', 'L', 'jl.budi', '089754343', '', '', '', 'KLJ0002', 'SI', '32cd221df381adaea31f8ba8927b6ae7', '1');

-- --------------------------------------------------------

--
-- Structure for view `kelastetap`
--
DROP TABLE IF EXISTS `kelastetap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kelastetap`  AS  select `kelasjurusan`.`id_kelasjurusan` AS `id_kelasjurusan`,`kelasjurusan`.`id_kelas_kelasjurusan` AS `id_kelas_kelasjurusan`,`kelasjurusan`.`id_jurusan_kelasjurusan` AS `id_jurusan_kelasjurusan`,`kelasjurusan`.`daya_tampung_kelasjurusan` AS `daya_tampung_kelasjurusan`,`kelasjurusan`.`status_kelasjurusan` AS `status_kelasjurusan`,`kelasjurusan`.`urutan_kelasjurusan` AS `urutan_kelasjurusan`,`kelasjurusan`.`id_walikelas_kelasjurusan` AS `id_walikelas_kelasjurusan`,`kelas`.`id_kelas` AS `id_kelas`,`kelas`.`status_kelas` AS `status_kelas`,`kelas`.`nama_kelas` AS `nama_kelas`,`kelas`.`tingkatan_kelas` AS `tingkatan_kelas`,`jurusan`.`id_jurusan` AS `id_jurusan`,`jurusan`.`nama_jurusan` AS `nama_jurusan`,`jurusan`.`akronim_jurusan` AS `akronim_jurusan`,`jurusan`.`status_jurusan` AS `status_jurusan` from ((`kelasjurusan` join `kelas` on((`kelasjurusan`.`id_kelas_kelasjurusan` = `kelas`.`id_kelas`))) join `jurusan` on((`kelasjurusan`.`id_jurusan_kelasjurusan` = `jurusan`.`id_jurusan`))) where ((`kelasjurusan`.`status_kelasjurusan` = '1') and (`kelas`.`status_kelas` = '1') and (`jurusan`.`status_jurusan` = '1')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  ADD PRIMARY KEY (`id_kategori_pelanggaran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelasjurusan`
--
ALTER TABLE `kelasjurusan`
  ADD PRIMARY KEY (`id_kelasjurusan`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_kategori` (`id_kategori_pelanggaran`);

--
-- Indexes for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`id_pelanggaran_siswa`),
  ADD KEY `nis` (`nis_pelanggaran_siswa`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran_pelanggaran_siswa`),
  ADD KEY `id_guru` (`id_guru_pelanggaran_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis_siswa`),
  ADD KEY `id_kelas_siswa` (`id_kelas_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  MODIFY `id_kategori_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- Database: `db_pps`
--
CREATE DATABASE IF NOT EXISTS `db_pps` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_pps`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('123456789', 'Arsyi Yunizar', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `benpel`
--

CREATE TABLE `benpel` (
  `c_benpel` varchar(10) NOT NULL,
  `c_katbenpel` varchar(10) NOT NULL,
  `benpel` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benpel`
--

INSERT INTO `benpel` (`c_benpel`, `c_katbenpel`, `benpel`, `bobot`) VALUES
('5XafCJsV5', 'b4tFXbsU5', 'Berkelahi dengan sekolahan lain', 100),
('cn7rgthJl', 'FSyln8F5q', 'Berkata Kotor Dengan Guru', 50),
('jODakRHnk', 'jGC4JtGo0', 'Memasukkan Baju (Siswa Putri)', 2),
('kmIn6bv43', 'jGC4JtGo0', 'Bertato', 20),
('M8yHhFw6o', 'b4tFXbsU5', 'Terbukti melakukan kejahatan', 50),
('o6zIRf55a', 'wE2hDSZ0H', 'Meninggalkan Kelas Tanpa Izin', 5),
('qlW4RnkLE', 'jGC4JtGo0', 'Tidak Memasukkan Baju (Siswa Putra)', 20),
('rkCV0Qegy', 'jGC4JtGo0', 'Berambut Gondrong (Siswa Putra)/dicat/diwarna', 2),
('UtkxKRhBu', 'wE2hDSZ0H', 'Tidak Mengikuti Pelajaran Tanpa Izin', 10),
('y1Xs82Iud', 'wE2hDSZ0H', 'Tidak Mengikuti Upacara', 5),
('yYuI3otvA', 'FSyln8F5q', 'Mengejek Guru', 10);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL,
  `pesan` text NOT NULL,
  `at` datetime NOT NULL,
  `w_g` varchar(1) NOT NULL,
  `sg` varchar(1) NOT NULL,
  `sw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_chat`, `c_guru`, `c_orangtua`, `pesan`, `at`, `w_g`, `sg`, `sw`) VALUES
(8, 'DPCcMKMey', 'fjzMt6zr4', 'ppppp', '2022-04-12 12:28:57', 'g', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nama`, `username`, `password`, `foto`) VALUES
('DPCcMKMey', 'ANITA NURAENI', 'guruku', 'guruku', 'foto/download.jpg'),
('L9qSA0sVq', 'Dadan Hermawan', '0000', '0000', ''),
('od6lnUguF', 'Siti Nur', '5555', '5555', '');

-- --------------------------------------------------------

--
-- Table structure for table `katbenpel`
--

CREATE TABLE `katbenpel` (
  `c_katbenpel` varchar(10) NOT NULL,
  `katbenpel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katbenpel`
--

INSERT INTO `katbenpel` (`c_katbenpel`, `katbenpel`) VALUES
('b4tFXbsU5', 'KEJAHATAN'),
('FSyln8F5q', 'KESOPANAN'),
('jGC4JtGo0', 'KERAPIAN'),
('wE2hDSZ0H', 'KERAJINAN');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('bf14I0amf', 'XII RPL'),
('fi5IJXCDs', 'XII TKJ'),
('g20VX0r3h', 'XII MLOG'),
('NFVN6oSIZ', 'XII MM');

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE `orangtua` (
  `c_orangtua` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`c_orangtua`, `c_siswa`, `nama`, `username`, `password`) VALUES
('eRoEuQtBc', 'Gj56qtaPW', 'udin', '5432', '123'),
('fjzMt6zr4', 'yEQCyufkR', 'Deden R', '2222', '2222'),
('Gjg3Y9Eie', 'HiIki4LBi', 'Wijaya', '9999', '9999'),
('NmtjKx7Oy', 'J6b91EF3N', 'Rita', '3333', '3333'),
('NVeMYZ8JS', '3lFWnNsDx', 'Koko', '1111', '1111'),
('qJrvuxWud', 'lFNcOOQuX', 'Mul', '7777', '7777'),
('y1MVCBosy', 'HfzMwiu5t', 'Taryono', '4444', '4444'),
('yRnnw7vFD', 'gAudt5uSx', 'Muhtar', '8888', '8888');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `c_pelanggaran` varchar(5) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_benpel` varchar(10) NOT NULL,
  `bobot` int(4) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`c_pelanggaran`, `c_siswa`, `c_kelas`, `c_benpel`, `bobot`, `c_guru`, `at`) VALUES
('6PcG', 'yEQCyufkR', 'bf14I0amf', 'kmIn6bv43', 20, 'DPCcMKMey', '2022-03-30 19:46:27'),
('9wFY', '3lFWnNsDx', 'bf14I0amf', 'UtkxKRhBu', 10, 'DPCcMKMey', '2022-03-30 19:40:49'),
('AgwJ', 'yEQCyufkR', 'bf14I0amf', 'rkCV0Qegy', 2, 'DPCcMKMey', '2022-04-06 19:48:39'),
('eBQd', '3lFWnNsDx', 'bf14I0amf', 'yYuI3otvA', 10, 'L9qSA0sVq', '2022-04-06 17:43:24'),
('L0zq', '3lFWnNsDx', 'bf14I0amf', '5XafCJsV5', 100, 'DPCcMKMey', '2022-04-06 19:49:43'),
('SvuE', 'yEQCyufkR', 'bf14I0amf', 'kmIn6bv43', 20, 'L9qSA0sVq', '2022-04-06 17:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `relasichat`
--

CREATE TABLE `relasichat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasichat`
--

INSERT INTO `relasichat` (`c_chat`, `c_guru`, `c_orangtua`) VALUES
(2, 'DPCcMKMey', 'NVeMYZ8JS'),
(4, 'DPCcMKMey', 'fjzMt6zr4');

-- --------------------------------------------------------

--
-- Table structure for table `sanksi`
--

CREATE TABLE `sanksi` (
  `c_sanksi` varchar(10) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `bobot_dari` int(3) NOT NULL,
  `bobot_sampai` int(3) NOT NULL,
  `sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanksi`
--

INSERT INTO `sanksi` (`c_sanksi`, `kriteria`, `bobot_dari`, `bobot_sampai`, `sanksi`) VALUES
('0DhOeINEy', 'Pelanggaran Ringan', 1, 5, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran'),
('d3e8l5Jts', 'Pelanggaran Sedang', 6, 20, '1. Dicatat<br>2. Membuat Surat Pernyataan'),
('Sk8x467Qm', 'Pelanggaran Berat', 50, 100, '1. Diberikan Peringatan dan Surat Perjanjian<br>2. BIla Melanggar Kembali dikeluarkan dari sekolahan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `c_kelas`, `nisn`, `nama`, `jk`, `alamat`, `tl`) VALUES
('3lFWnNsDx', 'bf14I0amf', '089509159761', 'Arsyi', 'L', 'Bandung', '2003-12-12'),
('gAudt5uSx', 'NFVN6oSIZ', '135686543', 'Noval', 'P', 'cimahi', '1970-01-01'),
('Gj56qtaPW', 'NFVN6oSIZ', '987654234', 'Andra', 'P', 'Bandung', '2003-11-13'),
('HfzMwiu5t', 'fi5IJXCDs', '346898654', 'Santi', 'P', 'Cililin', '1970-01-01'),
('HiIki4LBi', 'g20VX0r3h', '1234568865', 'Ronan ', 'L', 'cimahi', '2003-04-21'),
('J6b91EF3N', 'g20VX0r3h', '75463543324', 'Nisa', 'P', 'tanggerang', '1970-01-01'),
('lFNcOOQuX', 'fi5IJXCDs', '6543678944', 'Sani', 'L', 'arab', '1970-01-01'),
('yEQCyufkR', 'bf14I0amf', '1906520987', 'teguh', 'L', 'cimahi', '1970-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `benpel`
--
ALTER TABLE `benpel`
  ADD PRIMARY KEY (`c_benpel`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `katbenpel`
--
ALTER TABLE `katbenpel`
  ADD PRIMARY KEY (`c_katbenpel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`c_orangtua`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`c_pelanggaran`);

--
-- Indexes for table `relasichat`
--
ALTER TABLE `relasichat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`c_sanksi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `relasichat`
--
ALTER TABLE `relasichat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `latihan`
--
CREATE DATABASE IF NOT EXISTS `latihan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `akses` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `akses`) VALUES
(1, 'bimas@gmail.com', 'bimaskostian', 1),
(2, 'bimas123@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `sibk`
--
CREATE DATABASE IF NOT EXISTS `sibk` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sibk`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `izin` int(10) NOT NULL,
  `sakit` int(10) NOT NULL,
  `tanpa_ket` int(10) NOT NULL,
  `tanggal_absensi` date NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nbm` varchar(30) NOT NULL,
  `nama_guru` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `jenkel_guru` char(1) NOT NULL,
  `hp_guru` varchar(13) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_hak_akses` int(11) NOT NULL,
  `nama_hak_akses` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id_hak_akses`, `nama_hak_akses`) VALUES
(1, 'Administrator'),
(2, 'Operator'),
(3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `akronin_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `akronin_jurusan`) VALUES
(2, 'Unggulan', 'KU'),
(3, 'Multilingual', 'KM'),
(4, 'Matematika dan Ilmu Alam', 'MIA'),
(5, 'Ilmu-Ilmu Sosial', 'ISS'),
(6, 'Ilmu-Ilmu Keagamaan', 'IIK');

-- --------------------------------------------------------

--
-- Table structure for table `kat_panggilan`
--

CREATE TABLE `kat_panggilan` (
  `id_kat_panggilan` int(11) NOT NULL,
  `nama_kat_panggilan` varchar(200) NOT NULL,
  `keterangan_kat_panggilan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kat_panggilan`
--

INSERT INTO `kat_panggilan` (`id_kat_panggilan`, `nama_kat_panggilan`, `keterangan_kat_panggilan`) VALUES
(2, 'Nasihat', 'Poin 1 - 15'),
(3, 'SP1', 'Poin 16 - 30'),
(4, 'Pengantar SP2 ( Panggilan )', 'Poin 31 - 60'),
(5, 'SP2', 'Poin 61 - 80'),
(6, 'SP3', 'Poi 81 - 89'),
(7, 'Pembinaan Wadir 3', 'Poin 90 - 99'),
(8, 'Konfrensi Kasus', 'Poin 100+');

-- --------------------------------------------------------

--
-- Table structure for table `kat_pelanggaran`
--

CREATE TABLE `kat_pelanggaran` (
  `id_kat_pelanggaran` int(11) NOT NULL,
  `nama_kat_pelanggaran` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kat_pelanggaran`
--

INSERT INTO `kat_pelanggaran` (`id_kat_pelanggaran`, `nama_kat_pelanggaran`) VALUES
(1, 'Rokok'),
(2, 'Pacaran');

-- --------------------------------------------------------

--
-- Table structure for table `kat_prestasi`
--

CREATE TABLE `kat_prestasi` (
  `id_kat_prestasi` int(11) NOT NULL,
  `nama_kat_prestasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kat_prestasi`
--

INSERT INTO `kat_prestasi` (`id_kat_prestasi`, `nama_kat_prestasi`) VALUES
(1, 'Hafalan'),
(2, 'Juara Lomba');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `tingkat`, `nama_kelas`) VALUES
(5, 'I', 'Satu'),
(6, 'II', 'Dua'),
(7, 'III', 'Tiga'),
(8, 'IV', 'Empat'),
(9, 'V', 'Lima'),
(10, 'VI', 'Enam');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_jurusan`
--

CREATE TABLE `kelas_jurusan` (
  `id_kelas_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `daya_tampung` int(10) NOT NULL,
  `urutan_kelas_jurusan` char(1) NOT NULL,
  `id_wali_kelas` int(20) NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `id_hak_akses` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `id_hak_akses`, `status`) VALUES
(4, 'arsyi', '$2y$10$9a7b78YWmpUO1yS3Q2CeMOuWvemjp4Q13q52ykg5alI/f9NrICqB', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id_ortu` int(11) NOT NULL,
  `nama_ortu` varchar(200) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `jenkel_ortu` varchar(1) NOT NULL,
  `hp_ortu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(200) NOT NULL,
  `point_pelanggaran` int(10) NOT NULL,
  `id_kat_pelanggaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `point_pelanggaran`, `id_kat_pelanggaran`) VALUES
(1, 'Merokok', 10, 1),
(2, 'Pacaran', 75, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `id_pelanggaran_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelanggaran` int(11) NOT NULL,
  `id_penginput` int(20) NOT NULL,
  `waktu_melanggar` date NOT NULL,
  `waktu_input` text NOT NULL,
  `tempat_pelanggaran` varchar(200) NOT NULL,
  `tindak_lanjut` text NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_siswa`
--

CREATE TABLE `penilaian_siswa` (
  `id_penilaian_siswa` int(11) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `sholat_wajib` int(1) NOT NULL,
  `membaca_kitab` int(1) NOT NULL,
  `sholat_sunnah` int(1) NOT NULL,
  `kerajinan` int(1) NOT NULL,
  `kedisiplinan` int(1) NOT NULL,
  `kerapihan` int(1) NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `nama_prestasi` varchar(200) NOT NULL,
  `point_prestasi` int(10) NOT NULL,
  `id_kat_prestasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama_prestasi`, `point_prestasi`, `id_kat_prestasi`) VALUES
(1, 'Hafalan 5 Juz Al-Qur\'an', 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_siswa`
--

CREATE TABLE `prestasi_siswa` (
  `id_prestasi_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_prestasi` int(11) NOT NULL,
  `id_penginput` int(20) NOT NULL,
  `waktu_input` datetime NOT NULL,
  `keterangan_prestasi` text NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(200) NOT NULL,
  `jenkel_siswa` varchar(1) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `hp_siswa` varchar(20) NOT NULL,
  `photo_siswa` text,
  `id_ortu` int(11) DEFAULT NULL,
  `id_kelas_jurusan` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `account` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id_tahun` int(11) NOT NULL,
  `awal_tahun` date NOT NULL,
  `akhir_tahun` date NOT NULL,
  `tahun_ajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `nis` (`id_siswa`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kat_panggilan`
--
ALTER TABLE `kat_panggilan`
  ADD PRIMARY KEY (`id_kat_panggilan`);

--
-- Indexes for table `kat_pelanggaran`
--
ALTER TABLE `kat_pelanggaran`
  ADD PRIMARY KEY (`id_kat_pelanggaran`);

--
-- Indexes for table `kat_prestasi`
--
ALTER TABLE `kat_prestasi`
  ADD PRIMARY KEY (`id_kat_prestasi`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  ADD PRIMARY KEY (`id_kelas_jurusan`),
  ADD KEY `id_tahun` (`id_tahun`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_wali_kelas` (`id_wali_kelas`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_hak_akses` (`id_hak_akses`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_kat_pelanggaran` (`id_kat_pelanggaran`);

--
-- Indexes for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`id_pelanggaran_siswa`),
  ADD KEY `nis` (`id_siswa`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran`),
  ADD KEY `id_penginput` (`id_penginput`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `penilaian_siswa`
--
ALTER TABLE `penilaian_siswa`
  ADD PRIMARY KEY (`id_penilaian_siswa`),
  ADD KEY `nis` (`id_siswa`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `id_kat_prestasi` (`id_kat_prestasi`);

--
-- Indexes for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD PRIMARY KEY (`id_prestasi_siswa`),
  ADD KEY `nis` (`id_siswa`),
  ADD KEY `id_prestasi` (`id_prestasi`),
  ADD KEY `id_penginput` (`id_penginput`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`,`nis`),
  ADD KEY `id_kelas_jurusan` (`id_kelas_jurusan`),
  ADD KEY `id_ortu` (`id_ortu`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id_hak_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kat_panggilan`
--
ALTER TABLE `kat_panggilan`
  MODIFY `id_kat_panggilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kat_pelanggaran`
--
ALTER TABLE `kat_pelanggaran`
  MODIFY `id_kat_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kat_prestasi`
--
ALTER TABLE `kat_prestasi`
  MODIFY `id_kat_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  MODIFY `id_kelas_jurusan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id_ortu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  MODIFY `id_pelanggaran_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian_siswa`
--
ALTER TABLE `penilaian_siswa`
  MODIFY `id_penilaian_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  MODIFY `id_prestasi_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  ADD CONSTRAINT `kelas_jurusan_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_jurusan_ibfk_5` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_jurusan_ibfk_6` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_jurusan_ibfk_7` FOREIGN KEY (`id_wali_kelas`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_hak_akses`) REFERENCES `hak_akses` (`id_hak_akses`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`id_kat_pelanggaran`) REFERENCES `kat_pelanggaran` (`id_kat_pelanggaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD CONSTRAINT `pelanggaran_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelanggaran_siswa_ibfk_2` FOREIGN KEY (`id_pelanggaran`) REFERENCES `pelanggaran` (`id_pelanggaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelanggaran_siswa_ibfk_4` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian_siswa`
--
ALTER TABLE `penilaian_siswa`
  ADD CONSTRAINT `penilaian_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_siswa_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`id_kat_prestasi`) REFERENCES `kat_prestasi` (`id_kat_prestasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD CONSTRAINT `prestasi_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prestasi_siswa_ibfk_2` FOREIGN KEY (`id_prestasi`) REFERENCES `prestasi` (`id_prestasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prestasi_siswa_ibfk_3` FOREIGN KEY (`id_penginput`) REFERENCES `login` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prestasi_siswa_ibfk_4` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_kelas_jurusan`) REFERENCES `kelas_jurusan` (`id_kelas_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_4` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id_ortu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_5` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
