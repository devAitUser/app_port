-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 nov. 2022 à 20:57
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ged`
--

-- --------------------------------------------------------

--
-- Structure de la table `attribut_champs`
--

CREATE TABLE `attribut_champs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_champs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_champs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dossier_champs_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `attribut_champs`
--

INSERT INTO `attribut_champs` (`id`, `nom_champs`, `type_champs`, `dossier_champs_id`, `created_at`, `updated_at`) VALUES
(31, 'fichier', 'Fichier', 61, NULL, NULL),
(32, 'Objet', 'Text', 61, NULL, '2022-11-07 18:39:05'),
(33, 'fichier', 'Fichier', 62, NULL, NULL),
(34, 'Objet', 'Text', 62, NULL, '2022-11-07 18:40:23'),
(35, 'fichier', 'Fichier', 63, NULL, NULL),
(36, 'Objet', 'Text', 63, NULL, '2022-11-07 18:40:17'),
(37, 'fichier', 'Fichier', 64, NULL, NULL),
(38, 'Objet', 'Text', 64, NULL, '2022-11-07 18:40:12'),
(39, 'fichier', 'Fichier', 65, NULL, NULL),
(40, 'Objet', 'Text', 65, NULL, '2022-11-07 18:40:06'),
(41, 'fichier', 'Fichier', 66, NULL, NULL),
(42, 'Objet', 'Text', 66, NULL, '2022-11-07 18:40:00'),
(43, 'fichier', 'Fichier', 76, NULL, NULL),
(44, 'Objet', 'Text', 76, NULL, '2022-11-07 18:38:34'),
(45, 'fichier', 'Fichier', 77, NULL, NULL),
(46, 'Objet', 'Text', 77, NULL, '2022-11-07 18:38:40'),
(47, 'fichier', 'Fichier', 78, NULL, NULL),
(48, 'Objet', 'Text', 78, NULL, '2022-11-07 18:38:44'),
(49, 'fichier', 'Fichier', 79, NULL, NULL),
(50, 'Objet', 'Text', 79, NULL, '2022-11-07 18:38:48'),
(51, 'fichier', 'Fichier', 80, NULL, NULL),
(52, 'Objet', 'Text', 80, NULL, '2022-11-07 18:38:52'),
(53, 'fichier', 'Fichier', 82, NULL, NULL),
(54, 'Objet', 'Text', 82, NULL, '2022-11-07 18:38:56'),
(55, 'fichier', 'Fichier', 166, '2022-11-07 18:47:33', '2022-11-07 18:47:33'),
(56, 'Object', 'Text', 166, '2022-11-07 18:47:33', '2022-11-07 18:47:33'),
(57, 'Fichier', 'Fichier', 167, '2022-11-07 18:48:20', '2022-11-07 18:48:20'),
(58, 'Objet', 'Text', 167, '2022-11-07 18:48:20', '2022-11-07 18:48:20'),
(59, 'Fichier', 'Fichier', 168, '2022-11-07 18:48:59', '2022-11-07 18:48:59'),
(60, 'Objet', 'Text', 168, '2022-11-07 18:48:59', '2022-11-07 18:48:59'),
(61, 'Fichier', 'Fichier', 170, '2022-11-07 18:50:51', '2022-11-07 18:50:51'),
(62, 'Objet', 'Text', 170, '2022-11-07 18:50:51', '2022-11-07 18:50:51'),
(63, 'fichier', 'Fichier', 171, '2022-11-07 18:51:38', '2022-11-07 18:51:38'),
(64, 'Objet', 'Text', 171, '2022-11-07 18:51:38', '2022-11-07 18:51:38'),
(65, 'fichier', 'Fichier', 169, NULL, NULL),
(66, 'Objet', 'Text', 169, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribut_champs_dossier_champs_id_foreign` (`dossier_champs_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  ADD CONSTRAINT `attribut_champs_dossier_champs_id_foreign` FOREIGN KEY (`dossier_champs_id`) REFERENCES `dossier_champs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
