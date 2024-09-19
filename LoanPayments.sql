-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 19, 2024 at 12:42 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FraudAnalysisProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `LoanPayments`
--

CREATE TABLE `LoanPayments` (
  `PaymentID` int NOT NULL,
  `LoanID` int DEFAULT NULL,
  `PaymentAmount` decimal(10,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `LoanPayments`
--

INSERT INTO `LoanPayments` (`PaymentID`, `LoanID`, `PaymentAmount`, `PaymentDate`) VALUES
(7, 1, 25000.00, '2023-09-01'),
(8, 1, 25000.00, '2023-09-02'),
(9, 2, 500.00, '2023-09-03'),
(10, 3, 20000.00, '2023-09-05'),
(11, 4, 1500.00, '2023-09-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `LoanPayments`
--
ALTER TABLE `LoanPayments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `LoanID` (`LoanID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `LoanPayments`
--
ALTER TABLE `LoanPayments`
  ADD CONSTRAINT `loanpayments_ibfk_1` FOREIGN KEY (`LoanID`) REFERENCES `Loans` (`LoanID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
