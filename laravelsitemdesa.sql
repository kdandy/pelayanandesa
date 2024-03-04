-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Feb 2023 pada 10.30
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
-- Database: `laravelsitemdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2023-02-17 09:27:14', '2023-02-17 09:27:14'),
(2, 'Kristen', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(3, 'Katholik', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(4, 'Hindu', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(5, 'Budha', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(6, 'Khonghucu', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(7, 'Lainnya', '2023-02-17 09:27:15', '2023-02-17 09:27:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran_realisasi`
--

CREATE TABLE `anggaran_realisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `detail_jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan_lainnya` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai_anggaran` bigint(20) NOT NULL,
  `nilai_realisasi` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dilihat` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cetak_surat`
--

CREATE TABLE `cetak_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `nomor` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arsip` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `darah`
--

CREATE TABLE `darah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `golongan` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `darah`
--

INSERT INTO `darah` (`id`, `golongan`, `created_at`, `updated_at`) VALUES
(1, 'A', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(2, 'A+', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(3, 'A-', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(4, 'B', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(5, 'B+', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(6, 'B-', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(7, 'O', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(8, 'O+', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(9, 'O-', '2023-02-17 09:27:15', '2023-02-17 09:27:15'),
(10, 'AB', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(11, 'AB+', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(12, 'AB-', '2023-02-17 09:27:16', '2023-02-17 09:27:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kecamatan` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kabupaten` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kepala_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id`, `nama_desa`, `nama_kecamatan`, `nama_kabupaten`, `alamat`, `nama_kepala_desa`, `alamat_kepala_desa`, `logo`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'Orobatu', 'Tapalang', 'Mamuju', 'Tapalang', 'Maslim, S.Sos', 'Alamat', 'favicon.png', NULL, '2023-02-17 09:27:14', '2023-02-17 09:27:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_cetak`
--

CREATE TABLE `detail_cetak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cetak_surat_id` bigint(20) UNSIGNED NOT NULL,
  `isian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_dusun`
--

CREATE TABLE `detail_dusun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dusun_id` bigint(20) UNSIGNED NOT NULL,
  `rw` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jenis_anggaran`
--

CREATE TABLE `detail_jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok_jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_jenis_anggaran`
--

INSERT INTO `detail_jenis_anggaran` (`id`, `jenis_anggaran_id`, `kelompok_jenis_anggaran_id`, `nama`, `created_at`, `updated_at`) VALUES
(411, 4, 41, 'Hasil Usaha Desa', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(412, 4, 41, 'Hasil Aset Desa', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(413, 4, 41, 'Swadaya, Partisipasi dan Gotong Royong', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(414, 4, 41, 'Lain-Lain Pendapatan Asli Desa', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(421, 4, 42, 'Dana Desa', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(422, 4, 42, 'Bagi Hasil Pajak dan Retribusi', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(423, 4, 42, 'Alokasi Dana Desa', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(424, 4, 42, 'Bantuan Keuangan Provinsi', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(425, 4, 42, 'Bantuan Keuangan Kabupaten/Kota', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(431, 4, 43, 'Penerimaan dari Hasil Kerjasama Antar Desa', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(432, 4, 43, 'Penerimaan dari Hasil Kerjasama dengan Pihak Ketiga', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(433, 4, 43, 'Penerimaan Bantuan dari Perusahaan yang Berlokasi di Desa', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(434, 4, 43, 'Hibah dan Sumbangan dari Pihak Ketiga', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(435, 4, 43, 'Koreksi Kesalahan Belanja Tahun-tahun Sebelumnya', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(436, 4, 43, 'Bunga Bank', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(439, 4, 43, 'Lain-lain Pendapatan Desa Yang Sah', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(511, 5, 51, NULL, '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(521, 5, 52, NULL, '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(531, 5, 53, NULL, '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(541, 5, 54, NULL, '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(551, 5, 55, NULL, '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(611, 6, 61, 'SILPA Tahun Sebelumnya', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(612, 6, 61, 'Pencairan Dana Cadangan', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(613, 6, 61, 'Hasil Penjualan Kekayaan Desa Yang Dipisahkan', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(619, 6, 61, 'Penerimaan Pembiayaan Lainnya', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(621, 6, 62, 'Pembentukan Dana Cadangan', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(622, 6, 62, 'Penyertaan Modal Desa', '2023-02-17 09:27:27', '2023-02-17 09:27:27'),
(629, 6, 62, 'Pengeluaran Pembiayaan Lainnya', '2023-02-17 09:27:27', '2023-02-17 09:27:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'tampomea', NULL, NULL),
(2, 'orobatu', NULL, NULL),
(3, 'tamppouhai', NULL, NULL),
(4, 'bolomalala', NULL, NULL),
(5, 'bone-bone', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_surat`
--

