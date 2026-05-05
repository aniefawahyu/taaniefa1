-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Bulan Mei 2026 pada 17.34
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbaniefa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_keuangan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_keuangan` (
`tanggal` date
,`total_pemasukan` decimal(59,2)
,`total_pengeluaran` decimal(65,2)
,`laba_rugi` decimal(65,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_pemasukan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_pemasukan` (
`kode_pesanan` varchar(10)
,`tanggal` date
,`subtotal` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_pembelian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_pembelian` (
`kode_pembelian` varchar(10)
,`tanggal` date
,`nama_supplier` varchar(100)
,`kode_barang` varchar(10)
,`nama_barang` varchar(100)
,`qty` int(10)
,`harga_barang` int(10)
,`subtotal_barang` int(100)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_pengeluaran`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_pengeluaran` (
`kode_pembelian` varchar(10)
,`tanggal` date
,`subtotal` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_pengiriman`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_pengiriman` (
`kode_pesanan` varchar(10)
,`tanggal` date
,`nama_customer` varchar(100)
,`jenis_pengiriman` varchar(50)
,`provinsi_tujuan` varchar(100)
,`kota_tujuan` varchar(100)
,`kurir` varchar(50)
,`ongkir_pesanan` int(100)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_penjualan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_penjualan` (
`kode_pesanan` varchar(10)
,`tanggal` date
,`nama_customer` varchar(100)
,`kode_barang` varchar(10)
,`nama_barang` varchar(100)
,`qty` int(10)
,`harga_satuan` int(10)
,`subtotal_pesanan` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_presentasi_reject`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_presentasi_reject` (
`tanggal` date
,`kode_barang` varchar(50)
,`nama_barang` varchar(100)
,`total_jual` decimal(32,0)
,`total_retur` decimal(32,2)
,`presentase_reject` decimal(36,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_retur_pembelian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_retur_pembelian` (
`tanggal` date
,`nama_supplier` varchar(100)
,`kode_barang` varchar(50)
,`nama_barang` varchar(100)
,`jumlah_barang` decimal(10,2)
,`harga_diretur` decimal(15,2)
,`alasan_pengembalian` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_retur_penjualan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_retur_penjualan` (
`tanggal` date
,`kode_pesanan` varchar(50)
,`nama_customer` varchar(100)
,`kode_barang` varchar(50)
,`nama_barang` varchar(100)
,`jumlah_barang` decimal(10,2)
,`harga_diretur` decimal(15,2)
,`alasan_pengembalian` varchar(250)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_stok_barang`
--

CREATE TABLE `laporan_stok_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `stok_awal` int(10) NOT NULL,
  `stok_masuk` int(10) NOT NULL,
  `stok_keluar` int(10) NOT NULL,
  `stok_akhir` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_stok_barang`
--

INSERT INTO `laporan_stok_barang` (`id`, `kode_barang`, `nama_barang`, `stok_awal`, `stok_masuk`, `stok_keluar`, `stok_akhir`) VALUES
(44, 'KBR001', 'PALET KAYU KW1', 300, 0, 0, 300),
(45, 'KBR002', 'PALET KAYU KW2', 300, 0, 0, 300),
(46, 'KBR003', 'PALET KAYU KW3', 300, 0, 0, 300),
(47, 'KBR004', 'PALET BESI KW1', 300, 0, 0, 300),
(48, 'KBR005', 'PALET BESI KW2', 300, 0, 0, 300),
(49, 'KBR006', 'PALET BESI KW3', 300, 0, 0, 300),
(50, 'KBR007', 'PALET PLASTIK KW1', 300, 0, 0, 300),
(51, 'KBR008', 'PALET PLASTIK KW2', 300, 0, 0, 300),
(52, 'KBR009', 'PALET PLASTIK KW3', 300, 0, 0, 300),
(53, 'KBR010', 'PALU BESI', 300, 0, 0, 300),
(54, 'KBR011', 'PALU KARET', 300, 0, 0, 300),
(55, 'KBR012', 'GERGAJI KAYU', 300, 0, 0, 300),
(56, 'KBR013', 'GERGAJI BESI', 300, 0, 0, 300),
(57, 'KBR014', 'BOR LISTRIK', 300, 0, 0, 300),
(58, 'KBR015', 'MATA BOR KAYU', 300, 0, 0, 300),
(59, 'KBR016', 'MATA BOR BESI', 300, 0, 0, 300),
(60, 'KBR017', 'METERAN ROLL', 300, 0, 0, 300),
(61, 'KBR018', 'PENGGARIS SIKU', 300, 0, 0, 300),
(62, 'KBR019', 'OBENG PLUS', 300, 0, 0, 300),
(63, 'KBR020', 'OBENG MINUS', 300, 0, 0, 300),
(64, 'KBR021', 'TANG KOMBINASI', 300, 0, 0, 300),
(65, 'KBR022', 'TANG POTONG', 300, 0, 0, 300),
(66, 'KBR023', 'TANG JEPIT', 300, 0, 0, 300),
(67, 'KBR024', 'KUNCI PAS SET', 300, 0, 0, 300),
(68, 'KBR025', 'KUNCI INGGRIS', 300, 0, 0, 300),
(69, 'KBR026', 'AMPLAS KAYU', 300, 10, 2, 308),
(70, 'KBR027', 'AMPLAS BESI', 300, 5, 5, 300),
(71, 'KBR028', 'KUAS CAT', 300, 0, 0, 300),
(72, 'KBR029', 'ROLLER CAT', 300, 0, 0, 300),
(73, 'KBR030', 'CAT KAYU COKLAT', 300, 0, 0, 300),
(74, 'KBR031', 'CAT KAYU NATURAL', 300, 0, 0, 300),
(75, 'KBR032', 'CAT BESI HITAM', 300, 0, 0, 300),
(76, 'KBR033', 'CAT BESI ABU-ABU', 300, 2, 0, 302),
(77, 'KBR034', 'PAKU KAYU', 300, 0, 0, 300),
(78, 'KBR035', 'PAKU BESI', 300, 0, 0, 300),
(79, 'KBR036', 'SEKRUP KAYU', 300, 0, 0, 300),
(80, 'KBR037', 'SEKRUP BESI', 300, 0, 0, 300),
(81, 'KBR038', 'LEM KAYU', 300, 0, 0, 300),
(82, 'KBR039', 'LEM SERBAGUNA', 300, 0, 0, 300),
(83, 'KBR040', 'SARUNG TANGAN KERJA', 300, 0, 0, 300),
(84, 'KBR041', 'KACAMATA SAFETY', 300, 0, 0, 300),
(85, 'KBR042', 'MASKER KERJA', 300, 0, 0, 300),
(86, 'KBR043', 'CUTTER BESAR', 300, 0, 0, 300),
(87, 'KBR044', 'PISAU SERUT KAYU', 300, 0, 0, 300),
(88, 'KBR045', 'KLEM PENJEPIT', 300, 0, 0, 300);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` bigint(20) UNSIGNED NOT NULL,
  `id_reference` varchar(100) DEFAULT NULL,
  `reference_table` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `raw_original` longtext DEFAULT NULL,
  `raw_changes` longtext DEFAULT NULL,
  `raw_new` longtext DEFAULT NULL,
  `kode_user` varchar(50) DEFAULT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `id_reference`, `reference_table`, `action`, `raw_original`, `raw_changes`, `raw_new`, `kode_user`, `nama_user`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 'KS002', 'master_satuan', 'INSERT', NULL, NULL, '{\"kode_satuan\":\"KS002\",\"kode_user\":\"KUSR001\",\"nama_satuan\":\"Meter\"}', 'KUSR001', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-05-04 08:31:13'),
(2, 'KS002', 'master_satuan', 'UPDATE', '{\"kode_satuan\":\"KS002\",\"kode_user\":\"KUSR001\",\"nama_satuan\":\"Meter\"}', '{\"kode_user\":\"KUSR001\",\"nama_satuan\":\"Cm\"}', '{\"kode_satuan\":\"KS002\",\"kode_user\":\"KUSR001\",\"nama_satuan\":\"Cm\"}', 'KUSR001', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-05-04 08:31:52'),
(3, 'KBL002', 'transaksi_pembelian', 'INSERT', NULL, NULL, '{\"header\":{\"kode_pembelian\":\"KBL002\",\"tgl_pembelian\":\"2026-05-04\",\"kode_supplier\":\"KSP001\",\"kode_user\":\"KUSR001\",\"total_pembelian\":4444,\"catatan_pembelian\":\"pe123\"},\"detail\":[{\"kode_pembelian\":\"KBL002\",\"kode_barang\":\"KBR033\",\"nama_barang\":\"CAT BESI ABU-ABU\",\"qty\":2,\"harga_barang\":2222,\"subtotal_barang\":4444,\"date_entry\":\"2026-05-04T15:32:24.442355Z\"}]}', 'KUSR001', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-05-04 08:32:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_barang`
--

CREATE TABLE `master_barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kode_kategori` varchar(10) NOT NULL,
  `kode_satuan` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `kapasitas` int(100) NOT NULL,
  `harga_jual` varchar(50) NOT NULL,
  `stok_minimum` int(100) NOT NULL,
  `deskripsi_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_barang`
--

INSERT INTO `master_barang` (`kode_barang`, `nama_barang`, `kode_kategori`, `kode_satuan`, `kode_user`, `kapasitas`, `harga_jual`, `stok_minimum`, `deskripsi_barang`) VALUES
('KBR001', 'PALET KAYU KW1', 'KKR002', 'KS001', 'KUSR001', 300, '7000', 10, 'Palet kayu kualitas KW1'),
('KBR002', 'PALET KAYU KW2', 'KKR002', 'KS001', 'KUSR001', 300, '6500', 10, 'Palet kayu kualitas KW2'),
('KBR003', 'PALET KAYU KW3', 'KKR002', 'KS001', 'KUSR001', 300, '6000', 10, 'Palet kayu kualitas KW3'),
('KBR004', 'PALET BESI KW1', 'KKR003', 'KS001', 'KUSR001', 300, '50000', 5, 'Palet besi kualitas KW1'),
('KBR005', 'PALET BESI KW2', 'KKR003', 'KS001', 'KUSR001', 300, '45000', 5, 'Palet besi kualitas KW2'),
('KBR006', 'PALET BESI KW3', 'KKR003', 'KS001', 'KUSR001', 300, '40000', 5, 'Palet besi kualitas KW3'),
('KBR007', 'PALET PLASTIK KW1', 'KKR004', 'KS001', 'KUSR001', 300, '75000', 10, 'Palet plastik kualitas KW1'),
('KBR008', 'PALET PLASTIK KW2', 'KKR004', 'KS001', 'KUSR001', 300, '70000', 10, 'Palet plastik kualitas KW2'),
('KBR009', 'PALET PLASTIK KW3', 'KKR004', 'KS001', 'KUSR001', 300, '65000', 10, 'Palet plastik kualitas KW3'),
('KBR010', 'PALU BESI', 'KKR001', 'KS001', 'KUSR001', 300, '25000', 10, 'Palu besi untuk kebutuhan produksi'),
('KBR011', 'PALU KARET', 'KKR001', 'KS001', 'KUSR001', 300, '22000', 10, 'Palu karet untuk pekerjaan perakitan'),
('KBR012', 'GERGAJI KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '35000', 10, 'Gergaji untuk pemotongan kayu'),
('KBR013', 'GERGAJI BESI', 'KKR001', 'KS001', 'KUSR001', 300, '40000', 10, 'Gergaji untuk pemotongan besi'),
('KBR014', 'BOR LISTRIK', 'KKR001', 'KS001', 'KUSR001', 300, '250000', 5, 'Bor listrik untuk proses produksi'),
('KBR015', 'MATA BOR KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '15000', 15, 'Mata bor untuk material kayu'),
('KBR016', 'MATA BOR BESI', 'KKR001', 'KS001', 'KUSR001', 300, '20000', 15, 'Mata bor untuk material besi'),
('KBR017', 'METERAN ROLL', 'KKR001', 'KS001', 'KUSR001', 300, '20000', 10, 'Meteran roll untuk pengukuran bahan'),
('KBR018', 'PENGGARIS SIKU', 'KKR001', 'KS001', 'KUSR001', 300, '18000', 10, 'Penggaris siku untuk pengukuran sudut'),
('KBR019', 'OBENG PLUS', 'KKR001', 'KS001', 'KUSR001', 300, '12000', 10, 'Obeng plus untuk perakitan'),
('KBR020', 'OBENG MINUS', 'KKR001', 'KS001', 'KUSR001', 300, '12000', 10, 'Obeng minus untuk perakitan'),
('KBR021', 'TANG KOMBINASI', 'KKR001', 'KS001', 'KUSR001', 300, '30000', 10, 'Tang kombinasi untuk kebutuhan teknis'),
('KBR022', 'TANG POTONG', 'KKR001', 'KS001', 'KUSR001', 300, '28000', 10, 'Tang potong untuk pemotongan kawat atau material kecil'),
('KBR023', 'TANG JEPIT', 'KKR001', 'KS001', 'KUSR001', 300, '32000', 10, 'Tang jepit untuk menjepit material kerja'),
('KBR024', 'KUNCI PAS SET', 'KKR001', 'KS001', 'KUSR001', 300, '85000', 5, 'Set kunci pas untuk perawatan alat'),
('KBR025', 'KUNCI INGGRIS', 'KKR001', 'KS001', 'KUSR001', 300, '45000', 5, 'Kunci inggris untuk pekerjaan teknis'),
('KBR026', 'AMPLAS KAYU', 'KKR001', 'KS001', 'KUSR001', 308, '5000', 20, 'Amplas untuk finishing kayu'),
('KBR027', 'AMPLAS BESI', 'KKR001', 'KS001', 'KUSR001', 300, '6000', 20, 'Amplas untuk finishing besi'),
('KBR028', 'KUAS CAT', 'KKR001', 'KS001', 'KUSR001', 300, '8000', 20, 'Kuas untuk pengecatan produk'),
('KBR029', 'ROLLER CAT', 'KKR001', 'KS001', 'KUSR001', 300, '18000', 10, 'Roller cat untuk pengecatan permukaan lebar'),
('KBR030', 'CAT KAYU COKLAT', 'KKR001', 'KS001', 'KUSR001', 300, '45000', 10, 'Cat kayu warna coklat'),
('KBR031', 'CAT KAYU NATURAL', 'KKR001', 'KS001', 'KUSR001', 300, '47000', 10, 'Cat kayu warna natural'),
('KBR032', 'CAT BESI HITAM', 'KKR001', 'KS001', 'KUSR001', 300, '50000', 10, 'Cat besi warna hitam'),
('KBR033', 'CAT BESI ABU-ABU', 'KKR001', 'KS001', 'KUSR001', 302, '50000', 10, 'Cat besi warna abu-abu'),
('KBR034', 'PAKU KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '15000', 20, 'Paku untuk perakitan kayu'),
('KBR035', 'PAKU BESI', 'KKR001', 'KS001', 'KUSR001', 300, '18000', 20, 'Paku untuk kebutuhan material besi'),
('KBR036', 'SEKRUP KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '18000', 20, 'Sekrup untuk perakitan kayu'),
('KBR037', 'SEKRUP BESI', 'KKR001', 'KS001', 'KUSR001', 300, '20000', 20, 'Sekrup untuk perakitan besi'),
('KBR038', 'LEM KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '25000', 10, 'Lem untuk penyambungan material kayu'),
('KBR039', 'LEM SERBAGUNA', 'KKR001', 'KS001', 'KUSR001', 300, '30000', 10, 'Lem serbaguna untuk kebutuhan produksi'),
('KBR040', 'SARUNG TANGAN KERJA', 'KKR001', 'KS001', 'KUSR001', 300, '10000', 20, 'Sarung tangan untuk keselamatan kerja'),
('KBR041', 'KACAMATA SAFETY', 'KKR001', 'KS001', 'KUSR001', 300, '18000', 20, 'Kacamata pelindung untuk pekerjaan produksi'),
('KBR042', 'MASKER KERJA', 'KKR001', 'KS001', 'KUSR001', 300, '5000', 20, 'Masker untuk perlindungan saat bekerja'),
('KBR043', 'CUTTER BESAR', 'KKR001', 'KS001', 'KUSR001', 300, '15000', 10, 'Cutter besar untuk pemotongan bahan'),
('KBR044', 'PISAU SERUT KAYU', 'KKR001', 'KS001', 'KUSR001', 300, '35000', 10, 'Pisau serut untuk merapikan permukaan kayu'),
('KBR045', 'KLEM PENJEPIT', 'KKR001', 'KS001', 'KUSR001', 300, '25000', 10, 'Klem untuk menjepit bahan saat proses produksi');

--
-- Trigger `master_barang`
--
DELIMITER $$
CREATE TRIGGER `trg_master_barang_after_insert` AFTER INSERT ON `master_barang` FOR EACH ROW BEGIN
    INSERT INTO laporan_stok_barang (
        kode_barang,
        nama_barang,
        stok_awal,
        stok_masuk,
        stok_keluar,
        stok_akhir
    )
    VALUES (
        NEW.kode_barang,
        NEW.nama_barang,
        NEW.kapasitas,
        0,
        0,
        NEW.kapasitas
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_customer`
--

CREATE TABLE `master_customer` (
  `kode_customer` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `nohp_customer` varchar(20) DEFAULT NULL,
  `alamat_customer` text DEFAULT NULL,
  `email_customer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_customer`
--

INSERT INTO `master_customer` (`kode_customer`, `kode_user`, `nama_customer`, `nohp_customer`, `alamat_customer`, `email_customer`) VALUES
('KCS001', 'KUSR002', 'argo', '087862232847', 'JL Kebangsreng Gang 8 No 3', 'argo@gmail.com'),
('KCS002', 'KUSR003', 'ocha', '', 'JL Bumi Sari Praja Timur', 'ocha@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenis_palet`
--

CREATE TABLE `master_jenis_palet` (
  `kode_palet` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_palet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_jenis_palet`
--

INSERT INTO `master_jenis_palet` (`kode_palet`, `kode_user`, `nama_palet`) VALUES
('KJP001', 'KUSR001', 'Kayu'),
('KJP002', 'KUSR001', 'Besi'),
('KJP003', 'KUSR001', 'Plastik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_karyawan`
--

CREATE TABLE `master_karyawan` (
  `kode_karyawan` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `jabatan_karyawan` varchar(100) NOT NULL,
  `alamat_karyawan` varchar(100) NOT NULL,
  `nohp_karyawan` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_barang`
--

CREATE TABLE `master_kategori_barang` (
  `kode_kategori` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_kategori_barang`
--

INSERT INTO `master_kategori_barang` (`kode_kategori`, `kode_user`, `nama_kategori`) VALUES
('KKR001', 'KUSR001', 'Alat'),
('KKR002', 'KUSR001', 'PALET KAYU'),
('KKR003', 'KUSR001', 'PALET BESI'),
('KKR004', 'KUSR001', 'PALET PLASTIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kualitas`
--

CREATE TABLE `master_kualitas` (
  `kode_kualitas` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_kualitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_kualitas`
--

INSERT INTO `master_kualitas` (`kode_kualitas`, `kode_user`, `nama_kualitas`) VALUES
('KK001', 'KUSR001', 'KW 1'),
('KK002', 'KUSR001', 'KW 2'),
('KK003', 'KUSR001', 'KW 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_rekening_pembayaran`
--

CREATE TABLE `master_rekening_pembayaran` (
  `kode_rekening` varchar(10) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomor_rekening` varchar(100) DEFAULT NULL,
  `atas_nama` varchar(100) DEFAULT NULL,
  `gambar_qris` varchar(255) DEFAULT NULL,
  `status_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `date_entry` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_rekening_pembayaran`
--

INSERT INTO `master_rekening_pembayaran` (`kode_rekening`, `metode_pembayaran`, `nama_bank`, `nomor_rekening`, `atas_nama`, `gambar_qris`, `status_aktif`, `date_entry`) VALUES
('KRP001', 'Transfer Bank', 'BCA', '1234567890', 'CV Syavir Jaya Utama', NULL, 1, '2026-04-29 10:26:24'),
('KRP002', 'Transfer Bank', 'BRI', '0987654321', 'CV Syavir Jaya Utama', NULL, 1, '2026-04-29 10:26:24'),
('KRP003', 'Transfer Bank', 'Mandiri', '1122334455', 'CV Syavir Jaya Utama', NULL, 1, '2026-04-29 10:26:24'),
('KRP004', 'QRIS', NULL, NULL, 'CV Syavir Jaya Utama', 'qris/qris-syavir.png', 1, '2026-04-29 10:26:24'),
('KRP005', 'Cash', NULL, NULL, NULL, NULL, 1, '2026-04-29 10:26:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_role`
--

CREATE TABLE `master_role` (
  `kode_role` varchar(10) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_role`
--

INSERT INTO `master_role` (`kode_role`, `nama_role`) VALUES
('KRL001', 'Admin'),
('KRL002', 'Karyawan'),
('KRL003', 'Customer'),
('KRL004', 'hacker');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_satuan`
--

CREATE TABLE `master_satuan` (
  `kode_satuan` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_satuan`
--

INSERT INTO `master_satuan` (`kode_satuan`, `kode_user`, `nama_satuan`) VALUES
('KS001', 'KUSR001', 'unit'),
('KS002', 'KUSR001', 'Cm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_supplier`
--

CREATE TABLE `master_supplier` (
  `kode_supplier` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `nohp_supplier` int(25) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_supplier`
--

INSERT INTO `master_supplier` (`kode_supplier`, `kode_user`, `nama_supplier`, `nohp_supplier`, `alamat_supplier`, `keterangan`) VALUES
('KSP001', 'KUSR001', 'cheryl', 12341234, 'JL Saco No 1', 'ada'),
('KSP002', 'KUSR001', 'Yessavilia', 12341234, 'JL Kebon Jeruk 18, Jakarta Barat', 'asdsad'),
('KSP003', 'KUSR001', 'Yemima Bunga', 878888723, 'JL Depok 12', 'bagus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `kode_user` varchar(10) NOT NULL,
  `kode_role` varchar(10) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `pw_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`kode_user`, `kode_role`, `nama_user`, `email_user`, `pw_user`) VALUES
('KUSR001', 'KRL001', 'admin', 'admin@gmail.com', '123456'),
('KUSR002', 'KRL003', 'argo', 'argo@gmail.com', '123456'),
('KUSR003', 'KRL003', 'ocha', 'ocha@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_penjualan`
--

CREATE TABLE `pembayaran_penjualan` (
  `kode_pembayaran` varchar(20) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `bank_tujuan` varchar(50) DEFAULT NULL,
  `nominal_pembayaran` int(11) NOT NULL DEFAULT 0,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `status_pembayaran` varchar(50) NOT NULL DEFAULT 'Belum Dibayar',
  `tanggal_upload_bukti` datetime DEFAULT NULL,
  `tanggal_validasi` datetime DEFAULT NULL,
  `divalidasi_oleh` varchar(10) DEFAULT NULL,
  `catatan_validasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran_penjualan`
--

INSERT INTO `pembayaran_penjualan` (`kode_pembayaran`, `kode_pesanan`, `metode_pembayaran`, `bank_tujuan`, `nominal_pembayaran`, `bukti_pembayaran`, `status_pembayaran`, `tanggal_upload_bukti`, `tanggal_validasi`, `divalidasi_oleh`, `catatan_validasi`, `created_at`, `updated_at`) VALUES
('PAY002', 'KPS002', 'Transfer Bank', 'BCA', 47000, 'bukti-pembayaran/pIl8Wz91O5MwtsD3EJZ5NdyxJg1lPUDobXWqtM8Q.png', 'Lunas', '2026-04-29 10:35:08', '2026-04-29 10:35:47', 'KUSR001', NULL, '2026-04-29 03:34:23', '2026-04-29 03:35:47'),
('PAY003', 'KPS003', 'Transfer Bank', 'BCA', 533000, 'bukti-pembayaran/eUalW9VsDb4OwaGxuu2MWsczIjyvLTIRaansDEDi.png', 'Lunas', '2026-05-02 04:35:39', '2026-05-02 04:36:05', 'KUSR001', NULL, '2026-05-01 21:34:35', '2026-05-01 21:36:05'),
('PAY004', 'KPS004', 'Transfer Bank', 'Mandiri', 266400, NULL, 'Belum Dibayar', NULL, NULL, NULL, NULL, '2026-05-01 21:53:29', NULL),
('PAY005', 'KPS001', 'QRIS', NULL, 1374000, 'bukti-pembayaran/7vXGGKAh4JWJJyDnyxB67kcniQZriBHRHjhRvRTq.png', 'Lunas', '2026-05-04 10:17:55', '2026-05-04 10:57:27', 'KUSR001', NULL, '2026-05-04 03:17:45', '2026-05-04 03:57:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_pembelian`
--

CREATE TABLE `retur_pembelian` (
  `kode_rpembelian` varchar(25) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `kode_supplier` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `subtotal_retur` decimal(15,2) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `retur_pembelian`
--

INSERT INTO `retur_pembelian` (`kode_rpembelian`, `tgl_pembelian`, `kode_supplier`, `alamat`, `kode_pembelian`, `subtotal_retur`, `keterangan`) VALUES
('KRP001', '2026-05-03', 'KSP001', 'JL Saco No 1', 'KBL001', 150000.00, 'tesretur'),
('KRP002', '2026-05-03', 'KSP001', 'JL Saco No 1', 'KBL001', 100000.00, 'retur lagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_pembelian_detail`
--

CREATE TABLE `retur_pembelian_detail` (
  `id` int(11) NOT NULL,
  `kode_rpembelian` varchar(25) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `qty_beli` decimal(10,2) NOT NULL DEFAULT 0.00,
  `qty_retur` decimal(10,2) NOT NULL DEFAULT 0.00,
  `harga_barang` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtotal_retur` decimal(15,2) NOT NULL DEFAULT 0.00,
  `date_entry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `retur_pembelian_detail`
--

INSERT INTO `retur_pembelian_detail` (`id`, `kode_rpembelian`, `kode_pembelian`, `kode_barang`, `nama_barang`, `qty_beli`, `qty_retur`, `harga_barang`, `subtotal_retur`, `date_entry`) VALUES
(14, 'KRP001', 'KBL001', 'KBR026', 'AMPLAS KAYU', 10.00, 1.00, 100000.00, 100000.00, '2026-05-03 17:55:15'),
(15, 'KRP001', 'KBL001', 'KBR027', 'AMPLAS BESI', 5.00, 1.00, 50000.00, 50000.00, '2026-05-03 17:55:15'),
(16, 'KRP002', 'KBL001', 'KBR026', 'AMPLAS KAYU', 10.00, 1.00, 100000.00, 100000.00, '2026-05-03 17:55:39');

--
-- Trigger `retur_pembelian_detail`
--
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_detail_after_delete` AFTER DELETE ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE master_barang
    SET kapasitas = kapasitas + OLD.qty_retur
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_detail_after_insert` AFTER INSERT ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE master_barang
    SET kapasitas = kapasitas - NEW.qty_retur
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_detail_after_update` AFTER UPDATE ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    IF OLD.kode_barang = NEW.kode_barang THEN
        UPDATE master_barang
        SET kapasitas = kapasitas + OLD.qty_retur - NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;
    ELSE
        UPDATE master_barang
        SET kapasitas = kapasitas + OLD.qty_retur
        WHERE kode_barang = OLD.kode_barang;

        UPDATE master_barang
        SET kapasitas = kapasitas - NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_laporan_after_delete` AFTER DELETE ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET stok_keluar = stok_keluar - OLD.qty_retur
    WHERE kode_barang = OLD.kode_barang;

    UPDATE laporan_stok_barang
    SET stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_laporan_after_insert` AFTER INSERT ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET stok_keluar = stok_keluar + NEW.qty_retur
    WHERE kode_barang = NEW.kode_barang;

    UPDATE laporan_stok_barang
    SET stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_pembelian_laporan_after_update` AFTER UPDATE ON `retur_pembelian_detail` FOR EACH ROW BEGIN
    IF OLD.kode_barang = NEW.kode_barang THEN
        UPDATE laporan_stok_barang
        SET stok_keluar = stok_keluar - OLD.qty_retur + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = NEW.kode_barang;
    ELSE
        UPDATE laporan_stok_barang
        SET stok_keluar = stok_keluar - OLD.qty_retur
        WHERE kode_barang = OLD.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = OLD.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_keluar = stok_keluar + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = NEW.kode_barang;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_penjualan`
--

CREATE TABLE `retur_penjualan` (
  `kode_rpenjualan` varchar(25) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `kode_customer` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kode_pesanan` varchar(50) NOT NULL,
  `subtotal_retur` decimal(15,2) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_penjualan_detail`
--

CREATE TABLE `retur_penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode_rpenjualan` varchar(25) NOT NULL,
  `kode_pesanan` varchar(50) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `qty_jual` decimal(10,2) NOT NULL DEFAULT 0.00,
  `qty_retur` decimal(10,2) NOT NULL DEFAULT 0.00,
  `harga_satuan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtotal_retur` decimal(15,2) NOT NULL DEFAULT 0.00,
  `date_entry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Trigger `retur_penjualan_detail`
--
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_detail_after_delete` AFTER DELETE ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE master_barang
    SET kapasitas = kapasitas - OLD.qty_retur
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_detail_after_insert` AFTER INSERT ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE master_barang
    SET kapasitas = kapasitas + NEW.qty_retur
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_detail_after_update` AFTER UPDATE ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    IF OLD.kode_barang = NEW.kode_barang THEN
        UPDATE master_barang
        SET kapasitas = kapasitas - OLD.qty_retur + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;
    ELSE
        UPDATE master_barang
        SET kapasitas = kapasitas - OLD.qty_retur
        WHERE kode_barang = OLD.kode_barang;

        UPDATE master_barang
        SET kapasitas = kapasitas + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_laporan_after_delete` AFTER DELETE ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET stok_masuk = stok_masuk - OLD.qty_retur
    WHERE kode_barang = OLD.kode_barang;

    UPDATE laporan_stok_barang
    SET stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_laporan_after_insert` AFTER INSERT ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET stok_masuk = stok_masuk + NEW.qty_retur
    WHERE kode_barang = NEW.kode_barang;

    UPDATE laporan_stok_barang
    SET stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_retur_penjualan_laporan_after_update` AFTER UPDATE ON `retur_penjualan_detail` FOR EACH ROW BEGIN
    IF OLD.kode_barang = NEW.kode_barang THEN
        UPDATE laporan_stok_barang
        SET stok_masuk = stok_masuk - OLD.qty_retur + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = NEW.kode_barang;
    ELSE
        UPDATE laporan_stok_barang
        SET stok_masuk = stok_masuk - OLD.qty_retur
        WHERE kode_barang = OLD.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = OLD.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_masuk = stok_masuk + NEW.qty_retur
        WHERE kode_barang = NEW.kode_barang;

        UPDATE laporan_stok_barang
        SET stok_akhir = stok_awal + stok_masuk - stok_keluar
        WHERE kode_barang = NEW.kode_barang;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Lpu2979ugkLFSsnFfT0n9FYsEVqB9xkmB959fm11', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGdvOUhTR2laMzM5amNzSFlyckZ5dVVycEZoQ0lsYlpNcXpHaDBSTiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1775574969);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembelian`
--

CREATE TABLE `transaksi_pembelian` (
  `kode_pembelian` varchar(10) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `kode_supplier` varchar(10) NOT NULL,
  `kode_user` varchar(10) NOT NULL,
  `total_pembelian` int(50) NOT NULL,
  `catatan_pembelian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_pembelian`
--

INSERT INTO `transaksi_pembelian` (`kode_pembelian`, `tgl_pembelian`, `kode_supplier`, `kode_user`, `total_pembelian`, `catatan_pembelian`) VALUES
('KBL001', '2026-05-03', 'KSP001', 'KUSR001', 1250000, 'belibarang'),
('KBL002', '2026-05-04', 'KSP001', 'KUSR001', 4444, 'pe123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembelian_detail`
--

CREATE TABLE `transaksi_pembelian_detail` (
  `id` int(11) NOT NULL,
  `kode_pembelian` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_barang` int(10) NOT NULL,
  `subtotal_barang` int(100) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_pembelian_detail`
--

INSERT INTO `transaksi_pembelian_detail` (`id`, `kode_pembelian`, `kode_barang`, `nama_barang`, `qty`, `harga_barang`, `subtotal_barang`, `date_entry`) VALUES
(76, 'KBL001', 'KBR027', 'AMPLAS BESI', 5, 50000, 250000, '2026-05-03 10:54:34'),
(77, 'KBL001', 'KBR026', 'AMPLAS KAYU', 10, 100000, 1000000, '2026-05-03 10:54:34'),
(78, 'KBL002', 'KBR033', 'CAT BESI ABU-ABU', 2, 2222, 4444, '2026-05-04 08:32:24');

--
-- Trigger `transaksi_pembelian_detail`
--
DELIMITER $$
CREATE TRIGGER `trg_pembelian_detail_after_delete` AFTER DELETE ON `transaksi_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET
        stok_masuk = stok_masuk - OLD.qty
    WHERE kode_barang = OLD.kode_barang;

    UPDATE laporan_stok_barang
    SET
        stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_pembelian_detail_after_insert` AFTER INSERT ON `transaksi_pembelian_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET
        stok_masuk = stok_masuk + NEW.qty
    WHERE kode_barang = NEW.kode_barang;

    UPDATE laporan_stok_barang
    SET
        stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `kode_pesanan` varchar(10) NOT NULL,
  `tgl_pesanan` date NOT NULL,
  `kode_customer` varchar(10) NOT NULL,
  `jenis_pengiriman` varchar(50) NOT NULL,
  `jenis_pemesanan` varchar(10) DEFAULT NULL,
  `status_pesanan` varchar(10) NOT NULL,
  `status_pembayaran` varchar(50) NOT NULL DEFAULT 'Belum Dibayar',
  `alamat_kirim_pesanan` varchar(100) NOT NULL,
  `provinsi_tujuan` varchar(100) DEFAULT NULL,
  `kota_tujuan` varchar(100) DEFAULT NULL,
  `kurir` varchar(50) DEFAULT NULL,
  `layanan_kurir` varchar(100) DEFAULT NULL,
  `estimasi_pengiriman` varchar(50) DEFAULT NULL,
  `ongkir_pesanan` int(100) NOT NULL,
  `total_detail_pesanan` int(11) NOT NULL DEFAULT 0,
  `grand_total_pesanan` int(11) NOT NULL DEFAULT 0,
  `catatan_pesanan` varchar(100) NOT NULL,
  `spesifikasi_tambahan` varchar(500) DEFAULT NULL,
  `harga_estimasi` float DEFAULT NULL,
  `status_custom` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`kode_pesanan`, `tgl_pesanan`, `kode_customer`, `jenis_pengiriman`, `jenis_pemesanan`, `status_pesanan`, `status_pembayaran`, `alamat_kirim_pesanan`, `provinsi_tujuan`, `kota_tujuan`, `kurir`, `layanan_kurir`, `estimasi_pengiriman`, `ongkir_pesanan`, `total_detail_pesanan`, `grand_total_pesanan`, `catatan_pesanan`, `spesifikasi_tambahan`, `harga_estimasi`, `status_custom`) VALUES
('KPS001', '2026-05-04', 'KCS001', 'JTR>130', 'Standart', 'Diproses', 'Lunas', 'tres', 'JAWA BARAT', 'DEPOK', 'jne', 'JTR>130', '3 day', 1350000, 24000, 1374000, 'tes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_penjualan_detail`
--

CREATE TABLE `transaksi_penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `subtotal_pesanan` int(10) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_penjualan_detail`
--

INSERT INTO `transaksi_penjualan_detail` (`id`, `kode_pesanan`, `kode_barang`, `nama_barang`, `qty`, `harga_satuan`, `subtotal_pesanan`, `date_entry`) VALUES
(95, 'KPS001', 'KBR027', 'AMPLAS BESI', 4, 6000, 24000, '2026-05-04 03:17:45');

--
-- Trigger `transaksi_penjualan_detail`
--
DELIMITER $$
CREATE TRIGGER `trg_penjualan_detail_after_delete` AFTER DELETE ON `transaksi_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET
        stok_keluar = stok_keluar - OLD.qty
    WHERE kode_barang = OLD.kode_barang;

    UPDATE laporan_stok_barang
    SET
        stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_penjualan_detail_after_insert` AFTER INSERT ON `transaksi_penjualan_detail` FOR EACH ROW BEGIN
    UPDATE laporan_stok_barang
    SET
        stok_keluar = stok_keluar + NEW.qty
    WHERE kode_barang = NEW.kode_barang;

    UPDATE laporan_stok_barang
    SET
        stok_akhir = stok_awal + stok_masuk - stok_keluar
    WHERE kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_keuangan`
--
DROP TABLE IF EXISTS `laporan_keuangan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_keuangan`  AS SELECT `sumber`.`tanggal` AS `tanggal`, sum(`sumber`.`total_pemasukan`) AS `total_pemasukan`, sum(`sumber`.`total_pengeluaran`) AS `total_pengeluaran`, sum(`sumber`.`total_pemasukan`) - sum(`sumber`.`total_pengeluaran`) AS `laba_rugi` FROM (select cast(`tp`.`tgl_pesanan` as date) AS `tanggal`,sum(`tp`.`grand_total_pesanan`) AS `total_pemasukan`,0 AS `total_pengeluaran` from `transaksi_penjualan` `tp` where `tp`.`status_pembayaran` = 'Lunas' group by cast(`tp`.`tgl_pesanan` as date) union all select cast(`rpb`.`tgl_pembelian` as date) AS `tanggal`,sum(`rpbd`.`subtotal_retur`) AS `total_pemasukan`,0 AS `total_pengeluaran` from (`retur_pembelian` `rpb` join `retur_pembelian_detail` `rpbd` on(`rpb`.`kode_rpembelian` = `rpbd`.`kode_rpembelian`)) group by cast(`rpb`.`tgl_pembelian` as date) union all select cast(`tpb`.`tgl_pembelian` as date) AS `tanggal`,0 AS `total_pemasukan`,sum(`tpb`.`total_pembelian`) AS `total_pengeluaran` from `transaksi_pembelian` `tpb` group by cast(`tpb`.`tgl_pembelian` as date) union all select cast(`rpj`.`tgl_penjualan` as date) AS `tanggal`,0 AS `total_pemasukan`,sum(`rpjd`.`subtotal_retur`) AS `total_pengeluaran` from (`retur_penjualan` `rpj` join `retur_penjualan_detail` `rpjd` on(`rpj`.`kode_rpenjualan` = `rpjd`.`kode_rpenjualan`)) group by cast(`rpj`.`tgl_penjualan` as date)) AS `sumber` GROUP BY `sumber`.`tanggal` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_pemasukan`
--
DROP TABLE IF EXISTS `laporan_pemasukan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_pemasukan`  AS SELECT `transaksi_penjualan`.`kode_pesanan` AS `kode_pesanan`, `transaksi_penjualan`.`tgl_pesanan` AS `tanggal`, `transaksi_penjualan`.`total_detail_pesanan` AS `subtotal` FROM `transaksi_penjualan` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_pembelian`
--
DROP TABLE IF EXISTS `laporan_pembelian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_pembelian`  AS SELECT `tp`.`kode_pembelian` AS `kode_pembelian`, `tp`.`tgl_pembelian` AS `tanggal`, `ms`.`nama_supplier` AS `nama_supplier`, `tpd`.`kode_barang` AS `kode_barang`, `tpd`.`nama_barang` AS `nama_barang`, `tpd`.`qty` AS `qty`, `tpd`.`harga_barang` AS `harga_barang`, `tpd`.`subtotal_barang` AS `subtotal_barang` FROM ((`transaksi_pembelian` `tp` left join `transaksi_pembelian_detail` `tpd` on(`tp`.`kode_pembelian` = `tpd`.`kode_pembelian`)) left join `master_supplier` `ms` on(`tp`.`kode_supplier` = `ms`.`kode_supplier`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_pengeluaran`
--
DROP TABLE IF EXISTS `laporan_pengeluaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_pengeluaran`  AS SELECT `transaksi_pembelian`.`kode_pembelian` AS `kode_pembelian`, `transaksi_pembelian`.`tgl_pembelian` AS `tanggal`, sum(`transaksi_pembelian_detail`.`subtotal_barang`) AS `subtotal` FROM (`transaksi_pembelian` join `transaksi_pembelian_detail` on(`transaksi_pembelian`.`kode_pembelian` = `transaksi_pembelian_detail`.`kode_pembelian`)) GROUP BY `transaksi_pembelian`.`kode_pembelian`, `transaksi_pembelian`.`tgl_pembelian` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_pengiriman`
--
DROP TABLE IF EXISTS `laporan_pengiriman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_pengiriman`  AS SELECT `transaksi_penjualan`.`kode_pesanan` AS `kode_pesanan`, `transaksi_penjualan`.`tgl_pesanan` AS `tanggal`, `master_customer`.`nama_customer` AS `nama_customer`, `transaksi_penjualan`.`jenis_pengiriman` AS `jenis_pengiriman`, `transaksi_penjualan`.`provinsi_tujuan` AS `provinsi_tujuan`, `transaksi_penjualan`.`kota_tujuan` AS `kota_tujuan`, `transaksi_penjualan`.`kurir` AS `kurir`, `transaksi_penjualan`.`ongkir_pesanan` AS `ongkir_pesanan` FROM (`transaksi_penjualan` join `master_customer` on(`transaksi_penjualan`.`kode_customer` = `master_customer`.`kode_customer`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_penjualan`
--
DROP TABLE IF EXISTS `laporan_penjualan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_penjualan`  AS SELECT `transaksi_penjualan`.`kode_pesanan` AS `kode_pesanan`, `transaksi_penjualan`.`tgl_pesanan` AS `tanggal`, `master_customer`.`nama_customer` AS `nama_customer`, `transaksi_penjualan_detail`.`kode_barang` AS `kode_barang`, `transaksi_penjualan_detail`.`nama_barang` AS `nama_barang`, `transaksi_penjualan_detail`.`qty` AS `qty`, `transaksi_penjualan_detail`.`harga_satuan` AS `harga_satuan`, `transaksi_penjualan_detail`.`subtotal_pesanan` AS `subtotal_pesanan` FROM ((`transaksi_penjualan` join `transaksi_penjualan_detail` on(`transaksi_penjualan`.`kode_pesanan` = `transaksi_penjualan_detail`.`kode_pesanan`)) join `master_customer` on(`transaksi_penjualan`.`kode_customer` = `master_customer`.`kode_customer`)) ORDER BY `transaksi_penjualan`.`tgl_pesanan` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_presentasi_reject`
--
DROP TABLE IF EXISTS `laporan_presentasi_reject`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_presentasi_reject`  AS SELECT `data_laporan`.`tanggal` AS `tanggal`, `data_laporan`.`kode_barang` AS `kode_barang`, `data_laporan`.`nama_barang` AS `nama_barang`, sum(`data_laporan`.`jual`) AS `total_jual`, sum(`data_laporan`.`retur`) AS `total_retur`, CASE WHEN sum(`data_laporan`.`jual`) > 0 THEN round(sum(`data_laporan`.`retur`) / sum(`data_laporan`.`jual`) * 100,2) ELSE 0 END AS `presentase_reject` FROM (select `transaksi_penjualan`.`tgl_pesanan` AS `tanggal`,`transaksi_penjualan_detail`.`kode_barang` AS `kode_barang`,`transaksi_penjualan_detail`.`nama_barang` AS `nama_barang`,`transaksi_penjualan_detail`.`qty` AS `jual`,0 AS `retur` from (`transaksi_penjualan_detail` join `transaksi_penjualan` on(`transaksi_penjualan`.`kode_pesanan` = `transaksi_penjualan_detail`.`kode_pesanan`)) union all select `retur_penjualan`.`tgl_penjualan` AS `tanggal`,`retur_penjualan_detail`.`kode_barang` AS `kode_barang`,`transaksi_penjualan_detail`.`nama_barang` AS `nama_barang`,0 AS `jual`,`retur_penjualan_detail`.`qty_retur` AS `retur` from ((`retur_penjualan_detail` join `retur_penjualan` on(`retur_penjualan`.`kode_rpenjualan` = `retur_penjualan_detail`.`kode_rpenjualan`)) left join `transaksi_penjualan_detail` on(`transaksi_penjualan_detail`.`kode_pesanan` = `retur_penjualan`.`kode_pesanan` and `transaksi_penjualan_detail`.`kode_barang` = `retur_penjualan_detail`.`kode_barang`))) AS `data_laporan` GROUP BY `data_laporan`.`tanggal`, `data_laporan`.`kode_barang`, `data_laporan`.`nama_barang` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_retur_pembelian`
--
DROP TABLE IF EXISTS `laporan_retur_pembelian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_retur_pembelian`  AS SELECT `rp`.`tgl_pembelian` AS `tanggal`, `ms`.`nama_supplier` AS `nama_supplier`, `rpd`.`kode_barang` AS `kode_barang`, `rpd`.`nama_barang` AS `nama_barang`, `rpd`.`qty_retur` AS `jumlah_barang`, `rpd`.`subtotal_retur` AS `harga_diretur`, `rp`.`keterangan` AS `alasan_pengembalian` FROM ((`retur_pembelian` `rp` left join `master_supplier` `ms` on(`rp`.`kode_supplier` = `ms`.`kode_supplier`)) left join `retur_pembelian_detail` `rpd` on(`rp`.`kode_rpembelian` = `rpd`.`kode_rpembelian`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_retur_penjualan`
--
DROP TABLE IF EXISTS `laporan_retur_penjualan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_retur_penjualan`  AS SELECT `rp`.`tgl_penjualan` AS `tanggal`, `rp`.`kode_pesanan` AS `kode_pesanan`, `mc`.`nama_customer` AS `nama_customer`, `rpd`.`kode_barang` AS `kode_barang`, `rpd`.`nama_barang` AS `nama_barang`, `rpd`.`qty_retur` AS `jumlah_barang`, `rpd`.`subtotal_retur` AS `harga_diretur`, `rp`.`keterangan` AS `alasan_pengembalian` FROM ((`retur_penjualan` `rp` left join `master_customer` `mc` on(`rp`.`kode_customer` = `mc`.`kode_customer`)) left join `retur_penjualan_detail` `rpd` on(`rp`.`kode_rpenjualan` = `rpd`.`kode_rpenjualan`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_stok_barang`
--
ALTER TABLE `laporan_stok_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_satuan` (`kode_satuan`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_customer`
--
ALTER TABLE `master_customer`
  ADD PRIMARY KEY (`kode_customer`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_jenis_palet`
--
ALTER TABLE `master_jenis_palet`
  ADD PRIMARY KEY (`kode_palet`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_karyawan`
--
ALTER TABLE `master_karyawan`
  ADD PRIMARY KEY (`kode_karyawan`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_kategori_barang`
--
ALTER TABLE `master_kategori_barang`
  ADD PRIMARY KEY (`kode_kategori`),
  ADD KEY `kode_user` (`kode_user`),
  ADD KEY `kode_user_2` (`kode_user`);

--
-- Indeks untuk tabel `master_kualitas`
--
ALTER TABLE `master_kualitas`
  ADD PRIMARY KEY (`kode_kualitas`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_rekening_pembayaran`
--
ALTER TABLE `master_rekening_pembayaran`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indeks untuk tabel `master_role`
--
ALTER TABLE `master_role`
  ADD PRIMARY KEY (`kode_role`);

--
-- Indeks untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`kode_satuan`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_supplier`
--
ALTER TABLE `master_supplier`
  ADD PRIMARY KEY (`kode_supplier`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`kode_user`),
  ADD KEY `kode_role` (`kode_role`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran_penjualan`
--
ALTER TABLE `pembayaran_penjualan`
  ADD PRIMARY KEY (`kode_pembayaran`);

--
-- Indeks untuk tabel `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD PRIMARY KEY (`kode_rpembelian`),
  ADD KEY `kode_pembelian` (`kode_pembelian`),
  ADD KEY `kode_pembelian_2` (`kode_pembelian`),
  ADD KEY `kode_supplier` (`kode_supplier`);

--
-- Indeks untuk tabel `retur_pembelian_detail`
--
ALTER TABLE `retur_pembelian_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `retur_penjualan`
--
ALTER TABLE `retur_penjualan`
  ADD PRIMARY KEY (`kode_rpenjualan`),
  ADD KEY `idx_retur_penjualan_customer` (`kode_customer`),
  ADD KEY `idx_retur_penjualan_pesanan` (`kode_pesanan`);

--
-- Indeks untuk tabel `retur_penjualan_detail`
--
ALTER TABLE `retur_penjualan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_retur_penjualan_detail_retur` (`kode_rpenjualan`),
  ADD KEY `idx_retur_penjualan_detail_pesanan` (`kode_pesanan`),
  ADD KEY `idx_retur_penjualan_detail_barang` (`kode_barang`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD PRIMARY KEY (`kode_pembelian`),
  ADD KEY `kode_supplier` (`kode_supplier`,`kode_user`),
  ADD KEY `kode_user` (`kode_user`);

--
-- Indeks untuk tabel `transaksi_pembelian_detail`
--
ALTER TABLE `transaksi_pembelian_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_pembelian` (`kode_pembelian`);

--
-- Indeks untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`kode_pesanan`),
  ADD KEY `kode_customer` (`kode_customer`);

--
-- Indeks untuk tabel `transaksi_penjualan_detail`
--
ALTER TABLE `transaksi_penjualan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_pesanan` (`kode_pesanan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_stok_barang`
--
ALTER TABLE `laporan_stok_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `retur_pembelian_detail`
--
ALTER TABLE `retur_pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `retur_penjualan_detail`
--
ALTER TABLE `retur_penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pembelian_detail`
--
ALTER TABLE `transaksi_pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `transaksi_penjualan_detail`
--
ALTER TABLE `transaksi_penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laporan_stok_barang`
--
ALTER TABLE `laporan_stok_barang`
  ADD CONSTRAINT `laporan_stok_barang_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel `master_barang`
--
ALTER TABLE `master_barang`
  ADD CONSTRAINT `master_barang_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `master_kategori_barang` (`kode_kategori`),
  ADD CONSTRAINT `master_barang_ibfk_2` FOREIGN KEY (`kode_satuan`) REFERENCES `master_satuan` (`kode_satuan`),
  ADD CONSTRAINT `master_barang_ibfk_3` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_customer`
--
ALTER TABLE `master_customer`
  ADD CONSTRAINT `master_customer_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_jenis_palet`
--
ALTER TABLE `master_jenis_palet`
  ADD CONSTRAINT `master_jenis_palet_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_karyawan`
--
ALTER TABLE `master_karyawan`
  ADD CONSTRAINT `master_karyawan_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_kategori_barang`
--
ALTER TABLE `master_kategori_barang`
  ADD CONSTRAINT `master_kategori_barang_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD CONSTRAINT `master_satuan_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_supplier`
--
ALTER TABLE `master_supplier`
  ADD CONSTRAINT `master_supplier_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD CONSTRAINT `master_user_ibfk_1` FOREIGN KEY (`kode_role`) REFERENCES `master_role` (`kode_role`);

--
-- Ketidakleluasaan untuk tabel `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD CONSTRAINT `transaksi_pembelian_ibfk_1` FOREIGN KEY (`kode_supplier`) REFERENCES `master_supplier` (`kode_supplier`),
  ADD CONSTRAINT `transaksi_pembelian_ibfk_2` FOREIGN KEY (`kode_user`) REFERENCES `master_user` (`kode_user`);

--
-- Ketidakleluasaan untuk tabel `transaksi_pembelian_detail`
--
ALTER TABLE `transaksi_pembelian_detail`
  ADD CONSTRAINT `transaksi_pembelian_detail_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  ADD CONSTRAINT `transaksi_pembelian_detail_ibfk_2` FOREIGN KEY (`kode_pembelian`) REFERENCES `transaksi_pembelian` (`kode_pembelian`);

--
-- Ketidakleluasaan untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD CONSTRAINT `transaksi_penjualan_ibfk_1` FOREIGN KEY (`kode_customer`) REFERENCES `master_customer` (`kode_customer`);

--
-- Ketidakleluasaan untuk tabel `transaksi_penjualan_detail`
--
ALTER TABLE `transaksi_penjualan_detail`
  ADD CONSTRAINT `transaksi_penjualan_detail_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  ADD CONSTRAINT `transaksi_penjualan_detail_ibfk_2` FOREIGN KEY (`kode_pesanan`) REFERENCES `transaksi_penjualan` (`kode_pesanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
