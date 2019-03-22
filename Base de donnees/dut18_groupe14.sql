-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 22 Mars 2019 à 17:11
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.1.12-1+0~20171129100550.11+stretch~1.gbp8ded15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dut18_groupe14`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `histoire_id` int(11) NOT NULL,
  `positif` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chapitre`
--

CREATE TABLE `chapitre` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titrecourt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texte` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `histoire_id` int(11) NOT NULL,
  `premier` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `chapitre`
--

INSERT INTO `chapitre` (`id`, `titre`, `titrecourt`, `texte`, `photo`, `question`, `histoire_id`, `premier`, `created_at`, `updated_at`) VALUES
(1, NULL, 'et 1', 'Aujourd\'hui z1 ne sait pas trop quel nombre il va représenter. Tout dépend déjà de la première question.', NULL, 'Est-ce-qu\'ul fait beau aujourd\'hui ?', 1, 1, NULL, NULL),
(2, NULL, 'et 2', 'Dommage, le ciel est gris. Mais ce n\'est pas grave !. Aujourd\'hui z1 représentera un petit nombre... Et cette deuxième question, où va-t-elle nous amener ?', 'https://img.20mn.fr/XDQLMICIT4KqIOy3ubcYIg/310x190_homme-marche-sous-pluie-a-caen-9-juin-2014.jpg', 'Prêt pour aller voir Ready Player One ?', 1, 0, NULL, NULL),
(3, NULL, 'et 2', 'Super, il fait beau !!!! A partir de la, le plus grand bit de z1 est vrai. Quelle fierté. Mais quel suspense, Que va t il se passer maintenant ? ', 'https://www.lsa-conso.fr/mediatheque/2/4/0/000144042_5.jpg', 'Un tour à la plage ou une marche ?', 1, 0, NULL, NULL),
(4, NULL, ' et 3 zéro !!', 'Elle est pourtant bien cette histoire. z1 est vraiment ronchon aujourd\'hui. Que des zeros, \n            Il représente donc le néant, le vide, rien, le zéro quoi.. Demain sera un autre jour, espérons que cela finisse mieux', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBF26Ci41Ys3I9jbIbYyWF4NAKl6VADyioelHpvGm4b9wJmgza', NULL, 1, 0, NULL, NULL),
(5, NULL, ' et 3 zéro !!', 'Super, réprésentant le 1, c\'est pas mal d\'aller voir Ready Player One !!', 'https://img.bfmtv.com/c/1256/708/00f29/b41bac1ae3222f9b727c6198f2e.jpeg', NULL, 1, 0, NULL, NULL),
(6, NULL, ' et 3 zéro !!', 'La plage, le soleil, la mer !!! Représenter un 2, ca a du bon quelque fois !', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHh_Cu9fL0f0d-7EejUzb1XzNPyfgu7RZLlUweSswf8anOevY6Q', NULL, 1, 0, NULL, NULL),
(7, NULL, ' et 3 zéro !!', ' Belle journée pour z1. Il ne possède que des 1 ! En allant marcher il croisera peut-être les 3 petits cochons. ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgrp7jlZZSLC8iejw3NGoSkvo8JCE7VxZ0uhSNuaiVNzVSRydt', NULL, 1, 0, NULL, NULL),
(8, NULL, 'Les oracles', '<p>Le robot, privé de certains capteurs sensoriels, vivait particulièrement mal sa désorientation\ntemporo-spatiale. Son degré de sensibilité était devenu très élevé avec la mise à jour 2187\nversion THX 1138. Cette légère défaillance le désobligeait, autant techniquement que parce\nqu&#39;elle ternissait sa réputation de modèle incomparable, de must de la robotique\nintelligente, de George Clooney version Asimov. </p><p>\nAu seuil de l&#39;atelier, il dut se résoudre à faire ce pour quoi il était pourtant programmé,\ndemander de l&#39;aide. Issu de la dernière génération des robots dotés d&#39;intelligence artificielle\ncréée derrière les hauts murs du Consortium Robotique International Libertaire, le CRIL, une\nforteresse classée AAA dans les milieux autorisés, il avait appris à choisir.</p>', 'https://www.cril-limouzi.com/img/lgm-production-logo-1505993315.jpg', 'Sonner ? Téléphoner ? Demander conseil aux trois Fred, les oracles technologiques d&#39;un\nmonde nouveau, FredH, FredB et FredZ ?', 2, 1, NULL, NULL),
(9, NULL, 'Boum !', 'La sonnette eut à peine le temps de retentir qu&#39;une déflagration d&#39;une violence\nsismique marqua d&#39;une fine rayure son Kevlar renforcé et explosa totalement son\nréseau neuronal artificiel en même temps que tout le réseau synaptique de synthèse\nassocié. Il avait cédé à la plus ancienne des ruses développées par les SolBots,\ncompter sur un réflexe d’humain : sonner à une porte. Le piège était grossier, il était\ntombé dedans. A force de s’humaniser, il eut à peine le temps de comprendre qu’il\nmourait d’avoir trop ressemblé aux hommes. <b>Fin de partie.</b>', 'http://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Explosions.jpg/800px-Explosions.jpg', NULL, 2, 0, NULL, NULL),
(10, NULL, 'Dring !', 'La sonnerie du téléphone ne fit que retentir dans un silence assourdissant qui lui\npesa tant qu&#39;il ressentit une solitude poisseuse, presque philosophique. Rien à faire, il\nentendait cette musique ultrasonique et familière de la tentative de connexion\nneuronale, celle qui avait remplacé les appels classiques. Rien, le néant, le vide\nsidéral.', 'https://cdnb.artstation.com/p/assets/images/images/004/706/561/large/nicolas-martinez-matrix-telephone-1.jpg?1485675368', 'Ne lui restaient que <b>deux</b> possibilités :', 2, 0, NULL, NULL),
(11, NULL, 'Help !', 'Les Oracles se tournèrent lentement vers lui, les yeux aussi verts qu&#39;une ligne de code sur\nun MO5 et l’écoutèrent attentivement. Après de longs palabres dans une langue connue\nd’eux seuls, ils consentirent à lui répondre dans une langue commune. Ils s’avouaient\ndépassés, il fallait consulter d’autres devins, capables d’autres formes de divinations, Blam\nBlam, Kangoo et Verre brisé, inconnus sous d’autres noms. Seuls ces trois-là sauraient. Peut-\nêtre. La route serait longue, sinueuse, hasardeuse.', 'https://i.ytimg.com/vi/eVF4kebiks4/maxresdefault.jpg', 'Que faire alors ?', 2, 0, NULL, NULL),
(12, NULL, 'Spaceshifter', 'En remontant dans son l’habitacle, Un fin sourire trancha son visage en une lame\ncourbe, il savait que sa conscience serait transférée rapidement dans une autre\nenveloppe corporelle en cas de problème. Transhumaniste et Marxiste, il fallait bien\nqu’il en reste un pour que ces idées progressistes survivent. Il avait tout prévu. Il ne\nsavait pas que si ce n’était pas tout à fait sa dernière pensée, ce serait en tout cas le\ndernier moment de cette enveloppe robotique. Les Solbots avaient encore frappé. Le\nspaceshifter se désintégra sous l’effet cumulé des charges sourdes et subsoniques, la\nnouvelle manière de procéder. Aucun bruit, une oppressante sensation de vide et\nl’implosion.', 'http://4everstatic.com/images/art/film-et-serie/battlestar-galactica,-vaisseau-spatial-172243.jpg', NULL, 2, 0, NULL, NULL),
(13, NULL, 'Voyage interstellaire', 'Intuitivement, étonné par son incapacité à élaborer un\nraisonnement, il leur fit confiance, prit la route qu’ils leur indiquaient et songea\nmalicieusement à LUH 3417, son âme sœur, sa quête, son Graal, celle qui motivait\nces allers-retours planétaires, sidéraux, ses circuits fatigués, ses calculateurs saturés,\nce soupçon de lassitude inconnu jusqu’alors. Les oracles lui avaient indiqué que ces\ntrois-là sauraient et lui ne savait rien. Il n’avait pas d’autre choix, il le savait,\nintuitivement et rationnellement. LULUH serait peut-être au bout d’un nouveau\nvoyage. Il y croyait, ne croyait qu’en ça, n’avait plus que ça. Elle était son tout\norganique et robotique. En route...', 'https://i.ytimg.com/vi/aockugeMFyg/maxresdefault.jpg', NULL, 2, 0, NULL, NULL),
(33, 'Un appel soudain', 'Un appel soudain', 'Dans la paisible ville d’Ohide, rien ne semble perturber ses habitants. Disposant d’un des taux de criminalité les plus bas de tout le comté, Ohide paraît être l’endroit idéal pour mener une vie calme, loin de tous les tumultes habituels. Ce coin de paradis n’est en réalité que le lieu de prédilection des crimes les plus sanglants.\r\nDans cette banlieu, vous incarnez Benoît. Vous êtes marié à Elisabeth, et formez un charmant couple. En apparence,vous avez tout du couple parfait, vous êtes des voisins respectueux et polis, faisant toujours bonne figure. \r\nMais tout a été chamboulé le jour où le téléphone se met à sonner. Il est 10h30 et les sonneries retentissent à plusieurs reprises.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/Ohide-1.png?w=768', NULL, 36, 1, NULL, NULL),
(34, 'A la recherche d’indices', 'A la recherche d’indices', 'Vous appelez la police et vous commencez à fouiller la maison à la recherche d’éventuels indices menant à sa disparition.\r\nVous vous lancez dans les fouilles de la maison. \r\n', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-2.png?w=768', 'Par quelle pièce souhaitez-vous commencer ?', 36, 0, NULL, NULL),
(35, 'Déposition ou interrogatoire ?', 'Déposition ou interrogatoire ?', 'La police arrive alors et vous accompagne au poste afin de prendre votre déposition.\r\nUne fois au commissariat, vous suivez l’agent Bidule. Vous êtes donc assis, face à lui. Il commence à vous interroger quant aux circonstances de la disparition de votre femme. \r\nTout d’abord, Il vous demande d’expliquer ce qu’il s’est passé durant les deux jours précédant son absence.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-3.png?w=768', NULL, 36, 0, NULL, NULL),
(36, 'Une question déstabilisante', 'Une question déstabilisante', 'Vous ne dévoilez pas vos découvertes précédentes et préférez les garder pour vous, par simple intuition. Dans votre fort intérieur, vous savez que vous ne devez rien dire. \r\nLes questions continuent, et l’une d’entre elles vous perturbe particulièrement.\r\nBidule vous demande :', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-3.png?w=768', '“Et dans votre vie de couple, tout se passe bien ?”', 36, 0, NULL, NULL),
(37, 'Ne pas oublier de prendre ses médicaments !', 'Ne pas oublier de prendre ses médicaments !', 'Fin de l’interrogatoire, Bidule vous laisse rentrer chez vous, en attendant l’étude de votre dossier. Sur le chemin vous pensez à votre femme. Où peut-elle bien être ? Le stress commence à vous gagnez. Une fois dans la maison familiale, vous vous dirigez vers la salle de bain afin de vous rafraîchir un peu. Vous voyez alors votre pilulier sur l’étagère et vous vous apercevez que vous n’avez pas pris vos médicaments hier matin.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/g%C3%A9lules-finales-1.png?w=768', NULL, 36, 0, NULL, NULL),
(38, 'Nettoyage...', 'Nettoyage...', 'Vous descendez à la cave chercher une bouteille. En la prenant, vous sentez une matière poisseuse sous vos doigts. En baissant la tête vous découvrez des traces de sang parsemant le sol.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-4-bis.png?w=768', NULL, 36, 0, NULL, NULL),
(39, 'Une visite incongrue.', 'Une visite incongrue.', 'Vous descendez à la cave chercher une bouteille. En la prenant, vous sentez une matière poisseuse sous vos doigts. Vous baissez la tête et découvrez des traces de sang parsemant le sol. Inquiet, vous remontez avec votre bouteille et vous installez dans le salon afin de réfléchir à tout ça. \r\nVous êtes installés dans votre canapé, la tête pleine de questions. Vous avez peur qu’il soit arrivé quelque chose de grave à votre femme. C’est alors qu’on frappe à la porte. L’agent Bidule et ses collègues sont sur votre palier. Quand vous leur ouvrez, vous décrivez la situation et faites part de votre découverte et de vos inquiétudes. Vous leur dites d’entrer au plus vite pour qu’ils puissent trouver des indices.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-5.png?w=768', NULL, 36, 0, NULL, NULL),
(40, 'Une visite incongrue..', 'Une visite incongrue..', 'Vous savourez votre verre de vin tant mérité, après avoir bien dissimulé toutes les preuves vous accablant. Votre maison est propre et vous êtes persuadé de ne rien avoir laissé traîner derrière vous. \r\nL’agent Bidule suivi de deux collègues frappent à votre porte. Serein et sûr de vous, vous leur ouvrez sans problème, ils sont les bienvenue chez vous.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-5.png?w=768', NULL, 36, 0, NULL, NULL),
(41, 'Une visite incongrue...', 'Une visite incongrue...', 'L’agent Bidule frappe à votre porte, accompagné de deux de ses collègues. Vous êtes en panique et essayez de contenir votre stress, encore sous le choc de votre découverte. Vous posez votre verre sur la table, reprenez votre souffle, inspirez un bon coup, et décidez d’ouvrir aux agents, pour savoir ce qu’ils veulent. \r\nVous n’ouvrez pas complètement la porte. Vous ne voulez pas qu’ils entrent et qu’ils puissent découvrir des preuves vous accablant. \r\nC’est alors qu’au cours d’une brève discussion ils aperçoivent des tâches de sang sur la manche de votre pull. \r\nIl n’y a plus de discussion qui tienne, ils entrent de force chez vous.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/chapitre-5.png?w=768', NULL, 36, 0, NULL, NULL),
(42, 'La police commence les fouilles', 'La police commence les fouilles', 'La police entre chez vous.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(43, 'Humeur changeante', 'Humeur changeante', 'L’agent se place en face de vous et commence à vous poser des questions.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/sofa-verre.png?w=768', NULL, 36, 0, NULL, NULL),
(44, 'Coopération ou entrave ?', 'Coopération ou entrave ?', 'Les policiers commencent leurs recherches.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/escaliers.png?w=768', NULL, 36, 0, NULL, NULL),
(45, 'La valise', 'La valise', 'Les policiers se rendent compte que la valise de votre femme est restée dans la pièce. Ils  comprennent tout de suite que vos propos ne sont pas cohérent, et que vous leur avez caché la vérité. Ils vous décident de vous emmener au poste. Vous acceptez de les suivre sans discuter puisque vous n’avez pas peur des accusations à votre encontre. Vous répondez docilement à leurs questions.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', 'La dernière fois que vous avez vu votre femme, elle allait bien ?', 36, 0, NULL, NULL),
(46, 'Activité ?', 'Activité ?', 'Que faisait-elle ?', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(47, 'Un stress justifié', 'Un stress justifié', 'Pour quelle raison ?', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(48, 'Découverte du corps', 'Découverte du corps', 'Interruption de l’interrogatoire par un policier qui rentre dans la salle et annonce découverte corps de la femme.\r\nMonsieur, nous avons retrouvé le corps de votre femme.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(49, 'Des aveux à faire ?', 'Des aveux à faire ?', 'Il semblerait que quelqu’un l’ai amené jusque là.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', 'Avez vous quelque chose à nous avouer ?', 36, 0, NULL, NULL),
(50, 'Ignorance', 'Ignorance', 'Comment ça vous ne savez pas ?\r\nMonsieur, est-ce vous qui avait blessé et poussé votre femme dans cette citerne. Pas de réponse. Vous savez au fond de vous que vous êtes responsable de cette situation. Une dispute. Une chute contre cette étagère. Un coup à la tête. sa fuite. Puis la citerne sur son chemin.', NULL, NULL, 36, 0, NULL, NULL),
(51, 'Des aveux à faire ??', 'Des aveux à faire ??', 'Il semblerait que quelqu’un l’ai amené jusque là. Vous êtes bien silencieux.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', 'Avez vous quelque chose à nous avouer ?', 36, 0, NULL, NULL),
(52, 'Fierté malsaine', 'Fierté malsaine', 'Le silence continue. Très bien. Peut être qu’avec cette photo la mémoire vous reviendra. (L’agent montre une photo du corps au fond du puit). Il semblerait qu’elle ai reçu un coup à la tête.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/puit.png?w=768', 'Avez vous une explication ?', 36, 0, NULL, NULL),
(53, 'Étrange objectivité', 'Étrange objectivité', '(l’agent montre la photo du corps). Pouvez-vous nous expliquer d’où vient cette blessure à la tête ? Vous semblez en savoir un peu plus que nous.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/puit.png?w=768', NULL, 36, 0, NULL, NULL),
(54, 'La valise.', 'La valise.', 'Les policiers se rendent compte que la valise de votre femme est restée dans la pièce. Ils  comprennent tout de suite que vos propos ne sont pas cohérent, et que vous leur avez caché la vérité. Vous ne vous laissez pas faire, vous n’acceptez pas le fait qu’on vous embarque. Vous vous débattez, et les policiers vous passent les menottes puisque vous faites entrave à la justice.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', 'La dernière fois que vous avez vu votre femme, elle allait bien ?', 36, 0, NULL, NULL),
(55, 'Rapidité', 'Rapidité', 'C’est une réponse rapide.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', 'Pouvez-vous nous en dire plus ?', 36, 0, NULL, NULL),
(56, 'Confiance', 'Confiance', 'Vous ne semblez pas vraiment concerné par l’état de votre femme.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(57, 'Découverte corps.', 'Découverte corps.', 'Interruption de l’interrogatoire par un policier qui rentre dans la salle et annonce découverte corps de la femme.\r\nMonsieur, nous avons retrouvé le corps de votre femme.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/bulle-final.png?w=768', NULL, 36, 0, NULL, NULL),
(58, 'Non-acceptation', 'Non-acceptation', 'Vous êtes donc jugé coupable de votre crime. Vous ne concevez pas le fait de l’avoir tué, ou plutôt votre deuxième personnalité. Vous ne vous êtes pas contrôlés, ça n’était pas vraiment vous. Vous n’avez pas d’autre choix que d’accepter le jugement qu’il vous a été octroyé : vous êtes internés en hôpital psychiatrique. La schizophrénie ne vous rendant pas responsable de vos actes.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/arrested.png?w=768', NULL, 36, 0, NULL, NULL),
(59, 'Volontaire', 'Volontaire', 'Votre deuxième personnalité a pris le dessu sur vous. Elle a pris pleinement possession de votre corps. Vous n’existez plus, vous, Benoît et laissez place à JHKFJD. Il vous contrôle. Il assume pleinement ce qu’il a fait, et ressent même de la fierté à l’avoir fait.  \r\nVous, ou plutôt lui, finissez en prison, pour crime passionnelle.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/arrested.png?w=768', NULL, 36, 0, NULL, NULL),
(60, 'Panique', 'Panique', 'Lorsque l’agent de police se met à vous parler du crime que vous avez commis, vous cherchez une échappatoire, un moyen de ne pas finir en prison pour le reste de votre vie. Vous simulez une crise d’épilepsie, afin de faire venir une ambulance. Vous profitez donc du trajet à bord de cette dernière pour vous enfuir.', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/arrested.png?w=768', NULL, 36, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `label`, `created_at`, `updated_at`) VALUES
(1, 'SF', NULL, NULL),
(2, 'Comics', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `histoire`
--

CREATE TABLE `histoire` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pitch` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `histoire`
--

