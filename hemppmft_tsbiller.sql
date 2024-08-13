-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2024 at 11:28 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hemppmft_tsbiller`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladdress`
--

CREATE TABLE `tbladdress` (
  `ADDRESS_ID` int(11) NOT NULL,
  `ATTENTION` varchar(100) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `ADDRESS_1` varchar(100) NOT NULL,
  `ADDRESS_2` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `ZIPCODE` int(10) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `FAX_NUMBER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladdress`
--

INSERT INTO `tbladdress` (`ADDRESS_ID`, `ATTENTION`, `COUNTRY`, `ADDRESS_1`, `ADDRESS_2`, `CITY`, `STATE`, `ZIPCODE`, `PHONE`, `FAX_NUMBER`) VALUES
(5, 'Ankit', 'india', 'ankit street', 'ankit city', 'Mumbai', 'Maharashtra', 345753, '9999999999', '9988776655'),
(6, 'Ankit', 'india', 'ankit street', 'ankit city', 'Mumbai', 'Maharashtra', 345753, '9999999999', '9988776655');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_TYPE` varchar(11) NOT NULL,
  `PRIMARYCONTACT_SALUTATIONS` varchar(5) NOT NULL,
  `PRIMARYCONTACT_FIRSTNAME` varchar(50) NOT NULL,
  `PRIMARYCONTACT_LASTNAME` varchar(50) NOT NULL,
  `COMPANYNAME` varchar(100) NOT NULL,
  `CUSTOMER_DISPLAYNAME` varchar(100) NOT NULL,
  `CURRENCY` varchar(50) NOT NULL,
  `CUSTOMER_EMAIL` varchar(300) NOT NULL,
  `MOBILEPHONE` varchar(15) NOT NULL,
  `GST_TREATMENT` varchar(20) NOT NULL,
  `GSTIN_UIN` varchar(15) NOT NULL,
  `BUSINESS_LEGALNAME` varchar(100) NOT NULL,
  `BUSINESS_TRADENAME` varchar(100) NOT NULL,
  `PAN` varchar(10) NOT NULL,
  `PLACE_OF_SUPPLY` varchar(50) NOT NULL,
  `TAX_PREFERENCE` varchar(20) NOT NULL,
  `EXEMPTION_REASON` varchar(100) NOT NULL,
  `PAYMENT_TERMS` varchar(50) NOT NULL,
  `WEBSITE_URL` varchar(200) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `DESIGNATION` varchar(50) NOT NULL,
  `TWITTER` varchar(50) NOT NULL,
  `SKYPE` varchar(50) NOT NULL,
  `FACEBOOK` varchar(50) NOT NULL,
  `BILLINGADDRESS_ID` int(11) NOT NULL,
  `SHIPPINGADDRESS_ID` int(11) NOT NULL,
  `USER_REMARKS` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMER_ID`, `USER_ID`, `CUSTOMER_TYPE`, `PRIMARYCONTACT_SALUTATIONS`, `PRIMARYCONTACT_FIRSTNAME`, `PRIMARYCONTACT_LASTNAME`, `COMPANYNAME`, `CUSTOMER_DISPLAYNAME`, `CURRENCY`, `CUSTOMER_EMAIL`, `MOBILEPHONE`, `GST_TREATMENT`, `GSTIN_UIN`, `BUSINESS_LEGALNAME`, `BUSINESS_TRADENAME`, `PAN`, `PLACE_OF_SUPPLY`, `TAX_PREFERENCE`, `EXEMPTION_REASON`, `PAYMENT_TERMS`, `WEBSITE_URL`, `DEPARTMENT`, `DESIGNATION`, `TWITTER`, `SKYPE`, `FACEBOOK`, `BILLINGADDRESS_ID`, `SHIPPINGADDRESS_ID`, `USER_REMARKS`) VALUES
