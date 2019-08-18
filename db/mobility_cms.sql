-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 01:21 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobility_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`) VALUES
(1, 'LOGO', ''),
(2, 'IDENTITY', '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `url`) VALUES
(1, 'Logo 1', 'themeforest_1466845518', '#'),
(2, 'Logo 2', 'logo-2_1466845545', '#'),
(3, 'Logo 3', 'logo-3_1466845574', '#'),
(4, 'Logo 4', 'logo-4_1466845590', '#'),
(5, 'Logo 5', 'logo-5_1466845604', '#'),
(6, 'Logo 6', 'logo-6_1466846003', '#'),
(7, 'Logo 7', 'logo-7_1466846019', '#');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_01_050539_create_categories_table', 1),
('2016_03_01_053018_create_settings_table', 1),
('2016_07_09_045636_create_clients_table', 1),
('2016_07_09_045714_create_portfolio_table', 1),
('2016_07_09_045737_create_sections_table', 1),
('2016_07_09_045802_create_services_table', 1),
('2016_07_09_045831_create_sliders_table', 1),
('2016_07_09_045850_create_team_table', 1),
('2016_07_09_045907_create_testimonials_table', 1),
('2016_07_09_045936_create_whychoose_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '671e2e5c153081a4e153e974c5f73d532c0bc1d6587e4a60b9df6971570eab73', '2017-04-10 05:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `cat_id`, `title`, `image`) VALUES
(1, 2, 'Portfolio 1', 'portfolio-1_1466758030'),
(2, 2, 'Portfolio 2', 'portfolio-2_1466758040'),
(3, 1, 'Portfolio 3', 'portfolio-3_1466758049'),
(4, 1, 'Portfolio 4', 'portfolio-4_1466758060'),
(5, 2, 'Portfolio 5', 'portfolio-5_1466758073');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_name_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_service_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_service_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_name_about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_about_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_about_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_about_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_name_portfolio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_portfolio_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_name_achivement` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block1_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block1_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block1_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block2_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block2_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block2_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block3_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block3_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block3_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block4_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block4_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_achivement_block4_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_name_team` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_team_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_team_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_name_features` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features1_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features1_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features1_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features2_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features2_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features2_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features3_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features3_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features3_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features4_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features4_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features4_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features5_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features5_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features5_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_features6_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features6_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_features6_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `section_name_testimonials` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_testimonials_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_name_whychoose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_whychoose_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_our_client_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_name_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_address` text COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_email1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_email2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_phone1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_contact_phone2` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name_service`, `section_service_title`, `section_service_desc`, `section_name_about`, `section_about_title`, `section_about_desc`, `section_about_image`, `section_name_portfolio`, `section_portfolio_title`, `section_name_achivement`, `section_achivement_title`, `section_achivement_block1_icon`, `section_achivement_block1_number`, `section_achivement_block1_title`, `section_achivement_block2_icon`, `section_achivement_block2_number`, `section_achivement_block2_title`, `section_achivement_block3_icon`, `section_achivement_block3_number`, `section_achivement_block3_title`, `section_achivement_block4_icon`, `section_achivement_block4_number`, `section_achivement_block4_title`, `section_name_team`, `section_team_title`, `section_team_desc`, `section_name_features`, `section_features_title`, `section_features_desc`, `section_features_image`, `section_features1_icon`, `section_features1_title`, `section_features1_desc`, `section_features2_icon`, `section_features2_title`, `section_features2_desc`, `section_features3_icon`, `section_features3_title`, `section_features3_desc`, `section_features4_icon`, `section_features4_title`, `section_features4_desc`, `section_features5_icon`, `section_features5_title`, `section_features5_desc`, `section_features6_icon`, `section_features6_title`, `section_features6_desc`, `section_name_testimonials`, `section_testimonials_title`, `section_name_whychoose`, `section_whychoose_title`, `section_our_client_title`, `section_name_contact`, `section_contact_title`, `section_contact_address`, `section_contact_email1`, `section_contact_email2`, `section_contact_phone1`, `section_contact_phone2`) VALUES
(1, 'Services', 'YOUR <strong>BUSINESS DREAMS</strong>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry''s standard dummy</strong> text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'About Us', '<strong>U0NSSVBUIFNIQVJFRCBPTiBDT0RFTElTVC5DQw==</strong>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur! totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur. recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>', 'about_image.png', 'Portfolio', 'Our <strong>Portfolio</strong>', '', 'Best <strong>Achivement</strong>', 'fa-smile-o', '819', 'HAPPY CLIENTS', 'fa-code', '4000', 'WORKING HOURS', 'fa-check-square-o', '560', 'PROJECTS COMPLETED', 'fa-trophy', '140', 'AWARDS WON', 'Team', 'Meet the <strong>team</strong>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\n', 'Features', 'Awesome <strong>Features</strong>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!', 'features_image.png', 'fa-mobile hi-icon', '100% RESPONSIVE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'fa-lightbulb-o hi-icon', 'CREATIVE IDEAS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'fa-gift hi-icon', 'EASY OPTIONS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'fa-magic hi-icon', 'GREAT ANIMATIONS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'fa-cogs hi-icon', 'MULTI-PURPOSE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'fa-life-ring hi-icon', 'UNLIMITED SUPPORT', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'Testimonials', 'TESTIMONIALS', 'Why Choose', 'Why <strong>Choose Us?</strong>', 'Our <strong>Clients</strong>', 'Contact Us', 'Contact <strong>Us</strong>', 'Q09ERUxJU1QuQ0MgLSBFeGNsdXNpdmUgc2NyaXB0cywgcGx1Z2lucyAmIG1vYmlsZSE=', 'info@test.com', 'info@demotest.com', '+001 1250 1234', '+001 1203 15354');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_text` text COLLATE utf8_unicode_ci NOT NULL,
  `service_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_text`, `service_icon`) VALUES
