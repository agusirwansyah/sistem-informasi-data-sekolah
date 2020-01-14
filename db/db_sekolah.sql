-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 10. Januari 2020 jam 13:23
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akuntansi`
--

CREATE TABLE IF NOT EXISTS `tbl_akuntansi` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_akuntansi`
--

INSERT INTO `tbl_akuntansi` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2000, 300, 300, 600);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE IF NOT EXISTS `tbl_guru` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `nik` int(12) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`no`, `nik`, `nama_lengkap`, `alamat`, `email`, `mapel`) VALUES
(1, 16220427, 'Rahmat', 'Simpang 3 Lemang', 'rahmatkocil99@gmail.com', 'komputer'),
(2, 16220403, 'Dwi Ramadhani', 'Air Joman', 'dwird140@gmail.com', 'Bahasa Inggris'),
(3, 16220400, 'Agus Irwansyah', 'Gambir Baru', 'agusirwansyah@gmail.com', 'Matimatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemasaran`
--

CREATE TABLE IF NOT EXISTS `tbl_pemasaran` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_pemasaran`
--

INSERT INTO `tbl_pemasaran` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2000, 200, 200, 400);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perhotelan`
--

CREATE TABLE IF NOT EXISTS `tbl_perhotelan` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_perhotelan`
--

INSERT INTO `tbl_perhotelan` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2000, 200, 200, 400);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perkantoran`
--

CREATE TABLE IF NOT EXISTS `tbl_perkantoran` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_perkantoran`
--

INSERT INTO `tbl_perkantoran` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2000, 800, 100, 900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_struktur`
--

CREATE TABLE IF NOT EXISTS `tbl_struktur` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `nik` int(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_struktur`
--

INSERT INTO `tbl_struktur` (`no`, `nik`, `nama`, `tanggal_masuk`, `jabatan`) VALUES
(1, 16220403, 'Dwi Ramadhani', '2019-12-31', 'Kepala Sekolah'),
(4, 162204333, 'Agus Irwansyah', '2019-08-28', 'Wakil Kepala Sekolah'),
(5, 16220427, 'Rahmat', '2018-11-27', 'Ketua Jurusan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tataboga`
--

CREATE TABLE IF NOT EXISTS `tbl_tataboga` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `tahun` int(10) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_tataboga`
--

INSERT INTO `tbl_tataboga` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2001, 400, 300, 700);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tatabusana`
--

CREATE TABLE IF NOT EXISTS `tbl_tatabusana` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `tahun` int(10) NOT NULL,
  `laki_laki` int(10) NOT NULL,
  `perempuan` int(10) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_tatabusana`
--

INSERT INTO `tbl_tatabusana` (`no`, `tahun`, `laki_laki`, `perempuan`, `jumlah_siswa`) VALUES
(1, 2000, 300, 400, 700);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `nama_lengkap`, `email`, `level`, `keterangan`) VALUES
('dwi', '25d55ad283aa400af464c76d713c07ad', 'Dwi Ramadhani', 'dwird140@gmail.com', 1, 'Administrator'),
('rahmat', '25d55ad283aa400af464c76d713c07ad', 'Rahmat', 'rahmatkocil99@gmail.com', 2, 'Guru');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
