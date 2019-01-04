-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 04, 2019 at 04:38 AM
-- Server version: 8.0.13
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icelandEventsDjango`
--
CREATE DATABASE IF NOT EXISTS `icelandEventsDjango` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `icelandEventsDjango`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add event', 7, 'add_event'),
(26, 'Can change event', 7, 'change_event'),
(27, 'Can delete event', 7, 'delete_event'),
(28, 'Can view event', 7, 'view_event');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$As5D4fzFA9Qs$9BLF7JnmzFdHk0eJHSBR8PL+V/GL0wMn0LWf1PDSaTo=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2018-11-07 03:15:37.855321'),
(4, 'pbkdf2_sha256$120000$n1L9Le8knGrV$CxJh9pao2evniWeRDaGWRGx0Uewe+9N4JR6N8rd/3yY=', '2019-01-04 02:34:18.184112', 0, 'Username', 'User_first', 'User_last', 'User_email@gmail.com', 0, 1, '2019-01-04 02:34:17.667785');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'events', 'event'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-07 03:14:36.217561'),
(2, 'auth', '0001_initial', '2018-11-07 03:14:45.363127'),
(3, 'admin', '0001_initial', '2018-11-07 03:14:47.219431'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-07 03:14:47.382719'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-07 03:14:47.443698'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-11-07 03:14:48.582477'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-11-07 03:14:49.342334'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-11-07 03:14:50.148070'),
(9, 'auth', '0004_alter_user_username_opts', '2018-11-07 03:14:50.244096'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-11-07 03:14:50.751261'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-11-07 03:14:50.785442'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-11-07 03:14:50.840111'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-11-07 03:14:51.860884'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-11-07 03:14:52.631638'),
(15, 'events', '0001_initial', '2018-11-07 03:14:53.794265'),
(16, 'sessions', '0001_initial', '2018-11-07 03:14:54.363372'),
(17, 'events', '0002_auto_20181111_0013', '2018-11-11 00:13:40.542062');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2bturoxeu1qv8ecu8g3f3v7ezk57ivxz', 'NmNhNDc0MWMwZjdkMGZlOWQ0ODAwNDY5NzdkYzRmMjYwOWE4MWQxMTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDRhNGM5ZTA3YTMzMWVkYzcxZTMxZTgwOTk0Yzc0MmI0NWJjNGVmIn0=', '2019-01-18 02:34:18.339715'),
('fou18dmfmwlw7v9d35689701h207dc9j', 'NjcxMWM4ZjE1MzA3ZTc3YTY5YTE0YTM2OTZiNmZmNTY0ZDU1Y2IyMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIxNmE5ZDQ0Y2ZjNmJhM2E3ODNmOWU5MjViOTQ2YTQ3YjA4YTc0NmU0In0=', '2018-11-30 03:24:51.904687');

-- --------------------------------------------------------

--
-- Table structure for table `events_event`
--

DROP TABLE IF EXISTS `events_event`;
CREATE TABLE `events_event` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `imageurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `musicgenres` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `events_event`
--

INSERT INTO `events_event` (`id`, `name`, `location`, `date`, `time`, `imageurl`, `description`, `musicgenres`, `created_at`, `updated_at`, `user_id_id`) VALUES
(1, 'KBE Kynnir Herra Hnetusmjör', 'Hard Rock Café', '2018-11-21', '21:00:00.000000', 'images/1.10469.jpg', 'Til að fagna opnun KBE Studios ætlar Herra Hnetusmjör að halda tónleika föstudaginn 25.maí  í tónleikasal Hard Rock Cafe (staðsettur undir Hard Rock).', 'Other', '2018-11-13 04:02:24.383899', '2018-11-13 04:02:24.383931', 4),
(2, 'Reynir Hauksson – Flamenco', 'Reykholtskirkja, Borgarfirði', '2018-11-23', '20:30:00.000000', 'images/1.10472.jpg', 'Reynir býr í Granada, Spáni og starfar þar sem Flamenco gítarleikari. \r\nÞað heyrir til tíðinda að Flamenco tónlist sé flutt á Íslandi, svo sjaldgæft er það. \r\nDraumur hans er að kynna og tengja þessa mögnuðu list við Ísland.', 'Other', '2018-11-13 04:03:57.600948', '2018-11-13 04:03:57.600982', 4),
(3, 'CCR Heiðurstónleikar', 'Bæjarbíó (Hafnarfirði)', '2019-03-13', '20:20:00.000000', 'images/1.10436.jpg', 'Það er okkur sönn ánægja að tilkynna Heiðurstónleika CCR Bandsins í Bæjarbíói Hafnarfjarðar föstudagskvöldið 8. Júní.\r\nStrákarnir í CCR Bandinu hafa það að aðalsmerki að heiðra hina mögnuðu sveit Creedence Clearwater Revival.', 'Other', '2018-11-14 00:43:41.177085', '2018-11-14 00:43:41.177163', 4),
(4, 'Akureyri Dance Festival', 'Sjallinn (Akureyri)', '2019-01-16', '20:20:00.000000', 'images/1.10470.jpg', 'Akureyri Events ehf. kynnir með stolti Akureyri Dance Festival, nýja raftónlistarhátíð sem haldin verður í Sjallanum á Akureyri dagana 15. og 16. júní 2018.', 'Other', '2018-11-14 00:46:08.105462', '2018-11-14 00:46:08.105492', 4),
(5, 'Extreme Chill Festival 2018', 'Reykjavík', '2019-04-24', '20:45:00.000000', 'images/1.10457.jpg', 'Íslenska tónlistarhátíðin Extreme Chill Festival verður haldin 6-9 september næstkomandi og ætlum við að fagna því með því að bjóða upp á Early bird passa, 100 fyrstu passarnir á einstöku verði - 5900 Kr en fullt passa verð er 8900 kr.', 'Other', '2018-11-14 00:48:46.618489', '2018-11-14 00:48:46.618532', 4),
(6, 'The Las Vegas Christmas', 'Gamla Bíó Salur', '2019-07-24', '21:00:00.000000', 'images/1.10380.jpg', 'Þessir einstöku tónleikar eru nú orðnir fastur liður á aðventu landsmanna og hafa fengið feikna góða dóma fyrir frábæran flutning, skemmtanagildi og fagmennsku í alla staði. Geir sjálfur er frábær söngvari og skemmtikraftur.', 'Other', '2018-11-14 00:51:42.144591', '2018-11-14 00:51:42.144624', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `events_event`
--
ALTER TABLE `events_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_event_user_id_id_97d27c9e_fk_auth_user_id` (`user_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events_event`
--
ALTER TABLE `events_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `events_event`
--
ALTER TABLE `events_event`
  ADD CONSTRAINT `events_event_user_id_id_97d27c9e_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
