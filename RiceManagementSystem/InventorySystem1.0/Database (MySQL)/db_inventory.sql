-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 09:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `STRT` varchar(30) NOT NULL,
  `END` varchar(30) NOT NULL,
  `INCREMENT` int(11) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `STRT`, `END`, `INCREMENT`, `DESCRIPTION`) VALUES
(1, '00001', '14', 1, 'Customer'),
(3, '20122', '8', 1, 'Suplier'),
(4, '32302', '15', 1, 'StockIn'),
(5, '102201', '22', 1, 'StockOut'),
(24, 'R0000', '4', 1, 'Rice'),
(25, 'b0000', '11', 1, 'basmoti rice'),
(26, 'B0000', '11', 1, 'Basmoti rice'),
(27, 'N0000', '3', 1, 'Najirshail rice'),
(28, 'R0000', '1', 1, 'Roshid rice'),
(29, 'm0000', '3', 1, 'mincete');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `ITEMID` varchar(30) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `PRICE` double NOT NULL,
  `QTY` int(11) NOT NULL,
  `UNIT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`ITEMID`, `NAME`, `DESCRIPTION`, `TYPE`, `PRICE`, `QTY`, `UNIT`) VALUES
('b00001', 'faria', 'barisal', 'Basmoti rice', 4, 1000, 'kilo'),
('b000010', 'imran', 'rangpur', 'Basmoti rice', 2324, 5, 'kilo'),
('b00002', 'Fahim', 'shamoly', 'Basmoti rice', 50000, 18, 'kilo'),
('b00003', 'Imrans bou s', 'Imrans house polau khabe', 'Basmoti rice', 100, 1, 'kilo'),
('b00007', 'imis wifi', 'ndfndfndknfdn', 'Basmoti rice', 332, 1, 'kilo'),
('b00008', 'xyz', 'ulab', 'Basmoti rice', 700, 4, 'kilo'),
('b00009', 'adnan', 'adabor', 'Basmoti rice', 20000, 20, 'kilo'),
('m00001', 'Rashid', 'khulna', 'mincete', 3400, 5, 'kilo'),
('m00002', 'Shaown', 'dhaka, lalmatia', 'mincete', 500, 5, 'kilo'),
('N00001', 'mumu', 'mohammadpur', 'Najirshail rice', 2000, 18, 'kilo'),
('N00002', 'imran', 'dhaka-102', 'Najirshail rice', 4000, 34, 'kilo'),
('R00001', 'imran', 'dhaka-1207', 'Rice', 1200, 23, 'kilo'),
('R00003', 'shawon', 'agailjhara,barisal', 'Rice', 2000, 6, 'kilo');

-- --------------------------------------------------------

--
-- Table structure for table `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(11) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsettings`
--

CREATE TABLE `tblsettings` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `PARA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `PARA`) VALUES
(14, 'kilo', 'Unit'),
(15, 'Rice', 'Category'),
(17, 'mon', 'Unit'),
(18, 'Basmoti rice', 'Category'),
(19, 'Najirshail rice', 'Category'),
(20, 'Roshid rice', 'Category'),
(21, 'mincete', 'Category');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_return`
--

CREATE TABLE `tblstock_return` (
  `STOCKRETURNID` int(11) NOT NULL,
  `STOCKRETURNNUMBER` varchar(30) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `RETURNDATE` date NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `OWNER_CUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsuplier`
--

CREATE TABLE `tblsuplier` (
  `ID` int(11) NOT NULL,
  `SUPLIERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsuplier`
--

INSERT INTO `tblsuplier` (`ID`, `SUPLIERID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `TELEPHONE`, `MOBILE`, `TYPE`) VALUES
(5, '20201223', 'imran', 'Fakir', 'dhaka city', '44-55-5555', '09496585632', 'SUPLIER');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `STOCKINID` int(11) NOT NULL,
  `TRANSACTIONNUMBER` varchar(30) DEFAULT NULL,
  `TRANSACTIONDATE` date NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaction`
--

INSERT INTO `tbltransaction` (`STOCKINID`, `TRANSACTIONNUMBER`, `TRANSACTIONDATE`, `TYPE`, `SUPLIERCUSTOMERID`) VALUES
(1, '4908731', '2015-02-25', 'StockOut', '1220117'),
(2, '1022011', '2015-02-25', 'StockOut', '000011'),
(3, '4908731', '2015-02-25', 'Returned', '1220117'),
(4, '1022011', '2015-02-25', 'Returned', '11'),
(5, '4908731', '2015-02-25', 'Returned', '1220117'),
(6, '4908731', '2015-02-25', 'Returned', '1220117'),
(7, '1022012', '2015-02-25', 'StockOut', '000011'),
(8, '1022012', '2015-02-25', 'Returned', '11'),
(9, '1022013', '2015-02-25', 'StockOut', '000011'),
(10, '1022014', '2015-02-25', 'StockOut', '1220117'),
(11, '1022015', '2015-02-25', 'StockOut', '000011'),
(12, '1022016', '2015-02-25', 'StockOut', '000016'),
(13, '1022017', '2015-02-26', 'StockOut', '000016'),
(14, '1022018', '2015-02-26', 'StockOut', '000013'),
(15, '1022019', '2015-02-26', 'StockOut', '0000110'),
(16, '1022019', '2015-02-26', 'Returned', '110'),
(17, '10220110', '2015-02-26', 'StockOut', '000019'),
(18, '10220110', '2015-02-26', 'Returned', '19'),
(19, '10220111', '2015-02-26', 'StockOut', '000011'),
(20, '10220112', '2015-02-26', 'StockOut', '000013'),
(21, '10220112', '2015-02-26', 'Returned', '13'),
(22, '10220113', '2015-02-26', 'StockOut', '0000112'),
(23, '10220114', '2015-02-26', 'StockOut', '0000113'),
(24, '10220115', '2015-02-26', 'StockOut', '0000111'),
(25, '10220116', '2015-02-26', 'StockOut', '0000112'),
(26, '10220117', '2015-02-27', 'StockOut', '0000112'),
(27, '10220117', '2015-02-27', 'Returned', '112'),
(28, '10220118', '2019-01-06', 'StockOut', '000016'),
(29, '10220111', '2019-01-06', 'Returned', '11'),
(30, '10220119', '2022-05-24', 'StockOut', 'b2'),
(31, '10220120', '2022-05-24', 'StockOut', '12234'),
(32, '10220121', '2022-05-24', 'StockOut', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tblvendor`
--

CREATE TABLE `tblvendor` (
  `VENDORID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `user_name` varchar(90) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `user_name`, `pass`, `type`) VALUES
(3, 'Imran', 'imran', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(5, 'ash', 'farahi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Staff'),
(7, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`ITEMID`);

--
-- Indexes for table `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CUSID` (`SUPLIERCUSTOMERID`);

--
-- Indexes for table `tblsettings`
--
ALTER TABLE `tblsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstock_return`
--
ALTER TABLE `tblstock_return`
  ADD PRIMARY KEY (`STOCKRETURNID`);

--
-- Indexes for table `tblsuplier`
--
ALTER TABLE `tblsuplier`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SUPID` (`SUPLIERID`);

--
-- Indexes for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`STOCKINID`);

--
-- Indexes for table `tblvendor`
--
ALTER TABLE `tblvendor`
  ADD PRIMARY KEY (`VENDORID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblsettings`
--
ALTER TABLE `tblsettings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblstock_return`
--
ALTER TABLE `tblstock_return`
  MODIFY `STOCKRETURNID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsuplier`
--
ALTER TABLE `tblsuplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblvendor`
--
ALTER TABLE `tblvendor`
  MODIFY `VENDORID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
