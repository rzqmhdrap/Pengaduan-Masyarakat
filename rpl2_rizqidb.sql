-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2021 pada 00.56
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl2_rizqidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id` bigint(20) NOT NULL,
  `nik` char(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id`, `nik`, `nama`, `username`, `password`, `telp`) VALUES
(16, '1234567890987651', 'rasya julian', 'rasya', '80f2d6c021e38342f037fee27bbf0d891426912a', '0826137213'),
(17, '1234567890987655', 'budi suratno', 'budi', '83161a62f22277c65a6cdb7ebc314f218c376c63', '0861253213'),
(18, '1234567890987657', 'rizqi pratama ', 'rizqi', '51ca54a79b70eab3e6eec14eb98a4ee231b44463', '0872612213');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id` bigint(20) NOT NULL,
  `tgl` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('ditanggapi','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id`, `tgl`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(25, '2021-02-01', '1234567890987651', 'terjadi longsor', 'Untitledr1.png', 'selesai'),
(26, '2021-02-01', '1234567890987651', 'terjadi banjir', 'rasya.png', 'ditanggapi'),
(27, '2021-02-02', '1234567890987651', 'terjadi banjir', 'rasya_julian_m__.png', 'selesai'),
(28, '2021-02-02', '1234567890987651', 'terjadi kemacetan di jalan mawar', 'Rasya_julian_mahendra.png', 'proses'),
(29, '2021-02-03', '1234567890987655', 'terjadi banjir bandang', 'banjir.jpg', 'proses'),
(30, '2021-02-03', '1234567890987657', 'banjir', 'banjir1.jpg', 'ditanggapi'),
(31, '2021-02-04', '1234567890987651', 'terjadi kebakaran', 'rasya_julian_m__1.png', 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` bigint(20) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(14, 'Petugas', 'petugas', '670489f94b6997a870b148f74744ee5676304925', '087741130522', 'petugas'),
(16, 'rizqi mahendra', 'rizqi', 'd033e22ae348aeb5660fc2140aec35850c4da997', '081398833913', 'admin'),
(17, 'mahendra pratama', 'rizqiadmin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '081398833838', 'admin'),
(19, 'adit sudrajat', 'adit', '2e445949d370543ad32c166c38b1278d67316509', '0823463232', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id` bigint(20) NOT NULL,
  `id_pengaduan` bigint(20) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tanggapan`
--

INSERT INTO `tb_tanggapan` (`id`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(5, 7, '2020-05-01', 'kami akan segera menyelesaikan nya\r\n', 2),
(7, 11, '2021-01-08', 'ok', 2),
(8, 12, '2021-01-09', 'terimakasih', 13),
(9, 13, '2021-01-09', 'Baik terimakasih atas laporannya akan segara kami lakukan tindakan dan bantuan kelokasi', 13),
(17, 22, '2021-02-01', 'oke meluncur', 14),
(18, 25, '2021-02-01', 'oh iya bentar otw', 14),
(19, 26, '2021-02-01', 'okee', 14),
(20, 27, '2021-02-04', 'okeee', 17),
(21, 30, '2021-02-04', 'siap', 19);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
