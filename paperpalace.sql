-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 05:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paperpalace`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brands_id` int(11) NOT NULL,
  `brands_name` varchar(20) NOT NULL,
  `brands_des` varchar(63) NOT NULL,
  `brands_logo` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brands_id`, `brands_name`, `brands_des`, `brands_logo`) VALUES
(1, 'Mead', 'Mead offers a diverse selection of notebooks, paper products, o', 'Mead.png'),
(2, 'Staedtler', 'Staedtler produces writing instruments, correction tools, art s', 'Staedtler.png'),
(3, '3M', '3M manufactures office supplies like sticky notes, tape dispens', '3M.png'),
(4, 'Faber-Castell', 'Faber-Castell is renowned for its writing instruments, art supp', 'Faber-Castell.png'),
(5, 'Sharpie', 'Sharpie specializes in markers, pens, and other writing instrum', 'Sharpie.png'),
(6, 'Crayola', 'Crayola is famous for its art supplies, including paints, color', 'Crayola.jpeg'),
(7, 'Avery', 'Avery offers a variety of office supplies such as folders, labe', 'Avery.png'),
(8, 'Pilot ', 'Pilot is known for its extensive range of pens, including ballp', 'Pilot.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(15) NOT NULL,
  `category_des` varchar(63) NOT NULL,
  `category_image` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_des`, `category_image`) VALUES
