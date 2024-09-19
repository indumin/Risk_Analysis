-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 19, 2024 at 12:33 PM
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
-- Table structure for table `Accounts`
--

CREATE TABLE `Accounts` (
  `AccountID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `AccountType` varchar(20) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `DateOpened` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Accounts`
--

INSERT INTO `Accounts` (`AccountID`, `CustomerID`, `AccountType`, `Balance`, `DateOpened`) VALUES
(101, 1, 'Savings', 10000.00, '2022-01-10'),
(102, 2, 'Checking', 5000.00, '2023-03-15'),
(103, 3, 'Savings', 15000.00, '2021-07-22'),
(104, 4, 'Checking', 3000.00, '2023-04-10'),
(105, 5, 'Savings', 12000.00, '2020-11-05'),
(106, 6, 'Checking', 7000.00, '2022-12-01'),
(107, 7, 'Savings', 5000.00, '2021-10-15'),
(108, 8, 'Checking', 8000.00, '2023-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `Branches`
--

CREATE TABLE `Branches` (
  `BranchID` int NOT NULL,
  `BranchName` varchar(50) DEFAULT NULL,
  `BranchLocation` varchar(100) DEFAULT NULL,
  `ManagerID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Branches`
--

INSERT INTO `Branches` (`BranchID`, `BranchName`, `BranchLocation`, `ManagerID`) VALUES
(1, 'Downtown Branch', '123 City St', 101),
(2, 'Uptown Branch', '456 Town St', 102),
(3, 'Midtown Branch', '789 Central Ave', 105),
(4, 'Eastside Branch', '987 East St', 106);

-- --------------------------------------------------------

--
-- Table structure for table `CreditCards`
--

CREATE TABLE `CreditCards` (
  `CardID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `CreditLimit` decimal(10,2) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CreditCards`
--

INSERT INTO `CreditCards` (`CardID`, `CustomerID`, `CreditLimit`, `Balance`) VALUES
(1, 1, 20000.00, 5000.00),
(2, 2, 15000.00, 3000.00),
(3, 3, 25000.00, 12000.00),
(4, 4, 18000.00, 8000.00);

-- --------------------------------------------------------

--
-- Table structure for table `CreditCardTransactions`
--

CREATE TABLE `CreditCardTransactions` (
  `TransactionID` int NOT NULL,
  `CardID` int DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `TransactionType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CreditCardTransactions`
--

INSERT INTO `CreditCardTransactions` (`TransactionID`, `CardID`, `Amount`, `TransactionDate`, `TransactionType`) VALUES
(7, 1, 6000.00, '2023-09-01', 'Purchase'),
(8, 1, 5000.00, '2023-09-02', 'Purchase'),
(9, 1, 3000.00, '2023-09-03', 'Purchase'),
(10, 2, 1000.00, '2023-09-04', 'Purchase'),
(11, 3, 6000.00, '2023-09-05', 'Cash Advance'),
(12, 3, 5000.00, '2023-09-06', 'Cash Advance'),
(13, 3, 5000.00, '2023-09-07', 'Cash Advance');

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Phone`) VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '987-654-3210'),
(3, 'Mike', 'Brown', 'mike.brown@email.com', '555-555-5555'),
(4, 'Emily', 'Jones', 'emily.jones@email.com', '444-444-4444'),
(5, 'Sarah', 'Lee', 'sarah.lee@email.com', '333-333-3333'),
(6, 'David', 'Wilson', 'david.wilson@email.com', '222-222-2222'),
(7, 'Karen', 'Taylor', 'karen.taylor@email.com', '111-111-1111'),
(8, 'James', 'Moore', 'james.moore@email.com', '999-999-9999');

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

-- --------------------------------------------------------

--
-- Table structure for table `Loans`
--

CREATE TABLE `Loans` (
  `LoanID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `LoanType` varchar(20) DEFAULT NULL,
  `LoanAmount` decimal(10,2) DEFAULT NULL,
  `LoanDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Loans`
--

INSERT INTO `Loans` (`LoanID`, `CustomerID`, `LoanType`, `LoanAmount`, `LoanDate`) VALUES
(1, 1, 'Personal', 50000.00, '2023-02-01'),
(2, 2, 'Auto', 30000.00, '2022-05-01'),
(3, 3, 'Home', 200000.00, '2020-09-15'),
(4, 4, 'Business', 100000.00, '2021-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `Transactions`
--

CREATE TABLE `Transactions` (
  `TransactionID` int NOT NULL,
  `AccountID` int DEFAULT NULL,
  `TransactionType` varchar(20) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Transactions`
--

INSERT INTO `Transactions` (`TransactionID`, `AccountID`, `TransactionType`, `Amount`, `TransactionDate`) VALUES
(1015, 101, 'Deposit', 15000.00, '2023-09-01'),
(1016, 101, 'Deposit', 12000.00, '2023-09-03'),
(1017, 102, 'Withdrawal', 3000.00, '2023-09-05'),
(1018, 101, 'Withdrawal', 9000.00, '2023-09-06'),
(1019, 103, 'Deposit', 8000.00, '2023-09-07'),
(1020, 101, 'Deposit', 11000.00, '2023-09-08'),
(1021, 106, 'Withdrawal', 5000.00, '2023-09-10'),
(1022, 107, 'Deposit', 30000.00, '2023-09-12'),
(1023, 105, 'Withdrawal', 4000.00, '2023-09-13'),
(1024, 101, 'Deposit', 14000.00, '2023-09-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `Branches`
--
ALTER TABLE `Branches`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `CreditCards`
--
ALTER TABLE `CreditCards`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `CreditCardTransactions`
--
ALTER TABLE `CreditCardTransactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `CardID` (`CardID`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `LoanPayments`
--
ALTER TABLE `LoanPayments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `LoanID` (`LoanID`);

--
-- Indexes for table `Loans`
--
ALTER TABLE `Loans`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `Transactions`
--
ALTER TABLE `Transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `AccountID` (`AccountID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

--
-- Constraints for table `CreditCards`
--
ALTER TABLE `CreditCards`
  ADD CONSTRAINT `creditcards_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

--
-- Constraints for table `CreditCardTransactions`
--
ALTER TABLE `CreditCardTransactions`
  ADD CONSTRAINT `creditcardtransactions_ibfk_1` FOREIGN KEY (`CardID`) REFERENCES `CreditCards` (`CardID`);

--
-- Constraints for table `LoanPayments`
--
ALTER TABLE `LoanPayments`
  ADD CONSTRAINT `loanpayments_ibfk_1` FOREIGN KEY (`LoanID`) REFERENCES `Loans` (`LoanID`);

--
-- Constraints for table `Loans`
--
ALTER TABLE `Loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

--
-- Constraints for table `Transactions`
--
ALTER TABLE `Transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
