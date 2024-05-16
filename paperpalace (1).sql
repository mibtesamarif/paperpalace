-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 12:32 PM
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
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `Carousel_id` int(11) NOT NULL,
  `Carousel_heading` varchar(63) NOT NULL,
  `Carousel_paragraph` varchar(63) NOT NULL,
  `Carousel_image` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`Carousel_id`, `Carousel_heading`, `Carousel_paragraph`, `Carousel_image`) VALUES
(1, 'Notebooks', 'Explore our collection of premium-quality notebooks.', 'notebook section.avif'),
(2, 'Pens', 'Discover our range of stylish and reliable pens.', 'pen1.avif'),
(3, 'Calligraphy Pens', 'Create beautiful lettering with our premium calligraphy pens.', 'Calligraphy Pen.jpg');

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
(52, 'Writing paper', 'Writing paper.jpeg', 9),
(53, 'Pens', 'Pens.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(7) NOT NULL,
  `product_code` varchar(2) NOT NULL,
  `product_number` int(11) NOT NULL,
  `product_name` varchar(63) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `product_jonior_category_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_image` varchar(63) NOT NULL,
  `product_brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_code`, `product_number`, `product_name`, `description`, `price`, `product_jonior_category_id`, `product_qty`, `product_image`, `product_brand_id`) VALUES