(1, 'Writing Instrum', 'Writing Instruments: Tools like pens, pencils, and markers enab', 'writting instruments.png'),
(2, 'Paper Products', 'Paper products are tools for writing, drawing, and organizing, ', 'paper products.png'),
(3, 'Desk Accessorie', 'Desk Accessories are items like staplers, paper clips, and tape', 'Desk Accessories.jpeg'),
(4, 'Filing and Orga', 'Filing and Organization: Products like folders, file organizers', 'Filing and Organization.jpeg'),
(5, 'Correction Tool', 'Correction Tools: Erasers, correction tape, and fluid aid in fi', 'Correction Tools.jpeg'),
(6, 'Art Supplies', 'Art Supplies: Paints, brushes, pencils, and canvases fuel creat', 'Art Supplies.jpeg'),
(7, 'Craft Supplies', 'Craft Supplies: Glue sticks, scissors, construction paper, and ', 'Craft Supplies.jpeg'),
(8, 'Office Supplies', 'Office Supplies: Envelopes, rubber bands, business cards, and c', 'Office Supplies.jpeg'),
(9, 'Stationery Sets', 'Stationery Sets: Correspondence cards, writing paper, and envel', 'Stationery Sets.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `employees_information`
--

CREATE TABLE `employees_information` (
  `eid` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `city` varchar(15) NOT NULL,
  `image` varchar(63) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees_information`
--

INSERT INTO `employees_information` (`eid`, `fullname`, `address`, `phoneno`, `city`, `image`, `users_id`) VALUES
(4, 'Muhammad Ibtesam Arif', 'D6/203 Steel Town Bin Qasim Karachi', 2147483647, 'Karachi', 'images.jpeg', 13),
(5, 'haseeb sardar', 'D6/203 Steel Town Bin Qasim Karachi', 2147483647, 'Karachi', 'images.jpeg', 14),
(6, 'hamzarao', 'D6/203 Steel Town Bin Qasim Karachi', 2147483647, 'Karachi', 'images.jpeg', 15),
(9, 'ahmed Jabar', 'D6/203 Steel Town Bin Qasim Karachi', 2147483647, 'Karachi', 'images.jpeg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `jonior_category`
--

CREATE TABLE `jonior_category` (
  `jonior_category_id` int(11) NOT NULL,
  `jonior_category_name` varchar(20) NOT NULL,
  `jonior_category_image` varchar(63) NOT NULL,
  `jonior_category_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jonior_category`
--

INSERT INTO `jonior_category` (`jonior_category_id`, `jonior_category_name`, `jonior_category_image`, `jonior_category_category_id`) VALUES
(1, 'Pens', 'Pens.png', 1),
(2, 'Pencils', 'Pencils.png', 1),
(3, 'Markers', 'Markers.jpg', 1),
(4, 'Calligraphy pens', 'Calligraphy pens.jpg', 1),
(5, 'Brush pens', 'Brush pens.png', 1),
(6, 'Notebooks', 'Notebooks.jpeg', 2),
(7, 'Loose-leaf paper', 'Loose-leaf paper.png', 2),
(8, 'Notepads', 'Notepads.jpeg', 2),
(9, 'Sticky notes', 'Sticky notes.jpeg', 2),
(10, 'Sketchbooks', 'Sketchbooks.jpeg', 2),
(11, 'Journals', 'Journals.jpeg', 2),
(12, 'Diaries', 'Diaries.jpeg', 2),
(13, 'Legal pads', 'Legal pads.jpeg', 2),
(14, 'Staplers', 'Staplers.jpeg', 3),
(15, 'Staple removers', 'Staple removers.jpeg', 3),
(16, 'Paper clips', 'Paper clips.png', 3),
(17, 'Binder clips', 'Binder clips.jpeg', 3),
(18, 'Push pins', 'Push pins.jpeg', 3),
(19, 'Tape dispensers', 'Tape dispensers.jpeg', 3),
(20, 'Desk organizers', 'Desk organizers.jpeg', 3),
(21, 'Pen holders', 'Pen holders.jpeg', 3),
(22, 'Folders', 'Folders.jpeg', 4),
(23, 'File organizers', 'File organizers.jpg', 4),
(24, 'File boxes', 'File boxes.jpeg', 4),
(25, 'Document wallets', 'Document wallets.jpeg', 4),
(26, 'Binders', 'Binders.jpeg', 4),
(27, 'Erasers', 'Erasers.jpeg', 5),
(28, 'Correction tape', 'Correction tape.png', 5),
(29, 'Correction fluid', 'Correction fluid.png', 5),
(30, 'Erasable pens', 'Erasable pens.jpeg', 5),
(31, 'Paints', 'Paints.jpeg', 6),
(32, 'Brushes', 'Brushes.jpeg', 6),
(33, 'Canvases', 'Canvases.png', 6),
(34, 'Drawing pencils', 'Drawing pencils.jpeg', 6),
(35, 'Sketching charcoal', 'Sketching charcoal.png', 6),
(36, 'Pastels', 'Pastels.jpeg', 6),
(37, 'Colored pencils', 'Colored pencils.jpeg', 6),
(38, 'Sketching pens', 'Sketching pens.png', 6),
(39, 'Glue sticks', 'Glue sticks.jpeg', 7),
(40, 'Craft scissors', 'Craft scissors.jpeg', 7),
(41, 'Construction paper', 'Construction paper.jpeg', 7),
(42, 'Glitter', 'Glitter.jpeg', 7),
(43, 'Pipe cleaners', 'Pipe cleaners.jpeg', 7),
(44, 'Beads', 'Beads.jpeg', 7),
(45, 'Ribbons', 'Ribbons.jpeg', 7),
(46, 'Envelopes', 'Envelopes.jpeg', 8),
(47, 'Mailing labels', 'Mailing labels.jpeg', 8),
(48, 'Rubber bands', 'Rubber bands.jpeg', 8),
(49, 'Postage stamps', 'Postage stamps.jpeg', 8),
(50, 'Calculators', 'Calculators.jpeg', 8),
(51, 'Correspondence cards', 'Correspondence cards.jpg', 9),
(52, 'Writing paper', 'Writing paper.jpeg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(7) NOT NULL,
  `product_code` varchar(2) NOT NULL,
  `product_number` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `description` varchar(63) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `product_jonior_category_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_image` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'employee'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` int(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(1, 'admin', 'admin@gmail.com', 123456789, 1),
(3, 'adil', 'adil@gmail.com', 1122, 3),
(9, 'haris', 'harismajid@gmail.com', 12345678, 3),
(13, 'mibtesamarif', 'm.ibtesam.arif17@gmail.com', 123456789, 2),
(14, 'haseebsardar', 'haseebsardar@gmail.com', 135789632, 2),
(15, 'hamzarao', 'hamzarao@gmail.com', 12345679, 2),
(18, 'ahmedjabar', 'ahmedjabar@gmail.com', 123456789, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_information`
--

CREATE TABLE `users_information` (
  `id` int(11) NOT NULL,
  `fullName` varchar(30) NOT NULL,
  `homeAddress` varchar(40) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `city` varchar(15) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_information`
--

INSERT INTO `users_information` (`id`, `fullName`, `homeAddress`, `phoneNumber`, `city`, `users_id`) VALUES
(4, 'haris majid', 'green city', '03072858105', 'Karachi', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brands_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `employees_information`
--
ALTER TABLE `employees_information`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `jonior_category`
--
ALTER TABLE `jonior_category`
  ADD PRIMARY KEY (`jonior_category_id`),
  ADD KEY `jonior_category_category_id` (`jonior_category_category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_jonior_category_id` (`product_jonior_category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users_information`
--
ALTER TABLE `users_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brands_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees_information`
--
ALTER TABLE `employees_information`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jonior_category`
--
ALTER TABLE `jonior_category`
  MODIFY `jonior_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users_information`
--
ALTER TABLE `users_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees_information`
--
ALTER TABLE `employees_information`
  ADD CONSTRAINT `employees_information_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jonior_category`
--
ALTER TABLE `jonior_category`
  ADD CONSTRAINT `jonior_category_ibfk_1` FOREIGN KEY (`jonior_category_category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_jonior_category_id`) REFERENCES `jonior_category` (`jonior_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_information`
--
ALTER TABLE `users_information`
  ADD CONSTRAINT `users_information_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
