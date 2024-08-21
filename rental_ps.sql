-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2024 pada 09.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_ps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(5) NOT NULL,
  `jenis_ps` varchar(20) NOT NULL,
  `durasi` int(2) NOT NULL,
  `no_meja` varchar(8) NOT NULL,
  `jam_masuk` varchar(6) NOT NULL,
  `jam_keluar` varchar(6) NOT NULL,
  `total_tagihan` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `jenis_ps`, `durasi`, `no_meja`, `jam_masuk`, `jam_keluar`, `total_tagihan`) VALUES
(12001, 'PlayStation 4', 2, 'Meja 5', '07:55', '09:55', 30000),
(12002, 'PlayStation 5', 2, 'Meja 4', '11:16', '13:16', 40000),
(12003, 'PlayStation 5', 3, 'Meja 1', '13:46', '16:46', 60000),
(12004, 'PlayStation 2', 3, 'Meja 4', '15:59', '18:59', 30000),
(12005, 'PlayStation 4', 3, 'Meja 2', '18:44', '21:44', 45000),
(12006, 'PlayStation 4', 2, 'Meja 4', '21:16', '23:16', 30000),
(12007, 'PlayStation 5', 2, 'Meja 6', '21:18', '23:18', 40000),
(12008, 'PlayStation 4', 2, 'Meja 4', '14:26', '16:26', 30000),
(12009, 'PlayStation 4', 2, 'Meja 5', '14:27', '16:27', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_pegawai`, `username`, `password`) VALUES
(10001, 'Super Admin 1', 'superadmin', 'abc5dasar'),
(10002, 'Syifa Putri Andini', 'syifa13', 'syalala123'),
(10004, 'Jaemin', 'jaejae', 'abcdefgh');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12010;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
