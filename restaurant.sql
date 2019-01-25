-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 25 Janvier 2019 à 15:50
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `id` bigint(11) NOT NULL,
  `categorie` varchar(64) NOT NULL,
  `prix` float NOT NULL,
  `stock` int(64) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `carte`
--

INSERT INTO `carte` (`id`, `categorie`, `prix`, `stock`, `nom`, `description`, `photo`) VALUES
(1, 'entree', 3.5, 12, 'salade cesar', 'salade, poulet, mais, thon, herbes aromatique.\r\nServir en accompagnement d\'une quiche ou d\'une tourte. Excellent repas du soir. Vous pouvez utiliser des croûtons déjà prêts. La sauce peut être préparée 6 heures à l\'avance et réservée au frais.', 'coca.jpg'),
(2, 'entrée', 4.8, 10, 'Carrot Cake', 'Laver les légumes. Éplucher les carottes puis les râper très finement. Presser les 2 citrons, puis ajouter l\'huile d\'olive dans le jus. Mélanger les carottes râpées avec le mélange citron-huile d\'olive, saler et poivrer', 'carrot_cake.jpg'),
(3, 'plats', 10.5, 14, 'Steak / frites', 'Étant le plat principal, il peut être précédé d\'une entrée, et suivi de fromages et/ou desserts. Le consommateur est amené à préciser la cuisson1 voulue pour la viande dans la gamme suivante : bleu, saignant, à point et bien cuit, c\'est-à-dire de la cuisson la plus courte jusqu\'à la plus longue. Les frites sont servies chaudes. Il est agrémenté ou non de salade et de sauces (mayonnaise, moutarde, béarnaise, ketchup, sauce Café de Paris…).', 'bagel_thon.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `pseudo` varchar(128) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(64) NOT NULL,
  `adresse` varchar(264) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `pseudo`, `email`, `password`, `adresse`) VALUES
(1, 'JEan', 'Pierre', '0123456789', 'superman', 'stylo@gmail.com', '123456', '4 rue du lac'),
(2, 'Eric', 'axel', '0123456789', 'superman', 'cafe@gmail.com', '123456', '2 rue du stylo'),
(3, 'Eric', 'axel', '0123456789', 'superman', 'cafe@gmail.com', '123456', '2 rue du stylo'),
(4, 'Eric', 'Emile', '0123456789', 'Aquaman', 'cafe@gmail.com', 'dqsdq', '2 rue du stylo'),
(5, 'Eric', 'Emile', '0123456789', 'Aquaman', 'cafe@gmail.com', 'dqsdq', '2 rue du stylo'),
(6, 'Olga', 'Francis', '0123456789', 'Spiderman', 'cafe@gmail.com', 'dqsdq', '2 rue du stylo'),
(18, 'Olga', 'Francis', '0123456789', 'world', 'exemple@g.mail.fr', '78945613', '2 rue du lac'),
(19, 'Eric', 'Emile', '0123456789', 'superman', 'exemple@g.mail.fr', '123456', '2 rue du stylo'),
(20, 'Eric', 'axel', '0123456789', 'superman', 'exemple@g.mail.fr', '$2y$10$CwE.6n9wJJCkKZeT0.PMTOIS9W3A2ftAFyGWDJ43m1W4RvClMMrvW', '2 rue du lac'),
(21, 'Eric', 'Francis', '0123456789', 'Aquaman', 'cafe@gmail.com', '$2y$10$CBd7IUpkMuZtYw.pYgTD0Oo4q9imC3febWd1KytSYcl7T75O3/km6', '2 rue du lac'),
(22, 'Eric', 'axel', '0123456789', 'superman', 'cafe@gmail.com', '$2y$10$xnJowhgREi0US0TDnHLgpOhTbqFFb1./BDjYj51dRHqP10.mDmLYi', '2 rue du lac'),
(23, 'luc', 'toto', '0123456789', 'sam', 'cafe@gmail.com', '$2y$10$EkAOog4JwuCXgCvCFA4jS.DjZ0D10O2qA7mE0lnWmn/A3JY1K8rF6', '2 rue du lac');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `numero_commande` bigint(11) NOT NULL,
  `numero_client` bigint(11) NOT NULL,
  `statut` varchar(64) NOT NULL,
  `montant_totale` int(64) NOT NULL,
  `id_livreur` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contenue_commande`
--

CREATE TABLE `contenue_commande` (
  `commande_id` bigint(11) NOT NULL,
  `carte_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `id` bigint(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `tel` int(15) NOT NULL,
  `disponibilite` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `client_id` bigint(11) NOT NULL,
  `nombre_client` int(11) NOT NULL,
  `date_heure` datetime NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `restaurateur`
--

CREATE TABLE `restaurateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `pseudo` varchar(64) NOT NULL,
  `mail` varchar(128) NOT NULL,
  `password` varchar(96) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `numero_table` int(11) NOT NULL,
  `nombre_place` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`numero_commande`),
  ADD KEY `numero_client` (`numero_client`),
  ADD KEY `id_livreur` (`id_livreur`);

--
-- Index pour la table `contenue_commande`
--
ALTER TABLE `contenue_commande`
  ADD KEY `commande_id` (`commande_id`),
  ADD KEY `carte_id` (`carte_id`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place` (`place`),
  ADD KEY `client_id` (`client_id`);

--
-- Index pour la table `restaurateur`
--
ALTER TABLE `restaurateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`numero_table`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `numero_commande` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `restaurateur`
--
ALTER TABLE `restaurateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `numero_table` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`numero_client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `commande_ibfk_3` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id`);

--
-- Contraintes pour la table `contenue_commande`
--
ALTER TABLE `contenue_commande`
  ADD CONSTRAINT `contenue_commande_ibfk_1` FOREIGN KEY (`carte_id`) REFERENCES `carte` (`id`),
  ADD CONSTRAINT `contenue_commande_ibfk_2` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`numero_commande`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`place`) REFERENCES `tables` (`numero_table`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
