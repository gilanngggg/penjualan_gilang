-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2025 pada 13.41
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
-- Database: `penjualan_gilang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(20) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nama_barang`, `jenis`, `harga_beli`, `harga_jual`) VALUES
('1', 'ale-ale', 'Minuman', 1500, 3000),
('2', 'mie', 'Makanan', 1500, 3000),
('3', 'pop mie', 'Makanan', 3000, 6000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(6) NOT NULL,
  `kd_brg` varchar(6) NOT NULL,
  `harga_b` int(11) NOT NULL,
  `harga_j` bigint(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_brg`, `harga_b`, `harga_j`, `qty`) VALUES
('IN0001', '3', 3000, 6000, 3),
('IN0002', '3', 3000, 6000, 3),
('IN0003', '3', 3000, 6000, 3),
('IN0004', '3', 3000, 6000, 3),
('IN0005', '2', 1500, 3000, 3),
('IN0006', '2', 1500, 3000, 3),
('IN0007', '1', 1500, 3000, 3),
('IN0008', '2', 1500, 3000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nama_kasir` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis`, `telepon`, `agama`, `alamat`, `password`) VALUES
('ID01', 'Gilang', 'Laki-Laki', '015454', 'islam	', 'bekasi', '1234'),
('ID02', 'Alfiansyah', 'Laki-Laki', '324142', 'islam	', 'Jakarta', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_plgn` varchar(6) NOT NULL,
  `id_kasir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id_plgn`, `id_kasir`) VALUES
('IN0001', '2025-05-24', '3', 'ID01'),
('IN0002', '2025-05-24', '3', 'ID01'),
('IN0003', '2025-05-24', '3', 'ID01'),
('IN0004', '2025-05-24', '3', 'ID01'),
('IN0005', '2025-05-24', '2', 'ID01'),
('IN0006', '2025-05-24', '1', 'ID01'),
('IN0007', '2025-05-24', '3', 'ID01'),
('IN0008', '2025-05-24', '1', 'ID01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_plgn` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_plgn`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('1', 'Gilang', 'Laki-Laki', '8263826', 'Bekasi'),
('2', 'Jibar', 'Laki-Laki', '2873827', 'Jakarta'),
('3', 'Haycel haza', 'Laki-Laki', '2873872', 'Bogor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_plgn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