(3, 18, 'business', 'Mr.', 'ankit', 'pandey', 'Microsoft', 'Ankit Pandey', 'INR - India Rupee', 'ankit@gmail.com', '8976543456', 'Composition', '29AAACH7409R1ZX', 'Microsoft', 'Ankit trade', 'ABCDE1234A', '[DL] Delhi', 'taxable', '', 'net 30', 'http://localhost/TSBillingMaster/customers/index.php?view=add', 'IT department', 'no', 'http://localhost/TSBillingMaster/customers/index.p', 'http://localhost/TSBillingMaster/customers/index.p', 'http://localhost/TSBillingMaster/customers/index.p', 5, 6, 'mkjh');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `INVOICE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `INVOICE_NUM_PREFIX` varchar(20) NOT NULL,
  `INVOICE_NUM_SUFFIX` varchar(20) NOT NULL,
  `ORDER_NUMBER` varchar(20) NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `DUE_TERMS` varchar(20) NOT NULL,
  `DUE_DATE` date NOT NULL,
  `SALESPERSON_ID` int(11) NOT NULL,
  `SUBJECT` varchar(100) NOT NULL,
  `DISCOUNT` double NOT NULL,
  `DISCOUNT_TYPE` varchar(10) NOT NULL,
  `SUBTOTAL` double NOT NULL,
  `SHIPPING_CHARGES` double NOT NULL,
  `ADJUSTMENT` double NOT NULL,
  `TAX_ADDON_TYPE` varchar(10) NOT NULL,
  `TAX_ADDON_VALUE` double NOT NULL,
  `TOTAL` double NOT NULL,
  `TOTAL_TAX` double NOT NULL,
  `CUSTOMER_NOTES` varchar(100) NOT NULL,
  `TERMS_CONDITIONS` varchar(200) NOT NULL,
  `BALANCE` double NOT NULL,
  `INVOICE_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`INVOICE_ID`, `USER_ID`, `CUSTOMER_ID`, `INVOICE_NUM_PREFIX`, `INVOICE_NUM_SUFFIX`, `ORDER_NUMBER`, `INVOICE_DATE`, `DUE_TERMS`, `DUE_DATE`, `SALESPERSON_ID`, `SUBJECT`, `DISCOUNT`, `DISCOUNT_TYPE`, `SUBTOTAL`, `SHIPPING_CHARGES`, `ADJUSTMENT`, `TAX_ADDON_TYPE`, `TAX_ADDON_VALUE`, `TOTAL`, `TOTAL_TAX`, `CUSTOMER_NOTES`, `TERMS_CONDITIONS`, `BALANCE`, `INVOICE_STATUS`) VALUES
