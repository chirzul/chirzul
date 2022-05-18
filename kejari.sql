-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2022 pada 17.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kejari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '$2y$10$wAHaNKtr8mhhGOMjW8pmXOXzdVy5F8zvsQCIXv6Qtx.cBYL0CzoJS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) UNSIGNED NOT NULL,
  `nama_agenda` varchar(100) NOT NULL,
  `tanggal_agenda` date NOT NULL,
  `teks_agenda` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_foto`
--

CREATE TABLE `arsip_foto` (
  `id_arsip_foto` int(11) UNSIGNED NOT NULL,
  `nama_arsip_foto` varchar(100) NOT NULL,
  `tanggal_arsip_foto` date DEFAULT NULL,
  `img_arsip_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) UNSIGNED NOT NULL,
  `nama_banner` varchar(100) NOT NULL,
  `url_banner` varchar(100) NOT NULL,
  `img_banner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) UNSIGNED NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `teks_berita` mediumtext NOT NULL,
  `tanggal` date NOT NULL,
  `img_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(11) UNSIGNED NOT NULL,
  `nama_pengurus` varchar(255) NOT NULL,
  `jabatan_pengurus` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `teks_bidang` mediumtext DEFAULT NULL,
  `image_pengurus` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buron`
--

CREATE TABLE `buron` (
  `id_buron` int(11) UNSIGNED NOT NULL,
  `nama_buron` varchar(255) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat_buron` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) UNSIGNED NOT NULL,
  `nama_carousel` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `icon`
--

