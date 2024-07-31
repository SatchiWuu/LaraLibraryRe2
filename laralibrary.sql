-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 07:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laralibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `lname`, `fname`, `gender`, `address`, `phone`, `images`, `created_at`, `updated_at`) VALUES
(6, 'Bins', 'Lorine', 'female', '30374 Neha Forest\nNew Jamie, WA 05901', '+13618201407', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(7, 'Gulgowski', 'Maximo', 'female', '6337 Miles Bridge\nAlainahaven, MO 05716', '+1-385-390-1469', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(8, 'Gerlachrtretret4e', 'Katlynn', 'female', '178 Ross Fields Suite 637Lake Aliyaside, VT 79881-9382', '+17574978439', NULL, '2024-07-20 01:12:33', '2024-07-25 00:25:38'),
(9, 'Schiller', 'Antonetta', 'male', '29911 Rutherford Burg Suite 895\nTillmanville, WY 26935-2632', '+1 (989) 612-7820', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(10, 'Labadie', 'Grady', 'female', '147 Marvin Courts\nEast Juston, MN 66647-3891', '+19364911935', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(11, 'Jakubowski', 'Carlos', 'female', '1377 Carolyn Green\nRowenaside, TX 01153-4099', '(201) 405-7083', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(12, 'Schaden', 'Vergie', 'female', '410 Jamison Springs Suite 759\nSouth Michelleport, IN 86647', '+1-779-812-7358', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(13, 'Labadie', 'Matilde', 'male', '767 Gulgowski Meadow Apt. 673\nWest Auroremouth, AL 56138', '+1-720-248-2407', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(14, 'Hoeger', 'Maymie', 'female', '68187 Litzy Greens\nLynchville, CO 98813', '570-440-1349', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(15, 'Bergstrom', 'Andreanne', 'female', '161 Hershel Junctions Suite 097\nSouth Bertramtown, MI 68659-5167', '916-327-2151', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(16, 'Stoltenberg', 'Estella', 'male', '51519 Jolie Mountain\nKasandraville, IL 38535', '+1.651.877.9706', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(17, 'Robel', 'Lydia', 'male', '32345 Viola Estates\nSouth Mattie, LA 47640-3315', '(918) 857-1866', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(18, 'O\'Kon', 'Reanna', 'male', '9449 Anissa Pike Apt. 687\nCharliemouth, NM 37561', '559.402.0497', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(19, 'Friesen', 'Sasha', 'female', '1294 Kole Lane Apt. 741\nNorth Dolly, MI 32324-2376', '+1 (361) 894-5306', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(20, 'Feil', 'Ashlynn', 'male', '5286 Raynor Lodge\nHassanside, HI 29970', '1-561-993-8368', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(21, 'Hill', 'Jaunita', 'female', '40141 Mathilde Land Suite 888\nLeschchester, DE 75029', '351.518.1510', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(22, 'Okuneva', 'Scotty', 'female', '9458 Heller Oval\nWest Sedrickton, RI 93057-2915', '+1-830-964-3591', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(23, 'Yundt', 'Jada', 'male', '35705 O\'Keefe Camp\nWehnerstad, KY 22765', '(814) 986-4160', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(24, 'Langworth', 'Emiliano', 'female', '7073 Huels Harbors\nRathborough, AK 71470-4020', '+1.629.340.7676', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(25, 'Tremblay', 'Brook', 'female', '1851 Labadie Station\nLake Tyrellmouth, NM 95631', '+1-386-412-9027', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(26, 'Rippin', 'Paxton', 'male', '1392 Will Roads\nFarrellland, VT 53048', '1-763-898-1001', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(27, 'Batz', 'Drew', 'female', '23921 Boyle Radial Suite 525\nAnnettaville, MD 65503', '+1 (573) 816-5255', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(28, 'Becker', 'Lenna', 'female', '435 Marisa Rapids\nNorth Helgashire, NM 77594', '+1-601-806-5594', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(29, 'Murray', 'Arch', 'female', '101 Edgardo Lakes Suite 518\nWymanborough, MN 18583', '413-971-1168', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(30, 'Dicki', 'Onie', 'female', '7447 Bryana Route\nLake Fredrick, LA 83682', '+1-574-793-5607', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(31, 'Harris', 'Camila', 'male', '87798 Breitenberg Valleys\nBaileestad, IA 27488', '(480) 851-2379', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(32, 'Hodkiewicz', 'Nakia', 'female', '495 Marcelina Mews\nStrackeshire, MA 37105-0443', '+1-458-695-1685', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(33, 'Marks', 'Jarrod', 'female', '478 Gusikowski Place Apt. 358\nClaudineborough, KS 43773', '316.373.6949', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(34, 'Beahan', 'Katherine', 'male', '3357 Arne Run Apt. 730\nLake Pinkie, SD 35429-7789', '1-916-280-3648', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(35, 'Weimann', 'Maximillian', 'male', '8689 Morgan Alley Suite 120\nEast Raphaellemouth, TX 79754', '1-256-881-9239', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(36, 'Auer', 'Elisha', 'female', '526 Cara Valleys\nBalistreristad, MO 96874-8067', '980-736-2744', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(37, 'Dickinson', 'Deshaun', 'female', '27020 Oren Causeway Suite 548\nLake Nayelichester, PA 68557', '+1 (231) 348-7560', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(38, 'Weissnat', 'Norene', 'male', '50087 Dickens Radial Suite 873\nLurlineland, NJ 22448-9640', '+1.731.847.1085', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(39, 'Gulgowski', 'Ashtyn', 'male', '38591 Leonardo Rapids Apt. 542\nFraneckichester, IN 15776-4252', '813-352-8975', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(40, 'Beatty', 'Whitney', 'male', '14075 Arjun Spur Suite 952\nWest Grace, WA 85266-1399', '(774) 718-3217', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(41, 'Rippin', 'Gilberto', 'male', '5866 Kris Harbors Apt. 166\nWeldonfurt, ID 49343', '580-626-5840', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(42, 'Gulgowski', 'Eino', 'male', '112 Korey Inlet\nBryonton, NC 84486-1170', '+1 (620) 273-1782', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(43, 'Terry', 'Jaylin', 'male', '3947 Cole Parks Apt. 727\nKeeblerfort, HI 80642', '878.306.7058', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(44, 'Kuphal', 'Seth', 'male', '3393 Dorthy Pike Suite 333\nNew Adrianhaven, DC 25442-2229', '317.659.2878', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(45, 'Padberg', 'Clementine', 'male', '8949 Breana Point Suite 171\nEbbafurt, OR 25886-5309', '(534) 697-9744', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(46, 'Paucek', 'Ubaldo', 'male', '42475 Bergstrom Loaf\nHackettland, DE 48670', '+1 (747) 762-0426', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(47, 'Moore', 'Edison', 'male', '7609 Bins Manor\nEast Chase, MS 76940', '1-781-844-6168', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(48, 'Murazik', 'Gene', 'male', '217 Gibson Mountains Suite 015\nLittelport, IN 29893-7566', '304.703.4281', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(49, 'Yundt', 'Gregory', 'female', '2270 Koepp Avenue Suite 883\nEast Lucileshire, AK 49829', '931-948-5731', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(50, 'Friesen', 'Ezra', 'male', '36395 Feil Mountain\nNorth Carli, WI 87140', '1-502-962-5619', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(51, 'Goodwin', 'Anais', 'female', '72357 Tobin Hills\nWeimanntown, KS 25121', '(629) 653-6441', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(52, 'Thompson', 'Ricky', 'female', '40298 Mireille Rest\nEllisberg, UT 20927-9555', '380-402-8239', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(53, 'D\'Amore', 'Juanita', 'male', '7601 Sierra Station\nNew Wainochester, UT 11365-4740', '+1-253-390-4769', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(54, 'Weimann', 'Howell', 'male', '64820 Kris Heights Suite 242\nNew Tressastad, WA 42089', '+1.424.544.1376', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(55, 'Keeling', 'Deshaun', 'male', '383 Lebsack Common\nNew Rextown, AK 82736', '1-757-618-7668', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(56, 'Johnson', 'Rhett', 'male', '7020 Michaela Neck Suite 558\nSimeonhaven, IA 12601', '+1.678.944.8902', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(57, 'Doyle', 'Reuben', 'male', '399 Jarrell Isle Suite 967\nTrantowville, HI 70987-1269', '678-432-2873', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(58, 'Barton', 'Everardo', 'male', '81223 Gislason Motorway\nMartamouth, MA 22138', '(430) 817-1201', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(59, 'Smith', 'Jamir', 'female', '15873 Jett Village Suite 366\nWest Hilda, WI 88171', '+1.251.736.2261', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(60, 'Volkman', 'Albertha', 'male', '804 Lubowitz Points Suite 185\nNorth Jayceshire, CO 59827', '(731) 212-1135', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(61, 'Skiles', 'Nyasia', 'male', '5804 Mikel Mills Apt. 687\nSawaynborough, IA 79774-8518', '(610) 668-7917', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(62, 'Halvorson', 'Verla', 'female', '2279 May Estates\nNorth Carolineton, OK 21892', '+1.432.739.9755', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(63, 'Buckridge', 'Joy', 'female', '5796 Kilback Street Apt. 527\nRoweview, VA 70720', '+1-323-568-7902', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(64, 'Romaguera', 'Geovanni', 'male', '85407 Marlee Underpass Suite 041\nNorth Ashly, SD 19034', '325.679.4020', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(65, 'Streich', 'Rahul', 'female', '7002 Fahey Turnpike Suite 193\nMartyview, TN 82251', '769.215.4534', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(66, 'Schroeder', 'Tabitha', 'female', '913 Alfonzo Shoals\nPort Annalise, SC 69768-7550', '757.270.7848', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(67, 'Eichmann', 'Luz', 'female', '92011 Wolff Rapid Apt. 514\nNorth Sincere, IL 78042-4352', '+1.216.700.0220', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(68, 'Hagenes', 'Jorge', 'female', '783 Alex Shore\nLake Adahland, NM 76050', '864.984.9818', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(69, 'Gorczany', 'Grady', 'female', '6447 Stamm Plaza Suite 480\nLukasbury, NH 27996-0761', '865-950-3474', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(70, 'Pfannerstill', 'Lenora', 'female', '212 Katharina Route\nWolfmouth, FL 66602', '+1-734-753-6836', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(71, 'Walsh', 'Ismael', 'male', '1343 Denesik Light Suite 596\nCarrollstad, VT 39441-6553', '413-286-5551', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(72, 'Kirlin', 'Marcelino', 'female', '7136 Abshire Course Suite 418\nColeshire, NY 89743', '443-255-9964', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(73, 'Harber', 'Donato', 'female', '7411 Tyrique Club Apt. 079\nLake Nakiashire, WA 96882', '+1 (949) 312-5401', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(74, 'Paucek', 'Paula', 'female', '6545 Vicky View Suite 759\nSabrinafurt, ID 57759-0044', '+1 (629) 300-1058', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(75, 'Kulas', 'Nash', 'female', '174 William Stream\nNew Benhaven, PA 24821-7081', '470-757-0987', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(76, 'Hammes', 'Darryl', 'male', '90096 Hartmann Row\nEast Mittieshire, MA 28956', '+1-301-454-8578', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(77, 'Konopelski', 'Enoch', 'male', '8789 Sydnie Ranch Suite 698\nSusannamouth, SD 50197-4884', '+1.762.460.9404', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(78, 'Daugherty', 'Lisa', 'male', '9424 Wilkinson Skyway Apt. 258\nSouth Eusebiomouth, KY 86377-5369', '+1.646.904.5914', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(79, 'Quigley', 'Rosella', 'female', '5600 Sauer Rest Suite 052\nPort Laylachester, ME 78369', '+1-831-707-7077', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(80, 'Blanda', 'Gay', 'male', '317 Harris Union Apt. 312\nConsueloside, MS 57208-3223', '1-941-805-5369', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(81, 'Tromp', 'Kathleen', 'male', '3374 Oberbrunner Crossing Suite 494\nDestineebury, LA 90782', '+1 (270) 286-8956', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(82, 'Rodriguez', 'Jonathan', 'female', '4898 King Manors Apt. 646\nEast Judah, TN 42149-9874', '630.312.6953', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(83, 'Kuvalis', 'Riley', 'female', '8238 Harold Falls\nKariannestad, KS 35964-2619', '(986) 324-5000', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(84, 'Fisher', 'Albert', 'male', '806 Ernestine Isle\nNew Jessika, GA 46658', '1-689-945-3082', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(85, 'Greenholt', 'Schuyler', 'male', '1752 Elwin Plaza Apt. 196\nEast Florence, MA 43805', '(617) 225-6720', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(86, 'Heller', 'Loraine', 'female', '24490 Zieme Brook\nPort Brooke, KY 36539-6289', '+1-678-756-2248', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(87, 'Stroman', 'Caroline', 'female', '975 Hettinger Avenue\nEusebioborough, IN 57977', '248.216.4720', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(88, 'Christiansen', 'Hugh', 'female', '907 Stark Roads Apt. 854\nEast Henriettemouth, SC 07039', '+16622858086', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(89, 'Conroy', 'German', 'male', '518 Elisha Walks\nLinwoodfort, TN 91419-6200', '239-428-8794', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(90, 'Reichert', 'Brent', 'male', '66979 Nolan Road Suite 150\nNorth Nyasiaside, MS 81514-6775', '+1 (662) 813-9771', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(91, 'Bednar', 'Dillon', 'male', '11130 Carolyn Landing Suite 558\nNorth Alyshaberg, AZ 48833', '308.357.3652', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(92, 'Oberbrunner', 'Manley', 'male', '15641 Auer Squares\nIdellstad, CT 88283', '229-768-6176', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(93, 'Feest', 'Jayne', 'female', '59279 Keagan Roads\nWest Preciousland, MO 18411', '1-540-447-4336', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(94, 'Lemke', 'Jaleel', 'male', '84070 Ruthie Burgs\nNorth Mathias, MO 58994', '571.786.5516', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(95, 'Von', 'Edwardo', 'male', '287 Janessa Field Suite 724\nNorth Britneyport, LA 45289', '+1-480-318-2421', NULL, '2024-07-20 01:12:33', '2024-07-20 01:12:33'),
(96, 'Rosenbaum', 'Jose', 'female', '36938 Von Road\nPort Idellahaven, VT 05742', '+1-732-741-0010', NULL, '2024-07-20 01:12:34', '2024-07-20 01:12:34'),
(97, 'Kuphal', 'Stacey', 'male', '18897 Kianna Trail\nNorth Katharinastad, SD 82259-2081', '1-956-631-3697', NULL, '2024-07-20 01:12:34', '2024-07-20 01:12:34'),
(98, 'Hirthe', 'Donald', 'male', '50509 Schneider Cape Suite 216\nDenesikland, CT 37614-5167', '1-814-863-1196', NULL, '2024-07-20 01:12:34', '2024-07-20 01:12:34'),
(99, 'Ebert', 'Tyreek', 'male', '802 Effertz Knolls Suite 335\nNorth Hailey, DE 34917-1351', '+19566585162', NULL, '2024-07-20 01:12:34', '2024-07-20 01:12:34'),
(100, 'Medhurst', 'Niko', 'male', '746 Hamill Land\nPort Ciaraborough, AZ 80928', '516.829.5720', NULL, '2024-07-20 01:12:34', '2024-07-20 01:12:34'),
(103, 'Cruickshank', 'Perry', 'female', '327 Marquis Harbors\nErdmanberg, TX 87692', '1-564-960-9978', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(104, 'Altenwerth', 'Lenny', 'male', '5847 Gulgowski Mills Suite 137\nWest Hans, AK 95073', '+1-949-998-3585', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(105, 'Rutherford', 'Mathilde', 'female', '5251 Feeney Views Apt. 995\nNew Caleightown, OR 93598', '970.288.4279', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(106, 'Auer', 'Kip', 'female', '1668 Major Camp\nRaymondmouth, GA 58196-3659', '(470) 663-0084', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(107, 'Thiel', 'Dimitri', 'female', '69467 Rhea Divide\nSouth Thomasland, NM 07463-6100', '(530) 290-1569', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(108, 'Lemke', 'Sandrine', 'male', '202 Wilfred Street Apt. 265\nLegroshaven, WI 91640', '702.960.2110', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(109, 'Miller', 'Charles', 'female', '8806 Abby Burg\nHeaneytown, KS 05657-2745', '601.614.1383', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(110, 'Stokes', 'Rocio', 'female', '93771 Stone Union\nWaltermouth, TX 54155-7932', '+18142658817', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(111, 'Hills', 'Macy', 'male', '3527 Jarod Canyon Apt. 638\nPort Busterville, PA 93196', '(838) 357-8166', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(112, 'Terry', 'Adriel', 'male', '92856 Cremin Landing\nGrantborough, OH 86918', '(361) 636-1002', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(113, 'Witting', 'Sunny', 'male', '44773 Lucile Tunnel Apt. 508\nNorth Gay, AK 09651', '1-434-292-3298', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(114, 'Abernathy', 'Harvey', 'female', '7535 Alivia Bridge Suite 659\nKuhlmanstad, IA 84809', '1-726-794-8215', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(115, 'Wuckert', 'Leatha', 'female', '348 Bruen Expressway Apt. 658\nNorth Rocky, WI 27964', '360-816-2868', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(116, 'Ledner', 'Elnora', 'male', '19938 Shaniya Greens\nPort Marina, AL 71699', '+16088601483', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(117, 'Stark', 'Alize', 'female', '51160 Jones Mountains Suite 469\nMarleeville, SD 02134-0682', '+1.931.737.9439', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(118, 'Volkman', 'Shania', 'female', '43894 Maya Route Apt. 434\nEast Chris, WY 93684-2510', '+1.706.513.8996', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(119, 'Predovic', 'Germaine', 'female', '43583 Boehm Via Apt. 225\nTillmanstad, OR 36540-3728', '(484) 555-4217', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(120, 'Keebler', 'Breanna', 'female', '954 Letha Vista Apt. 114\nPort Mollieburgh, NC 58152-6687', '1-938-651-6250', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(121, 'Purdy', 'Stephany', 'male', '180 Bartell Green Suite 877\nNew Tyshawnburgh, DE 47856', '(934) 823-7067', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(122, 'Keeling', 'Pearl', 'female', '628 Malika Ville\nKovacekstad, WA 17752', '380.557.4910', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(123, 'Rempel', 'Margarete', 'female', '70033 Sawayn Ranch\nNew Georgeburgh, DC 95290-3415', '361-506-2842', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(124, 'Smith', 'Webster', 'female', '71295 Gunnar Way\nNew Pansy, OR 03072-7956', '+16093907971', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(125, 'Waters', 'Carmelo', 'male', '24810 Sigurd Pass Apt. 827\nKesslertown, LA 91010-7867', '+1.424.821.5998', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(126, 'Daniel', 'Justice', 'female', '41420 Shanahan Club\nNew Marionville, WI 41569-7257', '(941) 242-9370', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(127, 'Hauck', 'Abe', 'female', '5948 Frederic Pass\nWest Michealside, IA 44741', '(872) 970-5764', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(128, 'Renner', 'Chesley', 'male', '3782 Gulgowski Road\nNorth Miloville, TX 76141-8633', '+1 (509) 461-3755', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(129, 'West', 'Beaulah', 'female', '8179 Rhoda Corners Apt. 102\nSouth Carlos, NM 56249-1786', '+1-364-986-7456', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(130, 'Carter', 'Audie', 'female', '10644 Schoen Fork Suite 583\nLefflerport, OR 09386-7017', '+16262958064', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(131, 'Kreiger', 'Carrie', 'male', '784 Thompson Inlet Apt. 866\nLake Gradyside, MN 79646', '(347) 703-0161', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(132, 'McKenzie', 'Moises', 'female', '74897 King Pine\nBusterside, MI 49929-4113', '262-498-2273', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(133, 'Williamson', 'Jessie', 'female', '57668 Elsie Bypass\nMonahanton, DC 42199', '(930) 388-1911', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(134, 'Pfannerstill', 'Daphney', 'female', '561 Pauline Via\nWest Jermey, AL 75412-8357', '1-757-420-7481', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(135, 'Haley', 'Imani', 'male', '77231 Jayde Street\nLake Marquiseville, WI 96409', '484-406-2017', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(136, 'Smith', 'Angie', 'female', '9458 Monahan Trace\nPort Hassie, WA 55726', '(512) 224-1038', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(137, 'Dietrich', 'Delpha', 'male', '17713 Bernhard Skyway\nWendellport, WA 31577-3576', '651-652-1542', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(138, 'Abbott', 'Maybell', 'female', '54037 Altenwerth Trail Suite 167\nLake Leaton, DE 14525', '1-269-830-2833', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(139, 'Skiles', 'Verner', 'male', '9678 Predovic Groves Apt. 822\nNorth Filiberto, MT 32330', '+1-757-413-0428', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(140, 'Mohr', 'Hannah', 'male', '3235 Eldred Well Apt. 529\nNorth Jeanettestad, NH 46232', '+1 (812) 346-2697', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(141, 'Pacocha', 'Cody', 'male', '4207 Buckridge Street\nGrahammouth, FL 86176', '+1-601-379-8285', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(142, 'Medhurst', 'Kiarra', 'male', '25349 Hamill Flats Suite 333\nNorth Addie, OK 34788-5176', '+1-872-585-5936', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(143, 'Mills', 'Silas', 'female', '829 Macejkovic Port\nHuberttown, AK 87424', '+1.407.216.3552', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(144, 'Becker', 'Magnus', 'male', '693 Langworth Gateway\nNew Raoul, CA 27728-5727', '+19786263325', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(145, 'Hudson', 'Carlo', 'male', '93053 Raquel Flat\nEast Neal, VA 58843', '224-734-6836', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(146, 'Block', 'Adrien', 'female', '20659 Wolf Wells Suite 802\nDariusmouth, MO 88504', '+1 (347) 672-8659', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(147, 'Crona', 'Vaughn', 'female', '11990 Shields Course\nKreigerside, TN 24459', '+19544526207', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(148, 'Weissnat', 'Greyson', 'female', '5072 Maggio Glen\nAraceliton, WV 23267-8864', '351-727-8262', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(149, 'Wilderman', 'Kale', 'female', '3744 Terry Springs Suite 247\nNew Vernerland, PA 76001-9125', '959-864-5333', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(150, 'Corwin', 'Mason', 'female', '46209 Viviane Forges Suite 047\nEast Fernside, NY 64013-3250', '689-576-8503', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(151, 'Lang', 'Orville', 'male', '5587 Heathcote Spur\nSouth Friedrich, KY 54535-1254', '504-940-0491', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(152, 'Mueller', 'Josiah', 'male', '120 Orn Shoals Apt. 423\nKennedyhaven, AK 18859-2202', '1-534-992-7474', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(153, 'Schiller', 'Leon', 'male', '55054 Flatley Walks\nLittelmouth, IA 28252-3443', '+1-731-480-5416', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(154, 'Pollich', 'Verla', 'male', '769 Marcus Road Suite 185\nPort Alishachester, HI 64898-2372', '463.745.6198', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(155, 'Predovic', 'Kristopher', 'male', '4974 Wehner Forge\nJuvenalshire, AR 28091', '1-934-340-2634', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(156, 'VonRueden', 'Arianna', 'male', '4127 Keira Squares Apt. 692\nKrystinatown, GA 22030-9087', '270.405.5179', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(157, 'Swaniawski', 'Nannie', 'female', '216 Powlowski Causeway\nNorth Makayla, TX 55591', '+15134024061', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(158, 'Dooley', 'Aurore', 'male', '56342 Batz Heights Apt. 244\nSouth Bernardoville, SD 94435', '1-781-664-6464', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(159, 'Lockman', 'Anjali', 'male', '93240 Elinore Knolls\nEast Hailie, NY 42181', '+1.917.751.0528', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(160, 'Bednar', 'Lincoln', 'female', '34779 Ottis Trail\nNew Leolaburgh, ND 09683-3970', '+1 (475) 736-4085', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(161, 'Wilderman', 'Carlotta', 'male', '8784 Quitzon Trace\nSouth Prestonside, NC 29820', '+1.726.714.6502', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(162, 'Stehr', 'Noemy', 'female', '93177 Wiley Vista Suite 191\nWest Brandontown, HI 31956-2978', '906.872.3797', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(163, 'Jaskolski', 'Luz', 'female', '54556 Gislason Crossroad Suite 572\nPort Joyce, RI 01856', '430.426.1356', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(164, 'Weber', 'Hilario', 'female', '62351 Deckow Knolls\nDavontemouth, SD 70062', '1-757-206-0894', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(165, 'O\'Connell', 'Peyton', 'female', '155 Anderson Parks Suite 118\nEast Laury, CO 28250-6914', '+12839493791', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(166, 'Johnson', 'Cornell', 'male', '78117 Shanie Common Apt. 649\nNorth Mac, FL 15962-4315', '848-275-8409', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(167, 'Roberts', 'Itzel', 'male', '636 Mollie Lock\nRohanbury, WV 07732-4332', '+15803000062', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(168, 'Quitzon', 'Justine', 'male', '313 Holly Station Suite 929\nNorth Perry, WA 14877-3039', '440.333.1561', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(169, 'Hessel', 'Adriel', 'male', '110 Hansen Glens\nNorth Jada, MS 27443', '+1-229-341-7680', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(170, 'Cormier', 'Greg', 'female', '45482 Okuneva Spur\nNew Reedhaven, MI 92571', '+1.352.894.3943', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(171, 'Jones', 'Garnett', 'male', '4720 Doyle Shoals Apt. 039\nAuertown, NC 53312', '(435) 901-9149', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(172, 'O\'Kon', 'Jerry', 'male', '3093 Gaetano Green Apt. 511\nJacobsonmouth, GA 49844-1789', '765-878-7249', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(173, 'Welch', 'Malika', 'male', '42506 Goldner Manor\nSchulistberg, IN 40900', '+1-956-982-3131', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(174, 'Predovic', 'Jennie', 'female', '1740 Runolfsdottir Spring Apt. 403\nNew Garrybury, MN 21025', '+1 (283) 574-9981', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(175, 'Leannon', 'Taurean', 'female', '3296 Max River Apt. 630\nIsacstad, WV 79531', '208.808.2846', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(176, 'Okuneva', 'Demarcus', 'male', '9694 Heller Well Apt. 478\nOmerland, MS 21322-7164', '1-352-704-7815', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(177, 'Boehm', 'Major', 'female', '7604 Brendon Rapid\nBauchtown, HI 00252', '(769) 871-3799', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(178, 'Kozey', 'Alice', 'male', '9596 Schmeler Stream Suite 445\nArmaniville, AZ 55477-6138', '325-491-8861', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(179, 'Watsica', 'Bridget', 'female', '57610 Dulce Islands\nLabadiechester, NC 64359-2233', '(930) 581-7809', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(180, 'Gislason', 'Julia', 'female', '5747 Reed Key Apt. 471\nSanfordville, MA 50533-9724', '(240) 896-2778', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(181, 'Ferry', 'Esther', 'male', '782 Johann Light Suite 239\nNorth Laneyborough, RI 25078-0032', '(330) 435-4615', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(182, 'Johnston', 'Laney', 'female', '770 Palma Brooks Apt. 461\nNorth Cory, DE 46900', '843-259-5056', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(183, 'Keeling', 'Lucie', 'female', '598 Denesik Meadow Apt. 799\nNew Maymie, AL 63320-7171', '360-481-5373', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(184, 'Larkin', 'Lillie', 'male', '70426 Veum Pine Apt. 555\nPort Bethanyport, TN 76678-5988', '(630) 302-5625', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(185, 'VonRueden', 'Donnie', 'female', '2520 Kshlerin Ford\nWest Tremainechester, TX 36012', '463-428-9899', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(186, 'McGlynn', 'Christ', 'male', '71258 Ebert Glens Apt. 553\nWadeberg, CT 23891-1121', '(979) 353-3186', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(187, 'Kerluke', 'Tillman', 'male', '7480 Smitham Mountains Suite 363\nSouth Winonaville, IN 27182', '+1-503-570-0254', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(188, 'Kub', 'Clifford', 'male', '360 Garett Stravenue\nEast Sigrid, MD 06189-1468', '+1-330-509-3670', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(189, 'Mills', 'Leann', 'male', '27552 Jakubowski Roads\nEast Cadeshire, NJ 01006-1818', '534-270-9562', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(190, 'DuBuque', 'Leilani', 'male', '3185 Runolfsson Views Apt. 419\nNaomiport, IN 34665-0360', '+1-352-245-7960', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(191, 'Wolf', 'Dan', 'female', '643 Simonis Dam Apt. 231\nJeremyberg, DC 20714-4944', '281-354-1191', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(192, 'O\'Hara', 'Fritz', 'male', '67959 Blick Centers Suite 854\nNeiltown, MI 54426', '(279) 631-7604', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(193, 'Sporer', 'Deion', 'female', '18933 Rowe Drives\nVaughnbury, IL 10526', '+1-773-548-9734', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(194, 'Hayes', 'Theodora', 'female', '8941 Norwood Shoals\nLeopoldmouth, VA 14477-2497', '731.864.1100', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(195, 'Shields', 'Jakayla', 'female', '4528 Fisher Loaf\nWest Kurt, DE 78604-4413', '+1-248-912-0577', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(196, 'Hauck', 'Celestine', 'male', '49039 Zachariah Terrace Apt. 006\nJosianeland, WI 33103', '571-537-3524', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(197, 'Douglas', 'Celestino', 'male', '38199 Bogan Stream\nStromanbury, CA 43123', '(336) 589-6837', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(198, 'Nolan', 'Guido', 'female', '8531 Garret Roads Apt. 528\nMitchellton, ME 04153-6282', '+1 (430) 539-8357', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(199, 'Hettinger', 'Arvilla', 'male', '97161 Stroman Creek\nWhitetown, HI 51992', '+18154166697', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(200, 'Hahn', 'Kelsie', 'male', '2208 Eileen Fort\nLueilwitzmouth, MA 26525-9928', '1-848-831-1629', NULL, '2024-07-20 01:12:57', '2024-07-20 01:12:57'),
(201, 'Rowling', 'J.K.', 'Female', 'United Kingdom', '8979878978', 'images/BW08NBaqNxV2wUrAJmzbXLZ07blnJNZu8U1kk1zk.webp', '2024-07-24 00:12:25', '2024-07-24 00:12:25'),
(202, 'Batista', 'Dave', '890', '890', '890', 'images/nTFGWIQV75jkWwpFo1huhz49ifUUWU97BE5dMgXo.jpg', '2024-07-24 00:13:26', '2024-07-24 00:13:26'),
(203, 'Pham', 'Hann', '890', '890', '890', 'images/uyYK37jU1cznVpCXk8N1cCA4gAu13m7YG6cXogAp.jpg', '2024-07-24 00:15:39', '2024-07-24 00:15:39'),
(204, 'Malik', 'Zayn', '890', '7980', '890', 'images/WPGKtMBMCqdRetoemOD2XZkLFNAx27aGtp1Tae3E.webp', '2024-07-24 00:16:30', '2024-07-24 00:16:30'),
(207, 'Codog', 'mark', 'Male', 'Lower Bicutan', '874587', 'images/ThKvy7Hj25GhCYvTG7thAi2UlmZKusVxvJN4fZdn.webp', '2024-07-25 02:19:02', '2024-07-25 02:19:02'),
(208, 'nKJNkjnK', 'NJK', 'K', 'NKJ', 'NKJ', 'images/sgBzz54EIFGEswo0dlW9Ovot8OyJsocfcGnSVKbd.jpg', '2024-07-25 02:20:45', '2024-07-25 02:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `publication`, `genre`, `language`, `reviews`, `images`, `summary`, `author_id`, `created_at`, `updated_at`, `publisher_id`) VALUES
(102, 'Quibusdam molestias sit illum dolorem.', '1988', 'romance', 'fr', '0', 'images/11.jpg', 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 40),
(103, 'Aliquam mollitia qui libero.', '2008', 'romancesss', 'hi', '1', 'images/25.jpg', 'Quidem est delectus delectus rerum sed. Dolores quas eos neque labore est at reiciendis.', 195, '2024-07-21 00:49:35', '2024-07-25 01:10:55', 39),
(104, 'Dolorum est voluptatem iure harum laudantium.', '1981', 'mystery', 'ab', '0', 'images/26.jpg', 'Sit autem corporis et harum repellendus delectus nobis. Qui dolor dicta commodi ea quis natus.', 55, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 89),
(105, 'Quibusdam molestias sit illum dolorem.', '1988', 'romance', 'fr', '0', 'images/20.jpg', 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-21 00:49:35', '2024-07-25 01:04:22', 40),
(106, 'At asperiores ipsa dignissimos alias quasi dolore.', '2023', 'mystery', 'no', '1', 'images/23.jpg', 'In quia earum libero vitae rerum vel. Reiciendis amet inventore optio non.', 7, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 53),
(107, 'Quia perferendis autem praesentium quisquam.', '1973', 'non-fiction', 'to', '4', 'images/16.jpg', 'Aut laboriosam animi ex natus. Cum itaque qui ea ea distinctio aut.', 177, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 15),
(108, 'Magni iste totam aspernatur recusandae beatae.', '1989', 'romance', 'ki', '4', 'images/23.jpg', 'Recusandae ad dolor aliquam ratione. Inventore earum consequatur odio ut ea non et.', 6, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 47),
(109, 'Sit placeat vitae omnis.', '1982', 'mystery', 'mi', '4', 'images/28.jpg', 'Commodi non doloribus nisi itaque. Ut mollitia fuga tempore consequatur tempore dolorum nesciunt.', 191, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 4),
(110, 'Quasi commodi quae sapiente sit.', '2016', 'romance', 'ce', '3', 'images/17.jpg', 'Illo vel consequatur quisquam sed in ullam. Et provident ut qui et sed quia dolorem omnis.', 8, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 33),
(111, 'Necessitatibus id nisi blanditiis nam aut sit.', '2000', 'fiction', 'mk', '0', 'images/22.jpg', 'Dolores dolorem sapiente consequatur quibusdam. Magni molestias facere molestiae.', 87, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 61),
(112, 'Deleniti perferendis error exercitationem dolorum et nobis voluptatem.', '2011', 'mystery', 'ne', '0', 'images/15.jpg', 'Dolorum sit eveniet dolores qui. Aut recusandae ut et quasi dolor.', 154, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 22),
(113, 'Nisi iste a temporibus commodi fugiat.', '1972', 'fiction', 'kr', '5', 'images/20.jpg', 'Distinctio omnis excepturi aut. Eum non sit ut sed unde quia qui. Rerum est dolorum est vitae.', 52, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 90),
(114, 'Sunt molestiae optio laboriosam quod perspiciatis.', '1973', 'fiction', 'ug', '0', 'images/21.jpg', 'Tenetur sequi eos provident sequi. Rem reiciendis explicabo molestiae.', 188, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 37),
(115, 'Nobis voluptatem eaque voluptatibus repellendus voluptatum.', '1989', 'romance', 'ky', '1', 'images/25.jpg', 'Voluptatem necessitatibus hic quod est quae. Reiciendis at exercitationem impedit magni.', 176, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 89),
(116, 'Asperiores eum et dignissimos culpa.', '1981', 'romance', 'he', '0', 'images/20.jpg', 'Delectus possimus nostrum ex nemo quisquam molestiae. Doloribus quod rem excepturi animi.', 20, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 29),
(117, 'Nihil sequi animi tempore.', '1984', 'mystery', 'br', '4', 'images/28.jpg', 'Quod nihil maxime quisquam omnis. Omnis velit eveniet alias fuga hic corrupti non.', 32, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 9),
(118, 'Consectetur sed quia delectus.', '2016', 'romance', 'ce', '3', 'images/19.jpg', 'Consequuntur et enim veniam quam nihil at. Illo vel ipsam corrupti quas doloribus.', 119, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 43),
(119, 'Tempore doloribus repudiandae aperiam.', '1970', 'romance', 'th', '0', 'images/22.jpg', 'Minima optio dignissimos vel omnis. Quaerat sunt natus exercitationem consequatur qui similique.', 165, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 77),
(120, 'Alias eveniet quaerat ea hic est.', '2010', 'fiction', 'ig', '2', 'images/13.jpg', 'Placeat praesentium non neque nemo alias quaerat enim. Aliquam doloribus rerum voluptas.', 149, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 71),
(121, 'Eligendi excepturi eveniet recusandae fugiat consequatur ut voluptatem.', '2022', 'romance', 'rn', '1', 'images/29.jpg', 'Nemo tempora quas unde. Neque sunt voluptas iure in est. Voluptas sunt ad laborum.', 116, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 55),
(122, 'Necessitatibus aliquid velit natus sint animi.', '1981', 'mystery', 'ps', '1', 'images/30.jpg', 'Totam deserunt adipisci architecto voluptatem. Quas est dolorem tempore aut est.', 22, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 40),
(123, 'Sed velit aliquid quas aspernatur quia ut.', '2017', 'fantasy', 'fi', '5', 'images/23.jpg', 'Laborum ea aut quo. Exercitationem sint in aperiam dicta.', 165, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 36),
(124, 'Magni harum sunt iure recusandae accusamus.', '1993', 'mystery', 'ng', '5', 'images/21.jpg', 'Corporis aut occaecati praesentium odio sed numquam. Et mollitia facere modi.', 48, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 81),
(125, 'Beatae quo sapiente dolore voluptas tempora.', '1977', 'romance', 'sd', '3', 'images/21.jpg', 'Deserunt in occaecati nostrum asperiores. In quis voluptatem eos. Cum voluptas quae culpa vero.', 42, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 44),
(126, 'Dolores vitae facilis dolor.', '1993', 'fantasy', 'lt', '0', 'images/16.jpg', 'Qui qui ut tempore nam similique. Quis recusandae quasi dolorum deserunt quibusdam.', 79, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 74),
(127, 'Nemo sed numquam incidunt fugit explicabo culpa.', '1987', 'mystery', 'si', '4', 'images/15.jpg', 'Nemo voluptatem at et dolor explicabo. Laborum voluptas et officiis distinctio corporis dolorum.', 125, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 36),
(128, 'Eos error quo eum voluptas provident.', '1991', 'non-fiction', 'sa', '3', 'images/17.jpg', 'Eius facilis et qui. Hic amet ex quas occaecati repellat.', 117, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 73),
(129, 'Quasi necessitatibus ut voluptas animi.', '1978', 'fiction', 'mt', '5', 'images/20.jpg', 'Aut id at ea distinctio qui. A rem et nobis provident voluptas.', 59, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 25),
(130, 'Saepe sit odit molestiae eligendi non quia.', '2005', 'fiction', 'za', '4', 'images/25.jpg', 'Ut accusantium possimus quo ipsam. Et corporis veniam quis.', 135, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 69),
(131, 'Amet autem voluptatem perspiciatis et rerum.', '1972', 'fantasy', 'ln', '0', 'images/22.jpg', 'Quo soluta qui ab reiciendis sunt. Fuga qui ut enim aut neque quam.', 137, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 4),
(132, 'Ut necessitatibus sapiente ut asperiores minus.', '2016', 'fantasy', 'kl', '5', 'images/21.jpg', 'Omnis atque fuga labore sunt laboriosam. Impedit earum dolores minima sed.', 38, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 24),
(133, 'Et veniam rerum iste.', '2013', 'non-fiction', 'pt', '0', 'images/26.jpg', 'Vero qui libero voluptatem eligendi. Et placeat animi sunt amet aut.', 110, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 29),
(134, 'Consequatur autem explicabo omnis tempora eos.', '1973', 'romance', 'km', '2', 'images/30.jpg', 'Commodi vel quod in et ut in. Corrupti nam eos esse dolores. Quia ut voluptatem expedita amet.', 194, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 58),
(135, 'Suscipit qui sunt ex.', '1992', 'fantasy', 'no', '0', 'images/15.jpg', 'Repellendus ullam ipsam quos. Asperiores tenetur tempore ut dolorem.', 51, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 76),
(136, 'Sint sint rem soluta ut.', '1985', 'romance', 'cy', '3', 'images/16.jpg', 'Optio dolores aut ut soluta. Cum earum sed eum et. Soluta doloribus ducimus et error.', 6, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 97),
(137, 'Et itaque temporibus officiis eos.', '2005', 'mystery', 'as', '1', 'images/20.jpg', 'Alias id et ipsam natus. Inventore tempore accusamus quaerat sapiente culpa ea eligendi.', 167, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 86),
(138, 'Architecto necessitatibus mollitia recusandae sapiente adipisci.', '1985', 'mystery', 'ht', '4', 'images/21.jpg', 'Qui optio eveniet qui deleniti. Omnis molestiae dolorem enim asperiores quia.', 115, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 5),
(139, 'Voluptas et dolorem omnis.', '1977', 'romance', 'ne', '5', 'images/27.jpg', 'Dolores enim perspiciatis ducimus. Quibusdam ipsum non nam.', 22, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 75),
(140, 'Aperiam nostrum porro et quae sint aut.', '2007', 'mystery', 'cy', '2', 'images/17.jpg', 'Porro omnis ut recusandae. Provident quaerat nemo dolore molestiae ut.', 86, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 88),
(141, 'Pariatur ex architecto aut.', '1977', 'romance', 'he', '0', 'images/24.jpg', 'Ducimus quibusdam alias tenetur aut corporis. Veritatis est veritatis dolorem sint.', 24, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 65),
(142, 'Tempora dolorem adipisci quod.', '1991', 'mystery', 'av', '1', 'images/16.jpg', 'Sunt deleniti quaerat nulla molestias reprehenderit at. Perspiciatis magnam dolor repudiandae.', 103, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 99),
(143, 'Vitae nostrum vel culpa perferendis optio sed.', '1987', 'non-fiction', 'ki', '4', 'images/21.jpg', 'Facere sunt quae incidunt. Et sit aut doloremque autem exercitationem qui.', 123, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 24),
(144, 'Esse enim id id sunt consectetur.', '2022', 'non-fiction', 'ky', '3', 'images/27.jpg', 'Explicabo architecto velit minus. Consequatur at sit blanditiis nam quia sunt esse sit.', 111, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 42),
(145, 'Facere expedita et recusandae sapiente accusantium.', '2001', 'mystery', 'he', '4', 'images/12.jpg', 'Voluptas et dolor nihil et aut sit delectus. Amet vel totam beatae cumque.', 130, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 11),
(146, 'Facere magni voluptas eius quia.', '2015', 'fantasy', 'ff', '2', 'images/27.jpg', 'Deleniti qui tempora quas itaque. Autem quo molestiae neque veritatis quis est ipsum.', 185, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 38),
(147, 'Occaecati voluptatem delectus sunt voluptatem voluptatibus illum.', '2007', 'fiction', 'na', '4', 'images/17.jpg', 'Est explicabo vitae eaque. Ducimus illum voluptates dolores cumque quod quia.', 99, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 28),
(148, 'Eum quibusdam quia eos minima.', '2008', 'fantasy', 'tk', '2', 'images/27.jpg', 'Qui rerum vel vero omnis. Voluptatum consequatur illum vel totam dolorem iusto quo.', 72, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 83),
(149, 'Dignissimos quod fugiat non atque.', '1971', 'fiction', 'nb', '2', 'images/24.jpg', 'Commodi magni id doloribus est ullam soluta cupiditate. Fuga ea reprehenderit ad quos.', 156, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 41),
(150, 'Nostrum unde veniam sint numquam.', '2021', 'fiction', 'zu', '0', 'images/16.jpg', 'Qui assumenda quibusdam tempora consequatur fuga. Consectetur maiores sit et blanditiis.', 23, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 86),
(151, 'Illum est et voluptatum est.', '2016', 'mystery', 'nn', '2', 'images/16.jpg', 'Quis atque quia eum. Ullam doloribus nesciunt cum non ad. Quo suscipit magnam nisi quod et.', 114, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 10),
(152, 'Et cumque est perspiciatis officia itaque.', '2003', 'fantasy', 'am', '5', 'images/25.jpg', 'Aliquid magni id error est velit velit et. Eius inventore nulla non qui est pariatur.', 161, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 53),
(153, 'Eaque magnam est eum distinctio sint.', '2022', 'romance', 'dz', '5', 'images/24.jpg', 'Et totam optio ad autem. Sequi magnam beatae beatae porro et.', 191, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 56),
(154, 'Maiores dolorum dolore est.', '2007', 'fiction', 'pi', '5', 'images/30.jpg', 'Totam et sit quos et. Ullam autem sequi sint non esse.', 128, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 84),
(155, 'Non debitis aut nulla dolorum nisi animi voluptate.', '1999', 'fantasy', 'ti', '0', 'images/21.jpg', 'Praesentium veniam sit eligendi ut. Voluptatum recusandae quidem aut sunt tenetur et sit.', 60, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 32),
(156, 'Enim dolores quos et.', '2012', 'non-fiction', 'nl', '0', 'images/11.jpg', 'Corporis non a nemo. Suscipit facere et ad veniam tempore. Facere voluptates autem rerum ut.', 198, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 72),
(157, 'Suscipit ad sed quae.', '1972', 'mystery', 'ss', '5', 'images/14.jpg', 'Sunt itaque dicta earum fuga. Et vel cumque quo qui recusandae quo aut.', 171, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 34),
(158, 'Quis illum quis provident reprehenderit aliquid.', '1992', 'fiction', 'vo', '4', 'images/29.jpg', 'Qui ut veritatis qui non et perferendis est. Omnis quas quasi excepturi. Sunt voluptatem et rem.', 51, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 13),
(159, 'Nisi et velit consequatur et delectus quo.', '2000', 'fiction', 'yi', '5', 'images/30.jpg', 'Sit dolorem porro ut aliquam consequatur voluptas. A minima dolor placeat sapiente magnam soluta.', 80, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 59),
(160, 'Tempore et dicta enim maiores est.', '2003', 'mystery', 'zu', '2', 'images/12.jpg', 'Est tempore nemo fuga vel nesciunt ducimus earum magnam. Quo nesciunt autem excepturi esse.', 176, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 35),
(162, 'Et ea doloribus commodi autem expedita odio.', '1984', 'mystery', 'so', '1', 'images/20.jpg', 'Sunt pariatur totam earum soluta explicabo officia. Quo est odio et sit laboriosam dolor.', 113, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 40),
(163, 'Accusamus recusandae reiciendis voluptas similique.', '2006', 'non-fiction', 'mt', '1', 'images/28.jpg', 'Eaque aperiam et enim qui. Cum nam non qui officia. Deserunt totam est aut libero.', 189, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 75),
(164, 'Vitae et enim deserunt maiores.', '2019', 'fantasy', 'ho', '2', 'images/14.jpg', 'Eius architecto dolor et asperiores quam itaque enim. Nostrum dicta sed at qui dolor.', 126, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 22),
(165, 'Est impedit voluptatem non sint aliquid vitae.', '1984', 'mystery', 'eo', '3', 'images/15.jpg', 'Id et laudantium sunt et distinctio rerum. Omnis eum necessitatibus voluptatem enim vel.', 56, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 74),
(166, 'Et quaerat quia dolor et aliquam.', '1986', 'romance', 'uz', '0', 'images/18.jpg', 'Inventore sapiente et in nihil qui neque. Sint ipsum velit voluptatibus quia.', 29, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 56),
(167, 'Inventore occaecati quaerat dolores ea excepturi perspiciatis.', '2005', 'mystery', 'xh', '4', 'images/21.jpg', 'Ut facilis at enim autem delectus. Rerum dolor voluptate sint esse soluta et et.', 193, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 63),
(168, 'Modi beatae odit tenetur voluptas omnis vel.', '2013', 'fantasy', 'bs', '4', 'images/14.jpg', 'Magni maxime explicabo itaque sed. Quia nihil vitae est dignissimos cumque ut est.', 97, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 26),
(169, 'Sed consectetur doloremque voluptate animi itaque distinctio.', '2005', 'fantasy', 'lg', '1', 'images/15.jpg', 'Alias et atque commodi qui omnis. Sint laborum voluptatem molestiae et autem id quasi voluptatem.', 146, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 2),
(170, 'Ad qui nihil harum.', '1971', 'fantasy', 'tl', '0', 'images/25.jpg', 'Eveniet optio laudantium ipsam ut magni sapiente. Dolor sed reiciendis itaque.', 96, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 79),
(171, 'Repellendus atque omnis ratione.', '1994', 'romance', 'vo', '2', 'images/12.jpg', 'Praesentium ipsum quasi rem in harum. Facere enim ipsam rerum quam architecto cumque.', 99, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 16),
(173, 'Laboriosam non tempora labore et aliquid quo.', '1972', 'non-fiction', 'ay', '3', 'images/18.jpg', 'Adipisci porro a numquam exercitationem. Expedita optio maxime quibusdam.', 84, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 83),
(174, 'Esse sed placeat velit consequatur numquam dolores.', '2012', 'fiction', 'nl', '4', 'images/26.jpg', 'Temporibus vel cumque quo commodi eaque. Accusantium sequi impedit dolor cupiditate sunt.', 152, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 55),
(175, 'Nisi ex quibusdam eum nam ut magni.', '1996', 'fantasy', 'fa', '2', 'images/19.jpg', 'Ratione illo et ea autem vitae reprehenderit aut. Labore vero asperiores unde sed hic labore.', 55, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 58),
(176, 'Atque reprehenderit a molestias sint.', '2000', 'fantasy', 'fa', '3', 'images/12.jpg', 'Sit in ut et sapiente similique. Adipisci et labore pariatur sint quisquam.', 59, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 85),
(177, 'Occaecati ut alias repellendus nostrum quia facilis.', '1989', 'fantasy', 'ja', '5', 'images/30.jpg', 'Eius repudiandae nisi doloremque voluptatem et accusantium non. Porro omnis neque molestiae non.', 75, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 29),
(178, 'Consectetur aut ut sed modi dignissimos.', '1997', 'romance', 'sg', '2', 'images/25.jpg', 'Quo officia sunt quos vel corporis soluta voluptas. Non quae enim sunt.', 85, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 59),
(179, 'Enim nostrum quibusdam enim.', '1979', 'fantasy', 'eo', '2', 'images/20.jpg', 'Architecto rem numquam eveniet et molestias ratione ut. Optio aut minus aut eos omnis.', 47, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 36),
(180, 'Et iure nisi voluptatem mollitia ut.', '1993', 'non-fiction', 'lt', '3', 'images/30.jpg', 'Laborum consequatur consequatur quam laudantium ducimus et. Mollitia qui incidunt aliquam.', 161, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 1),
(181, 'Non numquam veritatis cumque delectus minus.', '2023', 'romance', 'uk', '0', 'images/15.jpg', 'Atque et omnis vel veniam ullam dicta est. Ut quis cupiditate aut libero.', 146, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 15),
(182, 'Consequuntur et dolore et error fugiat magnam.', '2017', 'fantasy', 'cs', '0', 'images/23.jpg', 'Vero reprehenderit sed qui assumenda dicta non animi. Quod neque eius aliquid.', 62, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 31),
(183, 'Aperiam soluta ducimus eum voluptatum.', '1984', 'romance', 'so', '2', 'images/27.jpg', 'Voluptate unde voluptatem quae voluptas incidunt sed. Aut beatae sint voluptas mollitia tenetur.', 69, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 69),
(184, 'Veniam natus consequuntur iusto voluptatem.', '2024', 'non-fiction', 'mh', '3', 'images/17.jpg', 'Magni repudiandae tenetur eaque nihil. Commodi iste minima sequi aliquid modi.', 72, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 48),
(185, 'Fuga magnam nulla maxime animi.', '1989', 'romance', 'bm', '1', 'images/17.jpg', 'Facilis id eum consequuntur perspiciatis praesentium. Quos officia in temporibus repellat.', 142, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 65),
(186, 'Consequuntur maxime exercitationem eveniet voluptate blanditiis neque.', '1987', 'fiction', 'nr', '0', 'images/21.jpg', 'Consequatur at doloremque error illo. Numquam veritatis porro quas possimus illo nulla eveniet.', 15, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 36),
(187, 'In dicta optio et.', '1974', 'romance', 'kv', '1', 'images/14.jpg', 'Laborum fuga molestiae qui. Blanditiis ipsa quia dolorem est sunt. Quisquam non illo aut earum.', 23, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 61),
(188, 'Autem eligendi culpa minus quidem et.', '1994', 'fantasy', 'cs', '4', 'images/17.jpg', 'Iure aut facere nostrum. Ullam sed sequi dolore eos laudantium. Cum et distinctio est sunt.', 177, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 67),
(189, 'Voluptates accusamus sed odit non.', '2003', 'fiction', 'sg', '5', 'images/20.jpg', 'Id quasi et incidunt quia beatae id non. Fugiat ut vel ipsam officiis quia et.', 38, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 90),
(190, 'Consequatur et aut et ea aut eos.', '1970', 'romance', 'mk', '2', 'images/22.jpg', 'Ut praesentium magni totam ut. Libero quia aperiam cupiditate qui.', 45, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 47),
(191, 'Vero et blanditiis ea reprehenderit sed voluptatem.', '2005', 'fantasy', 'su', '0', 'images/18.jpg', 'Qui quia nihil sed necessitatibus eius eveniet. Incidunt laudantium id quia recusandae minus.', 155, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 63),
(192, 'Numquam vitae dolorem enim corporis asperiores.', '2009', 'romance', 'ce', '3', 'images/20.jpg', 'Aut eum porro distinctio non. Natus sint saepe odit. Rem qui quia eaque cupiditate commodi sed.', 84, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 83),
(193, 'Porro similique omnis dolorum possimus.', '1981', 'romance', 'hr', '0', 'images/29.jpg', 'Quisquam quia dolores dolorem. Deleniti provident corrupti veniam maiores.', 110, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 58),
(194, 'Nostrum praesentium veniam minus natus.', '1986', 'mystery', 'bh', '3', 'images/27.jpg', 'Minima non omnis libero molestiae occaecati quo. Fugit qui doloribus nemo et ea.', 168, '2024-07-21 00:49:35', '2024-07-21 00:49:35', 79),
(195, 'Dolorum consectetur dolorum id rerum rerum.', '2005', 'non-fiction', 'tn', '3', 'images/21.jpg', 'Qui omnis quis nulla quis ea ducimus nihil. Necessitatibus sint animi qui officia consequatur.', 162, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 19),
(196, 'Eligendi eos quae eum ad adipisci.', '1994', 'romance', 'li', '1', 'images/27.jpg', 'Ea ut doloremque necessitatibus. Iste quos numquam soluta aut ex eos dolor.', 55, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 12),
(197, 'Ipsa saepe iste autem quis.', '1992', 'non-fiction', 'dz', '2', 'images/24.jpg', 'Aliquid dolores eos vel aut ea est ea in. Ea corrupti distinctio incidunt ullam.', 32, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 29),
(198, 'Blanditiis tempore quia ipsum accusamus.', '1996', 'fiction', 'sa', '4', 'images/27.jpg', 'Est doloribus expedita earum at eligendi eligendi. Deleniti itaque in quibusdam.', 165, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 27),
(199, 'Omnis amet commodi harum libero exercitationem et.', '1998', 'non-fiction', 'wa', '5', 'images/17.jpg', 'Aut aut ut excepturi aperiam. Et sint perferendis molestiae et.', 132, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 41),
(200, 'Optio maiores corporis vel.', '2011', 'fiction', 'se', '2', 'images/26.jpg', 'Aut earum tenetur cupiditate impedit reiciendis aspernatur cum expedita. Ab dolorum voluptatem ea.', 171, '2024-07-21 00:49:36', '2024-07-21 00:49:36', 81),
(201, 'Ratione temporibus omnis facere.', '2020', 'romance', 'ms', '4', 'images/23.jpg', 'At sit adipisci hic qui. Similique ex quis minus magnam et nulla nulla.', 200, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 72),
(202, 'Qui exercitationem cupiditate impedit commodi delectus ipsam.', '2006', 'fiction', 'se', '5', 'images/12.jpg', 'Et voluptas quis ut dignissimos debitis ut. Quibusdam quos et sint odio. Sint non aut et saepe.', 67, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 77),
(203, 'Ea velit est officiis eum esse excepturi.', '2000', 'mystery', 'ps', '2', 'images/24.jpg', 'A aut et facere aspernatur. Repudiandae atque in ad eos temporibus deleniti quis.', 39, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 14),
(204, 'Commodi doloremque voluptatem qui soluta et.', '1979', 'fantasy', 'yo', '1', 'images/21.jpg', 'Occaecati rem atque atque atque. Quod eum quae sint et. Non alias animi odio incidunt assumenda.', 140, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 23),
(205, 'Beatae consequatur dolor vero.', '1973', 'mystery', 'fo', '3', 'images/19.jpg', 'Minus velit aut ut in accusamus. Id minima corporis ipsa dignissimos et.', 47, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 64),
(206, 'Voluptatem sapiente et laboriosam consequuntur ipsum dolor.', '1979', 'romance', 'ne', '4', 'images/21.jpg', 'Et necessitatibus ex minima in voluptas. Cum molestiae non rerum tenetur.', 88, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 66),
(207, 'Tempora aliquam provident beatae sit est delectus.', '2016', 'fantasy', 'lt', '1', 'images/25.jpg', 'Ex maxime dolores molestias. Voluptates libero quasi modi quidem vel perferendis.', 76, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 94),
(208, 'Qui in pariatur quo.', '1975', 'mystery', 'oc', '0', 'images/12.jpg', 'Possimus aut saepe magnam est. Itaque occaecati sed earum. Id quisquam dicta aut.', 103, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 69),
(209, 'Et itaque natus iste ut aut quis.', '1990', 'fiction', 'tn', '3', 'images/30.jpg', 'Et qui eveniet debitis velit. Veritatis debitis quaerat ut. Quis dolorum et odio sequi autem.', 146, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 90),
(210, 'Qui autem fuga odit possimus beatae nobis.', '1970', 'non-fiction', 'fj', '2', 'images/28.jpg', 'Explicabo nulla incidunt rem quidem quia voluptas possimus. Numquam in eos repudiandae qui odio et.', 168, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 71),
(211, 'Natus ut mollitia debitis cumque quis.', '1970', 'non-fiction', 'gn', '1', 'images/14.jpg', 'Harum voluptatem adipisci et possimus ipsum. Odit quae hic omnis tenetur.', 63, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 60),
(213, 'Nemo eum quo facilis et dicta voluptatem.', '1972', 'romance', 'kr', '1', 'images/19.jpg', 'Magni et ipsam eos voluptatem. Ea ab et qui ad blanditiis et.', 115, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 83),
(214, 'Quos enim cumque qui ratione voluptas.', '2006', 'fiction', 'bn', '2', 'images/20.jpg', 'Dolor officia quos enim adipisci error. Iste nesciunt voluptatem voluptatem voluptate quia.', 175, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 55),
(215, 'Similique et ipsa est consequatur eligendi.', '2020', 'fiction', 'kr', '3', 'images/18.jpg', 'Qui porro repellat ut eum. Accusamus unde facere aut.', 9, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 60),
(216, 'Omnis consectetur doloremque ut tenetur.', '1970', 'fiction', 'ng', '3', 'images/30.jpg', 'Non sint doloribus minima optio dicta nisi. Fugit dolore ipsum id. Inventore et nulla sit.', 63, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 32),
(217, 'Aliquid voluptatibus et omnis vel.', '1987', 'romance', 'sg', '5', 'images/19.jpg', 'Dolores praesentium alias repudiandae aut voluptatum. Culpa aut molestiae possimus velit sed.', 49, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 60),
(218, 'Doloribus modi veritatis quo.', '2004', 'mystery', 'ru', '5', 'images/19.jpg', 'Nostrum explicabo impedit quis. Incidunt eius non quod sed.', 116, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 59),
(219, 'Veniam quas doloribus ut id.', '2022', 'mystery', 'co', '5', 'images/20.jpg', 'Explicabo ut ad est ut. Soluta minima architecto odio. Quibusdam omnis expedita eligendi quod vel.', 26, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 96),
(220, 'Ducimus magnam molestiae voluptatem.', '2023', 'romance', 'bn', '0', 'images/24.jpg', 'Qui quo voluptatibus incidunt. Itaque incidunt perspiciatis doloribus modi.', 154, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 10),
(221, 'Rerum nobis dolores quis quidem dolores et.', '1987', 'romance', 'fj', '4', 'images/18.jpg', 'Asperiores error at quos dicta. Quis in velit accusantium. Dolorem eius ea harum sint.', 198, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 84),
(222, 'Non ut ut in.', '2021', 'non-fiction', 'ks', '3', 'images/18.jpg', 'Atque accusamus nisi voluptatem porro officiis id. Nulla exercitationem earum eveniet sit.', 196, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 17),
(223, 'Dolores optio cum dolorem.', '1991', 'romance', 'pa', '3', 'images/12.jpg', 'Facilis sunt velit nobis veritatis adipisci. Omnis est et nisi.', 83, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 17),
(224, 'Quis nobis possimus voluptas beatae distinctio.', '2021', 'mystery', 'sm', '2', 'images/21.jpg', 'Suscipit sit aut repellat et est laudantium fugit eum. Tempore fugit sit inventore doloribus ipsam.', 124, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 51),
(225, 'Libero magnam nobis aperiam ullam debitis.', '2017', 'fiction', 'ur', '3', 'images/23.jpg', 'Consectetur et illum et. Sequi minima autem numquam.', 15, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 47),
(226, 'Ut maiores aut ea quia asperiores.', '1970', 'fiction', 'bs', '5', 'images/29.jpg', 'Et ut voluptatum explicabo. Totam est sint a reiciendis voluptatem voluptas et.', 109, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 55),
(227, 'Voluptas qui et accusantium et.', '2013', 'mystery', 'vi', '4', 'images/11.jpg', 'Velit earum commodi non omnis. Hic et veniam fuga natus amet. Culpa quia officiis in sapiente est.', 197, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 80),
(228, 'Velit error corporis nihil quaerat sit quis.', '2012', 'fantasy', 'ks', '4', 'images/25.jpg', 'Deleniti minus numquam omnis. Nihil odio similique dolor libero minus vitae nam.', 167, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 70),
(229, 'Nobis est quaerat ut est.', '1995', 'fiction', 'dv', '2', 'images/18.jpg', 'Ab harum veniam vel vel. Sit quia est quia nisi. Aperiam doloribus ut ut error.', 92, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 18),
(230, 'Nam et quam repellendus molestias porro.', '1982', 'fiction', 'fy', '5', 'images/19.jpg', 'Nam soluta voluptatem est ea ut. Quis facilis rerum dolor laboriosam reprehenderit deleniti harum.', 80, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 12),
(231, 'Dignissimos nostrum et iste.', '2002', 'fantasy', 'da', '0', 'images/11.jpg', 'Tempore deleniti animi quidem. Omnis minima nostrum voluptatum et fugit porro.', 160, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 34),
(232, 'Qui quam ab asperiores vel cupiditate facere.', '2015', 'romance', 'bg', '3', 'images/13.jpg', 'Sed sed non delectus voluptates. Soluta necessitatibus facere aut consequatur saepe asperiores.', 109, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 83),
(233, 'Quia nulla temporibus nihil voluptates velit.', '2012', 'mystery', 'ps', '1', 'images/21.jpg', 'Quia dolores sed est assumenda adipisci soluta ex. Voluptatem non cum sequi officiis.', 71, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 36),
(234, 'Aperiam vitae laudantium sint.', '2015', 'fantasy', 'ii', '4', 'images/21.jpg', 'Illum est in nam. Numquam ea aut consectetur in. Hic a nesciunt in corporis soluta et doloremque.', 57, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 41),
(235, 'Iste tempora sequi iure voluptatem consequuntur.', '2012', 'romance', 'oc', '1', 'images/27.jpg', 'Pariatur dolorem est quia consequatur. Consequuntur nulla ut et ut id eius.', 84, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 54),
(236, 'Impedit veniam quam neque consequatur consectetur.', '2005', 'fantasy', 'it', '3', 'images/12.jpg', 'Labore dicta maiores amet debitis est. Hic ad sed minima mollitia et temporibus quia consequatur.', 127, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 58),
(237, 'Aut numquam dolor repudiandae et.', '1981', 'fantasy', 'su', '1', 'images/29.jpg', 'Placeat aliquid velit id eos dolore. Reprehenderit quis ut aliquid.', 164, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 64),
(238, 'Blanditiis tenetur ipsam rerum vel fuga ipsa.', '2011', 'mystery', 'uk', '0', 'images/19.jpg', 'Fugit id deleniti sequi aut accusantium ab autem. Non modi praesentium praesentium delectus.', 117, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 49),
(239, 'Delectus nobis autem inventore.', '1986', 'mystery', 'bn', '5', 'images/15.jpg', 'Odit ut unde eos minus est. Est sed eos tempore. Suscipit in expedita quo repellat commodi.', 139, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 71),
(240, 'Corrupti similique excepturi et earum.', '2003', 'romance', 'ho', '0', 'images/23.jpg', 'Natus ut non eum. Sit commodi ut consectetur dolores. Molestias quidem ipsum et et et.', 49, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 3),
(241, 'Vero quis sit perspiciatis laborum.', '2008', 'non-fiction', 'mh', '1', 'images/22.jpg', 'Illum esse officiis magni nobis sint. Ratione voluptates sed qui placeat quos et.', 145, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 57),
(242, 'Et ex labore unde temporibus error et.', '2012', 'non-fiction', 'zu', '3', 'images/29.jpg', 'Et voluptatum eos id libero. Eveniet voluptas aut cum. Aspernatur sint doloribus voluptatum.', 47, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 13),
(243, 'In aut nisi voluptas voluptas.', '1995', 'fantasy', 'hy', '1', 'images/17.jpg', 'Ut suscipit sit delectus tenetur. Animi quia et voluptatibus est.', 50, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 38),
(244, 'Quisquam maxime dolore vitae.', '1975', 'fiction', 'ss', '5', 'images/23.jpg', 'Sit asperiores ducimus neque ut soluta et cumque. Voluptas aut expedita non.', 12, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 36),
(245, 'Facilis delectus est ab.', '2010', 'fantasy', 'co', '0', 'images/16.jpg', 'Quia nostrum nemo vel sint. Aut et minus eum omnis iusto.', 164, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 63),
(246, 'Voluptatibus voluptatibus cupiditate voluptatem vitae asperiores.', '1980', 'fantasy', 'dv', '5', 'images/30.jpg', 'Aliquam ratione cum id harum aut. Sit et facilis mollitia dolores et.', 177, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 32),
(247, 'Aspernatur inventore dolorum totam voluptatem.', '1983', 'fiction', 'ja', '5', 'images/22.jpg', 'Et hic velit voluptatem molestiae qui. Dolor error ut eveniet blanditiis ut ea aut.', 149, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 22),
(248, 'Vitae consequatur totam possimus temporibus autem.', '1984', 'fantasy', 'kk', '5', 'images/20.jpg', 'Tenetur in eius quasi. Modi voluptas iure voluptatibus. Animi sunt fugiat fuga architecto ut.', 106, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 58),
(249, 'Illo perspiciatis veritatis consequatur quam veniam explicabo.', '2020', 'romance', 'ak', '2', 'images/23.jpg', 'Sit a nam dolore laborum illo quia autem. Iure sequi corrupti veniam provident autem.', 93, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 52),
(250, 'Perferendis deserunt aut totam sequi praesentium.', '1995', 'fantasy', 'bn', '2', 'images/13.jpg', 'Quam esse placeat voluptatum. Adipisci qui delectus rerum.', 123, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 8),
(251, 'Atque fugit incidunt minus eos sit.', '2013', 'non-fiction', 'kj', '1', 'images/30.jpg', 'Ut dignissimos aperiam est consequatur. Enim vel explicabo saepe vel.', 51, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 73),
(252, 'Aliquam placeat debitis consequuntur qui dolorem natus.', '1980', 'fiction', 'ik', '2', 'images/29.jpg', 'Eos quae aspernatur earum facere. Aut quam corporis nobis fugit.', 57, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 8),
(253, 'Totam omnis doloremque asperiores quisquam.', '1974', 'fantasy', 'ml', '3', 'images/11.jpg', 'Ut non est eaque. Quisquam mollitia voluptate magni id voluptatem.', 13, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 95),
(254, 'Ipsum libero ullam dolorum beatae.', '2013', 'non-fiction', 'ka', '5', 'images/30.jpg', 'Quas sit dicta et omnis. Quis tenetur ipsa vitae expedita et. Sit debitis ipsum ducimus quidem.', 151, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 92),
(255, 'Sint molestias corrupti ratione qui.', '1987', 'fantasy', 'kr', '3', 'images/20.jpg', 'Voluptatum sed facilis ut id veniam. Est placeat natus perspiciatis saepe amet dicta deserunt.', 22, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 2),
(256, 'Rem nostrum fuga molestiae et.', '1977', 'fantasy', 'lt', '5', 'images/27.jpg', 'Officia eum magni nostrum aut. Sed sint adipisci veritatis qui.', 35, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 33),
(257, 'Molestiae quia placeat id pariatur illo.', '2017', 'fantasy', 'nr', '0', 'images/16.jpg', 'Et aut impedit sed ea est iure velit. Tempore ducimus corrupti quo ut eum.', 19, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 52),
(258, 'Nihil et voluptate quia rerum.', '2002', 'mystery', 'de', '0', 'images/20.jpg', 'Ad eos consequatur sit eos ut velit aliquam quasi. Mollitia consequatur tempore nesciunt.', 194, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 10),
(259, 'Placeat officia eum atque perferendis illo eaque.', '2003', 'fantasy', 'so', '4', 'images/29.jpg', 'Ex aliquid sapiente dignissimos accusamus. Et ratione voluptatem voluptate ducimus natus unde aut.', 69, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 46),
(260, 'Sit et blanditiis quasi voluptates.', '1982', 'fiction', 'ko', '1', 'images/25.jpg', 'Distinctio et eos provident. Error ad iure laborum facilis.', 38, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 81),
(261, 'Ducimus excepturi et illum nesciunt error.', '1980', 'fiction', 'lv', '3', 'images/26.jpg', 'Voluptas culpa temporibus labore temporibus. Rem et et ipsum commodi. Qui quo nobis reiciendis aut.', 111, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 89),
(262, 'Dicta impedit in eligendi omnis.', '1997', 'mystery', 'fr', '4', 'images/27.jpg', 'Architecto expedita ut ut. Rerum minima in eos.', 15, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 87),
(263, 'Sit et repellat qui.', '2023', 'fiction', 'nn', '0', 'images/17.jpg', 'Non alias qui iste debitis. Accusantium corrupti sequi possimus sunt.', 19, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 49),
(264, 'Voluptatibus qui et quia provident et.', '1997', 'mystery', 'om', '0', 'images/15.jpg', 'Minima rem perferendis est perspiciatis. Similique et laborum eius consequuntur.', 77, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 56),
(265, 'Quidem consequuntur voluptatem officiis animi.', '2024', 'romance', 'gd', '1', 'images/27.jpg', 'Facere alias veniam repellendus culpa iure ratione. Expedita eveniet maxime pariatur.', 53, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 4),
(266, 'Aut aut id laudantium repudiandae.', '2013', 'romance', 'lu', '3', 'images/28.jpg', 'Rerum natus dolor nihil cumque occaecati. Vel quo rerum sed. Iure consequuntur cumque sunt non.', 58, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 70),
(267, 'Eius ea quidem similique ut.', '2022', 'mystery', 'kv', '2', 'images/22.jpg', 'Quibusdam inventore consequuntur eaque et. Eum tenetur aliquid consequuntur facilis accusamus ipsa.', 195, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 34),
(268, 'Ut eos ut accusantium velit nihil.', '1987', 'fantasy', 'id', '1', 'images/15.jpg', 'Quia nihil tenetur accusantium beatae ut. Deleniti laudantium deserunt et amet ullam ipsum.', 150, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 97),
(269, 'Et dignissimos maiores nihil.', '1991', 'fiction', 'vo', '3', 'images/27.jpg', 'Ab eum dicta consequuntur quod praesentium sit. Impedit aut aperiam laborum aut sunt.', 27, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 47),
(270, 'Provident accusantium quasi eos quis.', '1971', 'mystery', 'ky', '1', 'images/18.jpg', 'Odio ut sit asperiores at qui porro. Nam voluptate et ut ut minima blanditiis voluptatum.', 87, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 77),
(271, 'Cum voluptatum dicta rerum quis et laboriosam et.', '2007', 'romance', 'tk', '3', 'images/30.jpg', 'Perspiciatis error est similique veniam explicabo et. Odio est beatae quia vero at iure quam.', 47, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 34),
(272, 'Fuga amet quis veniam vitae voluptas.', '1990', 'fiction', 'bm', '1', 'images/17.jpg', 'Dignissimos consequatur beatae earum est repellat quae et. Est eos soluta quis ullam.', 125, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 71),
(273, 'Hic qui maiores et.', '2020', 'non-fiction', 'zu', '1', 'images/16.jpg', 'Fuga accusantium animi deleniti qui. Molestiae dignissimos et in aspernatur.', 97, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 92),
(274, 'Magnam deserunt ea ut et.', '2000', 'non-fiction', 'ba', '2', 'images/11.jpg', 'Molestiae minus pariatur eum est corporis nulla totam dolores. Quo qui est ipsum nobis vitae porro.', 165, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 11),
(275, 'Et at voluptates voluptates dolores sunt possimus.', '2011', 'mystery', 'ba', '3', 'images/27.jpg', 'Qui et est quasi id et sapiente. Corrupti voluptas sit tempore magnam. Quasi nam vel fugit sit et.', 32, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 8),
(276, 'Qui nostrum quidem aut exercitationem.', '2018', 'mystery', 'am', '5', 'images/13.jpg', 'Nulla ea pariatur sint blanditiis excepturi quia incidunt. Ipsum et beatae fugit error.', 113, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 5),
(277, 'Debitis eum rerum et et et sed.', '1994', 'mystery', 'ks', '4', 'images/24.jpg', 'Laborum sit nihil dolore dolor. Et aspernatur a qui.', 170, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 87),
(278, 'Accusamus enim assumenda excepturi cumque cum alias.', '1986', 'mystery', 'se', '3', 'images/25.jpg', 'Enim rerum iure quo atque qui. Et rerum corrupti ullam qui. Totam veritatis et quod consequatur.', 47, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 49),
(279, 'Et odio aspernatur fugiat.', '1988', 'non-fiction', 'cu', '4', 'images/29.jpg', 'Id harum qui quia. Quia qui repellat est tempore quaerat facere. Rerum explicabo quaerat ratione.', 119, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 68),
(280, 'Qui occaecati vel neque harum aliquam debitis blanditiis.', '2011', 'romance', 'lo', '4', 'images/28.jpg', 'In consequatur placeat optio voluptatem. Sunt alias facere aspernatur praesentium explicabo.', 185, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 88),
(281, 'Possimus fugit vitae accusantium qui porro error.', '1970', 'mystery', 'af', '0', 'images/26.jpg', 'Impedit ratione itaque nesciunt quas. Numquam exercitationem necessitatibus iusto vel ea sunt.', 36, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 17),
(282, 'Sit laboriosam iusto consequuntur.', '2008', 'fantasy', 'rn', '4', 'images/14.jpg', 'Qui est reiciendis voluptates debitis et saepe. Itaque voluptates voluptates aut doloribus.', 82, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 22),
(283, 'Architecto deserunt qui ex fuga aperiam.', '1991', 'non-fiction', 'mk', '3', 'images/17.jpg', 'Ad saepe ex tempore. Ut natus qui id nostrum voluptatibus voluptates.', 107, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 79),
(284, 'Est sequi omnis et.', '1984', 'non-fiction', 'mh', '0', 'images/25.jpg', 'Expedita quis rem eos eveniet rerum in. Non est voluptas ducimus quia.', 23, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 88),
(285, 'Amet rem illum eligendi et quaerat.', '1988', 'fantasy', 'el', '2', 'images/16.jpg', 'Voluptatem blanditiis eaque qui recusandae. In ipsum nemo eos consequatur quo aliquam enim.', 141, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 63),
(286, 'Rem omnis consequatur enim fugit.', '2017', 'fantasy', 'oj', '1', 'images/24.jpg', 'Sunt nemo rerum in optio esse. Molestiae non cum sit deserunt qui velit rem. Vel ex ipsam sit vel.', 73, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 29),
(288, 'Quia eum minima rem recusandae.', '1981', 'fantasy', 'mi', '1', 'images/14.jpg', 'Fugiat debitis porro qui nisi est. Vel non provident qui qui sit. Non ex excepturi qui nisi.', 168, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 14),
(289, 'Omnis possimus quis perspiciatis vitae est corporis.', '1992', 'non-fiction', 'bg', '1', 'images/22.jpg', 'Placeat eaque ut quis perspiciatis ut laudantium id. Qui porro nobis blanditiis quam iusto.', 154, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 83),
(290, 'Numquam voluptas vero cumque.', '1979', 'mystery', 'or', '3', 'images/25.jpg', 'Incidunt officia in quod sed ut. Aperiam dolorem odit illo dolorum in sed.', 124, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 6),
(291, 'Quo dolor possimus in.', '2017', 'fiction', 'cv', '1', 'images/29.jpg', 'Ut omnis et eos magnam voluptas nemo expedita. Maxime nulla nostrum excepturi pariatur sequi.', 94, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 99),
(292, 'Veritatis consequatur reprehenderit voluptatem blanditiis aperiam aut.', '1973', 'mystery', 'ch', '4', 'images/20.jpg', 'Dicta tempore sed consectetur ullam earum iure mollitia. Iste non quos autem impedit.', 96, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 29),
(294, 'Amet itaque iure architecto officiis reprehenderit.', '1998', 'romance', 'sq', '1', 'images/28.jpg', 'Sequi ex omnis earum. Est voluptas aut qui voluptas.', 151, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 37),
(295, 'Deserunt est ut consequatur.', '1989', 'fiction', 'ay', '0', 'images/29.jpg', 'Explicabo velit qui ea magnam suscipit quaerat est. Sed quo vel qui distinctio sit adipisci atque.', 130, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 17),
(296, 'Quae non dicta at eius.', '1971', 'fiction', 'kk', '0', 'images/24.jpg', 'Atque enim rem esse. Eaque aut deserunt quo labore veritatis.', 73, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 23),
(297, 'Commodi nihil minus nostrum dolor aut aut minima.', '1987', 'mystery', 'hi', '0', 'images/12.jpg', 'Autem voluptatem nam voluptas ullam ut ex odio. Minus autem adipisci autem sed.', 128, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 19),
(298, 'Ratione delectus eum rerum repellat ducimus.', '2013', 'romance', 'ps', '5', 'images/18.jpg', 'Sed saepe aut quisquam eos. Maxime assumenda et debitis nobis. Itaque alias aut repellat harum.', 194, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 63),
(299, 'Laudantium nam error minima ipsa excepturi.', '1985', 'romance', 'nr', '0', 'images/19.jpg', 'Iste atque doloribus harum ipsam explicabo. Placeat quae et harum qui non in debitis placeat.', 85, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 21),
(300, 'Illo atque fuga reprehenderit dolor rerum.', '2017', 'mystery', 'mk', '3', 'images/12.jpg', 'Pariatur natus fuga error. Asperiores eum autem quis. Sapiente nisi minima corporis aut.', 133, '2024-07-23 19:26:13', '2024-07-23 19:26:13', 49),
(301, 'dsalkdnalskndsalk', 'Midnight', 'Fanstasy', 'English', '5', 'images/EwrgF3KktFVqSL3mRc7eDIG0GH42vgJzsZsf1xkb.jpg', 'The Goblet of Fire, a magical object tasked with selecting the champions, is unveiled. It names three champions, one from each of the schools, and then selects Harry as a fourth champion, despite his being underage..', 201, '2024-07-24 01:03:29', '2024-07-24 01:03:29', 98),
(302, 'dsadas', 'jlk', 'jkl', 'jkl', '4', 'images/ZKi22sBV8EIYg15lZKlKbS5JAK7A7acvqPhWCYjM.jpg', 'The Goblet of Fire, a magical object tasked with selecting the champions, is unveiled. It names three champions, one from each of the schools, and then selects Harry as a fourth champion, despite his being underage..', 204, '2024-07-24 01:10:03', '2024-07-24 01:10:03', 100),
(303, 'jkl', 'jkl', 'jkl', 'jkl', '1', 'images/s7g8XRJlsVjYPZpTg2eVVDLIQPOOhnZ8pgmzs6Tq.jpg', 'The Goblet of Fire, a magical object tasked with selecting the champions, is unveiled. It names three champions, one from each of the schools, and then selects Harry as a fourth champion, despite his being underage..', 204, '2024-07-24 01:10:51', '2024-07-24 01:10:51', 100),
(304, 'ABC', 'bnmb', 'b', 'k', '2', 'images/v6yX4KvpvQTt0enVQCz9uqZxowwHGNCvpClgk6yl.jpg', 'The Goblet of Fire, a magical object tasked with selecting the champions, is unveiled. It names three champions, one from each of the schools, and then selects Harry as a fourth champion, despite his being underage..', 204, '2024-07-24 01:11:56', '2024-07-24 01:11:56', 100),
(305, 'Non iste atque ea voluptas aut ad.', '2022', 'romance', 'ar', '5', 'images/JODKbl4dDbSluLnSRdOWFpbcIYFAtUPRWc7Z8QCm.jpg', 'Suscipit facilis dolorum dolor tenetur excepturi optio. Est porro officiis amet sunt.', 204, '2024-07-24 04:59:49', '2024-07-24 04:59:49', 100),
(308, 'Quibusdam molestias sit illum dolorem.', '1988', 'romance', 'fr', '0', NULL, 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-25 00:54:43', '2024-07-25 00:54:43', 40),
(309, 'Quibusdam molestias sit illum dolorem.', '1988', 'romance', 'fr', '0', NULL, 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-25 00:54:57', '2024-07-25 00:54:57', 40),
(310, 'Quibusdam molestias sit illum dolorem.', '1988', 'romance', 'fr', '0', NULL, 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-25 00:55:07', '2024-07-25 00:55:07', 40),
(311, 'Quibusdam molestias sit illum dolorem.tfcfctcf', '1988', 'romance', 'fr', '0', NULL, 'Totam unde exercitationem qui. Eius laborum ipsum et corrupti. Consequatur quia enim hic similique.', 8, '2024-07-25 00:56:10', '2024-07-25 00:56:10', 40);

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `date_borrowed` varchar(255) DEFAULT NULL,
  `date_returned` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending Approval',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`id`, `client_id`, `date_borrowed`, `date_returned`, `status`, `created_at`, `updated_at`) VALUES
(11, 13, '2024-07-20 16:35:22', NULL, 'Books Returned', '2024-07-20 08:35:22', '2024-07-20 18:38:41'),
(12, 13, '2024-07-20 16:41:00', NULL, 'Books Returned', '2024-07-20 08:41:00', '2024-07-20 19:58:52'),
(13, 13, '2024-07-21 00:59:09', NULL, 'Books Returned', '2024-07-20 16:59:09', '2024-07-20 20:03:35'),
(14, 13, '2024-07-21 02:04:07', NULL, 'Books Returned', '2024-07-20 18:04:07', '2024-07-20 20:03:36'),
(15, 13, '2024-07-21 03:59:36', NULL, 'Books Returned', '2024-07-20 19:59:36', '2024-07-20 20:03:36'),
(16, 13, '2024-07-21 05:33:16', NULL, 'Books Returned', '2024-07-20 21:33:16', '2024-07-24 05:03:21'),
(17, 13, '2024-07-22 02:04:23', NULL, 'Books Returned', '2024-07-21 18:04:23', '2024-07-24 05:03:22'),
(18, 13, '2024-07-22 03:04:36', NULL, 'Books Returned', '2024-07-21 19:04:36', '2024-07-24 05:03:23'),
(19, 15, '2024-07-22 03:09:15', NULL, 'Books Returned', '2024-07-21 19:09:15', '2024-07-24 05:03:24'),
(20, 15, '2024-07-24 13:07:34', NULL, 'Books Returned', '2024-07-24 05:07:34', '2024-07-28 18:59:59'),
(21, 15, '2024-07-25 08:08:45', NULL, 'Books Returned', '2024-07-25 00:08:45', '2024-07-28 19:01:17'),
(22, 15, '2024-07-25 08:09:54', NULL, 'Books Returned', '2024-07-25 00:09:54', '2024-07-28 19:02:16'),
(23, 15, '2024-07-25 08:10:03', NULL, 'Books Returned', '2024-07-25 00:10:03', '2024-07-29 09:11:25'),
(24, 15, '2024-07-25 08:10:09', NULL, 'Books Returned', '2024-07-25 00:10:09', '2024-07-28 19:02:18'),
(25, 15, '2024-07-25 08:10:09', NULL, 'Books Returned', '2024-07-25 00:10:09', '2024-07-29 09:11:27'),
(26, 15, '2024-07-25 08:10:10', NULL, 'Books Returned', '2024-07-25 00:10:10', '2024-07-29 09:11:28'),
(27, 15, '2024-07-25 08:10:10', NULL, 'Books Returned', '2024-07-25 00:10:10', '2024-07-29 09:11:29'),
(28, 15, '2024-07-25 08:10:11', NULL, 'Books Returned', '2024-07-25 00:10:11', '2024-07-29 09:11:30'),
(29, 15, '2024-07-25 08:10:11', NULL, 'Books Returned', '2024-07-25 00:10:11', '2024-07-29 09:11:31'),
(30, 15, '2024-07-25 08:10:11', NULL, 'Books Returned', '2024-07-25 00:10:11', '2024-07-29 09:11:32'),
(31, 15, '2024-07-25 08:10:20', NULL, 'Books Returned', '2024-07-25 00:10:20', '2024-07-28 19:00:04'),
(32, 15, '2024-07-25 08:10:23', NULL, 'Books Returned', '2024-07-25 00:10:23', '2024-07-29 09:11:32'),
(33, 16, '2024-07-29 02:09:20', NULL, 'Books Returned', '2024-07-28 18:09:20', '2024-07-28 19:02:22'),
(34, 16, '2024-07-29 02:25:16', NULL, 'Books Returned', '2024-07-28 18:25:16', '2024-07-29 09:11:34'),
(35, 16, '2024-07-29 02:25:19', NULL, 'Books Returned', '2024-07-28 18:25:19', '2024-07-29 09:11:35'),
(36, 16, '2024-07-29 02:26:01', NULL, 'Books Returned', '2024-07-28 18:26:01', '2024-07-29 09:09:15'),
(37, 16, '2024-07-29 02:28:11', NULL, 'Books Returned', '2024-07-28 18:28:11', '2024-07-29 09:11:36'),
(38, 16, '2024-07-29 02:29:09', NULL, 'Books Returned', '2024-07-28 18:29:09', '2024-07-29 09:11:37'),
(39, 16, '2024-07-29 02:30:26', NULL, 'Books Returned', '2024-07-28 18:30:26', '2024-07-29 09:11:38'),
(40, 16, '2024-07-29 02:33:57', NULL, 'Request Approved', '2024-07-28 18:33:57', '2024-07-29 09:10:11'),
(41, 16, '2024-07-29 02:34:48', NULL, 'Request Approved', '2024-07-28 18:34:48', '2024-07-29 09:10:12'),
(42, 16, '2024-07-29 17:07:41', NULL, 'Request Approved', '2024-07-29 09:07:41', '2024-07-29 09:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_list`
--

CREATE TABLE `borrow_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrows_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow_list`
--

INSERT INTO `borrow_list` (`id`, `borrows_id`, `book_id`, `created_at`, `updated_at`) VALUES
(24, 17, 102, '2024-07-21 18:04:23', '2024-07-21 18:04:23'),
(25, 17, 105, '2024-07-21 18:04:23', '2024-07-21 18:04:23'),
(27, 18, 105, '2024-07-21 19:04:36', '2024-07-21 19:04:36'),
(28, 18, 106, '2024-07-21 19:04:36', '2024-07-21 19:04:36'),
(29, 19, 108, '2024-07-21 19:09:15', '2024-07-21 19:09:15'),
(30, 19, 102, '2024-07-21 19:09:15', '2024-07-21 19:09:15'),
(31, 19, 103, '2024-07-21 19:09:15', '2024-07-21 19:09:15'),
(32, 20, 125, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(33, 20, 106, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(34, 20, 104, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(35, 20, 103, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(36, 20, 104, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(37, 20, 110, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(38, 20, 118, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(39, 20, 107, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(40, 20, 103, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(41, 20, 168, '2024-07-24 05:07:34', '2024-07-24 05:07:34'),
(42, 21, 169, '2024-07-25 00:08:45', '2024-07-25 00:08:45'),
(43, 21, 255, '2024-07-25 00:08:45', '2024-07-25 00:08:45'),
(44, 21, 240, '2024-07-25 00:08:45', '2024-07-25 00:08:45'),
(45, 22, 169, '2024-07-25 00:09:54', '2024-07-25 00:09:54'),
(46, 34, 131, '2024-07-28 18:25:16', '2024-07-28 18:25:16'),
(47, 36, 131, '2024-07-28 18:26:01', '2024-07-28 18:26:01'),
(48, 37, 151, '2024-07-28 18:28:11', '2024-07-28 18:28:11'),
(49, 38, 290, '2024-07-28 18:29:09', '2024-07-28 18:29:09'),
(50, 39, 230, '2024-07-28 18:30:26', '2024-07-28 18:30:26'),
(51, 39, 158, '2024-07-28 18:30:26', '2024-07-28 18:30:26'),
(52, 40, 258, '2024-07-28 18:33:57', '2024-07-28 18:33:57'),
(53, 40, 145, '2024-07-28 18:33:57', '2024-07-28 18:33:57'),
(54, 40, 274, '2024-07-28 18:33:57', '2024-07-28 18:33:57'),
(55, 41, 290, '2024-07-28 18:34:48', '2024-07-28 18:34:48'),
(56, 41, 196, '2024-07-28 18:34:48', '2024-07-28 18:34:48'),
(57, 41, 164, '2024-07-28 18:34:48', '2024-07-28 18:34:48'),
(58, 42, 109, '2024-07-29 09:07:41', '2024-07-29 09:07:41'),
(59, 42, 276, '2024-07-29 09:07:41', '2024-07-29 09:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `lname`, `fname`, `address`, `age`, `gender`, `images`, `created_at`, `updated_at`, `phone`) VALUES
(4, 'hj', 'dsa', 'khkj', '89', '890', 'images/2.jpg', '2024-07-19 20:34:01', '2024-07-19 20:34:01', 'hjk'),
(5, 'Ragadio', 'Jona', 'Jan Lang Avenue', '22', 'Female', 'images/jQjnXO_5_c.jpg', '2024-07-19 21:26:02', '2024-07-19 21:26:02', '284390218'),
(6, 'Ragadio', 'Joan', 'Jan Lang Boulevard', '22', 'Female', 'images/anya.jpg', '2024-07-19 21:32:08', '2024-07-19 21:32:08', '789798789'),
(8, 'Ragadio', 'Joan', 'Jan Lang Boulevard', '22', 'Female', 'images/anya.jpg', '2024-07-19 21:32:36', '2024-07-19 21:32:36', '789798789'),
(10, 'hjk', 'hjk', 'hjk', '7', '9879', 'images/29.jpg', '2024-07-19 21:34:17', '2024-07-19 21:34:17', 'hk'),
(11, 'Ragadio', 'Joan Jonalyn', '789', '798', '879', 'images/jenna.jfif', '2024-07-19 21:34:50', '2024-07-19 21:34:50', '798'),
(12, 'Gylle', 'Jake', '789', '77', '789', 'images/jake.jfif', '2024-07-19 21:39:29', '2024-07-19 21:39:29', '789'),
(13, 'Nake', 'Jakey', '89', '890', '890', 'images/jake.jfif', '2024-07-20 01:22:36', '2024-07-20 01:22:36', '89'),
(14, 'User', 'Admin', 'Random', '77', 'Male', 'images/zayn.webp', '2024-07-20 17:04:08', '2024-07-20 17:04:08', '78978989'),
(15, 'ragadio', 'jonalyn', 'blk 65 lot 26 phase 3 trinanes st. upper bicutan taguig city', '23', 'female', 'images/anya.jpg', '2024-07-21 18:03:04', '2024-07-21 18:03:04', '09929342941'),
(16, 'ragadio', 'jonalyn', 'jonalyn@gmail.com', '23', 'female', 'images/jQjnXO_5_c.jpg', '2024-07-28 18:07:20', '2024-07-28 18:07:20', '43564');

-- --------------------------------------------------------

--
-- Table structure for table `client_cart`
--

CREATE TABLE `client_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_02_030600_create_authors_table', 1),
(6, '2024_07_02_030728_create_books_table', 1),
(7, '2024_07_02_052442_create_publisher_table', 1),
(8, '2024_07_02_072623_create_stock_table', 1),
(9, '2024_07_15_020308_create_client_table', 1),
(10, '2024_07_15_020435_alter_users_table', 1),
(11, '2024_07_15_022109_alter_users_table', 1),
(12, '2024_07_19_091526_create_borrows_table', 1),
(13, '2024_07_19_091543_create_borrow_list_table', 1),
(14, '2024_07_21_010146_edit_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\User', 12, 'authToken', 'bd9556419f658eeafa7772967b02c37591a6b9be37f0225ed4916d276aa308ba', '[\"*\"]', NULL, NULL, '2024-07-19 21:39:30', '2024-07-19 21:39:30'),
(24, 'App\\Models\\User', 13, 'authToken', 'b8948a9f55d1935bb538b4593f344e413609e8201b8ab15d7998dc93126e7f58', '[\"*\"]', NULL, NULL, '2024-07-20 21:34:01', '2024-07-20 21:34:01'),
(61, 'App\\Models\\User', 14, 'authToken', 'ca095e2aa01e41234aa2aff84bc605855e771f4c68dca45a53fc93559b55588e', '[\"*\"]', NULL, NULL, '2024-07-29 09:12:40', '2024-07-29 09:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `Country`, `email`, `phone`, `Status`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Kling Ltd', 'French Southern Territories', 'lowell.beier@gmail.com', '+14585626655', 'idle', NULL, '2024-07-20 01:14:36', '2024-07-25 02:38:22'),
(2, 'Friesen, Conroy and Ortiz', 'Guinea-Bissau', 'retha57@stamm.com', '757-438-4480', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(3, 'Oberbrunner-Schultz', 'French Polynesia', 'kovacek.hosea@okeefe.com', '+1.906.701.1532', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-25 02:33:48'),
(4, 'D\'Amore, Kautzer and Zieme', 'Brazil', 'kohler.brennon@hotmail.com', '1-651-284-6525', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(5, 'Hudson, Ziemann and Weissnat', 'Saint Kitts and Nevis', 'labadie.avis@king.org', '+1-805-263-3118', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-25 02:34:44'),
(6, 'Rowe, Romaguera and Cruickshank', 'Central African Republic', 'nia19@yahoo.com', '262.799.1639', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(7, 'Effertz PLC', 'Cocos (Keeling) Islands', 'dach.justina@yahoo.com', '(229) 876-4038', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(8, 'Schuster, Hauck and O\'Conner', 'Equatorial Guinea', 'keanu.hills@yahoo.com', '424-972-5650', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(9, 'Schultz Ltd', 'Montserrat', 'cecelia.littel@koelpin.biz', '1-406-622-2431', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(10, 'Frami Ltd', 'Chile', 'moen.jacquelyn@gmail.com', '+1-614-414-7022', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(11, 'Ratke-O\'Conner', 'Honduras', 'walker.otis@yahoo.com', '726.368.4313', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(12, 'Hilpert-Dicki', 'Ecuador', 'gaylord.enid@hotmail.com', '+1-916-875-6125', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(13, 'Rutherford, Jerde and Howe', 'Nicaragua', 'jairo04@hotmail.com', '(760) 859-0619', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(14, 'Breitenberg-Pollich', 'United States Virgin Islands', 'ritchie.sonya@yahoo.com', '1-541-336-6047', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(15, 'Auer, Williamson and Morissette', 'Palestinian Territories', 'torp.maverick@yahoo.com', '352.495.0851', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(16, 'Connelly-Lesch', 'Turkmenistan', 'madonna.barrows@hotmail.com', '+18708681173', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(17, 'Marquardt-Crooks', 'Korea', 'steuber.abner@dickinson.com', '925-641-0482', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(18, 'Pagac, Gusikowski and Pollich', 'Cape Verde', 'nboehm@hotmail.com', '678-651-9180', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(19, 'Simonis, Brakus and Cremin', 'Guyana', 'elenor.kris@gmail.com', '+1-364-334-2624', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(20, 'Kling, McDermott and Jerde', 'Saint Pierre and Miquelon', 'wdietrich@buckridge.com', '(240) 446-4450', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(21, 'Lang Inc', 'Kazakhstan', 'dora08@kemmer.com', '+1-805-628-4989', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(22, 'Gusikowski Inc', 'Greenland', 'ajohnston@gutmann.com', '+1 (423) 326-1466', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(23, 'Smith-Fay', 'Cambodia', 'leora75@cummings.com', '269-200-1635', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(24, 'Bogan-Kuphal', 'Chile', 'zrogahn@king.com', '(747) 549-3351', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(25, 'Aufderhar-Hermiston', 'Suriname', 'jkohler@yahoo.com', '1-541-686-7513', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(26, 'Ferry PLC', 'Palestinian Territories', 'katherine.bartell@romaguera.net', '1-857-517-7871', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(27, 'Lemke, Stokes and Hirthe', 'Panama', 'alta19@gmail.com', '973-386-3674', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(28, 'Haag, Bashirian and Johns', 'Cape Verde', 'cronin.corene@vonrueden.com', '+1-651-859-3069', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(29, 'Schaden, Frami and Prosacco', 'Puerto Rico', 'wgreen@hotmail.com', '+1.321.459.3123', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(30, 'Collier, Armstrong and Rolfson', 'Djibouti', 'alexa78@krajcik.org', '1-781-649-5468', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(31, 'Johnston PLC', 'Mauritius', 'ebert.anita@hotmail.com', '1-360-281-1785', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(32, 'Reichert-Nolan', 'United States Minor Outlying Islands', 'osporer@gmail.com', '+1 (820) 560-1131', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(33, 'Roob, Schaden and Fisher', 'Iran', 'giovani.predovic@hotmail.com', '463.948.8694', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(34, 'Gottlieb, Hilpert and Russel', 'American Samoa', 'alysa13@larkin.com', '+1-954-275-1134', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(35, 'Streich Ltd', 'Netherlands', 'rgreenholt@yahoo.com', '678.207.3480', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(36, 'D\'Amore, Strosin and Feil', 'Isle of Man', 'fay.dale@gmail.com', '+1.531.444.0019', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(37, 'Oberbrunner-Rice', 'Grenada', 'nondricka@yahoo.com', '240.808.8041', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(38, 'Barton-Veum', 'Benin', 'nader.marco@mitchell.com', '+1 (248) 720-5310', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(39, 'Wyman, Mayert and Stroman', 'Gabon', 'evalyn.stiedemann@runolfsson.org', '+1-303-920-3685', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(40, 'Quitzon, Kuvalis and Hilpert', 'Argentina', 'roxanne89@hotmail.com', '1-209-902-0483', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(41, 'Stamm-Nienow', 'Svalbard & Jan Mayen Islands', 'ismael.lindgren@yahoo.com', '706.726.5484', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(42, 'Bradtke Inc', 'Guadeloupe', 'bdonnelly@gmail.com', '+1-202-901-6653', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(43, 'Bosco-Rice', 'Romania', 'parker.audie@gmail.com', '469.689.4744', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(44, 'Mante-Padberg', 'Northern Mariana Islands', 'sylvester95@yahoo.com', '629.214.5045', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(45, 'Klocko, McGlynn and Larkin', 'Kyrgyz Republic', 'ramiro.baumbach@gmail.com', '925-881-4341', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(46, 'Ebert Ltd', 'Germany', 'elliott50@yahoo.com', '361.634.3448', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(47, 'Kilback-Casper', 'Lithuania', 'camryn64@hotmail.com', '(463) 941-7038', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(48, 'Grimes, Jacobson and Blanda', 'South Georgia and the South Sandwich Islands', 'providenci61@mante.com', '+1-949-535-6504', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(49, 'Gleason, Aufderhar and Koss', 'Indonesia', 'jacobi.evelyn@klocko.net', '+16199030081', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(50, 'Heller-Wintheiser', 'Northern Mariana Islands', 'libbie65@gmail.com', '934-958-6079', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(51, 'Toy, Beer and Little', 'France', 'laurence.abernathy@kassulke.com', '720.442.9289', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(52, 'Muller-Corkery', 'Angola', 'amani16@gmail.com', '865.212.2235', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(53, 'Oberbrunner, Lakin and Stoltenberg', 'Iraq', 'pfeffer.jayda@hotmail.com', '+18027541755', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(54, 'Trantow-Keebler', 'Argentina', 'lavon.ward@yahoo.com', '(986) 354-3523', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(55, 'Medhurst-Grimes', 'Chad', 'clare.stroman@predovic.org', '323-586-8080', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(56, 'Wuckert-Quitzon', 'United States of America', 'jazmyne.bergnaum@boehm.com', '+1-864-909-5340', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(57, 'Beahan Ltd', 'Russian Federation', 'bergnaum.geovanny@gmail.com', '(740) 787-2662', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(58, 'Bins-Balistreri', 'Tunisia', 'mortimer26@kilback.com', '463.765.1566', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(59, 'Jacobson LLC', 'Switzerland', 'lempi.gutmann@gmail.com', '(760) 221-8239', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(60, 'Volkman-Terry', 'Armenia', 'olangworth@cartwright.com', '(458) 808-1732', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(61, 'Sporer Group', 'Philippines', 'sean.mueller@gmail.com', '941-470-6833', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(62, 'Waelchi-Bradtke', 'Belgium', 'runolfsdottir.cierra@hills.com', '+1.231.218.2941', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(63, 'Yost PLC', 'Belize', 'ankunding.kylie@haley.org', '1-321-661-9282', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(64, 'Heller PLC', 'Ethiopia', 'ypredovic@gmail.com', '201-263-8177', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(65, 'Farrell, Yost and Bahringer', 'Dominican Republic', 'ikerluke@yahoo.com', '559.692.0815', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(66, 'Green, Reynolds and Bechtelar', 'Ukraine', 'lweber@hotmail.com', '(813) 836-2663', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(67, 'McClure, Anderson and Hamill', 'Svalbard & Jan Mayen Islands', 'wilton45@yahoo.com', '(848) 447-0781', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(68, 'Rippin Ltd', 'United Kingdom', 'will.erling@hotmail.com', '(574) 556-2108', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(69, 'Bartoletti, Beatty and Murazik', 'Egypt', 'spencer.lisa@hotmail.com', '(706) 763-2963', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(70, 'Moore, Koss and Wolff', 'Jersey', 'brekke.augustus@hotmail.com', '661-692-2658', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(71, 'Ernser, Kassulke and Sanford', 'Nepal', 'delphia30@mohr.info', '1-262-386-0557', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(72, 'Adams-Walsh', 'Guam', 'zbednar@collins.info', '+1.361.531.1487', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(73, 'Legros and Sons', 'Tokelau', 'jdickinson@bayer.com', '+1.630.365.5211', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(74, 'Hegmann PLC', 'Saint Pierre and Miquelon', 'kenyon63@ohara.com', '940.606.1998', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(75, 'Schoen LLC', 'Guinea', 'gutmann.lloyd@emmerich.com', '+1-774-766-5474', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(76, 'Lynch, Terry and Hickle', 'Suriname', 'mmoore@hotmail.com', '317-268-6227', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(77, 'Huels-Batz', 'Turks and Caicos Islands', 'halvorson.della@boehm.com', '+1.269.348.7015', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(78, 'Kautzer, Kuhic and Sipes', 'Moldova', 'katarina70@johnston.com', '(618) 541-0172', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(79, 'Predovic and Sons', 'Montenegro', 'crona.valentin@hintz.com', '+1.541.922.9348', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(80, 'Reynolds, Boehm and Stokes', 'Tunisia', 'dariana88@yahoo.com', '865.894.3780', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(81, 'Bechtelar-Morar', 'Papua New Guinea', 'kenya.boyer@hotmail.com', '820-328-9055', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(82, 'Lueilwitz, Jacobson and Morar', 'Japan', 'okuneva.emmanuel@gottlieb.com', '(678) 901-9176', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(83, 'Breitenberg-Wiza', 'Cote d\'Ivoire', 'koreilly@hotmail.com', '+1.838.455.1139', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(84, 'Bins Ltd', 'Norfolk Island', 'stokes.mikel@gmail.com', '+18435716707', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(85, 'Hoeger LLC', 'Honduras', 'madison77@veum.net', '530.216.6790', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(86, 'Skiles-Cummings', 'Burkina Faso', 'cbode@koepp.com', '+1-364-354-6520', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(87, 'Bartell-Morar', 'Sri Lanka', 'sipes.magdalena@gmail.com', '504.334.6449', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(88, 'Hettinger-Nienow', 'Falkland Islands (Malvinas)', 'friesen.dena@hotmail.com', '254-289-3918', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(89, 'Goodwin-Schowalter', 'Paraguay', 'kirsten.fay@turcotte.com', '779.901.4519', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(90, 'Carroll-Grant', 'Netherlands Antilles', 'cleora.fay@moen.net', '918-260-7840', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(91, 'Block, Nicolas and Crist', 'Falkland Islands (Malvinas)', 'aliyah.grant@hotmail.com', '+1-463-528-2240', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(92, 'Turcotte-Kautzer', 'Oman', 'jerome59@schoen.com', '(281) 588-4128', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(93, 'Smitham and Sons', 'Panama', 'casey.muller@kling.com', '+12722221613', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(94, 'Shields Group', 'Haiti', 'reffertz@hotmail.com', '1-801-397-5203', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(95, 'Prohaska, Anderson and Bernier', 'Eritrea', 'susan70@yahoo.com', '(208) 655-7770', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(96, 'McLaughlin PLC', 'United States Virgin Islands', 'kayla.brakus@gmail.com', '1-641-243-8233', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(97, 'Robel-Borer', 'Samoa', 'zhomenick@roberts.com', '1-650-293-0201', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(98, 'Durgan-Kub', 'Botswana', 'ahmad.krajcik@hotmail.com', '+1.443.737.5326', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(99, 'Schneider, Casper and Bergstrom', 'Yemen', 'sweber@hotmail.com', '207.397.4240', 'inactive', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(100, 'D\'Amore, Tremblay and Hermann', 'Norway', 'royce52@monahan.com', '+1-360-507-4732', 'active', NULL, '2024-07-20 01:14:36', '2024-07-20 01:14:36'),
(101, 'newPUB', 'ndskal', 'KJK', '890', 'active', 'images/s2SQCWBag5Q6cA9MmZCs20YYDYmYuB6TbfxKhagH.webp', '2024-07-24 05:15:56', '2024-07-24 05:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `client_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `role`) VALUES
(1, NULL, 'jkl jkl', 'us@gmail.com', NULL, '$2y$10$G/6II0RfJiIS/HvasZLjJ.Ma2GVUgz8i4kzxmRDqYPxMWRVTQMPU2', NULL, '2024-07-19 20:32:29', '2024-07-19 20:32:29', 1, 1),
(3, NULL, 'jkl jkl', 'us2@gmail.com', NULL, '$2y$10$pdBgdrp/d0wsbK0pd5bDk.k2w13qTEJNj5H9WYGctS3tPF15j2Ex2', NULL, '2024-07-19 20:33:24', '2024-07-19 20:33:24', 1, 1),
(4, NULL, 'dsa hj', 'user@gmail.com', NULL, '$2y$10$DKRtiqc.KtXzmzkf/mcphuIf5gNoMvh4OIMnGA31kT.KZU7odlwdW', NULL, '2024-07-19 20:34:01', '2024-07-19 20:34:01', 1, 1),
(5, NULL, 'Jona Ragadio', 'jona@gmail.com', NULL, '$2y$10$GYI.UR1LmPOcCZleBBl5deeBah6jRbQoRiSu39uFSqoLnQuzZL/xS', NULL, '2024-07-19 21:26:02', '2024-07-19 21:26:02', 1, 1),
(6, NULL, 'Joan Ragadio', 'Joan@gmail.com', NULL, '$2y$10$kBOMYmhA40l6Drl3jV3/lOAlLXyQe70evffhd79GLIybU/zvDotAq', NULL, '2024-07-19 21:32:08', '2024-07-19 21:32:08', 1, 1),
(8, NULL, 'Joan Ragadio', 'Joan2@gmail.com', NULL, '$2y$10$vvXggJYcvNHAKF8kgXor3uoZCAVt8dG5faqbzQqx6VT8jUDCrVnp6', NULL, '2024-07-19 21:32:36', '2024-07-19 21:32:36', 1, 1),
(9, NULL, 'hjk hjk', '798@gmail.com', NULL, '$2y$10$WmobQZtgDZue5kNfr3kfyefpnZdk54rVmmn5LpfEIgdFrEPl1ZjjW', NULL, '2024-07-19 21:34:02', '2024-07-19 21:34:02', 1, 1),
(10, NULL, 'hjk hjk', '79855@gmail.com', NULL, '$2y$10$HxsRAjjnjE28nnAylFqAc.E2ESWaPARbn8PXiB7Vtk0sHQ.55nXaC', NULL, '2024-07-19 21:34:17', '2024-07-19 21:34:17', 1, 1),
(11, NULL, 'Joan Jonalyn Ragadio', 'jj@gmail.com', NULL, '$2y$10$SCRDiI8V40hS7lw1TNigOevmqcaEnkAGLEGz48Hh6f2aoAkcI3em.', NULL, '2024-07-19 21:34:50', '2024-07-19 21:34:50', 1, 1),
(12, NULL, 'Jake Gylle', 'Jake@gmail.com', NULL, '$2y$10$evY6c405BNY8BHzdFbNbkOVD9furTStA2ZYFz.fbQWsU76/FvGy0O', NULL, '2024-07-19 21:39:29', '2024-07-19 21:39:29', 1, 1),
(13, NULL, 'Jakey Nake', 'jakey@gmail.com', NULL, '$2y$10$N7a/HE/9Y3YQQJzt5oFTNeiS47F.GKhOIbRlNDRJBiADKxY7EGjOS', NULL, '2024-07-20 01:22:36', '2024-07-20 01:22:36', 1, 1),
(14, NULL, 'Admin User', 'admin@gmail.com', NULL, '$2y$10$JkkfHTRqbhxze9xoFpF6lumbtAQEJ.dGFqgLXTO.acawSvUnnw6ta', NULL, '2024-07-20 17:04:08', '2024-07-20 17:04:08', 1, 0),
(15, NULL, 'jonalyn ragadio', 'jonalynragadio@gmail.com', NULL, '$2y$10$PLRVdvAYkqfzp.a0D.6a9OemR1s54rTizksJ412mrB99GO153sGlq', NULL, '2024-07-21 18:03:04', '2024-07-21 18:03:04', 1, 1),
(16, NULL, 'jonalyn ragadio', 'jonalyn@gmail.com', NULL, '$2y$10$BosNaj6yzeGmqzC74t7GSODC0ZUqH/AG1koDS2poJiDJYMlqk9Lzi', NULL, '2024-07-28 18:07:20', '2024-07-28 18:07:20', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_ibfk_1` (`publisher_id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrows_client_id_foreign` (`client_id`);

--
-- Indexes for table `borrow_list`
--
ALTER TABLE `borrow_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_list_borrows_id_foreign` (`borrows_id`),
  ADD KEY `borrow_list_book_id_foreign` (`book_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_cart`
--
ALTER TABLE `client_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_cart_ibfk_2` (`book_id`),
  ADD KEY `client_cart_ibfk_1` (`client_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_client_id_foreign` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `borrow_list`
--
ALTER TABLE `borrow_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `client_cart`
--
ALTER TABLE `client_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrows`
--
ALTER TABLE `borrows`
  ADD CONSTRAINT `borrows_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `borrow_list`
--
ALTER TABLE `borrow_list`
  ADD CONSTRAINT `borrow_list_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_list_borrows_id_foreign` FOREIGN KEY (`borrows_id`) REFERENCES `borrows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `client_cart`
--
ALTER TABLE `client_cart`
  ADD CONSTRAINT `client_cart_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
