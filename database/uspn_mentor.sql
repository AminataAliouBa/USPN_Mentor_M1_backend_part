-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 27 avr. 2024 à 17:51
-- Version du serveur : 10.11.6-MariaDB-0+deb12u1
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `uspn_mentor`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `numEtu` int(20) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `niveau` int(2) NOT NULL,
  `parcours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`numEtu`, `prenom`, `nom`, `mail`, `niveau`, `parcours`) VALUES
(1, 'Jean', 'Dupont', 'jean.dupont@edu.uspn-mentor.fr', 1, 'Informatique'),
(2, 'Marie', 'Dubois', 'marie.dubois@edu.uspn-mentor.fr', 1, 'Math'),
(3, 'Pierre', 'Martin', 'pierre.martin@edu.uspn-mentor.fr', 2, 'Physique'),
(4, 'Sophie', 'Bernard', 'sophie.bernard@edu.uspn-mentor.fr', 2, 'Chimie'),
(5, 'Luc', 'Lefevre', 'luc.lefevre@edu.uspn-mentor.fr', 3, 'Biologie'),
(6, 'Emma', 'Moreau', 'emma.moreau@edu.uspn-mentor.fr', 3, 'Géologie'),
(7, 'Thomas', 'Robert', 'thomas.robert@edu.uspn-mentor.fr', 4, 'Informatique'),
(8, 'Charlotte', 'Richard', 'charlotte.richard@edu.uspn-mentor.fr', 4, 'Math'),
(9, 'Nicolas', 'Petit', 'nicolas.petit@edu.uspn-mentor.fr', 5, 'Physique'),
(10, 'Laura', 'Durand', 'laura.durand@edu.uspn-mentor.fr', 5, 'Chimie'),
(11, 'Julien', 'Leroy', 'julien.leroy@edu.uspn-mentor.fr', 6, 'Biologie'),
(12, 'Camille', 'Garcia', 'camille.garcia@edu.uspn-mentor.fr', 6, 'Géologie'),
(13, 'Paul', 'Perrier', 'paul.perrier@edu.uspn-mentor.fr', 7, 'Informatique'),
(14, 'Manon', 'Bonnet', 'manon.bonnet@edu.uspn-mentor.fr', 7, 'Math'),
(15, 'Adrien', 'Morel', 'adrien.morel@edu.uspn-mentor.fr', 8, 'Physique'),
(16, 'Julie', 'Roux', 'julie.roux@edu.uspn-mentor.fr', 8, 'Chimie'),
(17, 'Antoine', 'Lefort', 'antoine.lefort@edu.uspn-mentor.fr', 1, 'Biologie'),
(18, 'Léa', 'Mercier', 'lea.mercier@edu.uspn-mentor.fr', 1, 'Géologie'),
(19, 'Mathis', 'Dupuis', 'mathis.dupuis@edu.uspn-mentor.fr', 2, 'Informatique'),
(20, 'Clémence', 'Girard', 'clemence.girard@edu.uspn-mentor.fr', 2, 'Math'),
(21, 'Hugo', 'Lemaire', 'hugo.lemaire@edu.uspn-mentor.fr', 3, 'Physique'),
(22, 'Elodie', 'Fournier', 'elodie.fournier@edu.uspn-mentor.fr', 3, 'Chimie'),
(23, 'Maxime', 'Brun', 'maxime.brun@edu.uspn-mentor.fr', 4, 'Biologie'),
(24, 'Julia', 'Guerin', 'julia.guerin@edu.uspn-mentor.fr', 4, 'Géologie'),
(25, 'Alexandre', 'Martinez', 'alexandre.martinez@edu.uspn-mentor.fr', 5, 'Informatique'),
(26, 'Emma', 'Adam', 'emma.adam@edu.uspn-mentor.fr', 5, 'Math'),
(27, 'Louis', 'Dufour', 'louis.dufour@edu.uspn-mentor.fr', 6, 'Physique'),
(28, 'Chloé', 'Vincent', 'chloe.vincent@edu.uspn-mentor.fr', 6, 'Chimie'),
(29, 'Théo', 'Masson', 'theo.masson@edu.uspn-mentor.fr', 7, 'Biologie'),
(30, 'Margot', 'Robin', 'margot.robin@edu.uspn-mentor.fr', 7, 'Géologie'),
(31, 'Gabriel', 'Rousseau', 'gabriel.rousseau@edu.uspn-mentor.fr', 8, 'Informatique'),
(32, 'Zoé', 'Garnier', 'zoe.garnier@edu.uspn-mentor.fr', 8, 'Math'),
(33, 'Romain', 'Chevalier', 'romain.chevalier@edu.uspn-mentor.fr', 1, 'Physique'),
(34, 'Maëlys', 'Morin', 'maelys.morin@edu.uspn-mentor.fr', 1, 'Chimie'),
(35, 'Arthur', 'Giraud', 'arthur.giraud@edu.uspn-mentor.fr', 2, 'Biologie'),
(36, 'Eva', 'Renaud', 'eva.renaud@edu.uspn-mentor.fr', 2, 'Géologie'),
(37, 'Jules', 'Lecomte', 'jules.lecomte@edu.uspn-mentor.fr', 3, 'Informatique'),
(38, 'Lola', 'Guillaume', 'lola.guillaume@edu.uspn-mentor.fr', 3, 'Math'),
(39, 'Matteo', 'Roy', 'matteo.roy@edu.uspn-mentor.fr', 4, 'Physique'),
(40, 'Inès', 'Lemoine', 'ines.lemoine@edu.uspn-mentor.fr', 4, 'Chimie'),
(41, 'Lucas', 'Roux', 'lucas.roux@edu.uspn-mentor.fr', 5, 'Biologie'),
(42, 'Anna', 'Lefebvre', 'anna.lefebvre@edu.uspn-mentor.fr', 5, 'Géologie'),
(43, 'Thibault', 'Dumas', 'thibault.dumas@edu.uspn-mentor.fr', 6, 'Informatique'),
(44, 'Louise', 'Colin', 'louise.colin@edu.uspn-mentor.fr', 6, 'Math'),
(45, 'Tom', 'Blanc', 'tom.blanc@edu.uspn-mentor.fr', 7, 'Physique'),
(46, 'Manon', 'Guérin', 'manon.guerin@edu.uspn-mentor.fr', 7, 'Chimie'),
(47, 'Enzo', 'Caron', 'enzo.caron@edu.uspn-mentor.fr', 8, 'Biologie'),
(48, 'Clara', 'Meyer', 'clara.meyer@edu.uspn-mentor.fr', 8, 'Géologie'),
(49, 'Nathan', 'Marchand', 'nathan.marchand@edu.uspn-mentor.fr', 1, 'Informatique'),
(50, 'Anaïs', 'Lefevre', 'anais.lefevre@edu.uspn-mentor.fr', 1, 'Math'),
(51, 'Ethan', 'Schmitt', 'ethan.schmitt@edu.uspn-mentor.fr', 2, 'Physique'),
(52, 'Léna', 'Andre', 'lena.andre@edu.uspn-mentor.fr', 2, 'Chimie'),
(53, 'Maxime', 'David', 'maxime.david@edu.uspn-mentor.fr', 3, 'Biologie'),
(54, 'Clémentine', 'Fischer', 'clementine.fischer@edu.uspn-mentor.fr', 3, 'Géologie'),
(55, 'Théo', 'Aubert', 'theo.aubert@edu.uspn-mentor.fr', 4, 'Informatique'),
(56, 'Sarah', 'Renard', 'sarah.renard@edu.uspn-mentor.fr', 4, 'Math'),
(57, 'Léo', 'Leroux', 'leo.leroux@edu.uspn-mentor.fr', 5, 'Physique'),
(58, 'Juliette', 'Simon', 'juliette.simon@edu.uspn-mentor.fr', 5, 'Chimie'),
(59, 'Antoine', 'Lemoine', 'antoine.lemoine@edu.uspn-mentor.fr', 6, 'Biologie'),
(60, 'Lou', 'Barbier', 'lou.barbier@edu.uspn-mentor.fr', 6, 'Géologie'),
(61, 'Emma', 'Bertrand', 'emma.bertrand@edu.uspn-mentor.fr', 7, 'Informatique'),
(62, 'Louis', 'Lefebvre', 'louis.lefebvre@edu.uspn-mentor.fr', 7, 'Math'),
(63, 'Alice', 'Brunet', 'alice.brunet@edu.uspn-mentor.fr', 8, 'Physique'),
(64, 'Noah', 'Lecomte', 'noah.lecomte@edu.uspn-mentor.fr', 8, 'Chimie'),
(65, 'Lina', 'Philippe', 'lina.philippe@edu.uspn-mentor.fr', 1, 'Biologie'),
(66, 'Enzo', 'Collet', 'enzo.collet@edu.uspn-mentor.fr', 1, 'Géologie'),
(67, 'Mila', 'Lefevre', 'mila.lefevre@edu.uspn-mentor.fr', 2, 'Informatique'),
(68, 'Hugo', 'Renard', 'hugo.renard@edu.uspn-mentor.fr', 2, 'Math'),
(69, 'Chloé', 'Perrin', 'chloe.perrin@edu.uspn-mentor.fr', 3, 'Physique'),
(70, 'Gabriel', 'Deschamps', 'gabriel.deschamps@edu.uspn-mentor.fr', 3, 'Chimie'),
(71, 'Léa', 'Guillaume', 'lea.guillaume@edu.uspn-mentor.fr', 4, 'Biologie'),
(72, 'Nolan', 'Riviere', 'nolan.riviere@edu.uspn-mentor.fr', 4, 'Géologie'),
(73, 'Louise', 'Leclerc', 'louise.leclerc@edu.uspn-mentor.fr', 5, 'Informatique'),
(74, 'Lucas', 'Charpentier', 'lucas.charpentier@edu.uspn-mentor.fr', 5, 'Math'),
(75, 'Manon', 'Lemoine', 'manon.lemoine@edu.uspn-mentor.fr', 6, 'Physique'),
(76, 'Léo', 'Renault', 'leo.renault@edu.uspn-mentor.fr', 6, 'Chimie'),
(77, 'Eva', 'Guérin', 'eva.guerin@edu.uspn-mentor.fr', 7, 'Biologie'),
(78, 'Arthur', 'Huet', 'arthur.huet@edu.uspn-mentor.fr', 7, 'Géologie'),
(79, 'Lina', 'Guillaume', 'lina.guillaume@edu.uspn-mentor.fr', 8, 'Informatique'),
(80, 'Enzo', 'Marchand', 'enzo.marchand@edu.uspn-mentor.fr', 8, 'Math'),
(81, 'Mila', 'Barbier', 'mila.barbier@edu.uspn-mentor.fr', 1, 'Physique'),
(82, 'Noah', 'Lecomte', 'noah.lecomte@edu.uspn-mentor.fr', 1, 'Chimie'),
(83, 'Léa', 'Deschamps', 'lea.deschamps@edu.uspn-mentor.fr', 2, 'Biologie'),
(84, 'Nolan', 'Riviere', 'nolan.riviere@edu.uspn-mentor.fr', 2, 'Géologie'),
(85, 'Louise', 'Leclerc', 'louise.leclerc@edu.uspn-mentor.fr', 3, 'Informatique'),
(86, 'Lucas', 'Charpentier', 'lucas.charpentier@edu.uspn-mentor.fr', 3, 'Math'),
(87, 'Manon', 'Lemoine', 'manon.lemoine@edu.uspn-mentor.fr', 4, 'Physique'),
(88, 'Léo', 'Renault', 'leo.renault@edu.uspn-mentor.fr', 4, 'Chimie'),
(89, 'Eva', 'Guérin', 'eva.guerin@edu.uspn-mentor.fr', 5, 'Biologie'),
(90, 'Arthur', 'Huet', 'arthur.huet@edu.uspn-mentor.fr', 5, 'Géologie'),
(91, 'Lina', 'Guillaume', 'lina.guillaume@edu.uspn-mentor.fr', 6, 'Informatique'),
(92, 'Enzo', 'Marchand', 'enzo.marchand@edu.uspn-mentor.fr', 6, 'Math'),
(93, 'Mila', 'Barbier', 'mila.barbier@edu.uspn-mentor.fr', 7, 'Physique'),
(94, 'Noah', 'Lecomte', 'noah.lecomte@edu.uspn-mentor.fr', 7, 'Chimie'),
(95, 'Léa', 'Deschamps', 'lea.deschamps@edu.uspn-mentor.fr', 8, 'Biologie'),
(96, 'Nolan', 'Riviere', 'nolan.riviere@edu.uspn-mentor.fr', 8, 'Géologie'),
(97, 'Louise', 'Leclerc', 'louise.leclerc@edu.uspn-mentor.fr', 1, 'Informatique'),
(98, 'Lucas', 'Charpentier', 'lucas.charpentier@edu.uspn-mentor.fr', 1, 'Math'),
(99, 'Manon', 'Lemoine', 'manon.lemoine@edu.uspn-mentor.fr', 2, 'Physique'),
(100, 'Léo', 'Renault', 'leo.renault@edu.uspn-mentor.fr', 2, 'Chimie');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `date` datetime(6) NOT NULL,
  `id_student` int(10) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `id_tuteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE `tuteur` (
  `numEtu` int(20) NOT NULL,
  `niveau` int(2) NOT NULL,
  `parcours` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tuteur`
--

INSERT INTO `tuteur` (`numEtu`, `niveau`, `parcours`, `password`) VALUES
(7, 4, 'Informatique', 'aaaa'),
(9, 5, 'Physique', 'vvvv');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `identifiant` int(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`identifiant`, `password`) VALUES
(1, 'aaaa'),
(5, 'gggg'),
(8, 'dddd');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`numEtu`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`date`),
  ADD KEY `fk_user` (`id_student`),
  ADD KEY `fk_tuteur` (`id_tuteur`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`numEtu`,`niveau`,`parcours`),
  ADD KEY `fk_numEtu` (`numEtu`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`identifiant`),
  ADD KEY `identifiant` (`identifiant`) USING BTREE;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `tuteur_fk` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteur` (`numEtu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`id_student`) REFERENCES `user` (`identifiant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD CONSTRAINT `fk_etudiant` FOREIGN KEY (`numEtu`) REFERENCES `etudiant` (`numEtu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_etu_user` FOREIGN KEY (`identifiant`) REFERENCES `etudiant` (`numEtu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
