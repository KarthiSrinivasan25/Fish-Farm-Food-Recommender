-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2022 at 09:11 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aqua`
--
CREATE DATABASE IF NOT EXISTS `aqua` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aqua`;

-- --------------------------------------------------------

--
-- Table structure for table `analysis_analysisregistration`
--

CREATE TABLE IF NOT EXISTS `analysis_analysisregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint(20) unsigned DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `analysis_analysisregistration`
--

INSERT INTO `analysis_analysisregistration` (`id`, `name`, `email`, `phonenumber`, `gender`, `address`, `password`) VALUES
(2, 'user1', 'user@gmail.com', 6352417895, 'male', 'chennai', '123@4');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add clientregistration', 1, 'add_clientregistration'),
(2, 'Can change clientregistration', 1, 'change_clientregistration'),
(3, 'Can delete clientregistration', 1, 'delete_clientregistration'),
(4, 'Can view clientregistration', 1, 'view_clientregistration'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add managementregistration', 8, 'add_managementregistration'),
(30, 'Can change managementregistration', 8, 'change_managementregistration'),
(31, 'Can delete managementregistration', 8, 'delete_managementregistration'),
(32, 'Can view managementregistration', 8, 'view_managementregistration'),
(33, 'Can add clientregistration', 9, 'add_clientregistration'),
(34, 'Can change clientregistration', 9, 'change_clientregistration'),
(35, 'Can delete clientregistration', 9, 'delete_clientregistration'),
(36, 'Can view clientregistration', 9, 'view_clientregistration'),
(37, 'Can add vendorregistration', 9, 'add_vendorregistration'),
(38, 'Can change vendorregistration', 9, 'change_vendorregistration'),
(39, 'Can delete vendorregistration', 9, 'delete_vendorregistration'),
(40, 'Can view vendorregistration', 9, 'view_vendorregistration'),
(41, 'Can add clientregistration', 10, 'add_clientregistration'),
(42, 'Can change clientregistration', 10, 'change_clientregistration'),
(43, 'Can delete clientregistration', 10, 'delete_clientregistration'),
(44, 'Can view clientregistration', 10, 'view_clientregistration'),
(45, 'Can add analysisregistration', 10, 'add_analysisregistration'),
(46, 'Can change analysisregistration', 10, 'change_analysisregistration'),
(47, 'Can delete analysisregistration', 10, 'delete_analysisregistration'),
(48, 'Can view analysisregistration', 10, 'view_analysisregistration'),
(49, 'Can add client_details', 11, 'add_client_details'),
(50, 'Can change client_details', 11, 'change_client_details'),
(51, 'Can delete client_details', 11, 'delete_client_details'),
(52, 'Can view client_details', 11, 'view_client_details'),
(53, 'Can add vendordetails', 12, 'add_vendordetails'),
(54, 'Can change vendordetails', 12, 'change_vendordetails'),
(55, 'Can delete vendordetails', 12, 'delete_vendordetails'),
(56, 'Can view vendordetails', 12, 'view_vendordetails'),
(57, 'Can add client_requirement_details', 13, 'add_client_requirement_details'),
(58, 'Can change client_requirement_details', 13, 'change_client_requirement_details'),
(59, 'Can delete client_requirement_details', 13, 'delete_client_requirement_details'),
(60, 'Can view client_requirement_details', 13, 'view_client_requirement_details'),
(61, 'Can add supplydetails', 14, 'add_supplydetails'),
(62, 'Can change supplydetails', 14, 'change_supplydetails'),
(63, 'Can delete supplydetails', 14, 'delete_supplydetails'),
(64, 'Can view supplydetails', 14, 'view_supplydetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_clientregistration`
--

CREATE TABLE IF NOT EXISTS `client_clientregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint(20) unsigned DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `client_clientregistration`
--

INSERT INTO `client_clientregistration` (`id`, `name`, `email`, `phonenumber`, `gender`, `address`, `password`) VALUES
(12, 'user1', 'user@gmail.com', 6582421698, 'male', 'chennai', '123@4');

-- --------------------------------------------------------

--
-- Table structure for table `client_client_details`
--

CREATE TABLE IF NOT EXISTS `client_client_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint(20) unsigned DEFAULT NULL,
  `organisation_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `organisation_type` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `client_client_details`
--

INSERT INTO `client_client_details` (`id`, `name`, `email`, `phonenumber`, `organisation_name`, `designation`, `organisation_type`, `state`, `city`, `country`, `approve`) VALUES
(3, 'user1', 'user@gmail.com', 789542582, 'tata', 'manager', 'Start-up', 'Tamilnadu', 'coimbatore', 'india', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_client_requirement_details`
--