CREATE TABLE `icon` (
  `id_icon` int(11) UNSIGNED NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `img_icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `icon`
--

INSERT INTO `icon` (`id_icon`, `keterangan`, `img_icon`) VALUES
(1, 'informasi', 'coba.jpg'),
(2, 'beranda', 'contoh.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus`
--

CREATE TABLE `kasus` (
  `id_kasus` int(11) UNSIGNED NOT NULL,
  `nama_terdakwa` varchar(255) NOT NULL,
  `no_perkara` varchar(255) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `nama_jaksa` varchar(255) NOT NULL,
  `nama_hakim` varchar(255) NOT NULL,
  `panitia_pengganti` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Barang Bukti'),
(2, 'DATUN'),
(3, 'Intelejen'),
(4, 'Pembinaan'),
(5, 'PIDUM'),
(6, 'PIDSUS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_peraturan`
--

CREATE TABLE `kategori_peraturan` (
  `id_kategori_peraturan` int(11) UNSIGNED NOT NULL,
  `nama_kategori_peraturan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori_peraturan`
--

INSERT INTO `kategori_peraturan` (`id_kategori_peraturan`, `nama_kategori_peraturan`) VALUES
(1, 'Instruksi Jaksa Agung'),
(2, 'Instruksi Presiden'),
(3, 'Keputusan Jaksa Agung'),
(4, 'Keputusan Menteri'),
(5, 'Keputusan Presiden'),
(6, 'Peraturan Lainnya'),
(7, 'Peraturan Pemerintah'),
(8, 'Undang-Undang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_profil`
--

CREATE TABLE `kategori_profil` (
  `id_kategori_profil` int(11) UNSIGNED NOT NULL,
  `nama_kategori_profil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori_profil`
--

INSERT INTO `kategori_profil` (`id_kategori_profil`, `nama_kategori_profil`) VALUES
(1, 'Sambutan Kejari Purwokerto'),
(2, 'Doktrin Adhyaksa'),
(3, 'Profil IAD'),
(4, 'Kegiatan IAD Purwokerto'),
(5, 'Perintah Harian Jaksa Agung RI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_sarana`
--

CREATE TABLE `kategori_sarana` (
  `id_kategori_sarana` int(11) UNSIGNED NOT NULL,
  `nama_kategori_sarana` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori_sarana`
--

INSERT INTO `kategori_sarana` (`id_kategori_sarana`, `nama_kategori_sarana`) VALUES
(1, 'Kantin Adhyaksa'),
(2, 'Pos Pelayanan Hukum'),
(3, 'Klinik Kesehatan'),
(4, 'Perpustakaan'),
(5, 'Ruang Rapat'),
(6, 'Wayan Adhayaksa'),
(7, 'Gedung Barang Bukti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_kejaksaan`
--

CREATE TABLE `kepala_kejaksaan` (
  `id_kepala_kejaksaan` int(11) UNSIGNED NOT NULL,
  `nama_kepala_kejaksaan` varchar(100) NOT NULL,
  `img_kepala_kejaksaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-11-055113', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1649657664, 1),
(6, '2022-04-11-160851', 'App\\Database\\Migrations\\Kasus', 'default', 'App', 1649779188, 2),
(9, '2022-04-12-171528', 'App\\Database\\Migrations\\Buron', 'default', 'App', 1649784181, 3),
(15, '2022-04-13-172053', 'App\\Database\\Migrations\\Bidang', 'default', 'App', 1649912963, 4),
(16, '2022-04-14-043519', 'App\\Database\\Migrations\\Kategori', 'default', 'App', 1649912963, 4),
(18, '2022-04-14-150600', 'App\\Database\\Migrations\\Navbar', 'default', 'App', 1649948862, 5),
(19, '2022-04-14-195137', 'App\\Database\\Migrations\\Icon', 'default', 'App', 1649965985, 6),
(20, '2022-04-15-050440', 'App\\Database\\Migrations\\Carousel', 'default', 'App', 1649999155, 7),
(21, '2022-04-15-070904', 'App\\Database\\Migrations\\VisiMisi', 'default', 'App', 1650006623, 8),
(22, '2022-04-16-151939', 'App\\Database\\Migrations\\Agenda', 'default', 'App', 1650123095, 9),
(23, '2022-04-13-192117', 'App\\Database\\Migrations\\Berita', 'default', 'App', 1650166489, 10),
(24, '2022-04-17-172612', 'App\\Database\\Migrations\\Pelayanan', 'default', 'App', 1650216542, 11),
(25, '2022-04-18-172128', 'App\\Database\\Migrations\\Arsip_foto', 'default', 'App', 1650302714, 12),
(26, '2022-04-20-073647', 'App\\Database\\Migrations\\Banner', 'default', 'App', 1650440436, 13),
(27, '2022-04-20-080949', 'App\\Database\\Migrations\\Struktur', 'default', 'App', 1650465673, 14),
(28, '2022-04-21-045615', 'App\\Database\\Migrations\\KategoriProfil', 'default', 'App', 1650517031, 15),
(29, '2022-04-21-051347', 'App\\Database\\Migrations\\Profil', 'default', 'App', 1650518089, 16),
(30, '2022-04-22-064956', 'App\\Database\\Migrations\\Pengumuman', 'default', 'App', 1650610408, 17),
(31, '2022-04-22-111227', 'App\\Database\\Migrations\\kategoriPeraturan', 'default', 'App', 1650625954, 18),
(33, '2022-04-22-111622', 'App\\Database\\Migrations\\Peraturan', 'default', 'App', 1650629107, 19),
(34, '2022-04-24-052919', 'App\\Database\\Migrations\\Video', 'default', 'App', 1650874532, 20),
(35, '2022-04-25-081424', 'App\\Database\\Migrations\\kategoriSarana', 'default', 'App', 1650874532, 20),
(36, '2022-04-25-082235', 'App\\Database\\Migrations\\Sarana', 'default', 'App', 1650875033, 21),
(37, '2022-04-28-023223', 'App\\Database\\Migrations\\fotoKepala', 'default', 'App', 1651113505, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `navbar`
--

CREATE TABLE `navbar` (
  `id_navbar` int(11) UNSIGNED NOT NULL,
  `img_navbar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `navbar`
--

INSERT INTO `navbar` (`id_navbar`, `img_navbar`) VALUES
(1, 'header.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id_pelayanan` int(11) UNSIGNED NOT NULL,
  `nama_pelayanan` varchar(100) NOT NULL,
  `url_pelayanan` varchar(100) NOT NULL,
  `img_pelayanan` varchar(100) NOT NULL,
  `warna_pelayanan` varchar(100) NOT NULL,
  `gradiasi_pelayanan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) UNSIGNED NOT NULL,
  `nama_pengumuman` varchar(255) NOT NULL,
  `teks_pengumuman` mediumtext DEFAULT NULL,
  `tgl_pengumuman` date NOT NULL,
  `file_pengumuman` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturan`
--

CREATE TABLE `peraturan` (
  `id_peraturan` int(11) UNSIGNED NOT NULL,
  `id_kategori_peraturan` int(11) DEFAULT NULL,
  `nama_peraturan` varchar(255) NOT NULL,
  `file_peraturan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) UNSIGNED NOT NULL,
  `id_kategori_profil` int(11) DEFAULT NULL,
  `teks_profil` mediumtext DEFAULT NULL,
  `img_profil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sarana`
--

CREATE TABLE `sarana` (
  `id_sarana` int(11) UNSIGNED NOT NULL,
  `id_kategori_sarana` int(11) DEFAULT NULL,
  `teks_sarana` mediumtext NOT NULL,
  `img_sarana` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `id_struktur` int(11) UNSIGNED NOT NULL,
  `nama_struktur` varchar(100) NOT NULL,
  `img_struktur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) UNSIGNED NOT NULL,
  `judul_video` varchar(100) DEFAULT NULL,
  `url` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id` int(11) UNSIGNED NOT NULL,
  `visi` mediumtext DEFAULT NULL,
  `misi` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `visi_misi`
--

INSERT INTO `visi_misi` (`id`, `visi`, `misi`) VALUES
(1, '<span style=\"color: rgb(86, 86, 86); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\">MEWUJUDKAN KEJAKSAAN SEBAGAI LEMBAGA PENEGAK HUKUM YANG MELAKSANAKAN TUGAS SECARA INDEPENDEN DENGAN MENJUNJUNG TINGGI HAK ASASI MANUSIA DALAM NEGARA HUKUM BERDASARKAN PANCASILA</span><br>', '<ul style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; text-align: justify;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\">MEWUJUDKAN TATA PIKIR, TATA LAKU, DAN TATA KERJA DALAM LEMBAGA.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\">OPTIMALISASI PEMBERANTASAN KKN DAN PENUNTASAN PELANGGARAN HAM.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\">MENYESUAIKAN SISTEM TATA LAKSANA PELAYANAN DAN PENEGAKAN HUKUM DENGAN MENGINGAT NORMA AGAMA, KESUSILAAN, KESOPANAN DENGAN MEMPERHATIKAN RASA KEADILAN DAN NILAI-NILAI KEMANUSIAAN DALAM MASYARAKAT.</span></span></li></ul><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(86, 86, 86); font-size: 15px; font-family: Roboto, sans-serif; line-height: 2; text-align: justify;\"><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\">(sumber : Instruksi Jaksa Agung RI no: INS-002/A/JA/1/2005 tentang&nbsp; Perencanaan Stratejik dan Rencana Kinerja Kejaksaan RI tahun 2005)</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(86, 86, 86); font-size: 15px; font-family: Roboto, sans-serif; line-height: 2; text-align: center;\"><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong style=\"font-weight: bold;\">MOTO KEJAKSAAN NEGERI DENPASAR</strong><br><strong style=\"font-weight: bold;\">\"CATUR BANDANA DHARMA\"</strong></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(86, 86, 86); font-size: 15px; font-family: Roboto, sans-serif; line-height: 2; text-align: justify;\"><br><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\">Artinya 4 (empat) Sifat Pemimpin yang bijaksana dan adil</span></span></p><ol style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; text-align: justify;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong style=\"font-weight: bold;\">Sama</strong>&nbsp;Artinya berlaku sama kepada setiap orang</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong style=\"font-weight: bold;\">Beda</strong>&nbsp;Artinya tidak membeda-bedakan/adil</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong style=\"font-weight: bold;\">Dana</strong>&nbsp;Artinya pemberian yang merata</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong style=\"font-weight: bold;\">Danda</strong>&nbsp;Artinya sanksi (yang salah disalahkan, yang benar dibenarkan)</span></span></li></ol>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `arsip_foto`
--
ALTER TABLE `arsip_foto`
  ADD PRIMARY KEY (`id_arsip_foto`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `buron`
--
ALTER TABLE `buron`
  ADD PRIMARY KEY (`id_buron`);

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indeks untuk tabel `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`id_icon`);

--
-- Indeks untuk tabel `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`id_kasus`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_peraturan`
--
ALTER TABLE `kategori_peraturan`
  ADD PRIMARY KEY (`id_kategori_peraturan`);

--
-- Indeks untuk tabel `kategori_profil`
--
ALTER TABLE `kategori_profil`
  ADD PRIMARY KEY (`id_kategori_profil`);

--
-- Indeks untuk tabel `kategori_sarana`
--
ALTER TABLE `kategori_sarana`
  ADD PRIMARY KEY (`id_kategori_sarana`);

--
-- Indeks untuk tabel `kepala_kejaksaan`
--
ALTER TABLE `kepala_kejaksaan`
  ADD PRIMARY KEY (`id_kepala_kejaksaan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id_navbar`);

--
-- Indeks untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  ADD PRIMARY KEY (`id_peraturan`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `sarana`
--
ALTER TABLE `sarana`
  ADD PRIMARY KEY (`id_sarana`);

--
-- Indeks untuk tabel `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indeks untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `arsip_foto`
--
ALTER TABLE `arsip_foto`
  MODIFY `id_arsip_foto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buron`
--
ALTER TABLE `buron`
  MODIFY `id_buron` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `icon`
--
ALTER TABLE `icon`
  MODIFY `id_icon` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kasus`
--
ALTER TABLE `kasus`
  MODIFY `id_kasus` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_peraturan`
--
ALTER TABLE `kategori_peraturan`
  MODIFY `id_kategori_peraturan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori_profil`
--
ALTER TABLE `kategori_profil`
  MODIFY `id_kategori_profil` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori_sarana`
--
ALTER TABLE `kategori_sarana`
  MODIFY `id_kategori_sarana` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kepala_kejaksaan`
--
ALTER TABLE `kepala_kejaksaan`
  MODIFY `id_kepala_kejaksaan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id_navbar` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id_pelayanan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  MODIFY `id_peraturan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sarana`
--
ALTER TABLE `sarana`
  MODIFY `id_sarana` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
