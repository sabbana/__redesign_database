-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2016 at 02:44 AM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ibf_activity`
--

CREATE TABLE IF NOT EXISTS `ibf_activity` (
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `activity_location` varchar(100) NOT NULL,
  `activity_pic` varchar(100) NOT NULL,
  `activity_description` text,
  `activity_date_start` datetime DEFAULT NULL,
  `activity_date_end` datetime DEFAULT NULL,
  `activity_image` varchar(100) DEFAULT NULL,
  `activity_create_date` datetime DEFAULT NULL,
  `activity_update_date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_activity`
--

INSERT INTO `ibf_activity` (`activity_id`, `activity_name`, `activity_location`, `activity_pic`, `activity_description`, `activity_date_start`, `activity_date_end`, `activity_image`, `activity_create_date`, `activity_update_date`) VALUES
(1, 'Pengajian KH Anwar Zahid', 'Rumah IB', 'Mas Sabbana', 'Acara diselenggarakan untuk umum dan untuk memperingati hari jadi Ilmu Berbagi Yogyakarta', '2016-04-13 06:46:26', '2016-04-14 06:46:26', '8e79279f4959b1602921e0cd0c9b54e5_t.jpg', '2016-04-13 06:49:22', '2016-04-13 06:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `ibf_app`
--

CREATE TABLE IF NOT EXISTS `ibf_app` (
  `app_id` int(11) NOT NULL,
  `app_name` varchar(20) NOT NULL,
  `app_url` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_app`
--