(1, 'EASILY CUSTOMIZE', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', 'easily-customize_1466672295'),
(2, 'MODERN DESIGN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', 'modern-design_1466672956'),
(3, 'SEO MARKETING', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', 'seo-marketing_1466672974');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_plus_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_section` int(11) NOT NULL,
  `about_section` int(11) NOT NULL,
  `portfolio_section` int(11) NOT NULL,
  `achivement_section` int(11) NOT NULL,
  `team_section` int(11) NOT NULL,
  `features_section` int(11) NOT NULL,
  `testimonials_section` int(11) NOT NULL,
  `whychoose_section` int(11) NOT NULL,
  `our_clients_section` int(11) NOT NULL,
  `contact_us_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_style`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_header_code`, `site_footer_code`, `site_copyright`, `facebook_url`, `linkedin_url`, `twitter_url`, `pinterest_url`, `google_plus_url`, `service_section`, `about_section`, `portfolio_section`, `achivement_section`, `team_section`, `features_section`, `testimonials_section`, `whychoose_section`, `our_clients_section`, `contact_us_section`) VALUES
(1, 'style_blue.css', 'Mobility CMS', 'admin@admin.com', 'logo.png', 'favicon.png', 'Mobility CMS Script is one page template is fully responsive, creative, clean, and multipurpose with very elegant appearance and web design styles.', '', '', 'Copyright © 2016 Mobility CMS Script. All Rights Reserved.', '#', '#', '#', '#', '#', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_sub_title` text COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_sub_title`, `slider_image`) VALUES
(1, 'CREATIVE MODERN AGENCY', 'CREATION OF NEW WEBSITE HAS NEVER BEEN SO EASY AND SIMPLY', 'creative-modern-agency_1466659912'),
(2, 'BUILD YOUR WEBSITE', 'CREATION OF NEW WEBSITE HAS NEVER BEEN SO EASY AND SIMPLY', 'build-your-website_1466659981');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gplus_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `image`, `facebook_url`, `twitter_url`, `linkedin_url`, `gplus_url`) VALUES
(1, 'John Doe', 'Co-Founder', 'john-doe_1466770792', '#', '#', '#', '#'),
(2, 'John Doe', 'Analyst', 'john-doe_1466770809', '#', '#', '#', '#'),
(3, 'John Doe', 'Developer', 'john-doe_1466770827', '#', '#', '#', '#'),
(4, 'John Doe', 'Designer', 'john-doe_1466770844', '#', '#', '#', '#'),
(5, 'John Doe', 'Graphic designer', 'john-doe_1466770859', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `testimonial`, `image`) VALUES
(1, 'John Deo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.', 'john-deo_1466838406'),
(2, 'John Roe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.', 'john-roe_1466838495');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usertype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `first_name`, `last_name`, `email`, `password`, `image_icon`, `mobile`, `address`, `city`, `postal_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'John', 'Deo', 'admin@admin.com', '$2y$10$ZNOYH5BOe5OiZDUtWw0TKOY7A9pHeGUNq5TYP5ia5iMtf./VNuvYm', 'admin-965bf2e0f3108983112bb705d2db4304', '', '', '', '', 'pHWUXKj7Nd', '2017-04-10 05:38:31', '2017-04-10 05:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `whychoose`
--

CREATE TABLE `whychoose` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whychoose`
--

INSERT INTO `whychoose` (`id`, `title`, `description`) VALUES
(1, 'Highly Experienced Professional Team', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.'),
(2, 'Up-to-Date with the Latest Standards', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed utLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut'),
(3, 'We Emphasize Simplicity', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.'),
(4, 'We’re Friendly & Affordable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `whychoose`
--
ALTER TABLE `whychoose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `whychoose`
--
ALTER TABLE `whychoose`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
