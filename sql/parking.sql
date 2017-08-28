-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Octobre 2016 à 11:38
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `parking`
--

-- --------------------------------------------------------

--
-- Structure de la table `attente`
--

CREATE TABLE IF NOT EXISTS `attente` (
  `num_attente` int(3) NOT NULL AUTO_INCREMENT,
  `id_uti` int(5) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `statut` int(2) DEFAULT NULL,
  `num_place` int(2) DEFAULT NULL,
  PRIMARY KEY (`num_attente`),
  KEY `FK_ATTENTE_UTI` (`id_uti`),
  KEY `FK_ATTENTE_PLACE` (`num_place`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `attente`
--

INSERT INTO `attente` (`num_attente`, `id_uti`, `dateDebut`, `dateFin`, `statut`, `num_place`) VALUES
(3, 16, '2016-10-11', '2016-10-19', 3, 4),
(4, 1, '2016-10-12', '2016-10-27', 3, 1),
(5, 15, '2016-10-20', '2016-10-21', 3, 2),
(6, 15, '2016-10-01', '2016-10-05', 1, 4),
(7, 19, '2016-10-06', '2016-10-08', 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `liste_attente`
--

CREATE TABLE IF NOT EXISTS `liste_attente` (
  `id_listattente` int(3) NOT NULL DEFAULT '0',
  `num_attente` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_listattente`),
  KEY `FK_LISTATTENTE_ATTENTE` (`num_attente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `liste_attente`
--

INSERT INTO `liste_attente` (`id_listattente`, `num_attente`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom`, `prenom`) VALUES
(1, 'chaure', 'jerome'),
(2, 'beribech', 'khalil'),
(3, 'michel', 'jacquie'),
(4, 'jose', 'remy'),
(5, 'mesle', 'alexandre'),
(6, 'bendou', 'hicham');

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `num_place` int(2) NOT NULL DEFAULT '0',
  `statut` int(1) DEFAULT NULL,
  PRIMARY KEY (`num_place`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `place`
--

INSERT INTO `place` (`num_place`, `statut`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_uti` int(5) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(25) NOT NULL,
  `mdp` int(10) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `adresse` varchar(25) DEFAULT NULL,
  `cp` int(5) DEFAULT NULL,
  `tel` int(10) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `statut` int(1) DEFAULT NULL,
  `motcle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_uti`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_uti`, `identifiant`, `mdp`, `nom`, `prenom`, `adresse`, `cp`, `tel`, `mail`, `statut`, `motcle`) VALUES
(1, 'jacquie', 123456, 'jacquie', 'michel', '5 rue de la tour', 75004, 612345678, 'jacquieetmichel@hotmail.com', 1, 'merciqui'),
(2, 'jerome', 123456, 'chaure', 'jerome', '55 boulevard de charrone', 77000, 651515151, 'jerome.chaure@orange.fr', 1, 'admin'),
(15, 'khalil', 123456, 'khalil', 'beribech', '4 rue de soui', 92000, 658752203, 'khalil@hotmail.com', 1, 'salamander'),
(16, 'remy', 123456, 'jose', 'remy', '4 rue masson', 91000, 654964648, 'remy@hotmail.com', 1, 'marseille'),
(19, 'alexandre', 123456, 'mesle', 'alexandre', '10 rue de cherbourg', 75020, 654161321, 'alexandre@hotmail.fr', 1, 'havefun'),
(21, 'hicham', 123456, 'bendou', 'hicham', '3 rue des rodes', 93100, 654165161, 'hicham@hotmail.com', 1, 'couscousmerguez'),
(22, 'morgan', 123456, 'freeman', 'morgan', '12 rue de la liberte', 95200, 654151231, 'morganfree@hotmail.com', 0, 'freetobe'),
(23, 'eliot', 123456, 'robot', 'eliot', '8 rue de la fsociety', 75002, 689745221, 'eliot@hotmail.fr', 0, 'mrrobot');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `attente`
--
ALTER TABLE `attente`
  ADD CONSTRAINT `FK_ATTENTE_PLACE` FOREIGN KEY (`num_place`) REFERENCES `place` (`num_place`),
  ADD CONSTRAINT `FK_ATTENTE_UTI` FOREIGN KEY (`id_uti`) REFERENCES `utilisateur` (`id_uti`);

--
-- Contraintes pour la table `liste_attente`
--
ALTER TABLE `liste_attente`
  ADD CONSTRAINT `FK_LISTATTENTE_ATTENTE` FOREIGN KEY (`num_attente`) REFERENCES `attente` (`num_attente`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
