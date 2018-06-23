-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DbPlant
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `listen`
--

DROP TABLE IF EXISTS `listen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titelName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listen`
--

LOCK TABLES `listen` WRITE;
/*!40000 ALTER TABLE `listen` DISABLE KEYS */;
INSERT INTO `listen` VALUES (1,'AC/DC','Back in Black','Рок группа AC/DC, на которой критики «поставили крест» после смерти вокалиста Бона Скотта, выпустила в 1980 году пластинку Back in Black, которая стала одним из самых продаваемых музыкальных альбомов всех времен. Обложка альбома была сделана почти полностью черной, в память о погибшем вокалисте группы Боне Скотте. Альбом был дважды проходил ремастиринг и повторно был выпущен в 1997 году в составе комплекта Bonfire и в 2003 году в составе серии AC/DC Remasters. Тираж Back in Black составил около 50 миллионов экземпляров.','2018-06-20 17:50:07','2018-06-20 17:50:07'),(2,'Michael Jackson','Thriller ','почетный список музыкальный альбом Thriller от короля поп-музыки Майкла Джексона. Этот альбом считается самым продаваемым музыкальным альбомом всех времен. Thriller был выпущен 30 ноября 1982 года и стал шестым студийным альбомом Майкла Джексона. Для этого альбома Джексон сам написал четыре песни: «Wanna Be Startin’ Somethin’», «Beat It», «Billie Jean» и «The Girl is Mine» вместе с Полом Маккартни.\r\nПосле выпуска первого сингла из альбома Thriller – «The Girl Is Mine» - в дуэте с Полом Маккартни, некоторые музыкальные обозреватели полагали, что альбом не будет иметь большого успеха, однако, после выхода второго сингла, «Billie Jean», альбом поднялся на вершины хит-парадов.\r\nВ частности, по данным журнала Billboard, публикующего музыкальные чарты, Thriller входил в состав самых продаваемых альбомов рекордные 122 недели.\r\nThriller Майкла Джексона включен в «Книгу рекордов Гиннесса», как самый продаваемый альбом за всю историю популярной музыки. Общее число продаж знаменитой пластинки составило 110 миллионов экземпляров.','2018-06-20 17:50:21','2018-06-20 17:50:21'),(3,'Pink Floyd','The Dark Side of The Moon','Вторую и третью позиции практически делят между собой две культовые рок-группы, которые по разным оценкам продали приблизительно равное количество копий музыкальных альбомов – около 50 миллионов экземпляров. Это британская группа Pink Floyd и альбом The Dark Side of The Moon, а также австралийская AC/DC с альбомом Back in Black.\r\nThe Dark Side of The Moon - восьмой студийный альбом группы Pink Floyd, выпущенный 24 марта 1973 года. Это самый успешный альбом группы. Из-за огромной популярности альбома и количества его продаж, в 70-х ходила легенда, согласно которой, в любой момент времени альбом теоретически слушает хотя бы один человек в мире. Согласно другой легенде, в Германии существовал завод, производящий только копии этой пластинки.\r\nОбщее число продаж в мире, по версии издания Bloomberg, более 50 миллионов экземпляров. ',NULL,NULL),(4,'Whitney Houston','Тhe Bodyguard','Саундтрек из фильма «Телохранитель», включает в себя как песни Уитни Хьюстон, так и композиции других исполнителей. Он был выпущен 17 ноября 1992 года. Популярность фильма и главной музыкальной темы к нему была настолько высока, что Уитни Хьюстон стала первой певицей, которой удалось продать более миллиона копий альбома за одну неделю. Кроме того, саундтрек выиграл «Грэмми» в номинации «Лучший альбом года». В настоящее время суммарные продажи альбома в мире составляют более 44 миллионов копий, что сделало саундтрек одним из самых продаваемых альбомов в истории. ',NULL,NULL);
/*!40000 ALTER TABLE `listen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_06_20_165311_creta_plate_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 22:27:40
