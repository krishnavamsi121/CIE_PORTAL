-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 03:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cie`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` varchar(10) NOT NULL,
  `C_CODE` varchar(15) NOT NULL,
  `C_NAME` varchar(50) NOT NULL,
  `D_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_CODE`, `C_NAME`, `D_ID`) VALUES
('c6', '16IS5DCAIN', 'Artificial Intelligence', 2),
('c2', '16IS5DCDBM', 'Database Management System', 2),
('c3', '16IS5DCDCN', 'Data Communication and Networking', 2),
('c5', '16IS5DCDMG', 'Data Mining', 2),
('c1', '16IS5DCJAV', 'Java Programming', 2),
('c4', '16IS5DCWEP', 'Web Programming', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `D_ID` int(10) NOT NULL,
  `dname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`D_ID`, `dname`) VALUES
(1, 'Computer Science'),
(2, 'Information Science'),
(3, 'Electronic and Communication'),
(4, 'Telecommunication'),
(5, 'Civil Engineering'),
(6, 'Mechanical'),
(7, 'Chemical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `department2`
--

CREATE TABLE `department2` (
  `dname` varchar(50) NOT NULL,
  `dloc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department2`
--

INSERT INTO `department2` (`dname`, `dloc`) VALUES
('Chemical Engineering', 'PG 3'),
('Civil Engineering', 'ME 2'),
('Computer Science', 'PG 5'),
('Electronic and Communication', 'PG 6'),
('Information Science', 'PG 4'),
('Mechanical', 'ME 1'),
('Telecommunication', 'DT 2');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FID` varchar(10) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `fname`) VALUES
('f1', 'Sindhu K'),
('f10', 'Gururaja H S'),
('f2', 'Jayarekha P'),
('f3', 'Mamatha K R'),
('f4', 'Nalini M K'),
('f5', 'Rajeshwari K'),
('f6', 'Roopa R'),
('f7', 'Shubha Rao V'),
('f8', 'Srilatha R'),
('f9', 'Chandrakala G Raju');

-- --------------------------------------------------------

--
-- Table structure for table `faculty2`
--

