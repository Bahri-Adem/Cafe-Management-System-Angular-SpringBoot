-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 08 oct. 2023 à 00:46
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cafe`
--

-- --------------------------------------------------------

--
-- Structure de la table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `contactnumber` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `paymentmethod` varchar(255) DEFAULT NULL,
  `productdetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`productdetails`)),
  `total` int(11) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bill`
--

INSERT INTO `bill` (`id`, `contactnumber`, `createdby`, `email`, `name`, `paymentmethod`, `productdetails`, `total`, `uuid`) VALUES
(55, '50091931', 'adem.bahri@enis.tn', 'adem.bahri@enis.tn', 'Adem Bahri', 'Credit Card', '[{\"id\":31,\"name\":\"Cappuccino\",\"category\":\"Beverages\",\"quantity\":\"2\",\"price\":6000,\"total\":12000},{\"id\":50,\"name\":\"Pancakes\",\"category\":\"Breakfast\",\"quantity\":\"2\",\"price\":7000,\"total\":14000}]', 26000, 'BILL1696714571927'),
(57, '50091931', 'adem25@mailinator.com', 'adem25@mailinator.com', 'adem', 'Cash', '[{\"id\":31,\"name\":\"Cappuccino\",\"category\":\"Beverages\",\"quantity\":\"3\",\"price\":6000,\"total\":18000},{\"id\":50,\"name\":\"Pancakes\",\"category\":\"Breakfast\",\"quantity\":\"2\",\"price\":7000,\"total\":14000},{\"id\":45,\"name\":\"Cheesecake\",\"category\":\"Desserts\",\"quantity\":\"1\",\"price\":10000,\"total\":10000}]', 42000, 'BILL1696715791933');

-- --------------------------------------------------------

--
-- Structure de la table `bill_seq`
--

CREATE TABLE `bill_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bill_seq`
--

INSERT INTO `bill_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Beverages'),
(2, 'Breakfast'),
(3, 'Sandwiches and Wraps'),
(4, 'Desserts'),
(5, 'Salads'),
(28, 'Main Courses');

-- --------------------------------------------------------

--
-- Structure de la table `category_seq`
--

CREATE TABLE `category_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category_seq`
--

INSERT INTO `category_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(61);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `description`, `name`, `price`, `status`, `category_fk`) VALUES
(29, 'Italian Coffee', 'Espresso', 4000, 'true', 1),
(30, 'American Coffee', 'Americano', 5000, 'true', 1),
(31, 'mbaaed', 'Cappuccino', 6000, 'true', 1),
(32, 'Fresh Cold Juices', 'Fresh Juice', 7000, 'true', 1),
(33, 'Hot Warm Chocolate', 'Hot Chocolate', 6000, 'true', 1),
(34, 'Sandwitch', 'Club Sandwich', 8000, 'true', 3),
(35, 'Panini', 'Panini', 9000, 'true', 3),
(36, 'Bacon, Lettuce, Tomato', 'BLT ', 8000, 'true', 3),
(37, 'Wraps ', 'Wraps ', 9500, 'true', 3),
(38, 'Caesar Salad', 'Caesar Salad', 10000, 'true', 5),
(39, 'Spinach Salad', 'Spinach Salad', 9000, 'true', 5),
(40, 'Greek Salad', 'Greek Salad', 9500, 'true', 5),
(41, 'Spaghetti, Fettuccine Alfredo, etc', 'Pasta ', 12000, 'true', 28),
(42, 'Burgers', 'Burgers', 11000, 'true', 28),
(43, 'Steak', 'Steak', 20000, 'true', 28),
(44, 'Fish and Chips', 'Fish and Chips', 15000, 'true', 28),
(45, 'Cheesecake', 'Cheesecake', 10000, 'true', 4),
(46, 'Chocolate Cake', 'Chocolate Cake', 12000, 'true', 4),
(47, 'Tiramisu', 'Tiramisu', 11000, 'true', 4),
(48, 'Ice Cream', 'Ice Cream', 9000, 'true', 4),
(49, 'Omelets', 'Omelets', 5000, 'true', 2),
(50, 'Pancakes', 'Pancakes', 7000, 'true', 2),
(51, 'Waffles', 'Waffles', 8000, 'true', 2),
(52, 'French Toast', 'French Toast', 6000, 'true', 2),
(53, 'Granola and Cereal', 'Granola and Cereal', 5000, 'true', 2),
(54, 'Biryani is a mixed rice dish', 'Biryani', 14000, 'false', 28);

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `contact_number`, `email`, `name`, `password`, `role`, `status`) VALUES
(1, '50091931', 'adem.bahri@enis.tn', 'Adem', '123', 'user', 'true'),
(2, '50091931', 'aziz@enis.tn', 'Aziz', '1234', 'user', 'true'),
(3, '50091931', 'bahri.adem25@gmail.com', 'Adem_Bahri', 'jamila25', 'admin', 'true'),
(4, '50091931', 'adem2501@mailinator.com', 'Adem_Bahri', 'jamila25', 'admin', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(51);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK275nu1ncohhfur6qhxiwrm3go` (`category_fk`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK275nu1ncohhfur6qhxiwrm3go` FOREIGN KEY (`category_fk`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
