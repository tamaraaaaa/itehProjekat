-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 09:37 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knjizara`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `knjigaID` int(11) NOT NULL,
  `knjigaNaziv` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `knjigaIzdanje` int(11) NOT NULL,
  `knjigaStanje` int(11) NOT NULL,
  `knjigaCena` int(11) NOT NULL,
  `pisacID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`knjigaID`, `knjigaNaziv`, `knjigaIzdanje`, `knjigaStanje`, `knjigaCena`, `pisacID`) VALUES
(1, 'Ex Ponto', 12, 10, 1500, 5),
(2, 'Veštica iz Portobela', 7, 40, 2000, 1),
(4, 'Rat i mir', 13, 28, 3500, 8),
(5, 'Gordost i predrasuda', 16, 6, 2500, 3),
(6, 'Stranac', 7, 35, 1800, 4),
(7, 'Gospođica', 18, 40, 1400, 5),
(8, 'Sto godina samoće', 9, 29, 1500, 9),
(9, 'Tvrđava', 18, 32, 2000, 7),
(10, 'Keri', 19, 5, 900, 2),
(11, 'Znakovi pored puta', 5, 10, 2200, 5),
(12, 'Zločin i kazna', 17, 24, 1500, 6),
(13, 'Braća Karamazovi', 9, 17, 1600, 6),
(14, 'Derviš i smrt', 13, 44, 2200, 7),
(16, 'Ana Karenjina', 20, 26, 3000, 8),
(17, 'Ljubav u doba kolere', 21, 11, 1100, 9),
(18, 'Idiot', 14, 7, 999, 6),
(19, 'Preljuba', 8, 9, 1239, 1),
(20, 'Zapisi iz podzemlja', 5, 4, 1199, 6),
(21, 'Travnička hronika', 18, 8, 1250, 5),
(22, 'Mit o Sizifu', 10, 15, 2500, 4),
(23, 'Hronika najavljene smrti', 15, 20, 1590, 9),
(24, 'Tuđa zemlja', 11, 16, 1150, 7),
(25, 'Ostrvo', 6, 26, 1400, 7),
(26, 'Pad', 8, 8, 1230, 4),
(27, 'Prokleta avlija', 20, 32, 1450, 5),
(28, 'Na Drini ćuprija', 25, 44, 1250, 5),
(29, 'Put Alije Đerzeleza', 15, 36, 650, 5),
(30, 'Most na Žepi', 11, 28, 790, 5),
(31, 'Jelena žena koje nema', 9, 14, 1260, 5),
(32, 'Ujka Vanja', 17, 19, 1500, 11),
(33, 'Evgenije Onjegin', 20, 28, 1800, 10),
(34, 'Jedanaest minuta', 24, 11, 1980, 1),
(35, 'Razum i osećajnost', 20, 6, 690, 3),
(36, 'To', 15, 20, 900, 2),
(37, 'Ruslan i Ljudmila', 13, 5, 1360, 10),
(38, 'Brida', 15, 9, 1850, 1),
(39, 'Pod tuđim uticajem', 10, 10, 2000, 3),
(40, 'Uporište', 12, 6, 1400, 2),
(41, 'Dnevnik jednog čarobnjaka', 9, 14, 1600, 1),
(42, 'Dubrovski', 10, 16, 1700, 10),
(43, 'Božanstvena komedija', 24, 22, 2000, 12),
(44, 'Kapetanova kći', 14, 6, 1199, 10),
(45, 'Tri sestre', 10, 7, 890, 11),
(46, 'Čistiliste', 10, 10, 1780, 12),
(47, 'Seobe', 16, 33, 2000, 13),
(48, 'Samac', 10, 12, 1780, 14),
(49, 'Eldorado', 11, 19, 1350, 14),
(50, 'Dnevnik o Čarnojeviću', 16, 21, 1600, 13),
(51, 'Ljubav u Toskani', 12, 13, 1700, 13),
(53, 'Lep dan za umiranje', 12, 23, 1900, 14),
(54, 'Hronika izgubljenog grada', 10, 13, 1230, 14),
(55, 'Zli dusi', 19, 2, 2000, 6),
(57, 'Priča brodolomnika', 14, 6, 890, 9),
(58, 'Alhemičar', 25, 32, 1900, 1),
(59, 'Igra prestola-Svet leda i vatre', 2, 20, 2500, 15),
(60, 'Igra prestola-Ples sa zmajevima', 5, 15, 2500, 15),
(61, 'Igra prestola-Vitez sedam kraljevstava', 6, 25, 2500, 15),
(62, 'Don Kihot', 6, 30, 2000, 16),
(63, 'Una', 5, 12, 1900, 14);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id_korisnika` int(10) NOT NULL,
  `ime` varchar(15) COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8_croatian_ci NOT NULL,
  `username` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id_korisnika`, `ime`, `prezime`, `email`, `telefon`, `username`, `password`, `status`) VALUES