CREATE TABLE `faculty2` (
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty2`
--

INSERT INTO `faculty2` (`fname`, `email`) VALUES
('Chandrakala G Raju', 'chandrakala@bmsce.ac.in'),
('Gururaja H S', 'hsgururaja@bmsce.ac.in'),
('Sindhu K', 'ksindhu@bmsce.ac.in'),
('Mamatha K R', 'mamathabr@bmsce.ac.in'),
('Nalini M K', 'mknalini@bmsce.ac.in'),
('Jayarekha P', 'pjayarekha@bmsce.ac.in'),
('Rajeshwari K', 'rajeshwarik@bmsce.ac.in'),
('Roopa R', 'roopar@bmsce.ac.in'),
('Shubha Rao V', 'shubharao@bmsce.ac.in'),
('Srilatha R', 'srilatha@bmsce.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `USN` varchar(20) NOT NULL,
  `C_CODE` varchar(20) NOT NULL,
  `F_INT` int(10) NOT NULL,
  `S_INT` int(10) NOT NULL,
  `T_INT` int(10) NOT NULL,
  `QUIZ` int(10) NOT NULL,
  `LAB` int(10) NOT NULL,
  `S_STUDY` int(10) NOT NULL,
  `FINAL_MARKS` int(10) NOT NULL,
  `BOT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marks2`
--

CREATE TABLE `marks2` (
  `USN` varchar(20) NOT NULL,
  `C_CODE` varchar(20) NOT NULL,
  `F_INT` int(10) NOT NULL,
  `S_INT` int(10) NOT NULL,
  `T_INT` int(10) NOT NULL,
  `QUIZ` int(10) NOT NULL,
  `LAB` int(10) NOT NULL,
  `S_STUDY` int(10) NOT NULL,
  `FINAL_MARKS` int(10) NOT NULL,
  `BOT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks2`
--

INSERT INTO `marks2` (`USN`, `C_CODE`, `F_INT`, `S_INT`, `T_INT`, `QUIZ`, `LAB`, `S_STUDY`, `FINAL_MARKS`, `BOT`) VALUES
('1BM14IS001', '16IS5DCJAV', 9, 9, 4, 1, 7, 9, 0, 0),
('1BM14IS002', '16IS5DCJAV', 5, 3, 10, 1, 6, 1, 0, 0),
('1BM14IS003', '16IS5DCJAV', 2, 4, 4, 1, 8, 3, 0, 0),
('1BM14IS004', '16IS5DCJAV', 4, 8, 7, 1, 5, 7, 0, 0),
('1BM14IS005', '16IS5DCJAV', 8, 3, 7, 3, 8, 11, 0, 0),
('1BM14IS006', '16IS5DCJAV', 3, 6, 2, 1, 1, 11, 0, 0),
('1BM14IS007', '16IS5DCJAV', 2, 5, 4, 4, 3, 4, 0, 0),
('1BM14IS008', '16IS5DCJAV', 7, 2, 9, 4, 8, 4, 0, 0),
('1BM14IS009', '16IS5DCJAV', 10, 7, 10, 3, 1, 8, 0, 0),
('1BM14IS010', '16IS5DCJAV', 6, 2, 10, 3, 8, 1, 0, 0),
('1BM14IS011', '16IS5DCJAV', 9, 9, 5, 4, 9, 15, 0, 0),
('1BM14IS012', '16IS5DCJAV', 9, 10, 3, 5, 7, 5, 0, 0),
('1BM14IS013', '16IS5DCJAV', 10, 6, 10, 5, 6, 4, 0, 0),
('1BM14IS014', '16IS5DCJAV', 9, 6, 3, 5, 4, 1, 0, 0),
('1BM14IS015', '16IS5DCJAV', 7, 6, 9, 4, 1, 15, 0, 0),
('1BM14IS016', '16IS5DCJAV', 6, 6, 4, 5, 8, 12, 0, 0),
('1BM14IS017', '16IS5DCJAV', 4, 1, 7, 4, 9, 3, 0, 0),
('1BM14IS018', '16IS5DCJAV', 2, 6, 3, 1, 2, 11, 0, 0),
('1BM14IS019', '16IS5DCJAV', 8, 8, 5, 1, 8, 10, 0, 0),
('1BM14IS020', '16IS5DCJAV', 9, 6, 3, 2, 7, 9, 0, 0),
('1BM14IS021', '16IS5DCJAV', 9, 4, 4, 5, 1, 11, 0, 0),
('1BM14IS022', '16IS5DCJAV', 2, 2, 8, 1, 6, 3, 0, 0),
('1BM14IS023', '16IS5DCJAV', 5, 5, 7, 3, 10, 1, 0, 0),
('1BM14IS024', '16IS5DCJAV', 5, 8, 10, 1, 7, 8, 0, 0),
('1BM14IS025', '16IS5DCJAV', 10, 9, 9, 3, 9, 9, 0, 0),
('1BM14IS026', '16IS5DCJAV', 3, 9, 9, 5, 1, 14, 0, 0),
('1BM14IS027', '16IS5DCJAV', 1, 4, 6, 5, 7, 13, 0, 0),
('1BM14IS028', '16IS5DCJAV', 6, 8, 4, 5, 10, 11, 0, 0),
('1BM14IS029', '16IS5DCJAV', 10, 4, 5, 2, 4, 13, 0, 0),
('1BM14IS030', '16IS5DCJAV', 3, 5, 8, 1, 9, 3, 0, 0),
('1BM14IS031', '16IS5DCJAV', 3, 4, 5, 1, 7, 4, 0, 0),
('1BM14IS032', '16IS5DCJAV', 5, 9, 1, 2, 9, 6, 0, 0),
('1BM14IS033', '16IS5DCJAV', 2, 1, 2, 1, 4, 1, 0, 0),
('1BM14IS034', '16IS5DCJAV', 4, 3, 7, 3, 5, 1, 0, 0),
('1BM14IS035', '16IS5DCJAV', 6, 1, 6, 3, 4, 11, 0, 0),
('1BM14IS036', '16IS5DCJAV', 1, 10, 10, 3, 8, 12, 0, 0),
('1BM14IS037', '16IS5DCJAV', 5, 9, 2, 3, 9, 1, 0, 0),
('1BM14IS038', '16IS5DCJAV', 1, 7, 8, 5, 9, 3, 0, 0),
('1BM14IS039', '16IS5DCJAV', 4, 6, 6, 3, 7, 13, 0, 0),
('1BM14IS040', '16IS5DCJAV', 5, 10, 2, 1, 1, 5, 0, 0),
('1BM14IS041', '16IS5DCJAV', 10, 8, 4, 1, 8, 1, 0, 0),
('1BM14IS042', '16IS5DCJAV', 4, 6, 3, 2, 2, 5, 0, 0),
('1BM14IS043', '16IS5DCJAV', 1, 8, 8, 4, 8, 3, 0, 0),
('1BM14IS044', '16IS5DCJAV', 5, 3, 3, 4, 3, 9, 0, 0),
('1BM14IS045', '16IS5DCJAV', 1, 5, 4, 4, 6, 5, 0, 0),
('1BM14IS046', '16IS5DCJAV', 10, 3, 8, 5, 7, 1, 0, 0),
('1BM14IS047', '16IS5DCJAV', 6, 1, 6, 4, 10, 2, 0, 0),
('1BM14IS048', '16IS5DCJAV', 1, 8, 9, 2, 2, 8, 0, 0),
('1BM14IS049', '16IS5DCJAV', 10, 3, 5, 2, 5, 2, 0, 0),
('1BM14IS050', '16IS5DCJAV', 9, 6, 4, 2, 6, 1, 0, 0),
('1BM14IS051', '16IS5DCJAV', 9, 9, 7, 5, 5, 5, 0, 0),
('1BM14IS052', '16IS5DCJAV', 1, 9, 7, 4, 7, 9, 0, 0),
('1BM14IS053', '16IS5DCJAV', 3, 8, 4, 5, 2, 3, 0, 0),
('1BM14IS054', '16IS5DCJAV', 8, 5, 10, 5, 8, 13, 0, 0),
('1BM14IS055', '16IS5DCJAV', 5, 8, 3, 1, 3, 2, 0, 0),
('1BM14IS056', '16IS5DCJAV', 7, 3, 7, 3, 5, 1, 0, 0),
('1BM14IS057', '16IS5DCJAV', 1, 3, 6, 3, 3, 10, 0, 0),
('1BM14IS058', '16IS5DCJAV', 4, 2, 4, 2, 6, 13, 0, 0),
('1BM14IS059', '16IS5DCJAV', 1, 6, 9, 2, 5, 14, 0, 0),
('1BM14IS060', '16IS5DCJAV', 9, 3, 2, 4, 1, 14, 0, 0),
('1BM14IS061', '16IS5DCJAV', 7, 6, 5, 2, 2, 2, 0, 0),
('1BM14IS062', '16IS5DCJAV', 7, 9, 5, 5, 9, 12, 0, 0),
('1BM14IS063', '16IS5DCJAV', 5, 1, 6, 4, 1, 3, 0, 0),
('1BM14IS064', '16IS5DCJAV', 10, 7, 4, 4, 5, 4, 0, 0),
('1BM14IS065', '16IS5DCJAV', 2, 1, 3, 3, 6, 1, 0, 0),
('1BM14IS066', '16IS5DCJAV', 4, 8, 3, 4, 2, 9, 0, 0),
('1BM14IS067', '16IS5DCJAV', 4, 4, 7, 4, 1, 5, 0, 0),
('1BM14IS068', '16IS5DCJAV', 6, 4, 7, 3, 4, 15, 0, 0),
('1BM14IS069', '16IS5DCJAV', 2, 3, 5, 4, 4, 4, 0, 0),
('1BM14IS070', '16IS5DCJAV', 8, 4, 8, 4, 7, 3, 0, 0),
('1BM14IS071', '16IS5DCJAV', 2, 3, 1, 2, 4, 7, 0, 0),
('1BM14IS072', '16IS5DCJAV', 5, 10, 10, 5, 7, 11, 0, 0),
('1BM14IS073', '16IS5DCJAV', 7, 4, 2, 2, 7, 9, 0, 0),
('1BM14IS074', '16IS5DCJAV', 4, 3, 10, 5, 8, 9, 0, 0),
('1BM14IS075', '16IS5DCJAV', 1, 3, 10, 2, 10, 11, 0, 0),
('1BM14IS076', '16IS5DCJAV', 5, 10, 4, 4, 5, 13, 0, 0),
('1BM14IS077', '16IS5DCJAV', 6, 5, 1, 5, 4, 2, 0, 0),
('1BM14IS078', '16IS5DCJAV', 10, 4, 5, 5, 10, 14, 0, 0),
('1BM14IS079', '16IS5DCJAV', 5, 2, 5, 4, 3, 9, 0, 0),
('1BM14IS080', '16IS5DCJAV', 9, 3, 7, 3, 1, 14, 0, 0),
('1BM14IS081', '16IS5DCJAV', 2, 8, 7, 4, 3, 9, 0, 0),
('1BM14IS082', '16IS5DCJAV', 7, 9, 8, 5, 10, 8, 0, 0),
('1BM14IS083', '16IS5DCJAV', 4, 4, 4, 3, 1, 8, 0, 0),
('1BM14IS084', '16IS5DCJAV', 3, 4, 3, 4, 8, 2, 0, 0),
('1BM14IS085', '16IS5DCJAV', 4, 8, 8, 4, 8, 9, 0, 0),
('1BM14IS086', '16IS5DCJAV', 4, 4, 9, 2, 5, 4, 0, 0),
('1BM14IS087', '16IS5DCJAV', 5, 8, 9, 5, 3, 9, 0, 0),
('1BM14IS088', '16IS5DCJAV', 5, 2, 7, 4, 8, 11, 0, 0),
('1BM14IS089', '16IS5DCJAV', 9, 10, 10, 3, 10, 11, 0, 0),
('1BM14IS090', '16IS5DCJAV', 6, 6, 5, 2, 3, 13, 0, 0),
('1BM14IS091', '16IS5DCJAV', 9, 7, 8, 4, 6, 10, 0, 0),
('1BM14IS092', '16IS5DCJAV', 9, 6, 7, 4, 1, 8, 0, 0),
('1BM14IS093', '16IS5DCJAV', 7, 7, 7, 1, 4, 8, 0, 0),
('1BM14IS094', '16IS5DCJAV', 3, 10, 7, 1, 8, 5, 0, 0),
('1BM14IS095', '16IS5DCJAV', 9, 2, 1, 4, 1, 2, 0, 0),
('1BM14IS096', '16IS5DCJAV', 10, 4, 7, 3, 9, 9, 0, 0),
('1BM14IS097', '16IS5DCJAV', 2, 2, 5, 5, 2, 1, 0, 0),
('1BM14IS098', '16IS5DCJAV', 6, 10, 10, 4, 6, 10, 0, 0),
('1BM14IS099', '16IS5DCJAV', 10, 8, 1, 4, 1, 15, 0, 0),
('1BM14IS100', '16IS5DCJAV', 9, 8, 9, 1, 8, 9, 0, 0),
('1BM14IS101', '16IS5DCJAV', 6, 8, 1, 5, 4, 3, 0, 0),
('1BM14IS102', '16IS5DCJAV', 9, 3, 9, 1, 5, 5, 0, 0),
('1BM14IS103', '16IS5DCJAV', 10, 2, 10, 2, 6, 8, 0, 0),
('1BM14IS104', '16IS5DCJAV', 1, 8, 2, 4, 5, 14, 0, 0),
('1BM14IS105', '16IS5DCJAV', 1, 4, 10, 5, 4, 14, 0, 0),
('1BM14IS106', '16IS5DCJAV', 3, 5, 6, 5, 8, 5, 0, 0),
('1BM14IS107', '16IS5DCJAV', 2, 10, 10, 1, 10, 3, 0, 0),
('1BM15IS400', '16IS5DCJAV', 1, 6, 3, 1, 6, 7, 0, 0),
('1BM15IS401', '16IS5DCJAV', 10, 4, 5, 1, 9, 2, 0, 0),
('1BM15IS402', '16IS5DCJAV', 7, 1, 2, 4, 5, 5, 0, 0),
('1BM15IS403', '16IS5DCJAV', 3, 6, 5, 3, 6, 6, 0, 0),
('1BM15IS404', '16IS5DCJAV', 8, 9, 9, 2, 10, 4, 0, 0),
('1BM15IS405', '16IS5DCJAV', 9, 7, 5, 3, 8, 2, 0, 0),
('1BM15IS406', '16IS5DCJAV', 10, 1, 10, 2, 3, 15, 0, 0),
('1BM15IS407', '16IS5DCJAV', 2, 10, 5, 2, 4, 2, 0, 0),
('1BM15IS408', '16IS5DCJAV', 8, 10, 5, 2, 8, 5, 0, 0),
('1BM15IS409', '16IS5DCJAV', 8, 7, 1, 3, 5, 13, 0, 0),
('1BM15IS410', '16IS5DCJAV', 6, 9, 3, 3, 6, 1, 0, 0),
('1BM15IS411', '16IS5DCJAV', 3, 5, 8, 1, 3, 6, 0, 0),
('1BM15IS412', '16IS5DCJAV', 3, 7, 7, 5, 6, 4, 0, 0),
('1BM15IS413', '16IS5DCJAV', 1, 7, 10, 5, 8, 11, 0, 0),
('1BM15IS414', '16IS5DCJAV', 9, 2, 3, 5, 2, 12, 0, 0),
('1BM15IS415', '16IS5DCJAV', 8, 1, 1, 1, 1, 3, 0, 0),
('1BM15IS416', '16IS5DCJAV', 4, 2, 8, 4, 10, 11, 0, 0),
('1BM15IS417', '16IS5DCJAV', 10, 4, 10, 5, 10, 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `USN` varchar(15) NOT NULL,
  `SNAME` varchar(30) NOT NULL,
  `SEM` int(10) NOT NULL,
  `D_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`USN`, `SNAME`, `SEM`, `D_ID`) VALUES
