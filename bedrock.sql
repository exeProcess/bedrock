-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 12:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bedrock`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee_price`
--

CREATE TABLE `fee_price` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `reg_price` varchar(255) NOT NULL,
  `tuition` varchar(255) NOT NULL,
  `text_book` varchar(255) NOT NULL,
  `cardigan` varchar(255) NOT NULL,
  `uniform_male` varchar(255) NOT NULL,
  `uniform_female` varchar(255) NOT NULL,
  `sport_wear_male` varchar(255) NOT NULL,
  `sport_wear_female` varchar(255) NOT NULL,
  `dev_tal_fee` varchar(255) NOT NULL,
  `exam` varchar(255) NOT NULL,
  `enterpreneur` varchar(255) NOT NULL,
  `comp` varchar(255) NOT NULL,
  `pta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_price`
--

INSERT INTO `fee_price` (`id`, `class`, `reg_price`, `tuition`, `text_book`, `cardigan`, `uniform_male`, `uniform_female`, `sport_wear_male`, `sport_wear_female`, `dev_tal_fee`, `exam`, `enterpreneur`, `comp`, `pta`) VALUES
(1, 'pre-reception', '5000', '20000', '10000', '5000', '7500', '8000', '6000', '6500', '3000', '2000', '', '', '200'),
(2, 'creche', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'reception', '5000', '20000', '10000', '5000', '7500', '8000', '6000', '6500', '3000', '2000', '', '', '200'),
(4, 'nursery 1', '5000', '20000', '11000', '5000', '7500', '8000', '6000', '6500', '3000', '2000', '', '', '200'),
(5, 'nursery 2', '5000', '20000', '11000', '5000', '7500', '8000', '6000', '6500', '3000', '2000', '', '', '200'),
(6, 'primary 1', '5000', '20000', '15000', '5000', '7500', '8000', '6000', '6500', '3000', '2000', '', '', '200'),
(7, 'primary 2', '5000', '20000', '15000', '5000', '8000', '8500', '6000', '6500', '3000', '2000', '', '', '200'),
(8, 'primary 3', '5000', '20000', '15000', '5000', '8000', '8500', '6000', '6500', '3000', '2000', '', '', '200'),
(9, 'primary 4', '5000', '20000', '16500', '5000', '8000', '8500', '6000', '6500', '3000', '2000', '', '', '200'),
(10, 'primary 5', '5000', '20000', '16500', '5000', '8000', '8500', '6000', '6500', '3000', '2000', '', '', '200'),
(11, 'j.s.s 1', '5000', '26000', '14000', '5000', '9500', '10000', '6500', '7000', '3000', '4500', '2000', '2000', ''),
(12, 'j.s.s 2', '5000', '26000', '14000', '5000', '9500', '10000', '6500', '7000', '3000', '4500', '2000', '2000', ''),
(13, 'j.s.s 3', '5000', '26000', '14000', '5000', '9500', '10000', '6500', '7000', '3000', '4500', '2000', '2000', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `class`, `gender`) VALUES
(1, 'MANNAR IDRIS BALOGUN', 'creche', 'male'),
(2, 'ZULAIHAT SAIFULLAHI', 'pre-reception', 'female'),
(3, 'MUNZIR MUHAMMAD SHUAIBU', 'pre-reception', 'male'),
(4, 'MUS’AB YAHAYA', 'pre-reception', 'male'),
(5, 'LAURAT IDRIS ABDULLAHI', 'pre-reception', 'female'),
(6, 'SUMMAIYA IDRIS', 'pre-recption', 'female'),
(7, 'YAHAYA ABUBAKAR YAHAYA', 'reception', 'male'),
(8, 'MUSA ZUBAIRU', 'reception', 'male'),
(9, 'UMMUKULSUM SANI', 'reception', 'female'),
(10, 'KHADIJA ABDULRAHSEED OTAKI', 'reception', 'female'),
(11, 'ABDULKAREEM SULEIMAN KANA', 'reception', 'male'),
(12, 'MUHAMMAD ADAM BABA', 'reception', 'male'),
(13, 'ABDULTAWWAB IBRAHIM', 'reception', 'male'),
(14, 'AABIDA IDRIS', 'reception', 'female'),
(15, 'IDRIS ILYAS IDRIS', 'reception', 'male'),
(16, 'RAHINA UMAR KANA', 'reception', 'female'),
(17, 'FIRDAUS FARUQ OYIGE', 'nursery 1', 'male'),
(18, 'AL-AMIN ADAMU SIDI', 'nursery 1', 'male'),
(19, 'AMINA MARWAN IMAN', 'nursery 1', 'female'),
(20, 'ZAINAB MARWAN IMAN', 'nursery 1', 'female'),
(21, 'KHADIJA ALI GIDADO', 'nursery 1', 'female'),
(22, 'MUHAMMAD YAHAYA SANNI', 'nursery 1', 'male'),
(23, 'SULEIMAN ZAID NAJMUDEEN', 'nursery 1', 'male'),
(24, 'AHMAD ISA IMAM', 'nursery 1', 'male'),
(25, 'AMINA FARIHA AHMAD', 'nursery 1', 'female'),
(26, 'HAKEEMA A BASHIR', 'nursery 1', 'female'),
(27, 'ZAINAB UMAR MODIBO', 'nursery 1', 'female'),
(28, 'AISHA YUSUF SALIHU', 'nursery 1', 'female'),
(29, 'YUSRA O.A USMAN', 'nursery 2', 'female'),
(30, 'ADAM CARDOSO', 'nursery 2', 'male'),
(31, 'KHADIJA ABDULMUMIN ZUBAIRU', 'nursery 2', 'female'),
(32, 'JAABIR SHUAIBU', 'nursery 2', 'male'),
(33, 'AMINA JIBRIL', 'nursery 2', 'female'),
(34, 'ABDULRAHIM SURAJUDEEN IMRAN', 'nursery 2', 'male'),
(35, 'AISHA ADAM OZESHI', 'nursery 2', 'female'),
(36, 'FATIMA SANI', 'nursery 2', 'female'),
(37, 'HANEEF MUH’D TOFEEQ', 'nursery 2', 'male'),
(38, 'HAFSA NURA SHEHU', 'nursery 2', 'female'),
(39, 'ANAS MUH’D AL-HASSAN', 'nursery 2', 'male'),
(40, 'SA’ADATU SANI DAUDA', 'nursery 2', 'female'),
(41, 'MUHAMMED FUDAIL BELLO', 'nursey 2', 'male'),
(42, 'ABDULHAKEEN A BASHIR', 'primary 1', 'male'),
(43, 'MARYAM RABIU YAMUSA', 'primary 1', 'female'),
(44, 'FATIMAT IDRIS ADDEGBINIDIN', 'primary 1', 'female'),
(45, 'ABDULRAHMAN S ABDULLAHI', 'primary 1', 'male'),
(46, 'AMATULLAHI ISHAQ YAHAYA', 'primary 1', 'female'),
(47, 'AMJAD KAILANI', 'primary 1', 'male'),
(48, 'RAMLAT UMAR KANA', 'primary 1', 'female'),
(49, 'JAMAL SULEIMAN', 'primary 1', 'male'),
(50, 'HASSANA SAIFULLAHI', 'primary 1', 'female'),
(51, 'HUSSAINA SAIFULLAHI', 'primary 1', 'female'),
(52, 'ABDULMUAIMIN USMAN', 'primary 1', 'male'),
(53, 'FARIQ FARUQ OYIGE', 'primary 1', 'male'),
(54, 'UMAR ABDULMUMIN', 'primary 2', 'male'),
(55, 'AL-HASSAN AMIR MUHAMMAD', 'primary 2', 'male'),
(56, 'HAMEEDAT .A. BASHIR', 'primary 2', 'female'),
(57, 'SULEIMAN ABDULAZEEZ', 'primary 2', 'male'),
(58, 'TAHIR RABIU YAMUSA', 'primary 2', 'male'),
(59, 'SAFIYA UMAR MODIBO', 'primary 2', 'female'),
(60, 'AL-AMIN SULEIMAN', 'primary 2', 'male'),
(61, 'FAISAL SURAJUDEEN IMRAN', 'primary 2', 'male'),
(62, 'ABUBAKAR ZUBAIR KAIKA', 'primary 2', 'male'),
(63, 'RAHMAT UMAR KANA', 'primary 2', 'female'),
(64, 'AHMAD A.L KAMBARI', 'primary 2', 'male'),
(65, 'IDRIS MARWAN IMAN', 'primary 2', 'male'),
(66, 'SADIYA SULEIMAN KANA', 'primary 2', 'female'),
(67, 'ABDULLAH SULEIMAN KANA', 'primary 2', 'male'),
(68, 'RAHIMAT KOTU', 'primary 2', 'female'),
(69, 'CARDOSO SHERIFAT', 'primary 2', 'female'),
(70, 'FATIMA ADAM BABA', 'primary 2', 'female'),
(71, 'IDRIS MUHAMMAD TAOFIQ', 'primary 3', 'male'),
(72, 'MUHAMMAD IDRIS ADEGBINDIN', 'primary 3', 'male'),
(73, 'NASIRULLAH SULEIMAN', 'primary 3', 'male'),
(74, 'MUBARAQ UMAR KANA', 'primary 3', 'male'),
(75, 'FATIMA JA’AFAR', 'primary 3', 'female'),
(76, 'AISHA ZUBAIR', 'primary 3', 'female'),
(77, 'ABDUL-LATEEF MANSUR', 'primary 3', 'male'),
(78, 'MUS’AB ISHAQ YAHAYA', 'primary 3', 'male'),
(79, 'YUSUF ABDULGAFAR', 'primary 3', 'male'),
(80, 'ABDULRAZAQ MUKHTAR', 'primary 3', 'male'),
(81, 'ABDULRAHMAN MUKHTAR', 'primary 3', 'male'),
(82, 'MUDDASSIR SAIFULLAHI', 'primary 3', 'male'),
(83, 'FATIMA FARUQ OYIGE', 'primary 3', 'female'),
(84, 'MARYAM MUHAMMAD SHUAIBU', 'primary 3', 'female'),
(85, 'ABDULLAH SURAJUDEEN IMRAN', 'primary 4', 'male'),
(86, 'RUKAYYAH ZUBAIRU', 'primary 4', 'female'),
(87, 'RUKAYYAH UMAR KANA', 'primary 4', 'female'),
(88, 'KUBURA MODIBO', 'primary 4', 'female'),
(89, 'YASIN MUHAMMAD ABDULLAH', 'primary 4', 'male'),
(90, 'MUSA MUHAMMAD', 'primary 4', 'male'),
(91, 'ABUBAKAR YAHAYA', 'primary 4', 'male'),
(92, 'AISHA SHUAIB', 'primary 4', 'female'),
(93, 'MUHAMMAD JABIR KAILANI', 'primary 4', 'male'),
(94, 'FATIMA SALIHU ADAM', 'primary 4', 'female'),
(95, 'ABDULMAJEED QAZEEM IBRAHIM', 'primary 4', 'male'),
(96, 'KHAMIS MUNIB JIBRIL', 'primary 4', 'male'),
(97, 'MARYAM YAHAYA SANNI', 'primary 4', 'female'),
(98, 'AUWAL ABUBAKAR', 'primary 4', 'female'),
(99, 'MARYAM USMAN OSORI', 'primary 4', 'female'),
(100, 'RAUDAT ADAMU SIDI', 'primary 5', 'female'),
(101, 'YAMUSA MUHAMMAD RABIU', 'primary 5', 'male'),
(102, 'HANOON MUHAMMAD TAOFIQ', 'primary 5', 'female'),
(103, 'IBRAHIM ZUBAIR', 'primary 5', 'male'),
(104, 'AISHA YAHAYA SANNI', 'primary 5', 'female'),
(105, 'SALMAN IDRIS', 'primary 5', 'female'),
(106, 'SULEIMAN JA’AFAR', 'primary 5', 'female'),
(107, 'HANNATU ADAM', 'primary 5', 'female'),
(108, 'KHADIJAH ABDULFATAH ABUBAKAR', 'j.s.s 1', 'female'),
(109, 'ASIYAH QASIM BELLO', 'j.s.s 1', 'female'),
(110, 'YUSUF UMAR KANA', 'j.s.s 1', 'male'),
(111, 'FATIMA ORKUMA', 'j.s.s 1', 'female'),
(112, 'RABIAT IDRIS DAN SULEIMAN', 'j.s.s 1', 'female'),
(113, 'NUSAIBA ISHAQ YAHAYA', 'j.s.s 1', 'female'),
(114, 'MUSTAPHA YAHAYA SHUAIBIU', 'j.s.s 1', 'male'),
(115, 'KHADIJA MUHAMMED', 'j.s.s 1', 'female'),
(116, 'KHADIJA SULEIMAN KANA', 'j.s.s 1', 'female'),
(117, 'SURAJ ABDULAZIZ', 'j.s.s 1', 'male'),
(118, 'ISMAIL DAUDA IBRAHIM', 'j.s.s 1', 'male'),
(119, 'DAUDA SULEIMAN DAUDA', 'j.s.s 1', 'male'),
(120, 'ADAN SALIHU ADAM', 'j.s.s 1', 'male'),
(121, 'NA\'IMA SHUAIBU', 'j.s.s 1', 'female'),
(122, 'Yasmin O.A Usman', 'j.s.s 2', 'female'),
(123, 'Abdullahi Ramalan', 'j.s.s 2', 'male'),
(124, 'Abdullahi Ishaq Yahya', 'j.s.s 2', 'male'),
(125, 'Asiya Yahaya', 'j.s.s 2', 'female'),
(126, 'Rukaiya Adam', 'j.s.s 2', 'female'),
(127, 'Rabiat Zubair', 'j.s.s 2', 'female'),
(128, 'Rukayyah Okpara Usman', 'j.s.s 2', 'female'),
(129, 'Suleiman Dauda Hidi', 'j.s.s 2', 'male'),
(130, 'Umar Muhammad', 'j.s.s 2', 'male'),
(131, 'Cardoso Selimot', 'j.s.s 2', 'female'),
(132, 'Isiaka Muhammad Isiaka', 'j.s.s 2', 'male'),
(133, 'Shuaibu Muhammad Shuaibu', 'j.s.s 2', 'male'),
(134, 'MUHAMMAD KAMALUDEEN ABUBAKAR', 'j.s.s 3', 'male'),
(135, 'ABDULLAH IDRIS', 'j.s.s 3', 'male'),
(136, 'AISHA ZUBAIR', 'j.s.s 3', 'female'),
(137, 'UMAR ADAMU SIDI', 'j.s.s 3', 'male'),
(138, 'HAUWA JA’AFAR', 'j.s.s 3', 'female'),
(139, 'IBRAHIM MUBARAQ ASHAFA', 'j.s.s 3', 'male'),
(152, 'hgcfghv jgvgh', 'creche', 'male'),
(153, 'hgcfghv jgvgh', 'Nursery 1', 'male'),
(154, 'hgcfghv jgvgh', 'Nursery 1', 'male'),
(155, 'hgcfghv jgvgh', 'Reception', 'male'),
(156, 'jgvgj hjvh', 'Pre-reception', 'female'),
(157, ' ', '', ''),
(158, ' ', '', ''),
(159, 'hgcfghv jgvgh', 'Pre-reception', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee_price`
--
ALTER TABLE `fee_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee_price`
--
ALTER TABLE `fee_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
