-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 nov. 2022 à 22:43
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
-- Structure de la table `attributs_dossiers`
--

CREATE TABLE `attributs_dossiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_champs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_champs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dossier_id` bigint(20) UNSIGNED NOT NULL,
  `champs_id` int(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `boites`
--

CREATE TABLE `boites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objet` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_boite` int(11) NOT NULL,
  `premier_date` date NOT NULL,
  `dernier_date` date NOT NULL,
  `code_topographe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarque` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organigramme_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_champs`
--

CREATE TABLE `dossier_champs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `nom_champs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organigramme_id` bigint(20) UNSIGNED NOT NULL,
  `entite_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossier_champs`
--

INSERT INTO `dossier_champs` (`id`, `parent_id`, `nom_champs`, `organigramme_id`, `entite_id`, `created_at`, `updated_at`) VALUES
(172, 0, 'Suivi fonctionnement balisage maritime', 7, 18, '2022-11-09 17:02:45', '2022-11-09 17:02:45'),
(173, 0, 'Suivi fonctionnement VTS', 7, 18, '2022-11-09 17:02:54', '2022-11-09 17:02:54'),
(174, 0, 'Suivi de la performance portuaire', 7, 18, '2022-11-09 17:03:03', '2022-11-09 17:03:03'),
(175, 0, 'Gestion du trafic portuaire', 7, 18, '2022-11-09 17:03:11', '2022-11-09 17:03:11'),
(176, 0, 'Gestion nautique du port', 7, 18, '2022-11-09 17:03:21', '2022-11-09 17:03:21'),
(177, 172, 'Fonctionnement balisage Maritime', 7, 18, '2022-11-09 17:03:32', '2022-11-09 17:03:32'),
(178, 172, 'Avis aux navigateurs', 7, 18, '2022-11-09 17:03:46', '2022-11-09 17:03:46'),
(179, 173, 'Fonctionnement équipements VTS', 7, 18, '2022-11-09 17:04:34', '2022-11-09 17:04:34'),
(181, 175, 'Gestion du trafic portuaire', 7, 18, '2022-11-09 17:08:28', '2022-11-09 17:08:28'),
(182, 176, 'Commission nautique du port', 7, 18, '2022-11-09 17:09:05', '2022-11-09 17:09:05'),
(183, 174, 'Dossier suivi de la performance portuaire', 7, 18, '2022-11-09 17:10:38', '2022-11-09 17:10:38'),
(184, 176, 'Documents nautiques', 7, 18, '2022-11-09 17:11:05', '2022-11-09 17:11:05'),
(185, 176, 'Travaux nautiques', 7, 18, '2022-11-09 17:11:17', '2022-11-09 17:11:17'),
(186, 0, 'Gestion de la réglementation portuaire', 7, 18, '2022-11-09 17:11:49', '2022-11-09 17:11:49'),
(187, 0, 'Suivi judiciaire du trafic maritime', 7, 18, '2022-11-09 17:12:07', '2022-11-09 17:12:07'),
(188, 0, 'Appel d’offres', 7, 18, '2022-11-09 17:12:17', '2022-11-09 17:12:17'),
(189, 0, 'Marché', 7, 18, '2022-11-09 17:12:30', '2022-11-09 17:12:30'),
(190, 0, 'Bon de commande', 7, 18, '2022-11-09 17:12:41', '2022-11-09 17:12:41'),
(191, 0, 'Règlementations', 7, 18, '2022-11-09 17:12:51', '2022-11-09 17:12:51'),
(192, 0, 'Etudes', 7, 18, '2022-11-09 17:12:58', '2022-11-09 17:12:58'),
(193, 0, 'Conventions', 7, 18, '2022-11-09 17:13:06', '2022-11-09 17:13:06'),
(194, 186, 'Police des Ports', 7, 18, '2022-11-09 17:13:45', '2022-11-09 17:13:45'),
(195, 187, 'Saisie conservatoire et blocages des navires', 7, 18, '2022-11-09 17:14:07', '2022-11-09 17:14:07'),
(196, 188, 'Documents produits', 7, 18, '2022-11-09 17:14:24', '2022-11-09 17:14:24'),
(197, 188, 'Dossier d’ouverture des AO', 7, 18, '2022-11-09 17:14:37', '2022-11-09 17:14:37'),
(198, 188, 'Dossier administratif', 7, 18, '2022-11-09 17:14:49', '2022-11-09 17:14:49'),
(199, 188, 'Offre technique', 7, 18, '2022-11-09 17:15:06', '2022-11-09 17:15:06'),
(200, 188, 'Offre financière', 7, 18, '2022-11-09 17:15:28', '2022-11-09 17:15:28'),
(201, 188, 'Les envois et réponses', 7, 18, '2022-11-09 17:15:42', '2022-11-09 17:15:42'),
(202, 189, 'Dossier d’exécution', 7, 18, '2022-11-09 17:16:00', '2022-11-09 17:16:00'),
(203, 189, 'Dossier de paiement', 7, 18, '2022-11-09 17:16:14', '2022-11-09 17:16:14'),
(204, 190, 'Documents produits par ANP', 7, 18, '2022-11-09 17:16:43', '2022-11-09 17:16:43'),
(205, 190, 'Titulaire du BC', 7, 18, '2022-11-09 17:17:02', '2022-11-09 17:17:02'),
(206, 191, 'Textes', 7, 18, '2022-11-09 17:17:24', '2022-11-09 17:17:24'),
(207, 192, 'Etudes direction générale', 7, 18, '2022-11-09 17:17:42', '2022-11-09 17:17:42'),
(208, 192, 'Etudes direction régionale', 7, 18, '2022-11-09 17:18:05', '2022-11-09 17:18:05'),
(209, 193, 'Dossier convention avec la direction de la météo', 7, 18, '2022-11-09 17:18:26', '2022-11-09 17:18:26'),
(210, 0, 'Gestion de Sureté', 7, 19, '2022-11-09 17:23:30', '2022-11-09 17:23:30'),
(211, 0, 'Gestion de Sécurité', 7, 19, '2022-11-09 17:23:43', '2022-11-09 17:23:43'),
(212, 0, 'Environnement', 7, 19, '2022-11-09 17:23:53', '2022-11-09 17:23:53'),
(213, 0, 'Appel d’offres', 7, 19, '2022-11-09 17:24:04', '2022-11-09 17:24:04'),
(214, 0, 'Marché', 7, 19, '2022-11-09 17:24:11', '2022-11-09 17:24:11'),
(215, 0, 'Bon de commande', 7, 19, '2022-11-09 17:24:19', '2022-11-09 17:24:19'),
(216, 0, 'Règlementations', 7, 19, '2022-11-09 17:24:31', '2022-11-09 17:24:31'),
(217, 0, 'Etudes', 7, 19, '2022-11-09 17:24:38', '2022-11-09 17:24:38'),
(218, 0, 'Conventions', 7, 19, '2022-11-09 17:24:46', '2022-11-09 17:24:46'),
(219, 0, 'Réglementation Opérationnelle', 7, 19, '2022-11-09 17:24:57', '2022-11-09 17:24:57'),
(220, 210, 'Dossier de conformité ISPS', 7, 19, '2022-11-09 17:25:50', '2022-11-09 17:25:50'),
(221, 210, 'Suivie de mise en œuvre de sûreté au Port', 7, 19, '2022-11-09 17:26:16', '2022-11-09 17:26:16'),
(222, 211, 'Plans de sécurité', 7, 19, '2022-11-09 17:26:27', '2022-11-09 17:26:27'),
(223, 211, 'Suivie de mise en œuvre de sûreté au Port', 7, 19, '2022-11-09 17:26:39', '2022-11-09 17:26:39'),
(225, 212, 'Gestion d’environnement', 7, 19, '2022-11-09 17:27:54', '2022-11-09 17:27:54'),
(226, 213, 'Documents produits', 7, 19, '2022-11-09 17:28:07', '2022-11-09 17:28:07'),
(227, 213, 'Dossier d’ouverture des AO', 7, 19, '2022-11-09 17:28:23', '2022-11-09 17:28:23'),
(228, 213, 'Dossier administratif', 7, 19, '2022-11-09 17:28:40', '2022-11-09 17:28:40'),
(229, 213, 'Offre technique', 7, 19, '2022-11-09 17:28:53', '2022-11-09 17:28:53'),
(230, 213, 'Offre financière', 7, 19, '2022-11-09 17:30:11', '2022-11-09 17:30:11'),
(231, 213, 'Les envois et réponses', 7, 19, '2022-11-09 17:30:28', '2022-11-09 17:30:28'),
(232, 214, 'Dossier d’exécution', 7, 19, '2022-11-09 17:30:40', '2022-11-09 17:30:40'),
(233, 214, 'Dossier de paiement', 7, 19, '2022-11-09 17:30:51', '2022-11-09 17:30:51'),
(234, 215, 'Documents produits par ANP', 7, 19, '2022-11-09 17:31:03', '2022-11-09 17:31:03'),
(235, 215, 'Titulaire du BC', 7, 19, '2022-11-09 17:31:14', '2022-11-09 17:31:14'),
(236, 216, 'textes', 7, 19, '2022-11-09 17:31:34', '2022-11-09 17:31:34'),
(237, 217, 'Etudes direction générale', 7, 19, '2022-11-09 17:36:10', '2022-11-09 17:36:10'),
(238, 217, 'Etudes direction régionale', 7, 19, '2022-11-09 17:36:22', '2022-11-09 17:36:22'),
(239, 218, 'Dossier de la convention avec la gendarmerie royale', 7, 19, '2022-11-09 17:36:41', '2022-11-09 17:36:41'),
(240, 218, 'Dossier de la convention avec la Sûreté Nationale', 7, 19, '2022-11-09 17:36:53', '2022-11-09 17:36:53'),
(241, 218, 'Dossier de la convention avec la protection civile', 7, 19, '2022-11-09 17:37:05', '2022-11-09 17:37:05'),
(242, 219, 'Dossier réglementation opérationnelle', 7, 19, '2022-11-09 17:37:31', '2022-11-09 17:37:31'),
(244, 0, 'Travaux neufs et maintenance', 7, 20, '2022-11-09 17:41:10', '2022-11-09 17:41:10'),
(248, 244, 'Dossier des ouvrages', 7, 20, '2022-11-09 17:44:08', '2022-11-09 17:44:08'),
(249, 244, 'Marché/BC', 7, 20, '2022-11-09 17:44:19', '2022-11-09 17:44:19'),
(250, 244, 'Correspondances', 7, 20, '2022-11-09 17:44:32', '2022-11-09 17:44:32'),
(251, 0, 'Réseau électrique', 7, 21, '2022-11-09 17:45:23', '2022-11-09 17:45:23'),
(252, 0, 'Réseau eau potable', 7, 21, '2022-11-09 17:47:39', '2022-11-09 17:47:39'),
(253, 0, 'Réseau assainissement', 7, 21, '2022-11-09 17:47:54', '2022-11-09 17:47:54'),
(254, 251, 'Dossiers des ouvrages et installations électriques', 7, 21, '2022-11-09 17:48:17', '2022-11-09 17:48:17'),
(255, 251, 'Dossiers des marches/bon de commande de travaux/services/FOURNITURES (par marche et par BC).', 7, 21, '2022-11-09 17:48:36', '2022-11-09 17:48:36'),
(256, 251, 'Dossier branchement/résiliation par operateur', 7, 21, '2022-11-09 17:49:12', '2022-11-09 17:49:12'),
(257, 251, 'Dossier Achat et vente électricité', 7, 21, '2022-11-09 17:49:35', '2022-11-09 17:49:35'),
(258, 251, 'Dossier RADEEJ', 7, 21, '2022-11-09 17:49:52', '2022-11-09 17:49:52'),
(259, 252, 'Dossiers des ouvrages et installations réseau d’eau', 7, 21, '2022-11-09 17:50:09', '2022-11-09 17:50:09'),
(260, 252, 'Dossiers des marches/bon de commande de travaux/services/FOURNITURES (par marche et par BC)', 7, 21, '2022-11-09 17:50:25', '2022-11-09 17:50:25'),
(261, 252, 'Dossier branchement/résiliation par opérateur', 7, 21, '2022-11-09 17:50:39', '2022-11-09 17:50:39'),
(262, 252, 'Dossier Achat et vente électricité', 7, 21, '2022-11-09 17:50:54', '2022-11-09 17:50:54'),
(263, 252, 'dossier RADEEJ', 7, 21, '2022-11-09 17:51:07', '2022-11-09 17:51:07'),
(264, 253, 'Dossiers des ouvrages et installations réseau d’assainissement', 7, 21, '2022-11-09 17:51:40', '2022-11-09 17:51:40'),
(265, 253, 'Dossiers des marches/bon de commande de travaux/services/FOURNITURES (par marche et par BC', 7, 21, '2022-11-09 17:51:57', '2022-11-09 17:51:57'),
(266, 253, 'Dossier correspondances', 7, 21, '2022-11-09 17:52:12', '2022-11-09 17:52:12');

-- --------------------------------------------------------

--
-- Structure de la table `entites`
--

CREATE TABLE `entites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organigramme_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entites`
--

INSERT INTO `entites` (`id`, `nom`, `organigramme_id`, `created_at`, `updated_at`) VALUES
(18, 'Programmation des escales', 7, '2022-11-09 17:02:32', '2022-11-09 17:02:32'),
(19, 'Division Sureté, Sécurité et Environnement', 7, '2022-11-09 17:22:44', '2022-11-09 17:22:44'),
(20, 'Travaux neufs et maintenance', 7, '2022-11-09 17:37:50', '2022-11-09 17:37:50'),
(21, 'Réseaux et voiries', 7, '2022-11-09 17:44:52', '2022-11-09 17:44:52');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `file_searches`
--

CREATE TABLE `file_searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dossier_id` bigint(20) UNSIGNED NOT NULL,
  `attributs_dossiers_id` bigint(20) UNSIGNED NOT NULL,
  `projet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historique_dossiers`
--

CREATE TABLE `historique_dossiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dossier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `indexes`
--

CREATE TABLE `indexes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_index` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribut_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `dossier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2022_07_07_151024_create_organigrammes_table', 1),
(39, '2022_07_13_095054_create_boites_table', 1),
(40, '2022_07_14_111225_change_code_topo_type', 1),
(41, '2022_07_14_152159_create_dossier_champs_table', 1),
(42, '2022_07_20_182348_create_attribut_champs_table', 1),
(43, '2022_08_01_114326_create_permission_tables', 1),
(44, '2022_08_01_153153_create_dossiers_table', 1),
(45, '2022_08_01_154726_create_attributs_dossiers_table', 1),
(46, '2022_08_10_100608_create_projets_table', 1),
(47, '2022_08_10_221819_add_projet_users_table', 1),
(48, '2022_09_06_093915_add_user_to_dossiers_table', 1),
(49, '2022_09_06_093916_fill_tables_app', 2),
(52, '2022_09_11_130647_add_entite_to_dossier_champs_table', 4),
(61, '2022_09_29_172257_create_index_table', 6),
(62, '2022_10_04_133229_create_historique_dossiers_table', 7),
(66, '2022_10_19_133709_create_request_delete_dossiers_table', 8),
(68, '2022_09_16_162004_file_search', 9),
(69, '2022_09_11_130646_create_entite_table', 10),
(70, '2022_11_03_201535_create_projet_modifiers_table', 11);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, '', 0),
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Structure de la table `organigrammes`
--

CREATE TABLE `organigrammes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `organigrammes`
--

INSERT INTO `organigrammes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(7, 'DRPJ', '2022-11-09 17:02:08', '2022-11-09 17:02:08');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'gestion des boites', 'web', '2022-09-06 09:09:21', '2022-09-06 09:09:21'),
(2, 'Créer les dossiers', 'web', '2022-10-25 10:50:15', '2022-10-24 23:00:00'),
(3, 'Modifier le plan de classement', 'web', '0000-00-00 00:00:00', NULL),
(4, 'gestion des utilisateurs', 'web', NULL, NULL),
(5, 'Modifier les dossiers', 'web', NULL, NULL),
(6, 'Modifier les roles', 'web', '2022-10-01 10:59:55', '2022-09-30 23:00:00'),
(7, 'Voir le plan de classement', 'web', '2022-10-01 12:12:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organigrammes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dossiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`dossiers`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `organigrammes_id`, `user_id`, `dossiers`, `created_at`, `updated_at`) VALUES
(196, 7, 1, '[\"172\",\"173\",\"187\"]', '2022-11-10 18:26:15', '2022-11-10 18:26:15');

-- --------------------------------------------------------

--
-- Structure de la table `projet_modifiers`
--

CREATE TABLE `projet_modifiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organigrammes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dossiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`dossiers`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `request_delete_dossiers`
--

CREATE TABLE `request_delete_dossiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dossier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-09-06 09:09:21', '2022-09-06 09:09:21');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifiant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) DEFAULT NULL,
  `projet_select_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `identifiant`, `nom`, `prenom`, `telephone`, `projet_select_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'indexeur_jamal', 'jamal', 'kamal', 697712113, 0, 'mehdi@gmail.com', NULL, '$2y$10$X/FDI2xHsaV8aCv5ei.57.9YrXbZvrXxJY8utsARldONvJBxXxPSm', 'rYODXtdGzY4R3QkFDEjV54NmxMjbE3oFimB6uZ9CDZZQhA0ykOA5u4ASPguq', '2022-09-06 09:09:21', '2022-11-10 18:26:15'),
(3, 'indexeur_jamal11', 'kshk', 'skb', 697712113, 0, 'mehdi@gmail.comii', NULL, '$2y$10$5ojfcwKnv9Togi363.eOQu18RTP.uWEDGQ7qrvZaPp6ayG8Lq.u0y', NULL, '2022-10-17 08:57:53', '2022-11-03 15:39:27'),
(4, 'test', 'ytzau', 'lslks', 697712113, 1, 'mehdi111111@gmail.com', NULL, '$2y$10$CGBzP7BzFwVqbyYIubJmLOvNfnh0qvITgJE3.XbNnZbb78RLnfk0y', '2dvgjvXWKmO2ydmQRuEoHMWrw7QBAv74XRfMKDQr4fyuoJcFnWEH4XJYKg7X', '2022-10-17 18:54:56', '2022-10-27 11:40:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attributs_dossiers`
--
ALTER TABLE `attributs_dossiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributs_dossiers_dossier_id_foreign` (`dossier_id`);

--
-- Index pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribut_champs_dossier_champs_id_foreign` (`dossier_champs_id`);

--
-- Index pour la table `boites`
--
ALTER TABLE `boites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossiers_organigramme_id_foreign` (`organigramme_id`),
  ADD KEY `dossiers_user_id_foreign` (`user_id`);

--
-- Index pour la table `dossier_champs`
--
ALTER TABLE `dossier_champs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_champs_organigramme_id_foreign` (`organigramme_id`);

--
-- Index pour la table `entites`
--
ALTER TABLE `entites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entites_organigramme_id_foreign` (`organigramme_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `file_searches`
--
ALTER TABLE `file_searches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_searches_dossier_id_foreign` (`dossier_id`),
  ADD KEY `file_searches_attributs_dossiers_id_foreign` (`attributs_dossiers_id`);

--
-- Index pour la table `historique_dossiers`
--
ALTER TABLE `historique_dossiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historique_dossiers_dossier_id_foreign` (`dossier_id`);

--
-- Index pour la table `indexes`
--
ALTER TABLE `indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indexes_attribut_id_foreign` (`attribut_id`),
  ADD KEY `indexes_file_id_foreign` (`file_id`),
  ADD KEY `indexes_dossier_id_foreign` (`dossier_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `organigrammes`
--
ALTER TABLE `organigrammes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projets_organigrammes_id_foreign` (`organigrammes_id`),
  ADD KEY `projets_user_id_foreign` (`user_id`);

--
-- Index pour la table `projet_modifiers`
--
ALTER TABLE `projet_modifiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projet_modifiers_organigrammes_id_foreign` (`organigrammes_id`),
  ADD KEY `projet_modifiers_user_id_foreign` (`user_id`);

--
-- Index pour la table `request_delete_dossiers`
--
ALTER TABLE `request_delete_dossiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attributs_dossiers`
--
ALTER TABLE `attributs_dossiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `boites`
--
ALTER TABLE `boites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dossiers`
--
ALTER TABLE `dossiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `dossier_champs`
--
ALTER TABLE `dossier_champs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT pour la table `entites`
--
ALTER TABLE `entites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `file_searches`
--
ALTER TABLE `file_searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `historique_dossiers`
--
ALTER TABLE `historique_dossiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT pour la table `indexes`
--
ALTER TABLE `indexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `organigrammes`
--
ALTER TABLE `organigrammes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `projet_modifiers`
--
ALTER TABLE `projet_modifiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `request_delete_dossiers`
--
ALTER TABLE `request_delete_dossiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attributs_dossiers`
--
ALTER TABLE `attributs_dossiers`
  ADD CONSTRAINT `attributs_dossiers_dossier_id_foreign` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `attribut_champs`
--
ALTER TABLE `attribut_champs`
  ADD CONSTRAINT `attribut_champs_dossier_champs_id_foreign` FOREIGN KEY (`dossier_champs_id`) REFERENCES `dossier_champs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD CONSTRAINT `dossiers_organigramme_id_foreign` FOREIGN KEY (`organigramme_id`) REFERENCES `organigrammes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dossiers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `dossier_champs`
--
ALTER TABLE `dossier_champs`
  ADD CONSTRAINT `dossier_champs_organigramme_id_foreign` FOREIGN KEY (`organigramme_id`) REFERENCES `organigrammes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `entites`
--
ALTER TABLE `entites`
  ADD CONSTRAINT `entites_organigramme_id_foreign` FOREIGN KEY (`organigramme_id`) REFERENCES `organigrammes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `file_searches`
--
ALTER TABLE `file_searches`
  ADD CONSTRAINT `file_searches_attributs_dossiers_id_foreign` FOREIGN KEY (`attributs_dossiers_id`) REFERENCES `attributs_dossiers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `file_searches_dossier_id_foreign` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `historique_dossiers`
--
ALTER TABLE `historique_dossiers`
  ADD CONSTRAINT `historique_dossiers_dossier_id_foreign` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `indexes`
--
ALTER TABLE `indexes`
  ADD CONSTRAINT `indexes_attribut_id_foreign` FOREIGN KEY (`attribut_id`) REFERENCES `attribut_champs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indexes_dossier_id_foreign` FOREIGN KEY (`dossier_id`) REFERENCES `dossier_champs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indexes_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `attribut_champs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_organigrammes_id_foreign` FOREIGN KEY (`organigrammes_id`) REFERENCES `organigrammes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `projet_modifiers`
--
ALTER TABLE `projet_modifiers`
  ADD CONSTRAINT `projet_modifiers_organigrammes_id_foreign` FOREIGN KEY (`organigrammes_id`) REFERENCES `organigrammes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projet_modifiers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