('1BM14IS001', 'AASHEESH BHARDWAJ', 5, 2),
('1BM14IS002', 'AIASHA SADAF ISMAIL MALIK', 5, 2),
('1BM14IS003', 'AISHWARYA SHYAVI', 5, 2),
('1BM14IS004', 'AJEY NAG S', 5, 2),
('1BM14IS005', 'AKASH AGRAWAL ', 5, 2),
('1BM14IS006', 'AKASH KUTTAPPA', 5, 2),
('1BM14IS008', 'AKSHATHA S', 5, 2),
('1BM14IS009', 'AKSHAY RAVINDRA PATIL', 5, 2),
('1BM14IS010', 'AMAN KUMAR AGRAWAL', 5, 2),
('1BM14IS011', 'AMRUTHA JAYAVANTH SHENOY', 5, 2),
('1BM14IS012', ' ANAND ALOK', 5, 2),
('1BM14IS013', 'ANIKET RAJ', 5, 2),
('1BM14IS014', 'ANJANA ACHAR', 5, 2),
('1BM14IS015', 'APURVA VARTIKA', 5, 2),
('1BM14IS016', 'ARNAV JAITHALYA', 5, 2),
('1BM14IS018', 'ASHWIN RAVI', 5, 2),
('1BM14IS019', 'ASIF SUHAIL ', 5, 2),
('1BM14IS020', 'ATUL NAGENDRA MAKAM ', 5, 2),
('1BM14IS021', 'AVINASHA DESPANDE', 5, 2),
('1BM14IS022', 'B S SUJAN', 5, 2),
('1BM14IS023', 'BHARGAV MYSORE', 5, 2),
('1BM14IS024', 'BHAVYA R', 5, 2),
('1BM14IS025', 'BHIM RAO NASLAPUR', 5, 2),
('1BM14IS026', 'BHUVANA GAJANAN HEGDE', 5, 2),
('1BM14IS028', 'CHAITANYA DUBEY', 5, 2),
('1BM14IS029', 'CHINMAYA PRABHU N S', 5, 2),
('1BM14IS030', 'DEEKSHITHA VISHWANATH K', 5, 2),
('1BM14IS031', 'DEEPTI RAO', 5, 2),
('1BM14IS032', 'DIVYA K P', 5, 2),
('1BM14IS034', 'HARITEJ L N', 5, 2),
('1BM14IS035', 'HIMANI SUNIL AMRUTE', 5, 2),
('1BM14IS037', 'JAYANTH K', 5, 2),
('1BM14IS038', 'K S ROHITA SHARANU', 5, 2),
('1BM14IS039', 'KARAN S', 5, 2),
('1BM14IS040', 'KAUSHIK N S IYER', 5, 2),
('1BM14IS041', 'KAVYA N', 5, 2),
('1BM14IS042', 'KEERTHANA KALAPPA', 5, 2),
('1BM14IS043', 'KEERTHANA PRAKASH', 5, 2),
('1BM14IS044', 'KOUSHI KOTHARI J', 5, 2),
('1BM14IS045', 'LAKSHMI MAHESH', 5, 2),
('1BM14IS046', 'LOKANADHA M R', 5, 2),
('1BM14IS047', 'M P VARSHA', 5, 2),
('1BM14IS048', 'MADHUSOODANA SOMAYAJI G', 5, 2),
('1BM14IS049', 'MAHESH H P', 5, 2),
('1BM14IS051', 'MD SULTAN ALTAMAASH ALI', 5, 2),
('1BM14IS052', 'MOIN MUSTAK GOVERI', 5, 2),
('1BM14IS054', 'NAVYASHREE R NAIK', 5, 2),
('1BM14IS055', 'NIKHIL RAMANTHA KOTI', 5, 2),
('1BM14IS056', 'NISHANTH M HEGDE', 5, 2),
('1BM14IS057', 'NISHIT TANDON', 5, 2),
('1BM14IS058', 'NITEESH NARAYANA HEGDE', 5, 2),
('1BM14IS059', 'NYAMAGOUDA SAGAR VENKAPPA', 5, 2),
('1BM14IS060', 'P J VAISHNAVI ', 5, 2),
('1BM14IS061', 'PALLAVI KC', 5, 2),
('1BM14IS062', 'PALLAVI L ', 5, 2),
('1BM14IS063', 'POLISETTY SUMANTH', 5, 2),
('1BM14IS064', 'PRASHANT RAMAWAT', 5, 2),
('1BM14IS065', 'PREYAANSH PINTUBHAI PATEL', 5, 2),
('1BM14IS066', 'PRITHVI ATANI', 5, 2),
('1BM14IS067', 'PRONOY ROY', 5, 2),
('1BM14IS068', 'R PRIYANKA', 5, 2),
('1BM14IS069', 'RAKSHA DECHAMMA K M', 5, 2),
('1BM14IS070', 'RAMYA D', 5, 2),
('1BM14IS071', 'RAMYASHRI P R', 5, 2),
('1BM14IS072', 'RIMMALAPUDI KRISHNA VAMSI', 5, 2),
('1BM14IS073', 'ROHAN KUMAR', 5, 2),
('1BM14IS074', 'ROHIT RAYAPEDDI ', 5, 2),
('1BM14IS075', 'ROHIT RAVI', 5, 2),
('1BM14IS076', 'SACHIN TIMMANNA BHAGWAT', 5, 2),
('1BM14IS077', 'SAHIL HABEEB ', 5, 2),
('1BM14IS078', 'SAMBIT MUKHERJEE', 5, 2),
('1BM14IS079', 'SAMEER RAGHAVENDRA KATTI', 5, 2),
('1BM14IS080', 'SAMYUKTH H', 5, 2),
('1BM14IS081', 'SANCHITHA R', 5, 2),
('1BM14IS082', 'SANJANA M', 5, 2),
('1BM14IS083', 'SANKALP', 5, 2),
('1BM14IS084', 'SHARANYA D', 5, 2),
('1BM14IS085', 'SHIVAM JHA', 5, 2),
('1BM14IS086', 'SHOBIT AGARWAL', 5, 2),
('1BM14IS087', 'SHREYAS GANESH', 5, 2),
('1BM14IS088', 'SHUBHAM KUMAR PANDEY', 5, 2),
('1BM14IS089', 'SIDDARTHA SRIVASTAVA', 5, 2),
('1BM14IS090', 'SONIKA MURIEL PINTO', 5, 2),
('1BM14IS091', 'SOURABH AGRAWAL', 5, 2),
('1BM14IS092', 'SUHAS B R', 5, 2),
('1BM14IS093', 'SUMEDHA C C', 5, 2),
('1BM14IS094', 'SUNAINA RASHMI R', 5, 2),
('1BM14IS095', 'SUSHMA CHIPPAGIRI', 5, 2),
('1BM14IS096', 'SYEDA ARFA AJMAYEEN', 5, 2),
('1BM14IS097', 'T MITHUN', 5, 2),
('1BM14IS098', 'VAITHIANATHAN RAMNARAYAN', 5, 2),
('1BM14IS099', 'VARSHA R', 5, 2),
('1BM14IS100', 'VARUN N', 5, 2),
('1BM14IS101', 'VARUN VENU', 5, 2),
('1BM14IS102', 'VEMURI DIVYA', 5, 2),
('1BM14IS103', 'VIJAITEJ P', 5, 2),
('1BM14IS104', 'VIJAYA ANANYA BALU', 5, 2),
('1BM14IS106', 'VIVEK JHA', 5, 2),
('1BM15IS400', 'ACHUTHA K  ', 5, 2),
('1BM15IS401', 'AMARNATH  V ', 5, 2),
('1BM15IS402', 'ARCHANA S ', 5, 2),
('1BM15IS403', 'CHAITHRA S C ', 5, 2),
('1BM15IS404', 'INDUSHREE M ', 5, 2),
('1BM15IS405', 'KAVYA K N', 5, 2),
('1BM15IS406', 'KOTRAMMA M', 5, 2),
('1BM15IS407', 'LAKSHMI S', 5, 2),
('1BM15IS408', 'MALLIKARJUNA K ', 5, 2),
('1BM15IS409', 'NAGENDRA J ', 5, 2),
('1BM15IS410', 'NEERAJ GAONKAR ', 5, 2),
('1BM15IS413', 'PUNEET M K', 5, 2),
('1BM15IS414', 'UDAY HEGDE ', 5, 2),
('1BM15IS415', 'VARALAKSHMI ', 5, 2),
('1BM15IS416', 'VARUN V ', 5, 2),
('1BM15IS417', 'VIKRAM K ', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `d_id` int(10) NOT NULL,
  `usertype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `password`, `d_id`, `usertype`) VALUES
('admin', 'root', 2, 'admin'),
('sindhuk@bmsce.ac.in', 'sindhuk@bmsce.ac.in', 2, 'faculty'),
('mknalini@bmsce.ac.in', 'mknalini@bmsce.ac.in', 2, 'faculty'),
('roopar@bmsce.ac.in', 'roopar@bmsce.ac.in', 2, 'faculty'),
('rajeshwarik@bmsce.ac.in', 'rajeshwarik@bmsce.ac.in', 2, 'faculty'),
('mamathabr@bmsce.ac.in', 'mamathabr@bmsce.ac.in', 2, 'faculty'),
('gururajahs@bmsce.ac.in', 'gururajahs@bmsce.ac.in', 2, 'faculty'),
('1BM14IS001', '1BM14IS001', 2, 'student'),
('1BM14IS002', '1BM14IS002', 2, 'student'),
('1BM14IS003', '1BM14IS003', 2, 'student'),
('1BM14IS004', '1BM14IS004', 2, 'student'),
('1BM14IS005', '1BM14IS005', 2, 'student'),
('1BM14IS006', '1BM14IS006', 2, 'student'),
('1BM14IS008', '1BM14IS008', 2, 'student'),
('1BM14IS009', '1BM14IS009', 2, 'student'),
('1BM14IS010', '1BM14IS010', 2, 'student'),
('1BM14IS011', '1BM14IS011', 2, 'student'),
('1BM14IS012', '1BM14IS012', 2, 'student'),
('1BM14IS013', '1BM14IS013', 2, 'student'),
('1BM14IS014', '1BM14IS014', 2, 'student'),
('1BM14IS015', '1BM14IS015', 2, 'student'),
('1BM14IS016', '1BM14IS016', 2, 'student'),
('1BM14IS018', '1BM14IS018', 2, 'student'),
('1BM14IS019', '1BM14IS019', 2, 'student'),
('1BM14IS020', '1BM14IS020', 2, 'student'),
('1BM14IS021', '1BM14IS021', 2, 'student'),
('1BM14IS022', '1BM14IS022', 2, 'student'),
('1BM14IS023', '1BM14IS023', 2, 'student'),
('1BM14IS024', '1BM14IS024', 2, 'student'),
('1BM14IS025', '1BM14IS025', 2, 'student'),
('1BM14IS026', '1BM14IS026', 2, 'student'),
('1BM14IS028', '1BM14IS028', 2, 'student'),
('1BM14IS029', '1BM14IS029', 2, 'student'),
('1BM14IS030', '1BM14IS030', 2, 'student'),
('1BM14IS031', '1BM14IS031', 2, 'student'),
('1BM14IS032', '1BM14IS032', 2, 'student'),
('1BM14IS034', '1BM14IS034', 2, 'student'),
('1BM14IS035', '1BM14IS035', 2, 'student'),
('1BM14IS037', '1BM14IS037', 2, 'student'),
('1BM14IS038', '1BM14IS038', 2, 'student'),
('1BM14IS039', '1BM14IS039', 2, 'student'),
('1BM14IS040', '1BM14IS040', 2, 'student'),
('1BM14IS041', '1BM14IS041', 2, 'student'),
('1BM14IS042', '1BM14IS042', 2, 'student'),
('1BM14IS043', '1BM14IS043', 2, 'student'),
('1BM14IS044', '1BM14IS044', 2, 'student'),
('1BM14IS045', '1BM14IS045', 2, 'student'),
('1BM14IS046', '1BM14IS046', 2, 'student'),
('1BM14IS047', '1BM14IS047', 2, 'student'),
('1BM14IS048', '1BM14IS048', 2, 'student'),
('1BM14IS049', '1BM14IS049', 2, 'student'),
('1BM14IS051', '1BM14IS051', 2, 'student'),
('1BM14IS052', '1BM14IS052', 2, 'student'),
('1BM14IS054', '1BM14IS054', 2, 'student'),
('1BM14IS055', '1BM14IS055', 2, 'student'),
('1BM14IS056', '1BM14IS056', 2, 'student'),
('1BM14IS057', '1BM14IS057', 2, 'student'),
('1BM14IS058', '1BM14IS058', 2, 'student'),
('1BM14IS059', '1BM14IS059', 2, 'student'),
('1BM14IS060', '1BM14IS060', 2, 'student'),
('1BM14IS061', '1BM14IS061', 2, 'student'),
('1BM14IS062', '1BM14IS062', 2, 'student'),
('1BM14IS063', '1BM14IS063', 2, 'student'),
('1BM14IS064', '1BM14IS064', 2, 'student'),
('1BM14IS065', '1BM14IS065', 2, 'student'),
('1BM14IS066', '1BM14IS066', 2, 'student'),
('1BM14IS067', '1BM14IS067', 2, 'student'),
('1BM14IS068', '1BM14IS068', 2, 'student'),
('1BM14IS069', '1BM14IS069', 2, 'student'),
('1BM14IS070', '1BM14IS070', 2, 'student'),
('1BM14IS071', '1BM14IS071', 2, 'student'),
('1BM14IS072', '1BM14IS072', 2, 'student'),
('1BM14IS073', '1BM14IS073', 2, 'student'),
('1BM14IS074', '1BM14IS074', 2, 'student'),
('1BM14IS075', '1BM14IS075', 2, 'student'),
('1BM14IS076', '1BM14IS076', 2, 'student'),
('1BM14IS077', '1BM14IS077', 2, 'student'),
('1BM14IS078', '1BM14IS078', 2, 'student'),
('1BM14IS079', '1BM14IS079', 2, 'student'),
('1BM14IS080', '1BM14IS080', 2, 'student'),
('1BM14IS081', '1BM14IS081', 2, 'student'),
('1BM14IS082', '1BM14IS082', 2, 'student'),
('1BM14IS083', '1BM14IS083', 2, 'student'),
('1BM14IS084', '1BM14IS084', 2, 'student'),
('1BM14IS085', '1BM14IS085', 2, 'student'),
('1BM14IS086', '1BM14IS086', 2, 'student'),
('1BM14IS087', '1BM14IS087', 2, 'student'),
('1BM14IS088', '1BM14IS088', 2, 'student'),
('1BM14IS089', '1BM14IS089', 2, 'student'),
('1BM14IS090', '1BM14IS090', 2, 'student'),
('1BM14IS091', '1BM14IS091', 2, 'student'),
('1BM14IS092', '1BM14IS092', 2, 'student'),
('1BM14IS093', '1BM14IS093', 2, 'student'),
('1BM14IS094', '1BM14IS094', 2, 'student'),
('1BM14IS095', '1BM14IS095', 2, 'student'),
('1BM14IS096', '1BM14IS096', 2, 'student'),
('1BM14IS097', '1BM14IS097', 2, 'student'),
('1BM14IS098', '1BM14IS098', 2, 'student'),
('1BM14IS099', '1BM14IS099', 2, 'student'),
('1BM14IS100', '1BM14IS100', 2, 'student'),
('1BM14IS101', '1BM14IS101', 2, 'student'),
('1BM14IS102', '1BM14IS102', 2, 'student'),
('1BM14IS103', '1BM14IS103', 2, 'student'),
('1BM14IS104', '1BM14IS104', 2, 'student'),
('1BM14IS106', '1BM14IS106', 2, 'student'),
('1BM15IS400', '1BM15IS400', 2, 'student'),
('1BM15IS401', '1BM15IS401', 2, 'student'),
('1BM15IS402', '1BM15IS402', 2, 'student'),
('1BM15IS403', '1BM15IS403', 2, 'student'),
('1BM15IS404', '1BM15IS404', 2, 'student'),
('1BM15IS405', '1BM15IS405', 2, 'student'),
('1BM15IS406', '1BM15IS406', 2, 'student'),
('1BM15IS407', '1BM15IS407', 2, 'student'),
('1BM15IS408', '1BM15IS408', 2, 'student'),
('1BM15IS409', '1BM15IS409', 2, 'student'),
('1BM15IS410', '1BM15IS410', 2, 'student'),
('1BM15IS413', '1BM15IS413', 2, 'student'),
('1BM15IS414', '1BM15IS414', 2, 'student'),
('1BM15IS415', '1BM15IS415', 2, 'student'),
('1BM15IS416', '1BM15IS416', 2, 'student'),
('1BM15IS417', '1BM15IS417', 2, 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_CODE`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `department2`
--
ALTER TABLE `department2`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `faculty2`
--
ALTER TABLE `faculty2`
  ADD PRIMARY KEY (`fname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