(10, 18, 3, 'INV', '000000000001', '3456', '2024-08-01', 'Due on Receipt', '2024-08-01', 3, 'mknj', 0, 'Percentage', 40000, 0, 0, 'tds', 0, 44800, 4800, '', '', 44800, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE `tblitem` (
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ITEMTYPE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `UNIT` varchar(20) NOT NULL,
  `HSN_SAC` varchar(20) NOT NULL,
  `TAX_PREFERENCE` varchar(20) NOT NULL,
  `EXEMPTION_REASON` varchar(100) NOT NULL,
  `SELLINGPRICE` double NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `INTRAGST` int(10) NOT NULL,
  `INTERGST` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblitem`
--

INSERT INTO `tblitem` (`ITEM_ID`, `USER_ID`, `ITEMTYPE`, `NAME`, `UNIT`, `HSN_SAC`, `TAX_PREFERENCE`, `EXEMPTION_REASON`, `SELLINGPRICE`, `DESCRIPTION`, `INTRAGST`, `INTERGST`) VALUES
(8, 18, 'Goods', 'Laptop', '1', '7654', 'Non-Taxable', 'cvbghnm', 40000, 'kjh', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDER_ID` int(11) NOT NULL,
  `REFERENCE_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `QUANTITY` double NOT NULL,
  `PRICE` double NOT NULL,
  `TAX` varchar(20) NOT NULL,
  `TYPE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDER_ID`, `REFERENCE_ID`, `ITEM_ID`, `QUANTITY`, `PRICE`, `TAX`, `TYPE`) VALUES
(27, 10, 8, 1, 40000, '12', 'invoice');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `PAYMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `INVOICE_ID` varchar(20) NOT NULL,
  `REFERENCE_NUMBER` varchar(20) NOT NULL,
  `AMOUNT` double NOT NULL,
  `MODE` varchar(20) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblproforma`
--

CREATE TABLE `tblproforma` (
  `INVOICE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `INVOICE_NUM_PREFIX` varchar(20) NOT NULL,
  `INVOICE_NUM_SUFFIX` varchar(20) NOT NULL,
  `ORDER_NUMBER` varchar(20) NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `DUE_TERMS` varchar(20) NOT NULL,
  `DUE_DATE` date NOT NULL,
  `SALESPERSON_ID` int(11) NOT NULL,
  `SUBJECT` varchar(100) NOT NULL,
  `DISCOUNT` double NOT NULL,
  `DISCOUNT_TYPE` varchar(10) NOT NULL,
  `SUBTOTAL` double NOT NULL,
  `SHIPPING_CHARGES` double NOT NULL,
  `ADJUSTMENT` double NOT NULL,
  `TAX_ADDON_TYPE` varchar(10) NOT NULL,
  `TAX_ADDON_VALUE` double NOT NULL,
  `TOTAL` double NOT NULL,
  `TOTAL_TAX` double NOT NULL,
  `CUSTOMER_NOTES` varchar(100) NOT NULL,
  `TERMS_CONDITIONS` varchar(200) NOT NULL,
  `BALANCE` double NOT NULL,
  `INVOICE_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblquote`
--

CREATE TABLE `tblquote` (
  `QUOTE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `QUOTE_NUM_PREFIX` varchar(20) NOT NULL,
  `QUOTE_NUM_SUFFIX` varchar(20) NOT NULL,
  `REFERENCE_NUMBER` varchar(20) NOT NULL,
  `QUOTE_DATE` date NOT NULL,
  `EXPIRY_DATE` date NOT NULL,
  `SALESPERSON_ID` int(11) NOT NULL,
  `SUBJECT` varchar(100) NOT NULL,
  `CUSTOMER_NOTES` varchar(100) NOT NULL,
  `DISCOUNT` double NOT NULL,
  `DISCOUNT_TYPE` varchar(10) NOT NULL,
  `SHIPPING_CHARGES` double NOT NULL,
  `TAX_ADDON_TYPE` varchar(10) NOT NULL,
  `TAX_ADDON_VALUE` double NOT NULL,
  `ADJUSTMENT` double NOT NULL,
  `TERMS_CONDITIONS` varchar(200) NOT NULL,
  `SUBTOTAL` double NOT NULL,
  `TOTAL` double NOT NULL,
  `QUOTE_STATUS` varchar(50) NOT NULL,
  `MY_ADDRESS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsalesperson`
--

CREATE TABLE `tblsalesperson` (
  `SALESPERSON_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsalesperson`
--

INSERT INTO `tblsalesperson` (`SALESPERSON_ID`, `USER_ID`, `NAME`, `EMAIL`) VALUES
(3, 18, 'Ankit', 'ankit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `COMPANYNAME` varchar(100) NOT NULL,
  `ADDRESS_ID` int(11) NOT NULL,
  `GSTIN_UIN` varchar(20) NOT NULL,
  `LOGO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbluserdata`
--

CREATE TABLE `tbluserdata` (
  `SR_ID` int(22) NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `IMAGE_SOURCE` varchar(250) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `ORG_NAME` varchar(255) NOT NULL,
  `EMAIL_ID` varchar(30) NOT NULL,
  `PHONE_NO` varchar(100) NOT NULL,
  `CITY_NAME` varchar(25) NOT NULL,
  `ZIP_CODE` int(10) NOT NULL,
  `STATE_NAME` varchar(30) NOT NULL,
  `GST` varchar(40) NOT NULL,
  `USER_ADDRESS` varchar(500) NOT NULL,
  `WEBSITE_URL_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluserdata`
--

INSERT INTO `tbluserdata` (`SR_ID`, `USER_ID`, `IMAGE_SOURCE`, `FIRST_NAME`, `LAST_NAME`, `ORG_NAME`, `EMAIL_ID`, `PHONE_NO`, `CITY_NAME`, `ZIP_CODE`, `STATE_NAME`, `GST`, `USER_ADDRESS`, `WEBSITE_URL_ID`) VALUES
(8, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(9, 12, '66a20dd73a2cd.', 'Nidhi', 'Shinde', 'Traction Shastra', 'nidhi2shine@gmail.com', '9867806807', 'Mumbai', 400064, 'Maharashtra', '27EIAPS2086G1Z2', 'Malad , Mumbai', 'www.tractionshastra.com'),
(10, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(11, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(12, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(13, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(14, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(15, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(16, 18, '66a8c36dee757.png', 'Ankit', 'Pandey', 'Microsoft', 'ankit@gmail.com', '8888665533', 'Mumbai', 999999, 'Haryana', 'CBDVHD87677TFVSF6', 'jbhjgfhgdf', 'http://localhost/work/userprofile/userprofile.php'),
(17, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(18, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(19, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(20, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(21, 0, '', '', '', '', '', '', '', 0, '', '', '', ''),
(22, 24, '', '', '', '', '', '', '', 0, '', '', '', ''),
(23, 25, '', '', '', '', '', '', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserlogin`
--

CREATE TABLE `tbluserlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `first_login` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluserlogin`
--

INSERT INTO `tbluserlogin` (`id`, `name`, `email`, `password_hash`, `reset_token_hash`, `reset_token_expires_at`, `first_login`) VALUES
(12, 'Nidhi Shinde', 'nidhi2shine@gmail.com', '$2y$10$q/Imvxvv.fw1CkNannxeCu.tyhhEMdFDz7IHUQ.owgWmz2enWvMw6', NULL, NULL, 0),
(13, 'tt', 'tt@gmail.com', '$2y$10$aBu/gIMx3t8.WdcLsHe8KOkdud.uypS.k1lQTp7bbC081UHAyWRVS', NULL, NULL, 0),
(14, 'A', 'a@gmail.com', '$2y$10$NIF1iX36LV0hbXDZvBdMjuPvDlmxTJSgjqN9eIgBGADHXPkjTnniS', NULL, NULL, 1),
(15, 'Riya ', 'riya@gmail.com', '$2y$10$EiUwjMmj21b0wvFLlz68Def7.c9e4eWkV1E9UQSpMqgzsvlLwchJu', NULL, NULL, 1),
(16, 'nn', 'nn@gmail.com', '$2y$10$mvHnykmnhvigHwmDD8ytfOP0SqcXWpBmBDY6wJVvBoFP9kDGzzqb6', NULL, NULL, 1),
(17, 'Yash', 'yash@gmail.com', '$2y$10$OezjBYgEigVKMaIwW1mPUegdl0GnNeJ.jPOpGFwrlBMt9V9MZhnh.', NULL, NULL, 0),
(18, 'Ankit Pandey', 'ankit@gmail.com', '$2y$10$1cJJ7HhxIRpKaMVVQ4Co/u3IuwwOe1UHFESxKHmWqEBwTmJS9bekO', NULL, NULL, 0),
(19, 'Isha', 'isha@gmail.com', '$2y$10$1zwcfYbh0MlHL8kePnADieG/tRoUHs.npWyQHKK0Cf1WaFFLfe4JG', NULL, NULL, 1),
(20, 'Ankit Pandey', 'ankitpandey@gmail.com', '$2y$10$2xwqOxdYWCqRgOTXOWKF6uoIHwZB8Wkp2.5Q0GF4CWEURgtjaWMnK', NULL, NULL, 1),
(21, 'Harsh', 'harsh@gmail.com', '$2y$10$llQnL2I1UV.i6wTewBzPKO7Ujx.PL9bMFzewGbRWcfapS9Xjwgdp2', NULL, NULL, 1),
(22, 'cc', 'cc@gmail.com', '$2y$10$U2qbt/qzkaYLYv2po9Uws.GkjHlNNVpbBhTfJLHZwhzheLlM3iJS.', NULL, NULL, 1),
(23, 'kisan', 'kisan@gmail.com', '$2y$10$rYt4TgjppD4NNe5tDdcua.n07I9Ew7Iq4tsQihVJFQTILBrHZcMf6', NULL, NULL, 1),
(24, 'priya', 'priya@gmail.com', '$2y$10$WCDkhMTd5.MbqhfGlWFwUedZIqBes4wO2I4JaitqxU38d.ijHkhe.', NULL, NULL, 1),
(25, 'Ankit Pandey', 'dgffgd@gmail.com', '$2y$10$ORfufXeTuVKpN.BVVsXQT.U4Zfu2zz5nSU.6lw8GbxDHD.z7BP6dS', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdress`
--
ALTER TABLE `tbladdress`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMER_ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD PRIMARY KEY (`ITEM_ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`PAYMENT_ID`);

--
-- Indexes for table `tblproforma`
--
ALTER TABLE `tblproforma`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `tblquote`
--
ALTER TABLE `tblquote`
  ADD PRIMARY KEY (`QUOTE_ID`);

--
-- Indexes for table `tblsalesperson`
--
ALTER TABLE `tblsalesperson`
  ADD PRIMARY KEY (`SALESPERSON_ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `tbluserdata`
--
ALTER TABLE `tbluserdata`
  ADD PRIMARY KEY (`SR_ID`);

--
-- Indexes for table `tbluserlogin`
--
ALTER TABLE `tbluserlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reset_token_hash` (`reset_token_hash`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladdress`
--
ALTER TABLE `tbladdress`
  MODIFY `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblitem`
--
ALTER TABLE `tblitem`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproforma`
--
ALTER TABLE `tblproforma`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblquote`
--
ALTER TABLE `tblquote`
  MODIFY `QUOTE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsalesperson`
--
ALTER TABLE `tblsalesperson`
  MODIFY `SALESPERSON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluserdata`
--
ALTER TABLE `tbluserdata`
  MODIFY `SR_ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbluserlogin`
--
ALTER TABLE `tbluserlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