(33, 'Sanja', 'Milovanovic', 'sanja.milovanovic@gmail.c', '023212315', 'sanja', '674033583816e73167b0ca098ca0c65a', 'Korisnik'),
(34, 'Milica', 'Dokic', 'milica@gmail.com', '03213154654', 'milica', '932e512d0da2821efe2b81539f0b82c5', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `kupovina`
--

CREATE TABLE `kupovina` (
  `kupovinaID` int(10) NOT NULL,
  `knjigaID` int(10) NOT NULL,
  `kolicina` int(10) NOT NULL,
  `korisnik` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `kupovina`
--

INSERT INTO `kupovina` (`kupovinaID`, `knjigaID`, `kolicina`, `korisnik`, `datum`) VALUES
(1, 36, 1, 'milica', '2018-12-23'),
(2, 59, 2, 'milica', '2018-12-23'),
(3, 11, 1, 'milica', '2018-12-23'),
(4, 5, 3, 'milica', '2017-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `pisac`
--

CREATE TABLE `pisac` (
  `pisacID` int(11) NOT NULL,
  `pisacIme` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pisacPrezime` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `pisacDrzava` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pisac`
--

INSERT INTO `pisac` (`pisacID`, `pisacIme`, `pisacPrezime`, `pisacDrzava`) VALUES
(1, 'Paulo', 'Koeljo', 'Brazil'),
(2, 'Stiven', 'King', 'SAD'),
(3, 'Džejn', 'Ostin', 'Velika Britanija'),
(4, 'Albert', 'Kami', 'Francuska'),
(5, 'Ivo', 'Andrić', 'Srbija'),
(6, 'Fjodor', 'Dostojevski', 'Rusija'),
(7, 'Meša', 'Selimović', 'Srbija'),
(8, 'Lav', 'Tolstoj', 'Rusija'),
(9, 'Gabrijel', 'Garsija Markes', 'Kolumbija'),
(10, 'Aleksandar', 'Puškin', 'Rusija'),
(11, 'Anton', 'Čehov', 'Rusija'),
(12, 'Dante', 'Aligijeri', 'Italija'),
(13, 'Miloš', 'Crnjanski', 'Srbija'),
(14, 'Momo', 'Kapor', 'Srbija'),
(15, 'Dzordz R.R.', 'Martin', 'SAD'),
(16, 'Migel ', 'de Servantes', 'Spanija'),
(17, 'Elena', 'Ferante', 'Italija');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`knjigaID`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id_korisnika`);

--
-- Indexes for table `kupovina`
--
ALTER TABLE `kupovina`
  ADD PRIMARY KEY (`kupovinaID`);

--
-- Indexes for table `pisac`
--
ALTER TABLE `pisac`
  ADD PRIMARY KEY (`pisacID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `knjigaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id_korisnika` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kupovina`
--
ALTER TABLE `kupovina`
  MODIFY `kupovinaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pisac`
--
ALTER TABLE `pisac`
  MODIFY `pisacID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
