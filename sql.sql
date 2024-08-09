-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 août 2024 à 14:36
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat`
--
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `chat`;

-- --------------------------------------------------------

--
-- Structure de la table `textes`
--

DROP TABLE IF EXISTS `textes`;
CREATE TABLE IF NOT EXISTS `textes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texte` varchar(555) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `textes`
--

INSERT INTO `textes` (`id`, `texte`, `user_id`) VALUES
(1, 'SALUT\n', 0),
(2, 'BONSOIR', 0),
(3, 'je suis iici', 0),
(4, 'il venant\nvoyc', 0),
(5, 'saltu', 0),
(6, 'saluuy', 1),
(7, 'bnjour', 1),
(8, 'dddd', 1),
(9, 'salut', 0),
(10, 'salut ', 1),
(11, 'SALUT', 1),
(12, 'LES AUTRES\n', 1),
(13, 'mr Ravaka', 1),
(14, 'mr Andry', 1),
(15, 'php', 1),
(16, 'php', 0),
(17, 'izy rehetra', 0);
--
-- Base de données : `dsidb`
--
CREATE DATABASE IF NOT EXISTS `dsidb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dsidb`;

-- --------------------------------------------------------

--
-- Structure de la table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE IF NOT EXISTS `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add todo', 7, 'add_todo'),
(26, 'Can change todo', 7, 'change_todo'),
(27, 'Can delete todo', 7, 'delete_todo'),
(28, 'Can view todo', 7, 'view_todo'),
(29, 'Can add Token', 8, 'add_token'),
(30, 'Can change Token', 8, 'change_token'),
(31, 'Can delete Token', 8, 'delete_token'),
(32, 'Can view Token', 8, 'view_token'),
(33, 'Can add Token', 9, 'add_tokenproxy'),
(34, 'Can change Token', 9, 'change_tokenproxy'),
(35, 'Can delete Token', 9, 'delete_tokenproxy'),
(36, 'Can view Token', 9, 'view_tokenproxy');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'transition', 'todo'),
(8, 'authtoken', 'token'),
(9, 'authtoken', 'tokenproxy');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-19 13:26:23.855978'),
(2, 'auth', '0001_initial', '2024-07-19 13:26:24.567981'),
(3, 'admin', '0001_initial', '2024-07-19 13:26:24.772977'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-19 13:26:24.778976'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-19 13:26:24.788979'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-19 13:26:24.877983'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-19 13:26:24.922980'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-19 13:26:24.965994'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-19 13:26:24.976981'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-19 13:26:25.020979'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-19 13:26:25.021978'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-19 13:26:25.030979'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-19 13:26:25.074992'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-19 13:26:25.121981'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-19 13:26:25.168981'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-19 13:26:25.179980'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-19 13:26:25.233990'),
(18, 'authtoken', '0001_initial', '2024-07-19 13:26:25.298981'),
(19, 'authtoken', '0002_auto_20160226_1747', '2024-07-19 13:26:25.326979'),
(20, 'authtoken', '0003_tokenproxy', '2024-07-19 13:26:25.328979'),
(21, 'authtoken', '0004_alter_tokenproxy_options', '2024-07-19 13:26:25.332977'),
(22, 'sessions', '0001_initial', '2024-07-19 13:26:25.375980'),
(23, 'transition', '0001_initial', '2024-07-19 13:26:25.460981');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `transition_todo`
--

DROP TABLE IF EXISTS `transition_todo`;
CREATE TABLE IF NOT EXISTS `transition_todo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tilte` varchar(150) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transition_todo_user_id_c16fcf40` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Base de données : `personnes`
--
CREATE DATABASE IF NOT EXISTS `personnes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `personnes`;

-- --------------------------------------------------------

--
-- Structure de la table `textes`
--

DROP TABLE IF EXISTS `textes`;
CREATE TABLE IF NOT EXISTS `textes` (
  `texte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `textes`
--

INSERT INTO `textes` (`texte`) VALUES
('salut'),
('bonjour'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('holl'),
(''),
('lu'),
('liiii'),
(''),
('hhhh'),
('salama tompoko'),
('rahovina no mody'),
('MBA mandalova aty oe'),
('eny ary fa ao fona ve ianareo'),
('hhhh'),
('fff'),
(''),
(''),
(''),
('fdgfhdgfy'),
('jjj');
--
-- Base de données : `tp`
--
CREATE DATABASE IF NOT EXISTS `tp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tp`;

-- --------------------------------------------------------

--
-- Structure de la table `asus`
--

DROP TABLE IF EXISTS `asus`;
CREATE TABLE IF NOT EXISTS `asus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenom` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `asus`
--

INSERT INTO `asus` (`id`, `nom`, `prenom`, `age`) VALUES
(4, 'mamy', 'rakoto', 222),
(6, 'hery', 'fity', 33),
(5, 'sitraka', 'aaa', 33),
(7, '?', '?', 0),
(8, '?', '?', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