INSERT INTO `histoire` (`id`, `user_id`, `titre`, `pitch`, `photo`, `genre_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'z1 ou la vie d\'un demi-octet', 'z1 n\'a pas une vie très compliquée. Quelque soit la question, la réponse se limite à 0 ou 1. \n             En même temps, cela lui permet au moins de représenter des nombres en mode binaire. C\'est déjà cela !', 'https://bathboxoffice.org.uk/wp-content/uploads/2017/10/the-octet-logo-mall-2.jpg', 1, 1, NULL, NULL),
(2, 2, 'THX1138', 'THX1138 est un robot mal dans sa peau et qui cherche un sens à sa vie.', 'https://m.media-amazon.com/images/M/MV5BYzRiY2I3M2EtODJkMy00NTEyLTgxNmYtYzYwYjk1ZDE1MDE1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY1200_CR111,0,630,1200_AL_.jpg', 1, 1, NULL, '2019-02-02 12:09:36'),
(36, 5, 'Meurtre à Ohide', 'Dans la ville d’Ohide, se trouvent Elisabeth et Benoit qui forment un charmant couple marié. Vous prendrez la place de Benoit  et vous voyez votre vie chamboulée le jour où le téléphone se met à sonner. Elisabeth ne se trouve plus en séjour chez ses parents et elle n’est jamais rentrée. En êtes-vous la cause ? A  vous de choisir !', 'https://theaudelpechportfolio.files.wordpress.com/2018/12/image-histoire.png', NULL, 1, NULL, '2018-12-20 08:01:55'),
(42, 13, 'bkjb', 'ghjgh', 'http://www.placedubonheur.com/img/article/src/2HSB2-SlytherinRobeCinereplicas_(5).jpg', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lecture`
--

CREATE TABLE `lecture` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `histoire_id` int(11) NOT NULL,
  `chapitre_id` int(11) NOT NULL,
  `num_sequence` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `lecture`
--

INSERT INTO `lecture` (`id`, `user_id`, `histoire_id`, `chapitre_id`, `num_sequence`, `created_at`, `updated_at`) VALUES
(188, 5, 36, 24, 1, NULL, NULL),
(189, 5, 36, 25, 2, NULL, NULL),
(190, 5, 36, 26, 3, NULL, NULL),
(191, 5, 36, 27, 4, NULL, NULL),
(192, 5, 36, 28, 5, NULL, NULL),
(198, 9, 36, 33, 1, NULL, NULL),
(199, 9, 36, 34, 2, NULL, NULL),
(200, 9, 36, 34, 3, NULL, NULL),
(215, 11, 36, 36, 1, NULL, NULL),
(258, 3, 36, 33, 1, NULL, NULL),
(280, 12, 36, 33, 1, NULL, NULL),
(299, 6, 2, 8, 1, NULL, NULL),
(384, 7, 36, 36, 1, NULL, NULL),
(386, 2, 2, 8, 1, NULL, NULL),
(387, 2, 2, 10, 2, NULL, NULL),
(401, 2, 36, 36, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_04_115842_create_histoire_table', 1),
(4, '2018_12_04_120218_create_chapitre_table', 1),
(5, '2018_12_04_120349_create_genre_table', 1),
(6, '2018_12_04_120420_create_avis_table', 1),
(7, '2018_12_04_120548_create_lecture_table', 1),
(8, '2018_12_04_120643_create_suite_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suite`
--

CREATE TABLE `suite` (
  `id` int(10) UNSIGNED NOT NULL,
  `chapitre_source_id` int(11) NOT NULL,
  `chapitre_destination_id` int(11) NOT NULL,
  `reponse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `suite`
--

INSERT INTO `suite` (`id`, `chapitre_source_id`, `chapitre_destination_id`, `reponse`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '0', NULL, NULL),
(2, 1, 3, '1', NULL, NULL),
(3, 2, 4, '0', NULL, NULL),
(4, 2, 5, '1', NULL, NULL),
(5, 3, 6, '0', NULL, NULL),
(6, 3, 7, '1', NULL, NULL),
(7, 8, 9, 'Sonner', NULL, NULL),
(8, 8, 10, 'Téléphoner', NULL, NULL),
(9, 8, 11, 'Demander conseil au 3 Fred', NULL, NULL),
(10, 10, 11, 'consulter les oracles aux yeux d’émeraude', NULL, NULL),
(11, 10, 12, 'remonter dans son spaceshifter dans l’hypothétique espoir d’une rencontre miraculeuse', NULL, NULL),
(12, 11, 12, 'Rester méfiant et remonter dans son spaceshifter', NULL, NULL),
(13, 11, 13, 'Leur faire confiance', NULL, NULL),
(15, 19, 20, 'montagne', NULL, NULL),
(16, 21, 22, '2', NULL, NULL),
(17, 21, 21, '1', NULL, NULL),
(18, 16, 23, 'A moins d’avoir une boutique e-commerce, les gens ne reviendront pas souvent sur votre site web. Ils n’ont juste aucune raison de revenir plus de 2 fois.  Une fois qu’ils ont trouvé votre page Contact et lu votre page A propos, ils en savent déjà assez pour prendre la décision d’acheter chez vous ou non, ou de vous engager si vous vendez vos services.  Mais si vous avez un blog, c’est différent. Vos articles, s’ils ont été écrits pour eux, leur donneront une bonne raison de revenir. Le lancement d’un blog est donc un axe opportun pour délivrer du contenu et faire revenir des clients ou générer des prospects.', NULL, NULL),
(19, 24, 25, 'Vous vous décidez à répondre sans inquiétude. C’est votre belle mère au téléphone. Inquiète, elle demande pourquoi votre femme n’est jamais arrivée chez elle, comme c’était prévu deux jours auparavant. Vous lui dites que vous allez contacter ses amis proches pour en savoir plus. Sa meilleure amie n’a pas de nouvelle.', NULL, NULL),
(20, 24, 25, 'Vous continuez de regarder la télé et laissez le téléphone sonner. Le répondeur se déclenche, et vous entendez votre belle mère s’exprimer. Elle explique qu’Elisabeth n’est jamais arrivée chez elle comme prévu.', NULL, NULL),
(21, 25, 26, 'Vous commencez par la chambre, vous découvrez la valise de votre femme dans le coin de la pièce. Vous l’ouvrez et y voyez ses vêtements. Comment aurait-elle pu oublier ses affaires ? Vous trouvez cela étranges.', NULL, NULL),
(22, 25, 26, 'Vous commencez vos recherches dans le salon et vous trouvez tout de suite son téléphone et ses clés de voiture sur la commode de l’entrée. Si Elisabeth était partie de la maison, elle les aurait emportés avec elle. Vous commencez à vous inquiéter. Vous attrapez le trousseau et vous dirigez vers le garage. La voiture d’Elisabeth est toujours là. Vous ouvrez le coffre, les portières, la boîte à gants, rien. Tout est vide, comme si elle n’avait jamais eu l’intention de quitter la maison.', NULL, NULL),
(23, 26, 27, 'Vous lui répondez calmement qu’elle avait préparé sa valise et s’apprêtait à prendre la route pour aller voir sa famille. Vous croyez l’avoir vu partir, sans vraiment en avoir le souvenir. C’est comme si ce n’était pas réellement vous. Le policier ne remet pas en cause vos propos et vous croit.', NULL, NULL),
(24, 26, 27, 'Vous lui répondez qu’elle est partie avant votre réveil, vous ne l’avez pas vu partir. Cela est flou dans votre esprit, comme si ce n’était pas vous qui avez vécu cette scène. Vous ne savez donc pas si elle pris la route. L’agent Bidule commence à douter de vos propos.', NULL, NULL),
(25, 27, 28, '-”Tout se passe bien, nous sommes un couple heureux en ménage.”', NULL, NULL),
(26, 27, 28, '-”C’est vrai que nous avons des hauts et des bas, quelques tensions sont apparus ces derniers temps…”', NULL, NULL),
(27, 28, 29, 'Vous en avez marre d’ingurgiter vos gélules qui, selon vous, ne sont d’aucune utilité. Vous les abandonnez sur le lavabo et décidez de boire un verre. Votre médecin vous le déconseille. En effet, cela risque de réveiller le mauvais côté de votre personnalité mais vous en faites abstraction.', NULL, NULL),
(28, 28, 30, 'Vous décidez de prendre vos gélules, et de les faire passer avec un verre de vin. Votre médecin vous le déconseille. En effet, cela risque de réveiller le mauvais côté de votre personnalité mais vous en faites abstraction.', NULL, NULL),
(29, 29, 31, 'Calmement, vous remontez pour prendre une serpillière afin d’effacer les tâches. Vous effectuez cette action avec minutie et vérifiez bien que tout est propre. Vous retournez dans votre salon, votre bouteille à la main. Après avoir tout rincer et tout remis en ordre, vous vous installer dans votre canapé en sirotant votre verre.', NULL, NULL),
(30, 29, 32, 'Vous paniquez. Vous courez vers la cuisine, attrapez une bassine et une éponge afin d’effacer toutes les tâches une fois de retour au sous sol. Vous vous activez et remontez vite ranger tout le matériel afin de vous installer, un verre à la main, comme si rien ne s’était produit.', NULL, NULL),
(31, 33, 34, 'Vous vous décidez à répondre sans inquiétude. C’est votre belle mère au téléphone. Inquiète, elle demande pourquoi votre femme n’est jamais arrivée chez elle, comme c’était prévu deux jours auparavant. Vous lui dites que vous allez contacter ses amis proches pour en savoir plus. Sa meilleure amie n’a pas de nouvelle.', NULL, NULL),
(32, 33, 34, 'Vous continuez de regarder la télé et laissez le téléphone sonner. Le répondeur se déclenche, et vous entendez votre belle mère s’exprimer. Elle explique qu’Elisabeth n’est jamais arrivée chez elle comme prévu.', NULL, NULL),
(33, 34, 35, 'Vous commencez par la chambre, vous découvrez la valise de votre femme dans le coin de la pièce. Vous l’ouvrez et y voyez ses vêtements. Comment aurait-elle pu oublier ses affaires ? Vous trouvez cela étranges.', NULL, NULL),
(34, 34, 35, 'Vous commencez vos recherches dans le salon et vous trouvez tout de suite son téléphone et ses clés de voiture sur la commode de l’entrée. Si Elisabeth était partie de la maison, elle les aurait emportés avec elle. Vous commencez à vous inquiéter. Vous attrapez le trousseau et vous dirigez vers le garage. La voiture d’Elisabeth est toujours là. Vous ouvrez le coffre, les portières, la boîte à gants, rien. Tout est vide, comme si elle n’avait jamais eu l’intention de quitter la maison.', NULL, NULL),
(35, 35, 36, 'Vous lui répondez calmement qu’elle avait préparé sa valise et s’apprêtait à prendre la route pour aller voir sa famille. Vous croyez l’avoir vu partir, sans vraiment en avoir le souvenir. C’est comme si ce n’était pas réellement vous. Le policier ne remet pas en cause vos propos et vous croit.', NULL, NULL),
(36, 35, 36, 'Vous lui répondez qu’elle est partie avant votre réveil, vous ne l’avez pas vu partir. Cela est flou dans votre esprit, comme si ce n’était pas vous qui avez vécu cette scène. Vous ne savez donc pas si elle pris la route. L’agent Bidule commence à douter de vos propos.', NULL, NULL),
(37, 36, 37, '-”Tout se passe bien, nous sommes un couple heureux en ménage.”', NULL, NULL),
(38, 36, 37, '-”C’est vrai que nous avons des hauts et des bas, quelques tensions sont apparus ces derniers temps…”', NULL, NULL),
(39, 37, 39, 'Vous décidez de prendre vos gélules, et de les faire passer avec un verre de vin. Votre médecin vous le déconseille. En effet, cela risque de réveiller le mauvais côté de votre personnalité mais vous en faites abstraction.', NULL, NULL),
(40, 37, 38, 'Vous en avez marre d’ingurgiter vos gélules qui, selon vous, ne sont d’aucune utilité. Vous les abandonnez sur le lavabo et décidez de boire un verre. Votre médecin vous le déconseille. En effet, cela risque de réveiller le mauvais côté de votre personnalité mais vous en faites abstraction.', NULL, NULL),
(41, 38, 40, 'Calmement, vous remontez pour prendre une serpillière afin d’effacer les tâches. Vous effectuez cette action avec minutie et vérifiez bien que tout est propre. Vous retournez dans votre salon, votre bouteille à la main. Après avoir tout rincer et tout remis en ordre, vous vous installer dans votre canapé en sirotant votre verre.', NULL, NULL),
(42, 38, 41, 'Vous paniquez. Vous courez vers la cuisine, attrapez une bassine et une éponge afin d’effacer toutes les tâches une fois de retour au sous sol. Vous vous activez et remontez vite ranger tout le matériel afin de vous installer, un verre à la main, comme si rien ne s’était produit.', NULL, NULL),
(43, 39, 42, 'Que se passe-t-il ensuite ?', NULL, NULL),
(44, 40, 42, 'Que se passe-t-il ensuite ?', NULL, NULL),
(45, 41, 42, 'Que se passe-t-il ensuite ?', NULL, NULL),
(46, 42, 43, 'Vous êtes assis sur votre canapé verre à la main, en vous contentant d’attendre qu’une partie des policiers exécute la fouille. Un officier vient alors vous interroger de nouveau.', NULL, NULL),
(47, 42, 44, 'Vous décidez de suivre les policiers afin de contrôler que tout se passe bien. Vous avez un sentiment bizarre au fond de vous. Deux types d’approches s’offrent à vous.', NULL, NULL),
(48, 43, 45, 'Vous êtes calme, vous n’avez rien à vous reprocher et vous répondez sans problème à ses questions.', NULL, NULL),
(49, 44, 45, 'Vous coopérez et les laissez faire la fouille de votre maison sans broncher. Ils sont là pour vous aider à résoudre l’enquête. Vous les aidez du mieux possible.', NULL, NULL),
(50, 43, 54, 'Vous êtes sur la défensive puisqu’il vous accuse. Vous commencez à être agité et agressif. Cela ne vous ressemble pas mais la situation est critique.', NULL, NULL),
(51, 44, 54, 'Vous n’avez pas envie qu’ils découvrent quoique ce soit vous incriminant. Vous décidez donc de bloquer leur avancement, et faites tout pour qu’ils parviennent à ne rien trouver, quitte à devenir oppressant.', NULL, NULL),
(52, 45, 46, 'Elle allait bien', NULL, NULL),
(53, 45, 47, 'Elle semblait stressée', NULL, NULL),
(54, 46, 48, 'Sa valise', NULL, NULL),
(55, 46, 48, 'Se brosser les dents', NULL, NULL),
(56, 47, 48, 'Elle a beaucoup de travail en ce moment je pense', NULL, NULL),
(57, 47, 48, 'Aucune idée (semble perturbé, ne sais plus trop)', NULL, NULL),
(58, 48, 49, 'Oh mon dieu. Que lui est-il arrivé ?', NULL, NULL),
(59, 48, 51, 'Vous restez silencieux, choqué.', NULL, NULL),
(60, 49, 50, 'Vous m’accusez ?', NULL, NULL),
(61, 49, 50, 'Quoi ? Comment… Je… Je ne sais pas', NULL, NULL),
(62, 51, 52, 'Vous restez silencieux.', NULL, NULL),
(63, 51, 53, 'Les souvenirs commencent à ressurgir. Le tableau est encore très flou, mais vous savez que quelque chose de grave s’est produit. Et même si vous trouvez cela horrible, une certaine fierté prend place petit à petit en vous.', NULL, NULL),
(64, 54, 55, 'Oui (réponse sèche)', NULL, NULL),
(65, 54, 56, 'e suppose (vague, s’en fout un peu)', NULL, NULL),
(66, 55, 57, 'Ma femme allait bien. (sec, échappatoire)', NULL, NULL),
(67, 55, 57, 'Elle ne semblait pas avoir de problème. (vous sentez que quelque chose n’est pas normal, vous ne voulez pas éveiller les soupçons).', NULL, NULL),
(68, 56, 57, 'C’est une grande fille. Elle sait s’occuper d’elle et lorsqu’elle à un problème, elle m’en parle. Là, elle ne m’a rien dit, donc tout va bien.', NULL, NULL),
(69, 56, 57, 'Je lui fais confiance, si elle a un problème, elle me le dira.', NULL, NULL),
(70, 52, 59, 'La fierté s’installe tout à coup. Vous savez ce que vous avez fait. Mais vous restez silencieux. De toutes façons, vous savez que les preuves vous accablent, pas besoin d’en rajouter.', NULL, NULL),
(71, 52, 59, 'je l’ai fait. Je n’ai rien à ajouter. Vous gardez la tête haute, les souvenirs s\'enchaînent un à un.', NULL, NULL),
(72, 53, 59, 'Le fond du puit me paraissait judicieux. Vous auriez fait la même chose à ma place.', NULL, NULL),
(73, 53, 59, 'Un air fier se dessine sur votre visage. Les policiers vous tiennent et vous le savez. Vous n’en dites pas plus.', NULL, NULL),
(74, 57, 60, 'Vous restez silencieux, choqué.', NULL, NULL),
(75, 57, 60, 'Des souvenirs vous reviennent. Vous avez l’impression que vous y êtes pour quelque chose dans cette histoire. Vous paniquez mais décidez de rester silencieux.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gump', 'gump@gmail.com', NULL, '$2y$10$iCftqwAJ9yH7bBmPJ15MZOIpLdTbeepBxI46/ASF8Z2ASTYxL7Jpi', NULL, NULL, NULL),
(2, 'azimov', 'azimov@gmail.com', NULL, '$2y$10$UYP2kyLOgQDywyXoFB82yugSKfwFuki1DnlMiXAcrevOL0H/1s5c.', 'hRbZCGCMZz0sMZnKFckI8K2X5ivWaO2QOXvlWgF0G40jMqgHPZe0E0BM11CW', NULL, NULL),
(3, 'theau', 'theaudelpech@orange.fr', NULL, '$2y$10$.JD8Wf2mUyFAnsmN4c3O/uYzbJWfl5F/MAIIJW/CtNhA5yLrF65.a', 'sIziuoWjfGtdMiXCd16wESMp8v9qnlbJdMmJ4oFQ3psrpz9dpBhnikOPpQt8', '2018-12-19 07:33:24', '2018-12-19 07:33:24'),
(4, 'Cindy', 'c.baquero@hotmail.com', NULL, '$2y$10$kKc44P30zRdnRmb5AVRIUeWPFS5HK7XFuu5s9VCdqIK0Ih/w.1e0K', 'ZQtslTBizwQIXhRi9EZJjhir63FTFQcYTbzpCYoA0XYAWpzMuwwX9gx3sog0', '2018-12-19 07:34:14', '2018-12-19 07:34:14'),
(5, 'cloe', 'warlouzet.cloe@gmail.com', NULL, '$2y$10$nJaTygruI0qt7MQpTIT39e26oYv.y2aqzw9NQZ3RlqqpmgpUS3OSu', 'ItqXAIEs5W0iz8jI7N1FGTVoENytjgUmtp59IR5uJClMntax03K9yaG5v1rX', '2018-12-19 07:55:26', '2018-12-19 07:55:26'),
(6, 'alex', 'richard-alex@hotmail.fr', NULL, '$2y$10$IRafTDeoGuRt7pmDo/flhu33Mu9Jf2cx3iKm9sLBy8NogA3zTe1t.', 'HRjKbQroyBEhOOqD66hvx9VpoFM6hcEukqudOkDiwLMZUb6mUYE6p2S298tT', '2018-12-19 10:18:57', '2018-12-19 10:18:57'),
(7, 'Bastien', 'bastienhy@gmail.com', NULL, '$2y$10$14SQrUlOb7RF6tQnXL5xiO9yq8ArxDqcFVzbFCXp6ow/aUUt4XTny', 'CE9zXL2kgbUe0g0SllnonRTyUYihMyt913kCyLh5Dse4lgEFszNOQQHBoMcJ', '2018-12-19 14:20:29', '2018-12-19 14:20:29'),
(8, 'test', 'test@gmail.com', NULL, '$2y$10$ioGrFtSUFtj8QAAClrlKv.Ws63whvVnd9xtMbO13lVlGobXCn7vCi', NULL, '2018-12-20 01:48:32', '2018-12-20 01:48:32'),
(9, 'Jeanne', 'jlimare@outlook.fr', NULL, '$2y$10$g0Gitj1//oNhg0Rwj6u1reZJXpmtvCdB.WkK4rzWxqtkk5BRH024.', '9pRAPusmrp1AsDswUhB2ZvLKWl6gOxxBN4BpPCdnvBNpfv74wDBtsb8cH9WY', '2018-12-20 17:30:19', '2018-12-20 17:30:19'),
(10, 'Jordan', 'jordan@gmail.com', NULL, '$2y$10$QkPiixxZfYxaAuL4k9ObgO2JgoUcfLeg4XIzVt/dhaB0JzNYbQ1Sq', 'mtV5CmHPe2OY95HTFWC5Zk9sNUsmFJCgT6pvjYXbgZE5oGEZEn7bQvF356Iv', '2018-12-20 17:30:55', '2018-12-20 17:30:55'),
(11, 'cloclo', 'clo@gmail.com', NULL, '$2y$10$6ZYl/PnRz6aADM8wyG/6b.BB/caeCvuD1g.dCnZjV9x.Vphr/hlg.', NULL, '2018-12-20 17:31:43', '2018-12-20 17:31:43'),
(12, 'Richard', 'alexbad62400@gmail.com', NULL, '$2y$10$RRFymmL65duXLsKCrdzkbexJ1lsi0L/.Rjq0IeNhf1KUxBVHVjCOu', NULL, '2018-12-21 11:35:46', '2018-12-21 11:35:46'),
(13, 'gf', 'hbjk@kjbkj.fr', NULL, '$2y$10$VM4vjIAc.pZg./98Kq7Sh.VhDVuXRVE8u4Jr0BG90Y63AFzY5mtra', NULL, '2018-12-21 13:49:17', '2018-12-21 13:49:17');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chapitre`
--
ALTER TABLE `chapitre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `histoire`
--
ALTER TABLE `histoire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `suite`
--
ALTER TABLE `suite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chapitre`
--
ALTER TABLE `chapitre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `histoire`
--
ALTER TABLE `histoire`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `suite`
--
ALTER TABLE `suite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
