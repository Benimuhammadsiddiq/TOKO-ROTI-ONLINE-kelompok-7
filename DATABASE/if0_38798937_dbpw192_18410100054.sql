-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql307.infinityfree.com
-- Generation Time: May 13, 2025 at 10:00 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38798937_dbpw192_18410100054`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0001', 'M0002', 'P0001', 'Roti Sobek', '2'),
('B0001', 'M0001', 'P0001', 'Roti Sobek', '4'),
('B0001', 'M0004', 'P0001', 'Roti Sobek', '3'),
('B0002', 'M0001', 'P0002', 'Maryam', '4'),
('B0002', 'M0004', 'P0002', 'Maryam', '3'),
('B0002', 'M0003', 'P0002', 'Maryam', '2'),
('B0003', 'M0002', 'P0003', 'Kue tart coklat', '2'),
('B0003', 'M0003', 'P0003', 'Kue tart coklat', '5'),
('B0003', 'M0005', 'P0003', 'Kue tart coklat', '5');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0002', 'Rafi Akbar', 'a.rafy@gmail.com', 'rafi', '$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.', '0856748564'),
('C0003', 'Nagita Silvana', 'bambang@gmail.com', 'Nagita', '$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C', '087804616097'),
('C0004', 'Nadiya', 'nadiya@gmail.com', 'nadiya', '$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG', '0898765432'),
('C0005', 'Vezgard', 'siddiqbeni5@gmail.com', 'Vezgard', '$2y$10$zWHYuCOj.NLCS7oxoygNpevqEWol5zyQodUFypv0pW6613sCd3Xta', '085954062116'),
('C0006', 'ajiyoga', 'aji@gmail.com', 'ajiyoga', '$2y$10$1.0V.4RRQiLAMp/xt0Z.B.7OGcc/KvNS4fBPJ5XWBoQmBcCUOvJmO', '085855894087'),
('C0007', 'bachtiar', 'ghozi@gmail.com', 'Bachtiar', '$2y$10$7IxJIK6h3U5HYFmgs05Vh.XQC/QCNNV7Vf7YwJMgEdqv2muySWLW.', '+628123456789'),
('C0008', 'admin1', 'admin1@gmail.com', 'admin1', '$2y$10$lDv1WOyuKQzbLk4nHJt5LOq0o9Kkbey0IfDOI1166oMTRAh6.PeC6', '085954062116'),
('C0009', 'aji', 'aji374017@gmail.com', 'unesaroti', '$2y$10$G.PK5OQuKqdzyp80./jgvePJGP.SX7UtJ3eUp04Qz0ljlrsbPIdIO', '085855084087'),
('C0010', 'dila', 'sfadhila729@gmail.com', 'dila09', '$2y$10$aIf5FGiGTKzxAcL3lthfWexB7WoKn/Uv9.ys2YzNJaVYbUi6PXuja', '085246945505'),
('C0011', 'ajiyoga', 'ajiyoga20@gmail.com', 'aji', '$2y$10$No3Fnkq3RavZ4IxDuPzYpugbE7LScjU/5elOS25IGYS4o6rOrHtxe', '085855094087'),
('C0012', 'muhammad', 'aji374017@gmail.com', 'muhammad', '$2y$10$R/UnxGYrN9cNKLqs.kIB1uCfHFjoExmB1UHh0bv5CfNMHOudYW3la', '085855094087');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Tepung', '76', 'Kg', 1000, '2020-07-26'),
('M0002', 'Pengembang', '23', 'Kg', 1000, '2025-05-13'),
('M0003', 'Cream', '17', 'Kg', 3000, '2020-07-26'),
('M0004', 'Keju', '82', 'Kg', 4000, '2020-07-26'),
('M0005', 'Coklat', '0', 'Kg', 5000, '2020-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000),
(63, 'C0008', 'P01', 'Roti Sobek', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P01', 'Roti Sobek', '5f1d9154715a6.jpg', '																								Roti Enak Sobek Sobek aww\r\n																					', 10000),
('P02', 'Maryam', '5f1d9154715a4.jpg', 'Roti Maryam\r\n						', 15000),
('P03', 'Kue tart coklat', '5f1d9154715a9.jpg', 'Kuetar dengan varian rasa coklat enak dan lumer rasanya\r\n			', 100000),
('P04', 'Bolu Pisang Kacang ', '5f1d9154715a5.jpg', 'Bolu pisang lembut yang dibuat dari pisang matang pilihan, menghasilkan rasa manis alami dan aroma harum yang khas. Diperkaya dengan taburan kacang kenari (walnut) yang renyah, memberikan sensasi tekstur yang nikmat di setiap gigitan. Cocok untuk camilan santai, teman minum teh, atau oleh-oleh spesial. (20x10 cm loyang loaf)\r\n\r\n', 45000),
('P05', 'Roti Abon', '5f1d9154715b1.jpeg', 'Roti empuk dengan topping abon sapi melimpah', 12000),
('P06', 'Roti Pukis Keju Coklat', '5f1d9154715b2.jpeg', 'Roti manis topping keju dan meses coklat', 10000),
('P07', 'Roti Goreng Isi', '5f1d9154715b3.jpeg', 'Roti goreng berbentuk segitiga, renyah di luar, isi di dalam (smoke beef, coklat, dll)', 10000),
('P08', 'Klepon Gula Aren ', '5f1d9154715b5.jpeg', 'Klepon modern dengan isian gula aren cair berkualitas dan taburan kelapa muda parut yang gurih. Dibalut tekstur kenyal dari tepung ketan pilihan, cocok untuk suguhan istimewa atau hantaran bernuansa tradisional kekinian. pack (isi 10 pcs)', 22000),
('P09', 'Kue Semprong Gulung', '5f1d9154715b6.jpeg', 'Renyah, gurih, dan harum aroma kelapa. Kue semprong gulung Unesa Bakery cocok jadi camilan tradisional favorit yang tak lekang oleh waktu. Dihiasi cherry & daun mint untuk sentuhan modern.', 30000),
('P10', 'Bolu Gulung Keju ', '5f1d9154715a8.jpeg', 'Bolu gulung lembut dengan isian krim keju yang melimpah. Tekstur bolu yang empuk berpadu sempurna dengan rasa gurih dan manis dari krim keju, menjadikannya teman ideal untuk teh atau kopi. Cocok untuk sajian keluarga maupun hantaran spesial.\r\n roll (20 cm)', 40000),
('P11', 'Kue Putri Salju', '5f1d9154715a7.jpeg', 'Kue klasik favorit keluarga dengan taburan gula halus yang lembut dan lumer di mulut. Dibuat dari bahan premium dengan sentuhan mentega dan kacang mete, cocok untuk sajian Lebaran atau hampers.	', 28000),
('P12', 'Lapis Talas Keju', '5f1d9154715b4.jpeg', 'Perpaduan sempurna antara lapisan talas ungu, sponge vanilla lembut, dan topping keju melimpah. Lembut di setiap gigitan dan pas sebagai oleh-oleh atau camilan keluarga.\r\n', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(44, 'INV0001', 'C0005', 'P06', 'Roti Pukis Keju Coklat', 1, 10000, 'Pesanan Baru', '2025-05-12', 'Jawa Timur', 'Bangkalan', 'TanjungBumi', '22222', '2', '1', 0),
(45, 'INV0002', 'C0011', 'P04', 'Bolu Pisang Kacang ', 1, 45000, 'Pesanan Baru', '2025-05-12', 'jawa timur', 'surabaya', 'surabaya', '1234', '2', '1', 0),
(46, 'INV0002', 'C0011', 'P01', 'Roti Sobek', 1, 10000, 'Pesanan Baru', '2025-05-12', 'jawa timur', 'surabaya', 'surabaya', '1234', '2', '1', 0),
(47, 'INV0003', 'C0011', 'P01', 'Roti Sobek', 1, 10000, 'Pesanan Baru', '2025-05-13', 'jawa timur', 'surabaya', 'gayungan', '60234', '2', '1', 0),
(48, 'INV0004', 'C0005', 'P01', 'Roti Sobek', 1, 10000, '0', '2025-05-13', 'Indonesia', 'Bangkalan', 'Jl. Raya Macajah no 56, macajah, Kec. Tj.Bumi, kabupaten Bangkalan, Jawa Timur 69156', '11111', '1', '0', 0),
(49, 'INV0005', 'C0005', 'P07', 'Roti Goreng Isi', 1, 10000, '0', '2025-05-13', 'jawa timur', 'Bangkalan', 'Bangkalan', '63444', '1', '0', 0),
(50, 'INV0006', 'C0012', 'P01', 'Roti Sobek', 1, 10000, '0', '2025-05-13', 'jawa timur', 'surabaya', 'gayungan', '123456', '1', '0', 0),
(51, 'INV0007', 'C0012', 'P01', 'Roti Sobek', 1, 10000, '0', '2025-05-13', 'jawa timur', 'surabaya', 'gayungan', '123456', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
