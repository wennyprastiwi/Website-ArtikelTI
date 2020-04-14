-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 05:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `konten` text NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `tanggal_terbit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `penulis`, `konten`, `kategori`, `tanggal_terbit`, `foto`) VALUES
(3, 'Flutter (Dart Lang)', 'Wenny Prastiwi', '										<h2 id=\"apa-itu-flutter\" style=\"margin: 1.5rem 0px; font-weight: 700; line-height: 1.2; font-size: 1.925rem; font-family: Lato, \" pt=\"\" sans\",=\"\" roboto,=\"\" sans-serif;=\"\" color:=\"\" rgba(0,=\"\" 0,=\"\" 0.84);=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Apa itu Flutter?</h2><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Flutter adalah sebuah framework open-source yang dikembangkan oleh Google untuk membangun antarmuka&nbsp;<em>(user interface/UI)</em>&nbsp;aplikasi Android dan iOS.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Apa bedanya membuat aplikasi android menggunakan Android Studio&nbsp;<em>(native)</em>&nbsp;dengan Flutter?</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\"><span style=\"font-weight: bolder;\">Perbedaan pertama:</span></p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Ada fitur&nbsp;<em>hot reload</em>&nbsp;yang disediakan oleh Flutter.</p><figure class=\"figure mb-3 img-thumbnail rounded-0\" style=\"margin-bottom: 1.75rem; padding: 0.25rem; border-color: rgb(222, 226, 230); color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" font-size:=\"\" 18px;=\"\" letter-spacing:=\"\" 0.16px;=\"\" border-radius:=\"\" 0px=\"\" !important;\"=\"\"><img class=\"lazyload blur-up figure-img img-fluid lazyloaded\" data-src=\"https://d33wubrfki0l68.cloudfront.net/ed3af26c69f922802fc9c22e9e9cec590cedb52b/87717/img/flutter/hot-reload.gif\" data-sizes=\"auto\" src=\"https://d33wubrfki0l68.cloudfront.net/ed3af26c69f922802fc9c22e9e9cec590cedb52b/87717/img/flutter/hot-reload.gif\" alt=\"Hot Reload pada Flutter\" loading=\"lazy\" style=\"border-style: none; max-width: 100%; height: auto; line-height: 1; filter: blur(0px); transition: filter 1s ease 0s, -webkit-filter 1s ease 0s; margin-bottom: 0.5rem !important;\"><figcaption class=\"figure-caption text-center\" style=\"font-size: 16.2px; color: rgb(108, 117, 125);\">Hot Reload pada Flutter</figcaption></figure><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Ini akan membuat kita&nbsp;<em>ngoding</em>&nbsp;android terasa seperti&nbsp;<em>ngoding</em>&nbsp;web. Setiap ada perubahan, kita tidak perlu kompilasi atau&nbsp;<em>build</em>&nbsp;ulang untuk melihat hasilnya.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Sedangkan pada Android Studio, kita harus melakukan&nbsp;<em>build</em>&nbsp;APK di setiap kali kita ingin men-debug dan melihat hasil aplikasi pada emulator.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Kadang proses ini memakan waktu yang cukup lama, apalagi spek komputer yang digunakan tidak terlalu tinggi.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\"><span style=\"font-weight: bolder;\">Perbedaan kedua:</span></p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Kemudian perbedaan berikutnya dari bahasa pemrograman yang digunakan. Flutter menggunakan bahasa pemrograman&nbsp;<a href=\"https://www.petanikode.com/topik/dart/\" style=\"color: rgb(0, 199, 183);\">Dart</a>, sedangkan Android Studio menggunakan bahasa pemrograman&nbsp;<a href=\"https://www.petanikode.com/tutorial/java/\" style=\"color: rgb(0, 199, 183);\">Java</a>&nbsp;dan&nbsp;<a href=\"https://www.petanikode.com/topik/kotlin/\" style=\"color: rgb(0, 199, 183);\">Kotlin</a>.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Baca juga:&nbsp;<a href=\"https://www.petanikode.com/belajar-dart/\" style=\"color: rgb(0, 199, 183);\">[Tutorial] Belajar Bahasa Pemrograman Dart</a>.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\"><span style=\"font-weight: bolder;\">Perbedaan ketiga:</span></p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Aplikasi yang kita buat dengan Flutter dapat di-build ke Android dan iOS. Sedangkan Android Studio hanya bisa di-build ke Android saja.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Ini untungnya belajar Flutter, sekali&nbsp;<em>coding</em>â€¦aplikasi bisa digunakan pada Android dan iOS.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Enak bukan?</p><figure class=\"figure mb-3 img-thumbnail rounded-0\" style=\"margin-bottom: 1.75rem; padding: 0.25rem; border-color: rgb(222, 226, 230); color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" font-size:=\"\" 18px;=\"\" letter-spacing:=\"\" 0.16px;=\"\" border-radius:=\"\" 0px=\"\" !important;\"=\"\"><img class=\"lazyload blur-up figure-img img-fluid lazyloaded\" data-src=\"https://d33wubrfki0l68.cloudfront.net/54444cecba0767d0ed1579aa26394b61d59e7606/e6fc2/img/flutter/sampel-app.png\" data-sizes=\"auto\" src=\"https://d33wubrfki0l68.cloudfront.net/54444cecba0767d0ed1579aa26394b61d59e7606/e6fc2/img/flutter/sampel-app.png\" alt=\"Sampel Aplikasi Mobile yang dibangun dengan Flutter\" loading=\"lazy\" style=\"border-style: none; max-width: 100%; height: auto; line-height: 1; filter: blur(0px); transition: filter 1s ease 0s, -webkit-filter 1s ease 0s; margin-bottom: 0.5rem !important;\"><figcaption class=\"figure-caption text-center\" style=\"font-size: 16.2px; color: rgb(108, 117, 125);\">Sampel Aplikasi Mobile yang dibangun dengan Flutter</figcaption></figure><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Contoh-contoh aplikasi yang dibangun dengan Flutter:</p><ul style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\"><li style=\"margin-bottom: 0.5rem;\">Alibaba (Android);</li><li style=\"margin-bottom: 0.5rem;\">Google AdWords (Android);</li><li style=\"margin-bottom: 0.5rem;\">App Tree (Android);</li><li style=\"margin-bottom: 0.5rem;\">Topline (Android);</li><li style=\"margin-bottom: 0.5rem;\">Hamilton (Android dan iOS);</li><li style=\"margin-bottom: 0.5rem;\">dll. (selengkapnya cek di:&nbsp;<a href=\"https://flutter.io/showcase/\" style=\"color: rgb(0, 199, 183);\">showcase</a>).</li></ul><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Laluâ€¦ Apa bedanya Flutter dengan&nbsp;<em>React Native</em>&nbsp;bang?</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Pertanyaan ini saya simpan dulu, karena saya belum&nbsp;<a href=\"https://www.petanikode.com/flutter-linux/react-native-dasar\" style=\"color: rgb(0, 199, 183);\">mencoba&nbsp;<em>React Native</em></a>. Mungkin nanti setelah mencobanya, saya akan jawab dan edit postingan ini.</p><p style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\">Ada beberapa peralatan yang harus kita install untuk memulai belajar dan membuat aplikasi dengan Flutter:</p><ol style=\"margin-bottom: 1.5rem; font-size: 18px; color: rgba(0, 0, 0, 0.84); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" merriweather,=\"\" cambria,=\"\" serif;=\"\" letter-spacing:=\"\" 0.16px;\"=\"\"><li style=\"margin-bottom: 0.5rem;\">Java Development Kit (JDK);</li><li style=\"margin-bottom: 0.5rem;\">Android Studio;</li><li style=\"margin-bottom: 0.5rem;\">Android SDK;</li><li style=\"margin-bottom: 0.5rem;\">Flutter SDK;</li><li style=\"margin-bottom: 0.5rem;\">Teks Editor (atau bisa juga pakai Android Studio).</li></ol>										', 'Pemrograman Android Mobile', '2019-05-20 19:49:35', 'f13649874d583578a3a6297c02c440a4.png'),
(9, 'Langkah Awal CRUD PHP MYSQL', 'Wenny Prastiwi', '<p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">CRUD adalah akronim untuk Create, Read, Update, dan Delete. Operasi CRUD adalah manipulasi data dasar untuk database.<br style=\"margin: 0px; padding: 0px;\">Dalam tutorial ini kita akan membuat aplikasi PHP sederhana untuk melakukan semua operasi ini pada tabel database MySQL di satu tempat.</p><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">Kita akan membuat sebuah aplikasi dengan tampilan seperti pada gambar di bawah dengan sebuah tabel yang menampilkan data dari database di sisi&nbsp;<em style=\"margin: 0px; padding: 0px;\">frontend</em>. Terdapat beberapa tombol untuk mengubah data yang ada di database lewat antarmuka yang kita buat. Tabel pengguna yang kita buat akan berisi informasi pengguna seperti nama, nomor telepon, email, dll.</p><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><img src=\"https://static.cdn-cdpl.com/source/189d58c5783efb288b97b2a71a15dca6/ren.png\" alt=\"\" style=\"margin: 0px; padding: 0px; border-style: none; max-width: 100%; border-radius: 6px;\"></p><h1 style=\"margin-top: 0px; margin-bottom: 0.590909em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.31818em; color: rgb(37, 37, 37); font-size: 3.14286em; font-variant-ligatures: common-ligatures; letter-spacing: -0.01em;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600;\">Langkah-Langkah Pembuatan CRUD</span></h1><h2 style=\"margin: 0px 0px 0.787879em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.36364em; color: rgb(37, 37, 37); font-size: 2.35714em; font-variant-ligatures: common-ligatures;\">1. Membuat Database.sql</h2><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">/* Create Database and Table */\r\ncreate database crud_db;\r\n\r\nuse crud_db;\r\n\r\nCREATE TABLE `users` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `name` varchar(100),\r\n  `email` varchar(100),\r\n  `mobile` varchar(15),\r\n  PRIMARY KEY  (`id`)\r\n);</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">Pertama kita buat terlebih dahulu file&nbsp;<code style=\"margin: 0px; padding: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 16.625px; color: rgb(232, 62, 140); word-break: break-word;\">database.sql</code>&nbsp;kemudian kita impor file&nbsp;<code style=\"margin: 0px; padding: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 16.625px; color: rgb(232, 62, 140); word-break: break-word;\">database.sql</code>&nbsp;ini ke dalam database (menggunakan PHPMyAdmin).</p><h2 style=\"margin: 0px 0px 0.787879em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.36364em; color: rgb(37, 37, 37); font-size: 2.35714em; font-variant-ligatures: common-ligatures;\">2. Membuat file config.php</h2><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">&lt;?php\r\n/**\r\n * using mysqli_connect for database connection\r\n */\r\n\r\n$databaseHost = \'localhost\';\r\n$databaseName = \'crud_db\';\r\n$databaseUsername = \'root\';\r\n$databasePassword = \'\';\r\n\r\n$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); \r\n\r\n?&gt;</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">File&nbsp;<span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(37, 37, 37);\">config.php</span>&nbsp;menyimpan informasi tentang database host, username dan password. Sebagian besar server lokal bekerja dengan detail yang diberikan.<br style=\"margin: 0px; padding: 0px;\">Anda dapat mengubahnya sesuai dengan detail host dan database Anda.</p><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">Untuk menghubungkan PHP dengan MySQL, kita menggunakan fungsi&nbsp;<code style=\"margin: 0px; padding: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 16.625px; color: rgb(232, 62, 140); word-break: break-word;\">mysqli_connect()</code>&nbsp;dengan alamat server sebagai parameter pertama, user database sebagai parameter kedua, password user sebagai parameter ketiga, dan nama database sebagai parameter keempat.</p><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">Silahkan isi password sesuai dengan yang dibuat di servernya. Jika tidak menggunakan passsword, maka isikan dengan String kosong saja.</p><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">$password = \"\";</code></pre><hr style=\"margin: 1.85714em 0px; padding: 0px; overflow: visible; border-color: rgb(236, 236, 236); color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><a href=\"https://www.codepolitan.com/learn/belajar-pemrograman-php\" style=\"margin: 0px; padding: 0px; color: rgb(91, 192, 190); font-weight: 700; font-size: 1em; line-height: 1.85714em;\"><img src=\"https://i.ibb.co/0MvnVDv/Screenshot-from-2019-01-21-11-10-55.png\" alt=\"\" style=\"margin: 0px; padding: 0px; border-style: none; max-width: 100%; border-radius: 6px;\"></a><br style=\"margin: 0px; padding: 0px;\">Ingin belajar CRUD lebih dalam atau ingin bisa membuat aplikasi berbasis web menggunakan bahasa pemrograman PHP? Gabung sekarang juga dalam&nbsp;<a href=\"https://www.codepolitan.com/learn/belajar-pemrograman-php\" style=\"margin: 0px; padding: 0px; color: rgb(91, 192, 190); font-weight: 700; font-size: 1em; line-height: 1.85714em;\">kelas online belajar pemrograman PHP</a>.</p><hr style=\"margin: 1.85714em 0px; padding: 0px; overflow: visible; border-color: rgb(236, 236, 236); color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><h3 style=\"margin: 0px 0px 1.04em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.5em; color: rgb(37, 37, 37); font-size: 1.78571em; font-variant-ligatures: common-ligatures;\">3. Membuat file index.php</h3><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">&lt;?php\r\n// Create database connection using config file\r\ninclude_once(\"config.php\");\r\n\r\n// Fetch all users data from database\r\n$result = mysqli_query($mysqli, \"SELECT * FROM users ORDER BY id DESC\");\r\n?&gt;\r\n\r\n&lt;html&gt;\r\n&lt;head&gt;    \r\n    &lt;title&gt;Homepage&lt;/title&gt;\r\n&lt;/head&gt;\r\n\r\n&lt;body&gt;\r\n&lt;a href=\"add.php\"&gt;Add New User&lt;/a&gt;&lt;br/&gt;&lt;br/&gt;\r\n\r\n    &lt;table width=\'80%\' border=1&gt;\r\n\r\n    &lt;tr&gt;\r\n        &lt;th&gt;Name&lt;/th&gt; &lt;th&gt;Mobile&lt;/th&gt; &lt;th&gt;Email&lt;/th&gt; &lt;th&gt;Update&lt;/th&gt;\r\n    &lt;/tr&gt;\r\n    &lt;?php  \r\n    while($user_data = mysqli_fetch_array($result)) {         \r\n        echo \"&lt;tr&gt;\";\r\n        echo \"&lt;td&gt;\".$user_data[\'name\'].\"&lt;/td&gt;\";\r\n        echo \"&lt;td&gt;\".$user_data[\'mobile\'].\"&lt;/td&gt;\";\r\n        echo \"&lt;td&gt;\".$user_data[\'email\'].\"&lt;/td&gt;\";    \r\n        echo \"&lt;td&gt;&lt;a href=\'edit.php?id=$user_data[id]\'&gt;Edit&lt;/a&gt; | &lt;a href=\'delete.php?id=$user_data[id]\'&gt;Delete&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;\";        \r\n    }\r\n    ?&gt;\r\n    &lt;/table&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">File&nbsp;<span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(37, 37, 37);\">index.php</span>&nbsp;merupakan file utama yang menyertakan file konfigurasi untuk koneksi database. Kemudian menampilkan semua daftar pengguna menggunakan MySQL Select Query. Pengguna yang akan ditampilkan di dalam daftar perlu menambahkan terlebih dahulu menggunakan tautan \'Tambahkan Pengguna Baru\'.</p><h3 style=\"margin: 0px 0px 1.04em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.5em; color: rgb(37, 37, 37); font-size: 1.78571em; font-variant-ligatures: common-ligatures;\">4. Membuat file add.php</h3><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;Add Users&lt;/title&gt;\r\n&lt;/head&gt;\r\n\r\n&lt;body&gt;\r\n    &lt;a href=\"index.php\"&gt;Go to Home&lt;/a&gt;\r\n    &lt;br/&gt;&lt;br/&gt;\r\n\r\n    &lt;form action=\"add.php\" method=\"post\" name=\"form1\"&gt;\r\n        &lt;table width=\"25%\" border=\"0\"&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Name&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"name\"&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Email&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"email\"&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Mobile&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"mobile\"&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"submit\" name=\"Submit\" value=\"Add\"&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n        &lt;/table&gt;\r\n    &lt;/form&gt;\r\n\r\n    &lt;?php\r\n\r\n    // Check If form submitted, insert form data into users table.\r\n    if(isset($_POST[\'Submit\'])) {\r\n        $name = $_POST[\'name\'];\r\n        $email = $_POST[\'email\'];\r\n        $mobile = $_POST[\'mobile\'];\r\n\r\n        // include database connection file\r\n        include_once(\"config.php\");\r\n\r\n        // Insert user data into table\r\n        $result = mysqli_query($mysqli, \"INSERT INTO users(name,email,mobile) VALUES(\'$name\',\'$email\',\'$mobile\')\");\r\n\r\n        // Show message when user added\r\n        echo \"User added successfully. &lt;a href=\'index.php\'&gt;View Users&lt;/a&gt;\";\r\n    }\r\n    ?&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">File&nbsp;<span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(37, 37, 37);\">add.php</span>&nbsp;berfungsi untuk menambahkan pengguna baru. Formulir HTML digunakan untuk menerima masukan data pengguna. Setelah data pengguna diserahkan, MySQL INSERT Query digunakan untuk memasukkan data pengguna ke dalam database.</p><h3 style=\"margin: 0px 0px 1.04em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.5em; color: rgb(37, 37, 37); font-size: 1.78571em; font-variant-ligatures: common-ligatures;\">5. Membuat file edit.php</h3><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">&lt;?php\r\n// include database connection file\r\ninclude_once(\"config.php\");\r\n\r\n// Check if form is submitted for user update, then redirect to homepage after update\r\nif(isset($_POST[\'update\']))\r\n{   \r\n    $id = $_POST[\'id\'];\r\n\r\n    $name=$_POST[\'name\'];\r\n    $mobile=$_POST[\'mobile\'];\r\n    $email=$_POST[\'email\'];\r\n\r\n    // update user data\r\n    $result = mysqli_query($mysqli, \"UPDATE users SET name=\'$name\',email=\'$email\',mobile=\'$mobile\' WHERE id=$id\");\r\n\r\n    // Redirect to homepage to display updated user in list\r\n    header(\"Location: index.php\");\r\n}\r\n?&gt;\r\n&lt;?php\r\n// Display selected user data based on id\r\n// Getting id from url\r\n$id = $_GET[\'id\'];\r\n\r\n// Fetech user data based on id\r\n$result = mysqli_query($mysqli, \"SELECT * FROM users WHERE id=$id\");\r\n\r\nwhile($user_data = mysqli_fetch_array($result))\r\n{\r\n    $name = $user_data[\'name\'];\r\n    $email = $user_data[\'email\'];\r\n    $mobile = $user_data[\'mobile\'];\r\n}\r\n?&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;  \r\n    &lt;title&gt;Edit User Data&lt;/title&gt;\r\n&lt;/head&gt;\r\n\r\n&lt;body&gt;\r\n    &lt;a href=\"index.php\"&gt;Home&lt;/a&gt;\r\n    &lt;br/&gt;&lt;br/&gt;\r\n\r\n    &lt;form name=\"update_user\" method=\"post\" action=\"edit.php\"&gt;\r\n        &lt;table border=\"0\"&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Name&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"name\" value=&lt;?php echo $name;?&gt;&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Email&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"email\" value=&lt;?php echo $email;?&gt;&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt; \r\n                &lt;td&gt;Mobile&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"text\" name=\"mobile\" value=&lt;?php echo $mobile;?&gt;&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n            &lt;tr&gt;\r\n                &lt;td&gt;&lt;input type=\"hidden\" name=\"id\" value=&lt;?php echo $_GET[\'id\'];?&gt;&gt;&lt;/td&gt;\r\n                &lt;td&gt;&lt;input type=\"submit\" name=\"update\" value=\"Update\"&gt;&lt;/td&gt;\r\n            &lt;/tr&gt;\r\n        &lt;/table&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(37, 37, 37);\">Edit.php</span>&nbsp;digunakan untuk mengedit / update data pengguna. Anda dapat mengubah data pengguna dan memperbaruinya. File ini akan mengarahkan pengguna kembali ke homepage, setelah update sukses.</p><h3 style=\"margin: 0px 0px 1.04em; padding: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.5em; color: rgb(37, 37, 37); font-size: 1.78571em; font-variant-ligatures: common-ligatures;\">6. Membuat file delete.php</h3><pre style=\"margin-bottom: 1.85714em; padding: 0.928571em; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 12.25px; color: rgb(33, 37, 41); background: rgb(250, 250, 250); border-color: rgb(236, 236, 236); border-radius: 6px; line-height: 20px; max-height: 500px;\"><code style=\"margin: 0px; font-family: SFMono-Regular, Menlo, Monaco, Consolas, &quot;Liberation Mono&quot;, &quot;Courier New&quot;, monospace; word-break: normal;\">&lt;?php\r\n// include database connection file\r\ninclude_once(\"config.php\");\r\n\r\n// Get id from URL to delete that user\r\n$id = $_GET[\'id\'];\r\n\r\n// Delete user row from table based on given id\r\n$result = mysqli_query($mysqli, \"DELETE FROM users WHERE id=$id\");\r\n\r\n// After delete redirect to Home, so that latest user list will be displayed.\r\nheader(\"Location:index.php\");\r\n?&gt;</code></pre><p style=\"margin-bottom: 1.36842em; padding: 0px; font-size: 1.35714em; line-height: 1.68421em; color: rgb(128, 128, 128); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\">File&nbsp;<span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(37, 37, 37);\">delete.php</span>&nbsp;hanya dipanggil saat kita klik&nbsp;<em style=\"margin: 0px; padding: 0px;\">link</em>&nbsp;\'Delete\' untuk pengguna manapun yang dipilih.</p>', 'Pemrograman Web', '2019-05-22 08:20:26', '5e7c63503d12423e4cfef6b34d208287.jpg'),
(10, 'Menjadi UI Designer', 'Wenny Prastiwi', '<p name=\"2772\" id=\"2772\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --x-height-multiplier:0.375; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em; color: rgba(0, 0, 0, 0.84);\"><span class=\"markup--strong markup--p-strong\" style=\"font-weight: 700;\">Apa itu&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">UI</em>?</span></p><p name=\"0181\" id=\"0181\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --x-height-multiplier:0.375; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em; color: rgba(0, 0, 0, 0.84);\"><em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">UI</em>&nbsp;atau kependekan dari&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">User Interface</em>&nbsp;adalah tampilan antar muka suatu perangkat lunak, perangkat keras serta perangkat alat elektronik lainnya guna memaksimalkan pengalaman pengguna. Saya sendiri mendeskripsikan dengan â€œwajah suatu perangkat lunakâ€. Dari kacamata desainer,&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">UI</em>&nbsp;bukan saja soal warna dan&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">layout</em>, namun juga hal-hal yang lebih spesifik seperti&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">typeface</em>, bentuk tombol, dimensi, ikon, serta ilustrasi.</p><figure name=\"bf78\" id=\"bf78\" class=\"graf graf--figure graf-after--p\" style=\"margin-top: 43px; position: relative; clear: both; outline: 0px; user-select: auto; z-index: 100; color: rgba(0, 0, 0, 0.84); font-family: medium-content-sans-serif-font, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\"><div class=\"aspectRatioPlaceholder is-locked\" style=\"position: relative; width: 700px; margin: 0px auto; max-width: 700px; max-height: 369px;\"><div class=\"aspectRatioPlaceholder-fill\" style=\"padding-bottom: 369.594px;\"></div><div class=\"progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded\" data-image-id=\"0*ZZk5j-erhDYyFw30.\" data-width=\"720\" data-height=\"380\" data-action=\"zoom\" data-action-value=\"0*ZZk5j-erhDYyFw30.\" data-scroll=\"native\" style=\"position: absolute; top: 0px; left: 0px; width: 700px; height: 369px; margin: auto; background: rgba(0, 0, 0, 0); transition: background 0.2s ease 0s; cursor: zoom-in; max-width: 100%;\"><canvas class=\"progressiveMedia-canvas js-progressiveMedia-canvas\" width=\"75\" height=\"37\" style=\"display: block; position: absolute; top: 0px; left: 0px; width: 700px; height: 369px; margin: auto; visibility: hidden; opacity: 0; backface-visibility: hidden; transition: visibility 0s linear 0.5s, opacity 0.1s ease 0.4s;\"></canvas><img class=\"progressiveMedia-image js-progressiveMedia-image\" data-src=\"https://cdn-images-1.medium.com/max/800/0*ZZk5j-erhDYyFw30.\" src=\"https://cdn-images-1.medium.com/max/800/0*ZZk5j-erhDYyFw30.\" style=\"display: block; position: absolute; top: 0px; left: 0px; width: 700px; height: 369px; margin: auto; z-index: 100; visibility: visible; opacity: 1; backface-visibility: hidden; transition: visibility 0s linear 0s, opacity 0.4s ease 0s;\"></div></div></figure>', 'UI/UX Design', '2019-05-22 08:25:08', '15178f34d4e53f43aba965132ff2db5a.jpg'),
(11, 'Hello World, Welcome Geeks!', 'Wenny Prastiwi', '																														', 'slide', '2019-05-22 08:27:43', '441191a2307f68e1b3d3b1d7d1085c7a.jpg'),
(12, 'Share Pengalaman yuk!', 'Wenny Prastiwi', '', 'slide', '2019-05-22 08:30:58', '716dea469fbca3b4dec2ee62cca56e49.jpg'),
(13, 'Learn How To Be Developer Expert', 'Wenny Prastiwi', '', 'slide', '2019-05-22 08:35:09', '6cbd2caa5abf38ed4b61bb605c29e64f.jpg'),
(14, 'Code made your life better', 'Wenny Prastiwi', '', 'slide', '2019-05-22 08:37:52', '829b84392593f447786783b61b03b1a7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `tanggal_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `judul`, `nama_file`, `tanggal_upload`) VALUES
(2, 'Belajar HTML & CSS', '44c5e0b0dd4f31712385c47a3da20d42.pdf', '2019-05-22 08:42:57'),
(3, 'Mahir Menguasai CSS', '3c76feb46a13bd66bdc99867367cd9d8.pdf', '2019-05-22 08:43:38'),
(4, 'Materi Praktek Tampilan Website', '67c3e8e9f12a68d9ac84de7b4214356b.zip', '2019-05-22 08:44:56'),
(7, 'Fundamental Of Database System', 'e013fb982bb1b0af4525c19a9fae4c47.pdf', '2019-05-22 08:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `keterangan`) VALUES
(2, 'Pemrograman Android Mobile', ''),
(3, 'UI/UX Design', ''),
(4, 'Cerita Pengalaman', ''),
(5, 'Pemrograman Web', ''),
(6, 'slide', '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `last_login`) VALUES
(2, 'wenny', 'c3f3668c278b6627bd99138a3f00e7c3', 'Wenny Prastiwi', 'wennyprastiwi@gmail.com', '2019-05-22 07:31:06'),
(3, 'wenny', 'c3f3668c278b6627bd99138a3f00e7c3', 'Wenny Prastiwi', 'wenny@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
