-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2018 at 01:13 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euprava`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_k_rodjenih`
--

DROP TABLE IF EXISTS `m_k_rodjenih`;
CREATE TABLE IF NOT EXISTS `m_k_rodjenih` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `dmg_rodjenja` varchar(20) NOT NULL,
  `pol` varchar(5) NOT NULL,
  `mjesto` varchar(100) NOT NULL,
  `jmbg` varchar(100) NOT NULL,
  `drzavljanstvo` varchar(100) NOT NULL,
  `nacionalnost` varchar(100) NOT NULL,
  `prebivaliste` varchar(100) NOT NULL,
  `ime_oca` varchar(100) NOT NULL,
  `ime_majke` varchar(100) NOT NULL,
  `naknadni_upis` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_k_rodjenih`
--

INSERT INTO `m_k_rodjenih` (`ID`, `ime`, `prezime`, `dmg_rodjenja`, `pol`, `mjesto`, `jmbg`, `drzavljanstvo`, `nacionalnost`, `prebivaliste`, `ime_oca`, `ime_majke`, `naknadni_upis`) VALUES
(3, 'Airi', 'Satou', '01.01.1989', 'M', 'Sarajevo', '1234567891456', 'BiH', '---', 'Banjaluka', 'Mitar', 'Savka Posavka', '----'),
(8, 'Maja', 'Majic', '8.5.1976', 'Z', 'Bl', '101010055', 'Bosnia & Herzegovina', '---', 'Banjaluka', 'Milovan', 'Mira Miric', '----'),
(5, 'Bradley', 'Greer	', '6.7.1979', 'M', 'Bl', '012454', 'Bosnia & Herzegovina', '---', 'Banjaluka', 'Mujo', 'Mitrovka Miric', '---'),
(7, 'Aleksandar', 'Aleksandrovic', '6.7.1979', 'M', 'Bl', '101010000101', 'Bosnia & Herzegovina', '---', 'Banjaluka', 'Ivana', 'Mitrovka Miric', '----'),
(9, 'Bruno', 'Savic', '6.7.1975', 'M', 'Bl', '10101005546', 'Bosnia & Herzegovina', '---', 'Banjaluka', 'Sinisa', 'Slavica Slavic', '----'),
(10, 'Mitar', 'Miric', '04.07.1988', 'M', 'Derventa', '01245445658', 'Bosnia & Herzegovina', '---', 'Derventa', 'Miroslav', 'Mira Ilic', '----'),
(11, 'Ivana', 'Majic', '0705989105047', 'Z', 'Bl', '0705989105047', 'Bosnia & Herzegovina', 'S.', 'banjaluka', 'Mitar', 'Dragana Mirkovic', '--');

-- --------------------------------------------------------

--
-- Table structure for table `m_k_umrlih`
--

DROP TABLE IF EXISTS `m_k_umrlih`;
CREATE TABLE IF NOT EXISTS `m_k_umrlih` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `mjesto_sahrane` varchar(100) NOT NULL,
  `dmg_smrti` varchar(100) NOT NULL,
  `mjesto_rodjenja` varchar(100) NOT NULL,
  `jmbg` varchar(100) NOT NULL,
  `drzavljanstvo` varchar(100) NOT NULL,
  `bracno_stanje` varchar(100) NOT NULL,
  `prebivaliste` varchar(100) NOT NULL,
  `ime_oca` varchar(100) NOT NULL,
  `ime_majke` varchar(100) NOT NULL,
  `prijav_smrti` varchar(100) NOT NULL,
  `naknadni_upis` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_k_umrlih`
--

INSERT INTO `m_k_umrlih` (`id`, `ime`, `prezime`, `mjesto_sahrane`, `dmg_smrti`, `mjesto_rodjenja`, `jmbg`, `drzavljanstvo`, `bracno_stanje`, `prebivaliste`, `ime_oca`, `ime_majke`, `prijav_smrti`, `naknadni_upis`) VALUES
(2, 'Zoran', 'Zoranic', 'Banja Luka', '05.06.2005', 'Banja Luka', '456897131258', 'Bosnia & Herzegovina', 'u braku', 'Banjaluka', 'Krsta', 'Lara Laric', 'Kosta Kostic', '----'),
(3, 'Isak', 'Jelic', 'Derventa', '04..05.2007', 'Prnjavor', '0124541256456', 'Bosnia & Herzegovina', 'u braku', 'Prnjavor', 'Vasilije', 'Jasmina Jasnic', 'Jana Jelic', '----');

-- --------------------------------------------------------

--
-- Table structure for table `m_k_vjencanih`
--

