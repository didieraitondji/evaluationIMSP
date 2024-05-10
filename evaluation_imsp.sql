-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 10 mai 2024 à 22:46
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `evaluation_imsp`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `numma` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_naissance` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `codfil` int DEFAULT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedait` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`numma`),
  KEY `codfil` (`codfil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`numma`, `nom`, `prenoms`, `date_naissance`, `codfil`, `createdat`, `updatedait`) VALUES
('12753916', 'AITONDJI', 'Tolome Didier', '23/05/1998', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12755003', 'ABALO', 'Jean Claude', '01/01/2000', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12754916', 'KOKOU', 'Todagba Jud', '23/05/2001', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12753716', 'ZOGBO', 'Belo Rébecca', '22/08/2000', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12753848', 'MINDI', 'Zoubi Didier', '23/08/1997', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12743914', 'BOBO', 'Divine Marie', '23/07/1996', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12754945', 'EYON', 'Vivi Rosine', '22/04/2003', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12754587', 'GOGAN', 'Sènami Viviane', '02/12/1997', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12743817', 'AKOVI', 'Tognon Robert', '15/05/2000', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
('12478590', 'TOGBA ZOWA', 'Juvenal', '30/03/1999', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01');

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
CREATE TABLE IF NOT EXISTS `filiere` (
  `codfil` int NOT NULL AUTO_INCREMENT,
  `libfil` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedait` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`codfil`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`codfil`, `libfil`, `createdat`, `updatedait`) VALUES
(1, 'L3-Mathématique', '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(2, 'L3-Informatique', '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(3, 'GIL2', '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(4, 'GIL3', '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(5, 'GIL5', '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(6, 'L3-Physique', '2024-05-10 22:13:01', '2024-05-10 22:13:01');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `codmat` int NOT NULL AUTO_INCREMENT,
  `libmat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nbrecredit` int NOT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedait` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`codmat`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`codmat`, `libmat`, `nbrecredit`, `createdat`, `updatedait`) VALUES
(1, 'Fondamentaux des SE', 5, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(2, 'Probabilité', 4, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(3, 'Analyse Différentielle', 6, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(4, 'Propagation des Ondes', 3, '2024-05-10 22:13:01', '2024-05-10 22:13:01'),
(5, 'Service des Réseau Classique', 6, '2024-05-10 22:13:01', '2024-05-10 22:13:01');

-- --------------------------------------------------------

--
-- Structure de la table `releve`
--

DROP TABLE IF EXISTS `releve`;
CREATE TABLE IF NOT EXISTS `releve` (
  `numma` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `codmat` int NOT NULL,
  `note` double NOT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`numma`,`codmat`),
  KEY `codmat` (`codmat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `releve`
--

INSERT INTO `releve` (`numma`, `codmat`, `note`, `createdat`, `updatedat`) VALUES
('12753916', 2, 15, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12755003', 2, 18, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12754916', 2, 15, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12753716', 2, 8, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12753848', 2, 19, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12743914', 2, 4, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12754945', 2, 6, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12754587', 2, 8, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12743817', 2, 15, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12478590', 2, 15, '2024-05-10 22:16:53', '2024-05-10 22:16:53'),
('12753916', 4, 12, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12755003', 4, 14, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12754916', 4, 15, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12753716', 4, 0, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12753848', 4, 0, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12743914', 4, 0, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12754945', 4, 0, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12754587', 4, 17, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12743817', 4, 0, '2024-05-10 22:28:16', '2024-05-10 22:28:16'),
('12478590', 4, 19, '2024-05-10 22:28:16', '2024-05-10 22:28:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
