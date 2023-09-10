-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2023 at 01:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ylt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `admin_firstname` varchar(50) NOT NULL,
  `admin_lastname` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_contact` varchar(13) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `admin_firstname`, `admin_lastname`, `admin_email`, `admin_password`, `admin_contact`, `date`) VALUES
(2, 'admin', 'System', 'Admin', 'admin@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', '', '2020-10-25'),
(3, 'admin001', 'bah', 'bah', 'bah@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', '', '2020-10-25'),
(4, 'brad004', 'Brad', 'Coelho', 'brad@gmail.com', '$2y$12$OZyLotlfc7TLf6VHRxHKaepNIMlSP6xFC8rLkxJ1povxUgpSIoMo2', '', '2021-02-22'),
(5, 'pateh', 'Ibrahim Pateh', 'Bah', 'ibrahimpatehbah@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', '', '2023-08-09'),
(6, 'Ishmail', 'Ishmail', 'Bah', 'bahishmail93@gmail.com', '$2y$12$9SxsnhyJ9ZUHl1d7wN6HS.jiNy97JH7cpIC4nHyK9Y6XTj9S1TU3K', '', '2023-08-16'),
(7, 'Ada', 'Ada', 'Khalu', 'khalumasiray9@gmail.com', '$2y$12$jOtKnNtsYuJ/xKXX1DlUh.4VgVs1Ex/2yn/j3bEyyC/QowenGh1ri', '', '2023-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `agency_id` int(11) NOT NULL,
  `agency_name` varchar(50) NOT NULL,
  `owner_firstname` varchar(50) NOT NULL,
  `owner_lastname` varchar(50) NOT NULL,
  `agency_email` varchar(50) NOT NULL,
  `agency_password` varchar(100) NOT NULL,
  `logo_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `agency_contact` varchar(13) NOT NULL,
  `agency_address` varchar(50) NOT NULL,
  `agency_status` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `added_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`agency_id`, `agency_name`, `owner_firstname`, `owner_lastname`, `agency_email`, `agency_password`, `logo_image`, `cover_image`, `agency_contact`, `agency_address`, `agency_status`, `date`, `added_by`) VALUES
(2, 'Sierra Explore', 'George', 'Smith', 'sierraexplore@gmail.com', '$2y$12$h.kUhOeT0y7ZhLX5ZqcUsO3SyA5J8CB4u0g/T3gFHyz6czNaAXYi2', 'explore freetown.png', 'explore freetown.png', '0765893214', 'Western Area, Freetown', 'unapproved', '2020-10-27', NULL),
(3, 'Sabi Salone', 'Will', 'Martin', 'sabisalone@gmail.com', '$2y$12$tfx1loFzsOw0SdiE2lAdQO767UfeH02jb44kctYq2EOtQVKrOIT7u', 'sabi salone.png', 'sabi salone.png', '0789456123', 'Northern Province, Makeni', 'approved', '2020-10-27', NULL),
(5, 'K Joy Tours', 'Shekuba', 'Kamara', 'kjoytours@gmail.com', '$2y$12$Peo5XTMOGVA.ETxuKnCZu.TSypPmfo2R8709MtzQZZT/3eEh3E/.q', 'K-JOY-TOURS-Logo.png', 'K-JOY-TOURS-Logo.png', '0761218467', 'Eastern Province, Kenema', 'approved', '2020-12-31', NULL),
(6, 'Diamond Horizon', 'Megan', 'Taylor', 'megan@gmail.com', '$2y$12$YjdUxXNTomnH7r0mvT4feexkc9XPYSCqqhKXtI02RPNCzHjawJOpe', 'diamond horizon.png', 'diamond horizon.png', '0798765432', 'Southern Province, Bo', 'approved', '2021-01-12', NULL),
(7, 'Leone Nature', 'Tag', 'Jones', 'tag@gmail.com', '$2y$12$/7OQLcR1iGQKS5TQbNEIROORAZGCMN14UKvoJmL.j3G3JqyaclYoy', 'leone nature.png', 'leone nature.png', '0765432198', 'Northern Province, Makeni', 'approved', '2021-01-12', NULL),
(8, 'Tropical Tours', 'Michael', 'Willson', 'michael@gmail.com', '$2y$12$yUKy9xFOqqkIcC3sqRjHtOmu6wMvKYxF2JcE0Aau9/zDEIGsVHwu6', 'tropical.png', 'tropical.png', '0310155456', 'Northern Province, Port Loko', 'approved', '2021-01-12', NULL),
(12, 'Palm Oasis', 'Liam', 'Sesay', 'liam@gmail.com', '$2y$12$5JPCc24h2asXlWgDBJWfzuWHj2ojFpyxYikNvkACoqA9QVzfl8/fu', 'palm oasis.png', 'palm oasis.png', '0772345678', 'Western Area, Waterloo', 'approved', '2021-01-12', NULL),
(13, 'ExploreMore', 'sss', 'kkk', 'some@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', '', '', '0307890123', 'Southern Province, Pujehun', 'unapproved', '2021-02-22', NULL),
(14, 'Yeama Leone Tours', 'Yeama Leone', 'Yeama', 'yeama@gmail.com', '$2y$12$OVL4Gu/pM2tqYkFvi4dOCeeWAWa/7MafVU0/ZEVsu6uFo9HzzxcW.', 'ylt.png', 'ylt.png', '+232 33 333 3', '123', 'approved', '2023-08-09', NULL),
(16, 'Sierra Tour', 'Mohamed Lahai', 'Sesay', 'sierratour@gmail.com', '$2y$12$..eisGizh8aKfk.lRmxcm.uHbTt24JjdYNt33//0B3fMWvvTXVwaC', 'sierratour.png', 'sierratour.png', '+23230123456', '8 Hill Cot Road', 'approved', '2023-08-10', 2),
(17, 'Salone', 'Lahai', 'Sesay', 'lahai@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', '', '', '+232 99 298 1', '23 Kissy Road', 'approved', '2023-08-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agency_employees`
--