DROP TABLE IF EXISTS `m_k_vjencanih`;
CREATE TABLE IF NOT EXISTS `m_k_vjencanih` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dmg_braka` varchar(100) NOT NULL,
  `mjesto_braka` varchar(100) NOT NULL,
  `prezime_m` varchar(100) NOT NULL,
  `prezime_z` varchar(100) NOT NULL,
  `ime_m` varchar(100) NOT NULL,
  `ime_z` varchar(100) NOT NULL,
  `mjesto_m` varchar(100) NOT NULL,
  `mjesto_z` varchar(100) NOT NULL,
  `datum_m` varchar(100) NOT NULL,
  `datum_z` varchar(100) NOT NULL,
  `jmbg_m` varchar(100) NOT NULL,
  `jmbg_z` varchar(100) NOT NULL,
  `drz_m` varchar(100) NOT NULL,
  `drz_z` varchar(100) NOT NULL,
  `nacionalnost_m` varchar(100) NOT NULL,
  `nacionalnost_z` varchar(100) NOT NULL,
  `prebivaliste_m` varchar(100) NOT NULL,
  `prebivaliste_z` varchar(100) NOT NULL,
  `ime_oca_m` varchar(100) NOT NULL,
  `ime_oca_z` varchar(100) NOT NULL,
  `ime_majke_m` varchar(100) NOT NULL,
  `ime_majke_z` varchar(100) NOT NULL,
  `naknadni_upis` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_k_vjencanih`
--

INSERT INTO `m_k_vjencanih` (`id`, `dmg_braka`, `mjesto_braka`, `prezime_m`, `prezime_z`, `ime_m`, `ime_z`, `mjesto_m`, `mjesto_z`, `datum_m`, `datum_z`, `jmbg_m`, `jmbg_z`, `drz_m`, `drz_z`, `nacionalnost_m`, `nacionalnost_z`, `prebivaliste_m`, `prebivaliste_z`, `ime_oca_m`, `ime_oca_z`, `ime_majke_m`, `ime_majke_z`, `naknadni_upis`) VALUES
(6, '05.05.2010', 'Trebinje', 'Antonic', 'Aleksic', 'Antonio', 'Aleksija', 'Trebinje', 'Sarajevo', '07.09.1985', '07.05.1989', '0123456745677', '987654324555', 'RS', 'RS', 'hrvatska', 'srpska', 'Trebinje', 'Trebinje', 'Branimir', 'Bratislav', 'Vukica Srdic', 'Visnja Visnjic', '----'),
(2, '01.08.2015', ' Banja Luka', 'Jankovic', 'Smilcic', 'Milos', 'Ivana', 'Sarajevo', 'Banja Luka', '07.09.1985', '07.05.1989', '0123456789', '987654324', 'RS', 'RH', 'srpska', 'hrvatska', 'Banja LUka', 'Banja Luka', 'Milovan', 'Vinko', 'Snjezana Satara', 'Dragana MIlosevic', '----'),
(3, '05.05.2005', ' Banja Luka', 'Avramovic', 'Majic', 'Avram', 'Maja', 'Sarajevo', 'Prijedor', '05.05.1977', '07.07.1985', '01234567456', '98765432456', 'RS', 'RS', '--', 'srpska', 'Derventa', 'Derventa', 'Mitar', 'Mario', 'Mirjana Mirjanic', 'Savka Savic', '----'),
(4, '09.08.1987', 'Laktasi', 'Andrija', 'Biserka', 'Andric', 'Biseric', 'Prnjavor', 'Ljubinje', '05.06.1967', '04.05.1967', '444646546456', '9787978979789', 'RS', 'RS', '--', 'srpska', 'Prnjavor', 'Prnjavor', 'Avram', 'Alimpije', 'Bogdana Bogdanic', 'Bozidarka Bozanic', '----'),
(5, '05.05.2010', 'Trebinje', 'Antonic', 'Aleksic', 'Antonio', 'Aleksija', 'Trebinje', 'Sarajevo', '07.09.1985', '07.05.1989', '0123456745677', '987654324555', 'RS', 'RS', 'hrvatska', 'srpska', 'Trebinje', 'Trebinje', 'Branimir', 'Bratislav', 'Vukica Srdic', 'Visnja Visnjic', '----');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(3, 'test', '$2y$10$sldKNmBlr6OUMSBpY3.33eKNHVh5Wv5SgyxMR351xTLx4BSc8uwCm'),
(4, 'admin', '$2y$10$A11g1ORsJqiWa76yHVtwfuMmD20aOhMY6WjW.GAhrXhWj7LvCCWoO'),
(5, 'administrator', '$2y$10$M8GezPV7ndC3DMytHCEyge0mmECRxXtt6doLCovVsG9Wjr5tEaOoS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