CREATE TABLE `isi_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_isi` tinyint(4) NOT NULL,
  `tampilkan` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_anggaran`
--

CREATE TABLE `jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_anggaran`
--

INSERT INTO `jenis_anggaran` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(4, 'PENDAPATAN', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(5, 'BELANJA', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(6, 'PEMBIAYAAN', '2023-02-17 09:27:25', '2023-02-17 09:27:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_jenis_anggaran`
--

CREATE TABLE `kelompok_jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelompok_jenis_anggaran`
--

INSERT INTO `kelompok_jenis_anggaran` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(41, 'Pendapatan Asli Desa', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(42, 'Pendapatan transfer', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(43, 'Pendapatan Lain-lain', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(51, 'BIDANG PENYELENGGARAN PEMERINTAHAN DESA', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(52, 'BIDANG PELAKSANAAN PEMBANGUNAN DESA', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(53, 'BIDANG PEMBINAAN KEMASYARAKATAN', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(54, 'BIDANG PEMBERDAYAAN MASYARAKAT', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(55, 'BIDANG PENANGGULANGAN BENCANA, DARURAT DAN MENDESAK DESA', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(61, 'Penerimaan Biaya', '2023-02-17 09:27:26', '2023-02-17 09:27:26'),
(62, 'Pengeluaran Biaya', '2023-02-17 09:27:26', '2023-02-17 09:27:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_07_04_014808_create_surat_table', 1),
(3, '2020_07_04_015036_create_isi_surat_table', 1),
(4, '2020_07_04_084248_create_galleries_table', 1),
(5, '2020_07_08_170039_create_desa_table', 1),
(6, '2020_07_27_191902_create_sejarah_table', 1),
(7, '2020_07_30_140019_add_slider_to_galleries_table', 1),
(8, '2020_07_31_052632_add_channel_id_to_desa_table', 1),
(9, '2020_07_31_071706_create_videos_table', 1),
(10, '2020_08_03_125251_create_cetak_surat_table', 1),
(11, '2020_08_03_125449_create_detail_cetak_table', 1),
(12, '2020_08_07_064958_create_berita_table', 1),
(13, '2020_08_08_115504_add_nomor_to_cetak_surat_table', 1),
(14, '2020_09_23_141157_edit_table_isi_surat', 1),
(15, '2020_09_25_091559_create_status_hubungan_dalam_keluarga_table', 1),
(16, '2020_09_25_092606_create_status_perkawinan_table', 1),
(17, '2020_09_25_093740_create_darah_table', 1),
(18, '2020_09_25_095035_create_agama_table', 1),
(19, '2020_09_25_095908_create_pekerjaan_table', 1),
(20, '2020_09_25_100158_create_pendidikan_table', 1),
(21, '2020_09_25_100710_create_dusun_table', 1),
(22, '2020_09_25_102449_create_detail_dusun_table', 1),
(23, '2020_09_25_103214_create_penduduk_table', 1),
(24, '2020_09_29_182914_edit_penduduk_table', 1),
(25, '2020_10_05_192930_edit_surat_table', 1),
(26, '2020_10_05_205436_drop_column_api_key', 1),
(27, '2020_10_06_141802_create_jenis_anggaran_table', 1),
(28, '2020_10_06_152043_create_kelompok_jenis_anggaran_table', 1),
(29, '2020_10_06_155051_create_detail_jenis_anggaran_table', 1),
(30, '2020_10_06_161839_create_anggaran_realisasi_table', 1),
(31, '2020_10_13_130955_edit_sejarah_berita', 1),
(32, '2021_08_23_134224_add_arsip_cetak_surat', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'BELUM/TIDAK BEKERJA', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(2, 'MENGURUS RUMAH TANGGA', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(3, 'PELAJAR/MAHASISWA', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(4, 'PENSIUNAN', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(6, 'TENTARA NASIONAL INDONESIA (TNI)', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(7, 'KEPOLISIAN RI (POLRI)', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(8, 'PERDAGANGAN', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(9, 'PETANI/PEKEBUN', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(10, 'PETERNAK', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(11, 'NELAYAN/PERIKANAN', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(12, 'INDUSTRI', '2023-02-17 09:27:16', '2023-02-17 09:27:16'),
(13, 'KONSTRUKSI', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(14, 'TRANSPORTASI', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(15, 'KARYAWAN SWASTA', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(16, 'KARYAWAN BUMN', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(17, 'KARYAWAN BUMD', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(18, 'KARYAWAN HONORER', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(19, 'BURUH HARIAN LEPAS', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(20, 'BURUH TANI/PERKEBUNAN', '2023-02-17 09:27:17', '2023-02-17 09:27:17'),
(21, 'BURUH NELAYAN/PERIKANAN', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(22, 'BURUH PETERNAKAN', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(23, 'PEMBANTU RUMAH TANGGA', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(24, 'TUKANG CUKUR', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(25, 'TUKANG LISTRIK', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(26, 'TUKANG BATU', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(27, 'TUKANG KAYU', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(28, 'TUKANG SOL SEPATU', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(29, 'TUKANG LAS/PANDAI BESI', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(30, 'TUKANG JAHIT', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(31, 'TUKANG GIGI', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(32, 'PENATA RIAS', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(33, 'PENATA BUSANA', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(34, 'PENATA RAMBUT', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(35, 'MEKANIK', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(36, 'SENIMAN', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(37, 'TABIB', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(38, 'PARAJI', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(39, 'PERANCANG BUSANA', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(40, 'PENTERJEMAH', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(41, 'IMAM MASJID', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(42, 'PENDETA', '2023-02-17 09:27:18', '2023-02-17 09:27:18'),
(43, 'PASTOR', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(44, 'WARTAWAN', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(45, 'USTADZ/MUBALIGH', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(46, 'JURU MASAK', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(47, 'PROMOTOR ACARA', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(48, 'ANGGOTA DPR-RI', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(49, 'ANGGOTA DPD', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(50, 'ANGGOTA KPK', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(51, 'PRESIDEN', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(52, 'WAKIL PRESIDEN', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(54, 'ANGGOTA KABINET KEMENTERIAN', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(55, 'DUTA BESAR', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(56, 'GUBERNUR', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(57, 'WAKIL GUBERNUR', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(58, 'BUPATI', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(59, 'WAKIL BUPATI', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(60, 'WALIKOTA', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(61, 'WAKIL WALIKOTA', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(62, 'ANGGOTA DPRD PROVINSI', '2023-02-17 09:27:19', '2023-02-17 09:27:19'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(64, 'DOSEN', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(65, 'GURU', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(66, 'PILOT', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(67, 'PENGACARA', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(68, 'NOTARIS', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(69, 'ARSITEK', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(70, 'AKUNTAN', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(71, 'KONSULTAN', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(72, 'DOKTER', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(73, 'BIDAN', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(74, 'PERAWAT', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(75, 'APOTEKER', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(76, 'PSIKIATER/PSIKOLOG', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(77, 'PENYIAR TELEVISI', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(78, 'PENYIAR RADIO', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(79, 'PELAUT', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(80, 'PENELITI', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(81, 'SOPIR', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(82, 'PIALANG', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(83, 'PARANORMAL', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(84, 'PEDAGANG', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(85, 'PERANGKAT DESA', '2023-02-17 09:27:20', '2023-02-17 09:27:20'),
(86, 'KEPALA DESA', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(87, 'BIARAWATI', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(88, 'WIRASWASTA', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(89, 'LAINNYA', '2023-02-17 09:27:21', '2023-02-17 09:27:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintahan_desa`
--

CREATE TABLE `pemerintahan_desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dilihat` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'TIDAK / BELUM SEKOLAH', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(2, 'BELUM TAMAT SD/SEDERAJAT', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(3, 'TAMAT SD / SEDERAJAT', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(4, 'SLTP/SEDERAJAT', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(5, 'SLTA / SEDERAJAT', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(6, 'DIPLOMA I / II', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(7, 'AKADEMI/ DIPLOMA III/S. MUDA', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(8, 'DIPLOMA IV/ STRATA I', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(9, 'STRATA II', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(10, 'STRATA III', '2023-02-17 09:27:21', '2023-02-17 09:27:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL COMMENT '1: Laki-laki, 2: Perempuan',
  `tempat_lahir` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama_id` bigint(20) UNSIGNED NOT NULL,
  `pendidikan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pekerjaan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `darah_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_perkawinan_id` bigint(20) UNSIGNED NOT NULL,
  `status_hubungan_dalam_keluarga_id` bigint(20) UNSIGNED NOT NULL,
  `kewarganegaraan` tinyint(4) NOT NULL,
  `nomor_paspor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_kitas_atau_kitap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ayah` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ibu` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_dusun_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_hubungan_dalam_keluarga`
--

CREATE TABLE `status_hubungan_dalam_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_hubungan_dalam_keluarga`
--

INSERT INTO `status_hubungan_dalam_keluarga` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'KEPALA KELUARGA', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(2, 'SUAMI', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(3, 'ISTRI', '2023-02-17 09:27:21', '2023-02-17 09:27:21'),
(4, 'ANAK', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(5, 'MENANTU', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(6, 'CUCU', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(7, 'ORANGTUA', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(8, 'MERTUA', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(9, 'FAMILI', '2023-02-17 09:27:22', '2023-02-17 09:27:22'),
(10, 'PEMBANTU', '2023-02-17 09:27:24', '2023-02-17 09:27:24'),
(11, 'LAINNYA', '2023-02-17 09:27:24', '2023-02-17 09:27:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_perkawinan`
--

CREATE TABLE `status_perkawinan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_perkawinan`
--

INSERT INTO `status_perkawinan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Belum Kawin', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(2, 'Kawin', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(3, 'Cerai Hidup', '2023-02-17 09:27:25', '2023-02-17 09:27:25'),
(4, 'Cerai Mati', '2023-02-17 09:27:25', '2023-02-17 09:27:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanda_tangan_bersangkutan` tinyint(1) NOT NULL DEFAULT 0,
  `perihal` tinyint(1) NOT NULL DEFAULT 0,
  `data_kades` tinyint(1) NOT NULL DEFAULT 0,
  `tampilkan` tinyint(1) NOT NULL DEFAULT 0,
  `persyaratan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profil` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noavatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `foto_profil`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'noavatar.png', '2023-02-17 09:27:14', '$2y$10$ZvTEaayf5h9ReMwWckW3n.h52QCI.ThVKyX0x5w2HpD/ZoxYi4Cx2', NULL, '2023-02-17 09:27:14', '2023-02-17 09:27:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggaran_realisasi_detail_jenis_anggaran_id_foreign` (`detail_jenis_anggaran_id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cetak_surat_surat_id_foreign` (`surat_id`);

--
-- Indeks untuk tabel `darah`
--
ALTER TABLE `darah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_cetak_cetak_surat_id_foreign` (`cetak_surat_id`);

--
-- Indeks untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_dusun_dusun_id_foreign` (`dusun_id`);

--
-- Indeks untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_jenis_anggaran_jenis_anggaran_id_foreign` (`jenis_anggaran_id`),
  ADD KEY `detail_jenis_anggaran_kelompok_jenis_anggaran_id_foreign` (`kelompok_jenis_anggaran_id`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isi_surat_surat_id_foreign` (`surat_id`);

--
-- Indeks untuk tabel `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_anggaran_nama_unique` (`nama`);

--
-- Indeks untuk tabel `kelompok_jenis_anggaran`
--
ALTER TABLE `kelompok_jenis_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemerintahan_desa`
--
ALTER TABLE `pemerintahan_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduk_nik_unique` (`nik`),
  ADD KEY `penduduk_agama_id_foreign` (`agama_id`),
  ADD KEY `penduduk_pendidikan_id_foreign` (`pendidikan_id`),
  ADD KEY `penduduk_pekerjaan_id_foreign` (`pekerjaan_id`),
  ADD KEY `penduduk_darah_id_foreign` (`darah_id`),
  ADD KEY `penduduk_status_perkawinan_id_foreign` (`status_perkawinan_id`),
  ADD KEY `penduduk_status_hubungan_dalam_keluarga_id_foreign` (`status_hubungan_dalam_keluarga_id`),
  ADD KEY `penduduk_detail_dusun_id_foreign` (`detail_dusun_id`);

--
-- Indeks untuk tabel `status_hubungan_dalam_keluarga`
--
ALTER TABLE `status_hubungan_dalam_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `darah`
--
ALTER TABLE `darah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT untuk tabel `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelompok_jenis_anggaran`
--
ALTER TABLE `kelompok_jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `pemerintahan_desa`
--
ALTER TABLE `pemerintahan_desa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_hubungan_dalam_keluarga`
--
ALTER TABLE `status_hubungan_dalam_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  ADD CONSTRAINT `anggaran_realisasi_detail_jenis_anggaran_id_foreign` FOREIGN KEY (`detail_jenis_anggaran_id`) REFERENCES `detail_jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  ADD CONSTRAINT `cetak_surat_surat_id_foreign` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  ADD CONSTRAINT `detail_cetak_cetak_surat_id_foreign` FOREIGN KEY (`cetak_surat_id`) REFERENCES `cetak_surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  ADD CONSTRAINT `detail_dusun_dusun_id_foreign` FOREIGN KEY (`dusun_id`) REFERENCES `dusun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  ADD CONSTRAINT `detail_jenis_anggaran_jenis_anggaran_id_foreign` FOREIGN KEY (`jenis_anggaran_id`) REFERENCES `jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_jenis_anggaran_kelompok_jenis_anggaran_id_foreign` FOREIGN KEY (`kelompok_jenis_anggaran_id`) REFERENCES `kelompok_jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD CONSTRAINT `isi_surat_surat_id_foreign` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_agama_id_foreign` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_darah_id_foreign` FOREIGN KEY (`darah_id`) REFERENCES `darah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_detail_dusun_id_foreign` FOREIGN KEY (`detail_dusun_id`) REFERENCES `detail_dusun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_pendidikan_id_foreign` FOREIGN KEY (`pendidikan_id`) REFERENCES `pendidikan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_status_hubungan_dalam_keluarga_id_foreign` FOREIGN KEY (`status_hubungan_dalam_keluarga_id`) REFERENCES `status_hubungan_dalam_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_status_perkawinan_id_foreign` FOREIGN KEY (`status_perkawinan_id`) REFERENCES `status_perkawinan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
