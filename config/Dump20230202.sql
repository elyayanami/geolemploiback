-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ddfichedepost
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `demandeur`
--

DROP TABLE IF EXISTS `demandeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demandeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameDemander` varchar(45) DEFAULT NULL,
  `imageDemandeur` varchar(255) DEFAULT NULL,
  `descriptionDemandeur` varchar(255) DEFAULT NULL,
  `cvDemandeur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandeur`
--

LOCK TABLES `demandeur` WRITE;
/*!40000 ALTER TABLE `demandeur` DISABLE KEYS */;
INSERT INTO `demandeur` VALUES (1,'Joseph La Fripouille','https://urlz.fr/kFe7','Paysan de père en fils à la recherche d\'un gagne-pain. ','Tiers-Etat');
/*!40000 ALTER TABLE `demandeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichedepost`
--

DROP TABLE IF EXISTS `fichedepost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fichedepost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namePost` varchar(150) DEFAULT NULL,
  `imagePost` varchar(255) DEFAULT NULL,
  `descriptionPost` varchar(255) DEFAULT NULL,
  `salairePost` varchar(255) DEFAULT NULL,
  `prérequis` varchar(255) DEFAULT NULL,
  `Demandeur_id` int NOT NULL,
  PRIMARY KEY (`id`,`Demandeur_id`),
  KEY `fk_FicheDePost_Demandeur_idx` (`Demandeur_id`),
  CONSTRAINT `fk_FicheDePost_Demandeur` FOREIGN KEY (`Demandeur_id`) REFERENCES `demandeur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichedepost`
--

LOCK TABLES `fichedepost` WRITE;
/*!40000 ALTER TABLE `fichedepost` DISABLE KEYS */;
INSERT INTO `fichedepost` VALUES (1,'Cuisinière','https://urlz.fr/kF8Z','Vous mettrez en oeuvre vos capacités culinaires au service d\'une Auberge. ','600 écus','Tiers_Etat',1),(10,'Boucher','https://urlz.fr/kFag','Vous abattrez la viande dans un premier temps puis vous vous occuperez de la vendre aux particuliers.','600 écus','Tiers_Etat',1),(11,'Bouffon','https://urlz.fr/kFa9','Vous éxecuterez chaque besoin et envie du Roi. Bonne chance.','750 écus','Tiers_Etat',1),(12,'Fille de joie','https://urlz.fr/kFa7','Vous travaillerez dans une maison close.','400 écus','Tiers_Etat',1),(13,'Forgeron','https://urlz.fr/kFae','Vous forgerer des armes et armures. Vous devez également les réparer sur demande.','900 écus','Tiers_Etat',1),(14,'Fermière','https://urlz.fr/kFaf','Vous travaillerez au service d\'un propriétaire d\'une ferme et éxécuterez quotidiennement les tâches basiques demandées.','450 écus','Tiers_Etat',1),(15,'Bourreau','https://urlz.fr/kFac','Vous éxécuterez n\'importe quel individu sous l\'ordre du Roi.','2000 écus','Tiers_Etat',1),(16,'Mandiant','https://urlz.fr/kFai','Bon courage à vous, pas grand chose à vous demander.','?','Tiers_Etat',1),(17,'Medecin','https://urlz.fr/kFan','Vous devez soigner les individus ayant les moyens de régler vos honoraires.','4000 écus','Clergé',1),(18,'Scribble','https://urlz.fr/kFaw','Vous apprenez par coeur les anciens écris religieux. Vous devez également être capable de les traduire.','Officiellement \"payé par l\'Eglise\" mais en réalité vous êtes blindé aux As.','Clergé',1),(19,'Infirmière','https://urlz.fr/kFaC','Vous êtes sous les ordres d\'un Médecin que vous assistez lors de ses consultations et opérations.','2700 écus','Clergé',1),(20,'Apothicaire','https://urlz.fr/kFaD','Vous trouvez des remèdes liés aux maladies existantes. Soyez inventifs et patient.','3000 écus','Noblesse',1),(21,'Courtisan/e','https://urlz.fr/kFaG','Vous accompagnez sur demande un(e) client(e) et passez autant de temps qu\'il/elle veut à ses côtés.','2060 écus','Noblesse',1);
/*!40000 ALTER TABLE `fichedepost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02 21:33:41
