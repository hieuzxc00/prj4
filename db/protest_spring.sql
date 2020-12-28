-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 04:11 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protest_spring`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `full_name`, `address`, `email`, `phone`, `status`, `role_id`) VALUES
(1, 'admin', 'hieuzxc123', 'Le Minh Hieu', '590 CMT8 p6 Q3', 'hieuzxc00@gmail.com', '0359313750', 1, 1),
(5, 'Phu', 'phu123', 'Phu Tran Duy', 'TB District ', 'petran@gmail.com', '1900 3248', 1, 2),
(6, 'customer_test', '123456', 'Customer Test', 'district 3', 'customer@gmail.com', '1900 2880', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `parent_id`) VALUES
(1, 'Dog', 1, NULL),
(2, 'Dog\'s food', 1, 1),
(5, 'Category 2.1', 1, 2),
(6, 'Category 2.2', 1, 2),
(7, 'Category 2.3', 1, 2),
(14, 'Cat', 1, NULL),
(20, 'Cat\'s food', 1, 14),
(21, 'Cat\'s toy', 1, 14),
(23, 'Dog\'s toy', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `status` varchar(250) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `name`, `created`, `status`, `account_id`) VALUES
(2, 'New Invoice', '2020-09-29', 'done', 5),
(3, 'New Invoice', '2020-09-29', 'pending', 5),
(4, 'New Invoice', '2020-09-30', 'pending', 1),
(5, 'New Invoice', '2020-09-30', 'done', 1),
(6, 'New Invoice', '2020-09-30', 'pending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`invoice_id`, `product_id`, `price`, `quantity`) VALUES
(2, 1, 12, 500),
(2, 4, 100, 1),
(2, 6, 100, 9),
(3, 3, 12, 5),
(3, 7, 18, 1),
(4, 7, 18, 1),
(5, 7, 18, 1),
(6, 1, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `name`, `status`, `main`, `product_id`) VALUES
(1, 'thuc-an-cho-cho-con-co-lon-nutri-source-ga-va-gao-luc-13-6kg-300x300.jpg', 1, 1, 3),
(3, 'thuc-an-cho-cho-con-co-lon-nutri-source-ga-va-gao-luc-13-6kg-1.jpg', 1, 0, 3),
(6, 'Corgi-2-1.jpg', 1, 1, 1),
(7, 'thuc-an-cho-cho-con-gia-re-nutri-source-ga-va-gao-luc-13-6kg-300x300.jpg', 1, 1, 2),
(8, 'Corgi-2-1.jpg', 1, 0, 1),
(9, 'thuc-an-cho-cho-con-gia-re-nutri-source-ga-va-gao-luc-13-6kg-1.jpg', 1, 0, 2),
(10, 'thuc-an-cho-cho-truong-thanh-nutri-source-ga-va-gao-luc-13-6kg-300x300.jpg', 1, 1, 4),
(11, 'Corgi-2-1.jpg', 1, 0, 1),
(12, 'Corgi-2-1.jpg', 1, 0, 1),
(13, 'thuc-an-cho-cho-truong-thanh-nutri-source-ga-va-gao-luc-13-6kg-1.jpg', 1, 0, 4),
(14, 'thuc-an-cho-cho-mang-thai-gia-re-nutri-source-ga-va-gao-luc-18-2kg-1.jpg', 1, 0, 5),
(15, 'thuc-an-cho-cho-gia-re-dog-classic-5kg-1-300x300.jpg', 1, 1, 6),
(16, 'thuc-an-cho-cho-mang-thai-gia-re-nutri-source-ga-va-gao-luc-18-2kg-300x300.jpg', 1, 1, 5),
(17, 'thuc-an-cho-cho-gia-re-dog-classic-5kg-2.jpg', 1, 0, 6),
(18, 'royal-canin-baby-dog-milk-3.jpg', 1, 0, 7),
(19, 'royal-canin-baby-dog-milk-1-300x300.jpg', 1, 1, 7),
(20, 'royal-canin-baby-dog-milk-2.jpg', 1, 0, 7),
(21, 'thuc-an-cho-cho-truong-thanh-nutri-source-ga-va-gao-luc-13-6kg-2.jpg', 1, 0, 4),
(22, 'thuc-an-cho-cho-con-gia-re-nutri-source-ga-va-gao-luc-13-6kg-2.jpg', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`, `details`, `status`, `featured`, `category_id`) VALUES
(1, 'abc', 12, 3, 'ok', 'zzzzz', 1, 1, 21),
(2, 'Puppy Food (13.6kg)', 10, 5, 'none', '- Origin: American brand is famous all over the world with exclusive closed formula \"Good 4 Life\", ensuring safety and quality for pet\'s health.\r\n\r\n- Uses:\r\n\r\n+ Supporting digestive system with ingredients containing probiotics, prebiotics and probiotics.\r\n\r\n+ Fully supplemented with minerals, vitamins, fatty acids (Omega 3 and 6), supporting smooth skin and fur.\r\n\r\n+ Provide essential protein source for daily activities of babies.', 1, 1, 2),
(3, 'Large Puppy Food (13.6kg)', 12, 5, 'none', ' \r\n\r\n- Origin: The brand from the US is trusted by consumers around the world with the exclusive and self-contained formula \"Good 4 Life\", ensuring safety and supporting the health of the pet.\r\n\r\n- Uses:\r\n\r\n+ The product contains calcium and phosphorus content specially tailored to Protein, providing adequate nutrition for the balanced development of muscles and bones in older babies, avoiding the following joint diseases. this.\r\n\r\n+ Supplement minerals and vitamins to improve resistance and immune system for pets from a young age.\r\n\r\n+ Balancing Omega 3 and 6 content with DHA helps promote skin and hair to become shiny.\r\n\r\n+ Improve digestive system with formula containing probiotics, prebiotics and probiotics.', 1, 1, 2),
(4, 'Nutri Adult Dog Food ', 13, 4, 'none', '- Origin: A well-known global brand from America with exclusive closed formula \"Good 4 Life\" to ensure safety and improve the health of pets.\r\n\r\n- Uses:\r\n\r\nRice and oatmeal fortify with fiber for healthy digestion and elimination.\r\n\r\n+ High quality protein balanced with other vegetables, nutritional ingredients to help your dog maintain weight and have more energy.\r\n\r\n+ Full supplement of minerals and vitamins to enhance the resistance and immune system to prevent common diseases in pets.\r\n\r\n+ Provides levels of Omega 3 and 6 with DHA to support the skin and feathers to become shiny.', 1, 0, 2),
(5, 'Pregnant Dog Food Nutri Source (18.2kg)', 25, 10, 'none', '- Origin: American products are well-known in the world with the formula \"Good 4 Life\" to ensure safety and improve the health of pets.\r\n\r\n- Uses:\r\n\r\n+ Balancing the amount of Protein with other vegetables provides adequate nutrition and energy for the mother dog as well as the dog during training.\r\n\r\n+ Supplement vitamins and minerals to help promote the development of resistance and immune system for pets\r\n\r\n+ Raising the content of Omega 3 and 6 with DHA to help skin and fur become smoother.\r\n\r\n+ The formula enhances the health of the digestive system with ingredients containing probiotics, prebiotics and probiotics.', 1, 1, 2),
(6, 'Dog Classic Dog Food 5kg', 23, 10, 'none', 'Formula to help support healthy dog &#8203;&#8203;bones to help dogs be more active and physically active.\r\n- Safe for the dog\'s digestive system, not only that, the nutrients in the seeds are improved to make the dog easier to digest, helping to recharge and more efficiently.\r\nThe nutrients in the seeds also enhance the immunity, allowing you to confidently let your dog walk outside.\r\n- Seeds are 100% produced in Korea, one of the most developed countries in Asia.\r\n- The far date will help you feel secure to store seeds for longer, as well as help you to feed your dog with rice or other products without worrying about expiration.', 1, 0, 2),
(7, 'Royal Canin Baby Dog Milk (400g)', 18, 6, 'none', '- Suitable for puppies and adult dogs.\r\n\r\nMade with 100% natural ingredients to help protect the dog\'s health\r\n\r\nThe special formula contains nutrients such as the mother\'s colostrum, helping to improve the puppy\'s resistance.\r\n\r\n- The main ingredient is minced and ground duck meat, helping to increase nutrition but can still be fed regularly.\r\n\r\n- Does not contain genetically modified products, or growth substances harmful to dogs\r\n\r\nMade in Korea, where Asia\'s leading pet food production technology is located.', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `status`, `description`) VALUES
(3, 'pet-shop-sai-gon-2.jpg', 1, 'slide 1'),
(4, 'pet-shop-sai-gon-1.jpg', 1, 'slider2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`invoice_id`,`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `invoice_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