CREATE TABLE `agency_employees` (
  `employee_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `employee_firstname` varchar(50) NOT NULL,
  `employee_lastname` varchar(50) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `employee_password` varchar(100) NOT NULL,
  `employee_contact` varchar(13) NOT NULL,
  `employee_address` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agency_employees`
--

INSERT INTO `agency_employees` (`employee_id`, `agency_id`, `employee_firstname`, `employee_lastname`, `employee_email`, `employee_password`, `employee_contact`, `employee_address`, `role`, `date`) VALUES
(2, 3, 'Nicholas', 'Martin', 'nicholas@gmail.com', '$2y$12$E6vy6NcMbgrb6KBVxk881Oovt/TpEwKLuNa6ZvM9QIHjjF3P3k3ma', '+232 78 62 48', '22, ak street, ohio', 'Senior Staff', '2020-11-01'),
(3, 3, 'Alice', 'Sesay', 'alice@gmail.com', '$2y$12$Qe7wIzhdH0YsAgDAzC85/O85FKW/uA3TZdGFl9DSqqpqfVuF/G1H.', '+232 77 623 1', '22, no street, ohio', 'Junior Staff', '2020-11-07'),
(4, 2, 'Christina', 'Jones', 'christina@gmail.com', '$2y$12$2NfFKVii4OzBaE8MGuz5qOhpEDu90L0Kgeh7mxfvfaz.6iF6d8IKe', '+232 78 990 3', '21, ak street, sylhet', 'Senior Staff', '2020-11-02'),
(5, 3, 'Kathleen', 'Bangura', 'kathy@gmail.com', '$2y$12$ztOf8xukuxJhCo1hpxIBfOKv6AMKhmqBUVdpOtETzw8dgWrpioqO2', '+232 78 123 5', '21, pk street, sylhet', 'Junior Staff', '2020-11-07'),
(8, 5, 'Alice', 'Shorna', 'alice@gmail.com', '$2y$12$fpI4Qz5SW1Bqa9pACSCOa.x7lxaldfDLVTNPBFDSdc6OnGsiOQX9S', '01879359632', '21, pk street, sylhet', 'manager', '2020-12-27'),
(9, 5, 'jui', 'ayasha', 'jui@gmail.com', '$2y$12$fZ5dkQsOhvm4ACUOOup/lOkA8L5dWuD1VWeJuivGHeezztNPESt/e', '01879359632', '22, no street, ohio', 'staff', '2020-12-27'),
(10, 12, 'Jacob', 'Evans', 'jacob@gmail.com', '$2y$12$YNMtoi5/b9SDrBpJyY8eXeX/PM35/j6qM18TmAu25VomciqLnzMM2', '01358974630', '22,bk road, khulna', 'manager', '2020-12-27'),
(11, 12, 'Tessa', 'May', 'tes@gmail.com', '$2y$12$3lnwMfi9rLOsxYHgWwD7veuOM1nWtDcm0UgNQW4mKg2rjD7RiF9WG', '01358974630', '21, ak street, sylhet', 'staff', '2021-02-01'),
(12, 14, 'Emam', 'Willson', 'emam@gmail.com', '$2y$12$lmvXcLdqtwzGO2oSReIkZex0srJC1SdOxo94Zwi.fw2A/l9CCR8zO', '099123456', '3 Van Street Waterloo', 'Senior Staff', '2023-08-10'),
(13, 14, 'bran', 'band', 'moham@gmail.com', '$2y$12$k8Q.j.UrITN64EMmMguJhu31tnklCAxjT/R5f7yIeg/PTOssp/X9q', '+232 78 12568', '4 Benjamin Lane', 'Junior Staff', '2023-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `tourist_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `persons` int(11) NOT NULL,
  `travel_style` varchar(50) NOT NULL,
  `enquiry_msg` text NOT NULL,
  `booking_status` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `package_id`, `tourist_id`, `agency_id`, `persons`, `travel_style`, `enquiry_msg`, `booking_status`, `date`) VALUES
(3, 10, 3, 3, 8, 'comfortable', '', 'confirm', '2020-12-30'),
(4, 3, 4, 3, 5, 'luxury', '', 'confirm', '2020-12-30'),
(5, 5, 3, 3, 5, 'budget', '', 'confirm', '2020-12-31'),
(6, 6, 4, 3, 4, 'budget', '', 'confirm', '2021-01-03'),
(7, 12, 4, 2, 30, 'comfortable', '', 'confirm', '2021-01-12'),
(8, 15, 3, 6, 30, 'budget', '', 'confirm', '2021-01-12'),
(9, 2, 5, 2, 20, 'comfortable', '', 'confirm', '2021-01-12'),
(10, 15, 5, 6, 10, 'luxury', '', 'confirm', '2021-01-12'),
(13, 16, 10, 7, 15, 'budget', '', 'confirm', '2021-01-12'),
(14, 14, 10, 5, 15, 'budget', '', 'confirm', '2021-01-12'),
(15, 17, 9, 8, 10, 'luxury', '', 'confirm', '2021-01-12'),
(16, 2, 9, 2, 12, 'comfortable', '', 'confirm', '2021-01-12'),
(17, 17, 11, 8, 20, 'comfortable', '', 'confirm', '2021-01-12'),
(18, 16, 11, 7, 15, 'budget', '', 'confirm', '2021-01-12'),
(21, 19, 14, 12, 15, 'comfortable', '', 'confirm', '2021-01-12'),
(23, 20, 19, 14, 2, 'budget', '', 'confirm', '2023-08-12'),
(25, 13, 8, 5, -1, 'budget', '', 'reject', '2023-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `tourist_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `comment_status` varchar(15) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `tourist_id`, `package_id`, `agency_id`, `content`, `comment_status`, `comment_date`) VALUES
(1, 4, 3, 3, 'The experience was absolutely magical! Outamba-Kilimi National Park is a hidden gem where nature\'s beauty shines through lush forests, stunning wildlife, and breathtaking landscapes. It was an unforgettable journey that left me in awe.', 'published', '2020-12-30'),
(2, 10, 14, 5, 'Bunce Island was a moving and educational experience. Exploring the remnants of a historic slave trading post was a deeply emotional journey, reminding us of the importance of understanding and remembering our history.', 'published', '2021-01-12'),
(3, 10, 16, 7, 'Surfing at Bureh Beach was a thrilling adventure! Riding the waves and feeling the rush of adrenaline was an exhilarating experience that I will cherish forever. Bureh Beach truly lives up to its reputation as a surfer\'s paradise.', 'published', '2021-01-12'),
(4, 9, 2, 2, 'Lumley Beach is a true haven of tranquility and relaxation. The soft sand, gentle waves, and stunning coastal views create the perfect atmosphere for a peaceful getaway. A visit to Lumley Beach promises rejuvenation and serenity.', 'published', '2021-01-12'),
(5, 9, 17, 8, 'Turtle Islands was a marine paradise! The vibrant coral reefs, crystal-clear waters, and diverse marine life left me mesmerized. Snorkeling and diving in this pristine environment was a dream come true.', 'published', '2021-01-12'),
(6, 5, 15, 6, 'Diamond Horizon on Lumley Beach is a luxurious escape like no other. The combination of exquisite accommodations, vibrant local culture, and stunning beachfront views made for an unforgettable retreat.', 'published', '2021-01-12'),
(7, 5, 2, 2, 'Discovering the beauty of Lumley Beach was a delightful experience. The soft sands and azure waters create an idyllic setting for relaxation and enjoyment. Lumley Beach is a perfect destination for anyone seeking tranquility.', 'published', '2021-01-12'),
(8, 8, 14, 5, 'Bunce Island\'s historical significance left a profound impact on me. Exploring its past and reflecting on the stories of those who lived there was a moving and eye-opening experience.', 'published', '2021-01-12'),
(9, 8, 16, 7, 'Surfing at Bureh Beach was an adrenaline-packed adventure! The thrill of riding the waves and the beauty of the coastline make Bureh Beach an absolute must-visit for surf enthusiasts.', 'published', '2021-01-12'),
(10, 3, 15, 6, 'Diamond Horizon on Lumley Beach offers a luxurious escape like no other. From the exquisite accommodations to the vibrant local culture, every aspect of this destination is designed to provide a memorable experience.', 'published', '2021-01-12'),
(11, 3, 5, 3, 'Outamba-Kilimi National Park is a nature lover\'s paradise. The diverse wildlife, lush forests, and serene landscapes create a captivating environment that immerses you in the beauty of the natural world.', 'published', '2021-01-12'),
(12, 11, 16, 7, 'Surfing at Bureh Beach was an incredible experience! Riding the waves and embracing the ocean\'s power was both thrilling and invigorating. Bureh Beach is a true haven for surf enthusiasts.', 'published', '2021-01-12'),
(13, 14, 19, 12, 'Palm Oasis on Lumley Beach offers a luxurious escape where every detail is thoughtfully designed for relaxation. From the pristine shoreline to the exquisite accommodations, Palm Oasis is a true sanctuary of indulgence.', 'published', '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `district` tinytext NOT NULL,
  `place_details` text NOT NULL,
  `place_images` text NOT NULL,
  `num_days` int(3) NOT NULL,
  `num_nights` int(3) NOT NULL,
  `budget_price` int(11) NOT NULL,
  `comfort_price` int(11) NOT NULL,
  `lux_price` int(11) NOT NULL,
  `budget_details` text NOT NULL,
  `comfort_details` text NOT NULL,
  `lux_details` text NOT NULL,
  `booking_percentage` int(11) NOT NULL,
  `min_people` int(3) NOT NULL,
  `includes` text NOT NULL,
  `excludes` text NOT NULL,
  `optional` text NOT NULL,
  `itinerary` text NOT NULL,
  `package_status` varchar(15) NOT NULL,
  `package_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `agency_id`, `package_name`, `location`, `district`, `place_details`, `place_images`, `num_days`, `num_nights`, `budget_price`, `comfort_price`, `lux_price`, `budget_details`, `comfort_details`, `lux_details`, `booking_percentage`, `min_people`, `includes`, `excludes`, `optional`, `itinerary`, `package_status`, `package_date`) VALUES
(2, 2, 'Sierra Explore ', 'Lumley Beach', 'Western Area, Freetown', '<p>Discover the breathtaking Lumley Beach, located in the Western Area of Freetown. Feel the soft sand beneath your feet, bask in the warm sun, and take in the stunning coastal views. Whether you\'re seeking relaxation or adventure, Lumley Beach offers a perfect retreat.</p>', '(\'pexels-nathan-cowley-1300510.jpg\'),(\'pexels-oliver-sjöström-1005417.jpg\'),(\'pexels-francesco-ungaro-1671324.jpg\')', 3, 4, 7000, 9000, 12000, 'Economy transport options and normal accommodation', 'Mid-range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 10, 20, '<ul><li>Bus Fare</li><li>Breakfast</li><li>Hotel</li></ul>', '<ul><li>lunch</li><li>dinner</li></ul>', '<ul><li>warm cloth</li><li>Hiking Gear</li></ul>', '<p><strong>Day 1: </strong>Visiting ….</p><p><strong>Day 2:</strong> Hiking</p>', 'available', '2020-10-28'),
(3, 3, 'Sierra Tours', 'Outamba-Kilimi National Park', 'Northern Province, Makeni', '<p>Embark on an extraordinary journey to Outamba-Kilimi National Park in the Northern Province, near Makeni. Immerse yourself in the beauty of pristine landscapes, lush forests, and diverse wildlife. Connect with nature and experience the magic of this unique sanctuary.</p>', '(\'pexels-kellie-churchman-1001682.jpg\'),(\'pexels-nathan-cowley-1300510.jpg\'),(\'pexels-sebastian-voortman-189349.jpg\'),(\'pexels-oliver-sjöström-1005417.jpg\')', 3, 2, 6000, 8000, 10000, 'Economy transport options and nomal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 5, 20, '<ul><li>Bus Fare</li><li>Ship Fare</li><li>Hotel</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li><li>Travelling inside island</li></ul>', '<ul><li>Sponge Sandle</li><li>Extra Cloth</li></ul>', '<p><strong>Day 1: </strong>We will visit the main island &amp; Chera Dip</p><p><strong>Day 2: </strong>We will visit ‘Samudro Bilas’.</p>', 'available', '2020-10-28'),
(5, 3, 'Sierra Tours', 'Rogbonko Village', 'Northern Province, Makeni', '<p>Explore the captivating Rogbonko Village, nestled in the heart of Northern Province, Makeni. Immerse yourself in the local culture, interact with friendly villagers, and witness traditional practices. Discover the charm of this vibrant village and create cherished memories.</p>', '(\'pexels-nathan-cowley-1300510.jpg\'),(\'pexels-oliver-sjöström-1005417.jpg\'),(\'pexels-francisco-valerio-trujillo-1824392.jpg\')', 4, 3, 10000, 12000, 15000, 'Economy transport options and normal accommodation', 'Mid-range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 20, 40, '<ul><li>Bus Ticket</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Hiking Shoe</li><li>Sunscreen</li></ul>', '<p><strong>Day 1: </strong>hhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p><p><strong>Day 2: </strong>Jhulonto Bridge</p>', 'available', '2020-11-04'),
(6, 3, 'Sierra Tours', 'Sulima Beach', 'Northern Province, Makeni', '<p>Relax and unwind at Sulima Beach, situated in the Northern Province near Makeni. Feel the gentle breeze, stroll along the sandy shores, and let the soothing waves create a sense of serenity. Sulima Beach is the perfect destination for a tranquil escape.</p>', '(\'pexels-nathan-cowley-1300510.jpg\'),(\'pexels-magda-ehlers-1337380.jpg\'),(\'astronomy-beautiful-clouds-constellation-355465.jpg\')', 2, 3, 8000, 10000, 15000, 'Economy transport options and nomal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 15, 15, '<ul><li>Breakfast</li><li>Bus Fare</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Sunscreen</li><li>Hat</li></ul>', '<p><strong>Day 1:</strong> Inani Beach</p><p><strong>Day 2: </strong>Himchori</p>', 'available', '2020-11-11'),
(10, 3, 'Sierra Tours', 'Tiwai Island Wildlife Sanctuary', 'Northern Province, Makeni', '<p>Embark on an unforgettable adventure to Tiwai Island Wildlife Sanctuary in the Northern Province, Makeni. Immerse yourself in the untouched beauty of dense forests and exotic wildlife. Explore the diverse ecosystems and experience nature at its finest.</p>', '(\'sharp.jpg\'),(\'pexels-nathan-cowley-1300510.jpg\'),(\'pexels-francesco-ungaro-1671324.jpg\')', 5, 4, 6000, 7500, 9000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 12, 15, '<ul><li>Breakfast</li><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Bus Fare</li><li>Train Fare</li></ul>', '<ul><li>Carry Fresh Drinking Water</li><li>Sunscreen</li></ul>', '<p><strong>Day 1: </strong>Koromjol</p><p><strong>Day 2: </strong>Dublar chor</p><p><strong>Day 3: </strong>Hiron Point</p><p><strong>Day 4: </strong>Tiger Point</p>', 'available', '2020-11-30'),
(11, 3, 'Sierra Tours', 'Loma Mountains', 'Northern Province, Makeni', '<p>Discover the stunning Loma Mountains in the Northern Province, Makeni. Embark on a journey through lush landscapes, pristine waterfalls, and breathtaking vistas. Whether you\'re an avid hiker or a nature enthusiast, Loma Mountains will captivate your senses.</p>', '(\'sharp.jpg\'),(\'astronomy-beautiful-clouds-constellation-355465.jpg\'),(\'pexels-francesco-ungaro-1671324.jpg\')', 3, 4, 7000, 9000, 11000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 8, 30, '<ul><li>Transport</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Medical Kit</li></ul>', '<p><strong>Day 1: </strong>Visiting “Cha Baghan”</p>', 'available', '2020-12-08'),
(12, 2, 'Discover Salone', 'Discover', 'Eastern Province', '<p>Experience the wonders of salone, Navigate through mangrove forests, spot majestic wildlife, and immerse yourself in the rich biodiversity. Sundarban is a paradise for nature lovers and adventurers alike.</p>', '(\'pexels-kellie-churchman-1001682.jpg\'),(\'pexels-sebastian-voortman-189349.jpg\'),(\'pexels-francesco-ungaro-1671324.jpg\')', 6, 5, 8000, 12000, 15000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 20, 50, '<ul><li>Breakfast</li><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Bus Fare</li><li>Train Fare</li><li>Medical kit</li></ul>', '<ul><li>Carry Fresh Drinking Water</li><li>Sunscreen</li></ul>', '<p><strong>Day 1: </strong>Koromjol</p><p><strong>Day 2: </strong>Dublar chor</p><p><strong>Day 3: </strong>Hiron Point</p><p><strong>Day 4: </strong>Tiger Point</p>', 'available', '2020-12-31'),
(13, 5, 'Sabi Salone', 'Bunce Island', 'Western Area, Freetown', '<p>Bunce Island is an island in the Sierra Leone River. It is situated in Freetown Harbour, the estuary of the Rokel River and Port Loko Creek, about 20 miles (32 kilometers) upriver from Sierra Leone’s capital city Freetown, Step into history at Bunce Island, Explore the remnants of a historic slave trading post and gain insight into the region\'s past. Bunce Island is a poignant reminder of the complexities of history.</p>', '(\'kurt-cotoaga-cqbLg3lZEpk-unsplash.jpg\'),(\'grey.jpg\'),(\'astronomy-beautiful-clouds-constellation-355465.jpg\')', 3, 3, 8000, 10000, 12000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 15, 20, '<ul><li>Bus Ticket</li><li>Breakfast</li></ul>', '<ul><li>Lunch&nbsp;</li><li>Dinner</li><li>Medical</li></ul>', '<ul><li>Hiking Gear</li></ul>', '<p><strong>Day 1: </strong>Hiking</p><p><strong>Day 2: </strong>Tourist Spot</p>', 'available', '2020-12-31'),
(14, 5, 'Sabi Salone', 'Roland Beach', 'Nothern Province, Makeni', '<p>Embark on a cultural journey to Kabala in the Northern Province of Makeni. Immerse yourself in local traditions, savor delectable cuisine, and interact with friendly locals. Kabala offers an authentic experience that will leave a lasting impression.</p>', '(\'hemendra-ahuja-WWDXwam1jG4-unsplash.jpg\'),(\'kurt-cotoaga-cqbLg3lZEpk-unsplash.jpg\'),(\'sharp.jpg\')', 4, 5, 10000, 13000, 16000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 30, 15, '<ul><li>Bus Fare</li><li>Internal Travel Cost</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Medical Kit</li><li>Warm Cloth</li></ul>', '<p><strong>Day 1: </strong>Visiting Tea Garden</p><p><strong>Day 2: </strong>Jaflong</p><p><strong>Day 2:</strong> Tourist Spot</p>', 'available', '2020-12-31'),
(15, 6, 'Diamond Horizon', 'Lumley Beach', 'Western Urban, Lumley', '<p>Indulge in paradise at Diamond Horizon, located on Lumley Beach in the Southern Province of Bo. Relax by the pristine shoreline, enjoy the vibrant nightlife, and immerse yourself in the vibrant local culture. Diamond Horizon is your gateway to an unforgettable escape.</p>', '(\'322709_136261_saint-martin-island-beach-compressor.jpg\'),(\'prothomalo-english_import_media_2018_10_08_a2d10327119a0074a878943cde03472a-St-Martin-s.jpg\'),(\'the-saint-martin-s-island.jpg\')', 3, 3, 5000, 8000, 10000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 15, 30, '<ul><li>Ship Fare</li><li>Breakfast</li><li>Hotel</li></ul>', '<ul><li>Lunch&nbsp;</li><li>Dinner</li><li>Medical</li></ul>', '<ul><li>Medical Kit</li><li>Sandle</li></ul>', '<p><strong>Day 1: </strong>Cheradip</p><p><strong>Day 2: </strong>Somudro Bilas</p>', 'available', '2021-01-12'),
(16, 7, 'Sabi Salone', 'Bureh Beach', 'Western Rural, Bureh Town', '<p>Experience the beauty of Bureh Beach in the Western Rural. Whether you\'re a surfing enthusiast or seeking a tranquil getaway, Bureh Beach has something for everyone. Feel the adrenaline of riding the waves or simply relax by the azure waters.</p>', '(\'2e.jpg\'),(\'coxs_bazar.jpg\'),(\'sea-beach.jpg\')', 2, 2, 4000, 5000, 7000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 12, 20, '<ul><li>Breakfast</li><li>Bus Fare</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Medical Kit</li><li>Sunscreen</li></ul>', '<p><strong>Day 1: </strong>Visiting Inani Beach</p><p><strong>Day 2: </strong>Himchori</p>', 'available', '2021-01-12'),
(17, 8, 'Tropical Tours', 'Turtle Islands', 'Northern Province, Port Loko', '<p>Embark on a tropical adventure to Turtle Islands in the Northern Province of Port Loko. Discover pristine beaches, vibrant coral reefs, and diverse marine life. Turtle Islands is a haven for snorkeling, diving, and soaking up the sun.</p>', '(\'cover22-870x555.jpg\'),(\'Discover-sajek-valley.jpg\'),(\'Sajek-Valley.jpg\')', 3, 4, 6000, 8000, 12000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 20, 15, '<ul><li>Bus Fare</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Medical Kit</li><li>Hiking Gear<strong>&nbsp;</strong></li></ul>', '<p><strong>Day 1: </strong>Trekking</p><p><strong>Day 2: </strong>Visiting Local Area</p>', 'available', '2021-01-12'),
(19, 12, 'Palm Oasis', 'Lumley Beach', 'Western Urban, Lumley', '<p>Escape to tranquility at Palm Oasis, nestled on Lumley Beach in the Western Urban of Lumley. Unwind in luxurious accommodations, savor exquisite cuisine, and rejuvenate your senses. Palm Oasis is your sanctuary of relaxation and indulgence.</p>', '(\'1sylhet.jpg\'),(\'1sylhet2.jpg\'),(\'1sylhet3.jpg\')', 2, 3, 6000, 8000, 10000, 'Economy transport options and normal accommodation', 'Mid - range transport options and 4* accommodation', 'High-end transport options and 5* accommodation', 15, 15, '<ul><li>Bus Fare</li><li>Breakfast</li></ul>', '<ul><li>Lunch</li><li>Dinner</li></ul>', '<ul><li>Medical Kit</li></ul>', '<p><strong>Day 1: </strong>Tea Garden</p><p><strong>Day 2: </strong>Jaflong</p>', 'available', '2021-01-12'),
(20, 14, 'Surf Master', 'Bureh Beah', 'western urban', '<p>Experience the thrill of surfing at Bureh Beach in Western Urban. Ride the waves, feel the rush of adrenaline, and embrace the spirit of adventure. Bureh Beach is a surfer\'s paradise where every wave becomes a memorable journey.</p>', '(\'burehsurfing.jpg\')', 2, -1, 1000, 2000, 3000, 'Surfing Board', 'Surfing Board', 'Surfing Board', 50, 3, '<p>Trainer, Medical Kit &amp; Life Guard</p>', '<p>Dinner</p>', '<p>Surfing Gear and Dinner</p>', '<p>yes</p>', 'available', '2023-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `package_dates`
--

CREATE TABLE `package_dates` (
  `date_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `last_date` date NOT NULL,
  `travel_date` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_dates`
--

INSERT INTO `package_dates` (`date_id`, `package_id`, `agency_id`, `last_date`, `travel_date`, `status`, `date`) VALUES
(10, 10, 3, '2020-12-29', '2021-01-07', 'booking on', '2020-12-23'),
(11, 3, 3, '2021-01-02', '2021-01-08', 'booking on', '2020-12-23'),
(12, 11, 3, '2020-12-24', '2020-12-29', 'booking on', '2020-12-25'),
(13, 2, 2, '2021-01-16', '2021-01-19', 'booking on', '2020-12-31'),
(14, 5, 3, '2021-01-08', '2021-01-12', 'extended', '2021-01-03'),
(15, 6, 3, '2021-01-09', '2021-01-11', 'booking off', '2021-01-03'),
(16, 13, 5, '2021-01-14', '2021-01-19', 'booking on', '2021-01-11'),
(17, 12, 2, '2021-01-15', '2021-01-21', 'booking on', '2021-01-12'),
(18, 15, 6, '2021-01-15', '2021-01-20', 'booking on', '2021-01-12'),
(19, 16, 7, '2021-01-14', '2021-01-22', 'booking on', '2021-01-12'),
(20, 17, 8, '2021-01-14', '2021-01-16', 'booking on', '2021-01-12'),
(21, 14, 5, '2021-01-18', '2021-01-22', 'booking on', '2021-01-12'),
(23, 19, 12, '2021-01-17', '2021-01-20', 'booking off', '2021-01-12'),
(24, 20, 14, '2023-08-26', '2023-09-10', 'booking on', '2023-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `tourist_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `review_status` varchar(15) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `agency_id`, `tourist_id`, `rating`, `comment`, `review_status`, `review_date`) VALUES
(1, 3, 4, 4, 'The tour was amazing, and the guides were very knowledgeable.', 'published', '2020-12-30'),
(2, 3, 3, 3, 'Had a great time on the tour. The itinerary was well-planned.', 'published', '2020-12-31'),
(3, 5, 10, 4, 'I thoroughly enjoyed the trip. The scenery was breathtaking.', 'published', '2021-01-12'),
(4, 7, 10, 3, 'A wonderful experience. The guides were friendly and informative.', 'published', '2021-01-12'),
(5, 2, 9, 2, 'The trip exceeded my expectations. Highly recommended!', 'published', '2021-01-12'),
(6, 7, 11, 5, 'Absolutely fantastic tour! A must-visit destination.', 'published', '2021-01-12'),
(7, 8, 9, 5, 'An unforgettable journey. I learned so much about the local culture.', 'published', '2021-01-12'),
(8, 6, 5, 4, 'Great organization and attention to detail. Would travel with them again.', 'published', '2021-01-12'),
(9, 2, 5, 4, 'The trip was well worth it. I had an incredible time.', 'published', '2021-01-12'),
(10, 5, 8, 5, 'Thumbs up! The tour guides were exceptional.', 'published', '2021-01-12'),
(11, 7, 8, 4, 'Highly satisfied with the trip. Looking forward to future adventures.', 'published', '2021-01-12'),
(12, 6, 3, 2, 'A unique and enjoyable experience.', 'published', '2021-01-12'),
(13, 2, 4, 5, 'Outstanding journey. I was captivated by the beauty of the place.', 'published', '2021-01-12'),
(14, 8, 11, 1, 'An enriching experience. The tour was educational and fun.', 'published', '2021-01-12'),
(15, 12, 14, 4, 'Truly a remarkable trip. I gained new perspectives and memories.', 'published', '2021-01-12'),
(16, 3, 16, 4, 'I had an amazing time exploring this hidden gem.', 'published', '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `tourists`
--

CREATE TABLE `tourists` (
  `tourist_id` int(11) NOT NULL,
  `tourist_username` varchar(50) NOT NULL,
  `tourist_firstname` varchar(50) NOT NULL,
  `tourist_lastname` varchar(50) NOT NULL,
  `tourist_email` varchar(50) NOT NULL,
  `tourist_password` varchar(100) NOT NULL,
  `profile_image` text NOT NULL,
  `tourist_contact` varchar(13) NOT NULL,
  `tourist_address` varchar(50) NOT NULL,
  `tourist_status` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `added_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourists`
--

INSERT INTO `tourists` (`tourist_id`, `tourist_username`, `tourist_firstname`, `tourist_lastname`, `tourist_email`, `tourist_password`, `profile_image`, `tourist_contact`, `tourist_address`, `tourist_status`, `date`, `added_by`) VALUES
(3, 'john11', 'John', 'Green', 'john@gmail.com', '$2y$12$NMY5bfT4NrnMPfQKncdtQOL5E4n89kfj10afg5JLotXXLRAuOYBY2', 'download (1).jpg', '', '', 'approved', '2020-12-30', NULL),
(4, 'james13', 'James', 'Rollins', 'james@gmail.com', '$2y$12$Ty275THcKi.louXDelK5ROabmqJLNEO4.PleoJBbgvw8hvJhN3ybu', '', '', '', 'approved', '2020-12-30', NULL),
(5, 'Lizzy110', 'Lizzy', 'Bennet', 'liz@gmail.com', '$2y$12$kvvZXgRBDNPluv6yu.YktufV01Bfd/BD2X7dE2Kl5f6B.bfCYp79y', 'christopher-campbell-rDEOVtE7vOs-unsplash.jpg', '', '', 'approved', '2020-12-31', NULL),
(8, 'Darcy', 'Fella', 'Darcy', 'darcy@gmail.com', '$2y$12$FYPZtQ1Sp8k24KLTF26hoefa5cPc0Xlna3etMhjq52.HXeLMS2Kvm', 'jonny-neuenhagen-49e5-juD4co-unsplash.jpg', '', '7 Salvador Street, Brookville', 'approved', '0000-00-00', NULL),
(9, 'maria420', 'Maria', 'Smith', 'maria@gmail.com', '$2y$12$sxCd9cnpcZ.llyhVHYPMIuSjRJd3XhZmQPaEfqdNeJgEoSXSJZOpW', 'manny-moreno-gVPmUcMgoII-unsplash.jpg', '', '', 'approved', '2021-01-12', NULL),
(10, 'jasmin223', 'Jasmin', 'Chew', 'jasmin@gmail.com', '$2y$12$up.rkb13MqBRQUyeoMdDUuKzMjHQHthIKt9tA9P5JuKO/QaoutUoG', 'jasmin-chew-yMdI_y-zfzs-unsplash.jpg', '', '', 'approved', '2021-01-12', NULL),
(11, 'oliver556', 'Oliver', 'Bingley', 'oliver@gmail.com', '$2y$12$58StAtIkNWZGduhhEOyWuumnSgKA6x2SeJYmWot0T1szHAcDmdJSm', 'aeecc22a67dac7987a80ac0724658493.jpg', '', '', 'approved', '2021-01-12', NULL),
(12, 'heisenberg', 'Walter', 'White', 'walter@gmail.com', '$2y$12$nPNbKXMRdRLw5HFRnMHMmOf/UpIhnBiRjj6fqowmdByWwqN7ixphO', 'Walter_White_pilot.png', '', '', 'approved', '2021-01-12', NULL),
(14, 'jack003', 'Jack', 'Charles', 'jack@gmail.com', '$2y$12$ATcijkSNj6WYoiSh3h6Roe2vkVqH59JECRRUyt.HnN6ZzDGZwIF8.', '1tourist.jpg', '', '', 'approved', '2021-01-12', NULL),
(16, 'pat', 'pat', 'pat', 'pat@gmail.com', '$2y$12$G7JCc9aInlP/aqnq1aejZugrmfIPy/Jz9zP3V1VRifPLZ9JOMLk4.', 'pat.png', '+232 88 848 5', '8 Hill Cot Road', 'approved', '2023-08-09', NULL),
(17, 'mo', 'mo', 'mo', 'mo@gmail.com', '$2y$12$gyQwvAwXOdSk5YmNtIXf1OYXMxCJ0p19CNRn.H3EmKt2lKAAAh6gG', 'mo.png', '+232948887', 'kdkddi', 'approved', '2023-08-09', NULL),
(18, 'Falcao', 'Falcao', 'King', 'falco@gmail.com', '123', '', '12345678912', '838383', 'approved', '2023-08-10', 2),
(19, 'patbah', 'pat', 'Bah', 'patbah@gmail.com', '$2y$12$g90lWEypRRIcACVOlAWp7.7aAh/h66NktFtTQKkXLwKE6HxU/aGfu', 'patbah.png', '+232 31 080 0', '8 Hill Cot Road', 'approved', '2023-08-12', NULL),
(20, 'Fatima', 'Fatima', 'Mohamed', 'fatima@gmail.com', '$2y$12$qiTcLhulQBepc5ps1R2SneN/O6RecCAeSEHfwcdyzp7vjaYsIvkQG', 'fatima.png', '+232 78 23789', '23 Avenue Drive, New York', 'approved', '2023-08-16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`agency_id`),
  ADD KEY `agencies_ibfk_1` (`added_by`);

--
-- Indexes for table `agency_employees`
--
ALTER TABLE `agency_employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `agency_employees_ibfk_1` (`agency_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `tourist_id` (`tourist_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `tourist_id` (`tourist_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `package_dates`
--
ALTER TABLE `package_dates`
  ADD PRIMARY KEY (`date_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `agency_id` (`agency_id`),
  ADD KEY `tourist_id` (`tourist_id`);

--
-- Indexes for table `tourists`
--
ALTER TABLE `tourists`
  ADD PRIMARY KEY (`tourist_id`),
  ADD KEY `tourists_ibfk_1` (`added_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `agency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `agency_employees`
--
ALTER TABLE `agency_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `package_dates`
--
ALTER TABLE `package_dates`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tourists`
--
ALTER TABLE `tourists`
  MODIFY `tourist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agencies`
--
ALTER TABLE `agencies`
  ADD CONSTRAINT `agencies_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admins` (`admin_id`) ON DELETE SET NULL;

--
-- Constraints for table `agency_employees`
--
ALTER TABLE `agency_employees`
  ADD CONSTRAINT `agency_employees_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`tourist_id`) REFERENCES `tourists` (`tourist_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`tourist_id`) REFERENCES `tourists` (`tourist_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_dates`
--
ALTER TABLE `package_dates`
  ADD CONSTRAINT `package_dates_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_dates_ibfk_2` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`agency_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`tourist_id`) REFERENCES `tourists` (`tourist_id`) ON DELETE CASCADE;

--
-- Constraints for table `tourists`
--
ALTER TABLE `tourists`
  ADD CONSTRAINT `tourists_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admins` (`admin_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
