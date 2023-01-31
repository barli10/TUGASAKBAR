-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2023 pada 04.37
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_demografi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'Islam'),
(2, 'Katholik'),
(3, 'Protestan'),
(4, 'Budha'),
(5, 'Hindu'),
(6, 'Konghucu'),
(7, 'lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kelurahan`
--

CREATE TABLE `tab_kelurahan` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_kelurahan`
--

INSERT INTO `tab_kelurahan` (`id`, `kelurahan`) VALUES
(1, 'Duren Sawit'),
(2, 'Klender'),
(3, 'Malaka Jaya'),
(4, 'Malaka Sari'),
(5, 'Pondok Bambu'),
(6, 'Pondok Kelapa'),
(7, 'Pondok Kopi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_pendapatan`
--

CREATE TABLE `tab_pendapatan` (
  `id` int(11) NOT NULL,
  `pendapatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_pendapatan`
--

INSERT INTO `tab_pendapatan` (`id`, `pendapatan`) VALUES
(1, 'Dibawah UMR Jakarta Perbulan'),
(2, '4,6-5 Juta Perbulan'),
(3, '5-7 Juta Perbulan'),
(4, '7-10 Juta Perbulan'),
(5, 'Diatas 10 Juta Perbulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_pendidikan`
--

CREATE TABLE `tab_pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_pendidikan`
--

INSERT INTO `tab_pendidikan` (`id`, `pendidikan`) VALUES
(1, 'Tidak'),
(2, 'SD'),
(3, 'SMP'),
(4, 'SMA'),
(5, 'D-1'),
(6, 'D-3'),
(7, 'S-1/D'),
(8, 'S-2'),
(9, 'S-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_penduduk`
--

CREATE TABLE `tab_penduduk` (
  `nik` varchar(30) NOT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `pendapatan` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kelurahan` int(11) DEFAULT NULL,
  `penduduk_asli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_penduduk`
--

INSERT INTO `tab_penduduk` (`nik`, `no_kk`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pendidikan`, `pendapatan`, `Agama`, `alamat_lengkap`, `kelurahan`, `penduduk_asli`) VALUES
('1234432112344321', '5678876556788765', 'Dea Zerlinda', 'Jakarta', '1996-12-12', 'Wanita', '4', 2, 1, 'Asrama Yon', 1, 'Ya'),
('21328739871293', '18273981723321', 'kura kura', 'jambi', '1986-02-21', 'Pria', '4', 1, 1, 'Jl tipar', 1, 'Ya'),
('2768731623769871', '1726387162376231', 'juyaa', 'jajajaaa', '2000-02-21', 'Pria', '4', 3, 1, 'jkakjsakjsdsa', 3, 'Ya'),
('31238098120938', '21721123123123', 'JAYA RAMA', 'Jakarta', '1985-01-21', 'Pria', '5', 1, 1, 'Jl terusan 1', 5, 'Ya'),
('61239761987236876', '766786876876876', 'jaka', 'gksdksajkdkasdj', '1987-12-05', 'Wanita', '2', 1, 0, 'jajajajjaja', 1, 'Tidak'),
('6172868112', '8712987321', 'Dea Zerlinda', 'Jakarta', '0000-00-00', 'Wanita', '4', 2, 1, 'Asrama Yon', 1, 'Ya'),
('7,61987E+12', '7187231289', 'hafidz', 'kampung durian', '0000-00-00', 'Wanita', '5', 1, 1, 'jl sepi', 2, 'ya'),
('7,69814E+14', '183278937', 'rara', 'Jakarta', '0000-00-00', 'wanita', '4', 1, 1, 'jl buaran', 2, 'ya'),
('7,98128E+13', '987129387', 'yukaa', 'Jakarta', '0000-00-00', 'Wanita', '2', 1, 1, 'jl klender', 1, 'ya'),
('7982173982173', '217987213987', 'kura kura', 'jambi', '0000-00-00', 'Pria', '4', 1, 1, 'Jl tipar', 1, 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(1, 'admin', 'admin', '2023-01-30 08:57:18', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_penduduk`
--
ALTER TABLE `tab_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
