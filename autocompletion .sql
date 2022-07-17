-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 17 juil. 2022 à 11:38
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
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `race_chien`
--

CREATE TABLE `race_chien` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `nbre_inscri` varchar(200) NOT NULL,
  `images` text NOT NULL,
  `force` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `race_chien`
--

INSERT INTO `race_chien` (`id`, `nom`, `nbre_inscri`, `images`, `force`) VALUES
(1, 'Berger belge', '11 267', 'berger-belge-tervueren-075210.jpg', ' a une force de morsure exceptionnelle'),
(2, 'Berger allemand ', '10 964', 'berge allemand.jpg', ' a une force de morsure exceptionnelle'),
(3, 'Berger australien ', '10 165', 'berger-australien.jpg', ' a une force de morsure exceptionnelle'),
(4, 'Golden retriever ', '9 808', 'Golden retriever .jpg', 'Golden retriever '),
(5, 'American Staffordshire terrier - amstaff ', '9 718', 'American Staffordshire .jpg', 'Attention à ne pas le confondre avec le staffordshire bull terrier, une race un peu plus petite mais tout aussi musclée qu’on surnomme également « staffie ».'),
(6, 'Staffordshire bull terrier staffie', '9 007', 'staffordshire-bull-terrier.jpg', 'Le Staffordshire Bull Terrier est une race canine ancienne, de taille moyenne et à poil court, sélectionnée à l\'origine au Royaume-Uni pour participer à des combats de chiens avant que la pratique soit prohibée. '),
(7, 'Labrador\r\n\r\n', '7 470', 'labrador-1-101957.jpg', 'Le Labrador Retriever est un chien anglais dont les ancêtres ont été ramenés de Terre-Neuve dès 1814. L\'ancêtre du Labrador serait le « Chien de St John »'),
(8, 'Cavalier King Charles ', '6 989', 'Cavalier King Charles.jpeg', 'Le Cavalier King Charles Spaniel est un chien plein de joie de vivre et d\'entrain, mais tout en étant calme et dénué d\'agressivité. Joueur, amical et sociable'),
(9, 'Chihuahua', '6 540', 'Chihuahua.jpg', 'Le Chihuahua est une race de chien très ancienne. Il est considéré comme le plus petit au monde. '),
(10, 'Bouledogue français', '6 508', 'groupe-bouledogue-francais.jpg', 'Le bouledogue ou bouledogue français est une race canine de la famille des molosses qui apparut d\'abord en Orient avec le molosse de Sumer, et dont les principales caractéristiques sont un crâne brachycéphale'),
(11, 'Setter anglais', '5 591', 'Setter anglais.jpg', '0'),
(12, 'Chien de Cour Italien - cane corso', '5 183', 'cane corso 2.jpg', 'Le cane corso, de son vrai nom italien « Cane corso italiano », est une race de chiens molosses, d\'origine italienne, utilisés comme chiens de garde, de défense, de police et de pistage.'),
(13, 'Cocker Spaniel Anglais', '5 114', 'Cocker Spaniel Anglais.jpeg', 'Le Cocker Spaniel Anglais est une race véritablement populaire. Son caractère plaît à de nombreuses familles. '),
(14, 'Beagle', '4 682', 'le-beagle-un-chien-doux-et-polyvalent.jpeg', 'Le beagle est une race de chien originaire d’Angleterre, de taille petite à moyenne. Son apparence est similaire à celle du beagle-harrier bien qu\'il soit plus petit, avec des pattes plus courtes et des oreilles plus longues.'),
(15, 'Epagneul Breton', '4 553', 'Epagneul Breton.png', 'Un épagneul breton est une race de chien originaire de Bretagne. C\'est un épagneul réputé pour ses talents de chasseur grâce à ses capacités de chien d\'arrêt, de leveur et de rapporteur.'),
(16, 'Yorkshire Terrier\r\n\r\n', '4 454', 'yorkshire-terrier.jpg', 'Le Yorkshire terrier, plus couramment appelé York est une race de chien de petite taille appartenant au groupe des terriers et originaire du comté anglais du même nom. '),
(17, 'Teckel', '3 603', 'Le teckel.jpg', 'Le teckel est une race de basset d\'Allemagne, c\'est-à-dire un chien long et court sur pattes, souvent surnommé « chien-saucisse ».'),
(18, 'Bouvier Bernois', '3 429', 'Bouvier Bernois.png', 'Le bouvier bernois est une race de chien dont la Fédération cynologique internationale attribue l\'origine à la Suisse.'),
(19, 'Berger de Beauce', '3 358', 'bergerdebauce.jpeg', 'Ses principales qualités sont la fidélité et la responsabilité. Il se montre loyal envers son maître, qu\'il protègera contre tout.'),
(20, 'Shih Tzu', '3 247', 'le-shih-tzu-un-chien-pas-si-zen.jpeg', 'La race du Shih Tzu est originaire du Tibet. En tibétain, son nom signifie « chien-lion » et dans la culture tibétaine il est apparenté au Dogue Tibétain, autrement nommé « lion des neiges ».');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `race_chien`
--
ALTER TABLE `race_chien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `race_chien`
--
ALTER TABLE `race_chien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