INSERT INTO `ibf_app` (`app_id`, `app_name`, `app_url`, `date_create`) VALUES
(1, 'member', 'http://member.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(2, 'blog', 'http://blog.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(3, 'jurnal', 'http://jurnal.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(4, 'quote', 'http://quote.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(5, 'market', 'http://market.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(6, 'chanel', 'http://channel.ilmuberbagi.or.id', '2016-03-21 23:04:40'),
(7, 'mitra', 'http://mitra.ilmuberbagi.or.id', '2016-03-21 23:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `ibf_article`
--

CREATE TABLE IF NOT EXISTS `ibf_article` (
  `article_id` int(11) NOT NULL,
  `article_category` int(11) DEFAULT NULL,
  `article_title` varchar(100) NOT NULL,
  `article_content` text,
  `article_author` int(11) DEFAULT NULL,
  `article_reviewer` int(11) DEFAULT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `article_tags` varchar(200) DEFAULT NULL COMMENT 'json format',
  `article_approve` tinyint(1) DEFAULT '0',
  `article_date_input` datetime DEFAULT NULL,
  `article_date_update` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_article`
--

INSERT INTO `ibf_article` (`article_id`, `article_category`, `article_title`, `article_content`, `article_author`, `article_reviewer`, `article_image`, `article_tags`, `article_approve`, `article_date_input`, `article_date_update`) VALUES
(1, 1, 'Developing Ilmu Berbagi Foundation Portal', 'Pengembangan aplikasi portal ilmu berbagi dilatarbelakangi perkembangan aplikasi dan layanan yang semakin bertambah, serta meningkatnya antusias masyarakat luas terhadap ilmu berbagi foundation. <br>Banyak kalangan pemuda yang menginginkan bergabung dengan gerakan bernagi berkelanjutan.<br><br><img src="http://ilmuberbagi.or.id/wp-content/uploads/2014/03/copy-LOGO11.png" alt=""><br><br>dengan adanya portal ilmu berbagi foundation, kami berharap masyarakat luas dapat lebih dengan mudah mengenal dan memanfaatkan layanan-layanan yang kami kembangkan. baik layanan untuk saling berbagi maupun layanan-layanan lain yang nantinya dapat membantu para donatur untuk berdonasi.<br>', 122, NULL, NULL, '["portal","develop"]', 1, '2016-04-02 11:14:08', '2016-04-07 16:43:51'),
(2, 1, 'Pengenalan HTML', '<p>HTML (Hyper Text Markup Language) adalah sebuah bahasa markup yang digunakan untuk membuat sebuah halaman web dan menampilkan berbagai informasi di dalam sebuah browser Internet. Bermula dari sebuah bahasa yang sebelumnya banyak digunakan di dunia penerbitan dan percetakan yang disebut dengan SGML (Standard Generalized Markup Language), HTML adalah sebuah standar yang digunakan secara luas untuk menampilkan halaman web. HTML saat ini merupakan standar Internet yang didefinisikan dan dikendalikan penggunaannya oleh World Wide Web Consortium (W3C).</p><p>HTML berupa kode-kode tag yang menginstruksikan browser untuk menghasilkan tampilan sesuai dengan yang diinginkan. Sebuah file yang merupakan file HTML dapat dibuka dengan menggunakan browser web seperti Mozilla Firefox atau Microsoft Internet Explorer. HTML juga dapat dikenali oleh aplikasi pembuka email ataupun dari PDA dan program lain yang memiliki kemampuan browser.</p><p>HTML dokumen tersebut mirip dengan dokumen teks biasa, hanya dalam dokumen ini sebuah teks bisa memuat instruksi yang ditandai dengan kode atau lebih dikenal dengan TAG tertentu. Sebagai contoh jika ingin membuat teks ditampilkan menjadi tebal seperti: TAMPIL TEBAL, maka penulisannya dilakukan dengan cara: <b>TAMPIL TEBAL</b>. Tanda <b> digunakan untuk mengaktifkan instruksi cetak tebal, diikuti oleh teks yang ingin ditebalkan, dan diakhiri dengan tanda </b> untuk menonaktifkan cetak tebal tersebut.<br><br></p>', 200, NULL, NULL, '["teknologi","html","web"]', 1, '2016-04-07 16:46:34', '2016-04-07 17:02:29'),
(3, 5, 'asd', '<p>sadasda</p>', 271, NULL, NULL, '["asd"]', NULL, '2016-04-11 21:35:10', '2016-04-11 21:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `ibf_article_category`
--

CREATE TABLE IF NOT EXISTS `ibf_article_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `count_article` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_article_category`
--

INSERT INTO `ibf_article_category` (`category_id`, `category_name`, `count_article`) VALUES
(1, 'Teknologi', 2),
(2, 'Science', 0),
(3, 'Kesehatan', 0),
(4, 'Budaya', 0),
(5, 'Bahasa', 1),
(6, 'Pendidikan', 0),
(7, 'Lingkungan', 0),
(8, 'Umum', 0),
(9, 'Ekonomi', 0),
(10, 'Info Beasiswa', 0),
(11, 'Tips & Trick', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ibf_article_comment`
--

CREATE TABLE IF NOT EXISTS `ibf_article_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_article_id` int(11) DEFAULT NULL,
  `comment_author` varchar(50) NOT NULL,
  `comment_author_email` varchar(50) DEFAULT NULL,
  `comment_author_url` varchar(100) DEFAULT NULL,
  `comment_author_ip` varchar(50) DEFAULT NULL,
  `comment_content` text,
  `comment_approved` tinyint(1) DEFAULT '0',
  `comment_date_input` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ibf_asset`
--

CREATE TABLE IF NOT EXISTS `ibf_asset` (
  `asset_id` int(11) NOT NULL,
  `asset_name` varchar(50) DEFAULT NULL,
  `asset_url` varchar(100) DEFAULT NULL,
  `asset_url_thumb` varchar(100) DEFAULT NULL,
  `asset_description` text,
  `asset_create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ibf_member`
--

CREATE TABLE IF NOT EXISTS `ibf_member` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_email` varchar(50) NOT NULL,
  `member_username` varchar(20) DEFAULT NULL,
  `member_password` varchar(32) DEFAULT NULL,
  `member_ibf_code` varchar(15) DEFAULT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>suspend; 1=>active'
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_member`
--

INSERT INTO `ibf_member` (`member_id`, `member_name`, `member_email`, `member_username`, `member_password`, `member_ibf_code`, `member_status`) VALUES
(2, 'Adityo Abdi Nugroho', 'adityo.abdi@gmail.com', 'adityo.abdi', '7d0c564ef0fdbeb313e4d17fd3c23a44', 'IBF1401010', 1),
(3, 'Raden Andhika Novian P N', 'akangbadai@gmail.com', 'badaaii', '8cca1f882a80def9156f4e7687d308a5', 'IBF1401014', 1),
(4, 'Ardi', 'ardibersemangat@gmail.com', 'arditimika', '856bd8666ebfced39c6d5975a7c86a66', 'IBF1408001', 1),
(5, 'Sagita Nindyasari', 'sagitanindyasari@gmail.com', 'gitanindy', '76e9e31edc1dc42e59737858f7d14d15', 'IBF1401011', 1),
(6, 'Ardiansyah', 'me@ardisragen.net', 'ardisragen', '52981ca08596e34d10d4c1acca384558', 'IBF1401001', 1),
(8, 'Faradina Harumi', 'faradina.harumi@yahoo.com', 'dina', 'e274648aed611371cf5c30a30bbe1d65', 'IBF1402012', 1),
(9, 'Andini Imaniar Putri', 'andiniimaniarputri@gmail.com', 'andiniimaniar', '1a2a53768b52cf05758a8fd6af7069a6', 'IBF1401003', 1),
(10, 'Zulfatul Mulki', 'mulki399@gmail.com', 'zulfamulki', '66d3f0c1d087624938630c7e5cb14612', 'IBF1401030', 1),
(12, 'Faradilah Umami', 'faradilahumami@gmail.com', 'Faradilah_umami', 'a0b878fdf4419c5046cce1776ff52e5e', 'IBF1402002', 1),
(13, 'Nenden Sekar Arum Nurannisaa', 'nendensan@gmail.com', 'nendensan', '9fbe16dd8e36d06225f5116db3866169', 'IBF1401015', 1),
(14, 'Lutfiah Sahabuddin', 'lutfiahsahabuddin@yahoo.co.id', 'lutfiah', 'e7714780b1dafe3ab6fe9839526e0419', 'IBF1409001', 1),
(15, 'Jaya Muslimin', 'jayamuslimin@yahoo.com', 'jayadepok', '70c836c3fdab5adcff1b61440f4e47e3', 'IBF1401005', 1),
(16, 'Alfian Yuda Permana', 'Alfianyudap@gmail.com', 'Alfianyudap', 'a68bc21c749581c4ea3a6fb8680ed658', 'IBF1401027', 1),
(17, 'Muhammad Yuliansya Idul Adha', 'yuliansya.adha@gmail.com', 'yhulians', 'f412b297764dded4b1e0bc667d8ac418', 'IBF1401018', 1),
(18, 'Ridahwati', 'kharerey@gmail.com', 'ryeedha_hikaru', '1e29c648801d127aa42700b542a8603f', 'IBF1412001', 1),
(19, 'Rahmatullah Yosi Nurrahman', 'r.masyosi@gmail.com', 'mas_yosi', '7d30440281b17dbd53253fb070b56984', 'IBF1402014', 1),
(20, 'Arenda Dhamar Pisceta', 'Arendapisceta@yahoo.co.id', 'ArendaMardiko', '28e9de20f6563c9264b5538a1eff071f', 'IBF1401009', 1),
(21, 'Murni Handayani', 'murnie_h@yahoo.com', 'MurniHandayani', '8a20f83bfe59c7eb2b8976dda9e77a26', 'IBF1401006', 1),
(22, 'Muhammad Syafrudin', 'just.udin@yahoo.com', 'justudin', '3b107c151963708d8f4b3d883ad1ffe8', 'IBF1407002', 1),
(23, 'Peni Kusumasari', 'penimomo36@gmail.com', 'peniemomo', 'edec656298d019ed62f327b790aae9b8', 'IBF1402003', 1),
(24, 'Fitria Larantika', 'cidcidcuiidd@gmail.com', 'cuiidd', 'e7aaaaa0d917a71e15c2a299c3e5ca48', 'IBF1402020', 1),
(25, 'Budi Putra Ramadhan', 'admin@budiputra.web.id', 'bud1gata', 'dfef8b030019398ef385f967507b723d', 'IBF1402015', 1),
(26, 'Gita Lestari', 'lestari.gita89@gmail.com', 'gistrong', '5e52fb4a97d4397f92858b81478833c0', 'IBF1401020', 1),
(27, 'Pulung Nursiyanta', 'pulung.nursiyanta@gmail.com', 'pulung', '47980fa21d0524a01d67f717aeec0ac4', 'IBF1402009', 1),
(28, 'Khamdani Ali Mashud', 'admin@dafhy.net', 'dafhy', '22276452ed655a977187c96d9115964c', 'IBF1402028', 1),
(29, 'Nanda Pramudya Wardani', 'nandawardani78@gmail.com', 'nandya', 'cfc01bcd25356cc0c5484ece0f3b6822', 'IBF1401021', 1),
(30, 'Fahri Gunawan', 'fahrigunawan23@gmail.com', 'fahriguna', '513829b719afd8cd2c36a001b63f8d3b', 'IBF1401013', 1),
(31, 'Dinar Arga Prasetyo', 'dinar.arga@gmail.com', 'Dinar Arga', 'f235080af269e7d63af50daf8eee1833', 'IBF1401067', 1),
(32, 'Fahrul Rizal', '', 'fahrul', '9b5317575f071bdccef2175b72191004', 'IBF1410002', 1),
(34, 'Dian Agustintari', 'pelangidee@gmail.com', 'pelangidee', '43d5f95349b8bc7653437144e66f51ef', 'IBF1401019', 1),
(35, 'Aziz Fajar Mursalin', 'azizharrington@rocketmail.com', 'Aziz Mursalin', 'b6886fb62642023c310218457889b944', 'IBF1402005', 1),
(36, 'Yudhi Agus Triyono', 'mail@yudhiagus.com', 'yudhiagust', '95be9ee2d86169f8b2417af42c5be98b', 'IBF1402011', 1),
(37, 'Ismawati', 'ismaismaw@gmail.com', 'Isma Ismawati', 'b371269decc4802de99a13db64ea3d97', 'IBF1401034', 1),
(38, 'Imrizal Pratama', 'imrizalpratama@gmail.com', 'imrizal', '945d49c8d5433c536fd6792195d0eec7', 'IBF1410006', 1),
(39, 'Aditya Dwi Putra', 'adityainteristi@gmail.com', 'aditya', '057829fa5a65fc1ace408f490be486ac', 'IBF1402010', 1),
(40, 'Akhmad Fuad', 'akhmad.fuad20@yahoo.com', 'akhmadfuad', '8d88400f91b5c333b3bf9fd395ff047c', 'IBF1401033', 1),
(41, 'Andina Setyaning Rahayu', 'andinmbm@gmail.com', 'andinarahayu', 'ab7df75974113f5084241ef47abd1d86', 'IBF1405005', 1),
(42, 'Riza Adrian Soedardi', 'rzichak@ymail.com', 'rizaasz', '7e0f36d261e5c248fae99e84d88ae21b', 'IBF1400042', 1),
(43, 'Eka Pitri Yanti', 'ekapitrichaniago@yahoo.co.id', 'eka pitri yanti', '98f53b7c70a235bb6830841b22b13c33', 'IBF1400043', 1),
(45, 'Kurnia Agustin', 'ananfetyara@gmail.com', 'kurniafetyara', '878962da2e7fa11d6c89b79b4a5b9c86', 'IBF1401035', 1),
(46, 'Alfi Lailiyah', 'lailiyahalfi@ymail.com', 'Alfi Lailiyah', '45128bb6a42fadd727f3d4dca3511f3a', 'IBF1401060', 1),
(50, 'Auliya Yuliyandri Ansari', 'auliyayuliyandri@gmail.com', 'Auliya Yuliyandri An', 'e59a66d9a17732efa7fa1028e40f233a', 'IBF1410004', 1),
(51, 'Taufal Hidayat', 'taufalhidayat4690@gmail.com', 'taufal.hidayat', '34d08e7e85d33b96e47908b329483c4c', 'IBF1410009', 1),
(52, 'Tri Syahudi Faizal', 'st.faizal', 'FaizalST', '49b1a7417370dc9a34025344550a2594', 'IBF1402052', 1),
(53, 'Gilang Bhagaskara', 'gilangbhagaskara@live.com', 'gilang', 'c37fddfb7b3f538674c6e9a77e7bf486', 'IBF1401023', 1),
(54, 'Agus Sazali Zainal', 'agus.sazali@yahoo.com', 'agus', 'fdf169558242ee051cca1479770ebac3', 'IBF1401026', 1),
(55, 'Rihardian Maulana Wicaksono', 'rian_ind@yahoo.co.id', 'rihardian90', 'e34fb5de3da2655564d42ab05956561e', 'IBF1401028', 1),
(56, 'Pratami Puji Rahayu', 'ami_ppr@yahoo.com', 'amippr', '0755cb55c08a75623072eba8f8784881', 'IBF1402013', 1),
(57, 'Desty Ayu Permatasari', 'destyayu.enviro@gmail.com', 'destyayu', '712d893d9be774fe0b6f146bef025b91', 'IBF1401012', 1),
(58, 'Nur Adila', 'dila0424@gmail.com', 'dila', '35862fcf105f1aaa0b4f29ca71b96236', 'IBF1405058', 1),
(59, 'Lilies Heryani', '', 'lilies her', '0abfed9df371f717b0ec3ebdb1d969e6', 'IBF1401022', 1),
(60, 'Ismail Sunni', 'imajimatika@gmail.com', 'ismailsunni', 'efe1f28f9a43c7fa559843694af3a286', 'IBF1402060', 1),
(67, 'Mulyani Pratiwi', 'mulyani.pratiwi@gmail.com', 'mulyanipratiwi', '91196998eab702c82152d51352e965ae', 'IBF1401016', 1),
(70, 'Rachmat Aditiya', 'radit@haragreen.com', 'raditiya', 'c3121a44ba8ca8826ecd913d5de4463b', 'IBF1402001', 1),
(71, 'Agus Hidayatulloh', 'hidayatulloh.agus@gmail.com', 'kisara', '4902984ebda55604416c0fcc3c91be96', 'IBF1402022', 1),
(72, 'Pradiptya Setyahadi', 'diptyasaintek@gmail.com', 'raditart', 'edeedf161323f4edf9ff36c56ae679c0', 'IBF1402025', 1),
(73, 'Muhaimin', 'el.muhaimin@gmail.com', 'Muhaimin', 'e16d9c023878981c9f4d3ff73e4401ff', 'IBF1405073', 1),
(74, 'Mahfida Ustadzatul Ummah', 'dataakong@yahoo.com', 'vida', 'd1fded22db9fc8872e86fff12d511207', 'IBF1401074', 1),
(75, 'Muhammad Alfiansyah', 'valeys89@gmail.com', 'Muhammad Alfiansyah', 'f0879349f5dc9e4898d78ea0cd3c44ca', 'IBF1402075', 1),
(76, 'Ervan Yogi Arifianto', 'ervan.yogi@gmail.com', 'ervan', 'd50346b92e6564381ec829f3daaadf3c', 'IBF1402006', 1),
(77, 'Nurina Jatiningsih', 'nurinajatiningsih@gmail.com', 'Nurina Jatiningsih', '030a29690ee11587ce79014786eceb8e', 'IBF1402077', 1),
(78, 'Cahya Adijana Nugraha', 'cahya.sragen@gmail.com', 'cahyasragen', '0dbdf512530769df00d96579ca35b70a', 'IBF1402078', 1),
(79, 'Verda nur zahra', 'Verdanurzahra@yahoo.com', 'Verdanurzahra', '22c60fcd617ceadc61656ee05ea2ee5e', 'IBF1401079', 1),
(80, 'Sutara', '', 'sutara_cim', 'a020966fbc91d787396713c595e6e4f7', 'IBF1401080', 1),
(81, 'Siti Jihan Syahfauziah', 'jihansyahfauziah@gmail.com', 'jihanfauziah', 'd633b0eef974a435a0d0447b87600afa', 'IBF1403081', 1),
(82, 'Isman Anshori', 'isman_a@yahoo.com ', 'isman.anshori', '79f98344f7e61ec60270ba839efd1904', 'IBF1401082', 1),
(83, 'Praja Hartata', 'prajahartata@gmail.com', 'praja', '57612fb702d61861916dab3a973f9669', 'IBF1401083', 1),
(84, 'Alfan Presekal', 'alfanpresekal@hotmail.co.uk', 'alfanpresekal', '23c8f78c1f5078fb7830781353a8117d', 'IBF1402084', 1),
(85, 'Anita Rahmawati', 'rwtanita@gmail.com', 'AnitaRwt', '24eda10f1ac7138dafe3531a539d6c20', 'IBF1401085', 1),
(86, 'Derry Adhi Prasetyo', 'derryadhi@gmail.com', 'Derryadhi', '190dfb0d5d5f209159e6d008812f87d1', 'IBF1401086', 1),
(87, 'Hardina Fitri Amalia', 'hardina_fitri@yahoo.com', 'hardina.fitri', 'd5fa8cee0f1b2b86947a1a94d57597d6', 'IBF1402087', 1),
(88, 'Yan Kumala', 'mala.kum21@gmail.com', 'Yan Kumala', 'c9b236eb9091aaf83094da688fb741a0', 'IBF1401088', 1),
(89, 'Lenggo Geni', 'de_flamboyan87@yahoo.co.id', 'lenggo', 'f8fe5612b310fb966596ce8d6385e84e', 'IBF1401089', 1),
(90, 'Rahmatia Narika', 'rahmatianarika@rocketmail.com', 'rahmatia', '17a0b5b63adbbdcc5d96c1bd55671537', 'IBF1402090', 1),
(91, 'Frielia Dwi Andriani', 'frieliaandriani@gmail.com', 'frielia', '34e4b2d4ce0bb8fc33c4e29a1d7108f4', 'IBF1402091', 1),
(92, 'Sarah Citra Jelita', 'scitrajelita@yahoo.co.id', 'chitajelitass', 'ff2e7f0b4634c5a90d481e8c751904bf', 'IBF1401092', 1),
(93, 'Agnes Agatha', 'agnes.agatha17@gmail.com', 'agnesagatha17', '8eb8c151dfffc5cddf58a86f8e1a9d6c', 'IBF1401093', 1),
(94, 'Mona Lusia Manihuruk', 'mona_manihuruk@ymail.com', 'Mona Lusia Manihuruk', 'f664b8d91d4d820cc6220008ea7b55d3', 'IBF1401094', 1),
(95, 'Silvia Anggriani', 'silvia.anggriani81@gmail.com', 'silvia.anggriani', '9ba800469f63e04dcde9e7f7bc381c2e', 'IBF1402095', 1),
(96, 'Tusi Wahyuni', 'sariaagengprasetyo@gmail.com', 'tusiwahyuny', '8299ffb1da2c7a5938c400d4dc060aa3', 'IBF1405096', 1),
(97, 'Langlang Gumilar', 'langlanggumilar@gmail.com', 'langlanggumilar', '7cd0b9b40c6c02d19fb1b30f94c77708', 'IBF1401097', 1),
(98, 'Fajrin Satria Dwi Kesumah', 'fajrinsatriagepare@gmail.com', 'fajrinsatria', 'ef0716890ee1af7151ee4a276cfe5157', 'IBF1401098', 1),
(99, 'Ayu Sandiningtias', 'ayu.sandiningtias@gmail.com', 'nirmaayu', '97545808513634e9e79bd2b526d54509', 'IBF1401099', 1),
(100, 'Artha Lia Emilda', 'artha.emilda@yahoo.de', 'arthaemmy', 'c33d6f22b8fcb04666d1b30d65f94ab8', 'IBF1401100', 1),
(101, 'Fransiskus SM Sitanggang', 'franzcicuz@gmail.com', 'fransitanggang', '9d4f86abe61c4dda2dd82ff0e568695d', 'IBF1401101', 1),
(102, 'Sri Suyono', 'sri_soeyono@yahoo.co.id', 'sri_suyono', '76e2f17a28032a5dff0fc8157a31ec30', 'IBF1402102', 1),
(103, 'Slamet Hadi Prasetyo', 'shadip84@gmail.com', 'cr@xyo', '459b3c2ceb70f312817c5244ffd47da8', 'IBF1402103', 1),
(104, 'Fivtinia Octagusni, SS.', 'fivtinia@yahoo.com', 'fivtinia', 'cbc48b6d13f183239dcf101ebb5b6c4d', 'IBF1405104', 1),
(105, 'Muhammad Dzulfikar fauzi', 'dzulfikar1234567@gmail.com', 'dzulfikar', 'd38868e3d173c94033f60884cb2ba279', 'IBF1402105', 1),
(106, 'Fadli Ikhsan Pratama', 'fadliriset@gmail.com', 'fadliriset', '3ed851081740c7dee77a288bb6ef87a0', 'IBF1401106', 1),
(107, 'Eka Puspita Sari', 'ekahiupink@gmail.com', 'eka.puspita21', 'ba655a870962833539572fa8891807fd', 'IBF1401107', 1),
(108, 'Laila Wahyu Romadhoni ', 'lailawahyu33@gmail.com', 'laila', 'f30618ed64655812746272636a992b95', 'IBF1402108', 1),
(109, 'indra nugraha', 'indranugraha20@gmail.com', 'indranugraha', 'eb618a3b2c23363c4b269cfae05beeb8', 'IBF1401109', 1),
(110, 'Riza Savina Abdillah', '2324june@gmail.com', 'rizasavina', 'df25ee7b0913fc670640b49af01b579a', 'IBF1401110', 1),
(111, 'Imam buchari', 'bassist.viryzelle@gmail.com', 'hori_buchari', '49c89b10d6bf3504a802e009476c1033', 'IBF1401111', 1),
(112, 'Wahyu Budi Argo', 'wahyu.budiargo@yahoo.com', 'budiargo', '9793868eaf5d049585b0344aed85c0dc', 'IBF1405112', 1),
(113, 'Dul Ghofur', 'scout.bhara@gmail.com', 'Andra-Maullana', '6ddd8e1ec39a95a1f28f2069dda0fe27', 'IBF1402113', 1),
(114, 'Lini Anisfatus Sholihah', 'lini.anisfatus@alumni.ui.ac.id', 'linifatus', '7af379e4d4e9c7da6e52bd366714abe7', 'IBF1404114', 1),
(115, 'Umar Abdurrahim', 'UmarAbdurrahim@gmail.com', 'UmarAbdurrahim', '5006a46d86f2ac10a06d4f5a1f13a2b6', 'IBF1401115', 1),
(116, 'SiIvira Nazzai', 'all.well29@yahoo.com', 'virawell', 'e036cd5a72367ce5037553ea47b208ce', 'IBF1405116', 1),
(117, 'Rizqiyana Putri Isrokhayani', 'prizqiyana@gmail.com', 'rizqiyanaputriisrokh', '5fdb19747ff841d996c423ae8bc9701f', 'IBF1401117', 1),
(118, 'Rizal Wahyudi', 'rizal.wahyudi@gmail.com', 'rizal', '150fb021c56c33f82eef99253eb36ee1', 'IBF1401118', 1),
(119, 'Desfira Ramadhania Rousthesa', 'rousthesadesfira@gmail.com', 'rousthesad ', '493cf53e6d1e6071f7f6a1a6c3f2beb0', 'IBF1401119', 1),
(120, 'George Gompul Hutauruk', 'george.hutauruk@gmail.com', 'george.hutauruk', '3786aeeb75bae895adadc22758962817', 'IBF1401120', 1),
(121, 'Firia Nestivirani', 'vira.firia@gmail.com', 'firianest', '67980dfac9d5b417fd18a63ffa02f17e', 'IBF1401121', 1),
(122, 'Sabbana Azmi', 'sabbana.a7@gmail.com', 'sabbana', '02dfef23cb267ed2bad8dbcf61493ef5', 'IBF1402122', 1),
(123, 'Brimoresa Wahyu Dhoran Dhoro', 'dhorandhoro@gmail.com', 'dhorandhoro', '9afa881ccbd7fc525bfcaac580566649', 'IBF1401123', 1),
(124, 'Hana Nur Fathiya', 'hnfathiya@gmail.com', 'Hana Fathiya', '8c3bdce9d2567b90795dd401163b9034', 'IBF1401124', 1),
(125, 'Muhammad Rizal Zulmi', 'elmudrazul@gmail.com', 'Zulmi', '18d6949e0e1da4245fdc8590930b7511', 'IBF1401125', 1),
(126, 'Wahyu Aning Tias', 'wsinghayu@gmail.com', 'wshayu', '408338d2ca20c0b5b194cc0ef8890d89', 'IBF1404126', 1),
(127, 'Mohammad Thobib', 'sej_thobib@yahoo.com', 'thobib', '4327eae2110e8cf81a8405c8df10c24c', 'IBF1404127', 1),
(128, 'Mansurni Abadi', 'abadimansur25@gmail.com', 'theaslan', 'f0c010ec4ec2da12cfd45e69e6c85628', 'IBF1401128', 1),
(129, 'Cholifah', 'liefahzaneta@gmail.com', 'oliev', '3f403329a1a28e3fa8fe5eeecbb06e52', 'IBF1401129', 1),
(130, 'Rinda Putri Sari', 'Rindaputrisari@gmail.com', 'rindaps', '7a42e4d2477adffe8b5ff8fb1e62cf39', 'IBF1401130', 1),
(131, 'Bramantyo Wibisono', 'ipmawan.bramantyo@gmail.com', 'brmantyo', '970bfe652eb2934b8f2f46d57dc9515a', 'IBF1401131', 1),
(132, 'Aizah Fajriana Dewi Handini', 'aizahfajrianadewihandini@gmail.com', 'aizahfajriana', '7ab9d8a9f2c9fb4e4528d09cc6c72b06', 'IBF1402132', 1),
(133, 'Mertiara Ratih Terry Laksani', 'terry.dreamsy@gmail.com', 'terrymertiara', 'b746c28e0698c59da03548e4eef8465a', 'IBF1402133', 1),
(134, 'Siti Dahlia', 'Dahliasiti51@yahoo.com', 'sitidahlia', 'f6ff121c0d92d373b8cf632a1b601ca8', 'IBF1402134', 1),
(135, 'M.Hilmi Wicaksono', 'hilmi_wicaksono@yahoo.com', 'hilmi_wicaksono', 'e7bb0216270bf1ca92bbeb2c2ce3b70c', 'IBF1402135', 1),
(136, 'Febri Nurmala Dewi', 'feb89nurmala@gmail.com', 'febrinurmala', '72eee54d25f53d02b68ce2a3aa0295ac', 'IBF1402136', 1),
(137, 'Aditya Sidhi Pambayun', 'adityasidhip@yahoo.com', 'adityasidhip', 'adffe718157924ec87c24d57782a7013', 'IBF1400137', 1),
(138, 'Galih Respati Pradana Mukti', 'galih.respati@gmail.com', 'galihrespati', 'be798dc546a4cec44a234dcc83a69538', 'IBF1500138', 1),
(139, 'I Gede Wyana Lokantara', 'wyanalokantara@yahoo.co.id', 'wyanalokantara', 'becf11ecc1e8c55f578493d86f13c099', 'IBF1500139', 1),
(140, 'Arie Kurniawan', 'ariekurniawan.ayii@gmail.com', 'Yingayinggg', '911e6f8492d36fdda0e36f5fd613cac9', 'IBF1500140', 1),
(141, 'putri sri maijayanti', 'psmaijayanti@yahoo.com', 'ptrsrmjynti', '2a32f16d2440f620c49ee66651c87134', 'IBF1500141', 1),
(142, 'ranti amanda', 'ranti.amandai.ra@gmail.com', 'ranti', '78b26bc43ede55c1fe5c59a10c714c73', 'IBF1500142', 1),
(143, 'Arif Rachman', 'emailearif@gmail.com', 'arif.rachman', '9fe335b0282d3bb4ac16e907338c8862', 'IBF1500143', 1),
(144, 'luqman hakim al anshary', 'anshar29@gmail.com', 'anshar syah', '75de2b63573e4151f0a052a8764c7390', 'IBF1500144', 1),
(145, 'Upik Ayuningsih Dwi Saputri', 'upik.ayuningsih@gmail.com', 'upik', 'e60be3d916b36d76584992ba80587b74', 'IBF1500145', 1),
(146, 'Farah Azizah', 'farahazizah29@gmail.com', 'farahazizah', '68c8b97650b7fe6fcf7f8fbfd4d77c78', 'IBF1500146', 1),
(147, 'Rachma Fajrina', 'rachefajrina@yahoo.com', 'RacheFajrina', 'e04e36e498b77db88ab998495719e458', 'IBF1500147', 1),
(148, 'hani kurnia marlina', 'hanikurnia@gmail.com', 'hanikmar', '9081169829a099721409c5418fba05c2', 'IBF1500148', 1),
(149, 'Bintan Aditya Warman', 'bintanaditya@gmail.com', 'bintanaditya', '3d53a970ed7164833754475fbf2f0a86', 'IBF1500149', 1),
(150, 'Eko Puji Lestari', 'e.pujilestari25@gmail.com', 'Puput Lestari', 'd66e35eb0d4545ecf9052a04323a5244', 'IBF1500150', 1),
(151, 'nurun nisa', 'nnurun53@yahoo.com', 'nnununNS', 'c3cc910aa6103a2cd427691c690267ba', 'IBF1500151', 1),
(152, 'Ikma Hanifah Restisari', 'ikma.hanifah@gmail.com', 'ikma.hr', '63274861bc526c9355dea523706df5d1', 'IBF1500152', 1),
(153, 'Maizura Azizah Sekar Ayuningrum', 'maiimahya@gmail.com', 'Maiizura_Azizah', '5605257910a3d7c262ca4511ac708107', 'IBF1500153', 1),
(154, 'Andini Nisurahmah', 'andini.nisurahmah26@gmail.com', 'andini.nisurahmah', 'de1619c6289d851d557976855608ecd9', 'IBF1500154', 1),
(155, 'Hendry Maruf', 'naikkeatas@gmail.com', 'ultrahen', 'c7409fbc671bd62696386c349370da8e', 'IBF1500155', 1),
(156, 'Jayanthi Pradnyaparamita Fajrin', 'jpfajrin.2@gmail.com', 'JPFajrin', '7fdbb99df10001b118bc5090921a23b6', 'IBF1500156', 1),
(157, 'susiyana', 'susiyana.ana@gmail.com', 'susiyana', 'fa1965dfe73e8799aad7b746605e1a49', 'IBF1500157', 1),
(158, 'Mochamad Taufik Romdony', 'motaroirhaby@gmail.com', 'motaroirhaby', '50f1ca4c63edb86e6b1e42f466a1a045', 'IBF1500158', 1),
(159, 'uci sanusi', 'ucik.grafis@gmail.com', 'Ucik', '952653e75de7c29a7cf381afccb480ad', 'IBF1500159', 1),
(160, 'satria ageng prasetyo', 'sariaagengprasetyo@gmail.com', 'satria 44', '8614c2e26795306c10828adf5c1cfa34', 'IBF1500160', 1),
(161, 'Indah Prihandini Utami putri', 'indah_utamiputri@yahoo.co.id', 'Indah Utami Putri', 'ba8c458fc97ee8920c65481500b20b84', 'IBF1500161', 1),
(162, 'Iswadi', 'iswadinawawi7@gmail.com', 'Iswadi', '29754d542dc3e8d09a7e2cbf447ba16a', 'IBF1500162', 1),
(163, 'Djihan Djaufiaty Madubun', 'jmadubun@ymail.com', 'jmadubun@ymail.com', '8c0872b1cbc0ea6953bccb3e4f710aef', 'IBF1500163', 1),
(164, 'Noviana Ika S', 'noviana.ika.s@gmail.com', 'noviana.ika.s@gmail.', '486d2086d9df28088a46187e3a744574', 'IBF1500164', 1),
(165, 'Adhi Yudha Sucahyo', 'adhiyudha111@yahoo.co.id', 'Adhi Yudha Sucahyo', 'a79f65bc1f9bdc69dc441071c69705ff', 'IBF1500165', 1),
(166, 'ine berlina', 'ineberlina20@gmail.com', 'ine', '10578ecef46043256b0af875ea57fd49', 'IBF1500166', 1),
(167, 'M. Reno Utomo', 'otomo_reno@yahoo.com', 'renoutomo', 'd40d4486bb92b75e24fc809a19a37199', 'IBF1500167', 1),
(168, 'novian', 'novian.pandito@gmail.com', 'novian', '6753ecbb903134637fe134bbd16bc779', 'IBF1500168', 1),
(169, 'muhammad indra gunawan', 'igunfapet49@gmail.com', 'igun49', '53b673fc84183e8263d624a2cb12571b', 'IBF1500169', 1),
(170, 'Muhamad Syamsuddin', 'syamsu8690@gmail.com', 'Syamsuddin', '4857c68279c97f2792c6c117a432e278', 'IBF1500170', 1),
(171, 'ahmad subandi', 'achmedsubandy@gmail.com', 'ahmad subandi', '1f1f920af8055472d638cd563556ce16', 'IBF1500171', 1),
(172, 'Nafis Irfan', 'irfannafis023@gmail.com', 'irfan', '24b90bc48a67ac676228385a7c71a119', 'IBF1500172', 1),
(173, 'Karso Ariwahyono ', 'k_ariwahyono@yahoo.com', 'Ariwahyono', '0d1b3701d9b0b4423b825d3b59c22198', 'IBF1500173', 1),
(174, 'Muhammad Dukri', 'nadzarku@gmail.com', 'Maskrie', '99bed777c06dd7080f13dede2f404b14', 'IBF1500174', 1),
(175, 'Nur Ikah Septiani', 'nurikahseptiani.nis@gmail.com', 'ikaho', 'ec96c89fa60ae4e53a738e902d1e807a', 'IBF1500175', 1),
(176, 'Choerul umam', 'pairs_18_12_05@yahoo.co.id', 'Choerul_umam', 'ec86aa8e65f1924cd62ea217b2ffe402', 'IBF1500176', 1),
(177, 'Icha Ruslina', 'icharuslina@yahoo.com', 'icharuslina', 'b7b2f734a2a2b22e9a1bc57746e035ab', 'IBF1500177', 1),
(178, 'Sella Lestari', 'sellalestari32@yahoo.co.id', 'Sella La ', '5c0b1bd2663513f294ca9bcf2c364c8a', 'IBF1500178', 1),
(179, 'Dany Maulana', 'maul.dn@gmail.com', 'maul_ajah', '5c9217b5602e2a96b86fa8a1ae5be207', 'IBF1500179', 1),
(180, 'Gesando Nodi Nadias', 'gesandonadias@gmail.com', 'Gesando', '6d2cd9831ff2a501080c0c69c3522742', 'IBF1500180', 1),
(181, 'ACH CHOIRUL RAMADANI', 'achchoirul@gmail.com', 'Achchoirul', '545a749bb2e774217354bd6942bbc696', 'IBF1500181', 1),
(182, 'tyas arum purbaningsih', 'tyazarumpurbaningsih@yahoo.co.id', 'tyasarumpb', '378df27212afe59142172fb2a7c88484', 'IBF1500182', 1),
(183, 'Kevie Desderius', 'kevie.desderius@yahoo.co.id', 'rius0421surga', 'a2dba9fabd6bc87309f0b1606a915925', 'IBF1500183', 1),
(184, 'wati', 'wati.kang@gmail.com', 'wati kang', 'f111cbbb3647533a2caba6e9bbb3f092', 'IBF1500184', 1),
(185, 'Wahyu Rahardjo', 'wahyu_rahardjo@yahoo.com', 'wahyurahardjo', '486c44a2b917ca901f467ab3791c70a8', 'IBF1500185', 1),
(186, 'Maslihah', 'mamasegeh@gmail.com', 'mamas', 'ec89208a20651307b38c51bd4797be60', 'IBF1500186', 1),
(187, 'Mohamad Mazendi Andiyan', 'mohamad.mazendi@gmail.com', 'mazendi', '92f27c1f7ed4654204fa0f65e50cb172', 'IBF1500187', 1),
(188, 'SUBAGJA', 'subagja87@gmail.com', 'subagja', '84800b3ec50731d40eebb7a1cffb557e', 'IBF1500188', 1),
(189, 'Nurul Amaliyah Salabi', 'amaliyahsalabi@yahoo.com', 'amaliyahsalabi', 'e7abd6fe1eb3a48fc5befbcab7a85bf1', 'IBF1500189', 1),
(190, 'Ersa Mauliza', 'ersamauliza10@gmail.com', 'ermalizz', '10d414cc0d463ac0d1fa001df49d7a0b', 'IBF1500190', 1),
(191, 'Selvia Angraeni', 'angraeni.selviaa@gmail.com', 'Selviaagr', '6b2788057e66924233bcdfbb7c46497a', 'IBF1500191', 1),
(192, 'Abdul Basith', 'abasith50@gmail.com', 'abasith', '0591afdbb977c881ed2a5dd7caf596c4', 'IBF1500192', 1),
(193, 'Enzhika Fara', 'batrisyia001@yahoo.co.id', 'enzhikafy', '39ca0919c2c9f1eb152a93bfd66d84bb', 'IBF1500193', 1),
(194, 'Mohammad Reza fauzi', 'mrezafauzi666@gmail.com', 'rezamraz', 'eb18e07d010dfa83a9347d5b7bcf6603', 'IBF1500194', 1),
(195, 'seliawati', 'sanaya_ichi@yahoo.co.uk', 'seli', '67270c6b9718c5554b7b60d7968b8c5b', 'IBF1500195', 1),
(196, 'Siti Anisah', 'sitianisahnisa@gmail.com', 'sitianisah', '2bd6b806ce95f24e90fa169fab146a01', 'IBF1500196', 1),
(197, 'Herni Suminar', 'kaicantigi@gmail.com', 'kaicantigi', '8498698c6029e319e3c72affe076051d', 'IBF1500197', 1),
(198, 'Hamid Basalem', 'hamidbasalem64@gmail.com', 'HamidBasalem', '21bca721a5ca8052931355f75b62b033', 'IBF1500198', 1),
(199, 'Didik Setiawan', 'di2k.setiawan@gmail.com', 'di2k', '1c8f220e209718575b009258ca1c4d4e', 'IBF1500199', 1),
(200, 'Budi Tri Santoso', 'budi325588@gmail.com', 'budi', '00dfc53ee86af02e742515cdcf075ed3', 'IBF1500200', 1),
(201, 'Pravilian Panji Prastyo', 'pravilian.panji.prastyo@student.upi.edu', 'pravilianpras', '11d8b6e7937eb93ac62a3132f01700f8', 'IBF1500201', 1),
(202, 'Fadhila Ainurrizqi', 'fadhila031@gmail.com', 'fainurrizqi', '70b13753cfc72a35fa2d90a5ead8dbad', 'IBF1500202', 1),
(203, 'Yanti Rachmawati', 'yanti18rachma@gmail.com', 'UtsukushiiYanti', '6c5229e6d23e52c6dee2f628cf2d20c4', 'IBF1500203', 1),
(204, 'Arifin', 'Arifin114@gmail.com', 'Ari114', 'f7b88523efefdb1398813598ca294154', 'IBF1500204', 1),
(205, 'Yustia Fauziah', 'fauziahyustia@gmail.com', 'yustiaf', 'a0f097a2d87b35040c52d2f9b97e729b', 'IBF1500205', 1),
(206, 'Andriyanto Dwi Nurahmat', 'andri4ndri@gmail.com', 'leotoz', '37c4d34dba54a6b459f6fc62de2dffed', 'IBF1500206', 1),
(207, 'Irwan Sukma Darmawan', 'irwansukmadarmawan@gmail.com', 'irwansd', '52ec2caab775e93a682b76cd76fbe143', 'IBF1500207', 1),
(208, 'Azka Praditya', 'azkapradityarabbani@gmail.com', 'azkapradityarabb', 'f4ea28371539a19db0b60218d775a973', 'IBF1500208', 1),
(209, 'Galih Astiansha Putra', 'galihastiansha@gmail.com', 'galihputra', '9ce58651809667cda3c864a16ff3f8b7', 'IBF1500209', 1),
(210, 'Jaja Fatmaja', 'jajafatmaja@rocketmail.com', 'jajafatmaja', 'd228d63bd96600a3a4cc05d9bf345aa8', 'IBF1500210', 1),
(211, 'Adam Malik', 'adambinmalik@gmail.com', 'adambinmalik', 'c844ea8429433511be7a0cf696539a11', 'IBF1500211', 1),
(212, 'Irwansyah', 'irwanpidie@gmail.com', 'irwanberbagi', '95fbd0e22d7fa9ebc38f09ddc25dfa9e', 'IBF1500212', 1),
(213, 'maria rosalia yola detta', 'mariayolad@yahoo.com', 'olarosa', 'c9140fa550faf4efb2ab2af106c7934e', 'IBF1500213', 1),
(214, 'Melwin Syafrizal', 'melwin@amikom.ac.id', 'melwin', 'd7ce29db30922835724429cc8079d646', 'IBF1500214', 1),
(215, 'Tamar Naomi', 'tamarnaomi7@gmail.com', 'tamarnaomi', '9435f412255fef0edaef8d55874b6651', 'IBF1500215', 1),
(216, 'Rizqie Zakie Pahlevie', 'rizqiezakie_4@yahoo.co.id', 'zakieplv', 'c12c86701f4c6d8d280fbbac35aac108', 'IBF1500216', 1),
(217, 'HANNI YUBETRI', 'hanniyubetri@yahoo.com', 'Hannyubetri', '34628231e4d3eea3d6175d34514b2964', 'IBF1500217', 1),
(218, 'Resa Angga Kristanto', 'anggaresa89@yahoo.com', 'resa1989', '362d37daa819ff0535d69df11ec9ee50', 'IBF1500218', 1),
(219, 'ilham rusdiansyah', 'ilham@rajaschool.com', 'rajaschool', 'def23220944c3f95e0ddde30acb3c64e', 'IBF1500219', 1),
(220, 'Deris Hendriawan', 'deris.hendriawan@gmail.com', 'deris.hendriawan', 'cafc0414799e709662e657377fe12343', 'IBF1500220', 1),
(221, 'Muhaemin', 'muhaemin12@mhs.uinjkt.ac.id', 'Muhaemin', 'e37ffd564a828a65d1e99da2d3ad6c26', 'IBF1500221', 1),
(222, 'sri yuningsih', 'sriyuningsih4@gmail.com', 'jenksri72', '2eb7471a3b71bd4ac872ccee301e8c78', 'IBF1500222', 1),
(223, 'Tsumi Raissa', 'raissa_0109@rocketmail.com', 'tsumiraissa', '60b0c8d4c487a72592cbf671b1d7e9e3', 'IBF1500223', 1),
(224, 'intan savira firdaus', 'insafirdaus@gmail.com', 'iin', 'f6a2e5ede47e66c7212ffaa258b7f5c8', 'IBF1500224', 1),
(225, 'Emilia Dian Prabawati', 'emiliaprabawati@gmail.com', 'emiliadian', '8b6057a70dd47bd51f869ab785ea4d60', 'IBF1500225', 1),
(226, 'anis khoyrunnisa', 'anis.khoyrunnisa@gmail.com', 'aniskhoyrunnisa', '57d4e4ed93291851b6f39a367d7339a5', 'IBF1500226', 1),
(227, 'Edi Mulyadi', 'Edipile_indonesia@yahoo.com', 'edipile_indonesia@ya', '789606feb03af1951b693191fc97a730', 'IBF1500227', 1),
(228, 'Novan Santoso', 'santoso.novan@gmail.com', 'neovaan', 'a48644553ada92fa6c991799fc1278c0', 'IBF1500228', 1),
(229, 'Annisa Wahyuni', 'annisawahyuni20@gmail.com', 'Annisa wahyuni', '8a2a2ea9e8039723e5aa089bd24b24a7', 'IBF1500229', 1),
(230, 'Putri Juwita Permatahati', 'putrijuwitap@yahoo.co.id', 'Juwipermatahati', 'b4e47510919be22acedc0bf0eecd5100', 'IBF1500230', 1),
(231, 'oktaviani ayu puspa', 'oktanyaonta@gmail.com', 'oceta', 'ee9d77e55707a7f283368916df1aa4c2', 'IBF1500231', 1),
(232, 'Fitria Nur Andini', 'fitria.andini@gmail.com', 'fitria.andini', '70c9152255b35c9a358a17e64401341b', 'IBF1500232', 1),
(233, 'DIAH LISTYANINGSIH', 'diah.listyaningsih@gmail.com', 'diahln', '9e539156885a790732b804827a7f1890', 'IBF1500233', 1),
(234, 'elfikrie andross', 'elfikrie.andross@gmail.com', 'andross', 'd7694759ac1d28882d7c6a822f133e11', 'IBF1500234', 1),
(235, 'Jajang Permana Jaya', 'jajangpermanajaya@gmail.com', 'Redja', '1d307173160eb38594b04537bf2ef06b', 'IBF1500235', 1),
(236, 'eva fauzia', 'vafu_zia@yahoo.co.id', 'vafu', '1b4ea2cfdfbf782814b3a7baa11d8192', 'IBF1500236', 1),
(237, 'jamadul khairi', 'jamadulkhairi@yahoo.com', 'jamadul', '4b0e3b962e03bb7340015c4d42a6b275', 'IBF1500237', 1),
(238, 'Dyah Ayu Saraswati', 'dyahayu267@yahoo.com', 'dyah', 'd9ec7a2bcb5f792f101501f700977ec7', 'IBF1600238', 1),
(239, 'Eva Saripatuniah', 'evakfv14@gmail.com', 'Eva Saripatuniah', '78bdd3b558faa24d57fde9a2a5e23791', 'IBF1600239', 1),
(240, 'Ega Septian Anugerah', 'egas.septi99@yahoo.com', 'egaseptiann', 'c4347d5b8a09e044b7732dee21ae5bbd', 'IBF1600240', 1),
(241, 'Ahmad Yani, S. Ag, S.Pd.I', 'ketisospat@ymail.com', 'Ahmad Yani', 'c6df5706cedc2492874d472ac16b1782', 'IBF1600241', 1),
(242, 'novi apriani', 'noviapriani93@gmail.com', 'noviapriani93@gmail.', '5135f1c5a02afb9148ebf871540a5128', 'IBF1400242', 1),
(243, 'Azhar Ilyas', 'azhar.ilyas.djuned@gmail.com', 'azharbandaaceh', 'e49bbe1cdb40af6245ec7089078a3ddb', 'IBF1400243', 1),
(244, 'Ahmad Zaki Alfauzi', 'zakialbanjary@gmail.com', 'zakialbanjary', '98da24248bf0dad05db93b7e88946c03', 'IBF1400244', 1),
(245, 'Ana Riswati', 'riswati_ana@yahoo.co.id', 'anaris', 'b5739f0fd9b8512b1cce2260dfeb931b', 'IBF1400245', 1),
(246, 'Imas Siti Maspupah', 'imas.mashfufah@gmail.com', 'mashfufah imas', 'e9f9acbd0254c9f45c5fc39fa0f86dce', 'IBF1400246', 1),
(247, 'Difa Askarina', 'difaaskarina@gmail.com', 'difaskarina', 'fe52476c9349c61d016362ae97b9fd4c', 'IBF1400247', 1),
(248, 'gatot', 'dataakong@yahoo.com', 'gatot', 'bb474dec2b2526c82e22c987722bbd7e', 'IBF1400248', 1),
(249, 'Fiditya Slamet Raharjo', 'valeys89@gmail.com', 'vidityave', 'c52e2ab463c15b0a3293ecf34d72806a', 'IBF1600249', 1),
(250, 'Ghayda Putri', 'ghaydaptr@gmail.com', 'ptrghayda', '36d04b0a67a88c2f0ada4d33a0f30912', 'IBF1400250', 1),
(251, 'Muh Wijatmoko A N ', 'Wijatmoko.an@gmail.com', 'Agung wijatmoko ', '6b5fabf2e657d115ffaa79920623c4fe', 'IBF1400251', 1),
(252, 'Andrew Borneo Jangoek', 'andrewdjangoek@gmail.com', 'Andrew_Djangoek', 'f013503ae79a752a145279f6361e5933', 'IBF1400252', 1),
(253, 'WAWAN MULYANA', 'wmulyana80@yahoo.co.id', 'WawanMulyana', 'e0fa00d040a384360cf83ef265a4b511', 'IBF1400253', 1),
(254, 'TIRTA MEYRIZKA LUBIS', 'sispesarizka@ymail.com', 'Tirta Meyrizka Lubis', '15da35ba177c7deb425e16d3aacd993b', 'IBF1400254', 1),
(255, 'aprilia', 'aprilia1404147@Gmail.com', 'aprilia', 'ef9638c9b59e2e2e0ef3f830ef885f81', 'IBF1600255', 1),
(256, 'Arief Rakhman', 'armanketigabelas@yahoo.com', 'armanke13', '5cdc16ac6cb45e2952621fb29ff1d078', 'IBF1600256', 1),
(257, 'Fitria Nindyta Permata', 'fitria.nindyta@gmail.com', 'nindy', '5d042d4d9db866c7167ea7b3a7bc9a64', 'IBF1400257', 1),
(258, 'musthofa', 'mustofaWalad@yahoo.co.id', 'musthofa', 'f2cbdefaeebabf68a0e6370c5eccdf36', 'IBF1400258', 1),
(259, 'Gian Giovani', 'wejick@gmail.com', 'wejick', 'fb0ed57609b5377623268c6142d6c71a', 'IBF1400259', 1),
(260, 'Muhammad Firdaus Ismail', 'muhammad.firdaus.ism@gmail.com', 'Dausismail', '4ca5a8371b175ac0c9e476054cd6f9e8', 'IBF1600260', 1),
(261, 'Sigit arrohman', 'Arrohmansigitkecil@gmail.com', 'Sigitarrohman', '03af4891a591127a870525af039bfd3a', 'IBF1600261', 1),
(262, 'MARIA GORETTI KADIMAZU DARA', 'dara0309@yahoo.com', 'Maria Dara', '5c3b1b3983a7ee81f810a284ed4d517a', 'IBF1600262', 1),
(264, 'Suro Triwibowo', 'surotb@gmail.com', 'suro', 'e257b2a05388592b0d9e027513520832', 'IBF1600264', 1),
(265, 'ferry christina sari', 'fe_fitri@yahoo.com', 'ferry', '46171b077997b166bb30cf5494eff2f8', 'IBF1600265', 1),
(266, 'Andreas Pradipta Widiantoro', 'apradipta87@yahoo.com', 'apradipta87', '0a4d21b0a6c58fb86e24651d24287580', 'IBF1600266', 1),
(267, 'Herry Prasetyo', 'herry_prasetyo@rocketmail.com', 'tyook88', '03dde5692d101a5c750bb1e51169bb8a', 'IBF1600267', 1),
(268, 'Arie Yudhotomo RH', 'arieyudho@gmail.com', 'arieyudho', '185cbb9fab667fce39dce61110a194e9', 'IBF1600268', 1),
(269, 'Isyana Paramitha Iskandarputri', 'mitaa.mita@yahoo.com', 'isyanaaaa', '17a947fdd366095dbb37d3727cfa0011', 'IBF1600269', 1),
(270, 'Nur Nisrina Ningrum', 'Nisrinna_nur@rocketmail,com', 'Nisrinous', '2d049c4cf7ee1ffe34ebbdb94c960e49', 'IBF1600270', 1),
(271, 'Puguh Jayadi', 'puguh.jayadi@gmail.com', 'puguhjayadi', '061b0e523489c2d27787ddacf1f91752', 'IBF1600271', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ibf_member_detail`
--

CREATE TABLE IF NOT EXISTS `ibf_member_detail` (
  `member_id` int(11) DEFAULT NULL,
  `member_type` varchar(100) DEFAULT NULL,
  `member_birth_date` date DEFAULT NULL,
  `member_birthplace` varchar(50) DEFAULT NULL,
  `member_gender` tinyint(1) DEFAULT '1',
  `member_address` varchar(200) DEFAULT NULL,
  `member_region` int(11) DEFAULT NULL,
  `member_education` varchar(200) DEFAULT NULL,
  `member_skills` varchar(500) DEFAULT NULL,
  `member_job` varchar(50) DEFAULT NULL,
  `member_phone` varchar(50) DEFAULT NULL,
  `member_facebook` varchar(50) DEFAULT NULL,
  `member_twitter` varchar(50) DEFAULT NULL,
  `member_gplus` varchar(50) DEFAULT NULL,
  `member_blog` varchar(50) DEFAULT NULL,
  `member_image_profile` varchar(200) DEFAULT NULL,
  `member_motivation` text,
  `member_description` text,
  `member_reg_year` int(4) DEFAULT NULL,
  `member_date_input` datetime DEFAULT NULL,
  `member_date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_member_detail`
--

INSERT INTO `ibf_member_detail` (`member_id`, `member_type`, `member_birth_date`, `member_birthplace`, `member_gender`, `member_address`, `member_region`, `member_education`, `member_skills`, `member_job`, `member_phone`, `member_facebook`, `member_twitter`, `member_gplus`, `member_blog`, `member_image_profile`, `member_motivation`, `member_description`, `member_reg_year`, `member_date_input`, `member_date_update`) VALUES
(2, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Pademangan II Gang 12 No.250 , Pademangan Timur. Jakarta Utara 14410', 1, 'Teknik Komputer | Jaringan Informasi dan Multimedia', 'IT', 'Engineer', '08561563937', 'http://www.facebook.com/adityo.a.nugroho', '@adit_abnu22', 'http://plus.google.com', 'http://adityoabdinugroho.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_f3669fc272a2a3fa2e6fdd793b3c00becea6fbb2.jpg', 'Menjadikan hidup dan apa yang kita punya lebih berarti', 'Teknik Komputer | Jaringan Informasi dan Multimedia', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(3, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Nanas Ib AA2 No.76, Taman Wisma Asri. Bekasi Utara 17121 ', 1, 'dari tiada akan menjadi tiada, dari bukan siapapun akan menjadi bukan siapapun', '', 'Freelance Web Designer', '0', 'http://facebook.com/andhika.sastroandoko', 'badaidoang', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_bcf03fa380875cda04d7106d3aafd0beb0e46bed.jpg', 'Berharap disini menjadi bekal akhirat, belajar mengilhami hablum minallah, hablum minannas, dan membuat perubahan untuk masa depan bangsa.. Insya Allah', 'dari tiada akan menjadi tiada, dari bukan siapapun akan menjadi bukan siapapun', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(4, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Serui Mekar, Timika-Papua', 1, 'Selalu Bersemangat', '', 'Mahasiswa', '0', 'https://www.facebook.com/ar.di.940', 'arditimika', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_812264c98b29a89ddc1a7e86da30d7f486a00529.jpg', 'Berbagi dan saling belajar untuk kebaikan', 'Selalu Bersemangat', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(5, '["Pelaksana Kegiatan"]', '1990-12-08', 'Indonesia', 0, 'Komp. BPPT Jl. Teknologi III/22, Kembangan, Meruya Utara, Jakarta Barat', 1, 'Teknologi Pangan, Fakultas Teknologi Pertanian, Institut Pertanian Bogor.', '', 'Food industry', '0', 'http://www.facebook.com/sagita.nindyasari', 'http://twitter.com/gitanindy', 'http://plus.google.com', 'http://gitanindy.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_f26103bf766551eecf1e79a3231eb1d32d15bb93.jpg', 'karena ilmu, uang, dan waktu itu ada, ya untuk berbagi ;)', 'Teknologi Pangan, Fakultas Teknologi Pertanian, Institut Pertanian Bogor.', 2013, '2016-03-30 17:14:54', '2016-04-07 11:16:22'),
(6, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Rumah Berbagi, Jalan Tarumanegara 1, Pondok Mandala 1, Depok', 1, 'Volunteer Ilmu Berbagi', '', 'Teknik Komputer, Universitas Indonesia', '08111143677', 'http://facebook.com/ardisragen', 'ardisragen', 'http://plus.google.com', 'http://ardisragen.net', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_5358fb97a1ca918d54754f874e6c6d85e5516298.jpg', 'Semoga dengan segala sumber daya yang ada, kegiatan #ilmuberbagi yang dilakukan dapat menjadi rangkaian berbagi yang berkelanjutan hingga berperan dalam dinamika sosial pendidikan dan peradaban masyarakat Indonesia sekaligus menjadi ladang amal jariyah para anggotanya :D', 'Volunteer Ilmu Berbagi', 2011, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(8, '["Pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 0, '', 4, 'S1 Teknik Informatika UIN Sunan Kalijaga Yogyakarta', '', 'PNS', '0', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_267e1a08b6de7ccc1019169d83f620041875b231.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-04-07 12:48:18'),
(9, '["Kontributor Tulisan Artikel","Web Admin dan Sosial Media Admin","Pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 0, 'Melia Residences, Jl.Melia Garden 1 MGA-09, Graha Raya Bintaro, Tangerang Selatan', 1, '', '', 'Occupational Health and Safety Student, Universita', '085711342411', 'https://www.facebook.com/andini.putribahri', 'http://twitter.com/andin_imaniar', 'http://plus.google.com', 'http://andinimaniar.blogspot.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d36088695552a1340bddc6de2012212e81da4a44.jpg', '', '', 2013, '2016-03-30 17:14:54', '2016-04-07 12:57:32'),
(10, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. RTM Rt.05/11 No.21 Cimanggis-Depok 16951', 1, 'Bahasa dan Kebudayaan Korea FIB UI', '', 'Mahasiswa', '', 'https://www.facebook.com/zulmul', 'ZulfaMulki', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_5feac15f2752e5dc62fbd68812597e395193d4d4.jpg', 'Semangat berbagi dan ingin mempersiapkan senyuman untuk masa depan', 'Bahasa dan Kebudayaan Korea FIB UI', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(12, '["Pelaksana Kegiatan"]', '2016-03-30', 'Purwokerto', 1, 'Purwokerto, Banyumas', 4, 'Mahasiswi Tif UIN_SUKA', '', 'Mhs T.Informatika UIN Sunan Kalijaga', '085747889797', 'http://www.facebook.com/faradila.umami', 'http://twitter.com/faradilaumami', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_ffc83731503735e32fe1127dbe20886e6384df01.jpg', 'jika kita membahagiakan orang lain, maka Alloh akan membahagiakan diri kita juga.\r\ndan Berbagi itu INDAH ^_^', 'Mahasiswi Tif UIN_SUKA', 2013, '2016-03-30 17:14:54', '2016-04-07 12:45:59'),
(13, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Karet Pasar baru Barat I, Karet Tengsin, Tanah Abang, Jakarta Pusat', 1, 'Perempuan yang berusaha agar hidupnya bermanfaat bagi banyak orang, tertarik dalam dunia jurnalistik dan sosial media. Senang bertemu dengan orang-orang baru.', '', 'Reporter di Bisnis Indonesia', '0', 'nendensan', 'nden', 'http://plus.google.com', 'http://nendensan.web.id', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_8c604b1d44762b6f8dd0cc378017ea6ae2a1ae8a.jpg', 'Begabung dengan Ilmu Berbagi bagai menemukan keluarga baru yang hangat dan saling mengingatkan untuk berbagi, berbuat baik dan bermanfaat bagi sesama. Semoga tekad, semangat dan tujuan tetap terjaga dan akan terus berkembang sampai akhir hayat.', 'Perempuan yang berusaha agar hidupnya bermanfaat bagi banyak orang, tertarik dalam dunia jurnalistik dan sosial media. Senang bertemu dengan orang-orang baru.', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(14, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Dr. Soeharso no 29, Palu 94223', 1, '', '', 'Dinas Kesehatan', '0', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_44ebe7d469e211e514a14cad208c703228c98085.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(15, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Jambu 7 No. 53 RT 01 RW 01, Kelurahan Depok Jaya, Depok - 16432 Jawa Barat', 1, '', '', 'Wiraswasta', '0', 'https://www.facebook.com/jaya.muslimin', 'jayamuslimin', 'http://plus.google.com', 'belajar-matematika.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_5039052db25c5d8406dbb6d5d6ccb3c17c87be53.jpg', 'Orang sukses jika bisa bermanfaat buat orang lain.', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(16, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Cluster amerika a10/20 kota wisata\nCibubur', 1, 'Si cupu yang punya sejuta mimpi yang tak pasti', '', 'ERP system analyst di PT SRI', '0', 'https://id-id.facebook.com/alfian.yuda', 'Alfianyuda87', 'http://plus.google.com', 'Http://alfianyuda.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_584734780ed4e9791b3b67d34a043d542d8ba1d7.jpg', '', 'Si cupu yang punya sejuta mimpi yang tak pasti', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(17, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Jembatan II No.38\nBale Kambang - Kramat Jati 13530\nJakarta Timur - DKI Jakarta', 1, '"Jangan pernah menyerah karena orang yang paling sulit untuk dikalahkan adalah orang yang tidak pernah menyerah"', '', 'Mahasiswa Departemen K3 UI Ekstensi 2012 / PT Wask', '0', 'https://www.facebook.com/yuliansya.adha', 'yhulians', 'http://plus.google.com', '-', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_9e109151c773efd9d8fa0f1af23608574a93d492.jpg', 'Ingin membantu dan berbagi dengan sesama...\n\n"Bantulah sebanyak mungkin orang disekitar Anda, maka alam semesta dan Tuhan akan membantu Anda"', '"Jangan pernah menyerah karena orang yang paling sulit untuk dikalahkan adalah orang yang tidak pernah menyerah"', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(18, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '0', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_205b2572202b6a7adeac3048f1b16dbc0040c291.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(19, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kusumanegara Glagah UH IV/57 Kecamatan Umbulharjo Kelurahan Warungboto', 1, 'Saya saat ini kuliah di Universitas Islam Negeri Yogyakarta, Jurusan Teknik Informatika.\nGuitaris, Song Writer, Maybe Developer, EO Inka Training Center.\n', '', 'Mahasiswa', '0', 'https://www.facebook.com/RyosiNurrahman', 'mas_yosi', 'http://plus.google.com', 'mas-yosi.blogspot.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d85d45e514cd0d77efa8d4ed2f90763f9a180462.jpg', 'untuk mendapatkan suatu cita rasa menarik dalam berbagi ilmu yang berbuah ridho dan hikmah bagi saya sendiri juga orang lain dan juga menjadi pengalaman yang berarti dalam hidup saya', 'Saya saat ini kuliah di Universitas Islam Negeri Yogyakarta, Jurusan Teknik Informatika.\nGuitaris, Song Writer, Maybe Developer, EO Inka Training Center.\n', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(20, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek BPPT Jln.Teknologi II No.5, Jakarta-Barat 11620', 1, 'Madura-perempuan-anak-adik-calon ibu dan istri-sahabat-penjemput rezeki-pengurus IB-penikmat makanan halal dan enak. Alhamdulillah......', '', 'SDM Eka Hospital BSD', '08561002528', 'http://www.facebook.com/Arenda Mardiko', 'ArendaMardiko', 'http://plus.google.com', 'http://arendamardiko.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_a1ef21b6323c70ebf4636f639515cceacf96c915.jpg', 'bersama Ilmu Berbagi berharap diri ini mempunyai manfaat untuk urusan agama-dunia-akhirat', 'Madura-perempuan-anak-adik-calon ibu dan istri-sahabat-penjemput rezeki-pengurus IB-penikmat makanan halal dan enak. Alhamdulillah......', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(21, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Shibahara cho, 5-13-16, Toyonaka shi, Osaka,\nJapan', 1, ' Hidup adalah anugrah dan juga perjuangan. Dengan ilmu kita akan bisa menysukuri hidup dan juga berjuang meraih mimpi/asa. Dengan ilmu pula kita bisa mendapatkan kebahagiaan. Sebarkanlah ilmu untuk se', '', 'Peneliti', '0', 'handayanimurni@yahoo.com', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_b933b9b6a967526a4cc01588659468efce490744.jpg', 'Bahagia jika bisa berbagi dengan sesama, baik ilmu dan pengalaman.', ' Hidup adalah anugrah dan juga perjuangan. Dengan ilmu kita akan bisa menysukuri hidup dan juga berjuang meraih mimpi/asa. Dengan ilmu pula kita bisa mendapatkan kebahagiaan. Sebarkanlah ilmu untuk sesama agar hidup lebih bermakna.\n\n ', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(22, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Seoul, South Korea', 1, 'Bulatkan tekad bersama Ilmu', '', 'Student', '0', 'https://m.facebook.com/justudin', 'justudinlab', 'http://plus.google.com', 'http://justudin.wordpress.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_a081b5bb855fb5df04c898c1901d2e21240ef72f.jpg', 'Sebaik-baik manusia adalah yang paling bermanfaat untuk manusia lain. ', 'Bulatkan tekad bersama Ilmu', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(23, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', 'Fakultas Kedokteran UMS', '0', '', 'peniemomo', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_33303264a0f8f9d9458a62810dbc795e1cafd27e.jpg', '', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(24, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Keparakan Lor', 1, '', '', 'UIN Sunan Kalijaga Yogyakarta', '0', 'http://www.facebook.com/cidcidcuiidd', 'cidcidcuiidd', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_98adc7ce09889ac4d76cc412b171526f9ab455f1.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(25, '["Kontributor Desain Grafis dan Media","Pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'yogyakarta', 4, 'Pecandu Games, IT, and Opensource.', '', 'IT student- STMIK AMIKOM', '0', 'http://www.facebook.com/bud1gata', '', 'http://plus.google.com', 'http://budiputra.web.id', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_4c5ed76d9bc59c2be94f7b9daa4288e3496b1607.jpg', 'Menjadikan berkah bagi ilmu yang di dapat dengan cara berbagi', 'Pecandu Games, IT, and Opensource.', 2013, '2016-03-30 17:14:54', '2016-04-07 12:54:20'),
(26, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek Huma Akasia Blok D No. 5, Jatiwarna, Pondok Melati, Bekasi 17415', 1, 'Si murah senyum yang suka bersenandung. Menjadi konsultan lingkungan untuk memberikan kontribusi bagi kelestarian bumi.', '', 'Junior Environment Expert di PT. Indonesia Environ', '0', 'http://www.facebook.com/gistrong', 'gistrong', 'http://plus.google.com', 'http://gistrong.wordpress.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_2db53e7d21d2b8880757ce35e6d71ff0f1e48c46.jpg', 'Selain mau hidupku lebih bermanfaat bagi sesama, aku juga mau menambah banyak teman, serta mau berbagi berkelanjutan.', 'Si murah senyum yang suka bersenandung. Menjadi konsultan lingkungan untuk memberikan kontribusi bagi kelestarian bumi.', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(27, '["Web Developer","Pengajar Pelatihan dan Mentor"]', '2016-03-30', 'Gunungkidul', 1, 'Papringan RT 002 RW 011, Tileng, Girisubo, Gunungkidul, Yogyakarta', 4, 'S1 Teknik Informatika UIN Sunan Kalijaga Yogyakarta', '', 'IT Developer', '0', 'http://facebook.com/pulung.gk', 'http://twitter.com/pulung_gk', 'http://plus.google.com', 'http://sejutatutorial.wordpress.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_e8e0f5930e9eb10b7f9b560e06c4ff652a8ead70.jpg', 'Ingin berbagi dan bermanfaat bagi orang lain', 'share and get more', 2013, '2016-03-30 17:14:54', '2016-04-07 12:52:35'),
(28, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Desa Gambiranom, RT 003/005 Kec. Kismantoro, Wonogiri, Jawa Tengah. 57696', 1, 'Suka menulis dan mengabadikan peristiwa dari balik kamera', '', 'Content Writer', '0', 'http://facebook.com/dafhy', 'dafhy', 'http://plus.google.com', 'http://note.dafhy.net', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_55e71c59162bb6e465cc71ae1c47d2dabb0ee8d0.jpg', ' Berbagi tak pernah rugi', 'Suka menulis dan mengabadikan peristiwa dari balik kamera', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(29, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', 'HRD & GA Staff', '081226694764', 'https://www.facebook.com/nonandawardani', '@NandaMooie', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d9a6a10bfd88ccf6a21e2bbf05057e807bca7a70.jpg', '', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(30, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Tangerang', 1, 'Gunawan = Berguna dan Dermawan', '', 'Auditor', '0', 'https://www.facebook.com/gunafahri', 'fahriguna', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d7ac439ab070ad2823697aec90dea70c6a3f2268.jpg', 'Sebaik-baiknya makhluk adalah Dia yang berguna serta bermanfaat bagi orang-orang yang berada di sekitarnya', 'Gunawan = Berguna dan Dermawan', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(31, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Wisma Mahameru, Jalan Babakan Tengah Gang Boga NO. 92, Dramaga Bogor', 1, '', '', 'Actuary', '0', 'facebook.com/dinar.arga', 'arghapras', 'http://plus.google.com', 'http://koechinkscratch.tumblr.com/', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_259349ea1dd32da5e5b0ad62579eb250aadbe19b.jpg', 'Hidup itu ibadah, maka buatlah yang terbaik disetiap ibadah yang kita lakukan.', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(32, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Banda Aceh', 1, '', '', 'Tour guide', '0', 'https://www.facebook.com/fahrul.elnebuchanezzar', 'blackpearl_capt', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_966fac4b140d61de338c7c84cb64975541e6f4ff.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(34, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Siaga H no. 281\nPerum Bumi Bekasi Baru, Sepanjang Jaya\nRawalumbu - Bekasi', 1, '', '', 'Staff administrasi di PT TD Automotive Compressor ', '', 'http://www.facebook.com/Dian Agustintari', 'pelangidee', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_2dc37af02e3a6728ec842715738d98481128671a.jpg', 'Memulai dengan bismillah semoga niat kami selalu terjaga karena Allah. Berlomba-lomba dalam kebaikan. Dan saling mengingatkan jika semangat mulai meredup. \n"Satu tahun mengabdi selamanya berbagi"', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(35, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kaliurang KM 7, Babadan Baru Gg. Melati 1 no. 7, Depok, Sleman, YK.', 1, '', '', 'Pemilik di Pumping Brand', '0', 'Http://www.facebook.com/Aziz.Fajar', 'azizmursalin', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_c222fe678b14ff0e4cb3eb0513349da69f977feb.jpg', 'Migunani tumraping liyan.', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(36, '["Fotografer","Pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Sedayu 2 Muntilan, RT 08/RW 11, Kec. Muntilan, Kab. Magelang, Jawa Tengah', 4, 'TK Pertiwi Muntilan,SD Negeri Muntilan 2, SMP Negeri 1 Muntilan,SMK Negeri 1 Magelang jurusan Teknik Komputer Jaringan,STMIK Amikom Yogyakarta jurusan S1 Teknik Informatika ', '', 'Fotografer di WishMe Photography, Cisco Network Ad', '082134617621', 'http://facebook.com/yudhi.agus', 'http://twitter.com/yudhiagust', 'http://plus.google.com', 'http://yudhiagus.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_41040f8f149fc3587f5bdefab03547594cc928d1.jpg', 'Menjadikan diri sendiri lebih bermanfaat bagi orang lain..  ', 'TK Pertiwi Muntilan,\r\nSD Negeri Muntilan 2, \r\nSMP Negeri 1 Muntilan,\r\nSMK Negeri 1 Magelang jurusan Teknik Komputer Jaringan,\r\nSTMIK Amikom Yogyakarta jurusan S1 Teknik Informatika ', 2013, '2016-03-30 17:14:54', '2016-04-07 12:55:41'),
(37, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pamulang Estate, Jl. Duku 2 Blok H 4 no. 2, RT 002/RW. 015, Pamulang, Tangerang Selatan', 1, 'Ringannya segala hal yang sulit ketika kita tersenyum ', '', 'Universitas Indonesia', '0', 'http//www.facebook.com/ismaismawati', 'ismamaw', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_a29b23611cf4a186e17a16d330aa64689cef089e.jpg', 'Berbagi itu indah, seindah melihat senyuman mereka yang kita bagi', 'Ringannya segala hal yang sulit ketika kita tersenyum ', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(38, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kampuang tangah Jorong Tigo Kampuang Nagari Salo kecamatan Baso, Kabupaten Agam, Sumatera Barat', 1, 'semenjak lahir sampai sekarang masih berjuang', '', 'Mahasiswa ', '0', 'https://www.facebook.com/imrizal.pratama', 'rizalmah', 'http://plus.google.com', 'www.im-pr.tk', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_978649635a6c4cf3ffaa2a1c3cdd3edfa6428698.jpg', 'Untuk berbagi Ilmu', 'semenjak lahir sampai sekarang masih berjuang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(39, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Magelang Jawa Tengah', 1, 'Saat ini sedang menempuh kuliah di UIN Sunan Kalijaga Yogyakarta, Jurusan Teknik Informatika', '', 'Mahasiswa', '0', 'https://www.facebook.com/adityainteristi', 'Aditya4guero', 'http://plus.google.com', 'http://adityainteristi.wordpress.com/', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_5a1004e66bf826ec8737e58320e39e43f5c28c22.jpg', 'Manusia tidak bisa hidup tanpa orang lain, maka tolong menolonglah dan berbagilah demi kemajuan bersama', 'Saat ini sedang menempuh kuliah di UIN Sunan Kalijaga Yogyakarta, Jurusan Teknik Informatika', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(40, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '0', 'htttp://www.facebook.com/akhmad.fuad2', 'akhmadfuad', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(41, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Dharmawangsa VIII No.19 Surabaya', 1, 'Lulusan Komunikasi Universitas Airlangga 2014, awkward, traveler, part of @bentangpustaka, banci lomba', '', 'Job Seeker - Baru wisuda Maret 2014', '0', 'https://www.facebook.com/andina.s.rahayu', 'andinarahayu', 'http://plus.google.com', 'aboutmylifedanskenarionya.blogspot.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d95ea732c74b07482382839bd88e6499fc9c64d2.jpg', 'Berbagi dan berbuat ikhlas memang tak mudah, perlu banyak dukungan dan semangat agar tekad semakin bulat. Berbagi tak terbatas pada materi, ilmu dan informasi pun penting untuk dibagikan, yang terpenting semuanya tulus dari hati. Yuk pada ingat karma, Berbagilah pada sesama ', 'Lulusan Komunikasi Universitas Airlangga 2014, awkward, traveler, part of @bentangpustaka, banci lomba', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(42, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '0', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_0f1b4a62bf5c95b97e48fd6430e0c4b910630578.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(43, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Benteng Makasar 1 Kota Tangerang', 1, ' Ketenangan Hidup (*_*)', '', 'Staff Pengajar GO', '0', 'Eka Pitri Yanti', 'ekapitrichaniago', 'http://plus.google.com', '-', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_c7cc72cc6a7cd0a8c88ec8f787aff5ce87a80f4d.jpg', 'Untuk menjadi hidup lebih *amazing* dengan berbagi', ' Ketenangan Hidup (*_*)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(45, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kapuk No.6B RT.004/RW.01 Pondok Cina, Depok 16424', 1, 'Kita tidak bisa mengubah arah angin, tapi kita bisa menyesuaikan layarnya', '', 'Mahasiswa', '0', 'https://www.facebook.com/kurnia.agustin.52', 'Kurnia1004', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_a3fa36c27fa50cf4cacb575f24f9e676ef359625.jpg', '', 'Kita tidak bisa mengubah arah angin, tapi kita bisa menyesuaikan layarnya', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(46, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', 'Universitas Indonesia', '0', 'Alfi Lailiyah', 'alfilailiyah1', 'http://plus.google.com', 'alfilailiyah.wordpress.com', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(50, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '0', '', '', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(51, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jalan raya margonda, rt 03 rw 05 no.5, kelurahan pindok cina, kecamatan beji, depok', 1, '', '', 'RF engineer', '0', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_96cf75d733be00abd51b81cc8f150828deb4d1e4.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(52, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Cikarang', 1, '', '', 'IT Consultant', '0', 'http://www.facebook.com/TriSyahudiFaizal', 'FaizalST', 'http://plus.google.com', 'http://fangsformer.blogspot.com', '', 'Untuk sebuah alasan :) ilmu berbagi', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(53, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Karya Bhakti RT 03/04 No 47 Tanah Baru, Depok', 1, 'S1 Fasilkom UI (2007)\nS2 MTI UI (2012)', '', 'IT Account Manager di PT Altrovis Tekno Global', '08551435863', 'http://www.facebook.com/gilangbhagaskara', 'gilang_bh', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_1ff293584d4b40bd7a19a0fc6fff6d79b0552ddd.jpg', '', 'S1 Fasilkom UI (2007)\nS2 MTI UI (2012)', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(54, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Gg.Kirai Belakang ITC Fatmawati', 1, 'S1 - STIMIK NUSA MANDIRI\nD3 - BSI\nSMAN 1 Langsa', '', 'Officer HRD', '', 'https://www.facebook.com/agus.YangBaik.Hati', 'agussazali', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_01c86d9f8ff3c77a67b237b59b47b58985128dcb.jpg', 'Bermanfaat buat yang lain', 'S1 - STIMIK NUSA MANDIRI\nD3 - BSI\nSMAN 1 Langsa', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(55, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl pakis VI blok BB 22/12', 1, '', '', 'Swasta', '', 'Rihardian Maulana Wicaksono', 'rihardian_rian', 'http://plus.google.com', '', '', 'ingin menjadi orang yang bermanfaat bagi orang lain dengan saling berbagi', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(56, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '0', 'https://www.facebook.com/micumicumi', 'amippr', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d3cfe22976f96e0207cfb81c198142f6a681ed7e.jpg', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(57, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek Pondok Bahar Permai, Karang Tengah - Tangerang', 1, 'S1 Teknik Lingkungan ITS', '', 'PT. PAM LYONNAISE JAYA (PALYJA)', '0', 'Desty Ayu', 'destiiayuu', 'http://plus.google.com', '', '', 'Hidup bermakna jika mampu membuat orang lain tersenyum', 'S1 Teknik Lingkungan ITS', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(58, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Rt.04 Rw 12 Kelurahan Palmerah Jakarta Barat/\nPakan Sinayan, Kamang Mudiak, Kec Kamang Magek , Kab Agam , SumBar', 1, 'Dari Tau Menjadi Tau Itu Dari Menuntut Ilmu,....', '', 'IT consultan di Oriza Indonesia', '0', 'olala24@ymail.com', 'olala_lala', 'http://plus.google.com', 'http://i1muteknologi.blogspot.com/', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_322bc5ecee43a34e3f7e66cec06f6d4594e0f154.jpg', 'Beramal dengan Ilmu Berbagi Bersama Saudara baru', 'Dari Tau Menjadi Tau Itu Dari Menuntut Ilmu,....', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(59, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Tebet Dalam \nJakarta Selatan', 1, '', '', '', '', 'https://www.facebook.com/lilies.her', 'liyess', 'http://plus.google.com', 'http://anelies.com/', '', '', '', 2013, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(60, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Plebengan, Sidomulyo, Bambanglipuro, Bantul, Yogyakarta', 1, '', '', '', '0', 'https://www.facebook.com/ismailsunni', 'ismailsunni', 'http://plus.google.com', 'ismailsunni.wordpress.com', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(67, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Parung Serab RT.04/04. No. 48. Kel. Tirtajaya. Kec. Sukmajaya. Depok. Jawa Barat.', 1, '', '', 'Mahasiswa', '08567173844', 'https://www.facebook.com/mulyani.pratiwi', '@MulyaniPratiwi', 'http://plus.google.com', 'http://mulyani.pratiwi.wordpress.com', '', 'Mengaplikasikan dan/atau berbagi kemampuan yg dimiliki.', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(70, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pesona Merapi cluster Merapi View C15, Jl Kaliurang KM 9,2 Yogyakarta', 1, 'PM Darussalam Gontor Ponorogo\nSMP N 1 Kateman\nSMA N 1 Batam\nSMA N 3 Batam\nUniversitas Indonesia\nUniversitas Duisburg-Essen', '', 'Pengusaha', '085695708000', 'http://www.facebook.com/behindhack', '', 'http://plus.google.com', '', '', 'Menolong orang', 'PM Darussalam Gontor Ponorogo\nSMP N 1 Kateman\nSMA N 1 Batam\nSMA N 3 Batam\nUniversitas Indonesia\nUniversitas Duisburg-Essen', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(71, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Cianjur', 1, '1998 - 2004 SD N Cibinong II\n2004 - 2007 SMP N 2 Cilaku Cianjur\n2007 - 2010 SMA N 1 Cilaku Cianjur\n2010 - Sekarang UIN SUNAN KALIJAGA JOGJAKARTA', '', 'Mahasiswa', '0', 'https://www.facebook.com/zeeezth', '@ag_hida', 'http://plus.google.com', 'http://thelost0ne.blogspot.com/', '', 'Tidak semua orang mendapatkan kehidupan yang sama, disitulah indahnya berbagi. untuk hal itu saya bergabung', '1998 - 2004 SD N Cibinong II\n2004 - 2007 SMP N 2 Cilaku Cianjur\n2007 - 2010 SMA N 1 Cilaku Cianjur\n2010 - Sekarang UIN SUNAN KALIJAGA JOGJAKARTA', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(72, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Matraman Perum.Puri Maguwo Indah no : 02 Sleman Yogyakarta', 1, 'Teknik Informatika UIN Sunan Kalijaga ', '', 'S2 ILKOM UGM', '7AA4AFE3', 'https://www.facebook.com/pradiptya.setyadi', '@pradiptya92', 'http://plus.google.com', 'www.raditart.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_6170ff25f7aae1175494012fbd605e4a1415b7a6.jpg', 'karena saya ingin membagikan ilmu yang saya pelajari kepada adik adik binaan :)', 'Teknik Informatika UIN Sunan Kalijaga ', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(73, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pleret, Pleret, Bantul Yogyakarta', 1, '', '', 'Mahasiswa', '0', 'https://www.facebook.com/al.muhaimin.3348', '', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(74, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jakarta barat', 1, 'saya merupakan seorang guru', '', 'guru', '0123456789', '', '', 'http://plus.google.com', 'www.rahasia.com', '', 'mau berbagi', 'saya merupakan seorang guru', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(75, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jalan Magelang km 4,5 no 126 rt07 rw10 Kutu Wates , Sinduadi, Mlati, Sleman, yogyakarta 55284', 1, '', '', 'Wiraswasta ', '082324557710', '', '@valeys89', 'http://plus.google.com', '', '', 'menambah relasi dan bersosialisasi ', '', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(76, '["Pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'JL. LAGUNA MANDIRI KM.13, RANTAU JAYA, SUNGAI DURIAN, KOTABARU, KALIMANTAN SELATAN', 4, 'S1 TEKNIK INFORMATIKA, UIN SUNAN KALIJAGA YOGYAKARTA', '', '', '0', 'https://www.facebook.com/ervan.yogiarifianto', '', 'http://plus.google.com', 'http://ervan-yogi.blogspot.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_e696aa23b44ce1e2675149102054e98f7721022b.jpg', 'Berbagi ilmu yang bermanfaat ke pada sesama', 'S1 TEKNIK INFORMATIKA, UIN SUNAN KALIJAGA YOGYAKARTA', 2014, '2016-03-30 17:14:54', '2016-04-07 12:46:48'),
(77, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Ngentak Pendowoharjo, Sewon Bantul, Yogyakarta', 1, 'Mahasiswi jurusan Bahasa Inggris Universitas Teknologi Yogyakarta', '', 'Asisten Apoteker-mahasiswi', '0', '', '', 'http://plus.google.com', '', '', 'Pengen sharing ilmu.. pengen nambah saudara, nambah pengalaman..', 'Mahasiswi jurusan Bahasa Inggris Universitas Teknologi Yogyakarta', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(78, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Sragen Manggis, RT12/4 Sragen Wetan, Sragen, Jawa Tengah', 1, 'Saya alumni D3 Politeknik Negeri Semarang dan sekarang sedang melanjutkan studi S1 di Universitas Muhammadiyah Yogyakarta untuk jurusan Teknik Elektro.', '', 'Mahasiswa', '0', 'https://www.facebook.com/cahya.a.nugraha', '@Cahya_xTech', 'http://plus.google.com', '', '', 'Saya ingin menjadi belajar untuk memberi manfaat bagi orang lain. Selain itu dengan bergabung di IBF yang memiliki network yg luas, maka semakin luas juga untuk  bisa memberi manfaat dan juga belajar untuk memberi manfaat yang lebih baik.', 'Saya alumni D3 Politeknik Negeri Semarang dan sekarang sedang melanjutkan studi S1 di Universitas Muhammadiyah Yogyakarta untuk jurusan Teknik Elektro.', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(79, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pondok kelapa, kalimalang', 1, 'D3 tarakanita', '', '', '081219614431', '', '', 'http://plus.google.com', '', '', 'Ingin berbagi', 'D3 tarakanita', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(80, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '', '', '', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(81, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '', '', '', 'http://plus.google.com', '', '', '', '', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(82, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', '', '', '', '', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(83, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'PPI Blok DD 2 No 9, Bekasi Selatan', 1, 'S1 Teknik Industri', '', 'Karyawan Awasta', '081297001541', '', '', 'http://plus.google.com', '', '', '', 'S1 Teknik Industri', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(84, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Depok, Jawa Barat', 1, 'S1 Teknik Komputer Universitas Indonesia', '', '-', '+628577300846', 'https://www.facebook.com/presekal', '@alfanpresekal', 'http://plus.google.com', 'alfan.presekal.com', '', 'Sarana kontribusi aktivitas sosial ', 'S1 Teknik Komputer Universitas Indonesia', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(85, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl.Mulyorejo Tengah no 28 Surabaya', 1, 'Saat  ini masih kuliah d3 elektro angkatan 2011 di universitas airlangga', '', 'Mahasiswa', '087853877063', 'zdroita@yahoo.co.id', '@AnitaRwt', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu kepada para anak-anak kurang mampu,untuk mencerdaskan bangsa.', 'Saat  ini masih kuliah d3 elektro angkatan 2011 di universitas airlangga', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(86, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Yasmin Raya No.127 Taman Yasmin Bogor', 1, 'Sarjana S1 Sistem Komputer Institut Teknologi Telkom, Bandung', '', 'Pekerja Swasta', '081286020769', 'https://www.facebook.com/derryadhip', '@Derry_official', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_1023606db9ccf42a3c110dd01cdf53db2a9028c8.jpg', 'Mulai ingin berbagi dan bermanfaat untuk orang banyak, terutama yang tidak seberuntung kita. Karena hanya sia2 jika ilmu, tenaga, dan waktu kita jika tidak berguna dan bermanfaat untuk orang lain.', 'Sarjana S1 Sistem Komputer Institut Teknologi Telkom, Bandung', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(87, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', 'SMA N 1 Pracimantoro, Unnes', '', 'https://www.facebook.com/hdyna.fitria', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d9ab58f2b5129e41e92f5351f19695e4536d3fbe.jpg', '', '', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(88, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Animan RT 01/04 No.55 Kel. Harapan Jaya, Kec. Cibinong, Kab. Bogor', 1, 'SD Mardi Waluya (1998 - 2004)\nSMP N 3 Cibinong (2004 - 2007)\nSMA N 2 Cibinong (2007 - 2010)\nUniversitas Gunadarma (2010 - Sekarang)', '', 'Mahasiswa', '085760525310', 'Yan Kumala', '@kumala_yan', 'http://plus.google.com', 'kumala-thekumalas.blogspot.com', '', 'pengabdian kepada masyarakat', 'SD Mardi Waluya (1998 - 2004)\nSMP N 3 Cibinong (2004 - 2007)\nSMA N 2 Cibinong (2007 - 2010)\nUniversitas Gunadarma (2010 - Sekarang)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(89, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Flamboyan 2 no.332 Perumnas 1 Bekasi Barat', 1, 'Ilmu Komputer, Universitas Gunadarma', '', 'IT', '085692316980', 'http://www.facebook.com/lenggo87', '@lenggo', 'http://plus.google.com', 'http://lenggo87.blogspot.com', '', 'ingin berbagi ilmu', 'Ilmu Komputer, Universitas Gunadarma', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(90, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Citragran blok O2 no 50 Cibubur ', 1, 'Fakultas sastra inggris (semester4)', '', 'mahasiswi', '087781192136', '', '@tyaanarikaa', 'http://plus.google.com', '', '', 'Saya ingin bwrbagi ilmu pengetahuan yg saya punya kepada semua anak-anak yg berhak dan membutuhkan pengetahuan trsebut . Saya ingin orang indonesia di masa depan semakin berkembang dan tidak bodoh , selain itu bwrbagi kepasa semua orang adalah amal yg saya peroleh dikemudian hari nanti sangatterpuji dan sangat berwibawa dihadapan tuhan .', 'Fakultas sastra inggris (semester4)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(91, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. D. Limboto A5/G28 Sawojajar Malang', 1, 'S1 Sastra Jepang', '', '-', '085704332070', 'Frielia dwi', '@frieliatralala', 'http://plus.google.com', 'kompasiana.com/frieliadwi', '', 'Ingin berbagi kepada orang-orang sekitar di bidang keilmuan melalui cara yang sekiranya masih mampu saya lakukan.', 'S1 Sastra Jepang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(92, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl.Al-Umar 2 Rt.001 Rw.012 no.10 lubang buaya jakarta timur 13810', 1, 'Lulusan SMA tahun 2011', '', 'Karyawan Swasta', '082114809409', 'facebook.com/chitajelitas', '@chitajelitass', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu agar berguna bagi orang lain ', 'Lulusan SMA tahun 2011', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(93, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Tole Iskandar, Perumahan Mutiara Depok, Blok BC No.4, Depok.', 1, 'Manajemen UI 2014', '', 'Mahasiswa', '0822 38253227', 'http://www.facebook.com/ezraagnesagatha.limbong', '@agnesagatha17', 'http://plus.google.com', '', '', 'Saya ingin turut berkontribusi dalam membangun pendidikan Indonesia yang lebih baik.', 'Manajemen UI 2014', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(94, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Tambak komplek Auri blok B no 5,Jakarta Pusat', 1, 'Saya adalah lulusan Institut Pertanian Bogor jurusan Sains Komunikasi dan Pengembangan Masyarakat angkatan 2009 kelulusan 2013', '', 'karyawan swasta', '085262819905', 'Mona Lusia Manihuruk', '@monaalucia', 'http://plus.google.com', '', '', 'Saya menyukai kegiatan belajar dan mengajar dan saya ingin berbagi melalui hal-hal yang saya sukai.', 'Saya adalah lulusan Institut Pertanian Bogor jurusan Sains Komunikasi dan Pengembangan Masyarakat angkatan 2009 kelulusan 2013', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(95, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kavling Haji Dharmansyah, Jalan Amarta No. 44, Margahayu, Bekasi Timur', 1, 'SD Pius Pekalongan\nSMP Pius Pekalongan\nSMUN 1 Pekalongan\nD1 Bahasa Mandarin \nD1 Sekretaris\n\nAdd: English Course (Beginner to Discussion level)', '', 'Personal Asisten/ Sekretaris', '089635244924', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_4a737a0eb0a8c78ec04eefcd53fdf2068dc61383.jpg', 'Saya sangat suka membaca dan saya ingin bergabung dengan IBF untuk menyebarkan semangat baca di kalangan anak-anak dan juga saya ingin berbagi ilmu sesuai dengan keahlian yang saya miliki. ', 'SD Pius Pekalongan\nSMP Pius Pekalongan\nSMUN 1 Pekalongan\nD1 Bahasa Mandarin \nD1 Sekretaris\n\nAdd: English Course (Beginner to Discussion level)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(96, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. lintas Bengkulu-Padang, kel. Beringin Raya kec. Muara Bangkahulu Kota Bengkulu', 1, 'sedang menempuh pendidikan Strata 1 di Universitas Bengkulu, Jurusan Agribisnis Fakultas Pertanian angkatan 2010', '', 'mahasiswa', '085669466995', 'https://www.facebook.com/satria.prasetyo.9', '@satria_agengp', 'http://plus.google.com', 'http://serdadu44.blogspot.com/', '', 'adanya kesamaan sikap sosial dalam berbagi dan membangun daerah saya khsusnya dan indonesia dari berbagai segi yang memungkinkan saya ikut serta didalamnya', 'sedang menempuh pendidikan Strata 1 di Universitas Bengkulu, Jurusan Agribisnis Fakultas Pertanian angkatan 2010', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(97, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumnas NO:5 Blok:A Kec.Sekayu Kab:Musibanyuasin Sumatera Selatan', 1, 'SDN 1 SEKAYU\nSMPN 1 SEKAYU\nSMAN 2 SEKAYU\nSEKOLAH TINGGI TEKNOLOGI NUKLIR-BATAN', '', '', '085729539689', 'Langlang Gumilar', '@gumilarlanglang', 'http://plus.google.com', '', '', 'untuk berbagi ilmu, merubah INDONESIA melalui generasi mudanya yang berilmu', 'SDN 1 SEKAYU\nSMPN 1 SEKAYU\nSMAN 2 SEKAYU\nSEKOLAH TINGGI TEKNOLOGI NUKLIR-BATAN', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(98, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'lingkungan II kec. megang sakti kab. musi rawas sumatera selatan', 1, 's1 manajemen fakultas ekonomi universitas lampung', '', 'wiraswasta', '085706098795', 'fajrin satria dwi kesuma', '@fajrinsatria', 'http://plus.google.com', '', '', '', 's1 manajemen fakultas ekonomi universitas lampung', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(99, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Pasir Raja Raya No. 5 Perum II Karawaci Tangerang', 1, 'Mahasiswa Sastra Inggris Universitas Indonesia, penerima beasiswa pertukaran pelajar Asean International Mobility for Students (AIMS) 2013, alumni SMA Negeri 1 Kota Tangerang, SMP Negeri 9 Kota Tanger', '', 'Mahasiswa', '081383887663', 'https://www.facebook.com/nirma.sandiningtias', '@nirmaayu', 'http://plus.google.com', 'http://garrulous-mind.blogspot.com/', '', 'saya memiliki kepedulian terhadap pendidikan anak-anak dan menyadari pentingnya bahasa inggris untuk diajarkan atau setidaknya dikenalkan sedini mungkin. ', 'Mahasiswa Sastra Inggris Universitas Indonesia, penerima beasiswa pertukaran pelajar Asean International Mobility for Students (AIMS) 2013, alumni SMA Negeri 1 Kota Tangerang, SMP Negeri 9 Kota Tangerang, SD Negeri 2 Parapat Kota Tangerang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(100, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Gegerkalong Girang 73/173, Bandung', 1, '', '', 'Mahasiswi', '085722679316', '', '@arthaemilda', 'http://plus.google.com', 'emmyartha.wordpress.com', '', 'ingin berbagi, ingin berarti', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(101, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Vila Tangerang Elok, Jl. Damar III, Blok D4 No.26, Tangerang', 1, 'Politeknik Negeri Media Kreatif (Desain Grafis)', '', 'Mahasiswa', '085210577126', 'http://www.facebook.com/franscicus13', '@duniafrans', 'http://plus.google.com', 'http://duniafranz.blogspot.com', '', 'Pastinya ingin berkontribusi untuk komunitas ini. Dan menambah ilmu, pengalaman, teman, dan saya berharap dengan ikut komunitas ini, saya bisa berkembang dan bisa bermanfaat untuk orang sekitar', 'Politeknik Negeri Media Kreatif (Desain Grafis)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(102, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Menjadi Network Engineer yang betul-betul berkompeten.\n- Sertifikasi MTCRE, MTCWE, MTCTCE, MTCINE, CCNA\n- Betul-betul berkompeten menjadi Network Engineer', 1, 'Network ', '', 'SMK 1 Gemolong', '', 'https://www.facebook.com/yono.programer', '', 'http://plus.google.com', 'http://yonoprogrammer.wordpress.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_0e00d3bd707d63b0d3396c7b19fc27097be70292.jpg', 'Selama menjadi adik binaan IB saya mendapat banyak ilmu, terutama dari kakak kakak IB dan teman teman IB yang mengupdate blog-blog mereka sehingga saya juga bisa memperoleh banyak pengetahuan.\n\nTetap semangat untuk kakak kakak pembina, donatur dan seluruh komponen pengurus IB untuk terus membina adik adik agar mereka tetap bisa melanjutkan pendidikan setinggi tingginya, untuk terus bisa mengasah kemampuan yang adik adik binaan miliki, kalu bisa sediakan tempat bagi adik-adik IB untuk menuangkan kemampuanya, mungkin salah satunya bisa diikutsertakan dalam kompetisi di bidang yang mereka sukai.', 'Network ', 0, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(103, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Gedongan, Kotagede, Yogyakarta', 1, '1. Mahasiswa STMIK AMIKOM YOGYAKARTA\n2. Asisten Praktikum di STMIK AMIKOM YOGYAKARTA: -Struktur Data, -Hardware&software, -Pemrograman Web, -Pemrograman Basis Data.', '', 'Mahasiswa', '085725902351', 'https://www.facebook.com/s.prasetyo.29', '-', 'http://plus.google.com', '-', '', 'Memperbanyak teman, menambah pengetahuan dan wawasan.', '1. Mahasiswa STMIK AMIKOM YOGYAKARTA\n2. Asisten Praktikum di STMIK AMIKOM YOGYAKARTA: -Struktur Data, -Hardware&software, -Pemrograman Web, -Pemrograman Basis Data.', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(104, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Sukoharjo gg. Jambu No. 142\nGejayan, Condong Catur\nJogjakarta\n', 1, 'Pegawai Negeri Sipil Provinsi Sumbar\nSekarang sedang melanjutkan pendidikan di Magister Perencanaan Kota dan Daerah UGM semester I. Pendidikan S1 Bahasa dan Sastra Inggris UNAND.\n', '', 'PNS-Mahasiswa S2', '085272424218', 'https://www.facebook.com/FivtiniaUminyaMiftahNfaiz', '@fivtinia', 'http://plus.google.com', '', '', 'Ingin berbagi dengan sesama biar hidup lebih bermakna..', 'Pegawai Negeri Sipil Provinsi Sumbar\nSekarang sedang melanjutkan pendidikan di Magister Perencanaan Kota dan Daerah UGM semester I. Pendidikan S1 Bahasa dan Sastra Inggris UNAND.\n', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(105, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl bimokurdo 64f', 1, 'Uin sunan kalijaga\n', '', 'mahasiswa', '085733313101', 'Dzulfikar fauzi', '', 'http://plus.google.com', '', '', '', 'Uin sunan kalijaga\n', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(106, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Kampung Bali X 111 ABC Tanah Abang Jakarta Pusat', 1, 'S1 Teknik Informatika UIN Sunan Kalijaga', '', '', '085228784254', 'http://www.facebook.com/fadli.ikhsan', '@f_ikhsanp', 'http://plus.google.com', 'www.dunia14inch.wordpress.com', '', 'Menambah link persaudaraan, menjalin tali silaturahim', 'S1 Teknik Informatika UIN Sunan Kalijaga', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(107, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek Graha Jala Yudha Jl. Kakap I Blok CC 12/17 Ciangsana Gn. Putri Bogor', 1, 'D3 Kebidanan\nS1 Kemas Peminatan Kesehatan Reproduksi FKM UI Tahun 2012\nStaf Research and Development forum mahasiswa peduli kesehatan reproduksi remaja (Rumah Panda) FKM UI\nPeer educator remaja di SMK', '', 'Mahasiswa-penulis', '081310440374', 'https://www.facebook.com/eka.hiupink', '@eka_hiupink', 'http://plus.google.com', 'demetereka.blogspot.com', '', 'Ingin berkontribusi terhadap pendidikan dan kesehatan bagi orang-orang  melalui tulisan. Karena dengan menulis, maka ilmu tercetak dalam sejarah. ', 'D3 Kebidanan\nS1 Kemas Peminatan Kesehatan Reproduksi FKM UI Tahun 2012\nStaf Research and Development forum mahasiswa peduli kesehatan reproduksi remaja (Rumah Panda) FKM UI\nPeer educator remaja di SMK Putera Bangsa\nPenulis buku kesehatan di Trans Info Media', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(108, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Teratai 2 no.29 Peruumnas Condong Catur Yogyakarta', 1, '', '', 'Mahasiswa', '087736664050', 'https://www.facebook.com/lailaa.wahyu', '@lailawahyu_r', 'http://plus.google.com', '', '', 'berbagi dan menambah ilmu, pengalaman, wawasan, relasi serta belajar dari apa yang tidak aku mengerti ', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(109, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl karet hijau no.31 rt.003/rw.005 beji timur,beji-depok 16422', 1, 'D3 pariwisata universitas indonesia', '', 'karyawan', '085780384807', '', '@indra_gobr', 'http://plus.google.com', '', '', 'Saya ingin berkontribusi sebaik mungkin menyalurkan sedikit kemampuan yang saya punya dalam hal teater dan menggambar, selain itu saya ingin mengasah kemampuan berbagi dengan sesama', 'D3 pariwisata universitas indonesia', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(110, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'perumnas cengkareng blok C14 no 14\nRT 08, RW 10\ncengkareng timur, cengkareng, jakarta barat 11730', 1, 'SMK Telkom Malang', '', 'Karyawan Swasta', '085790414999', 'http://www.facebook.com/riza.savina.abdillah', '@kecenggg', 'http://plus.google.com', '', '', '"Only by Giving and sharing are you able to receive  more than you already have"\nI believe on that quote, and by the way Allah said that in our wealth there is a portion for those who are unlucky.', 'SMK Telkom Malang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54');
INSERT INTO `ibf_member_detail` (`member_id`, `member_type`, `member_birth_date`, `member_birthplace`, `member_gender`, `member_address`, `member_region`, `member_education`, `member_skills`, `member_job`, `member_phone`, `member_facebook`, `member_twitter`, `member_gplus`, `member_blog`, `member_image_profile`, `member_motivation`, `member_description`, `member_reg_year`, `member_date_input`, `member_date_update`) VALUES
(111, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl arus dalam Rt.11/02 No 70 cawang, kramat jati, jakarta timur', 1, 'Mi Almanar Jakarta\nSMPN 50 Jakarta\nSMAN 51 Jakarta\nsedang kuliah S1 Pendidikan Ekonomi di Universitas Negeri Jakarta ', '', 'mahasiswa', '085780065537', 'https://www.facebook.com/Agent.p.platypus', '@hori_buchari', 'http://plus.google.com', '', '', 'ingin mencari pengalaman baru, eksplorasi ilmu pengetahuan bersama teman-teman baru', 'Mi Almanar Jakarta\nSMPN 50 Jakarta\nSMAN 51 Jakarta\nsedang kuliah S1 Pendidikan Ekonomi di Universitas Negeri Jakarta ', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(112, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kav. Bengkong Pertiwi Blok D5 No. 10', 1, 'Pemilik dan Pengajar di Bimbingan Belajar Generasi Gemilang', '', 'Guru', '085264105260', '', '@WahyuBoediArgo', 'http://plus.google.com', '', '', '', 'Pemilik dan Pengajar di Bimbingan Belajar Generasi Gemilang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(113, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Batang', 1, 'Berpendidikan :\nSD Proyonanggan 09 Batang\nSMP ISLAM Batang\nSMK N 1 Batang\n\nDan sempat beberapa bulan kuliah, dan berhenti dikarenakan biaya.', '', 'Wiraswasta', '085755557605', 'http://www.facebook.com/Hendro.Loko.Jati', '', 'http://plus.google.com', '', '', 'Banyak diantara kita yang masih kurang beruntung untuk mendapatkan ilmu seperti kita.', 'Berpendidikan :\nSD Proyonanggan 09 Batang\nSMP ISLAM Batang\nSMK N 1 Batang\n\nDan sempat beberapa bulan kuliah, dan berhenti dikarenakan biaya.', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(114, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Desa Dermo 5/2, Benjeng, Gresik.\nJawa Timur.', 1, 'SMP NEGERI 1 BENJENG, GRESIK, LULUS TAHUN 2003.\nSMA NEGERI 1 GRESIK, LULUS TAHUN 2009.\nGIZI FKM UI, LULUS TAHUN 2013.', '', 'Dosen PNS', '089637810459', 'http://www.facebook.com/lini.sholihah', '@linifatus', 'http://plus.google.com', 'www.linianisfatus.wordpress.com', '', 'Ingin berguna bagi orang lain, menginfakkan ilmu yang saya punya untuk orang lain, dan untuk beribadah.', 'SMP NEGERI 1 BENJENG, GRESIK, LULUS TAHUN 2003.\nSMA NEGERI 1 GRESIK, LULUS TAHUN 2009.\nGIZI FKM UI, LULUS TAHUN 2013.', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(115, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Bogor raya permai blok FBX-I no.26a, Bogor', 1, '- TKIT Ummul Quro Bogor (1999-2000)\n- SDIT ummul Quro Bogor (2000-2006)\n- SMPIT Ummul Quro Bogor (2006-2009)\n- SMAN 2 Cibinong (2009-2012)\n- Prodi Cina FIB UI (2012-sekarang)\n- FH UP (2014-sekarang)', '', 'mahasiswa', '087776236004', 'Umar Abdurrahim', '@U_Abdurrahim', 'http://plus.google.com', '', '', 'Saya ingin melakukan hal-hal yang positif khususnya di bidang sosial utamanya pendidikan. Karena menurut saya salah satu penyebab utama lambatnya perkembangan masyarakat karena salahnya pola pikir dan minimnya akses ke hard skill. Saya pun ingin memperluas jaringan.', '- TKIT Ummul Quro Bogor (1999-2000)\n- SDIT ummul Quro Bogor (2000-2006)\n- SMPIT Ummul Quro Bogor (2006-2009)\n- SMAN 2 Cibinong (2009-2012)\n- Prodi Cina FIB UI (2012-sekarang)\n- FH UP (2014-sekarang)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(116, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Matang Geulumpang Dua.Kab.Bireun.Kec.Peusangan.Aceh', 1, 'MAN Ruhul Islam Anak Bangsa\nFakultas Kedokteran Universitas Abulyatama', '', 'Mahasiswa', '081262085797', 'Vira(Aal Izz Well)', '@virawell', 'http://plus.google.com', '-', '', 'Ingin berbagi dan membantu sesama dengan sekuat tenaga dan sepenuh pengetahuan yang saya punya, memotivasi diri dan sosial, ingin menjunjung tinggi sosial.', 'MAN Ruhul Islam Anak Bangsa\nFakultas Kedokteran Universitas Abulyatama', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(117, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp Nyencle no 72 rt 003 rw 001 Cilangkap, Tapos, Depok 16958', 1, 'Saya lulusan Universitas Diponegoro Semarang, jurusan Kimia, angkatan 2009', '', 'Freshgraduate', '085640287347', 'http://www.facebook.com/rizqiyanaputriisrokhayani', '@Rizqiyanaputri', 'http://plus.google.com', 'rizqiyanaputriisrokhayani.blogspot.com', '', 'Karena saya menyukai dunia anak-anak dan ingin selalu berusaha menjadi orang yang bermanfaat :)', 'Saya lulusan Universitas Diponegoro Semarang, jurusan Kimia, angkatan 2009', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(118, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Bumi Daya VI No. 167 Cinere Depok ', 1, 'S1 Teknik Sipil', '', 'Karyawan Swasta', '08158961825', '', '', 'http://plus.google.com', '', '', 'Ingin berkontribusi dan dapat bermanfaat bagi orang lain', 'S1 Teknik Sipil', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(119, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'KPAD Bulak Rantai Jl. Rantai Suasa K-21 RT 03/005\nKel. Tengah Kec. Kramat Jati Jakarta Timur\nKode Pos: 13540', 1, 'sd : SDN Tengah 04 Petang\nsmp : SMPN 20 Jakarta\nsma : SMAN 42 Jakarta', '', 'pelajar', '08994709917', 'https://www.facebook.com/desfira.rousthesa', '@desckh', 'http://plus.google.com', '', '', 'ingin berbagi terhadap sesama dan ingin merasakan indahnya berbagi', 'sd : SDN Tengah 04 Petang\nsmp : SMPN 20 Jakarta\nsma : SMAN 42 Jakarta', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(120, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'JL. Burangrang 1 No 66, Abadi Jaya, Depok.', 1, 'Teknik Elektro 2006, Universitas Indonesia', '', '', '085693231058', '', '@georgehutauruk', 'http://plus.google.com', '', '', '', 'Teknik Elektro 2006, Universitas Indonesia', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(121, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Haji Sinen No. 50/117, RT 04/07, Ragunan, Jakarta Selatan', 1, 'TK Sumbangsih, 1997-2003 SD Sumbangsih,2003-2006 SMP Al Azhar 2 Pejaten, 2006 MAN Insan Cendekia Serpong, 2007-2009 SMAN 8, 2009-2014  S1 Teknik Lingkungan Institut Teknologi Bandung', '', 'Unemployed/Fresh Graduate', '08119568512', '', '@virafiria', 'http://plus.google.com', '', '', 'Ingin punya adik asuh', 'TK Sumbangsih, 1997-2003 SD Sumbangsih,2003-2006 SMP Al Azhar 2 Pejaten, 2006 MAN Insan Cendekia Serpong, 2007-2009 SMAN 8, 2009-2014  S1 Teknik Lingkungan Institut Teknologi Bandung', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(122, '["Web Developer","Pelaksana Kegiatan","Pengajar Pelatihan dan Mentor"]', '1991-04-21', 'Batang', 1, 'Kemandoran, Jakarta Selatan, DKI Jakarta', 4, 'S1 Teknik Informatika UIN Sunan Kalijaga Yogyakarta', 'web developer,php,python,html,css,javascript,office', 'IT Developer Kompas.com', '085770427123', 'http://facebook.com/sabbana', 'http://twitter.com/sabbana', 'http://plus.google.com', 'http://sabbana.wordpress.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_eadabe5bc2664563cac96e165f84783d93e2d2a4.jpg', 'Ikut-ikutan temen kuliah', 'Introvert yang peduli terhadap lingkungan sekitar, Suka humor, santai, romantis dan playboy', 2014, '2016-03-30 17:14:54', '2016-04-07 11:56:38'),
(123, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl, Bidara II no, 4. Tomang\nKel. Jati Pulo, Kec. Palmerah.\nJakarta Barat.', 1, 'Lulusan dari President University', '', 'Pegawai Swasta', '085717722114', 'https://www.facebook.com/resa.dhorandhoro', '@dhorandhoro', 'http://plus.google.com', '', '', 'Ingin berbagi dengan sesama', 'Lulusan dari President University', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(124, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jln. Pramuka no.36, Bekasi Selatan 17141', 1, '', '', 'Mahasiswa', '085710896439', 'Hana Fathiya', '@hanafathiya', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(125, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jln. Taman Rawa Pening I No.9, Jakarta-Pusat', 1, '', '', 'Karyawan Swasta', '085860071750', 'muhammadrizal.zulmi', '@bangjull', 'http://plus.google.com', '', '', '', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(126, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Samadi III/40 Pesanggrahan - Batu ', 1, 'Menyelesaikan S1 Ilmu Kesehatan Masyarakat di Universitas Airlangga, Surabaya di tahun 2009. Mulai tahun 2010 sampai dengan saat ini bekerja sebagai PNS di Dinas Kesehatan Kota Batu sebagai staf di Ba', '', 'Pegawai Negeri Sipil', '085232228674', 'www.facebook.com/WSHayu', '@wshayu', 'http://plus.google.com', 'wahyuaningtias.blogspot.com', '', 'Ingin mengasah kemampuan menulis dan berbagi ilmu tentang kesehatan', 'Menyelesaikan S1 Ilmu Kesehatan Masyarakat di Universitas Airlangga, Surabaya di tahun 2009. Mulai tahun 2010 sampai dengan saat ini bekerja sebagai PNS di Dinas Kesehatan Kota Batu sebagai staf di Bagian Perencanaan dan Pelaporan. Saat ini tengah menjalani Tugas Belajar di Pascasarjana Ilmu Kesehatan Masyarakat di Universitas Gadjah Mada.', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(127, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Sersan Suharmaji 139 Kediri (64128)', 1, 'SDN Manisrenggo Kediri (1999-2005)\nMTs. Miftahul Falaah Kediri (2005-2008)\nMAN 2 Kediri (2008-2011)\nUniversitas Negeri Malang Fakultas Ilmu Sosial Jurusan Sejarah (2011 sampai sekarang)', '', 'Mahasiswa', '083835103035', 'mohammad thobib', '@sejthobib', 'http://plus.google.com', 'www.thobib21.wordpress.com', '', 'berbagai ilmu pengetahuan untuk mencerdaskan kehidupan bangsa', 'SDN Manisrenggo Kediri (1999-2005)\nMTs. Miftahul Falaah Kediri (2005-2008)\nMAN 2 Kediri (2008-2011)\nUniversitas Negeri Malang Fakultas Ilmu Sosial Jurusan Sejarah (2011 sampai sekarang)', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(128, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jalan hayam wuruk no 115 tanjung agung tanjung karang timur bandar lampung', 1, '- sdn 1 tanjung agung bandar lampung \n- smpn 5 bandar lampung \n- sman 12 bandar lampung \n- universtas muhammadiyah lampung jurusan psikologi 2012 semester 5\n- universitas  darmajaya atau ibi darmajaya', '', 'mahasiswa psikologi di uml dan ekonomi manajemen d', '089631257628', 'https://www.facebook.com/ahanjinma', '@adi mashur', 'http://plus.google.com', 'djmanajemen.blogspot.com', '', 'saya mau bergabung dengan ibf meskipun di daerah saya tidak ada komunitas ilmu berbagi namun saya pernah bertemu dengan salah satu orang komunitas ilmu berbagi dilampung saya senang dengan komunitas yang berjuang dalam upaya melawan kebodohan dengan memaksimalkan ilmu yang ada karena dilampung sendiri saya membangun komunitas atau kelompok kecil berbagi ilmu psikologi  serta dari komunitas ibf setelah saya baca visi dan misinya dan artikel artikel di website ibf saya merasa sangat tertarik dan ingin bergabung dalam komunitas ini .', '- sdn 1 tanjung agung bandar lampung \n- smpn 5 bandar lampung \n- sman 12 bandar lampung \n- universtas muhammadiyah lampung jurusan psikologi 2012 semester 5\n- universitas  darmajaya atau ibi darmajaya jurusan ekonomi  manajemen semester 7 \n- d1 dcc jurusan komputer \n-  bahasa inggris  kursus lia bandar lampung', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(129, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp. Pasir Sari Desa Pasir Konci Cikarang Selatan Bekasi', 1, '2005-2008 Mts Negeri 1 Palimanan , Cirebon\n2008-2011 Smk Pgri 1 Palimanan Cirebon , Administrasi Perkantoran\n2011~sekarang D3 Manajemen Informatika Cikarang', '', 'Admin Perusahaan Manufacture', '087879372507', 'liefah kimyosan', '@oliev_kim', 'http://plus.google.com', 'liefahzaeta', '', 'Tidak lain ingin berbagi dalam bentuk hal yang dapat memberikan manfaat untuk sesama itu motto utama saya untuk mengikuti IBF ini , untuk saat ini saya bekerja dan masih status mahasiswa Bsi Cikarang jurusan manajemen informatika, tapi walau saya belum bisa terjun langsung menjadi volunteer secara langsung , tapi saya tetap ingin membagi dari ilmu yang saya bisa bagikan . Terima Kasih. ', '2005-2008 Mts Negeri 1 Palimanan , Cirebon\n2008-2011 Smk Pgri 1 Palimanan Cirebon , Administrasi Perkantoran\n2011~sekarang D3 Manajemen Informatika Cikarang', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(130, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl jatimulya, jl kecapi IV no. C353', 1, 'President University - International Business', '', '', '085217250855', 'http://www.facebook.com/rindaputrisari', '@rindarinde', 'http://plus.google.com', '', '', 'Ingin berbagi dengan sesama, dan ingin menjadi seseorang yang bermanfaat.', 'President University - International Business', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(131, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Pondok timur Mas, Blok:G1 No:4. Taman Galaxy, Kel. Jakasetia, Kec. Bekasi Selatan', 1, 'President University ', '', 'Mahasiswa', '081347733723', 'Bramantyo Wibisono', '@brmantyo', 'http://plus.google.com', '', '', 'Sekedar ingin ber kontribusi untuk pendidikan Indonesia.', 'President University ', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(132, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Ds. Larangan Slampar Kecamatan Tlanakan Kabupaten Pamekasan', 1, 'S1 Pendidikan Geografi Universitas Negeri Malang\nSedang melanjutkan studi di UGM pada jurusan Geo-Information for Spatial Planning and Disaster Risk Management', '', 'Mahasiswa', '082139510071', 'https://www.facebook.com/aizah.fajriana', '@Aishcielo', 'http://plus.google.com', 'https://www.tumblr.com/blog/aizahfajriana', '', 'Pada hakikatnya manusia itu harus saling berbagi, dan sebisa mungkin menyalurkan apa yang kita miliki kepada sesama agar hidup menjadi barokah dan berguna untuk orang lain.', 'S1 Pendidikan Geografi Universitas Negeri Malang\nSedang melanjutkan studi di UGM pada jurusan Geo-Information for Spatial Planning and Disaster Risk Management', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(133, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Candiwates No.07. RT 01/RW 02, Kecamatan Prigen, Kabupaten Pasuruan, Provinsi Jawa Timur', 1, '', '', 'Mahasiswa', '085755594008', 'www. facebook/terrymertiara', '@terry_mertiaraa', 'http://plus.google.com', '', '', 'belajar dari adik adik...', '', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(134, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp. Renged Ds. Renged Rt/Rw 01 Kec. Binuang Kab. Serang Prov. Banten', 1, 'SDN 1 RENGED\nSMPN 1 KRESEK\nSMAN 1 KRESEK\nS1 UNIVERSITAS MUHAMMADIYAH PROF.DR.HAMKA\nS2 UNIVERSITAS GADJAH MADA', '', 'mahasiswa', '087871856452', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_117b8f7694ffcfcbe17d773e31fc2e059e2a9d83.jpg', 'ingin berbagi ilmu yang bermanfaat, menambah pengalaman.', 'SDN 1 RENGED\nSMPN 1 KRESEK\nSMAN 1 KRESEK\nS1 UNIVERSITAS MUHAMMADIYAH PROF.DR.HAMKA\nS2 UNIVERSITAS GADJAH MADA', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(135, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Yacaranda Sekip Unit IV, Bulaksumur Sleman', 1, 'Lulusan D3 Teknik Mesin UGM (spesialisasi Mesin Pendingin dan Kontrol Otomasi)\nLulusan S1 Teknik Mesin UGM (spesialisasi Teleoperasi berbasis Internet)\nMinat bidang Manufaktur dan Otomasi, Internet of', '', 'Instruktur DTM SV UGM', '087838512008', '', '', 'http://plus.google.com', '', '', 'Ingin share knowledge, menambah wawasan', 'Lulusan D3 Teknik Mesin UGM (spesialisasi Mesin Pendingin dan Kontrol Otomasi)\nLulusan S1 Teknik Mesin UGM (spesialisasi Teleoperasi berbasis Internet)\nMinat bidang Manufaktur dan Otomasi, Internet of Thing', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(136, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Doplang Rt.19/01 Denanyar, Tangen, Sragen 57261', 1, 'S1 Pendidikan Bahasa Inggris IKIP PGRI SEMARANG\ndan sekarang sedang belajar tentang anak berkebutuhan khusus', '', 'Guru SLB di Gunungkidul, DIY', '', 'feb_vegirl0402@yahoo.com', '', 'http://plus.google.com', '', '', 'ingin berbagi dan bermanfaat untuk orang lain khususnya di bidang pendidikan', 'S1 Pendidikan Bahasa Inggris IKIP PGRI SEMARANG\ndan sekarang sedang belajar tentang anak berkebutuhan khusus', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(137, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek "The Address" blok B no. 1, Tapos, Cimanggis, Depok.', 1, 'D3 Humas, UI', '', 'Pemusik, tutor musik', '081513632111', 'www.facebook.com/adityasidhip', '@sidhiaditya', 'http://plus.google.com', 'duosenarsenja.tk', '', 'Mau melihat teman-teman tersenyum dengan ilmu yang saya berikan.', 'D3 Humas, UI', 2014, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(138, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Tridaya indah 2, Jalan Widjaya Kusuma IV, Blok D19/6, Tambun Selatan, Bekasi', 1, 'Sarjana Kesehatan Masyarakat dengan minor Keselamatan dan Kesehatan Kerja. Sekarang bekerja di sebuah perusahaan Seismik yang berkantor di Kuningan, Jakarta Selatan. Anak pertama dari 2 bersaudara.', '', 'Pegawai Swasta', '081373796554', '', '', 'http://plus.google.com', 'galihrespati.tumblr.com', '', 'Berbuat baik nggak perlu alasan.', 'Sarjana Kesehatan Masyarakat dengan minor Keselamatan dan Kesehatan Kerja. Sekarang bekerja di sebuah perusahaan Seismik yang berkantor di Kuningan, Jakarta Selatan. Anak pertama dari 2 bersaudara.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(139, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'pogung kidul RT 04, RW 49, No 3 A', 1, 'SD No 1 Tiyingtali 1998-2004\nSMP Negeri 1 AMlapura 2004-2007\nSMA Negeri 2 Amlapura 2007-2010\nS1 Universitas Pendidikan Ganesha 2010-2014\nS2 Universitas Gadjah Mada 2014-', '', 'Mahasiswa', '085792739661', 'wyanalokantara', '', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu terkait menulis karya ilmiah/riset, peduli lingkungan dan mengajar anak-anak tentang pendidikan dasar', 'SD No 1 Tiyingtali 1998-2004\nSMP Negeri 1 AMlapura 2004-2007\nSMA Negeri 2 Amlapura 2007-2010\nS1 Universitas Pendidikan Ganesha 2010-2014\nS2 Universitas Gadjah Mada 2014-', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(140, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Asem Baris Raya, Gg.M1, No.40, Tebet, Jakarta Selatan, Jakarta, Indonesia', 1, 'Teknik Informatika Universitas Muhammadiyah Jakarta', '', 'Mahasiswa', '087870220448', 'http://www.facebook.com/benvenuto.qui', '@AmNotIdiot', 'http://plus.google.com', 'bangayii.wordpress.com', '', 'ingin berbagi kepada semua yang membutuhkan, ingin mengaplikasikan ilmu yang dimiliki, dan ingin lebih berguna untuk orang lain', 'Teknik Informatika Universitas Muhammadiyah Jakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(141, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Cut mutia bekasi', 1, 'Sdn sepanjang jaya 1,smpn 02 bekasi,sman 8 bekasi,univesitas negeri jakarta', '', 'mahasiswa', '085710081252', 'putri sri maijayanti', '@ptrsrmjynti', 'http://plus.google.com', 'psmaijayanti3105.blogspot.com', '', 'Ingin menambah pengalaman dan meningkatkan rasa kemanusiaan dan sosial. Mencari pengalaman,teman dan kesempatan', 'Sdn sepanjang jaya 1,smpn 02 bekasi,sman 8 bekasi,univesitas negeri jakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(142, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jln raya jatinangor pondok anggrek putri patimah RT 01 RW 02 desa cikeruh kec jatinangor', 1, 'mahasiswa S1 unpad angkatan 2013', '', 'mahasiswa', '087727080208', 'ranti amanda', '@aim_ranti', 'http://plus.google.com', '', '', 'ingin menambah relasi, pengalaman dan pengetahuan serta berkarya dan mengabdi kepada masyarakat', 'mahasiswa S1 unpad angkatan 2013', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(143, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Kerja Bakti RT 3 RW 2 no 96\nKel. Makasar\nKec. Makasar\nJakarta Timur', 1, 'S1 Teknik Informatika', '', 'developer', '085883817138', 'http://www.facebook.com/emailearif', '@emailearif', 'http://plus.google.com', 'dewaproject.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_b211727ba2d6a587018bd04ff53f8069c4cab283.jpg', 'Berbagi Ilmu', 'S1 Teknik Informatika', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(144, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'perum bumi rancaekek kencana, blok x jl bakung xx no. 95 kabupaten bandung', 1, 'smk analis kimia, lulus kuliah dengan jurusan management sumber daya manusia. sekarang membangun usaha di bidang  tour & travel dan bekerja sebagai marketing di sebuah lembaga training di Bandung', '', 'Marketing lembaga training', '081214175581', '', '@ansharsyah1', 'http://plus.google.com', '', '', 'tertarik dengan program di komunitas ini serta terinspirasi oleh program dan kegiatan-kegiatan di komunitas ini', 'smk analis kimia, lulus kuliah dengan jurusan management sumber daya manusia. sekarang membangun usaha di bidang  tour & travel dan bekerja sebagai marketing di sebuah lembaga training di Bandung', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(145, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Grenjeng Rt 02/01 Kenteng Nogosari Boyolali', 1, 'SD N Kenteng 2\nSMP N 1 Ngemplak\nSMK N 1 Banyudono', '', 'Mahasiswa', '085647387024', 'http ://www.facebook.com/upik.dwisyahputri', '-', 'http://plus.google.com', '-', '', 'ingin berbagi ilmu kepada semua orang', 'SD N Kenteng 2\nSMP N 1 Ngemplak\nSMK N 1 Banyudono', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(146, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Neglasari, Tangerang', 1, 'S1 Teknik Kimia', '', 'PNS Kementerian Keuangan', '087810322750', '', '', 'http://plus.google.com', '', '', 'Ingin memberikan manfaat untuk orang lain. Saya boring dengan rutinitas sehari-hari dalam bekerja dan mulai berpikir apa yang bisa saya lakukan untuk membantu dan menjadi manfaat bagi orang lain.', 'S1 Teknik Kimia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(147, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan plesiran no 21, tamansari, bandung/ jalan way kanan no 17, pahoman, bandar lampung', 1, 'Pendidikan terakhir sma di sman 2 bandar lampung, sekarang sedang menjalani studi di institut teknologi bandung', '', 'mahasiswa', '08117213295', 'http://www.facebook.com/rachma fajrina', '@rachefajrina', 'http://plus.google.com', '', '', 'Ingin berbagi dengan yang lain', 'Pendidikan terakhir sma di sman 2 bandar lampung, sekarang sedang menjalani studi di institut teknologi bandung', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(148, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl. jaelani no. 71 Purwokerto Utara', 1, '', '', 'Mahasiswi', '085223500910', '', '@esposa_hikari', 'http://plus.google.com', '', '', 'Merasa tersentuh hatinya ingin berbagi terhadap yang membutuhkan', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(149, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Ciluar asri blok B.10 no.20', 1, 'SDN Sindangsari Bogor\nSMPN 8 Bogor\nSMAN 3 Bogor\nUniversitas Padjadjaran - Ilmu Kelautan', '', 'Mahasiswa', '085811184702', 'https://www.facebook.com/okumura.bintan', '@bintan_aditya', 'http://plus.google.com', 'bintanaditya.blogspot.com', '', 'saya tertarik dengan berbagai program yang secara kebetulan saya lihat di suatu web. saya ingin berbagi ilmu yang telah saya peroleh meskipun tidak seberapa namun setidaknya saya berkontribusi dalam memajukan cita-cita anak-anak dalam foundation ini', 'SDN Sindangsari Bogor\nSMPN 8 Bogor\nSMAN 3 Bogor\nUniversitas Padjadjaran - Ilmu Kelautan', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(150, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Sembego, RT 15 RW 38, Maguwoharjo, Depok, Seman, Yogyakarta', 1, 'Mahasiswi Teknik Sipil Universitas Atma Jaya Yogyakarta', '', 'Mahasiswi', '085747338069', '', '@PuputLestari_25', 'http://plus.google.com', '', '', 'Ingin menjadi seseorang yang mampu memberi manfaat bagi orang lain dengan cara berbagi ilmu yang saya miliki.', 'Mahasiswi Teknik Sipil Universitas Atma Jaya Yogyakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(151, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'kp. pedongkelan jakarta timur', 1, 'Lulus SMK N 44 Jakarta 2014 dan sekarang kuliah di salah satu politeknik swasta di jakarta.', '', 'Mahasiswi', '08990019907', '', '@nnununNS', 'http://plus.google.com', '', '', 'saya ingin berbagi dengan adik-adik yang kurang mampu. saya ingin hidup saya bermanfaat bagi orang lain, walaupun mungkin ilmu saya tidak banyak. karena saya tau betul rasanya hidup dalam kebodohan, dan saya tidak ingin generasi generasi muda Indonesia menjadi kacau.', 'Lulus SMK N 44 Jakarta 2014 dan sekarang kuliah di salah satu politeknik swasta di jakarta.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(152, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Dsn.Sirnasari Ds.Ciptasari No.505 Kec.Pamulihan Kab.Sumedang', 1, 'saya sedsang menjalani jenjang perkuliahan S1 Farmasi di sekolah tinggi farmasi bandung', '', 'Mahasiswa', '08981912603', 'http://www.facebook.com/ikmahanifahr', '@ikmaHR', 'http://plus.google.com', 'ikmahanifahr.blogspot.com', '', 'menambah pengalaman, berbagi kasih dengan sesamama manusia, membuka relasi dan hubungan baru dengan yang lain.', 'saya sedsang menjalani jenjang perkuliahan S1 Farmasi di sekolah tinggi farmasi bandung', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(153, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perum. Griya Wirokerten Indah No 140 Banguntapan Bantul Yogyakarta', 1, 'SDN Kotegede V YK 2001-2006\nMTs AL-Mukmin Surakarta 2007-2009\nMA Al-Mukmin Surakarta 2010-2012\nKuliah Universitas Negeri Yogyakarta 2012-2016 (Insyaallah)', '', 'Mahasiswa', '083867948960', 'maizura.rizuki@yahoo.com', '@maiiy_zhura', 'http://plus.google.com', '', '', 'Ingin menjalin tali silaturahmi lebih luas dengan orang-orang yang lebih membutuhkan dan berharap menemukan keluarga baru yang mendukung untuk terus berbagi hal-hal positif. ', 'SDN Kotegede V YK 2001-2006\nMTs AL-Mukmin Surakarta 2007-2009\nMA Al-Mukmin Surakarta 2010-2012\nKuliah Universitas Negeri Yogyakarta 2012-2016 (Insyaallah)', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(154, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. perwira No. 50 rt. 02 rw.06 ds.babakan kec. Dramaga Kab. Bogor ', 1, 'SMAN 3 Sidoarjo 2008-2010\nINSTITUT PERTANIAN BOGOR 2010-2014\n', '', 'Swasta', '081286959729', 'http://www.facebook.com/andininisurahmah', '@nisurahmah', 'http://plus.google.com', '', '', 'Saya ingin mengajarkan bahasa inggris. Karena dengan mengajar saya juga belajar. Ilmu perlu dibagi agar lebih bermanfaat untuk orang dan kita sendiri. ', 'SMAN 3 Sidoarjo 2008-2010\nINSTITUT PERTANIAN BOGOR 2010-2014\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(155, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Mampang Prapatan VI No. 15, Mampang, Jakarta, 12790', 1, 'SMP 115 Jakarta\nSMAN 28 Jakarta\nAdministrasi Fiskal FISIP Universitas Indonesia', '', 'Pegawai Swasta', '08988161398', '', '@ultrahen', 'http://plus.google.com', '', '', 'Ingin memberikan kontribusi bagi lingkungan terutama bidang pendidikan', 'SMP 115 Jakarta\nSMAN 28 Jakarta\nAdministrasi Fiskal FISIP Universitas Indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(156, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Telaga Mas\nJl. Duta Mas XII blok BB6 no 29 \nRt.007 Rw.016\nBekasi Utara 17123', 1, 'Tahun 2011 Lulus dari SMA PATRIOT BEKASI\nTahun 2011-2012 Mahasiswi Fakultas Ekonomi Universitas Azzahra Jurusan Akutansi (hanya 2 smester kemudian pindah)\nTahun 2011- sekarang Mahasiswi aktif di Sekol', '', 'Mahasiswi', '085718201560', 'https://www.facebook.com/jejonk.khadafiII', '@JPFajrin', 'http://plus.google.com', '', '', 'Ingin share ilmu dan menyumbangkan waktu luang yang saya punya kepada adik-adik yang ada di ilmuberbagi agar lebih bermanfaat', 'Tahun 2011 Lulus dari SMA PATRIOT BEKASI\nTahun 2011-2012 Mahasiswi Fakultas Ekonomi Universitas Azzahra Jurusan Akutansi (hanya 2 smester kemudian pindah)\nTahun 2011- sekarang Mahasiswi aktif di Sekolah Tinggi Teknik PT.PLN (persero) Jurusan Teknik Sipil', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(157, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Royani 1 - Setiabudi', 1, 'S1 - IT', '', '-', '85797105513', '', '', 'http://plus.google.com', 'yonaecyber.WordPress.com', '', 'Ingin ikut terlibat dan berbagi. Ingin merasakan kebahagiaan ketika bisa membantu yg membutuhkan.', 'S1 - IT', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(158, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Jeruk Manis 3 No 19 RT006/010 Kebon Jeruk - Jakarta Barat ', 1, 'SMK Telkom \nMahasiswa Universitas Esa Unggul ', '', 'Network Engineer', '085659325765', 'facebook.com/luphleci', '@motaroirhaby', 'http://plus.google.com', 'motaroirhaby@gmail.com', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_37627e78c301a712af7cf2706954dbc35b658261.jpg', '- Ingin berkumpul dengan banyak orang dan berbagi apa yang dapat di bagi dan mendapatkan ilmu, pengalaman, teman.\n\n- ingin menghabiskan umur yang diberikan allah untuk berbagi, insha allah.', 'SMK Telkom \nMahasiswa Universitas Esa Unggul ', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(159, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pulogadung-jakarta timur', 1, 'S1. Teknik Informatika', '', 'Karyawan Swasta', '085224531639', 'https://www.facebook.com/Oechiex', '@oechiex', 'http://plus.google.com', 'oechiex.weebly.com', '', 'Ingin berbagi dengan sesama.', 'S1. Teknik Informatika', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(160, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. lintas Bengkulu-Padang, kel. Beringin Raya kec. Muara Bangkahulu Kota Bengkulu', 1, 'sedang menempuh pendidikan Strata 1 di Universitas Bengkulu, Jurusan Agribisnis Fakultas Pertanian angkatan 2010', '', 'mahasiswa', '085669466995', 'https://www.facebook.com/satria.prasetyo.9', '@satria_agengp', 'http://plus.google.com', 'http://serdadu44.blogspot.com/', '', 'adanya kesamaan sikap sosial dalam berbagi dan membangun daerah saya khsusnya dan indonesia dari berbagai segi yang memungkinkan saya ikut serta didalamnya', 'sedang menempuh pendidikan Strata 1 di Universitas Bengkulu, Jurusan Agribisnis Fakultas Pertanian angkatan 2010', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(161, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Pesing POglar Rt. 004/01 No. 57 Jakarta Barat', 1, '2000 -  2006         : Lulus SDN KKA 07 Petang\n2007 -  2010         : Lulus MTs N 10 Jakarta\n2010 -  2013         : Lulus SMK N 9 Jakarta\n2014 -  Sekarang  : Mahasiswi Univ. Mercu Buana Jakarta', '', 'Mahasiswi', '083805151171', 'https://www.facebook.com/profile.php?id=1000089738', '', 'http://plus.google.com', '', '', 'Alasan ikut bergabung IBF :\nKarna dari diri pribadi sendiri senang dengan kegiatan - kegiatan yang postif seperti ini apalagi tujuan nya mencari ridho Allah dan membahagiakan sesama dengan ilmu yang kita miliki.', '2000 -  2006         : Lulus SDN KKA 07 Petang\n2007 -  2010         : Lulus MTs N 10 Jakarta\n2010 -  2013         : Lulus SMK N 9 Jakarta\n2014 -  Sekarang  : Mahasiswi Univ. Mercu Buana Jakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(162, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perum TOP blog F7 No 4 Rt/Rw 023/08 Kel.15 ULU Kec.SU1, Palembang', 1, 'DATA PRIBADI\nNama			:	Iswadi\nAlamat 	:	Perum TOP blog F7 No 4 Rt/Rw 023/008 Kel.15 Ulu Kec.SU1\nPalembang.  Kode pos : 30257\nTempat tanggal lahir	:	Palu (Kab.Ogan Ilir), 02-Januari-1997\nAgama			:	Islam', '', 'Mahasiswa', '089687341001', 'Iswadi', '@iswadice', 'http://plus.google.com', 'Iswadi1997.blogspot.com', '', 'Karena lembaga ini sesuai dengan basic saya Kuliah yaitu Jurusan Sosiologi. kita sebagai Agent social of change harus berguna untuk Negara ini... mengabdi untuk ihsan.', 'DATA PRIBADI\nNama			:	Iswadi\nAlamat 	:	Perum TOP blog F7 No 4 Rt/Rw 023/008 Kel.15 Ulu Kec.SU1\nPalembang.  Kode pos : 30257\nTempat tanggal lahir	:	Palu (Kab.Ogan Ilir), 02-Januari-1997\nAgama			:	Islam\nJenis kelamin		:	Laki-laki\nStatus			:	Belum Menikah\nNo.HP/Telepon	:	0896-8734-1001\nE-Mail			:	iswadinawawi7@gmail.com\nAkun Facebook	:	Iswadi\nPekerjaan		:	Mahasiswa (2014 s/d Sekarang)\nJurusan/Fakultas	:	Sosiologi/ FISIP\nUniversitas		:	Universitas Sriwijaya\n\nRIWAYAT PENDIDIKAN\nA.Formal\n1.(2008) Lulus SD Negeri 1 Pedu, Kec.Jejawi Kab.OKI, Provinsi Sumsel\n2.(2011) Lulus SMP Negeri 3 Jejawi, Kab.OKI, Provinsi Sumsel\n3.(2014) Lulus SMA Negeri 19 Palembang, Provinsi Sumsel\n4.(2014-Sekarang) Mahasiswa FISIP, Universitas Sriwijaya, Provinsi Sumsel\nB.Non Formal\n1. (2014) Lulus kursus Primagama (Kertapati) di Palembang\n2. (2013) LBT (Leadership Basic Training) PII PD Kota Palembang. Bersertifikat \n\n\n\nPENGALAMAN BEKERJA\n1. 2011 (Bakrie Telecom) Esia Sebagai Staf Marketing \n2. 2012 Dompet Dhuafa Sumsel Sebagai Staf Pendistribusian\nPENGALAMAN ORGANISASI\n1. (2011-2013) BPH OSIS SMAN 19 Palembang\n2. (2011-Sekarang) IRMA Al-Muhajirin, Amin Mulya RW 08, Kel.15 ULU, Palembang \n3.(2012-2013) Ketua Umum ROHIS SMAN 19 Palembang\n4.(2014-2015) Pengurus Daerah Pelajar Islam Indonesia (PD PII) Kota Palembang\n5.(2015-Sekarang) BEM KM FISIP Universitas Sriwijaya\n6.(2015-Sekarang) LDF WAKI FISIP Universitas Sriwijaya\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(163, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Jend. Sudirman', 1, 'Sedanga Menjalani Studi S1di Universitas Pettimura', '', 'Mahasiswa', '082399166357', 'jihan makailah', '@ilmuberbagi', 'http://plus.google.com', 'http://www.makailahmyblogger.com', '', 'karena saya merasa sangat menyenangkan jika bisa berbagi sesuatu yang bermanfaat bagi orang lain. Selain itu ketertarikan saya untuk bergabung dengan komunitas ini jug karena saya merasa komunitas ini dapat membantu mencerdaskan dan meningkatkan SDM di indonesia selain itu juga dapat menjadi sarana untuk meningkatkan pengetahuan bagi saudara-saudara kita yang berada di daerah terpencil yang masih sangat minim akses pengetahuannya.', 'Sedanga Menjalani Studi S1di Universitas Pettimura', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(164, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Lemah Gempal 4B/6 Semarang', 1, 'S1 Teknik Kimia Universitas Diponegoro 2006-2010', '', 'Karyawan swasta', '085641520297', 'https://www.facebook.com/noviana.ika.7', '', 'http://plus.google.com', 'http://keepspirit23.blogspot.com/', '', 'Ingin berbagi ilmu dengan sesama, tentang pendidikan atau tentang pekerjaan saya yang sekarang sebagai karyawan swasta di Diary Industry', 'S1 Teknik Kimia Universitas Diponegoro 2006-2010', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(165, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Ngingas Barat, kel. krian, kec. krian, kab. sidoarjo ', 1, 'alumni smanor jatim', '', 'pendidik', '08977368273', '', '@adhi_sucahyo', 'http://plus.google.com', '', '', 'saya tertarik karena saya tidak mau mati tanpa membagikan ilmu olahraga saya.', 'alumni smanor jatim', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(166, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek graha alam raya Jl.meteor raya w1 no.5 margaluyu margacinta buahbatu bandung\n', 1, 'Diploma perhotelan', '', 'karyawati', '081322462482', '', '', 'http://plus.google.com', '', '', ' Ingin berbagi dan belajar berbagi', 'Diploma perhotelan', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(167, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Tebet Timur Dalam VII No.24, Tebet, Jakarta Selatan', 1, 'Bachelor of International Affairs Mgt.\nUniversiti Utara Malaysia', '', 'Karyawan Swasta', '085691128343', 'https://www.facebook.com/renotomo', '', 'http://plus.google.com', '', '', 'Sharing pengalaman dan pengetahuan', 'Bachelor of International Affairs Mgt.\nUniversiti Utara Malaysia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(168, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'bangil,pasuruan jawa timur', 1, 'SMK', '', 'maintenence', '085700022350', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_c41cb60184183294cbefffdd469777e87285378c.jpg', 'ingin berbagi sedikit ilmu', 'SMK', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(169, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Dusun cisingkah desa sukamanah rt 06 rw 02 kecamatan sindangksindangkasih kabupaten ciamis', 1, 'Departemen ilmu produksi dan teknologi peternakan, fakultas peternakan, institut pertanian bogor', '', 'mahasiswa', '081214391450', 'https://mobile.facebook.com/home.php?refsrc=http%3', '@indratutung', 'http://plus.google.com', 'tulisanpeternak.blogspot.com', '', 'ingin belajar dan mulai berbagi, dan membutuhkan relasi untuk sama-sama berbagi di daerah kami.', 'Departemen ilmu produksi dan teknologi peternakan, fakultas peternakan, institut pertanian bogor', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(170, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Diponegoro komplek terminal kota no. 19 putussibau.', 1, 'SMA sederajat.', '', 'wirausaha', '081250218480', '', '', 'http://plus.google.com', '', '', 'Pingin ngikut donasi.', 'SMA sederajat.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(171, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'tanjung gunung, kelurahan gerung selatan, kecamatan gerung, kabupaten lombok barat, NTB', 1, 'sedang menempuh pendidikan s2 di kota yogyakarta', '', '-', '081915945915', '', '', 'http://plus.google.com', '', '', 'ingin berbagi ilmu  dan membantu orang lain yang membutuhkan ', 'sedang menempuh pendidikan s2 di kota yogyakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(172, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'RT 01 RW 08\nDs/Kec Butuh/Butuh\nKab. Purworejo', 1, 'SDN 1 ABEAN\nSMP N 1 PURWOREJO\nSMA N 1 PURWOREJO\nD III TEKNIK ELEKTRO UGM', '', '-', '085701144479', '', '', 'http://plus.google.com', '-', '', 'ingin bermanfaat bagi masyarakat lain', 'SDN 1 ABEAN\nSMP N 1 PURWOREJO\nSMA N 1 PURWOREJO\nD III TEKNIK ELEKTRO UGM', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(173, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl seruni 1 no 34, perum.green wood, semarang 50222', 1, 'SD AISYIYAH, Jakarta, Tamar tahun 1981\nSMPN 30, Jakarta, Tamar tahun 1984\nSMAN 52, Jakarta, Tamar tahun 1987\nDiploma III, Jurusan Tehnik.Sipil, ISTN, Jakarta, Tamat tahun 1991\nSttata 1, jurusan Tehnik', '', 'Wiraswasta', '081215918856', '', '', 'http://plus.google.com', '', '', 'Berbagi agar manfaat', 'SD AISYIYAH, Jakarta, Tamar tahun 1981\nSMPN 30, Jakarta, Tamar tahun 1984\nSMAN 52, Jakarta, Tamar tahun 1987\nDiploma III, Jurusan Tehnik.Sipil, ISTN, Jakarta, Tamat tahun 1991\nSttata 1, jurusan Tehnik Sipil, Univ Jayabaya,Tamat tahun 1994', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(174, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Sarang Bango III/23 Rt. 005/05 \nKel. Marunda, Kec.Cilincing\nJakarta 14150', 1, 'SD Negri 04 Pt. Lulus 1980\nSMP Al-Khairiyah Lulus 1983\nSMA Negri 13 Lulus 1986', '', 'wirausaha', '081316504693', '@muhhamaddukrie', '@maskrie', 'http://plus.google.com', 'http://smasaonline.blogspot.com/', '', 'Ingin meningkatan pencerahan diri dan meningkatkan kualitas berbagi agar kontribusi kepada masyarakat  lebih optimal dan berdaya guna serta berhasil guna.', 'SD Negri 04 Pt. Lulus 1980\nSMP Al-Khairiyah Lulus 1983\nSMA Negri 13 Lulus 1986', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(175, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Yoas Sudarso No. 42 Pabian Sumenep', 1, 'Alumni Teknik Kimia ITS Surabaya', '', 'Pegawai Swasta', '085730210102', 'www.facebook.com/nurikahseptiani', '@ikahobunga', 'http://plus.google.com', '', '', 'Ingin berbagi dalam bentuk sedekah ilmu, materi, dll kepada teman-teman dan adik2 yg membutuhkan. Sehingga hidup saya bisa bermanfaat untuk orang lain. :)', 'Alumni Teknik Kimia ITS Surabaya', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(176, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Tangerang', 1, 'S1, jurusan Sistem Informasi Manajemen', '', 'wiraswasta', '081317629917', 'pairs_18_12_05@yahoo.co.id', 'pairs_18_12_05@yahoo.co.id', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_fd0e09666534e0d86f969f940a422b610ae345d8.jpg', 'Ingin Berbagi Ilmu', 'S1, jurusan Sistem Informasi Manajemen', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(177, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl.Pasir Raja 3 no.14 perumnas 2 karawaci\nTangerang', 1, 'S1, Tehnik Informatika,\nWalaupun saya kulian dengan jururan tersebut,tapi saya kurang paham didalam bidang tersebut.', '', 'Karyawati', '081288844840', 'i_chantiq86@yahoo.com', '@dechatiq', 'http://plus.google.com', '', '', 'Saya ingin menambah ilmu untuk bisa berbagi ilmu dengan yang lain.', 'S1, Tehnik Informatika,\nWalaupun saya kulian dengan jururan tersebut,tapi saya kurang paham didalam bidang tersebut.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(178, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Rungkut Menanggal 2/30 Surabaya', 1, 'Saya tinggal di Surabaya bersama dengan ibu kandung. saya tinggal di rumah nenek. saya anak kedua dari 2 saudara. saya bekerja sebagai dokumentator dan sebagai mahasiswa di universitas swasta angkatan', '', 'Dokumentator', '085730075044', 'Sella La Sell II', '', 'http://plus.google.com', '', '', 'Karena saya ingin bermanfaat untuk orang lain. agar hidup lebih berarti', 'Saya tinggal di Surabaya bersama dengan ibu kandung. saya tinggal di rumah nenek. saya anak kedua dari 2 saudara. saya bekerja sebagai dokumentator dan sebagai mahasiswa di universitas swasta angkatan 2014', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(179, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan margonda raya gang fathimah', 1, 'SMAN 3 Bogor\nPend. Teknik Elektro UPI', '', 'Guru swasta', '088808567808', '', '@maul_si_kempot', 'http://plus.google.com', '', '', '', 'SMAN 3 Bogor\nPend. Teknik Elektro UPI', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(180, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp.Setu Rt 01/Rw 05 No 85\nBojongGede- Bogor', 1, 'SDN Bojonggede 1\nSMPN 2 Cibinong\nSMAN 2 Cibinong', '', 'Pelajar SMA', '089637639478', 'Gesando Nodi Nadias', '', 'http://plus.google.com', '', '', 'Ingin menjadi manusia yang bermanfaat untuk orang lain dengan berbagi ilmu', 'SDN Bojonggede 1\nSMPN 2 Cibinong\nSMAN 2 Cibinong', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(181, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. KH Wahid Hasyim Gg. III desa Kolor Sumenep', 1, 'Saya masih berstatus mahasiswa yang sudah memiliki usaha di bidang perdagangan produk pertanian walau masih skala kecil', '', 'Entepreneur', '087851473904', 'Choirul ramadani', '@achchoirul', 'http://plus.google.com', '', '', 'Ada kesamaan dalam program berbagi, dulu saya punya program 1 desa 1 perpustakaan. Harapannya perpustakaan desa dapat memfasilitasi kebutuhan dan meningkatkan minat baca', 'Saya masih berstatus mahasiswa yang sudah memiliki usaha di bidang perdagangan produk pertanian walau masih skala kecil', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(182, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan raya kapuk 8/38\nSamping gang berdikri 2,kapuk,cengkareng', 1, 'Sd n 1 kalimanah kulon\nSmp n 1 kalimanah\nPkbm 18 kapuk', '', 'karyawan', '085842869935', '', '', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu pengetahuan dan tenaga yang dimiliki', 'Sd n 1 kalimanah kulon\nSmp n 1 kalimanah\nPkbm 18 kapuk', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(183, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'RT 001 RW 002 Dusun Krajan Desa Suruhwadang Kec. Kademangan Kab. Blitar - Jawa Timur', 1, 'SDN Suruhwadang 03, lulus tahun 2013\nSMPN 02 Kota Blitar, sekarang duduk di kelas 9', '', 'Pelajar', '085641757660', '', '', 'http://plus.google.com', 'dkeviesurga.wordpress.com', '', 'Ingin menyebarkan ilmu yang dimiliki, dan ikut mengawal kemajuan bangsa ini utamanya dalam bidang pendidikan ', 'SDN Suruhwadang 03, lulus tahun 2013\nSMPN 02 Kota Blitar, sekarang duduk di kelas 9', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(184, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Apartemen Taman Rasuna,\nTower 7, Lantai 25 Unit B \nJalan HR Rasuna Said Kecamatan Setiabudi \nJakarta Selatan 12920', 1, 'SMK - Jurusan accounting', '', 'Freelance, Crafter', '085668714155', 'https://www.facebook.com/OLcraftsanctuary', '', 'http://plus.google.com', '-', '', 'ingin berbagi ilmu dan punya waktu luang', 'SMK - Jurusan accounting', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(185, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Galur Sari RT 10 RW 07 No 1C Utan Kayu Utara, Jakarta Timur, 13120', 1, 'S1 Psikologi (2002) - Universitas Gunadarma\nS2 Psikologi (2005) - Universitas Gunadarma\nS3 Psikologi (2013) - Universitas Gadjah Mada', '', 'Dosen', '0818150879', '', '', 'http://plus.google.com', 'https://gunadarma.academia.edu/WahyuRahardjo', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_3671a3e5f3efbdae5b0d59244aff35173b032ee2.jpg', 'Ilmu adalah kebaikan yang harus diteruskan', 'S1 Psikologi (2002) - Universitas Gunadarma\nS2 Psikologi (2005) - Universitas Gunadarma\nS3 Psikologi (2013) - Universitas Gadjah Mada', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(186, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jln Raya Sepang Km.2 kampung Sepang Masjid RT/RW 01/01 Desa Sepang Kec. Taktakan Serang -Banten 42161', 1, 'SD N Penggung\nSLTP N 3 Serang\nSMA N 1 Serang\nUniversitas Indonesia Jurusan Sastra Inggris', '', 'Guru', '08568946924', 'Maslihah Mamas', '', 'http://plus.google.com', '', '', 'Saya ingin mengaplikasikan ilmu saya dan terlebih ingin berkontribusi bagi adik-adik yang kurang mampu dalam mendapatkan pendidikan yang berkualitas. Saya selama ini selalu mengajar anak-anak dari keluarga menengah ke atas dan saya menyadari bahwa sumbangsih saya kurang terhadap lingkungan jika hanya money-oriented karena saya pun dari keluarga yang kurang mampu dan bersyukur bisa mengenyam pendidikan tinggi. Saya ingin membimbing mereka agar dapat mengenyam pendidikan yang layak.', 'SD N Penggung\nSLTP N 3 Serang\nSMA N 1 Serang\nUniversitas Indonesia Jurusan Sastra Inggris', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(187, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek Buana Gardenia, Cluster Amaryllis, Blok E7 No 40', 1, 'S1 Teknik Informatika', '', 'PNS', '087882491026', '', '', 'http://plus.google.com', '', '', 'Ingin berkontribusi dalam menyumbangkan artikel tentang teknologi informasi', 'S1 Teknik Informatika', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(188, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Indah Kirana Residence Blok E-4,\nRt/Rw : 05/01, Kel. Sukahati, Kec. Cibinong, Kab. Bogor 16913', 1, 'S1 - Teknik Fisika - UGM', '', 'Karyawan Swasta', '085215617890', 'https://www.facebook.com/bagja.return', '@Mr_Bagja', 'http://plus.google.com', '', '', 'Ingin berkontribusi dalam memajukan pendidikan di Indonesia ', 'S1 - Teknik Fisika - UGM', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(189, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl.H.Minan Rt.002 Rw.06, No.37A, Pondok Pinang, Kebayoran Lama, Jakarta Selatan.', 1, 'S1 Ilmu Sejarah Universitas Indonesia angkatan 2011.', '', 'Fresh Graduate', '081513159490', 'Nurul Amaliyah Salabi', '@amaliyyaah', 'http://plus.google.com', '-', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_f9e4654dcc27dc8d94f8ecba183cf157ad995f03.jpg', 'Saya ingin berkontribusi untuk Indonesia setelah saya lulus kuliah.', 'S1 Ilmu Sejarah Universitas Indonesia angkatan 2011.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(190, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kebagusan Raya Gg. H. Mursid rt 01/03 no.55. Jagakarsa', 1, 'TK. Anugerah Tangerang\nSDN. Srengseng Sawah 12 Pagi\nSMPN 98 Jakarta\nSMKN 41 Jakarta jurusan Multimedia', '', 'Pelajar', '087782166164', 'www.facebook.comErsa Mauliza', '@Ermalizz', 'http://plus.google.com', 'erasachan.blogspot.com', '', 'Karena saya ingin berbagi ilmu saya terhadap orang lain yang tidak lebih beruntung dengan saya', 'TK. Anugerah Tangerang\nSDN. Srengseng Sawah 12 Pagi\nSMPN 98 Jakarta\nSMKN 41 Jakarta jurusan Multimedia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(191, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalam situsari VII no 38-48A cijagra , buahbatu bandung', 1, 'SDN Sukapura 1\nSMKN 9 Bandung \nMaranatha Christian University 2015', '', 'Mahasiswa', '087823445820', '', '', 'http://plus.google.com', '', '', 'Pengen memiliki banyak ilmu tentang sastra jepang', 'SDN Sukapura 1\nSMKN 9 Bandung \nMaranatha Christian University 2015', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54');
INSERT INTO `ibf_member_detail` (`member_id`, `member_type`, `member_birth_date`, `member_birthplace`, `member_gender`, `member_address`, `member_region`, `member_education`, `member_skills`, `member_job`, `member_phone`, `member_facebook`, `member_twitter`, `member_gplus`, `member_blog`, `member_image_profile`, `member_motivation`, `member_description`, `member_reg_year`, `member_date_input`, `member_date_update`) VALUES
(192, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kaliurang km. 13, Yogyakarta', 1, 'Mahasiswa semester 7 jurusan Informatika di Universitas Islam Indonesia', '', 'Mahasiswa', '081325732170', 'https://www.facebook.com/abasith50', '-', 'http://plus.google.com', '-', '', 'Ingin memberikan kontribusi yang lebih baik dan bermanfaat untuk kemajuan pendidikan khususnya di Indonesia', 'Mahasiswa semester 7 jurusan Informatika di Universitas Islam Indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(193, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Maguwoharjo, Depok, Sleman', 1, 'Mahasiswa Semester 7 Jurusan Farmasi di Universitas Islam Indonesia', '', 'Mahasiswa', '082242540665', 'https://www.facebook.com/enzhika.fara', '@enzhikafy', 'http://plus.google.com', '-', '', 'Dapat memberikan kontribusi yang lebih untuk memajukan pendidikan Indonesia dan mampu memberikan sebaik-baik manfaat bagi anak Indonesia', 'Mahasiswa Semester 7 Jurusan Farmasi di Universitas Islam Indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(194, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl.Kesehatan Blok D No 71 KOmplek Kodam Jakarta Timur', 1, 'SDN Cipinang Melayu 09 \nSMPN 109 Jakarta\nSMKN 26 Pembangunan Jakarta\n', '', 'Teknisi Jaringan', '085718131714', 'http://www.facebook.com/mrezafauzi', '@rezaMRAZ', 'http://plus.google.com', '', '', 'Saya sangat menyukai kerja sosial karena saya akan merasa hidup saya lebih berarti dengan membantu orang lain ,terutama membantu orang yang membutuhkan. Saya harap apa yang bisa saya kerjakan akan bermanfaat bagi orang lain.', 'SDN Cipinang Melayu 09 \nSMPN 109 Jakarta\nSMKN 26 Pembangunan Jakarta\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(195, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Kabupaten Km 0,2 Kwarasan Nogotirto Gamping Sleman Yogyakarta', 1, 'SDN 1 Cianjur\nSMPN 1 Cianjur\nSMUN 1 Cianjur\nUniversitas Ahmad Dahlan Yogyakarta', '', 'wiraswasta', '087738296396', '', '', 'http://plus.google.com', '', '', 'saya mencintai ilmu dan ingin menyebarkan ilmu.', 'SDN 1 Cianjur\nSMPN 1 Cianjur\nSMUN 1 Cianjur\nUniversitas Ahmad Dahlan Yogyakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(196, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. H. Midar No.14 RT.04/11 Pondok Pinang, Kebayoran Lama, Jaksel', 1, 'SDN Pondok Pinang 01 Pagi, SMPN 11 Jakarta, SMAN 70 jakarta (Kelas X), SMAN 3 Surakarta (kelas XI dan XII), S1 Statistika Undip ', '', 'Fresh Graduate', '081385989886', 'http://www.facebook.com/nisa.sitianisah.9', '@s_anisah_i', 'http://plus.google.com', '-', '', 'Saya ingin bergabung dengan IBF adalah karena saya ingin menyalurkan ilmu yang saya milki, berbagi bersama, serta ikut membantu masyarakat yang notabene kurang mampu untuk bersekolah.', 'SDN Pondok Pinang 01 Pagi, SMPN 11 Jakarta, SMAN 70 jakarta (Kelas X), SMAN 3 Surakarta (kelas XI dan XII), S1 Statistika Undip ', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(197, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan kehutanan Pinus NO 42 Kampung Pojok Girang RT 06 RW 04 Desa Cikahuripan Kecamatan Lembang Kabupaten Bnadung Barat - KODE POS 40391', 1, '', '', 'Petani', '087823938511', '//www.facebook.com/mbunitnot', '', 'http://plus.google.com', '', '', 'Saya seorang Petani dan tinggal di kaki Gunung Tangkuban Perahu.Sejak 21 januari 2009 saya mengelola komunitas kecil yang saya namai RUMAH BACA KAI CANTIGI.Saya punya beberpa program yang di PRIORITAS kan di bidang pendidikan.Layanan yang saya berikan antara lain Konseling untuk anak - anak , menyediakan fasilitas Buku bacaan yang bisa di pinjam oleh anak - anak,bantuan biaya pendidikan untuk anak.Organisasi kami Non Pfofit,jadi kami tidak memungut bayaran sekecil apapun.Alasan saya bergabung di Komunitas Ilmu Berbagi saya berharap bisamendapat informasi baru,pengalaman baru.', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(198, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kramat III No. 3 Kelurahan Kwitang, Kecamatan Senen Jakarta Pusat', 1, '', '', '', '0811488027', '', '@hamidbasalem', 'http://plus.google.com', '', '', '', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(199, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'DSP, DJA, Gedung Dhanapala Lt.3 Jln. Wahidin 1\nJakarta Pusat', 1, '', '', 'Pranata Komputer ', '0816868256', '', '', 'http://plus.google.com', '', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_b2d169fef0b87c7d852515ae6d06bcbdf51e0117.jpg', 'Berbagi ', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(200, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. H Jaelani 2 no.23 RT 005 RW 01\nPesanggrahan Jakarta Selatan', 1, 'Sarjana Ekonomi Universitas Budi Luhur Tahun 2014', '', 'Karyawan Swasta', '085643811023', '', '', 'http://plus.google.com', '', '', 'Kita hidup hanya sekali oleh karena itu akan lebih indah jika hidup kita bisa bermanfaat untuk orang lain', 'Sarjana Ekonomi Universitas Budi Luhur Tahun 2014', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(201, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Desa Parungkamal Rt 02/04. Kec. Lumbir, Kab. Banyumas, Jawa Tengah', 1, 'Universitas Pendidikan Indonesia', '', 'Mahasiswa', '081219412651', 'http://www.facebook.com/pundjea', '@PravilianPras', 'http://plus.google.com', 'catatankakiperjalanan.blogspot.com', '', 'Suka komunitas ini, ingin mengembangkan komunitas ini agar lebih berkembang lagi dan suka kegiatan sosial masyarakat', 'Universitas Pendidikan Indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(202, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Cikoko Barat 1 No. 57 Pancoran Jakarta Selatan\n', 1, 'Sarjana Ekonomi, Akuntansi\nSampoerna School of Business', '', 'Auditor', '081281845920', 'https://www.facebook.com/fainurrizqi', '@fainurrizqi', 'http://plus.google.com', '', '', '1. Ingin terlibat dalam kegiatan sosial terutama yang berhubungan dengan pendidikan dan anak-anak\n2. Networking', 'Sarjana Ekonomi, Akuntansi\nSampoerna School of Business', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(203, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Argo Pratiwi RT 1 RW 6 Krasak Ledok Argomulyo Salatiga Jawa Tengah', 1, 'S-1 Pendidikan Teknik Boga, Fakultas Teknik, Universitas Negeri Yogyakarta, 2008-2012\nSMA N 3 Salatiga, jurusan Bahasa 2004-2007\nSMP N 2 Salatiga, 2001-2004\nSD N Ledok 4 Salatiga 1998-2001\nSD N Kalian', '', 'Karyawan Swasta', '085740230058', 'http://www.facebook.com/1tiyana', '@UtsukushiiYanti', 'http://plus.google.com', 'yanti18rachmawati.blogspot.com', '', 'Sesuai dengan keinginan saya untuk bisa bersedekah melalui berbagi ilmu', 'S-1 Pendidikan Teknik Boga, Fakultas Teknik, Universitas Negeri Yogyakarta, 2008-2012\nSMA N 3 Salatiga, jurusan Bahasa 2004-2007\nSMP N 2 Salatiga, 2001-2004\nSD N Ledok 4 Salatiga 1998-2001\nSD N Kalianget Timur 1 Sumenep, 1995-1998\nTK Kumara Jaya Sumenep, 1994-1995', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(204, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Weton kulon, 02/01 puring, kebumen, jawa tengah.\n\nAlamat kos : muja muju UH 3 Yogyakarta', 1, 'S1 sastra inggris universitas Teknologi Yogyakarta', '', 'Mahsiswa', '082225070348', '', '', 'http://plus.google.com', '', '', '', 'S1 sastra inggris universitas Teknologi Yogyakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(205, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kebon Sirih Timur Gg. 1 No. 21 jakarta Pusat', 1, 'S1 DKV 2009', '', 'Karyawan', '082240666027', 'facebook.com/fauziah.yustia', '@nonayustia', 'http://plus.google.com', '', '', 'Ingin memanfaatkan waktu luang untuk hal-hal yang lebih positif dan ingin belajar banyak dari IBF.', 'S1 DKV 2009', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(206, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Agus Salim 32 surakarta ..\n\nalamat kos di jakarta : \nJL.Peningkatan no.28  Tebet, Menteng dalam, Jaksel', 1, 'S1 Informatika Universitas Sebelas Maret surakarta', '', 'Programmer', '081327323022', 'https://www.facebook.com/andri.y.dwi', '@andryDNR', 'http://plus.google.com', '-', '', 'Ingin Mengisi waktu agar lebih bermanffaat ilmu dan skill yang saya punya..\ningin memberikan kontribusi baik ide,skill dan Tenaga untuk dimanfaatkan oleh kegiatan sosial..', 'S1 Informatika Universitas Sebelas Maret surakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(207, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Budi Mulia RT: 009 RW: 05\nKel. Pademangan Barat, Kec. Pademangan, Jakarta Utara 14420', 1, 'S1 Teknik Elektro Universitas Indonesia', '', 'Karyawan Swasta', '081219635475', 'Irwan Sukma Darmawan', '-', 'http://plus.google.com', '', '', 'Ingin bermanfaat untuk sesama', 'S1 Teknik Elektro Universitas Indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(208, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Cirebon', 1, 'S1. Teknik Informatika', '', 'Guru', '08179079032', 'http://www.facebook.com/profile.php?id=10001022551', '', 'http://plus.google.com', 'http://www.azkapraditya.com', '', '', 'S1. Teknik Informatika', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(209, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Bintara Jaya Permai Blok C nomor 217', 1, 'Sarjana Ekonomi dari jurusan ekonomi studi pembangunan di Universitas Padjadjaran yang memiliki keahlian dalam analisis situasi ekonomi secara global/makro dan mikro.', '', 'Mahasiswa', '081320207865', '', '@galputra', 'http://plus.google.com', '', '', 'Ingin berkarya melalui tulisan', 'Sarjana Ekonomi dari jurusan ekonomi studi pembangunan di Universitas Padjadjaran yang memiliki keahlian dalam analisis situasi ekonomi secara global/makro dan mikro.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(210, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Ujung Gedong No 58C, Kampung Gedong, Pasar Rebo, Jakarta Timur', 1, 'SD-SMA di Ciamis\nKuliah di Unindra Jurusan Pendidikan Bahasa Inggris', '', 'Karyawan Swasta', '081219603930', 'www.facebook.com/jaja.fatmaja', '@JajaFatmaja', 'http://plus.google.com', 'http://catatanjaja.blogspot.com', '', 'Ingin berbagi ilmu yang dimiliki dan andil dalam menjadikan Indonesia lebih baik.', 'SD-SMA di Ciamis\nKuliah di Unindra Jurusan Pendidikan Bahasa Inggris', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(211, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Kalibaru Timur V Gg. VII No. 26\nRT. 005 / RW. 007\nKel. Bungur, Kec. Senen\nJakarta Pusat 10460', 1, 'SD Negeri Baraya I, Ujung Pandang (1989 - 1995)\nSLTP Negeri 10, Ujung Pandang (1995 - 1998)\nSMK Negeri 2, Makassar (1998 - 2001)\nBalai Latihan Kerja Industri, Makassar (2001 - 2002)\nSTMIK Dipanegara, ', '', 'Pegawai Negeri Sipil', '085242107040', 'http://www.facebook.com/adambinmalik', '@adambinmalik', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu dengan menjadi Kontributor Tulisan', 'SD Negeri Baraya I, Ujung Pandang (1989 - 1995)\nSLTP Negeri 10, Ujung Pandang (1995 - 1998)\nSMK Negeri 2, Makassar (1998 - 2001)\nBalai Latihan Kerja Industri, Makassar (2001 - 2002)\nSTMIK Dipanegara, Makassar (2002 - 2006)', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(212, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Darussalam, Banda Aceh,NAD', 1, 'S1 Ilmu Politik, Unsyiah', '', 'No job', '085358838624', 'Irwan sang pemimpin', '', 'http://plus.google.com', 'karyairwan.blogspot.co.id', '', 'ikut serta dalam membangun negeri dengan segala kemampuan yang saya punya.', 'S1 Ilmu Politik, Unsyiah', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(213, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Pegangsaan Dua Apartemen Gading Nias Residence Tower Dahlia M - 18 MS, Kelapa Gading, Jakarta Utara 12450', 1, '1998 â€“ 2004	:	SD Pangudi Luhur Surakarta\n2004 â€“ 2007	:SMP Pangudi Luhur Bintang Laut Surakarta\n2007 â€“ 2010	:SMAN 7 Surakarta\n2010 â€“ 2013	:Universitas Sebelas Maret Solo Fakultas hukum, hingga ', '', 'mahasiswa', '081223727227', '', '@olarosaa', 'http://plus.google.com', 'olarosaa.blogspot.co.id', '', 'ingin berbagi dg sesama, punya banyak waktu luang yang ingin saya lewatkan dg hal positif, ingin lebih belajar untuk mengembangkan diri secara pribadi, mencari pengalaman.', '1998 â€“ 2004	:	SD Pangudi Luhur Surakarta\n2004 â€“ 2007	:SMP Pangudi Luhur Bintang Laut Surakarta\n2007 â€“ 2010	:SMAN 7 Surakarta\n2010 â€“ 2013	:Universitas Sebelas Maret Solo Fakultas hukum, hingga semester 5\n2014 â€“ 2015	:Masih terdaftar sebagai mahasiswa Fakultas Ilmu Komunikasi di Universitas Terbuka Rawamangun\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(214, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. HOS Cokroaminoto no. 103 R. 12/RW.02 Kel. Pakuncen Kec. Wirobrajan Yogyakarta', 1, 'S1-STMIK AMIKOM Yogyakarta (Teknik Informatika)\nS2-Universitas Gadjah Mada (Magister Teknologi Informasi)', '', 'Dosen', '08903746699', 'http://www.facebook.com/melwin.syafrizal', '', 'http://plus.google.com', 'http://melwin-ok.com', '', 'Sharing Ilmu', 'S1-STMIK AMIKOM Yogyakarta (Teknik Informatika)\nS2-Universitas Gadjah Mada (Magister Teknologi Informasi)', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(215, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Bintaro Jaya Sektor 9, Taman Permata I Jalan Trulek III blok HG13 no. 43, Tangerang 15299, Banten', 1, 'Pendidikan:\nUniversitas Katolik Parahyangan, Bandung\nMajoring International Relations (August 2010 â€“ January 2014)\nGPA: 3.74\nTOEFL Score: 533\n\nKegiatan Organisasi:\n1. Head of organizing committee, P', '', 'Karyawan Swasta - Media Master, GroupM, WPP', '082299227887', 'N/A', '@tamarnaomi (non-active)', 'http://plus.google.com', 'N/A', '', '1. Saya sangat suka mengajar dan membagikan ilmu yang Saya miliki. \n2. Saya juga memiliki passion yang besar dalam bidang sosial.\n3. Saya memiliki soft skill di bidang komunikasi (verbal & tertulis) dan kepemimpinan dan hard skill di pelajaran Bahasa Inggris dan Bahasa Indonesia. Saya memiliki banyak pengalaman yang sangat baik untuk dibagikan.', 'Pendidikan:\nUniversitas Katolik Parahyangan, Bandung\nMajoring International Relations (August 2010 â€“ January 2014)\nGPA: 3.74\nTOEFL Score: 533\n\nKegiatan Organisasi:\n1. Head of organizing committee, Parahyangan International Conference in Countering Terrorism, 2012-2013.\n2. Editor in Chief, Sentris Journal, KSMPMI (Kelompok Studi Mahasiswa Pengkaji Masalah Internasional), Parahyangan Catholic University, 2012-2013.\n3. Treasurer, PEDS (Parahyangan English Debate Society), Parahyangan Catholic University, 2012-2013.\n4. Secretary, International Affairs Week, Parahyangan Catholic Uiversity, 2011-2012.\n5. Interpreter, PT Pindad, Bandung, Indonesia, July 2013 (for one day).\nNote: I interpreted what the foreign technician said to the soldier and workers to complete a construction of a bridge.\n\nPrestasi:\n1. â€œYoung Leaders for Indonesiaâ€ Leadership Course, Scholarship Recipient, McKinsey Company, 2013.\n2. Octofinalist, Asian Law Student Association (ALSA), Padjajaran University, 2012.\n3. Octofinalist, The 15th Asian Law Student Association (ALSA) National English Competition, University of Indonesia, Depok, 2011.\n4. Second Runner up, Debate Competition in International Affairs Week, Parahyangan Catholic University, 2011.\n5. Runner Up, Educational English Contest â€“ English Debate Competition, English Department, Universitas Kristen Maranatha, Bandung, 2009.\n6. Octofinalist, Aloysius English Debating Competition, SMA Katolik Aloysius, Bandung, 2009.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(216, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Prm. Candi Gebang Q-6, Sleman', 1, 'Saya alumni SD Muh. Condongcatur, SMPN 8 Yogyakarta, dan SMA N 4 Yogyakarta. Sekarang saya kuliah di UII jurusan Akuntansi program Internasional. Saat SMA saya mengikuti beberapa organisasi dan menjad', '', 'Mahasiswa', '085786666820', '', '@zakieplv', 'http://plus.google.com', 'zakieplv.blogspot.com', '', 'Ingin ikut berkontribusi dan berbagi ilmu kepada yg kurang beruntung serta membantu memajukan pendidikan indonesia. Melalui pengajaran pelajaran, hingga pengajaran karakter kepada anak-anak.', 'Saya alumni SD Muh. Condongcatur, SMPN 8 Yogyakarta, dan SMA N 4 Yogyakarta. Sekarang saya kuliah di UII jurusan Akuntansi program Internasional. Saat SMA saya mengikuti beberapa organisasi dan menjadi ketua yg berhubungan dengan pencegahan napza.', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(217, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Pahlawan Revolusi No.02 Pondok Bambu - Jakarta Timur', 1, 'S1 Ekonomi, Universitas trisakti', '', 'Freelance', '081315608266', 'https://www.facebook.com/hanni.yubetri', '@hanbeey', 'http://plus.google.com', 'https://hannyubetri.wordpress.com/', '', 'ingin berbagi tentang hal - hal baru ex : pengalaman dan ilmu', 'S1 Ekonomi, Universitas trisakti', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(218, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kebagusan Raya / Gg. Hj. Matasan II no. 61 B, keluarahan Kebagusan, Jakarta Timur', 1, 'S-1 Akuntansi Universitas Jember', '', 'karyawan', '082299904820', '', '', 'http://plus.google.com', '', '', 'Ingin melakukan kegiatan positif dan bermanfaat bagi sesama', 'S-1 Akuntansi Universitas Jember', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(219, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'komplek deppen blok x rt 5 rw 11 no 11 harjamukti cimanggis depok ', 1, 'Sarjana ekonomi ', '', 'entrepreneur', '081284407199', '', '@rajaschool_1', 'http://plus.google.com', 'www.rajaschool.com', '', 'berbagi ilmu yang telah saya miliki', 'Sarjana ekonomi ', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(220, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Gunung Bentang 2 No 111 Tasikmalaya Jawa Barat 46134', 1, 'S1 Teknik Geologi ITB 2008-2012\n', '', 'Staff Geologist', '082282667233', 'https://m.facebook.com/deris.hendriawan', '@DerisHendriawan', 'http://plus.google.com', '', '', 'Ingin mencari wadah untuk mengabdi melalui tulisan, hobi, dan passion untuk dibagi ', 'S1 Teknik Geologi ITB 2008-2012\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(221, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Ir. H. Djuanda, RT 02/08, Cireundeu, Ciputat Timur, Tangerang Selatan', 1, 'Saya merupakan mahasiswa Jurusan Bahasa dan Sastra Arab, UIN Syarif Hidayatullah Jakarta', '', 'Mahasiswa', '085786770856', 'https://web.facebook.com/moehaymeen', '@masmuhay_meen', 'http://plus.google.com', '', '', 'saya ingin bergabung dan berbagi ilmu dengan kemampuan yang saya miliki', 'Saya merupakan mahasiswa Jurusan Bahasa dan Sastra Arab, UIN Syarif Hidayatullah Jakarta', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(222, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl. k no 15 mampang prapatan IV jakarta selatan', 1, 'D3', '', 'karyawan swasta', '089522005670', '', '', 'http://plus.google.com', '', '', 'ingin berbagi ilmu kepada yang membutuhkan', 'D3', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(223, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Komplek Cengkareng Indah Blok AC', 1, 'Pendidikan Terakhir SMA- IPA,\nSMA PELITA - Tambora - Jakarta Barat', '', 'Karyawan Swasta', '081213964312', '', '', 'http://plus.google.com', '', '', 'Senang dan ingin menyalurkan passion dalam mengajar dan membantu orang lain. ', 'Pendidikan Terakhir SMA- IPA,\nSMA PELITA - Tambora - Jakarta Barat', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(224, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp rawapanjang jl siliwangi rt 002 rw 05 bekasi timur', 1, 'Tamatan smk jurusan teknik komputer dan jaringan pada tahun 2014', '', 'karyawan swasta', '085717125383', 'iin', '@isssf', 'http://plus.google.com', '', '', 'Ingin menambah wawasan dibidang pendidikan', 'Tamatan smk jurusan teknik komputer dan jaringan pada tahun 2014', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(225, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Wisma Balio Bawah \nDramaga-Bogor', 1, 'Teknologi Hasil Perairan \nIPB 2010', '', 'Mahasiswa', '081213266092', 'http://facebook.com/Emilia Dian Prabawati', '@emiliadian', 'http://plus.google.com', '', '', 'Saya memang sedang mencari sebuah komunitas yang peduli terhadap pendidikan anak anak Indonesia, dan ingin berkontribusi dan terjun langsung ke dalamnya. Kemudian saya menemukan IBF melalui penelusuran dunia maya dan tertarik dengan program-program yang telah dijalankan IBF.', 'Teknologi Hasil Perairan \nIPB 2010', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(226, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Pepaya Raya No 9 Cengkareng Jakarta Barat', 1, '', '', 'Mahasiswi', '089521758875', '', 'aniskhoyrunnisa', 'http://plus.google.com', '', '', 'Karena kepedulian saya terhadap pendidikan bagi anak anak. serta ingin membagi ilmu yang saya punya agar insya allah bermanfaat bagi orang banyak.', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(227, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Desa sasak panjang Rt 006/004 Kec. Tajurhalang - Bogor 16320', 1, 'S1 - Universitas Pamulang / Akuntansi\nS2 - Universitas Trisakti ( Proses ) / Keuangan', '', '-', '081293611609', '', '', 'http://plus.google.com', '-', '', 'senang dengan kegiatan sosial', 'S1 - Universitas Pamulang / Akuntansi\nS2 - Universitas Trisakti ( Proses ) / Keuangan', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(228, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Mampang Prapatan 15 C 07/06 Duren Tiga - Pancoran\nJakarta Selatan', 1, '', '', 'Karyawan Swasta', '082114958177', 'novan.santoso', '@neovaan', 'http://plus.google.com', '', '', 'Curious, mungkin jadi tempat gudang ilmu dan pengetahuan serta orang-orang baru', '', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(229, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Melati wetan GK IV no 552/229, Gendeng, Baciro, kec. Gondokusuman, Yogyakarta', 1, 'SD 01 Mahat\nSMP Uswatun Hasanah Padang Panjang\nMAN 2 Payakumbuh\nS1 UIN Sunan Kalijaga', '', 'Mahasiswa', '085729717642', 'annisa wahyuni kampai', '', 'http://plus.google.com', '', '', 'Mencari pengalaman dan berbagi ilmu, karena ilmu semakin di bagi itu akan semakin ingat dan bertambah baik dari swgi ilmu itu sendiri maupun pengalamannya...', 'SD 01 Mahat\nSMP Uswatun Hasanah Padang Panjang\nMAN 2 Payakumbuh\nS1 UIN Sunan Kalijaga', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(230, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan mekar nomor 15, tanjung barat, jagakarsa, Jakarta selatan', 1, 'S1 ilmu hukum', '', 'Pegawai Bumn', '085756061673', '', '@juwipermatahati', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu Dan belajar tentang kehidupanku.ingin membangun relasi', 'S1 ilmu hukum', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(231, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl utan panjang II rt 05 rw 010 no 8', 1, 'S1 jurusan teknik informatika\nuniversitas al azhar indonesia', '', 'karyawan swasta', '087888373228', '', '@oceta', 'http://plus.google.com', '', '', 'karena mengikuti acara kegiatan social tetap membuat kita "hidup". dan kebahagiaan yang didapatkan dari berbagi tidak bisa digantikan dengan hal lain. \n', 'S1 jurusan teknik informatika\nuniversitas al azhar indonesia', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(232, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pejompongan 3A/1', 1, 'S1 Teknik Informatika ITS\nS2 Information Security Technology TU/Eindhoven', '', 'IT', '081332132915', 'http://www.facebook.com/fitria.andini', '@fitria_ami', 'http://plus.google.com', '', '', 'Ingin berbagi pengalaman dan ilmu yang saya dapat dari negeri kincir angin', 'S1 Teknik Informatika ITS\nS2 Information Security Technology TU/Eindhoven', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(233, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'PERUM LOJAJAR INDAH NO. 28, SLEMAN YOGYAKARTA', 1, 'SMA N 2 Magelang\nD3 Teknik Sipil UGM Yogyakarta\nS1 Teknik Sipil ITS Surabaya', '', '', '085643190043', 'https://www.facebook.com/diah.listyaningsih', '@diah_el', 'http://plus.google.com', '', '', 'ingin ikut berperan mencerdaskan generasi muda.', 'SMA N 2 Magelang\nD3 Teknik Sipil UGM Yogyakarta\nS1 Teknik Sipil ITS Surabaya', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(234, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jln. KH muasyim 7 no 70 cilandak\nJakarta selatan 12430', 1, 'Magister management sekolah bisnis prasetiya mulya \nJakarta selatan', '', 'mahasiswa dan karyawan swasta', 'made', '', '', 'http://plus.google.com', 'madeeverythingsimple.tumblr.com', '', 'Berbagi ilmu dan berkontribusi bagi anak indonesia\n', 'Magister management sekolah bisnis prasetiya mulya \nJakarta selatan', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(235, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Villa mUtiara Cinere blok e6 no 12, Depok', 1, 'S2, UNJ, EVALUASI PENDIDIKAN\nSI, SKIP SILIWANGI BANDUNG, Pendidikan Matematika\n', '', 'Pegawai Swata', '087884462779', '', '', 'http://plus.google.com', '', '', 'Berbagi Ilmu', 'S2, UNJ, EVALUASI PENDIDIKAN\nSI, SKIP SILIWANGI BANDUNG, Pendidikan Matematika\n', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(236, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'nanggewer mekar rt. 01/06 cibinong \nbogor', 1, 'd3 akuntansi', '', 'karyawan swasta', '087877275447', '', '', 'http://plus.google.com', '', '', 'ingin bisa berbagi ilmu saya yg terbatas dan bisa bermanfaat untuk banyak orang sekaligus bisa mencari ilmu', 'd3 akuntansi', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(237, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Buloh Blang Ara, Lr. Keluarga, no.61 Dusun Ujong Tunong, Desa Paya Punteut, Kec. Muara Dua, Kota Lhokseumawe, Provinsi Aceh.', 1, 'S1 Budidaya Perairan, Universitas Malikussaleh', '', '-', '082276412596', '-', '-', 'http://plus.google.com', '-', 'http://portal.ilmuberbagi.id/assets/img/foto/IB_d0e9b56405f88f7771061e52e85dc53f8c052ee7.jpg', 'Menjadikan Hidup Lebih Bermanfaat dan Terus Berbagi', 'S1 Budidaya Perairan, Universitas Malikussaleh', 2015, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(238, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Taman KT I/ 407\nRT 33, RW 08\nKelurahan Patehan, Kecamatan Kraton\nYogyakarta', 1, 'Mahasiswa tingkat akhir sebuah perguruan tinggi negeri di Yogyakarta. Anak pertama dari dua bersaudara yang mendalami ilmu psikologi. Sejak lama ingin mencoba bergabung dalam kegiatan sosial dan menyu', '', 'Pelajar/ Mahasiswa', '085712684730', 'http://www.facebook.com/dy.saraswati', '@dyahayu267', 'http://plus.google.com', '', '', 'Sudah sejak lama ingin bergabung dalam kegiatan sosial. Namun selama ini belum dapat terlaksana. Untuk itu ketika menemukan website ilmu berbagi kemudian tertarik untuk bergabung. Tentunya masih banyak yang harus saya pejari, sehingga saya juga memohon bimbingan dari kakak-kakak yang sudah lebih dulu bergabung. Saya juga ingin mengaplikasikan ilmu yang saya pelajari di masyarakat, termasuk membagikan ilmu tersebut dan semoga memang bermanfaat.', 'Mahasiswa tingkat akhir sebuah perguruan tinggi negeri di Yogyakarta. Anak pertama dari dua bersaudara yang mendalami ilmu psikologi. Sejak lama ingin mencoba bergabung dalam kegiatan sosial dan menyukai bidang kepenulisan.', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(239, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Kp Malaka RT05/02 Desa Tegal Kunir Kidul Kecamatan Mauk Kabupaten  Tangerang Provinsi Banten Indonesia', 1, 'masih berstatus mahasiswa', '', 'Mahasiswa', '08994104779', 'https://www.facebook.com/ukhtiyeva.saripatuniah', '@evakfv14', 'http://plus.google.com', 'adevashop.blogspot.com', '', 'ingin berperan aktif dengan bergabung di IBF ', 'masih berstatus mahasiswa', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(240, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Pisangan Baru Timur no.22 Rt 05 / RW 09', 1, '2009 - 2012 SMPN 7 Jakarta\n2012 - 2015 SMK Paramitha 1 Jakarta\n2015 - present Sekolah Tinggi Pariwisata Bandung', '', 'Mahasiswa ', '08577265253', 'http://facebook.com/MarcoVern', '@KrustyKrusher', 'http://plus.google.com', 'http://krusty-krusher.blogspot.com', '', '1. Mencari pengalaman dan ilmu baru di dalam organisasi ini.\n2. Membantu untuk membagikan ilmu yang saya punya kepada semua yang membutuhkan.\n3. Menjadi pribadi yang lebih berarti dan berguna kepada sesama.\n4. Belajar untuk peduli sesama dan menggenapkan arti "kasih" sesungguhnya.\n5. Membuat sebuah perubahan dengan cinta kasih kepada semua orang yang membutuhkan, kepada sesama, kepada semua saudara kita dibumi.\n', '2009 - 2012 SMPN 7 Jakarta\n2012 - 2015 SMK Paramitha 1 Jakarta\n2015 - present Sekolah Tinggi Pariwisata Bandung', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(241, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Cipinang Cempedak IV/86 Rt 003 Rw 03, Kelurahan Cipinang Cempedak Kecamatan Jatinegara, Jakarta 13340', 1, 'SD Al Hayatul Islamiyah, Jakarta, MTs Negri 6 Jakarta, SMA Negri 54 Jakarta, STIA Atstsaqofah Islamiya, Universitas Acprilesma Jakarta.', '', 'Guru Agama Islam', '085776359305,', '', '', 'http://plus.google.com', '', '', '1. Menjalin Silaturahim 2. Mengamalkan Ilmu 3. Menambah Pengetahuan', 'SD Al Hayatul Islamiyah, Jakarta, MTs Negri 6 Jakarta, SMA Negri 54 Jakarta, STIA Atstsaqofah Islamiya, Universitas Acprilesma Jakarta.', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(242, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jl. pondok gede no.41 rt/rw 002/002 kel.jatirahayu kec. pondok melati bekasi', 1, 'universitas indraprasta tahun 2015 program studi bimbingan dan konseling', '', 'Guru BK SMA', '081333292247', 'https://www.facebook.com/ovy.odep', '@ovyodep93', 'http://plus.google.com', '', '', '', 'universitas indraprasta tahun 2015 program studi bimbingan dan konseling', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(243, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Seulanga No. 13 Lorong E Gampong Beurawe Kec. Kuta Alam, Kota Banda Aceh 23124', 1, 'S1 Ekonomi Manajemen Unsyiah\nSedang kuliah di Magister Manajemen Unsyiah', '', 'Blogger', '081262554864', 'http://www.facebook.com/azhar.ilyas.banda.aceh', '@azharbandaaceh', 'http://plus.google.com', 'http://www.nowayreturn.com', '', 'Saling menyemangati dan memotivasi untuk terus berkarya dan berbagi. Ingin menambah ilmu, pengalaman dan jalin pertemanan.', 'S1 Ekonomi Manajemen Unsyiah\nSedang kuliah di Magister Manajemen Unsyiah', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(244, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Tuwang Kedungdowo  RT 02/03 Kaliwungu Kudus ', 1, 'Sarjana Kehutanan', '', 'Swasta', '085108222585', '', '', 'http://plus.google.com', '', '', '', 'Sarjana Kehutanan', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(245, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Cempaka Wangi 1 Rt.005/09 No.12\nHarapan Mulya - Kemayoran\nJakarta Pusat 10640', 1, 'D3 Akuntansi', '', 'IRT', '081310892580', '', '', 'http://plus.google.com', '', '', 'Ingin Berbagi agar anak-anak Indonesia memiliki masa depan yang cerah dengan memiliki ilmu yg bermanfaat', 'D3 Akuntansi', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(246, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Mawar Raya, No. 3, Kota Depok', 1, 'Saya merupakan lulusan Akuntansi Syariah dari STEI SEBI Depok', '', 'Karyawan Swasta', '085721141632', 'imas mashfufah', '@imas_mashfufah', 'http://plus.google.com', '-', '', '- Ingin berbagi ilmu yang dimiliki\n- Ingin menjadi orang yang bermanfaat bagi yang lain', 'Saya merupakan lulusan Akuntansi Syariah dari STEI SEBI Depok', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(247, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Kodirun No 40 Blok A RT 7 RW 6 Grogol Utara Patal Senayan Kebayoran Lama Jakarta Selatan', 1, 'S1 Manajemen Keuangan Universitas Padjadjaran', '', 'Performance Management Officer ', '085752122020', 'https://www.facebook.com/difaskarina', '@difaskarina', 'http://plus.google.com', 'difaskarina.blogspot.co.id', '', 'Ingin berbagi ilmu dan memberi manfaat untuk orang-orang di sekitar karena menurut saya hidup itu harus memberikan manfaat untuk orang lain.', 'S1 Manajemen Keuangan Universitas Padjadjaran', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(248, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jakarta barat', 1, 'saya merupakan seorang guru', '', 'guru', '0123456789', '', '', 'http://plus.google.com', 'www.rahasia.com', '', 'mau berbagi', 'saya merupakan seorang guru', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(249, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'jalan Magelang km 4,5 no 126 rt07 rw10 Kutu Wates , Sinduadi, Mlati, Sleman, yogyakarta 55284', 1, '', '', 'Wiraswasta ', '082324557710', '', '@valeys89', 'http://plus.google.com', '', '', 'menambah relasi dan bersosialisasi ', '', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(250, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Perumahan Taman Kedaung Jl. Mawar XI D3/20 Ciputat, Tangerang Selatan', 1, '1. SD Islam Al-Falaah (2002-2008)\n2. Madrasah Tsanawiyah Negeri 3 Pondok Pinang Jakarta Selatan (2008-2011)\n3. Madrasah Aliyah Pembangunan UIN Jakarta (2011-2014)\n4. Universitas Islam Negeri Syarif Hi', '', 'Mahasiswi', '081210404314', 'https://www.facebook.com/ghifaa.gepey', '@ptrghayda', 'http://plus.google.com', 'http://kusut-mata.blogspot.com', '', 'alasan saya untuk bergabung di sini adalah tak lain ingin menambah wawasan serta pengalaman kegiatan sosial dan untuk membantu mencerdaskan anak-anak Indonesia karena dengan Pendidikan yang baik setidaknya dapat membantu mereka memiliki harapan masa depan yang lebih baik.', '1. SD Islam Al-Falaah (2002-2008)\n2. Madrasah Tsanawiyah Negeri 3 Pondok Pinang Jakarta Selatan (2008-2011)\n3. Madrasah Aliyah Pembangunan UIN Jakarta (2011-2014)\n4. Universitas Islam Negeri Syarif Hidayatullah Jakarta (2014-sekarang)', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(251, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Abdul Rahman Shaleh blok Masjid Al Furqon No. 255 Kota tangerang', 1, '', '', 'Perawat', '082113069718', 'Facebook.Com/acnugraha', '@wijatmokoagung', 'http://plus.google.com', '', '', 'Bisa saling BERBAGI walaupun ga Harus dengan materi', '', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(252, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Asrama Universitas Indonesia', 1, 'SDN 7 Bukit Tunggal Palangkaraya \nSMP Katholik Santa Maria Palangkaraya\nSMA Kristen Palangkaraya\nUniversitas Indonesia', '', 'Mahasiswa', '087716333167', 'Andrew Djangoek', '@Andrew_Djangoek', 'http://plus.google.com', '-', '', 'Karena saya ingin mengabdikan diri saya kepada masyarakat dengan solusi solusi yang saya punya dalam untuk menginspirasi orang orang di lingkungan saya terkhusus untuk Indonesia.', 'SDN 7 Bukit Tunggal Palangkaraya \nSMP Katholik Santa Maria Palangkaraya\nSMA Kristen Palangkaraya\nUniversitas Indonesia', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(253, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'JL. MARELAN 1 PASAR IV BARAT GANG SEKOLAH, KEL. RENGAS PULAU KEC. MEDAN MARELAN', 1, '', '', 'TENAGA PENDIDIK', '087769235218', '', '@mulyanawawan', 'http://plus.google.com', '', '', 'saya ingin berbagi ilmu dan pengetahuan serta waktu dan tenaga untuk anak-anak Indonesia dan masyarakat sekitar yang membutuhkan. karena melalui pendidikanlah setiap orang dapat maju dan berkembang. jika setiap orang telah maju dan berkembang, maka bangsa ini akan banyak anak-anak yang memajukan bangsanya.', '', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(254, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Gatot Subroto No. 42 Nganjk', 1, 'SMAN 2 NGANJUK', '', 'Pelajar', '085745774939', 'Tirta Meyrizka Lubis', '@Tirta_Meyrizka', 'http://plus.google.com', '', '', 'Ingin berbagi ilmu dan selalu istiqamah dalam kebaikan mencerdaskan kehidupan bangsa.', 'SMAN 2 NGANJUK', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(255, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl Lamping no 14 dago timur, Bandung (kost)\n\njoyorejan rt01 rw 02 gemolong, sragen, jawa tengah (alamat rumah)\n\n', 1, 'Mahasiswa D4 jurusan pekerjaan sosial Sekolah Tinggi Kesejahteraan Sosial Bandung', '', 'mahasiswa', '082134990614', 'aprilia', '-', 'http://plus.google.com', '-', '', 'Berawal dari rasa prihatin saya sebagai seorang pemuda yang belum bisa memberikan sesuatu yang berarti bagi negeri ini, maka dari itu saya ingin bergabung dengan IBF agar setidaknya saya dapat berkontribusi dalam meningkatkan kualitas generasi negeri ini.', 'Mahasiswa D4 jurusan pekerjaan sosial Sekolah Tinggi Kesejahteraan Sosial Bandung', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(256, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Surabaya', 1, 'S1 Sistem Informasi ITS Surabaya', '', '', '085648813122', 'http://www.facebook.com/armanketigabelas', '@armanke13', 'http://plus.google.com', '', '', '', 'S1 Sistem Informasi ITS Surabaya', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(257, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Tangerang Selatan', 1, 'Sarjana Teknik Informatika di UPN Veteran Surabaya', '', 'Ibu Rumah Tangga', '085730369426', '', '', 'http://plus.google.com', '', '', 'Berbagi dengan sesama', 'Sarjana Teknik Informatika di UPN Veteran Surabaya', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(258, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan perikanan darat desa dawuhan kecamatan tenggarang kabupaten bondowoso', 1, 'S.Pd.I', '', 'guru', '082301527998', 'musthofa', 'mustofaWalad@yahoo.co.id', 'http://plus.google.com', '', '', 'Sangat menarik buat sya untuk membuat kreatif yang lebih banyak lagi', 'S.Pd.I', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(259, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, '', 1, '', '', 'Programmer', '', '', '@g_giovanii', 'http://plus.google.com', 'http://blog.ggiovani.com', '', '', '', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(260, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Pendem, Rt 08, Sumberlawang, Sragen. Jawa Tengah', 1, 'S1 Perikanan UGM', '', 'Pengajar Muda Indonesia Mengajar', '081284051031', 'Muhammad Firdaus Ismail', '@daussismail', 'http://plus.google.com', 'Www.dausismail.com', '', 'Berbagi pengalaman & cerita.', 'S1 Perikanan UGM', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(261, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Sarirejo.jenggrik.kedawung.sragen.', 1, 'Sdn jenggrik 3\nSmp n 1 kedawung\nSma m 1 sragen\nUniversitas diponegoro', '', 'Mahasiswa', '081567851032', 'https://m.facebook.com/sigit.arrohman.3?ref=bookma', '', 'http://plus.google.com', '', '', 'Ingin berbagi pengalaman dengan menulis.', 'Sdn jenggrik 3\nSmp n 1 kedawung\nSma m 1 sragen\nUniversitas diponegoro', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(262, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'DEPOK', 1, 'S2 Manajemen Pendidikan, Universitas Negeri Jakarta\nS1 Pendidikan Bahasa Inggris, Universitas Sanata Dharma', '', 'Konsultan Manajemen & SDM Sekolah Swasta Indonesia', '081284942874', 'Https://www.facebook.com/Konsultan-Sekola', '@kadimazu', 'http://plus.google.com', '', '', 'Ingin membagikan ilmu', 'S2 Manajemen Pendidikan, Universitas Negeri Jakarta\nS1 Pendidikan Bahasa Inggris, Universitas Sanata Dharma', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(264, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Gebang Wetan RT 001 RW 010, Melikan, Rongkop, Gunungkidul', 1, 'SDN Baran 1, SMPN Semugih, SMUN 1 Rongkop, S1 : UNY, S2 : UPU', 'Pendidikan dan Sosial', 'Koordinator Program Keluarga Harapan (PKH) Kab. Gu', '085725885504', '', '', 'http://plus.google.com', '', '', 'Berbagi', 'SDN Baran 1, SMPN Semugih, SMUN 1 Rongkop, S1 : UNY, S2 : UPU', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(265, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Graha Citra Permai 1 G/9 Guntung Manggis', 1, 'S1 Pendidikan Bahasa Inggris', '', 'Karyawan Honorer', '+628123030718', '', '', 'http://plus.google.com', '', '', '', 'S1 Pendidikan Bahasa Inggris', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(266, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Rss Kebun Bunga Blog E9 Rt 022/Rw 008, Kebun Bunga, Sukarami, Palembang', 1, 'SD Kanisius Minggir tamat tahun 2000\nSMP Pangudi Luhur tamat tahun 2003\nSMAN1 Minggir tamat tahun 2006\nUniversitas Sanata Darma tamat tahun 2009\nUniversitas Terbuka Tamat tahun 2011\n', '', 'Guru Swasta', '6282371087779', 'https://www.facebook.com/masgurutakpernahberubah', '', 'http://plus.google.com', '', '', 'Saya ingin membagikan beberapa ilmu saya bagi masyarakat Palembang dan sekitarnya', 'SD Kanisius Minggir tamat tahun 2000\nSMP Pangudi Luhur tamat tahun 2003\nSMAN1 Minggir tamat tahun 2006\nUniversitas Sanata Darma tamat tahun 2009\nUniversitas Terbuka Tamat tahun 2011\n', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(267, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl.P. Flores II RT 02 /010 Bekasi Timur Perumnas III', 1, 'SD Duren Jaya 14 Bekasi\nSLTP AL Muhadjirin\nPKBM AL Hidayah \nSTMIK Pranata Indonesia\n', 'Programming, Animasi, Computer', 'Guru', '085716829010', 'https://www.facebook.com/iloveguitarklasik', '@herry_ict', 'http://plus.google.com', 'reinkarnasijreng.web.id', '', 'Ingin Berbagi Ilmu Tidak Lebih Dan Tidak Kurang', 'SD Duren Jaya 14 Bekasi\nSLTP AL Muhadjirin\nPKBM AL Hidayah \nSTMIK Pranata Indonesia\n', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(268, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jalan Sengon, Perum Griya Cipta Mulia 2H, Depok, Skeman, Yogyakarta', 1, 'S1 Teknik Elektro Institut Teknologi Sepuluh Nopember Surabaya', 'Bisnis, Internet, Otomotif', 'Swasta', '087826699168', '', '@arieyudho', 'http://plus.google.com', 'arieyudho.com', '', 'Sedekah Hidup', 'S1 Teknik Elektro Institut Teknologi Sepuluh Nopember Surabaya', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(269, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Apartemen Mediterania Palace Residences Tower C 29F/A', 1, 'Lulusan Teknik Komputer dari Universitas Indonesia angkatan 2011 :)', 'Hal-hal yang berhubungan dengan IT', 'Karyawan Swasta', '081234414547', 'http://www.facebook.com/isyanapar', '@isyanaaaa', 'http://plus.google.com', '', '', 'Ingin memberikan sesuatu kepada masyarakat :)', 'Lulusan Teknik Komputer dari Universitas Indonesia angkatan 2011 :)', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(270, '["pelaksana Kegiatan"]', '2016-03-30', 'Indonesia', 1, 'Jl. Kayumanis 1 No. 41 RT/RW : 1/14 Baktijaya, Sukmajaya, Depok Timur', 1, 'Bersekolah di: SMAN 2 Depok\nUmur: 17 tahun\nKelas: 2 SMA', 'Volunteer offline', 'Pelajar', '08970742553', 'https://m.facebook.com/nurnisrina.mew', '@nisrinous', 'http://plus.google.com', '', '', 'Pengen nyalurin ilmu yg gua punya, (mtk atau b ing) tapi ngga tau dimana. Mungkin melalui komunitas ini bisa. Walaupun belom tamat sma, tp gua ngerasa ilmu yg gua pelajarin selama ini sia sia kalo cuma gua pendem sendiri. Gua berharap bisa minimal berbuat sesuatu buat org lain melalui komunitas ini.', 'Bersekolah di: SMAN 2 Depok\nUmur: 17 tahun\nKelas: 2 SMA', 2016, '2016-03-30 17:14:54', '2016-03-30 17:14:54'),
(271, '["Web Developer"]', '1994-01-08', 'Magetan', 1, 'Gendeng, Kidul Rel UIN Yogyakarta', 4, 'Teknik Informatika', 'Web Developer', 'Mahasiswa', '085749121080', 'https://www.facebook.com/pugcrut', 'https://www.twitter.com/puguhjayadi81', NULL, 'https://www.puguhjayadi.blogspot.co.id', NULL, 'Belajar dan berbagi ilmu', 'Anak petani yang gokil', 2016, '2016-04-10 15:42:38', '2016-04-10 15:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `ibf_member_type`
--

CREATE TABLE IF NOT EXISTS `ibf_member_type` (
  `type_id` int(11) NOT NULL,
  `member_type` varchar(100) NOT NULL,
  `type_description` text
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_member_type`
--

INSERT INTO `ibf_member_type` (`type_id`, `member_type`, `type_description`) VALUES
(1, 'Kontributor Tulisan Artikel', ''),
(2, 'Kontributor Desain Grafis dan Media', ''),
(3, 'Narasumber Webminar', ''),
(4, 'Web Developer', ''),
(5, 'Mobile Developer', ''),
(6, 'System Admin', ''),
(7, 'Web Admin dan Sosial Media Admin', ''),
(8, 'Video Editor', ''),
(9, 'Animator', ''),
(10, 'Fotografer', ''),
(11, 'Pelaksana Kegiatan', ''),
(12, 'Pengajar Pelatihan dan Mentor', ''),
(13, 'Narasumber Berbagi Ilmu Tematik', ''),
(14, 'Donatur Beasiswa Ilmuberbagi @200rb/bulan', ''),
(15, 'Donatur IB Academy Heroes @500rb/bulan', '');

-- --------------------------------------------------------

--
-- Table structure for table `ibf_privilage`
--

CREATE TABLE IF NOT EXISTS `ibf_privilage` (
  `member_id` int(11) DEFAULT NULL,
  `app_1` tinyint(1) DEFAULT '1',
  `app_2` tinyint(1) DEFAULT '1',
  `app_3` tinyint(1) DEFAULT '1',
  `app_4` tinyint(1) DEFAULT '1',
  `app_5` tinyint(1) DEFAULT '1',
  `app_6` tinyint(1) DEFAULT '1',
  `app_7` tinyint(1) DEFAULT '1',
  `app_8` tinyint(1) DEFAULT '1',
  `app_9` tinyint(1) DEFAULT '1',
  `app_10` tinyint(1) DEFAULT '1',
  `app_11` tinyint(1) DEFAULT '1',
  `app_12` tinyint(1) DEFAULT '1',
  `app_13` tinyint(1) DEFAULT '1',
  `app_14` tinyint(1) DEFAULT '1',
  `app_15` tinyint(1) DEFAULT '1',
  `app_16` tinyint(1) DEFAULT '1',
  `app_17` tinyint(1) DEFAULT '1',
  `app_18` tinyint(1) DEFAULT '1',
  `app_19` tinyint(1) DEFAULT '1',
  `app_20` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_privilage`
--

INSERT INTO `ibf_privilage` (`member_id`, `app_1`, `app_2`, `app_3`, `app_4`, `app_5`, `app_6`, `app_7`, `app_8`, `app_9`, `app_10`, `app_11`, `app_12`, `app_13`, `app_14`, `app_15`, `app_16`, `app_17`, `app_18`, `app_19`, `app_20`) VALUES
(2, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(14, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(17, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(22, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(30, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(32, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(34, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(35, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(38, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(42, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(50, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(51, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(53, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(55, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(58, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(59, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(71, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(74, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(75, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(76, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(77, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(78, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(79, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(80, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(81, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(82, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(83, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(84, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(85, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(86, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(87, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(88, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(89, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(90, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(91, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(92, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(93, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(94, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(95, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(96, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(97, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(98, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(99, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(101, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(102, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(103, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(104, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(105, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(106, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(107, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(108, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(109, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(110, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(111, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(112, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(113, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(114, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(115, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(116, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(117, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(118, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(119, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(120, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(121, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(122, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(123, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(124, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(125, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(126, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(127, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(128, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(129, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(130, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(131, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(132, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(133, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(134, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(135, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(136, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(137, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(138, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(139, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(140, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(141, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(142, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(143, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(144, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(145, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(146, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(147, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(148, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(149, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(150, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(151, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(152, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(153, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(154, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(155, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(156, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(157, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(158, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(159, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(160, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(161, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(162, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(163, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(164, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(165, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(166, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(167, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(168, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(169, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(170, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(171, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(172, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(173, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(174, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(175, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(176, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(177, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(178, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(179, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(180, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(181, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(182, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(183, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(184, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(185, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(186, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(187, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(188, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(189, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(190, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(191, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(192, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(193, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(194, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(195, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(196, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(197, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(198, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(199, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(200, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(201, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(202, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(203, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(204, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(205, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(206, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(207, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(208, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(209, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(210, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(211, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(212, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(213, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(214, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(215, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(216, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(217, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(218, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(219, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(220, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(221, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(222, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(223, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(224, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(225, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(226, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(227, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(228, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(229, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(230, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(231, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(232, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(233, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(234, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(235, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(236, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(237, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(238, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(239, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(240, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(241, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(242, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(243, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(244, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(245, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(246, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(247, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(248, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(249, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(250, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(251, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(252, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(253, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(254, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(255, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(256, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(257, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(258, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(259, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(260, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(261, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(262, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(264, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(265, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(266, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(267, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(268, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(269, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(270, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(271, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ibf_region`
--

CREATE TABLE IF NOT EXISTS `ibf_region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(50) NOT NULL,
  `count_member` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibf_region`
--

INSERT INTO `ibf_region` (`region_id`, `region_name`, `count_member`) VALUES
(1, 'Jabodetabek', 246),
(2, 'Jawa Barat', 0),
(3, 'Banten', 0),
(4, 'DIY Jateng', 7),
(5, 'Jawa Timur', 0),
(6, 'Papua', 0),
(7, 'Kalimantan', 0),
(8, 'Sulawesi', 0),
(9, 'Sumatra', 0),
(10, 'Hongkong', 0),
(11, 'Korea', 0),
(12, 'Balik Papan', 0),
(13, 'Aceh', 0),
(14, 'Jepang', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ibf_activity`
--
ALTER TABLE `ibf_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `ibf_app`
--
ALTER TABLE `ibf_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `ibf_article`
--
ALTER TABLE `ibf_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_author` (`article_author`),
  ADD KEY `article_category` (`article_category`);

--
-- Indexes for table `ibf_article_category`
--
ALTER TABLE `ibf_article_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ibf_article_comment`
--
ALTER TABLE `ibf_article_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_article_id` (`comment_article_id`);

--
-- Indexes for table `ibf_asset`
--
ALTER TABLE `ibf_asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `ibf_member`
--
ALTER TABLE `ibf_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `ibf_member_detail`
--
ALTER TABLE `ibf_member_detail`
  ADD KEY `member_id` (`member_id`),
  ADD KEY `member_region` (`member_region`);

--
-- Indexes for table `ibf_member_type`
--
ALTER TABLE `ibf_member_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `ibf_privilage`
--
ALTER TABLE `ibf_privilage`
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `ibf_region`
--
ALTER TABLE `ibf_region`
  ADD PRIMARY KEY (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ibf_activity`
--
ALTER TABLE `ibf_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ibf_article`
--
ALTER TABLE `ibf_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ibf_article_category`
--
ALTER TABLE `ibf_article_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ibf_article_comment`
--
ALTER TABLE `ibf_article_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ibf_asset`
--
ALTER TABLE `ibf_asset`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ibf_member`
--
ALTER TABLE `ibf_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `ibf_member_type`
--
ALTER TABLE `ibf_member_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ibf_region`
--
ALTER TABLE `ibf_region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ibf_article`
--
ALTER TABLE `ibf_article`
  ADD CONSTRAINT `ibf_article_ibfk_1` FOREIGN KEY (`article_author`) REFERENCES `ibf_member` (`member_id`),
  ADD CONSTRAINT `ibf_article_ibfk_2` FOREIGN KEY (`article_category`) REFERENCES `ibf_article_category` (`category_id`);

--
-- Constraints for table `ibf_article_comment`
--
ALTER TABLE `ibf_article_comment`
  ADD CONSTRAINT `ibf_article_comment_ibfk_1` FOREIGN KEY (`comment_article_id`) REFERENCES `ibf_article` (`article_id`);

--
-- Constraints for table `ibf_member_detail`
--
ALTER TABLE `ibf_member_detail`
  ADD CONSTRAINT `ibf_member_detail_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `ibf_member` (`member_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ibf_member_detail_ibfk_2` FOREIGN KEY (`member_region`) REFERENCES `ibf_region` (`region_id`);

--
-- Constraints for table `ibf_privilage`
--
ALTER TABLE `ibf_privilage`
  ADD CONSTRAINT `ibf_privilage_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `ibf_member` (`member_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
