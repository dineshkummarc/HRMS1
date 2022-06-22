-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 28 mai 2021 à 16:46
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$90ncUIF2PYVeYRyZz9U5q.GR9gZkXNDYyDxjct9/uAm9awtE15XKq', 'maroiane', 'allabouche', '164125962_768641270732475_7266266762277503201_o.jpg', '2021-04-30');

-- --------------------------------------------------------

--
-- Structure de la table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(13, 1, '2018-04-27', '08:00:00', 1, '17:00:00', 8),
(14, 1, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(15, 1, '2018-05-04', '08:00:00', 1, '17:00:00', 8),
(16, 1, '2018-05-02', '08:00:00', 1, '17:00:00', 8),
(17, 1, '2018-05-01', '08:00:00', 1, '17:00:00', 8),
(18, 1, '2018-05-03', '08:00:00', 1, '17:00:00', 8),
(74, 1, '2018-04-30', '08:00:00', 1, '16:44:23', 7.7333333333333),
(75, 3, '2018-04-18', '08:00:00', 1, '17:00:00', 8),
(76, 4, '2018-04-19', '08:00:00', 1, '17:00:00', 8),
(77, 4, '2018-04-27', '08:00:00', 1, '17:00:00', 7),
(78, 4, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(86, 5, '2018-07-11', '07:41:00', 1, '16:00:00', 7),
(87, 1, '2018-07-11', '06:27:00', 1, '15:00:00', 6),
(88, 6, '2018-07-11', '07:45:00', 1, '14:48:00', 3.8),
(95, 13, '2018-07-11', '18:17:32', 0, '00:00:00', 0),
(106, 24, '2021-05-22', '23:23:43', 1, '00:00:00', 0),
(107, 25, '2021-05-22', '23:25:24', 1, '00:00:00', 0),
(108, 13, '2021-05-22', '23:27:29', 0, '00:00:00', 0),
(109, 24, '2021-05-25', '21:22:56', 1, '00:00:00', 0),
(110, 1, '2021-05-25', '21:25:53', 1, '00:00:00', 0),
(111, 25, '2021-05-25', '08:58:25', 0, '00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(2, '2018-05-02', '1', 1000),
(3, '2018-05-02', '1', 1000),
(4, '2018-07-12', '5', 3500),
(5, '2021-05-24', '1', 60000);

-- --------------------------------------------------------

--
-- Structure de la table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 100),
(4, 'Project Issues', 1500);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, 'ABC123456789', 'Christine', 'Smith', 'Brgy. Mambulac, Silay City', '2018-04-02', '09000035719', 'Female', 1, 2, 'desktop.jpg', '2018-04-28'),
(5, 'TQO238109674', 'Bruno', 'Den', 'Test', '1995-08-23', '5454578965', 'Male', 1, 2, 'thanossmile.jpg', '2018-07-11'),
(6, 'EDQ203874591', 'Henry', 'Doe', 'New St. Esp', '1991-07-25', '9876543210', 'Male', 2, 4, 'male.png', '2018-07-11'),
(13, 'ALB590623481', 'Emma', 'Wallis', 'Test', '1994-07-19', '9632145655', 'Female', 1, 5, 'female4.jpg', '2018-07-11'),
(24, 'LJZ423815706', 'robin', 'allabouche', 'hey souk lamkhakh ,street  ibrahim el hafidi nÂ°:03', '1999-03-14', '', 'Male', 1, 1, '1123078.jpg', '2021-05-21'),
(25, 'WGT634720981', 'nisrine', 'amrani', 'hey souk lamkhakh ,street  ibrahim el hafidi nÂ°:03', '1994-07-20', '', 'Female', 3, 4, 'michel alves.jpg', '2021-05-21');

-- --------------------------------------------------------

--
-- Structure de la table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(4, '6', 240, 1500, '2031-11-08');

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Programmer', 100),
(2, 'Writer', 50),
(3, 'Marketing ', 35),
(4, 'Graphic Designer', 75),
(5, 'Photographe', 40);

-- --------------------------------------------------------

--
-- Structure de la table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:00:00', '17:00:00'),
(3, '09:00:00', '18:00:00'),
(4, '10:00:00', '19:00:00'),
(5, '05:15:00', '16:15:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