('Ab70715', 'Ab', 70715, 'Avery Durable View Binders', 'Introducing the Avery Durable View Binders, the ultimate solution for organizing and protecting your important documents. Designed with durability in mind, these binders offer superior protection compared to standard options, thanks to their tear-resistant DuraHinge spine and split-resistant DuraEdge edges.  Each binder can hold up to 375 sheets with its 1-1/2 inch slant rings, providing ample storage for your documents. The binder cover features a wide 2.1-inch spine, offering a clear view of your customized spine, front, and back covers, allowing you to personalize your binder effortlessly.  With slant rings mounted on the rear binder panel, your documents stay flat and organized, ensuring easy access whenever you need them. Plus, with two interior clear pockets made with nonstick PVC-free material, you have additional storage without worrying about ink transfer.  Ideal for schoolwork, projects, presentations, and more, the Avery Durable View Binders are your go-to choice for reliabl', 22.99, 26, 2142, 'Avery Durable View Binders.jpg', 7),
('An70706', 'An', 70706, 'Avery Mini Binder Notebooks', 'Keep your important documents organized and secure with the Avery Mini Binder. Designed for 5-1/2\" x 8-1/2\" sheets, this compact binder is perfect for smaller-sized pages. The innovative Gap Free round 2-inch ring mechanism ensures smooth operation and prevents gapping and misalignment of rings, holding up to 375 sheets of paper securely.  Crafted with durable vinyl material, this mini binder features two interior pockets for storing loose papers and unpunched pages. Additionally, a convenient business card holder on the spine allows for easy access to contact information whenever you need it.  Ideal for storing punched address book inserts or other small documents, this Mini Durable Binder is a versatile and reliable solution for keeping your essential papers organized. With its compact size and efficient design, it\'s the perfect choice for staying organized on the go or in the office.', 22.99, 6, 8575, 'Avery Mini Binder Notebooks.jpg', 7),
('Cb60605', 'Cb', 60605, 'Crayola Signature Brush & Detail Dual-Tip Markers', 'Elevate your artistic endeavors with the Crayola Signature Brush & Detail Dual-Tip Markers, a versatile tool designed for artists, hobbyists, and enthusiasts alike. Featuring both fine and graphic tips, these markers offer exceptional versatility for adult coloring, calligraphy, sketching, and drawing projects.  The fine tip is perfect for precise calligraphy and lettering, while the brush tip enables beautiful, sweeping strokes and shading in your artwork. With a stunning array of 16 vibrant and rich colors, you can create intricate details and bold strokes with ease.  Crafted with high-quality ink, these markers provide smooth application and consistent color payoff for professional results. Long-lasting and durable, they ensure your art projects maintain their vibrancy over time.  An excellent gift for artists of all ages, Crayola Signature Brush & Detail Dual-Tip Markers inspire creativity and allow your artistic vision to shine. Let your imagination run wild and create masterpiece', 24.99, 5, 1212, 'Crayola Signature Brush & Detail Dual-Tip Markers.jpg', 6),
('Cm70703', 'Cm', 70703, 'Crayola Washable Super Tips Markers', 'Unleash your creativity with the Crayola Washable Super Tips Markers, a vibrant and versatile addition to any artist\'s arsenal. This pack contains 100 markers in assorted colors, ensuring you always have the perfect shade at your fingertips. Whether you\'re writing, drawing, or coloring in large areas, these markers offer thick or thin lines for a variety of coloring techniques.  The washable formula allows easy cleanup from skin and most fabrics, making them ideal for young artists to explore without worry. From coloring books to original artworks and hand lettering, these markers provide endless possibilities for creative expression.  Designed for artists of all ages, Crayola Washable Super Tips Markers feature unique conical tips that allow for precise control and blending. Safe and non-toxic, they make an excellent gift set for children aged 3 and up. Elevate your artistic endeavors with Crayola Washable Super Tips Markers and bring your imagination to life.', 24.99, 3, 855, 'Crayola Washable Super Tips Markers.jpg', 6),
('Cp60602', 'Cp', 60602, 'Crayola Colored Pencils', 'Discover endless creative possibilities with Crayola Colored Pencils, a must-have addition to any artist\'s toolkit. This set includes 50 vibrant pencils, each with a pre-sharpened tip, ready to bring your projects and assignments to life with bold and vivid colors.  Whether you\'re a budding artist or a seasoned crafter, these pencils are perfect for unleashing your imagination and adding intricate details to your artwork. Made with non-toxic materials, they are safe for artists of all ages to use.  The compact and portable packaging makes it easy to take your creativity on the go, whether you\'re sketching in the park or coloring at home. With Crayola Colored Pencils, the only limit is your imagination.  Perfect for children aged 5 to 10 years, these pencils are a fantastic way to introduce young artists to the world of drawing and coloring. Let their creativity soar as they explore the joy of creating with colors.', 9.98, 2, 159, 'Crayola Colored Pencils.jpg', 6),
('Cs60606', 'Cs', 60606, 'Crayola Sketchbooks', 'Unleash your creativity with Crayola Sketchbooks! Designed for young artists, these sketchbooks are perfect for crayons, colored pencils, markers, paints, and more. Each package contains one spiral-bound sketchbook measuring 9x9 inches, providing ample space for imaginative artwork.  Crafted with forty heavy bright white papers, these sketchbooks offer a sturdy surface for all your drawing and coloring adventures. Whether you\'re sketching your favorite characters, experimenting with different mediums, or creating vibrant masterpieces, Crayola Sketchbooks provide the perfect canvas for your artistic expression.  Sold as a convenient 6-pack, these sketchbooks are ideal for classrooms, art clubs, or families with multiple budding artists. Let your imagination run wild and bring your ideas to life on the pages of Crayola Sketchbooks. With their quality construction and versatile design, they\'re sure to inspire hours of creative fun for kids of all ages!', 28.94, 10, 2542, 'Crayola Sketchbooks.jpg', 6),
('Fb40405', 'Fb', 40405, 'Faber-Castell Pitt Artist Pen Brush', 'Unleash your artistic potential with the Faber-Castell Pitt Artist Pen Brush Studio Box of 24. This comprehensive set offers a versatile range of 24 ink brush pens, each equipped with a brush tip (Tip: B), ideal for expressing creativity in sketches, drawings, layouts, fashion design, and illustration.  Crafted with pigmented drawing ink, these pens boast high light resistance, water resistance, and permanence, ensuring your artwork stands the test of time. The odor-free, acid-free, and pH neutral ink provides durability and expressive depth to your creations.  Explore a spectrum of colors, including ivory, cadmium yellow, leaf green, magenta, and more, allowing you to bring your visions to life with vibrancy and precision. Packaged in a convenient studio box, this set is perfect for designing cards, envelopes, and various artistic projects.  Experience the tradition and innovation of Faber-Castell with the Pitt Artist Pen Brush Studio Box, an essential tool for artists and graphic des', 16.99, 5, 6985, 'Faber-Castell Pitt Artist Pen Brush.jpg', 4),
('Fc40404', 'Fc', 40404, 'Faber-Castell Pitt Artist Pen Calligraphy Set', 'Elevate your calligraphy game with the Faber-Castell Pitt Artist Pen Calligraphy Set, a versatile and premium-quality tool for artists of all levels. This set includes six Pitt Artist Pens featuring 2.5mm chisel-edge nibs in a range of vibrant colors: green gold, sanguine, pink carmine, indanthrene blue, chromium green, and classic black.  Crafted with high-quality India ink, these pens deliver smooth, highly pigmented lines that are resistant to fading, water, and smudging. They are also permanent, odor-free, acid-free, and pH neutral, ensuring lasting and vibrant results on various surfaces.  Ideal for calligraphy, lettering, mixed media, card making, and more, these pens offer versatility and precision for all your artistic endeavors. Beginners will appreciate the included instructional guide on proper angles, hand positioning, and calligraphy techniques.  Since 1761, Faber-Castell has been synonymous with premium art supplies, and this set is no exception. Elevate your art projects', 15.59, 4, 633, 'Faber-Castell Pitt Artist Pen Calligraphy Set.jpg', 4),
('Fe40415', 'Fe', 40415, 'Faber-Castell Dust-Free Erasers', 'Introducing the Faber-Castell Dust-Free Erasers, your ultimate solution for clean and precise erasing. Crafted with quality in mind, these plastic erasers ensure a smooth and soft erasing experience without leaving behind any residue or smudges.  With their innovative design, these erasers produce less waste by remaining rolled up as you use them, guaranteeing optimal efficiency and longevity. Plus, the dust-free composition ensures a clean erasing process without any messy debris.  Free from hazardous substances and dyes, these erasers are safe to use and provide peace of mind for users of all ages. The classic white color adds a touch of elegance to your stationery collection.  Ideal for students, artists, professionals, and hobbyists alike, the Faber-Castell Dust-Free Erasers are a must-have addition to your toolkit for flawless erasing every time.', 16.59, 27, 5454, 'Faber-Castell Dust-Free Erasers.jpg', 4),
('Fg40402', 'Fg', 40402, 'Faber-Castell Grip 2001', 'Introducing the Faber-Castell Grip 2001, a pinnacle of comfort and precision in pencil design. Featuring a patented Soft-Grip-Zone, this pencil ensures secure and tireless writing sessions, even during extended use. The ergonomic triangular shape provides added support and comfort, reducing hand fatigue and promoting a natural grip.  Crafted with top-quality graphite, these pencils deliver smooth and consistent lines with every stroke. Finished with environmentally friendly silver water-based paint, they boast both style and sustainability. The special bonding (SV) technology prevents breakage, guaranteeing easy sharpening and long-lasting performance.  The Grip Plus model enhances the experience with an ergonomic triangular rubber grip zone, easily retractable tip, and an extra-large twist eraser for convenient corrections on the go.  This set contains the Faber-Castell Grip 2001 graphite pencil in grade 2B, ensuring versatile use for various writing and drawing tasks. Elevate your wr', 16.59, 2, 255, 'Faber-Castell Grip 2001.jpg', 4),
('Mn10106', 'Mn', 10106, 'Mead Spiral Notebooks', 'Stay organized and prepared for every class with the Mead Spiral 1 Subject Notebooks. Versatile and ideal for various uses including homework and in-class assignments, these notebooks are essential for any student. Each notebook features 70 college-ruled, double-sided sheets, providing ample space for detailed note-taking.  Crafted with durability in mind, the notebooks are constructed with covers coated for extra protection. The convenient perforation ensures clean and easy tear-out of sheets, while the 3-hole punch design allows for convenient storage in your favorite binder.  Color coding by subject is made easy with the assorted colors available in each pack, including Red, Blue, Green, Yellow, Purple, and Black. Please note that the color selection is random and may vary.  Proudly assembled in the U.S.A., these Mead Spiral Notebooks are designed to meet the needs of students, offering quality, functionality, and reliability for all your academic endeavors. Stay ahead of the curve ', 13.27, 6, 6414, 'Mead Spiral Notebooks.jpg', 1),
('Mp10107', 'Mp', 10107, 'Mead Loose Leaf Paper', 'Meet your notetaking needs with Mead Filler Paper, a practical choice for students and professionals alike. Perfect for in-class assignments, homework, and more, this high-quality paper ensures smooth and efficient notetaking sessions.  Each sheet measures 10 1/2\" x 8\" and features college ruling, providing ample space for your writing. With double-sided sheets, you get twice the notetaking capacity in one pack. College ruling is particularly suitable for older students who prefer more lines per page, facilitating organized and neat notes.  Crafted in the USA with pride, Mead Filler Paper is 3-hole punched, allowing for easy storage in your favorite binder. Each pack contains 200 sheets of white paper, ensuring you have an ample supply for your academic or professional endeavors. Choose Mead Filler Paper for its reliability, durability, and commitment to quality in every notetaking experience. ', 13.27, 7, 6354, 'Mead Loose Leaf Paper.jpg', 1),
('Mp10108', 'Mp', 10108, 'Mead Cambridge Premium Wirebound Legal Pad', 'Introducing the Mead Cambridge Premium Wirebound Legal Pad, your essential companion for organized note-taking and meticulous planning. Crafted with meticulous attention to detail by Mead, a trusted name in stationery, this legal pad offers unrivaled quality and functionality.  Each pad features durable wire binding, ensuring pages stay securely in place while allowing for effortless page-turning. The soft cover provides a comfortable writing surface, perfect for extended note-taking sessions. With its canary-colored sheets and squared ruling, this legal pad is ideal for a variety of uses, from drafting diagrams and sketches to jotting down meeting notes and project ideas.  Measuring 8.5 x 11 inches, this legal pad offers ample space for detailed notes and diagrams, making it indispensable for professionals, students, and creatives alike. Elevate your note-taking experience with the Mead Cambridge Premium Wirebound Legal Pad and enjoy the convenience and reliability it brings to your d', 13.27, 8, 5415, 'Mead Cambridge Premium Wirebound Legal Pad.jpg', 1),
('Pb80805', 'Pb', 80805, 'Pilot Futayaku Double-Sided Brush Pen', 'Experience the versatility of the Pilot Futayaku Double-Sided Brush Pen, the ultimate tool for artists, calligraphers, and creatives of all kinds. This innovative pen features a double-sided design, offering both fine and medium brush tips in one convenient tool.  Crafted by Pilot, a trusted name in writing instruments, the Futayaku Brush Pen delivers smooth and consistent lines with rich, black ink. Whether you\'re creating intricate details or bold strokes, this pen provides precise control and flexibility to bring your artistic vision to life.  Perfect for sketching, lettering, illustrating, and more, the Pilot Futayaku Brush Pen is a must-have addition to any creative toolkit. Its compact and lightweight design makes it ideal for on-the-go use, while its snap closure ensures ink freshness and longevity.  Discover the endless possibilities of expression with the Pilot Futayaku Double-Sided Brush Pen – unleash your creativity and make your mark with confidence.', 7.98, 5, 4545, 'Pilot Futayaku Double-Sided Brush Pen.jpg', 8),
('Pc80804', 'Pc', 80804, 'Pilot Parallel Calligraphy Pen Set', 'Unleash your creativity with the Pilot Parallel Calligraphy Pen Set, a revolutionary tool for calligraphy enthusiasts and artists alike. Featuring a unique parallel plate structure, these pens produce stunningly beautiful and sharper handwriting compared to traditional calligraphy pens.  With mixable colors, you can create beautifully gradated lettering by using two Pilot Parallel Pens with different color cartridges and touching the nibs together. Each set comes with four Parallel pens, offering a variety of nib sizes to suit your needs: 1.5mm (Red Cap), 2.4mm (Orange Cap), 3.8mm (Green Cap), and 6.0mm (Blue Cap).  Experience a major breakthrough in calligraphy pen design with Pilot Parallel Pens. Whether you\'re a beginner or an experienced calligrapher, these pens provide endless possibilities for creating stunning works of art. Elevate your calligraphy game and unlock new levels of creativity with the Pilot Parallel Calligraphy Pen Set.', 9.97, 4, 358, 'Pilot Parallel Calligraphy Pen Set.jpeg', 8),
('Pe80815', 'Pe', 80815, 'Pilot Foam Erasers', 'Experience smooth and effortless erasing with the Pilot Foam Erasers. Designed for precision and convenience, these lightweight rectangular erasers offer superior performance, making them ideal for students, artists, and professionals.  Crafted from high-quality foam material, these erasers ensure clean and thorough erasing without damaging your paper. Their rectangular shape provides easy handling and precise control, allowing you to erase with accuracy.  Each pack contains three Pilot Foam Erasers, making it a practical and economical choice for your erasing needs. Whether you\'re correcting mistakes in drawings, sketches, or written documents, these erasers deliver consistent results every time.  Imported from Japan, these erasers bear the hallmark of quality and reliability associated with Pilot products. Upgrade your erasing experience with the Pilot Foam Erasers and achieve pristine results with ease.', 32.99, 27, 3548, 'Pilot Foam Erasers.jpg', 8),
('Pg80801', 'Pg', 80801, 'G2 Premium Gel Roller Pens', 'Introducing the G2 Premium Gel Roller Pens by PILOT, the epitome of smooth and long-lasting writing tools. Glide effortlessly across paper with gel ink that\'s proven to be the longest-lasting in its class, allowing you to write more without interruption. The contoured rubber grip provides ergonomic support, ensuring comfort even during extended writing sessions.  Ideal for everyday tasks like note-taking and list-making, the G2\'s versatile tip delivers crisp, clean lines suitable for writing, drawing, sketching, and doodling. Refillable and quick-drying, these pens save both money and waste by allowing you to reuse them with Pilot G2 refills (sold separately).  Express yourself effortlessly with Pilot\'s innovative writing tools, including gel ink, erasable, rolling ball, ballpoint, and fountain pens, as well as dry erase markers. Choose from a range of color options and tip sizes to suit your personal style and writing needs. Elevate your writing experience with the G2 Gel Roller Pens,', 12.98, 53, 500, 'G2 Premium Gel Roller Pens.jpg', 8),
('Sc20204', 'Sc', 20204, 'Staedtler Calligraphy Pen Set', 'Unleash your creativity with the Staedtler Calligraphy Pen Set, a comprehensive kit designed to elevate your calligraphy skills to new heights. Housed in a convenient and travel-ready metal storage tin, this set includes everything you need to explore a wide range of lettering styles.  With interchangeable nibs in Extra Fine, Fine, Medium, Broad, and Extra Broad, along with four fountain pen bodies, you have the flexibility to create stunning calligraphic designs. Choose from 20 assorted cartridges in vibrant colors to add flair to your creations.  Perfect for beginners and seasoned calligraphers alike, the included instruction and exercise booklets offer step-by-step guidance and handy tips to help you develop your own unique style. Whether you\'re writing certificates, wedding cards, or simply expressing yourself artistically, this deluxe pen set provides the tools you need to free your mind and your hand.', 18.66, 4, 668, 'Staedtler Calligraphy Pen Set.jpg', 2),
('Se20215', 'Se', 20215, 'Staedtler Mars Plastic Erasers', 'Experience the premium erasing performance of Staedtler Mars Plastic Erasers, the gold standard in white vinyl erasers. Crafted with precision in Germany, these erasers are perfect for effortlessly removing graphite marks from various surfaces, including paper, vellum, and drafting film.  Each eraser is individually packaged in a protective cellophane wrapper, ensuring cleanliness and freshness until you\'re ready to use it. The convenient tear-and-open strip makes handling a breeze.  With sharp corners designed for precise erasing, these erasers deliver superior performance with minimal crumbling and no discoloration of the paper. Plus, they are phthalate and latex-free, aligning with Staedtler\'s commitment to environmental sustainability.  Ideal for students, artists, architects, and professionals alike, Staedtler Mars Plastic Erasers are a must-have addition to your stationery collection for clean, seamless erasing every time.', 16.59, 27, 6545, 'Staedtler Mars Plastic Erasers.jpg', 2),
('Sm20203', 'Sm', 20203, 'Staedtler Lumocolor Whiteboard Markers', 'Elevate your presentations and brainstorming sessions with Staedtler Lumocolor Whiteboard Markers. Designed for optimal performance, these markers feature Dry Safe ink technology, allowing them to be left uncapped for days without drying up, as tested per ISO 554 standards.  Effortlessly wipe away markings from whiteboards without leaving a trace, thanks to their fast-drying and low-odor formula. With improved color density, your notes and diagrams will stand out vividly, ensuring clear communication every time.  The locked tip design prevents the tip from being pushed into the barrel, ensuring consistent performance and longevity. This set includes six markers in assorted colors, including blue and black, each with a bullet tip for precise writing and drawing on glass surfaces.  Ideal for classrooms, boardrooms, and home offices, Staedtler Lumocolor Whiteboard Markers are a must-have tool for anyone who values clarity and professionalism in their presentations and brainstorming sessio', 8.99, 3, 545, 'Staedtler Lumocolor Whiteboard Markers.jpg', 2),
('Sm50503', 'Sm', 50503, 'Sharpie Fine Point Permanent Markers', 'Elevate your writing and marking experience with Sharpie Fine Point Permanent Markers. Proudly permanent, these markers leave bold and lasting impressions on paper, plastic, metal, and most other surfaces. The remarkably resilient ink dries quickly and resists fading and water, ensuring your creations endure.  With an endlessly versatile ultra-fine point, these markers offer extreme control and precision, making them perfect for detailed work and precise writing tasks. This set includes 12 black Sharpie markers, each designed to inspire creativity and make your ideas stand out.  Whether you\'re labeling, doodling, or creating works of art, Sharpie Ultra Fine Point Permanent Markers are up to the task. Made to write practically everywhere, these markers eliminate dull and boring, leaving behind vibrant and vivid marks that make a lasting impression. Choose Sharpie for bold, permanent, and precise writing experiences that endure.', 8.99, 3, 398, 'Sharpie Fine Point Permanent Markers.jpg', 5),
('St20201', 'St', 20201, 'STAEDTLER Triplus Fineliner Pens', 'Introducing the STAEDTLER Triplus Fineliner Pens, the ultimate companion for precise and effortless writing tasks. Crafted with a superfine, metal-clad tip, these pens ensure impeccable lines with every stroke. The ergonomic triangular shape provides optimal comfort, promoting relaxed and smooth writing experiences. Never worry about dried-up pens again, as these fineliners boast Dry Safe technology, allowing them to stay uncapped for days without losing their ink flow.  With water-based ink that effortlessly washes out of textiles, these pens offer both practicality and versatility. The set comes in a convenient stand-up STAEDTLER box, perfect for easy access in both school and office settings. Mix and match colors effortlessly as all shades of models 334, 323, and 338 seamlessly complement each other.  Ideal for artists, students, professionals, and enthusiasts alike, these pens offer consistent performance and vibrant results. Elevate your writing and drawing experiences with the ST', 8.99, 53, 300, 'STAEDTLER Triplus Fineliner Pens.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification`
--

CREATE TABLE `product_specification` (
  `product_specification_id` int(11) NOT NULL,
  `product_id` varchar(7) NOT NULL,
  `product_specification_heading` varchar(63) NOT NULL,
  `product_specification_data` varchar(63) NOT NULL
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
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`Carousel_id`);

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
  ADD KEY `product_jonior_category_id` (`product_jonior_category_id`),
  ADD KEY `product_brand_id` (`product_brand_id`);

--
-- Indexes for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`product_specification_id`),
  ADD KEY `product_id` (`product_id`);

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
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `Carousel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `jonior_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `product_specification_id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_jonior_category_id`) REFERENCES `jonior_category` (`jonior_category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`product_brand_id`) REFERENCES `brands` (`brands_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD CONSTRAINT `product_specification_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
