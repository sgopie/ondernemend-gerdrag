-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 31 mrt 2025 om 13:00
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ondernemend_gedrag`
--
CREATE DATABASE IF NOT EXISTS `ondernemend_gedrag` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ondernemend_gedrag`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Games'),
(2, 'Stores'),
(3, 'Products'),
(4, 'Work'),
(5, 'Songs'),
(6, 'Websites'),
(7, 'Movies'),
(8, 'Food'),
(9, 'Clothes'),
(10, 'Shoes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250331102044', '2025-03-31 12:20:50', 6),
('DoctrineMigrations\\Version20250331104405', '2025-03-31 12:44:10', 7),
('DoctrineMigrations\\Version20250331104553', '2025-03-31 12:45:56', 39),
('DoctrineMigrations\\Version20250331105407', '2025-03-31 12:54:10', 23),
('DoctrineMigrations\\Version20250331105437', '2025-03-31 12:54:40', 10),
('DoctrineMigrations\\Version20250331105530', '2025-03-31 12:55:35', 14),
('DoctrineMigrations\\Version20250331105621', '2025-03-31 12:56:25', 38);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `review`
--

INSERT INTO `review` (`id`, `first_name`, `last_name`, `description`, `category_id`) VALUES
(1, 'sud', 'gopie', 'harman is gay', 4),
(2, 'kimberly', 'njio', 'kimberly is de beste', 10);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C612469DE2` (`category_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
