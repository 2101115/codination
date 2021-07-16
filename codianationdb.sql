-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 10:29 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codianationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_book`
--

CREATE TABLE `app1_book` (
  `id` bigint(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `pages` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` date NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_book`
--

INSERT INTO `app1_book` (`id`, `title`, `isbn`, `pages`, `price`, `stock`, `description`, `imageUrl`, `status`, `date_created`, `category_id`) VALUES
(1, 'Harry Potter And WItch', '9780747532743', 90, 8000, 10, 'arry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).', 'https://www.google.com/search?q=images+of+harry+potter&rlz=1C1RXQR_enIN954IN954&sxsrf=ALeKk010KyIlc-TOXOddtEHOCAqDlyKmdA:1626354977373&tbm=isch&source=iu&ictx=1&fir=7Qmv3i-oYnYOCM%252CXs65WE37TarmxM%2', 1, '2021-07-15', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_category`
--

CREATE TABLE `app1_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_category`
--

INSERT INTO `app1_category` (`id`, `title`) VALUES
(1, 'Lifestyles'),
(2, 'Electronics and Mobile Phones'),
(3, 'Home Utensils'),
(4, 'Software Developments'),
(5, 'Thriller'),
(6, 'Adventure'),
(7, 'Suspense'),
(8, 'Groceries'),
(9, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `app1_product`
--

CREATE TABLE `app1_product` (
  `id` bigint(20) NOT NULL,
  `product_tag` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` date NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_product`
--

INSERT INTO `app1_product` (`id`, `product_tag`, `name`, `price`, `stock`, `imageUrl`, `status`, `date_created`, `category_id`) VALUES
(1, 'P5001', 'Sony Head Phones', 900, 7, 'https://www.google.com/search?q=Sony+Head+Phones&rlz=1C1RXQR_enIN954IN954&sxsrf=ALeKk00bpi3VBHDiBhI7FVMXrCxc-WIV3A:1626355201613&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj58cegleXxAhUnwjgGHcIzAzgQ_AUoAnoE', 1, '2021-07-15', 2),
(2, 'P5002', 'Asus', 2500, 5, 'https://www.google.com/search?q=Sony+Head+Phones&rlz=1C1RXQR_enIN954IN954&sxsrf=ALeKk00bpi3VBHDiBhI7FVMXrCxc-WIV3A:1626355201613&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj58cegleXxAhUnwjgGHcIzAzgQ_AUoAnoE', 1, '2021-07-15', 2),
(3, 'p5003', 'Blender', 350, 10, 'https://www.google.com/search?q=images+of+harry+potter&rlz=1C1RXQR_enIN954IN954&sxsrf=ALeKk010KyIlc-TOXOddtEHOCAqDlyKmdA:1626354977373&tbm=isch&source=iu&ictx=1&fir=7Qmv3i-oYnYOCM%252CXs65WE37TarmxM%2', 1, '2021-07-15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add book', 9, 'add_book'),
(34, 'Can change book', 9, 'change_book'),
(35, 'Can delete book', 9, 'delete_book'),
(36, 'Can view book', 9, 'view_book');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$T6120h7kl9QjKA9LQXvMLn$/2AWKV0+0f/FPhREOT5MsRcyPxLLro6pTnbMuur4XiE=', '2021-07-15 13:05:32.615576', 1, 'admin', '', '', 'saurabhdhawan7399@gmail.com', 1, 1, '2021-07-15 13:01:06.985445');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-07-15 13:10:21.735526', '1', 'Lifestyles', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-07-15 13:10:52.867107', '2', 'Electronics and Mobile Phones', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-07-15 13:11:09.510835', '3', 'Home Utensils', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-07-15 13:11:25.566846', '4', 'Software Developments', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-07-15 13:11:30.087175', '5', 'Thriller', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-07-15 13:11:34.949094', '6', 'Adventure', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-07-15 13:11:41.086771', '7', 'Suspense', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-07-15 13:12:19.530372', '8', 'Groceries', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-07-15 13:13:00.305727', '9', 'Home Appliances', 1, '[{\"added\": {}}]', 8, 1),
(10, '2021-07-15 13:17:22.335838', '1', 'Harry Potter And WItch', 1, '[{\"added\": {}}]', 9, 1),
(11, '2021-07-15 13:22:58.935513', '1', 'P5001 Sony Head Phones', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-07-15 13:23:38.231047', '2', 'P5002 Infinix 6', 1, '[{\"added\": {}}]', 7, 1),
(13, '2021-07-15 13:24:15.099599', '3', 'p5003 Blender', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'app1', 'book'),
(8, 'app1', 'category'),
(7, 'app1', 'product'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-15 12:19:41.797642'),
(2, 'auth', '0001_initial', '2021-07-15 12:19:42.468900'),
(3, 'admin', '0001_initial', '2021-07-15 12:19:42.572840'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-15 12:19:42.584789'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-15 12:19:42.596780'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-15 12:19:42.652726'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-15 12:19:42.700695'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-07-15 12:19:42.720637'),
(9, 'auth', '0004_alter_user_username_opts', '2021-07-15 12:19:42.728662'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-07-15 12:19:42.768650'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-07-15 12:19:42.772647'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-15 12:19:42.784627'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-07-15 12:19:42.804637'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-15 12:19:42.820756'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-07-15 12:19:42.844755'),
(16, 'auth', '0011_update_proxy_permissions', '2021-07-15 12:19:42.856713'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-15 12:19:42.884672'),
(18, 'sessions', '0001_initial', '2021-07-15 12:19:42.928779'),
(19, 'app1', '0001_initial', '2021-07-15 12:59:33.102951');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9v5nmpgc003o5xzh6hpik62bbacuz2bx', '.eJxVjEEOwiAQRe_C2pAOlmHq0n3P0AwMSNVAUtqV8e7apAvd_vfef6mJtzVPW4vLNIu6KFCn381zeMSyA7lzuVUdalmX2etd0QdteqwSn9fD_TvI3PK3TmSEoqB3tgPqBMj0aDkhRudIok92sMl7iwE6YCLbOwoDwNkZBGT1_gDaaTcq:1m413U:z1XgCHN6YrwJj2UQXyS5MzYoTBAv9TMr1j0bNDD5r0w', '2021-07-29 13:05:32.619536');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_book`
--
ALTER TABLE `app1_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_book_category_id_5714fee5_fk_app1_category_id` (`category_id`);

--
-- Indexes for table `app1_category`
--
ALTER TABLE `app1_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_product`
--
ALTER TABLE `app1_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_product_category_id_cc5a3c69_fk_app1_category_id` (`category_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_book`
--
ALTER TABLE `app1_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_category`
--
ALTER TABLE `app1_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app1_product`
--
ALTER TABLE `app1_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_book`
--
ALTER TABLE `app1_book`
  ADD CONSTRAINT `app1_book_category_id_5714fee5_fk_app1_category_id` FOREIGN KEY (`category_id`) REFERENCES `app1_category` (`id`);

--
-- Constraints for table `app1_product`
--
ALTER TABLE `app1_product`
  ADD CONSTRAINT `app1_product_category_id_cc5a3c69_fk_app1_category_id` FOREIGN KEY (`category_id`) REFERENCES `app1_category` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
