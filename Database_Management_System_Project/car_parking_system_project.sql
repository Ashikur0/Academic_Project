-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2018 at 05:55 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_parking_system_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Number_Of_Parking_Space` int(11) NOT NULL,
  `Owner_Email` varchar(50) DEFAULT NULL,
  `Driving_Licence_Number` varchar(50) DEFAULT NULL,
  `Booking_Date` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE `capacity` (
  `Number_Of_Parking_Space` int(11) NOT NULL,
  `Owner_Email` varchar(50) NOT NULL,
  `Private_Car_Capacity` int(11) NOT NULL,
  `MotorCycle_Capacity` int(11) NOT NULL,
  `Private_Car_Allocated` int(11) NOT NULL,
  `MotorCycle_Allocated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`Number_Of_Parking_Space`, `Owner_Email`, `Private_Car_Capacity`, `MotorCycle_Capacity`, `Private_Car_Allocated`, `MotorCycle_Allocated`) VALUES
(1, ' ashikur.r.dipto@gmail.com ', 15, 25, 0, 0),
(3, ' nakib@gmail.com ', 10, 15, 0, 0),
(4, ' mdittahad@gmail.com ', 25, 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `Number_Of_Parking_Space` int(11) NOT NULL,
  `Owner_Email` varchar(50) NOT NULL,
  `Driving_Licence_Number` varchar(50) NOT NULL,
  `Check_Out_Date` date DEFAULT NULL,
  `Fare` double DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `has_offer`
--

CREATE TABLE `has_offer` (
  `Offer_Id` int(11) NOT NULL,
  `Driving_Licence_Number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `has_vehicle`
--

CREATE TABLE `has_vehicle` (
  `Licence_Number` varchar(50) NOT NULL,
  `Driving_Licence_Number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_vehicle`
--

INSERT INTO `has_vehicle` (`Licence_Number`, `Driving_Licence_Number`) VALUES
('aaa-0022', 'dip-007');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `Offer_Id` int(11) NOT NULL,
  `Percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Owner_Name` varchar(50) DEFAULT NULL,
  `Owner_Address` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `Owner_Email` varchar(50) NOT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Owner_Name`, `Owner_Address`, `Contact`, `Owner_Email`, `Password`) VALUES
(' Ashikur Rahaman ', ' Vatara,Notun Bazar ', ' 01759359294 ', ' ashikur.r.dipto@gmail.com ', ' ar.dipto '),
(' Md.Ittahad Uz zaman ', ' Niketon,Gulshan ', ' 01721070717 ', ' mdittahad@gmail.com ', ' akash '),
(' Nakib Hossain ', ' old dhaka ', ' 01670798492 ', ' nakib@gmail.com ', ' nakib ');

-- --------------------------------------------------------

--
-- Table structure for table `parking_space`
--

CREATE TABLE `parking_space` (
  `Number_Of_Parking_Space` int(11) NOT NULL,
  `Owner_Email` varchar(50) NOT NULL,
  `Per_Month_Cost` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_space`
--

INSERT INTO `parking_space` (`Number_Of_Parking_Space`, `Owner_Email`, `Per_Month_Cost`, `Latitude`, `Longitude`) VALUES
(1, ' ashikur.r.dipto@gmail.com ', 5500, 0, 0),
(3, ' nakib@gmail.com ', 3500, 0, 0),
(4, ' mdittahad@gmail.com ', 6000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_Name` varchar(50) DEFAULT NULL,
  `User_Address` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `User_Email` varchar(50) DEFAULT NULL,
  `Driving_Licence_Number` varchar(50) NOT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Name`, `User_Address`, `Contact`, `User_Email`, `Driving_Licence_Number`, `Password`) VALUES
(' Joceph Ahmed ', ' Malibag,dhaka ', ' 01740453652 ', ' joceph3652@gmail.com ', ' Joc-633 ', ' joceph '),
(' Md.Morshed Alam ', ' malibag,dhaka ', ' 01740044846 ', ' morshed4846@gmail.com ', ' morshed-1102 ', ' morshed '),
(' Rakib Hossain ', ' Mohakhali ', ' 01756804340 ', ' rakibhossain@gmail.com ', ' Rakib-2233 ', ' sazel '),
(' Md.Sabbir Ullah ', ' Boshundhara ', ' 01754067119 ', ' mdsabbir@gmail.com ', ' sabbir-9852 ', ' sabbir '),
(' Shiliya Samon ', ' Old Dhaka ', ' 01755222333 ', ' samon@gmail.com ', ' SAM-8899 ', ' samon '),
('dipto', 'jamalpur', '01766554564', 'dipto@gmail.com', 'dip-007', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Vehicle_Name` varchar(50) DEFAULT NULL,
  `Vehicle_Type` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Licence_Number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Vehicle_Name`, `Vehicle_Type`, `Model`, `Licence_Number`) VALUES
(' apachi RTR ', ' Motorcycle ', ' RTR-2017 ', ' Dha-1212 '),
(' Premio ', ' Private Car ', ' pre.2017 ', ' DHA-5533 '),
(' yamaha ', ' MotorCycle ', ' FZ ', ' DHA-5566 '),
(' Corolla ', ' Private Car ', ' corolla-2012 ', ' Dha-Da-2154 '),
(' Pulsure ', ' MotorCycle ', ' P-2018 ', ' Dka-6631 '),
('aaa', 'aaa', 'aaa', 'aaa-0022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Number_Of_Parking_Space`),
  ADD KEY `Number_Of_Parking_Space` (`Number_Of_Parking_Space`,`Owner_Email`),
  ADD KEY `Driving_Licence_Number` (`Driving_Licence_Number`);

--
-- Indexes for table `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`Number_Of_Parking_Space`,`Owner_Email`,`Private_Car_Capacity`,`MotorCycle_Capacity`,`Private_Car_Allocated`,`MotorCycle_Allocated`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`Number_Of_Parking_Space`,`Owner_Email`,`Driving_Licence_Number`),
  ADD KEY `Driving_Licence_Number` (`Driving_Licence_Number`);

--
-- Indexes for table `has_offer`
--
ALTER TABLE `has_offer`
  ADD PRIMARY KEY (`Offer_Id`),
  ADD KEY `Driving_Licence_Number` (`Driving_Licence_Number`);

--
-- Indexes for table `has_vehicle`
--
ALTER TABLE `has_vehicle`
  ADD PRIMARY KEY (`Licence_Number`),
  ADD KEY `Driving_Licence_Number` (`Driving_Licence_Number`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`Offer_Id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Owner_Email`);

--
-- Indexes for table `parking_space`
--
ALTER TABLE `parking_space`
  ADD PRIMARY KEY (`Number_Of_Parking_Space`,`Owner_Email`),
  ADD KEY `Owner_Email` (`Owner_Email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Driving_Licence_Number`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Licence_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Number_Of_Parking_Space` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
  MODIFY `Number_Of_Parking_Space` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `check_out`
--
ALTER TABLE `check_out`
  MODIFY `Number_Of_Parking_Space` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_space`
--
ALTER TABLE `parking_space`
  MODIFY `Number_Of_Parking_Space` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Number_Of_Parking_Space`,`Owner_Email`) REFERENCES `parking_space` (`Number_Of_Parking_Space`, `Owner_Email`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Driving_Licence_Number`) REFERENCES `user` (`Driving_Licence_Number`);

--
-- Constraints for table `capacity`
--
ALTER TABLE `capacity`
  ADD CONSTRAINT `capacity_ibfk_1` FOREIGN KEY (`Number_Of_Parking_Space`,`Owner_Email`) REFERENCES `parking_space` (`Number_Of_Parking_Space`, `Owner_Email`);

--
-- Constraints for table `check_out`
--
ALTER TABLE `check_out`
  ADD CONSTRAINT `check_out_ibfk_1` FOREIGN KEY (`Number_Of_Parking_Space`,`Owner_Email`) REFERENCES `parking_space` (`Number_Of_Parking_Space`, `Owner_Email`),
  ADD CONSTRAINT `check_out_ibfk_2` FOREIGN KEY (`Driving_Licence_Number`) REFERENCES `user` (`Driving_Licence_Number`),
  ADD CONSTRAINT `check_out_ibfk_3` FOREIGN KEY (`Number_Of_Parking_Space`,`Owner_Email`) REFERENCES `parking_space` (`Number_Of_Parking_Space`, `Owner_Email`);

--
-- Constraints for table `has_offer`
--
ALTER TABLE `has_offer`
  ADD CONSTRAINT `has_offer_ibfk_1` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`),
  ADD CONSTRAINT `has_offer_ibfk_2` FOREIGN KEY (`Driving_Licence_Number`) REFERENCES `user` (`Driving_Licence_Number`);

--
-- Constraints for table `has_vehicle`
--
ALTER TABLE `has_vehicle`
  ADD CONSTRAINT `has_vehicle_ibfk_1` FOREIGN KEY (`Licence_Number`) REFERENCES `vehicle` (`Licence_Number`),
  ADD CONSTRAINT `has_vehicle_ibfk_2` FOREIGN KEY (`Driving_Licence_Number`) REFERENCES `user` (`Driving_Licence_Number`);

--
-- Constraints for table `parking_space`
--
ALTER TABLE `parking_space`
  ADD CONSTRAINT `parking_space_ibfk_1` FOREIGN KEY (`Owner_Email`) REFERENCES `owner` (`Owner_Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