CREATE TABLE IF NOT EXISTS `client_client_requirement_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `fish_variety` varchar(200) NOT NULL,
  `fish_quantity` bigint(20) unsigned DEFAULT NULL,
  `culture_operation_type` varchar(200) NOT NULL,
  `input_type` varchar(200) NOT NULL,
  `food_variety` varchar(200) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `final` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `client_client_requirement_details`
--

INSERT INTO `client_client_requirement_details` (`id`, `name`, `fish_variety`, `fish_quantity`, `culture_operation_type`, `input_type`, `food_variety`, `approve`, `final`) VALUES
(4, 'user', 'Catla–Indian Carp', 5000, 'Semi-closed aquaculture', 'Semi-Intensive Input', 'Organic', 1, 'Necton,Plankton,Rooted high plants');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(10, 'analysis', 'analysisregistration'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(1, 'client', 'clientregistration'),
(11, 'client', 'client_details'),
(13, 'client', 'client_requirement_details'),
(6, 'contenttypes', 'contenttype'),
(8, 'management', 'managementregistration'),
(7, 'sessions', 'session'),
(14, 'vendor', 'supplydetails'),
(12, 'vendor', 'vendordetails'),
(9, 'vendor', 'vendorregistration');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-12 14:37:12.133338'),
(2, 'auth', '0001_initial', '2022-09-12 14:37:22.248808'),
(3, 'admin', '0001_initial', '2022-09-12 14:37:24.393497'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-12 14:37:24.430526'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-12 14:37:24.468056'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-12 14:37:25.585936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-12 14:37:26.140373'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-12 14:37:26.823912'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-12 14:37:26.860441'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-12 14:37:27.290280'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-12 14:37:27.323806'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-12 14:37:27.371344'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-12 14:37:27.904263'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-12 14:37:28.496230'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-12 14:37:29.113716'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-12 14:37:29.149743'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-12 14:37:29.795751'),
(18, 'client', '0001_initial', '2022-09-12 14:37:30.283138'),
(19, 'sessions', '0001_initial', '2022-09-12 14:37:31.023720'),
(20, 'management', '0001_initial', '2022-09-13 06:55:55.573012'),
(21, 'vendor', '0001_initial', '2022-09-13 06:08:08.423782'),
(22, 'vendor', '0002_rename_clientregistration_vendorregistration', '2022-09-13 06:08:45.749187'),
(23, 'analysis', '0001_initial', '2022-09-13 06:04:35.493531'),
(24, 'analysis', '0002_rename_clientregistration_analysisregistration', '2022-09-13 06:05:35.437256'),
(25, 'client', '0002_client_details', '2022-09-14 04:41:30.927557'),
(26, 'vendor', '0003_vendordetails', '2022-09-14 04:22:55.690173'),
(27, 'client', '0003_client_requirement_details', '2022-09-14 12:06:57.811001'),
(28, 'client', '0004_client_details_approve', '2022-09-14 12:01:05.751987'),
(29, 'client', '0005_client_requirement_details_approve', '2022-09-14 11:50:38.849463'),
(30, 'vendor', '0004_vendordetails_approve', '2022-09-14 12:08:19.154310'),
(31, 'vendor', '0005_supplydetails', '2022-09-16 07:19:30.138389'),
(32, 'client', '0006_client_requirement_details_final', '2022-09-22 14:57:34.862108');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jn1ad5n91xx0p9t64cx5jvu0gbs4adx', 'eyJhZG1pbiI6ImFkbWluQGdtYWlsLmNvbSJ9:1obcT3:N1e3srvgOTBcLVCkuLrBQajAdH6VOjvuhdQuZ2HIMIo', '2022-10-07 06:47:21.514289'),
('ehx4690qxz23x2qldtsyiph306cg4hyl', 'eyJhZG1pbiI6ImFkbWluQGdtYWlsLmNvbSJ9:1oYJhI:0ROeRfbv7VpncATmXOC_fNqVsDxsxgmkqwXppmRgoDg', '2022-09-28 04:08:24.635649'),
('v4m6f0ypj5k81no0zsoh0czo8vikkl8m', 'eyJhZG1pbiI6ImFkbWluQGdtYWlsLmNvbSJ9:1ogj0h:HCIo9ZgYkl_cqCG_hwfOXIGv-tWyEYTpcP-4FxF3T8w', '2022-10-21 08:47:11.095329');

-- --------------------------------------------------------

--
-- Table structure for table `management_managementregistration`
--

CREATE TABLE IF NOT EXISTS `management_managementregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint(20) unsigned DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `management_managementregistration`
--

INSERT INTO `management_managementregistration` (`id`, `name`, `email`, `phonenumber`, `gender`, `address`, `password`) VALUES
(2, 'user1', 'user@gmail.com', 6352417895, 'female', 'chennai', '123@4');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_supplydetails`
--

CREATE TABLE IF NOT EXISTS `vendor_supplydetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `organisation_name` varchar(200) NOT NULL,
  `buisness_classification` varchar(200) NOT NULL,
  `food_type` varchar(200) NOT NULL,
  `food_variety` varchar(200) NOT NULL,
  `supply_from` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vendor_supplydetails`
--

INSERT INTO `vendor_supplydetails` (`id`, `name`, `designation`, `organisation_name`, `buisness_classification`, `food_type`, `food_variety`, `supply_from`) VALUES
(3, 'birla', 'manager', 'tata', 'large scale', 'Organic', 'supplementary feeds', 'Food company Organic Waste');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_vendordetails`
--

CREATE TABLE IF NOT EXISTS `vendor_vendordetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `vendor_address` varchar(200) NOT NULL,
  `buisness_classification` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vendor_vendordetails`
--

INSERT INTO `vendor_vendordetails` (`id`, `name`, `email`, `phone`, `vendor_name`, `vendor_address`, `buisness_classification`, `city`, `approve`) VALUES
(3, 'vendor', 'user@gmail.com', 6541239852, 'birla', 'madurai', 'large', 'madurai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_vendorregistration`
--

CREATE TABLE IF NOT EXISTS `vendor_vendorregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint(20) unsigned DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vendor_vendorregistration`
--

INSERT INTO `vendor_vendorregistration` (`id`, `name`, `email`, `phonenumber`, `gender`, `address`, `password`) VALUES
(2, 'user', 'user@gmail.com', 6352417895, 'male', 'madurai', '123@4');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
