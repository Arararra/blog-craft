-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Nov 2019 pada 09.31
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-craft`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Telepon` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_assetindexdata`
--

CREATE TABLE `blog_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_assets`
--

CREATE TABLE `blog_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_assets`
--

INSERT INTO `blog_assets` (`id`, `volumeId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 1, 1, 'BNHA.jpg', 'image', 317, 450, 51575, NULL, 0, 0, '2019-11-06 06:51:16', '2019-11-06 06:51:16', '2019-11-06 06:51:24', 'dc5abe19-22c5-459e-8a5b-d193f83b1f84'),
(15, 1, 1, 'BNHA.jpg', 'image', 317, 450, 51575, NULL, 0, 0, '2019-11-07 02:33:37', '2019-11-07 02:33:37', '2019-11-07 02:33:37', 'a5d1d2d3-186f-4b20-993f-0b7cfe15189f'),
(16, 1, 1, 'jojo-3.jpg', 'image', 319, 450, 33568, NULL, 0, 0, '2019-11-07 02:33:38', '2019-11-07 02:33:38', '2019-11-07 02:33:38', 'd08cdf53-7802-44f3-9122-ac5a745005b0'),
(20, 1, 1, 'BNHA.jpg', 'image', 317, 450, 51575, NULL, 0, 0, '2019-11-07 03:06:41', '2019-11-07 03:06:41', '2019-11-07 03:06:41', '95be9a9f-4fda-48d8-97dc-435616880e2d'),
(21, 1, 1, 'jojo-3.jpg', 'image', 319, 450, 33568, NULL, 0, 0, '2019-11-07 03:06:42', '2019-11-07 03:06:42', '2019-11-07 03:06:42', '71dd45bf-fc53-411f-b89b-9bc38c66b72a'),
(56, 1, 1, 'BNHA.jpg', 'image', 317, 450, 51575, NULL, NULL, NULL, '2019-11-08 02:03:21', '2019-11-08 02:03:21', '2019-11-08 02:03:21', '226afc86-2c85-4e2a-979f-2e6079c7fed2'),
(57, 1, 1, 'jojo-3.jpg', 'image', 319, 450, 33568, NULL, NULL, NULL, '2019-11-08 02:03:22', '2019-11-08 02:03:22', '2019-11-08 02:03:22', '2b84d8e1-879d-43d1-9408-9d2cf26b5749'),
(305, 1, 1, 'Darwin-Game.jpg', 'image', 300, 450, 27046, NULL, NULL, NULL, '2019-11-14 07:36:02', '2019-11-14 07:36:02', '2019-11-14 07:36:02', '3b61ceef-1c8f-44ee-a673-cf18158b1d3a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_assettransformindex`
--

CREATE TABLE `blog_assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_assettransforms`
--

CREATE TABLE `blog_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(165, 1, NULL, 0, '2019-11-09 02:47:46', '2019-11-09 02:47:46', '455b2ead-bb77-4ce9-bbdf-1928f7dd726e'),
(169, 1, NULL, NULL, '2019-11-09 02:54:12', '2019-11-09 02:54:12', '3966b00f-8d18-452b-984e-8faa16d7a362'),
(170, 1, NULL, NULL, '2019-11-09 02:54:26', '2019-11-09 02:54:26', 'b7964a27-66a3-4f88-9fc3-af57df20a245');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categorygroups`
--

CREATE TABLE `blog_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_categorygroups`
--

INSERT INTO `blog_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 12, 'category', 'category', '2019-11-06 06:48:06', '2019-11-14 01:03:54', NULL, 'ca6d9283-71d7-4d3f-bc11-a9396b2f0026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categorygroups_sites`
--

CREATE TABLE `blog_categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_categorygroups_sites`
--

INSERT INTO `blog_categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'kategori/{slug}', 'blog\\_entry_kategori_list', '2019-11-06 06:48:06', '2019-11-14 06:03:11', '4f1ff61a-ac7e-402d-b8e5-cf67100bbbfe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_content`
--

CREATE TABLE `blog_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_article` text,
  `field_videoTrailer` varchar(255) DEFAULT NULL,
  `field_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_content`
--

INSERT INTO `blog_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_article`, `field_videoTrailer`, `field_text`) VALUES
(1, 1, 1, NULL, '2019-11-06 02:26:42', '2019-11-06 02:26:42', '11d83d98-2b26-45ac-b4c6-32ae832f3cbe', NULL, NULL, NULL),
(3, 3, 1, 'Blog', '2019-11-06 04:53:24', '2019-11-06 06:54:11', 'de358a7c-973c-4b1c-861d-e611a082a5ed', NULL, NULL, NULL),
(4, 4, 1, 'nomer acak', '2019-11-06 04:53:25', '2019-11-06 04:53:25', 'da415468-d394-444a-a7a6-6c7d1e15cfa2', NULL, NULL, NULL),
(6, 6, 1, 'nomer acak', '2019-11-06 04:54:04', '2019-11-06 04:54:04', 'ba7db114-5c91-4bae-8e02-0214b30cce77', NULL, NULL, NULL),
(7, 7, 1, 'Blog', '2019-11-06 06:10:21', '2019-11-06 06:10:21', 'b38e9450-f120-4b54-a317-28f47ad4161e', NULL, NULL, NULL),
(8, 8, 1, 'Blog', '2019-11-06 06:12:12', '2019-11-06 06:12:12', 'aa525759-6c1b-4c6e-be68-38ef94ed18ef', NULL, NULL, NULL),
(9, 9, 1, 'BNHA', '2019-11-06 06:51:16', '2019-11-06 06:51:24', '12b067a3-6945-4d73-bfbd-1b5d98b3a5ee', NULL, NULL, NULL),
(10, 10, 1, 'Blog', '2019-11-06 06:54:12', '2019-11-06 06:54:12', 'de2b8788-6713-430c-bde1-1ef771da4462', NULL, NULL, NULL),
(11, 11, 1, NULL, '2019-11-06 06:54:49', '2019-11-06 06:54:49', '1e7a7b13-a69c-4ee1-91f1-1248368bb761', NULL, NULL, NULL),
(13, 13, 1, 'My Hero Academia', '2019-11-07 02:32:22', '2019-11-14 02:14:28', '55eac29a-0f88-4251-b8fb-1b15f13f5004', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(14, 14, 1, 'UwU', '2019-11-07 02:32:22', '2019-11-07 02:32:22', '93c082f1-65ca-43a4-9068-31456cec5179', NULL, '', NULL),
(15, 15, 1, 'BNHA', '2019-11-07 02:33:37', '2019-11-07 02:33:37', '7c7793b7-970f-46b3-8da3-f2f04923fafa', NULL, NULL, NULL),
(16, 16, 1, 'Jojo 3', '2019-11-07 02:33:38', '2019-11-07 02:33:38', 'e4d9cd4b-d19c-472e-b4ad-edf9f92d6193', NULL, NULL, NULL),
(17, 17, 1, 'UwU', '2019-11-07 02:34:02', '2019-11-07 02:34:02', '88b10087-8e58-40fb-ae13-5fa54b890c0f', 'This is the simpe article/post', '', NULL),
(18, 18, 1, 'UwU', '2019-11-07 02:35:26', '2019-11-07 02:35:26', 'f8f90437-4602-4af0-805b-686b92e5847b', 'This is the simpe article/post', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(19, 19, 1, 'UwU', '2019-11-07 02:41:47', '2019-11-07 02:41:47', '52fa704a-68f4-4fa3-b3f3-247f06076cf6', 'This is the simpe article/post', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(20, 20, 1, 'BNHA', '2019-11-07 03:06:41', '2019-11-07 03:06:41', '2674e85c-8754-4563-8e00-868dcdf7d5bf', NULL, NULL, NULL),
(21, 21, 1, 'Jojo 3', '2019-11-07 03:06:42', '2019-11-07 03:06:42', 'fb0a1ee6-c110-4bbf-84a0-62519e5dbe46', NULL, NULL, NULL),
(22, 22, 1, 'Boku no Hero Academia', '2019-11-07 06:02:48', '2019-11-07 06:02:48', '112f0fd0-873d-4db6-8f7d-3012fed3b62f', 'This is the simpe article/post', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(23, 23, 1, 'Boku no Hero Academia', '2019-11-07 06:18:03', '2019-11-07 06:18:03', 'ea5ebfd2-f739-42e9-a181-75826cbc0456', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(24, 24, 1, 'Boku no Hero Academia', '2019-11-07 06:18:24', '2019-11-07 06:18:24', '54dbc99a-56a8-41df-a660-e38664fc2371', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(26, 26, 1, 'Boku no Hero Academia', '2019-11-07 06:18:50', '2019-11-07 06:18:50', 'a2af87ed-ce2f-4952-a1e0-03d50ac82eb8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(27, 27, 1, 'Boku no Hero Academia', '2019-11-07 06:19:28', '2019-11-07 06:19:28', '2220cd7a-2322-41ac-8f3c-590509c3cb93', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(28, 28, 1, 'Boku no Hero Academia', '2019-11-07 06:26:04', '2019-11-07 06:26:04', '9d80e390-d875-4410-b7f7-66d0d2c801ef', '<p>Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(29, 29, 1, 'Boku no Hero Academia', '2019-11-07 06:34:30', '2019-11-07 06:34:30', '78a78363-9965-4881-877b-d5f57858c64a', 'Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.\r\nSingkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.\r\nKarakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.\r\nPertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.\r\nMusik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.\r\nSekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(30, 30, 1, 'Boku no Hero Academia', '2019-11-07 06:34:54', '2019-11-07 06:34:54', 'd0d666eb-80fd-4f58-9a1b-1b55ce118d1f', '', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(31, 31, 1, 'Boku no Hero Academia', '2019-11-07 06:35:15', '2019-11-07 06:35:15', 'd8de4285-4334-4ef6-9e35-c00576e73be2', 'Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.\r\n\r\nSingkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.\r\n\r\nKarakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.\r\n\r\nPertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.\r\n\r\nMusik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.\r\n\r\nSekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(32, 32, 1, 'Boku no Hero Academia', '2019-11-07 06:36:04', '2019-11-07 06:36:04', '7eef3d07-31fd-428e-ae56-02f7fba81a0c', '<p>Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(33, 33, 1, 'Boku no Hero Academia', '2019-11-07 06:37:22', '2019-11-07 06:37:22', '892e8dbf-154a-4223-8718-94064a7e2ed4', 'Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.\r\n\r\nSingkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.\r\n\r\nKarakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.\r\n\r\nPertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.\r\n\r\nMusik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.\r\n\r\nSekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(34, 34, 1, 'Boku no Hero Academia', '2019-11-07 06:37:44', '2019-11-07 06:37:44', '064d2c6e-99a0-4d07-8940-629d56d59ca5', 'Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.\r\nSingkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.\r\nKarakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.\r\nPertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.\r\nMusik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.\r\nSekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(35, 35, 1, 'Boku no Hero Academia', '2019-11-07 06:38:14', '2019-11-07 06:38:14', '59b160bb-240a-4c02-af7d-01cc60854abf', '<p>Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(36, 36, 1, 'Boku no Hero Academia', '2019-11-07 06:38:17', '2019-11-07 06:38:17', '18ae2166-196b-415f-ad1c-d9d713462f14', '<p>Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(37, 37, 1, 'Boku no Hero Academia', '2019-11-07 06:38:44', '2019-11-07 06:38:44', 'adc3aad0-e455-4a81-b4fe-f4f380afabc8', 'Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.\r\n\r\nSingkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.\r\n\r\nKarakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.\r\n\r\nPertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.\r\n\r\nMusik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.\r\n\r\nSekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(38, 38, 1, 'Boku no Hero Academia', '2019-11-07 06:39:40', '2019-11-07 06:39:40', '406bf455-9a53-48ad-9917-2db056465776', '<p>Jujur saja, kalau disuruh memilih anime shounen terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime shounen yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(39, 39, 1, 'Boku no Hero Academia', '2019-11-07 06:46:30', '2019-11-07 06:46:30', 'cacc3827-9fd6-4f07-9da7-6a9c1c5560bc', 'aaaa', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(40, 40, 1, 'Boku no Hero Academia', '2019-11-07 06:46:50', '2019-11-07 06:46:50', '6e92900a-3a84-44b9-b80f-cad37b439e6b', 'aaaa\r\nbbbb', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(41, 41, 1, 'Boku no Hero Academia', '2019-11-07 06:47:14', '2019-11-07 06:47:14', '3bee5dd9-72a2-492d-897d-0bf25eea5559', 'aaaa<br>\r\nbbbb', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(42, 42, 1, 'Boku no Hero Academia', '2019-11-07 07:02:55', '2019-11-07 07:02:55', '65cb5fc9-e997-4cb9-ba02-23187e2160ce', 'lllllllllllllllllllllllllllllllllll', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(43, 43, 1, 'Boku no Hero Academia', '2019-11-07 07:02:56', '2019-11-07 07:02:56', '5fbbb262-88d6-4192-9a35-c7acf5425585', 'lllllllllllllllllllllllllllllllllll', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(44, 44, 1, 'Boku no Hero Academia', '2019-11-07 07:02:57', '2019-11-07 07:02:57', '92c2618b-5a84-43b8-b32d-ee613945addf', 'lllllllllllllllllllllllllllllllllll', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(45, 45, 1, 'Boku no Hero Academia', '2019-11-07 07:03:15', '2019-11-07 07:03:15', '592e36fb-6cfe-42d9-8c96-85d82b7ef0fe', 'lllllllllllllllllllllllllllllllllll', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(46, 46, 1, 'Boku no Hero Academia', '2019-11-07 07:03:23', '2019-11-07 07:03:39', 'b5af3e8c-39f4-4b39-b865-cad706a8efa3', 'lllllllllllllllllllllllllllllllllll<br>aaaaaaa', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(47, 47, 1, 'Boku no Hero Academia', '2019-11-07 07:12:43', '2019-11-07 07:12:43', 'b7c9b066-ad67-4688-86a3-3b2d3e1c88c6', 'lllllllllllllllllllllllllllllllllll<br>aaaaaaaaaaa', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(48, 48, 1, 'Boku no Hero Academia', '2019-11-07 07:19:24', '2019-11-07 07:19:24', '32afe95c-b127-4214-83ce-e221b8ff158a', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(49, 49, 1, 'homepage', '2019-11-08 01:07:33', '2019-11-08 01:09:35', '5f367428-a6b9-44ea-88f7-2502b2cd8ee5', NULL, NULL, NULL),
(50, 50, 1, 'homepage', '2019-11-08 01:07:33', '2019-11-08 01:07:33', 'e1b108d6-5cb5-4011-b97d-713f261f72be', NULL, NULL, NULL),
(51, 51, 1, 'homepage', '2019-11-08 01:07:34', '2019-11-08 01:07:34', '330e7806-f2c9-4143-9e62-2d321dc3d026', NULL, NULL, NULL),
(52, 52, 1, 'homepage', '2019-11-08 01:08:51', '2019-11-08 01:08:51', '4d7b6403-5d34-481e-a5aa-ac4d8c78eac2', NULL, NULL, NULL),
(53, 53, 1, 'homepage', '2019-11-08 01:09:35', '2019-11-08 01:09:35', '2ca0a229-1250-430e-bf35-75dca4fdd72a', NULL, NULL, NULL),
(54, 54, 1, 'homepage', '2019-11-08 01:29:42', '2019-11-08 02:25:29', 'b8ef2675-65e0-4c2f-9ec2-4a7daee12ed9', NULL, NULL, NULL),
(55, 55, 1, 'homepage', '2019-11-08 01:29:42', '2019-11-08 01:29:42', 'b336db6d-53d8-410f-848f-3edd17753d00', NULL, NULL, NULL),
(56, 56, 1, 'BNHA', '2019-11-08 02:03:21', '2019-11-08 02:03:21', 'b5de8573-9449-4a49-b12c-eb31e31e67a2', NULL, NULL, NULL),
(57, 57, 1, 'Jojo 3', '2019-11-08 02:03:22', '2019-11-08 02:03:22', 'd11ce25b-70ac-4b8d-8d6f-ec315ebd9d93', NULL, NULL, NULL),
(58, 58, 1, 'Boku no Hero Academia', '2019-11-08 02:03:44', '2019-11-08 02:03:44', '1b803264-52ec-4e5d-8f3c-352a6494fc57', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(59, 59, 1, 'homepage', '2019-11-08 02:23:09', '2019-11-08 02:23:17', '16cfceb8-d279-4878-920c-26f2e51b6615', NULL, '', NULL),
(60, 60, 1, 'homepage', '2019-11-08 02:23:57', '2019-11-08 02:23:57', '86480a0c-69a0-4fc3-8300-0b9b3c8dc475', NULL, NULL, NULL),
(61, 61, 1, NULL, '2019-11-08 02:24:04', '2019-11-08 02:24:04', '98bcb4a7-d3d2-44f1-98b1-192a75246b27', NULL, NULL, NULL),
(62, 62, 1, NULL, '2019-11-08 02:25:37', '2019-11-08 02:25:37', '5142d9e7-2e48-49aa-bc9e-89363097a7fa', NULL, NULL, NULL),
(63, 63, 1, 'homepage', '2019-11-08 02:25:46', '2019-11-08 02:25:46', '4742387f-ce03-4b29-ae4b-431034bef8ec', NULL, NULL, NULL),
(65, 85, 1, 'homepage', '2019-11-08 02:29:15', '2019-11-09 03:18:59', 'ac47b350-a074-43cc-b745-0ec4023a87b9', NULL, NULL, NULL),
(66, 88, 1, 'homepage', '2019-11-08 02:29:15', '2019-11-08 02:29:15', 'af5d4fb7-5720-42fa-a144-66b19df1a9c1', NULL, NULL, NULL),
(67, 91, 1, 'homepage', '2019-11-08 02:29:51', '2019-11-08 02:29:51', 'c46388a1-f7b3-433d-afa6-a1fd0bafea9a', NULL, NULL, NULL),
(68, 94, 1, 'homepage', '2019-11-08 02:30:12', '2019-11-08 02:30:12', '62297ec3-00c7-4579-9d28-e69335aa6134', NULL, NULL, NULL),
(69, 97, 1, 'homepage', '2019-11-08 02:33:08', '2019-11-08 02:33:08', 'aaa8402e-715a-4060-a239-7c23a568bf85', NULL, NULL, NULL),
(70, 100, 1, 'homepage', '2019-11-08 02:40:04', '2019-11-08 02:40:04', '1a374b41-0eba-4581-a7be-331d7d3b7509', NULL, NULL, NULL),
(71, 103, 1, 'My Hero Academia', '2019-11-08 02:49:39', '2019-11-08 02:49:39', 'ad5b93a6-ff22-494a-b717-cea37415cd01', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/watch?v=iEi5wGAsL-w', NULL),
(72, 104, 1, 'My Hero Academia', '2019-11-08 03:26:55', '2019-11-08 03:26:55', '7c4f45c1-0e1e-4bf6-b8b1-4aad9426a385', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(74, 106, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 07:53:40', '2019-11-09 03:47:31', '950db5c8-5e25-42ca-9b8b-3dd171b73893', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(75, 107, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 07:53:40', '2019-11-08 07:53:40', '6d4c40d5-4d4a-451c-9883-c29545bd441b', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', '', NULL),
(76, 115, 1, 'My Hero Academia', '2019-11-08 08:03:28', '2019-11-08 08:03:28', '22813c46-e965-41e8-95d5-468dea84b5aa', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(77, 123, 1, 'My Hero Academia', '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'f32c4c47-e2f2-40c3-bc5b-619d0a79cedf', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(78, 138, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 08:08:22', '2019-11-08 08:08:22', '0fd7c608-58e0-45ea-b052-c7c8e130675f', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', '', NULL),
(79, 146, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 08:09:55', '2019-11-08 08:09:55', '4add6687-9021-4f84-b507-baedae6a94e6', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', '', NULL),
(80, 154, 1, 'My Hero Academia', '2019-11-08 08:14:38', '2019-11-08 08:14:38', 'e9babc0c-cc9f-41cc-9748-c38693aa3a4c', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(81, 156, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 08:18:38', '2019-11-08 08:18:38', 'ee8e5260-1db5-48db-b099-3afd79c6fddf', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', '', NULL),
(82, 158, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 08:18:56', '2019-11-08 08:18:56', '2af09903-574c-4d2f-89e1-f7137a9e8f54', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', '', NULL),
(83, 160, 1, 'homepage', '2019-11-08 08:19:22', '2019-11-08 08:19:22', '1ecd6b82-d7d7-4300-b4f5-5960364d3c9d', NULL, NULL, NULL),
(84, 163, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-08 08:21:00', '2019-11-08 08:21:00', 'd932e187-8f54-4919-b20e-fa1e72f7ea8a', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(85, 165, 1, 'Anime', '2019-11-09 02:47:46', '2019-11-09 02:47:46', 'e5b2d0e5-e19f-4164-8d3a-64eafa992058', NULL, NULL, NULL),
(86, 166, 1, 'homepage', '2019-11-09 02:51:40', '2019-11-09 02:51:40', '2b397e98-54cb-4c76-a3b7-bc45625220fc', NULL, NULL, NULL),
(87, 169, 1, 'Anime', '2019-11-09 02:54:12', '2019-11-14 01:05:03', 'e6effc6b-56e4-41f4-98f6-dcd797d37fa1', NULL, NULL, NULL),
(88, 170, 1, 'Manga', '2019-11-09 02:54:26', '2019-11-14 01:05:17', 'af34d3b4-8ce4-4d8e-86d6-27582fea878a', NULL, NULL, NULL),
(89, 171, 1, 'homepage', '2019-11-09 02:54:56', '2019-11-09 02:54:56', '0e52db8d-b8ae-4181-bdad-5e2076d93c4f', NULL, NULL, NULL),
(90, 175, 1, 'homepage', '2019-11-09 03:02:24', '2019-11-09 03:02:24', '84b18f63-f1ff-483a-ac93-e41c6b7d36fb', NULL, NULL, NULL);
INSERT INTO `blog_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_article`, `field_videoTrailer`, `field_text`) VALUES
(91, 179, 1, 'My Hero Academia', '2019-11-09 03:12:18', '2019-11-09 03:12:18', 'a38407f1-5987-4af5-8344-42df8ff6766b', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(92, 181, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-09 03:12:49', '2019-11-09 03:12:49', '4dc62e9c-9093-4513-8f28-850d749dd31a', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(93, 183, 1, 'homepage', '2019-11-09 03:12:53', '2019-11-09 03:12:53', '44964f29-3b5a-4f69-bf7c-e3a04d37ded5', NULL, NULL, NULL),
(94, 186, 1, 'Jojo Fake Adventure', '2019-11-09 03:16:26', '2019-11-09 03:18:08', '176a137d-3650-430c-b985-b5b9d92698e9', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(95, 188, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-09 03:16:27', '2019-11-09 03:16:27', '428a3fe5-465c-4ea0-81ed-1e427f39fcb1', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(96, 190, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'b562d4d2-1250-4ed8-aa14-f0634aae8304', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(97, 192, 1, 'Jojo Fake Adventure', '2019-11-09 03:17:00', '2019-11-09 03:17:00', '641b574c-aba0-47ce-a727-dc49dd90750d', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(98, 194, 1, 'Jojo Fake Adventure', '2019-11-09 03:18:08', '2019-11-09 03:18:08', 'e7626fc2-9af9-4dbf-a5bf-4892ad94eef8', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 ini memiliki cerita yang sangat bagus karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(99, 196, 1, 'homepage', '2019-11-09 03:18:59', '2019-11-09 03:18:59', '0d311de9-10af-4bc3-942c-2957e7a46bfc', NULL, NULL, NULL),
(100, 197, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-09 03:46:33', '2019-11-09 03:46:33', '36c1f897-7fa4-4528-991c-1c2a5836eac3', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada karena dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(101, 199, 1, 'Jojo Bizzare Adventure: Stardust Crusader', '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'aef07909-44b7-4012-9e14-ae0e42813584', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(102, 201, 1, 'My Hero Academia', '2019-11-09 06:45:49', '2019-11-09 06:45:49', '71e0074f-45ad-4a49-b1fd-891f233ae93c', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(103, 203, 1, 'My Hero Academia', '2019-11-09 06:46:47', '2019-11-09 06:46:47', 'aed3a604-1450-4c52-98f1-edd436bf8077', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/iEi5wGAsL-w', NULL),
(104, 205, 1, 'homepage', '2019-11-09 07:40:05', '2019-11-09 07:40:15', 'ea8b57e6-4317-4899-9801-4b61940c2518', NULL, NULL, NULL),
(106, 207, 1, 'M. Rama Maulana', '2019-11-09 07:42:06', '2019-11-12 02:06:11', '1e0c3dc4-4937-4043-b73f-69e41bc239bb', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, NULL),
(107, 208, 1, 'About', '2019-11-09 07:42:06', '2019-11-09 07:42:06', '2bfe7965-58f5-4041-ae69-72c2c72b780b', '<h3>M. Rama Maulana</h3><p>Hello, my name is M. Rama Maulana, usually I called Rama. I was born in 09 Oktober 2002, Surabaya. I lived at Jl. Tanah Merah Sayur 4 no. 32 Surabaya, Indonesia. My hobby is play a game, coding, music.</p><p>At first, I hate coding because I\'m bad at memorizing something but as time goes by, I realize that coding is not that hard. Everyone can learn how to code.</p>', NULL, NULL),
(108, 209, 1, 'M. Rama Maulana', '2019-11-09 07:44:08', '2019-11-09 07:44:08', '184b3b81-d121-43b4-8214-30f83bfdc57f', '<p>Hello, my name is M. Rama Maulana, usually I called Rama. I was born in 09 Oktober 2002, Surabaya. I lived at Jl. Tanah Merah Sayur 4 no. 32 Surabaya, Indonesia. My hobby is play a game, coding, music.</p><p>At first, I hate coding because I\'m bad at memorizing something but as time goes by, I realize that coding is not that hard. Everyone can learn how to code.</p>', NULL, NULL),
(109, 210, 1, 'M. Rama Maulana', '2019-11-09 08:01:43', '2019-11-09 08:01:43', '9213c81e-0bc5-40bf-a82d-18fbe6939e92', '<p>Perkenalkan, namaku M. Rama Maulana, biasa dipanggil Rama. Aku adalah programmer web dan juga penulis blog. Alasanku membuat blog ini adalah untuk memberikan pendapatku mengenai sebuah <em>anime</em> dan <em>manga</em>.</p>', NULL, NULL),
(110, 211, 1, 'M. Rama Maulana', '2019-11-09 08:03:36', '2019-11-09 08:03:36', 'cd5af7cf-25ca-4475-93b3-21016de004e8', '<p>Perkenalkan, namaku M. Rama Maulana, biasa dipanggil Rama. Aku adalah programmer web dan juga penulis blog. Alasanku membuat blog ini adalah untuk memberikan pendapatku mengenai sebuah <em>anime</em> dan <em>manga</em>.</p><p><em>Anime</em> dan <em>manga</em></p>', NULL, NULL),
(111, 212, 1, 'M. Rama Maulana', '2019-11-09 08:03:44', '2019-11-09 08:03:44', 'b3928018-a53a-4e33-8c6f-a35048eb3890', '<p>Perkenalkan, namaku M. Rama Maulana, biasa dipanggil Rama. Aku adalah programmer web dan juga penulis blog. Alasanku membuat blog ini adalah untuk memberikan pendapatku mengenai sebuah <em>anime</em> dan <em>manga</em>.</p><p><em>Anime</em> dan <em>manga</em></p>', NULL, NULL),
(112, 213, 1, 'M. Rama Maulana', '2019-11-09 08:13:30', '2019-11-09 08:13:30', '40a9b5ee-9ed3-452a-bbb2-93ee792a4941', '<p>Perkenalkan, namaku M. Rama Maulana, biasa dipanggil Rama. Aku adalah programmer web dan juga penulis blog. Alasanku membuat blog ini adalah untuk memberikan pendapatku mengenai sebuah <em>anime</em> dan <em>manga</em>.<br /></p>', NULL, NULL),
(114, 215, 1, 'homepage', '2019-11-11 06:14:31', '2019-11-11 06:41:13', '15521f02-b56c-48db-a2c7-9e0d654b054d', NULL, NULL, NULL),
(115, 216, 1, 'homepage', '2019-11-11 06:14:31', '2019-11-11 06:14:31', 'ae4e279e-ddd1-41c3-b4f6-1627cd68864d', NULL, NULL, NULL),
(116, 217, 1, 'homepage', '2019-11-11 06:17:47', '2019-11-11 06:17:47', 'ebccb385-84f7-468b-8554-9d3bb6c1acce', NULL, NULL, NULL),
(117, 218, 1, 'homepage', '2019-11-11 06:24:58', '2019-11-11 06:24:58', '7bcdd9ee-6f13-4858-b8de-610c7bdb41b3', NULL, NULL, NULL),
(118, 219, 1, 'homepage', '2019-11-11 06:26:28', '2019-11-11 06:26:28', '26df8b59-9a61-4491-a357-8fe627cef89f', NULL, NULL, NULL),
(119, 220, 1, 'homepage', '2019-11-11 06:26:40', '2019-11-11 06:26:40', '8be52d3a-b06d-4afe-8dbe-b0b5fb5018f5', NULL, NULL, NULL),
(120, 221, 1, 'homepage', '2019-11-11 06:33:55', '2019-11-11 06:33:55', 'c3dc282e-54c1-4aea-897c-e07a7bcb1222', NULL, NULL, NULL),
(121, 222, 1, 'homepage', '2019-11-11 06:37:09', '2019-11-11 06:37:09', 'daa89da6-c4f8-4423-981f-d4c116837508', NULL, NULL, NULL),
(122, 223, 1, 'homepage', '2019-11-11 06:40:06', '2019-11-11 06:40:06', 'bcf32277-0831-48dc-995b-ce5f969d2057', NULL, NULL, NULL),
(123, 224, 1, 'homepage', '2019-11-11 06:41:13', '2019-11-11 06:41:13', 'fab26318-cd7e-4132-bf49-39f60bf5583a', NULL, NULL, NULL),
(124, 225, 1, 'M. Rama Maulana', '2019-11-12 02:06:11', '2019-11-12 02:06:11', '3a61f319-fced-405a-ad54-0041746a3ef1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, NULL),
(125, 226, 1, 'My Hero Academia', '2019-11-12 03:04:11', '2019-11-12 03:04:11', '20e712ac-4ce5-4f57-abba-a83573c37f21', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(127, 229, 1, 'Tentang', '2019-11-12 06:57:29', '2019-11-12 07:29:04', '371df921-7d20-4952-81b9-3cd840332ac9', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, 'M. Rama Maulana'),
(128, 230, 1, 'About', '2019-11-12 06:57:29', '2019-11-12 06:57:29', '4a5fdbfa-9959-4687-addd-6f5a0e79a71d', NULL, NULL, NULL),
(129, 231, 1, 'Tentang', '2019-11-12 06:57:46', '2019-11-12 06:57:46', 'c5746bb1-9b9a-4a86-9455-75dcbc0f78e0', NULL, NULL, NULL),
(130, 232, 1, 'Tentang', '2019-11-12 07:21:38', '2019-11-12 07:21:38', 'd4204d6a-2bb7-4079-9d3b-4f003796b371', NULL, NULL, NULL),
(131, 233, 1, 'Tentang', '2019-11-12 07:24:32', '2019-11-12 07:24:32', 'b8b67518-43f4-4edd-baaf-56418d1c24d8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, NULL),
(132, 234, 1, 'Tentang', '2019-11-12 07:25:41', '2019-11-12 07:25:41', '6bca39fb-fb5c-45b6-bde7-ed6bbf2ce251', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, 'M. Rama Maulana'),
(133, 235, 1, 'Tentang', '2019-11-12 07:27:01', '2019-11-12 07:27:01', '2d1569f2-6bc3-40e7-9fca-fa9724ad6980', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis bibendum ultrices. Duis venenatis lacinia libero, et tempus orci dictum sed. Ut tincidunt id arcu nec fringilla. Nam a ligula mattis, feugiat odio ac, blandit justo. Ut lobortis viverra pretium. Phasellus vel auctor neque, eget pulvinar neque. Phasellus eu dolor eget urna accumsan hendrerit sit amet non justo. Maecenas tempus enim eget nulla suscipit, vitae euismod lectus iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce in mi ac nunc volutpat viverra non nec risus. Donec feugiat augue non libero mattis, eu luctus arcu aliquam. Curabitur aliquam enim est, ut aliquet massa suscipit at.</p><p>Pellentesque ultricies tincidunt hendrerit. Vivamus vel interdum mi. Morbi dictum dui quis ligula pretium, in varius diam egestas. Curabitur at ligula a elit pretium rutrum. Nam consectetur magna ac tellus pretium consectetur. Nam elit sem, semper sit amet nisl eget, dapibus auctor ex. Duis id condimentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mollis nibh libero, sit amet interdum massa fringilla quis.</p>', NULL, 'M. Rama Maulana'),
(135, 237, 1, 'Kategori', '2019-11-12 07:30:29', '2019-11-12 07:55:20', 'e50aadff-199d-4e2c-8b22-a0ca723bbd65', NULL, NULL, NULL),
(136, 238, 1, 'Kategori', '2019-11-12 07:30:29', '2019-11-12 07:30:29', 'ee45b98a-225b-4445-a789-8e9f33266c74', NULL, NULL, NULL),
(138, 240, 1, 'Anime', '2019-11-12 07:30:53', '2019-11-13 03:46:34', '9306acee-c9a7-4fe6-9967-c0f361248382', NULL, NULL, NULL),
(139, 241, 1, 'Anime', '2019-11-12 07:30:53', '2019-11-12 07:30:53', 'fb55d1c6-8960-49bc-8ac1-6d3f87f6c0fb', NULL, NULL, NULL),
(140, 242, 1, 'Anime', '2019-11-12 07:31:08', '2019-11-12 07:31:08', 'a9507062-691b-4c78-b90b-fc8637a908e7', NULL, NULL, NULL),
(142, 244, 1, 'Manga', '2019-11-12 07:31:26', '2019-11-13 03:46:44', 'b56fac80-9d96-4956-83bf-c21603605ee5', NULL, NULL, NULL),
(143, 245, 1, 'Manga', '2019-11-12 07:31:26', '2019-11-12 07:31:26', '390ed82b-c4bb-41e2-98c4-902235f9179c', NULL, NULL, NULL),
(144, 246, 1, 'Kategori', '2019-11-12 07:55:20', '2019-11-12 07:55:20', '22fe3673-4fa9-46bc-9f31-7a89d7252054', NULL, NULL, NULL),
(145, 247, 1, 'zzzzcopy', '2019-11-13 01:34:14', '2019-11-14 00:42:01', 'a495c477-bdf9-4651-bbc9-c82d8e2cb943', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(146, 249, 1, 'My Hero Academia copy', '2019-11-13 01:34:15', '2019-11-13 01:34:15', 'c1ec0278-2372-4b08-9070-a659a616d505', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(147, 251, 1, 'zzzzcopy', '2019-11-13 01:34:42', '2019-11-13 01:34:42', 'be52b5d7-8e06-48f8-a305-9fff37275f0a', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(148, 253, 1, 'Anime', '2019-11-13 03:46:34', '2019-11-13 03:46:34', 'a125bdcb-90eb-4405-8884-7a4f284a731d', NULL, NULL, NULL),
(149, 254, 1, 'Manga', '2019-11-13 03:46:44', '2019-11-13 03:46:44', '902ec066-82b8-46fd-9f3e-034754016ee5', NULL, NULL, NULL),
(151, 256, 1, 'M. Rama Maulana', '2019-11-13 03:58:26', '2019-11-13 04:00:25', '1fc6ce7c-3c3c-4c66-bd6b-37795c282893', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate suscipit dui, vitae scelerisque quam feugiat nec. Nam a tellus lectus. Cras commodo libero at fermentum auctor. Cras at tortor a nisl semper laoreet. Ut et massa nec odio porttitor commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc commodo euismod augue id consectetur.</p><p>Phasellus tristique, massa non ullamcorper hendrerit, erat ipsum lacinia sapien, id fermentum libero dui in sem. Suspendisse vitae quam ut ex dignissim viverra at sed orci. Mauris laoreet odio quis ex semper semper. Sed elementum tincidunt tempus. Nullam fringilla quam in lobortis bibendum. Ut sit amet nulla iaculis, aliquet dui id, consequat justo. Suspendisse nec arcu ipsum. Ut bibendum, turpis non suscipit ultrices, diam arcu ultrices elit, sit amet facilisis risus mi sed orci. Etiam semper magna orci, at faucibus augue venenatis in. Duis finibus euismod egestas. Aliquam erat volutpat. Donec vitae augue lobortis, auctor lectus eget, feugiat lacus. Ut ac libero et erat faucibus mattis sit amet eget nisi. Phasellus tempus iaculis molestie.</p>', NULL, NULL),
(152, 257, 1, 'about', '2019-11-13 03:58:26', '2019-11-13 03:58:26', '093f812f-1836-4149-8330-ab02118b0b8d', NULL, NULL, NULL),
(153, 258, 1, 'M. Rama Maulana', '2019-11-13 03:59:53', '2019-11-13 03:59:53', '90a4a70f-e86f-4962-8891-b780249987b0', NULL, NULL, NULL),
(154, 259, 1, 'M. Rama Maulana', '2019-11-13 04:00:25', '2019-11-13 04:00:25', '1a177d32-e98f-4ac2-be28-f4f73cdca5c3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate suscipit dui, vitae scelerisque quam feugiat nec. Nam a tellus lectus. Cras commodo libero at fermentum auctor. Cras at tortor a nisl semper laoreet. Ut et massa nec odio porttitor commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc commodo euismod augue id consectetur.</p><p>Phasellus tristique, massa non ullamcorper hendrerit, erat ipsum lacinia sapien, id fermentum libero dui in sem. Suspendisse vitae quam ut ex dignissim viverra at sed orci. Mauris laoreet odio quis ex semper semper. Sed elementum tincidunt tempus. Nullam fringilla quam in lobortis bibendum. Ut sit amet nulla iaculis, aliquet dui id, consequat justo. Suspendisse nec arcu ipsum. Ut bibendum, turpis non suscipit ultrices, diam arcu ultrices elit, sit amet facilisis risus mi sed orci. Etiam semper magna orci, at faucibus augue venenatis in. Duis finibus euismod egestas. Aliquam erat volutpat. Donec vitae augue lobortis, auctor lectus eget, feugiat lacus. Ut ac libero et erat faucibus mattis sit amet eget nisi. Phasellus tempus iaculis molestie.</p>', NULL, NULL),
(156, 261, 1, 'Kategori', '2019-11-13 04:09:47', '2019-11-13 04:09:47', 'a124f5af-64c7-4415-8395-a5241aeffa02', NULL, NULL, NULL),
(157, 262, 1, 'Kategori', '2019-11-13 04:09:47', '2019-11-13 04:09:47', '7287f78e-49f3-4ff9-be8b-27df1408298a', NULL, NULL, NULL),
(158, 263, 1, 'zzzzcopy', '2019-11-14 00:40:30', '2019-11-14 00:40:30', 'fa7cabcc-160a-4984-b91a-401a120bf7bd', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(159, 265, 1, 'zzzzcopy', '2019-11-14 00:41:30', '2019-11-14 00:41:30', '1dbbb7e7-5078-465a-b37d-40db531ed4ff', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(160, 267, 1, 'zzzzcopy', '2019-11-14 00:42:01', '2019-11-14 00:42:01', '50519501-531b-448a-81d8-3c7942c2772d', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(161, 269, 1, 'zzzzcopy copy', '2019-11-14 01:18:58', '2019-11-14 01:18:58', '63491f51-ce9b-4deb-95a3-9e76840b70ce', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(162, 271, 1, 'zzzzcopy copy', '2019-11-14 01:18:58', '2019-11-14 01:18:58', '632dbcc5-9e10-4377-a8b9-6a5504211f06', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL);
INSERT INTO `blog_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_article`, `field_videoTrailer`, `field_text`) VALUES
(163, 273, 1, 'Jojo Bizzare Adventure: Stardust Crusader copy', '2019-11-14 01:19:05', '2019-11-14 01:19:05', '1acc4df1-d425-4e25-9b7f-43d397befefe', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(164, 275, 1, 'Jojo Bizzare Adventure: Stardust Crusader copy', '2019-11-14 01:19:06', '2019-11-14 01:19:06', '497bb8d6-0244-4e64-8f2e-275bb27f6725', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(165, 277, 1, 'zzzzcopy copy', '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'a7f5d532-c514-4c93-8832-3b78ad36101c', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(166, 279, 1, 'zzzzcopy copy', '2019-11-14 01:19:06', '2019-11-14 01:19:06', '3d5302cc-3106-4a99-b310-274e62d77f4b', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(167, 281, 1, 'My Hero Academia', '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'c2d96ac4-e768-48cb-bde9-7df14331fd31', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(168, 283, 1, NULL, '2019-11-14 07:23:16', '2019-11-14 07:23:26', '4c58a959-c008-47f9-8019-15b20912ac7d', NULL, '', NULL),
(170, 301, 1, 'Darwin\'s Game', '2019-11-14 07:32:50', '2019-11-14 07:43:40', '5a3496f0-6e10-4c37-873c-3fa7306bfd49', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus fermentum nulla, id dapibus diam euismod at. Mauris sapien mauris, vestibulum a ullamcorper nec, accumsan nec sem. Proin vitae felis ac metus sodales tristique. Donec a molestie lacus, sed dictum justo. Praesent auctor malesuada mauris, id dictum lectus pulvinar ut. Sed urna tellus, vulputate at luctus eget, semper vitae nulla. Mauris eu ex quam. Etiam semper volutpat sapien, vestibulum egestas nisi molestie vitae. Donec gravida ac metus vel faucibus. Curabitur at tellus mattis, ultrices leo eget, commodo ante.</p><p>Nullam cursus, arcu sit amet aliquet gravida, nibh orci convallis eros, id maximus leo libero at ipsum. Suspendisse pretium, velit et pulvinar venenatis, est nisl ultricies metus, sed scelerisque tellus enim ac diam. Praesent at risus nec orci pretium scelerisque ut sed neque. Vestibulum vel magna est. In mollis et dui eu maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac massa ut urna tempor tincidunt. Praesent malesuada suscipit lacus, eu molestie tortor. In scelerisque, risus sit amet malesuada consequat, odio enim pharetra urna, eget suscipit urna tellus at mauris.</p><p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis pharetra convallis dapibus. Maecenas efficitur nec nibh eu dictum. Pellentesque efficitur metus ut iaculis eleifend. Morbi non purus vel quam porta malesuada. Maecenas non neque vitae nunc mattis molestie ut et elit. Etiam sit amet semper mi.</p>', 'https://www.youtube.com/embed/4nXTv2feM4w', NULL),
(171, 303, 1, 'Darwin\'s Game', '2019-11-14 07:32:50', '2019-11-14 07:32:50', 'e9a55a88-d018-4086-b41f-4c2b35e1892f', NULL, '', NULL),
(172, 305, 1, 'Darwin Game', '2019-11-14 07:36:02', '2019-11-14 07:36:02', '2be9f623-7976-4eae-ad46-086ab035bf1a', NULL, NULL, NULL),
(173, 306, 1, 'Darwin\'s Game', '2019-11-14 07:38:59', '2019-11-14 07:38:59', 'f7d1b80d-16a6-4d1a-afb0-c08a912f1721', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus fermentum nulla, id dapibus diam euismod at. Mauris sapien mauris, vestibulum a ullamcorper nec, accumsan nec sem. Proin vitae felis ac metus sodales tristique. Donec a molestie lacus, sed dictum justo. Praesent auctor malesuada mauris, id dictum lectus pulvinar ut. Sed urna tellus, vulputate at luctus eget, semper vitae nulla. Mauris eu ex quam. Etiam semper volutpat sapien, vestibulum egestas nisi molestie vitae. Donec gravida ac metus vel faucibus. Curabitur at tellus mattis, ultrices leo eget, commodo ante.</p><p>Nullam cursus, arcu sit amet aliquet gravida, nibh orci convallis eros, id maximus leo libero at ipsum. Suspendisse pretium, velit et pulvinar venenatis, est nisl ultricies metus, sed scelerisque tellus enim ac diam. Praesent at risus nec orci pretium scelerisque ut sed neque. Vestibulum vel magna est. In mollis et dui eu maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac massa ut urna tempor tincidunt. Praesent malesuada suscipit lacus, eu molestie tortor. In scelerisque, risus sit amet malesuada consequat, odio enim pharetra urna, eget suscipit urna tellus at mauris.</p><p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis pharetra convallis dapibus. Maecenas efficitur nec nibh eu dictum. Pellentesque efficitur metus ut iaculis eleifend. Morbi non purus vel quam porta malesuada. Maecenas non neque vitae nunc mattis molestie ut et elit. Etiam sit amet semper mi.</p>', 'https://www.youtube.com/embed/4nXTv2feM4w', NULL),
(174, 308, 1, 'Darwin\'s Game', '2019-11-14 07:43:40', '2019-11-14 07:43:40', '82e0bf70-ff8b-4b7e-a937-251461b6cb76', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus fermentum nulla, id dapibus diam euismod at. Mauris sapien mauris, vestibulum a ullamcorper nec, accumsan nec sem. Proin vitae felis ac metus sodales tristique. Donec a molestie lacus, sed dictum justo. Praesent auctor malesuada mauris, id dictum lectus pulvinar ut. Sed urna tellus, vulputate at luctus eget, semper vitae nulla. Mauris eu ex quam. Etiam semper volutpat sapien, vestibulum egestas nisi molestie vitae. Donec gravida ac metus vel faucibus. Curabitur at tellus mattis, ultrices leo eget, commodo ante.</p><p>Nullam cursus, arcu sit amet aliquet gravida, nibh orci convallis eros, id maximus leo libero at ipsum. Suspendisse pretium, velit et pulvinar venenatis, est nisl ultricies metus, sed scelerisque tellus enim ac diam. Praesent at risus nec orci pretium scelerisque ut sed neque. Vestibulum vel magna est. In mollis et dui eu maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac massa ut urna tempor tincidunt. Praesent malesuada suscipit lacus, eu molestie tortor. In scelerisque, risus sit amet malesuada consequat, odio enim pharetra urna, eget suscipit urna tellus at mauris.</p><p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis pharetra convallis dapibus. Maecenas efficitur nec nibh eu dictum. Pellentesque efficitur metus ut iaculis eleifend. Morbi non purus vel quam porta malesuada. Maecenas non neque vitae nunc mattis molestie ut et elit. Etiam sit amet semper mi.</p>', 'https://www.youtube.com/embed/4nXTv2feM4w', NULL),
(175, 310, 1, 'My Hero Academia copy', '2019-11-14 07:43:48', '2019-11-14 07:43:48', '4ba29a32-bf7c-4418-951d-7483c4596095', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(176, 312, 1, 'My Hero Academia copy', '2019-11-14 07:43:49', '2019-11-14 07:43:49', '7b201759-f143-4054-a59d-830a434638f4', '<p>Jujur saja, kalau disuruh memilih anime <em>shounen</em> terbaik, maka My Hero Academia adalah pilihan pertamaku. Karena anime ini memiliki cerita yang sangat emosional, bahkan pada episode ke satunya.</p><p>Singkat cerita, anime ini menceritakan tentang perkembangan Midoriya Izuku dan teman-temannya untuk menjadi pahlawan. Walau terdengar sederhana, setiap karakter memiliki pemikirannya masing-masing tidak seperti anime <em>shounen</em> yang lain.</p><p>Karakter dalam anime ini dikembangkan dengan sangat baik, terutama karakter dari Izuku, Izuku merupakan karakter terlemah yang memiliki impian untuk menjadi seperti pahlawan nomer 1 dengan caranya sendiri.</p><p>Pertarungan dalam anime juga tidak monoton yang penuh dengan pukulan, karena setiap karakter, baik pahlawan maupun penjahat memiliki kekuatannya masing-masing yang memiliki kemampuan yang berbeda-beda.</p><p>Musik yang ada didalam anime juga ditempatkan pada waktu yang tepat. Yang mana hal tersebut membuat cerita dari anime lebih emosional, terutama lagu You Say Run yang muncul saat bangkitnya suatu karakter saat berhasil menghadapi sebuah rintangan.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://youtube.com/embed/iEi5wGAsL-w', NULL),
(177, 314, 1, 'Jojo Bizzare Adventure: Stardust Crusader copy', '2019-11-14 07:43:49', '2019-11-14 07:43:49', '361c406a-afd7-4bd2-aed9-93bfbe02406a', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(178, 316, 1, 'Jojo Bizzare Adventure: Stardust Crusader copy', '2019-11-14 07:43:49', '2019-11-14 07:43:49', '9717b67b-231a-4eba-84ec-485b8aee5eba', '<p>Pernakah kalian waktu masih kecil memimpikan sebuah petualangan mengelilingi dunia? jika iya, maka Jojo Bizzare Adventure: Stardust Crusader adalah anime yang sangat cocok dengan kalian.</p><p>Jojo Bizzare Adventure: Stardust Crusader adalah seri ketiga dari Jojo Bizzare Adventure. Pada seri ketiga ini, Hirohiko Araki, Mangaka dari Jojo Bizzare adventure memberikan petualangan dan pertarungan yang lebih seru dengan menggunakan Stand.</p><p>Menceritakan petualangan dari Jotaro Kujo dan rekan-rekannya berpetualang mengelilingi dunia untuk menyelamatkan Ibunya dari stand agresif. Petualangan mereka tidak berjalan mulus karena Dio mengirim pengguna Stand lain untuk membunuh Jotaro dan rekannya.</p><p>Menurutku, Jojo part 3 adalah anime <em>Adventure</em> terbaik yang pernah ada. Karena, dimana lagi kalian mendapatkan anime yang berkelana mengelilingi dunia?</p><p>Karakter dalam anime ini menurutku sangat berkesan karena pengembangan karakter dalam anime ini cukup baik, terutama untuk Polnareff. Walau anime ini adalah anime action, komedi dalam anime ini sangat bagus, bahkan kebanyakan komedi dari anime ini berujung menjadi <em>Meme</em> yang terkenal.</p><p>Keseluruhan dari anime ini cukup bagus, hanya saja gaya seni dari anime ini sering kali diejek karena desain karakternya yang terlalu <em>Manly</em>. Tapi menurutku cerita dari anime cukup untuk menutupi kekurangan dari anime ini.</p><p>Sekian review yang tidak terlalu singkat dariku. Kalau kalian memiliki pendapat tentang anime ini, silahkan memberikan pendapat kalian di kolom komentar dibawah.</p>', 'https://www.youtube.com/embed/XKpD3WtFRCs', NULL),
(179, 318, 1, 'Darwin\'s Game copy', '2019-11-14 07:43:49', '2019-11-14 07:43:49', '07938155-cf59-42c0-8bb6-3d281b4faf8e', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus fermentum nulla, id dapibus diam euismod at. Mauris sapien mauris, vestibulum a ullamcorper nec, accumsan nec sem. Proin vitae felis ac metus sodales tristique. Donec a molestie lacus, sed dictum justo. Praesent auctor malesuada mauris, id dictum lectus pulvinar ut. Sed urna tellus, vulputate at luctus eget, semper vitae nulla. Mauris eu ex quam. Etiam semper volutpat sapien, vestibulum egestas nisi molestie vitae. Donec gravida ac metus vel faucibus. Curabitur at tellus mattis, ultrices leo eget, commodo ante.</p><p>Nullam cursus, arcu sit amet aliquet gravida, nibh orci convallis eros, id maximus leo libero at ipsum. Suspendisse pretium, velit et pulvinar venenatis, est nisl ultricies metus, sed scelerisque tellus enim ac diam. Praesent at risus nec orci pretium scelerisque ut sed neque. Vestibulum vel magna est. In mollis et dui eu maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac massa ut urna tempor tincidunt. Praesent malesuada suscipit lacus, eu molestie tortor. In scelerisque, risus sit amet malesuada consequat, odio enim pharetra urna, eget suscipit urna tellus at mauris.</p><p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis pharetra convallis dapibus. Maecenas efficitur nec nibh eu dictum. Pellentesque efficitur metus ut iaculis eleifend. Morbi non purus vel quam porta malesuada. Maecenas non neque vitae nunc mattis molestie ut et elit. Etiam sit amet semper mi.</p>', 'https://www.youtube.com/embed/4nXTv2feM4w', NULL),
(180, 320, 1, 'Darwin\'s Game copy', '2019-11-14 07:43:49', '2019-11-14 07:43:49', '26326721-29d2-401e-bc29-e8b1bb3a8109', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus fermentum nulla, id dapibus diam euismod at. Mauris sapien mauris, vestibulum a ullamcorper nec, accumsan nec sem. Proin vitae felis ac metus sodales tristique. Donec a molestie lacus, sed dictum justo. Praesent auctor malesuada mauris, id dictum lectus pulvinar ut. Sed urna tellus, vulputate at luctus eget, semper vitae nulla. Mauris eu ex quam. Etiam semper volutpat sapien, vestibulum egestas nisi molestie vitae. Donec gravida ac metus vel faucibus. Curabitur at tellus mattis, ultrices leo eget, commodo ante.</p><p>Nullam cursus, arcu sit amet aliquet gravida, nibh orci convallis eros, id maximus leo libero at ipsum. Suspendisse pretium, velit et pulvinar venenatis, est nisl ultricies metus, sed scelerisque tellus enim ac diam. Praesent at risus nec orci pretium scelerisque ut sed neque. Vestibulum vel magna est. In mollis et dui eu maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac massa ut urna tempor tincidunt. Praesent malesuada suscipit lacus, eu molestie tortor. In scelerisque, risus sit amet malesuada consequat, odio enim pharetra urna, eget suscipit urna tellus at mauris.</p><p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis pharetra convallis dapibus. Maecenas efficitur nec nibh eu dictum. Pellentesque efficitur metus ut iaculis eleifend. Morbi non purus vel quam porta malesuada. Maecenas non neque vitae nunc mattis molestie ut et elit. Etiam sit amet semper mi.</p>', 'https://www.youtube.com/embed/4nXTv2feM4w', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_craftidtokens`
--

CREATE TABLE `blog_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_deprecationerrors`
--

CREATE TABLE `blog_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_drafts`
--

CREATE TABLE `blog_drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_drafts`
--

INSERT INTO `blog_drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`) VALUES
(3, NULL, 1, 'First draft', NULL),
(6, 13, 1, 'Draft 1', ''),
(7, NULL, 1, 'First draft', ''),
(8, NULL, 1, 'First draft', NULL),
(9, NULL, 1, 'First draft', NULL),
(10, NULL, 1, 'First draft', NULL),
(11, NULL, 1, 'First draft', ''),
(12, NULL, 1, 'First draft', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_elementindexsettings`
--

CREATE TABLE `blog_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_elementindexsettings`
--

INSERT INTO `blog_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"sources\":{\"section:e1fd3291-10bf-4038-a10a-ed1a7ee79f46\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"type\",\"3\":\"slug\",\"4\":\"field:3\",\"5\":\"link\"}},\"section:e4606df0-101f-4eb0-829c-22238ad390fa\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"type\",\"3\":\"link\"}}}}', '2019-11-13 03:59:37', '2019-11-13 03:59:37', '345efc8b-18a2-4614-aebb-c2e7e9af059a'),
(2, 'craft\\elements\\Category', '{\"sources\":{\"group:ca6d9283-71d7-4d3f-bc11-a9396b2f0026\":{\"tableAttributes\":{\"1\":\"link\"}}}}', '2019-11-14 07:23:35', '2019-11-14 07:23:35', '97696339-140d-470a-a264-6b8ced9bec6a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_elements`
--

CREATE TABLE `blog_elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_elements`
--

INSERT INTO `blog_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2019-11-06 02:26:42', '2019-11-06 02:26:42', NULL, 'f44f6654-9af7-4b3d-9776-e517d39e6c9e'),
(3, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 04:53:24', '2019-11-06 06:54:11', '2019-11-07 00:07:10', '786d59bd-5b83-48a0-94fb-e2f8d3e3bd11'),
(4, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 04:53:24', '2019-11-06 04:53:24', '2019-11-07 00:07:10', 'd7a62faf-7e2c-42a1-b2e8-739db06a6432'),
(6, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 04:54:04', '2019-11-06 04:54:04', '2019-11-07 00:07:10', '463a5163-2782-46da-a1a8-3b51046e73b3'),
(7, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 06:10:21', '2019-11-06 06:10:21', '2019-11-07 00:07:10', 'c6fddb5c-4ad7-449d-91e1-5e5997b32651'),
(8, NULL, 4, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 06:12:12', '2019-11-06 06:12:12', '2019-11-07 00:07:10', '70ea8539-bd6d-4165-a548-e92a18976d9d'),
(9, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-06 06:51:16', '2019-11-06 06:51:24', '2019-11-07 01:39:09', 'b015ea90-dbb2-4375-91b6-da606ea18dc0'),
(10, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 06:54:11', '2019-11-06 06:54:11', '2019-11-07 00:07:10', '41bec228-2498-43ae-b91b-8984ff6860aa'),
(11, 3, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2019-11-06 06:54:49', '2019-11-06 06:54:49', NULL, 'ddcd709c-cd4c-4ca7-a36b-88cfe641a452'),
(13, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 02:32:22', '2019-11-14 02:14:28', NULL, 'b63e5a28-290c-48d8-b4cf-105a55102434'),
(14, NULL, 6, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 02:32:22', '2019-11-07 02:32:22', NULL, '5e6e6f96-835e-401c-8bfc-ed1d64db9b10'),
(15, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-07 02:33:37', '2019-11-07 02:33:37', '2019-11-07 03:06:34', '2a93bac3-2eea-4619-9ed7-9e177188acd4'),
(16, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-07 02:33:38', '2019-11-07 02:33:38', '2019-11-07 03:06:34', '55e91811-6c9e-4726-a8b6-357f8a07f510'),
(17, NULL, 7, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 02:34:02', '2019-11-07 02:34:02', NULL, '3b2d1064-f335-465e-9143-4b716e62616f'),
(18, NULL, 8, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 02:35:26', '2019-11-07 02:35:26', NULL, '4dc75612-18c1-4110-88b6-3086cc59ed25'),
(19, NULL, 9, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 02:41:47', '2019-11-07 02:41:47', NULL, '3d0f1452-22af-4e49-829e-df2bf04f6ca1'),
(20, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-07 03:06:41', '2019-11-07 03:06:41', '2019-11-08 02:03:14', 'da0fbc06-3bc0-4083-ab36-e6b84d512e3d'),
(21, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-07 03:06:42', '2019-11-07 03:06:42', '2019-11-08 02:03:14', 'fc17f2fc-4c7e-49a6-83e6-c316523add2c'),
(22, NULL, 10, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:02:48', '2019-11-07 06:02:48', NULL, 'a0045773-8205-4c3e-889b-56024bcae7db'),
(23, NULL, 11, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:18:03', '2019-11-07 06:18:03', NULL, 'cf3a1805-8b43-4ef5-8b77-c3a4b7f617cb'),
(24, NULL, 12, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:18:24', '2019-11-07 06:18:24', NULL, '0cf298a0-f2de-47e6-a9d4-784dac785237'),
(26, NULL, 13, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:18:50', '2019-11-07 06:18:50', NULL, '4d46c380-26e5-495f-b92c-fe7e6fecf7e0'),
(27, NULL, 14, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:19:28', '2019-11-07 06:19:28', NULL, '880edcc1-7ce3-4c6b-9c88-ad5d90693fb1'),
(28, NULL, 15, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:26:04', '2019-11-07 06:26:04', NULL, '9a058973-2fdb-4c4f-8ba1-57b254fb43fc'),
(29, NULL, 16, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:34:30', '2019-11-07 06:34:30', NULL, '20f50850-2607-40b7-a92a-cbb135bfabc9'),
(30, NULL, 17, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:34:54', '2019-11-07 06:34:54', NULL, 'ec4d383b-53e9-433f-9cfa-2d3477df42a1'),
(31, NULL, 18, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:35:15', '2019-11-07 06:35:15', NULL, '8bf4bf63-c855-40fc-a260-473bd308c646'),
(32, NULL, 19, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:36:04', '2019-11-07 06:36:04', NULL, 'ebe092a5-f19e-4abe-bfd0-83a37d0558ac'),
(33, NULL, 20, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:37:21', '2019-11-07 06:37:21', NULL, 'a978c152-c1fa-435e-92e9-4e96a955c3fd'),
(34, NULL, 21, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:37:44', '2019-11-07 06:37:44', NULL, 'c9d37bc3-f224-43f6-8908-3d695237cf9f'),
(35, NULL, 22, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:38:13', '2019-11-07 06:38:13', NULL, '78364d82-2796-4799-ad56-03816df8b9cc'),
(36, NULL, 23, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:38:17', '2019-11-07 06:38:17', NULL, '3acbcfdb-96a2-47e3-8375-f9bf2c5b8d2e'),
(37, NULL, 24, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:38:44', '2019-11-07 06:38:44', NULL, 'da3e2c4d-cdb4-49c1-b22c-130cfadf7d89'),
(38, NULL, 25, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:39:39', '2019-11-07 06:39:39', NULL, '9550fc74-1fed-4b7b-a01a-6cb588f0ebdf'),
(39, NULL, 26, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:46:30', '2019-11-07 06:46:30', NULL, '8348b6ad-59b5-4f24-879f-25a3d20f7932'),
(40, NULL, 27, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:46:49', '2019-11-07 06:46:49', NULL, 'a84de0e5-078b-4809-9cc9-0d5f47bf1024'),
(41, NULL, 28, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 06:47:14', '2019-11-07 06:47:14', NULL, 'bb89e478-4d60-4265-b9c7-707f45c6b397'),
(42, NULL, 29, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:02:55', '2019-11-07 07:02:55', NULL, '96aaa973-19c1-480c-9fc1-f1536ef4d522'),
(43, NULL, 30, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:02:56', '2019-11-07 07:02:56', NULL, '2fe36abc-3ac9-467f-ac7c-a4804af7f85d'),
(44, NULL, 31, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:02:57', '2019-11-07 07:02:57', NULL, '04eea364-4fda-4f84-8c04-aaa1c075d86a'),
(45, NULL, 32, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:03:15', '2019-11-07 07:03:15', NULL, 'e31fb0a5-569a-40e5-b0e1-4f2c7fc2edc6'),
(46, 6, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:03:23', '2019-11-07 07:03:39', NULL, '2c3231bf-be3e-4280-81bc-96ef8d5e7098'),
(47, NULL, 33, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:12:43', '2019-11-07 07:12:43', NULL, '5239ba4b-3cff-4ba0-974e-8049b64e68b0'),
(48, NULL, 34, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-07 07:19:24', '2019-11-07 07:19:24', NULL, '995083ca-ea23-4872-931d-1291d25d2d5d'),
(49, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:07:33', '2019-11-08 01:09:35', '2019-11-08 01:09:35', 'c4855d88-042a-4fdd-b90f-51b46f6d8da4'),
(50, NULL, 35, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:07:33', '2019-11-08 01:07:33', '2019-11-08 01:09:35', '650885ca-72b9-4c91-86e5-b35ac6e227ef'),
(51, NULL, 36, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:07:34', '2019-11-08 01:07:34', '2019-11-08 01:09:35', '956c4d40-73b6-4ad5-8916-67f533c4c977'),
(52, NULL, 37, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:08:51', '2019-11-08 01:08:51', '2019-11-08 01:09:35', '41d32b19-aa39-429b-b147-94c47c20e124'),
(53, NULL, 38, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:09:35', '2019-11-08 01:09:35', '2019-11-08 01:09:35', '0746eb03-4515-4d89-92b9-cb63343f3378'),
(54, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:29:42', '2019-11-08 02:23:57', '2019-11-08 02:29:45', 'c3c73526-38dc-441a-81be-f2dd07d77759'),
(55, NULL, 39, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 01:29:42', '2019-11-08 01:29:42', '2019-11-08 02:29:45', '454589e9-786d-4691-8362-2695a5f10a2c'),
(56, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-08 02:03:21', '2019-11-08 02:03:21', NULL, '4c823ea7-c57c-47a8-98e0-dea65d0e7e2b'),
(57, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-08 02:03:22', '2019-11-08 02:03:22', NULL, 'faf1a7ad-525c-4638-9fe0-1b097ca39aac'),
(58, NULL, 40, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:03:44', '2019-11-08 02:03:44', NULL, '30a896b3-09d4-45ee-bb29-a63a44121a83'),
(59, 7, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:23:09', '2019-11-08 02:23:17', NULL, '392085a8-c05a-4496-ae16-5457857273a2'),
(60, NULL, 41, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:23:57', '2019-11-08 02:23:57', '2019-11-08 02:29:45', '0b7fd589-c14c-4bab-996d-8e999d9dcede'),
(61, 8, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:24:04', '2019-11-08 02:24:04', NULL, '5c7725d2-3eef-4834-989b-0e18c9c7bcbd'),
(62, 9, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:25:37', '2019-11-08 02:25:37', NULL, '58486ca2-1718-4ba0-a880-65ed27c832c3'),
(63, 10, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:25:46', '2019-11-08 02:25:46', NULL, '2e4042db-0bb6-4952-b43f-533b00d8ca80'),
(65, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:27', '2019-11-08 02:28:27', '2019-11-08 02:28:37', '38412cb7-a63e-4de8-85ed-7aa6e7a13eda'),
(66, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:37', '2019-11-08 02:28:37', '2019-11-08 02:28:38', '82c4e309-f89c-4758-9936-eabdf08d64ef'),
(67, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:38', '2019-11-08 02:28:38', '2019-11-08 02:28:43', 'f4bcc791-90d0-4f08-80ee-47da4987b482'),
(68, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:43', '2019-11-08 02:28:43', '2019-11-08 02:28:46', '348a6951-eb0e-4b99-a8d2-b2d08b8aa948'),
(69, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:46', '2019-11-08 02:28:46', '2019-11-08 02:28:49', 'd14b1440-748e-445c-9158-7a71aac083f6'),
(70, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:46', '2019-11-08 02:28:46', '2019-11-08 02:28:49', '241df4b8-2f36-4587-93b2-b0a6e1a6cf8b'),
(71, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:49', '2019-11-08 02:28:49', '2019-11-08 02:28:54', '03f96836-6f99-48c7-99ab-ab9f8a6fdec9'),
(72, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:49', '2019-11-08 02:28:49', '2019-11-08 02:28:54', '78e7d5f5-92ae-4389-b486-f3dad728267e'),
(73, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:54', '2019-11-08 02:28:54', '2019-11-08 02:28:55', '3b85a3dc-fb73-4abf-820b-3e516475e550'),
(74, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:54', '2019-11-08 02:28:54', '2019-11-08 02:28:55', 'd068a83e-b9e6-46d4-ac3f-4f77ab71561a'),
(75, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:55', '2019-11-08 02:28:55', '2019-11-08 02:29:00', '9b104201-f3e1-45d8-8e60-152d73ff0b70'),
(76, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:55', '2019-11-08 02:28:55', '2019-11-08 02:29:00', 'ac9ec35c-823d-46b4-8ceb-06733eddd072'),
(77, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:28:59', '2019-11-08 02:28:59', '2019-11-08 02:29:05', 'a28cb144-289e-4534-9560-ae77e903f663'),
(78, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:00', '2019-11-08 02:29:00', '2019-11-08 02:29:05', 'e632b998-db12-4e7e-aeb7-47e7bb46b0aa'),
(79, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:05', '2019-11-08 02:29:05', '2019-11-08 02:29:12', '094bd08e-9d50-410a-b008-c96e2463b6dc'),
(80, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:05', '2019-11-08 02:29:05', '2019-11-08 02:29:12', '6888cff1-ed69-4094-bfad-8667c9a61f0c'),
(81, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:12', '2019-11-08 02:29:12', '2019-11-08 02:29:15', '40e4e6fd-1ef2-4452-bce7-3d31b2a953ca'),
(82, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:12', '2019-11-08 02:29:12', '2019-11-08 02:29:15', 'bf6d1b4c-b519-41e2-a7d3-0c0f8653655c'),
(85, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:29:15', '2019-11-09 03:18:59', '2019-11-11 06:13:43', 'dcf3b3f8-80d1-463e-ae06-2991c17c7871'),
(86, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:15', '2019-11-09 03:12:53', '2019-11-09 03:18:59', '078375d4-b19c-4e77-a4a9-ef2466ff4e3f'),
(87, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:15', '2019-11-09 03:12:53', '2019-11-09 03:18:59', '4a68348b-5843-442e-a93e-f9f1423b4f8c'),
(88, NULL, 42, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:29:15', '2019-11-08 02:29:15', '2019-11-11 06:13:43', '418031ae-9b8d-4808-953b-9c39beb62bd4'),
(89, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:15', '2019-11-08 02:29:15', NULL, 'd28ad455-6a5b-4144-af2d-bf1aff697e8b'),
(90, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:15', '2019-11-08 02:29:15', NULL, '9033e5c5-8027-46bc-b206-70a1b17a7bbc'),
(91, NULL, 43, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:29:51', '2019-11-08 02:29:51', '2019-11-11 06:13:43', '165dd484-8934-4b7d-a189-4825828abe36'),
(92, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:51', '2019-11-08 02:29:51', NULL, 'c6d538d9-5da2-4d73-88c7-5f1958b92b19'),
(93, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:29:51', '2019-11-08 02:29:51', NULL, 'cff322e0-5eae-4aab-b620-03a2cb7e88ac'),
(94, NULL, 44, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:30:11', '2019-11-08 02:30:11', '2019-11-11 06:13:43', 'd4e22e10-bae6-4f15-abc2-f3a068b916fb'),
(95, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:30:12', '2019-11-08 02:30:11', NULL, 'e68f241b-e5e2-4330-8261-f7619c139637'),
(96, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:30:12', '2019-11-08 02:30:12', NULL, '4da2988b-0b14-400f-8fcf-b817756e0c5e'),
(97, NULL, 45, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:33:07', '2019-11-08 02:33:07', '2019-11-11 06:13:43', 'af19d6d3-e021-4e5b-b668-18aed224a9f1'),
(98, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:33:08', '2019-11-08 02:33:07', NULL, 'a9e5682f-9034-43b2-a0d1-51529f61048e'),
(99, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:33:08', '2019-11-08 02:33:08', NULL, '1a9dc9c6-8507-491c-9957-96163b0149ec'),
(100, NULL, 46, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:40:04', '2019-11-08 02:40:04', '2019-11-11 06:13:43', 'd41245d5-7243-45fa-8764-59bc108ef0b0'),
(101, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:40:04', '2019-11-08 02:40:04', NULL, '12fd4a27-9d38-4713-91cb-d2c7fc6143e1'),
(102, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 02:40:04', '2019-11-08 02:40:04', NULL, '5a0775a3-c84c-4f78-8e63-5454a970c043'),
(103, NULL, 47, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 02:49:39', '2019-11-08 02:49:39', NULL, '73bbf7d2-7af2-44b7-8b4e-3802733f3db2'),
(104, NULL, 48, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 03:26:55', '2019-11-08 03:26:55', NULL, 'a8d2d31a-cfed-4c18-836c-289f2476c8c7'),
(106, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 07:53:40', '2019-11-09 03:47:31', NULL, '73c99bdf-e4d1-413a-8976-5278bc0e58a5'),
(107, NULL, 49, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 07:53:40', '2019-11-08 07:53:40', NULL, '7e489d0e-88a7-4e99-bd3a-0ec8b8357603'),
(108, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', 'dbf41b6a-4678-4944-aa65-0eb85be5a94d'),
(109, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', 'da73e5c8-c809-4ae3-b82d-b42d89b97151'),
(110, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', '410f4fc4-a15b-4bbb-a788-d3037c8a4828'),
(111, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', 'ab347ab7-2b90-469b-8ea6-48ef108a31e1'),
(112, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', 'f5c824a3-5aff-4b40-a09c-1d04f6d9b5f2'),
(113, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '2019-11-08 08:14:38', '9f1e5e5d-37f6-4dc5-b518-bc30e7cca8e9'),
(114, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:28', '2019-11-14 02:14:28', NULL, '717411ea-7930-47b4-8d67-8c2170a03458'),
(115, NULL, 50, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', NULL, '11b38e7b-3aa7-4eae-b6a1-ff6f6a7dd8f7'),
(116, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, 'bebc8df8-f56f-48d6-94f1-0cc74c9fea45'),
(117, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, 'ecaba152-3ee5-4408-a355-91f91f39af53'),
(118, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, 'e08d0035-d321-4c82-943f-990f6eaec6a8'),
(119, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, 'bf75682f-38f2-4d61-bdc8-a812c94c926a'),
(120, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, '7d22e3a6-ffb3-45ec-af05-174e5b384eec'),
(121, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, 'aab394dd-60ed-4704-8fd1-70f6ddcaac80'),
(122, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:03:29', '2019-11-08 08:03:28', NULL, '6362841b-4256-4ddb-923c-7a1e872c7fce'),
(123, NULL, 51, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, 'd9200ae7-e82e-4a4c-bb98-179484142d26'),
(124, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, '1430ae06-1b3f-45cd-bd84-1cf257766a9a'),
(125, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, 'a276c24b-b7cd-4492-9677-8073a4c401d4'),
(126, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, '45be17e4-f221-4251-8174-7ca49bd15d8c'),
(127, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, '1f49983b-bb6e-44a6-8dc0-066e41c2d86e'),
(128, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, '29534299-80d3-4811-bd34-3d0495d03e3b'),
(129, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, 'b49a5854-e10c-4ef7-b985-7849e853e7e1'),
(130, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:04:36', '2019-11-08 08:04:36', NULL, 'b6f3e6e6-7b40-4a07-818f-5236a6dca98a'),
(131, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', '30ba2d83-6354-4eec-91a6-dee2494853ce'),
(132, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', '6ffc08e0-61c2-43bf-b1c4-04751a169651'),
(133, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', 'e911edc9-0de5-4b7d-b626-5b90d5dbd4a6'),
(134, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', 'c3e23c19-c2bf-4652-b660-51d4b9416349'),
(135, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', 'a62f903f-81d1-4c6e-b0f6-2b084845b888'),
(136, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '2019-11-08 08:18:38', 'dd021f51-500e-49d8-93b6-20b4f56e4cd5'),
(137, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-09 03:47:31', NULL, '1d901944-173d-492c-8824-0d584442a7fa'),
(138, NULL, 52, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, '4bc1768b-48dd-43b6-89a5-581e675b86a0'),
(139, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, '552823df-de03-42e2-abc2-4d838327da57'),
(140, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, 'c89b62b2-b11a-44da-a972-acbc93c87a92'),
(141, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, 'bec327a1-cf12-4555-a71c-447236ae4af1'),
(142, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, '0f9309e6-3cab-4517-bb06-f1d0f0a560b8'),
(143, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, '2fdbda7f-1fc1-40f2-9a25-a26c4f222cd0'),
(144, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, 'd2740a39-4569-4f8e-8c72-0f1b92e43ef0'),
(145, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', NULL, 'fb40376b-e4d5-4741-8f66-3c7d08da61fe'),
(146, NULL, 53, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, 'fafbeac9-841e-4636-a9f3-9ad25c35656a'),
(147, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, 'fa675541-c81b-4541-a8c6-be7d5ac447f6'),
(148, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, '2a077600-86b9-44d3-abc3-4178001ba8ab'),
(149, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, '6565f10e-0880-4894-86d5-3ec5f5253896'),
(150, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, '593787f9-61ea-4b07-9a82-b83fc06e9da2'),
(151, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, '107825f5-ebfd-45eb-aa26-08927ca56a82'),
(152, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, 'aef6f6ba-38c8-4517-9c6e-98d2f08206ca'),
(153, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:09:55', '2019-11-08 08:09:55', NULL, '48004b4b-9447-47ec-9efc-5ca4524f5019'),
(154, NULL, 54, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:14:38', '2019-11-08 08:14:38', NULL, 'f3c91efd-abe5-42a5-a8f5-c26debb2cbfb'),
(155, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:14:38', '2019-11-08 08:14:38', NULL, 'c40b289a-820a-47e4-898e-149c01dc98bd'),
(156, NULL, 55, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:18:38', '2019-11-08 08:18:38', NULL, '23cafdb0-853c-404a-8705-9cd8f139a0af'),
(157, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:18:38', '2019-11-08 08:18:38', NULL, '781cbbac-c141-4bb9-98c1-508cea39d623'),
(158, NULL, 56, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:18:56', '2019-11-08 08:18:56', NULL, 'a239cad1-1fa1-4cd2-88ec-12ff9e4ac8c5'),
(159, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:18:56', '2019-11-08 08:18:56', NULL, '655e2d99-dec1-42ad-8964-583fa00b489c'),
(160, NULL, 57, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:19:22', '2019-11-08 08:19:22', '2019-11-11 06:13:43', 'ff918264-a294-4832-ae57-6956d34eaa2e'),
(161, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:19:22', '2019-11-08 08:19:22', NULL, 'ba11aa2c-764b-415c-a7ea-f8024b4ce064'),
(162, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:19:22', '2019-11-08 08:19:22', NULL, 'd717a7c6-6678-4972-b02d-58ee07af2a41'),
(163, NULL, 58, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-08 08:21:00', '2019-11-08 08:21:00', NULL, '67dd740a-8b53-47b5-986e-e1a03609d0aa'),
(164, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-08 08:21:00', '2019-11-08 08:21:00', NULL, '6591f304-dfd7-4fbc-8392-2e738ae49865'),
(165, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-11-09 02:47:46', '2019-11-09 02:47:46', '2019-11-09 02:49:02', 'd8ea0244-d876-4584-b2c6-8a30f572b088'),
(166, NULL, 59, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-09 02:51:40', '2019-11-09 02:51:40', '2019-11-11 06:13:43', '0523304c-3085-4fd0-b1a4-299988f26177'),
(167, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 02:51:40', '2019-11-09 02:51:40', NULL, '38451a98-7e4d-4d6d-9736-64274c4c8b24'),
(168, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 02:51:40', '2019-11-09 02:51:40', NULL, 'be39cd3e-35ee-4543-a40e-5349fc9a3147'),
(169, NULL, NULL, 12, 'craft\\elements\\Category', 1, 0, '2019-11-09 02:54:12', '2019-11-14 01:05:03', NULL, '59ad1385-feee-466a-a0c1-dc56ae1b9363'),
(170, NULL, NULL, 12, 'craft\\elements\\Category', 1, 0, '2019-11-09 02:54:26', '2019-11-14 01:05:17', NULL, '9ac58923-ed8f-4140-b935-3c302c08f01e'),
(171, NULL, 60, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-09 02:54:56', '2019-11-09 02:54:56', '2019-11-11 06:13:43', '6eea0b4e-efaf-4d45-bdc4-7abc155d2117'),
(172, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 02:54:56', '2019-11-09 02:54:56', NULL, 'af684e9d-3213-4d6c-be48-43d00f8ef709'),
(173, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 02:54:56', '2019-11-09 02:54:56', NULL, '8cb84082-9ec9-4373-9d54-1fa17660c21a'),
(174, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:02:24', '2019-11-09 03:02:24', '2019-11-09 03:12:53', 'bb92f685-0f5b-4839-8067-81b14c5043b7'),
(175, NULL, 61, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:02:24', '2019-11-09 03:02:24', '2019-11-11 06:13:43', 'acb02062-4ecd-4e70-a99b-b7460c292c86'),
(176, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:02:24', '2019-11-09 03:02:24', NULL, '4fba53d7-f4c1-4c79-ab8d-1ded4be228b2'),
(177, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:02:24', '2019-11-09 03:02:24', NULL, '1de2d3db-ac58-44e8-9e22-4a97e5f2db28'),
(178, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:02:24', '2019-11-09 03:02:24', NULL, '7de2a397-5b36-4bfd-97f0-2a809d502760'),
(179, NULL, 62, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:12:18', '2019-11-09 03:12:18', NULL, '1f103551-bf8e-4b76-a36f-e3b0d05128e6'),
(180, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:12:18', '2019-11-09 03:12:18', NULL, 'df26735a-fbf2-4d45-bb22-4c035df94f94'),
(181, NULL, 63, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:12:49', '2019-11-09 03:12:49', NULL, 'dfe205bd-b8df-49a7-8a6c-7f193cb379fe'),
(182, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:12:49', '2019-11-09 03:12:49', NULL, '7c4d2716-634d-4287-a130-db5321f992ba'),
(183, NULL, 64, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:12:53', '2019-11-09 03:12:53', '2019-11-11 06:13:43', 'f04d1eee-4804-45b0-9596-a847eea901ad'),
(184, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:12:53', '2019-11-09 03:12:53', NULL, '476bb80d-ce38-42cf-a947-f69be6137815'),
(185, NULL, NULL, 5, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:12:53', '2019-11-09 03:12:53', NULL, '75870821-a7be-4f5e-b7a7-efbc9f97f76f'),
(186, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:16:26', '2019-11-09 03:18:08', '2019-11-09 03:19:53', 'c9af7052-3226-4fec-9e43-81aa81dfa1d4'),
(187, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:16:26', '2019-11-09 03:18:08', '2019-11-09 03:19:53', 'efa36f8e-1af5-4f5c-8a98-baab7a968cad'),
(188, NULL, 65, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '2019-11-09 03:19:53', '4575bd72-fe6c-4aa2-b43e-974caa3b6572'),
(189, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:16:27', '2019-11-09 03:12:49', NULL, '0aff457d-4339-4ed3-be81-c12a1c971672'),
(190, NULL, 66, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '2019-11-09 03:19:53', '6cf26d2a-ed75-4099-ac72-9611945f567c'),
(191, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:16:27', '2019-11-09 03:16:27', NULL, '04c35a7c-3d7c-4526-a9e8-cee90538ea61'),
(192, NULL, 67, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:17:00', '2019-11-09 03:17:00', '2019-11-09 03:19:53', '266b4baa-ad41-4b62-b4a0-43c042c48323'),
(193, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:17:00', '2019-11-09 03:17:00', NULL, 'b71f7abd-5f91-4f56-b6db-f9eb529193b5'),
(194, NULL, 68, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '2019-11-09 03:19:53', 'f05cced4-45b2-4050-9359-8c4d14301740'),
(195, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:18:08', '2019-11-09 03:18:08', NULL, '7761bf4d-f825-47e1-a076-cd3cfa547433'),
(196, NULL, 69, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:18:59', '2019-11-09 03:18:59', '2019-11-11 06:13:43', '7d65a678-e5a0-45e9-b199-40a51fa5b388'),
(197, NULL, 70, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:46:33', '2019-11-09 03:46:33', NULL, 'c65cc830-a38d-4b35-beb0-f384e77d18e0'),
(198, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:46:33', '2019-11-09 03:46:33', NULL, '0dd16134-c164-4e1e-b975-71c2e81046f5'),
(199, NULL, 71, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:47:31', '2019-11-09 03:47:31', NULL, '4940b6c6-43d2-4d45-af91-0ed58b22100f'),
(200, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 03:47:31', '2019-11-09 03:47:31', NULL, '5df65fd7-6957-4775-afeb-5ab86bb37f2c'),
(201, NULL, 72, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 06:45:49', '2019-11-09 06:45:49', NULL, 'b0ca9287-b116-4110-9a9f-4dd50b98f731'),
(202, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 06:45:49', '2019-11-09 06:45:49', NULL, '1768a1e3-0487-425e-992b-cd58183bdbe7'),
(203, NULL, 73, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 06:46:47', '2019-11-09 06:46:47', NULL, 'f08a3a33-ebf5-4c32-abd3-cb4a365c3264'),
(204, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-09 06:46:47', '2019-11-09 06:46:47', NULL, '9eccd002-d7ca-4fcc-bfcf-fa50225094ee'),
(205, 11, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 07:40:05', '2019-11-09 07:40:15', NULL, 'd6f12f27-b6ae-4327-8e51-d8565b33c577'),
(207, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 07:42:06', '2019-11-12 02:06:11', '2019-11-12 07:26:05', 'ca099223-f316-4c23-b2af-55decfcbddb2'),
(208, NULL, 74, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 07:42:06', '2019-11-09 07:42:06', '2019-11-12 07:26:05', 'e24eab73-b3cf-4967-9abd-c0a1c6c3ec0a'),
(209, NULL, 75, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 07:44:08', '2019-11-09 07:44:08', '2019-11-12 07:26:05', '83a3ad44-a6a7-429a-80eb-fa794ecf0472'),
(210, NULL, 76, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 08:01:43', '2019-11-09 08:01:43', '2019-11-12 07:26:05', 'b433db06-6d9b-4bb2-9a9b-7e3ba6f36c39'),
(211, NULL, 77, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 08:03:36', '2019-11-09 08:03:36', '2019-11-12 07:26:05', 'ba38c34b-a800-4691-97f6-a9fd10ca9bc8'),
(212, NULL, 78, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 08:03:44', '2019-11-09 08:03:44', '2019-11-12 07:26:05', '0fcd5653-96cf-4cc2-b288-c4d2283443f9'),
(213, NULL, 79, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-09 08:13:30', '2019-11-09 08:13:30', '2019-11-12 07:26:05', 'f640fb7f-e212-40e2-9803-a851aff85131'),
(215, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:14:31', '2019-11-11 06:41:13', '2019-11-11 07:39:43', '5ec71be5-7e92-4e0f-87d9-2cff0f61ccc4'),
(216, NULL, 80, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:14:31', '2019-11-11 06:14:31', '2019-11-11 07:39:43', '53abe4ed-c2fd-4a9c-8faf-ddc809cd22e9'),
(217, NULL, 81, 4, 'craft\\elements\\Entry', 0, 0, '2019-11-11 06:17:47', '2019-11-11 06:17:47', '2019-11-11 07:39:43', '31dacb81-2f04-438e-9f9d-4d0f06c1860e'),
(218, NULL, 82, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:24:58', '2019-11-11 06:24:58', '2019-11-11 07:39:43', '101a9365-27d6-4bbc-9dd8-32a35ce1efbd'),
(219, NULL, 83, 4, 'craft\\elements\\Entry', 0, 0, '2019-11-11 06:26:28', '2019-11-11 06:26:28', '2019-11-11 07:39:43', '48de883c-b31b-4dcb-bd82-64d9567f41f3'),
(220, NULL, 84, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:26:40', '2019-11-11 06:26:40', '2019-11-11 07:39:43', 'b462e936-c920-4fc5-ba38-b23b09444d49'),
(221, NULL, 85, 4, 'craft\\elements\\Entry', 0, 0, '2019-11-11 06:33:55', '2019-11-11 06:33:55', '2019-11-11 07:39:43', '7db1dddd-b040-4a13-8331-9f3220527a90'),
(222, NULL, 86, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:37:09', '2019-11-11 06:37:09', '2019-11-11 07:39:43', 'a001e0fe-be7e-4b7f-b0e3-5b972478ce43'),
(223, NULL, 87, 4, 'craft\\elements\\Entry', 0, 0, '2019-11-11 06:40:06', '2019-11-11 06:40:06', '2019-11-11 07:39:43', '676e3ce2-f77e-47bd-8f39-9c265f3a72ba'),
(224, NULL, 88, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-11 06:41:13', '2019-11-11 06:41:13', '2019-11-11 07:39:43', '8b771a4d-9fcd-4d63-8f13-13dcbe9b65b7'),
(225, NULL, 89, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-12 02:06:11', '2019-11-12 02:06:11', '2019-11-12 07:26:05', 'd83342cb-21bf-4f53-83df-ad8e68a3879e'),
(226, NULL, 90, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-12 03:04:11', '2019-11-12 03:04:11', NULL, 'a1d51c8c-9333-4505-be02-62ad11f1104e'),
(227, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-12 03:04:11', '2019-11-12 03:04:11', NULL, '304e9233-2143-48c7-884f-9878605577ba'),
(229, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 06:57:29', '2019-11-12 07:27:01', '2019-11-13 03:57:27', '1e9eae52-5a19-4e5d-8796-297b83ec4519'),
(230, NULL, 91, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-12 06:57:28', '2019-11-12 06:57:28', '2019-11-13 03:57:27', 'c265cd89-ef8a-4d25-b89b-7007e02ffba5'),
(231, NULL, 92, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-12 06:57:46', '2019-11-12 06:57:46', '2019-11-13 03:57:27', '697856e8-7a12-4ddd-9ea7-4a9c7ac0b811'),
(232, NULL, 93, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:21:38', '2019-11-12 07:21:38', '2019-11-13 03:57:27', '45458ae9-c64e-4e1e-a357-d797677ef038'),
(233, NULL, 94, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:24:32', '2019-11-12 07:24:32', '2019-11-13 03:57:27', '5e2cda87-7337-4820-bd95-70385ee00eea'),
(234, NULL, 95, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:25:41', '2019-11-12 07:25:41', '2019-11-13 03:57:27', '80d86ed2-f7ac-4cc5-af16-abf6b26805d8'),
(235, NULL, 96, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:27:01', '2019-11-12 07:27:01', '2019-11-13 03:57:27', 'ecd2a22f-5a41-4f89-879d-503de97f35b6'),
(237, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:30:29', '2019-11-12 07:55:20', '2019-11-13 03:57:27', 'c069873c-1dc6-4899-a335-0254a19cd7d6'),
(238, NULL, 97, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:30:28', '2019-11-12 07:30:28', '2019-11-13 03:57:27', 'b7d62f79-c8fa-4cab-ab10-e129680843b0'),
(240, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:30:53', '2019-11-13 03:46:34', '2019-11-13 03:57:27', '68944411-4ecd-4003-b81d-c083ecc523c3'),
(241, NULL, 98, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:30:53', '2019-11-12 07:30:53', '2019-11-13 03:57:27', 'e0d4c95b-ea17-4651-af62-15a3cf1c168b'),
(242, NULL, 99, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:31:07', '2019-11-12 07:31:07', '2019-11-13 03:57:27', '966c3bd9-0bb5-4f51-9012-9ae1e187d3b5'),
(244, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:31:26', '2019-11-13 03:46:44', '2019-11-13 03:57:27', '5e4ca689-c1f9-4d71-94f0-1a5eb03f1791'),
(245, NULL, 100, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:31:26', '2019-11-12 07:31:26', '2019-11-13 03:57:27', '8d827a1f-2927-4043-991a-ad0595140786'),
(246, NULL, 101, 9, 'craft\\elements\\Entry', 1, 0, '2019-11-12 07:55:20', '2019-11-12 07:55:20', '2019-11-13 03:57:27', '3cf8021f-a9e8-4303-99a6-204babe4dfaf'),
(247, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-13 01:34:14', '2019-11-14 00:42:01', '2019-11-14 07:20:54', '173bdc9d-e352-4a1d-904f-cd4f7fb56c91'),
(248, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-13 01:34:15', '2019-11-14 00:42:01', '2019-11-14 07:20:54', 'a6512b37-15d7-4a0f-b0d1-5992cabf59d9'),
(249, NULL, 102, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-12 03:04:11', '2019-11-12 03:04:11', '2019-11-14 07:20:54', 'aad54f90-09bd-4a91-b80c-c856dee72289'),
(250, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-13 01:34:15', '2019-11-12 03:04:11', NULL, '60ba251e-1cdf-4c29-88e0-f97956bd823f'),
(251, NULL, 103, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '2019-11-14 07:20:54', '6888609f-96ae-4faf-8ae2-37af74093692'),
(252, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-13 01:34:42', '2019-11-13 01:34:42', NULL, '91ea2b27-6d63-40d8-955b-d067da29b695'),
(253, NULL, 104, 10, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:46:34', '2019-11-13 03:46:34', '2019-11-13 03:57:27', '94796a10-74a6-4ed4-918f-b2f042828ad9'),
(254, NULL, 105, 10, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:46:44', '2019-11-13 03:46:44', '2019-11-13 03:57:27', 'f776df79-8e18-488d-b5d8-a9da40b8ef60'),
(256, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:58:26', '2019-11-13 04:00:25', NULL, '029c96aa-a95c-4d69-af17-6ca644844926'),
(257, NULL, 106, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:58:26', '2019-11-13 03:58:26', NULL, '3ffd9bd4-b8bc-484b-bcf5-c47e53a16a01'),
(258, NULL, 107, 11, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:59:53', '2019-11-13 03:59:53', NULL, 'de549a09-11d0-4af9-8ab1-a29bff24eecb'),
(259, NULL, 108, 11, 'craft\\elements\\Entry', 1, 0, '2019-11-13 04:00:25', '2019-11-13 04:00:25', NULL, '530ad9dc-2ccf-429f-ab5a-97d2feb23c10'),
(261, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-13 04:09:47', '2019-11-13 04:09:47', NULL, 'af2da396-c79f-4368-9203-718369d1c353'),
(262, NULL, 109, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-13 04:09:47', '2019-11-13 04:09:47', NULL, 'c9aa045b-2071-4c86-9bb2-3ddc2f8f89b7'),
(263, NULL, 110, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 00:40:30', '2019-11-14 00:40:30', '2019-11-14 07:20:54', 'bccf1398-4f88-41f9-b661-132cc2ceee34'),
(264, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 00:40:30', '2019-11-14 00:40:30', NULL, '325ad529-a98a-4492-8ea7-7017c84669fe'),
(265, NULL, 111, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 00:41:30', '2019-11-14 00:41:30', '2019-11-14 07:20:54', '0017b0b2-cdaa-4a65-a0b2-8972de133302'),
(266, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 00:41:30', '2019-11-14 00:41:30', NULL, 'ff3c6df7-9923-4ad1-99a7-02d6ee599aff'),
(267, NULL, 112, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '2019-11-14 07:20:54', '16f45124-4d42-4d55-a388-6e2c35dae57d'),
(268, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 00:42:01', '2019-11-14 00:42:01', NULL, '5d73c78e-1eea-4ab6-bcc9-1e813fd067ac'),
(269, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 01:18:58', '2019-11-14 00:42:01', '2019-11-14 01:19:30', '3c73c0fc-b98b-4bbf-9d93-226c6a752c24'),
(270, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:18:58', '2019-11-14 00:42:01', '2019-11-14 01:19:30', '691b92d0-bea4-4f06-9961-4b580b898896'),
(271, NULL, 113, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '2019-11-14 01:19:30', '8fb786e2-7d82-423c-9770-2a6f6c65ac11'),
(272, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:18:59', '2019-11-14 00:42:01', NULL, '791e5958-bbc7-45cf-a0fe-af3bb3a6d8d3'),
(273, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 01:19:05', '2019-11-09 03:47:31', '2019-11-14 01:19:31', '0498abc6-2c9c-4b9c-8b87-886a0eb1faf8'),
(274, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:19:06', '2019-11-09 03:47:31', '2019-11-14 01:19:30', 'bd6a19b9-9ad4-4fa8-9d62-101c6197f800'),
(275, NULL, 114, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '2019-11-14 01:19:31', '91b18d7a-4065-4ad3-bf51-c56ba0c450e9'),
(276, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:19:06', '2019-11-09 03:47:31', NULL, '87518e85-58ee-46b5-8b21-699fc864c64e'),
(277, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 01:19:06', '2019-11-14 00:42:01', '2019-11-14 01:19:31', 'e66da019-4f8d-4459-959e-792de01c7cc0'),
(278, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:19:06', '2019-11-14 00:42:01', '2019-11-14 01:19:31', '1a437d9e-be6e-4bbd-8bf6-369b5038ab8d'),
(279, NULL, 115, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '2019-11-14 01:19:31', '3121cf0b-65ea-4924-919b-8a036c8e8016'),
(280, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 01:19:06', '2019-11-14 00:42:01', NULL, '61158139-9b56-4001-ba19-5bb672161eac'),
(281, NULL, 116, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 02:14:28', '2019-11-14 02:14:28', NULL, '9b7fd6de-7c83-472e-8792-7d5d94326f45'),
(282, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 02:14:28', '2019-11-14 02:14:28', NULL, '2dcef12d-93b6-45d6-b6a7-b7c815b0eb0b'),
(283, 12, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:23:16', '2019-11-14 07:23:26', NULL, 'c4b6ab0c-e39e-4edf-bc3a-4b40fe722bf6'),
(284, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:23:26', '2019-11-14 07:23:26', NULL, 'cba18d1e-7642-4c56-9466-1c7c090057e8'),
(286, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:23:52', '2019-11-14 07:23:52', '2019-11-14 07:23:57', '730c5c26-dec4-4794-b5a1-5c26d833319f'),
(287, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:23:57', '2019-11-14 07:23:57', '2019-11-14 07:23:59', '438a94d4-9057-4c0c-b194-518dc14b6f50'),
(288, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:23:58', '2019-11-14 07:23:58', '2019-11-14 07:24:09', '24e766f0-1a96-4ac6-b13a-61a96560d352'),
(289, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:24:09', '2019-11-14 07:24:09', '2019-11-14 07:24:34', '3b4f5640-5047-470e-b794-d89aba1a44a7'),
(290, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:24:33', '2019-11-14 07:24:33', '2019-11-14 07:24:36', '83500ae5-5793-4310-a3ee-4045406c95cf'),
(291, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:24:35', '2019-11-14 07:24:35', '2019-11-14 07:24:39', 'a885610c-0b9e-4ad0-9e4d-97fcc24cb739'),
(292, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:24:39', '2019-11-14 07:24:39', '2019-11-14 07:30:54', 'afbf4767-6332-41b4-92ec-9a93ff70c5fd'),
(293, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:30:54', '2019-11-14 07:30:54', '2019-11-14 07:31:50', '29a438a4-76ff-470e-b7e4-e7c70eda6404'),
(294, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:31:50', '2019-11-14 07:31:50', '2019-11-14 07:31:51', '0b15a2d5-7821-4561-95be-feeff0c2a282'),
(295, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:31:51', '2019-11-14 07:31:51', '2019-11-14 07:31:56', 'bcbb5e87-5fde-4f6a-a42e-88cabdb972a2'),
(296, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:31:55', '2019-11-14 07:31:55', '2019-11-14 07:32:42', '812ed714-f86c-4076-b3ff-5306feb07191'),
(297, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:32:42', '2019-11-14 07:32:42', '2019-11-14 07:32:44', '930a9722-00bb-4cff-8ae8-974eb83a8745'),
(298, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:32:44', '2019-11-14 07:32:44', '2019-11-14 07:32:49', '90bc9ee0-9a91-4d9a-88c7-2733d4953034'),
(299, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:32:48', '2019-11-14 07:32:48', '2019-11-14 07:32:50', '9a56aada-15ef-4344-865f-c82c91b12efd'),
(301, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:32:50', '2019-11-14 07:43:40', NULL, '790215e1-b41d-46d3-a9b0-9619035f6291'),
(302, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:32:50', '2019-11-14 07:43:40', NULL, 'f1d15c39-af64-4834-93f7-1b423ec42392'),
(303, NULL, 117, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:32:50', '2019-11-14 07:32:50', NULL, '405cb120-70aa-4daf-9d33-e5025f77a8b8'),
(304, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:32:50', '2019-11-14 07:32:50', NULL, '19eb3c46-fdb3-4c83-b0f9-95d45acf69f8'),
(305, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-14 07:36:02', '2019-11-14 07:36:02', NULL, '1c99b241-bfe8-445e-855c-0bedc0c3250f'),
(306, NULL, 118, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:38:59', '2019-11-14 07:38:59', NULL, '1bddf5a3-fed7-4f35-add3-e04044c734c4'),
(307, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:38:59', '2019-11-14 07:38:59', NULL, 'e106096e-0f9e-443e-998d-19441eee599e'),
(308, NULL, 119, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:43:40', '2019-11-14 07:43:40', NULL, 'db0a55b1-4595-4135-810e-3fb1248c1187'),
(309, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:40', '2019-11-14 07:43:40', NULL, '926abcb4-1071-4420-af5f-5bd42e611aac'),
(310, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:43:48', '2019-11-14 02:14:28', '2019-11-14 07:44:26', '48f7def1-8beb-40a9-81e7-9dab6caa62ca'),
(311, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-14 02:14:28', '2019-11-14 07:44:26', '85f75a35-f28d-4e3d-894b-8fd134ca256a'),
(312, NULL, 120, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 02:14:28', '2019-11-14 02:14:28', '2019-11-14 07:44:26', '7d2c00a5-13e1-4ce4-8bde-5c8bf9a42c6f'),
(313, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-14 02:14:28', NULL, 'cfec89fa-33e9-4e95-925b-7500d9bc2140'),
(314, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:43:49', '2019-11-09 03:47:31', '2019-11-14 07:44:26', '386bea15-d95b-43d6-8af6-a6d138986dd1'),
(315, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-09 03:47:31', '2019-11-14 07:44:26', 'bb0a1556-808e-468a-8f90-afd2b5afd43e'),
(316, NULL, 121, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '2019-11-14 07:44:26', 'e620853b-15e9-4256-b43f-d8a36a9f6a63'),
(317, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-09 03:47:31', NULL, '0c296e00-fbf7-477b-ac06-46032c9da6ce'),
(318, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:43:49', '2019-11-14 07:43:40', '2019-11-14 07:44:27', 'be9874cf-2baf-4098-b128-d630cc5dc1b0'),
(319, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-14 07:43:40', '2019-11-14 07:44:26', '57e56278-8b29-46d0-926e-20cdcef750d0'),
(320, NULL, 122, 2, 'craft\\elements\\Entry', 1, 0, '2019-11-14 07:43:40', '2019-11-14 07:43:40', '2019-11-14 07:44:27', '1744487a-2c59-46bb-bfd8-9a0c58589f2f');
INSERT INTO `blog_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(321, NULL, NULL, 6, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-11-14 07:43:49', '2019-11-14 07:43:40', NULL, 'a2bdc331-d707-4b56-a65a-35f65f2071b8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_elements_sites`
--

CREATE TABLE `blog_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_elements_sites`
--

INSERT INTO `blog_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2019-11-06 02:26:42', '2019-11-06 02:26:42', '1702b1f5-ad2c-479c-81cf-acbdbf2ce945'),
(3, 3, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 04:53:24', '2019-11-06 04:53:24', '7a56d53b-00e0-4e02-8a30-17efbf1a7047'),
(4, 4, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 04:53:25', '2019-11-06 04:53:25', '5b5a5788-14f4-42ef-a4c3-0cda2a6a06bc'),
(6, 6, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 04:54:04', '2019-11-06 04:54:04', 'ce63b3e1-5aa2-43a7-b55c-bd738bea6bce'),
(7, 7, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 06:10:21', '2019-11-06 06:10:21', '097b5720-9b81-42a7-bdae-2e7f2fbbb8b3'),
(8, 8, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 06:12:12', '2019-11-06 06:12:12', 'a36bd0a0-c37d-4f21-8b14-407d02702537'),
(9, 9, 1, NULL, NULL, 1, '2019-11-06 06:51:16', '2019-11-06 06:51:16', '8952c4a7-67a1-4096-818a-4ebaeb9a7a4f'),
(10, 10, 1, 'nomer-acak', 'main-section/nomer-acak', 1, '2019-11-06 06:54:11', '2019-11-06 06:54:11', 'd016d3ae-65c0-47a2-a4c5-6f8cd38ea857'),
(11, 11, 1, '__temp_3d9AjQZOn53QXjWJW7qRJL64xjionrZmrahF', 'main-section/__temp_3d9AjQZOn53QXjWJW7qRJL64xjionrZmrahF', 1, '2019-11-06 06:54:49', '2019-11-06 06:54:49', 'bea1634c-b739-4c20-a773-cb4fee3481f7'),
(13, 13, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 02:32:22', '2019-11-07 06:12:59', '017fc3b3-2042-4d43-bb81-13d1ce9b0a13'),
(14, 14, 1, 'uwu', 'uwu', 1, '2019-11-07 02:32:22', '2019-11-07 02:32:22', '17983e9f-c474-4e86-9f16-d62d0cf5b59a'),
(15, 15, 1, NULL, NULL, 1, '2019-11-07 02:33:37', '2019-11-07 02:33:37', '6b65dd86-2cfb-4e64-8141-f5596f9d11e7'),
(16, 16, 1, NULL, NULL, 1, '2019-11-07 02:33:38', '2019-11-07 02:33:38', '22138c98-b15a-46d5-badc-f73a9dea0623'),
(17, 17, 1, 'uwu', 'uwu', 1, '2019-11-07 02:34:02', '2019-11-07 02:34:02', 'bf400852-c7b4-408c-ab1a-bf83ec2ef447'),
(18, 18, 1, 'uwu', 'uwu', 1, '2019-11-07 02:35:26', '2019-11-07 02:35:26', 'c0802826-eed1-47e3-91e5-d98b4f2df991'),
(19, 19, 1, 'uwu', 'uwu', 1, '2019-11-07 02:41:47', '2019-11-07 02:41:47', '14aaa318-0e51-4555-8857-78f4263fc8ba'),
(20, 20, 1, NULL, NULL, 1, '2019-11-07 03:06:41', '2019-11-07 03:06:41', '1b58c0e6-8577-4858-905f-eca0cdc2ca28'),
(21, 21, 1, NULL, NULL, 1, '2019-11-07 03:06:42', '2019-11-07 03:06:42', 'f9d888cb-21c5-4e52-b689-327f701e3cdf'),
(22, 22, 1, 'bnha1', 'bnha1', 1, '2019-11-07 06:02:48', '2019-11-07 06:02:48', '786717a5-54b2-4f70-8b63-7745fd1d80fb'),
(23, 23, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:18:03', '2019-11-07 06:18:03', 'd1a1c701-1658-4a0f-a3f4-939d91d206db'),
(24, 24, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:18:24', '2019-11-07 06:18:24', 'a99412df-f3f2-4bae-8653-7e39d4c06d7b'),
(26, 26, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:18:50', '2019-11-07 06:18:50', '92e1eb19-b6af-4174-a9a4-5193fa81e539'),
(27, 27, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:19:28', '2019-11-07 06:19:28', '24b898de-a92d-4d77-95f1-ddaf3a15e61d'),
(28, 28, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:26:04', '2019-11-07 06:26:04', 'f0601b36-f4e1-4d9c-9e26-db2dab7db82c'),
(29, 29, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:34:30', '2019-11-07 06:34:30', 'eed6e688-1a8b-40e6-9e56-1eefae56344e'),
(30, 30, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:34:54', '2019-11-07 06:34:54', 'a1ce2429-48ee-48db-97c3-f137f6792087'),
(31, 31, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:35:15', '2019-11-07 06:35:15', '12e0a1c8-3fbc-4506-8742-4148bdc0e0bd'),
(32, 32, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:36:04', '2019-11-07 06:36:04', 'c41670b3-133a-4ee1-88e5-e925ae1f5c8c'),
(33, 33, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:37:22', '2019-11-07 06:37:22', '98b0cf53-a131-4576-b266-3da86e26af1d'),
(34, 34, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:37:44', '2019-11-07 06:37:44', 'ae8d7721-0199-4f3b-b024-0e7b7a41e2c1'),
(35, 35, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:38:14', '2019-11-07 06:38:14', 'cc09f203-aeae-476d-b34e-ac8c9b6d1d9b'),
(36, 36, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:38:17', '2019-11-07 06:38:17', 'de51427f-db05-43dc-9521-a412ecc3f054'),
(37, 37, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:38:44', '2019-11-07 06:38:44', '21af968f-6f71-4985-8fed-ea367ee0c467'),
(38, 38, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:39:40', '2019-11-07 06:39:40', '42d941b2-40ff-4b9a-9ca2-8daa0e49ad95'),
(39, 39, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:46:30', '2019-11-07 06:46:30', '501b71f3-78b8-47f7-b8ee-639a522f4709'),
(40, 40, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:46:49', '2019-11-07 06:46:49', '34d4bbc8-13a9-4a77-8843-fc93bbcccd84'),
(41, 41, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 06:47:14', '2019-11-07 06:47:14', 'f95fd44e-b2af-4bdd-85eb-5b72830497fd'),
(42, 42, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:02:55', '2019-11-07 07:02:55', '06058975-f0e7-46ca-a00a-3743f7d4adcb'),
(43, 43, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:02:56', '2019-11-07 07:02:56', '111541cf-9b34-4827-bc6b-2f98c54d120f'),
(44, 44, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:02:57', '2019-11-07 07:02:57', '69a7d2a4-7383-4174-aeff-6a45ec38bf4c'),
(45, 45, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:03:15', '2019-11-07 07:03:15', 'd9278417-7c4e-485c-83da-0a27f6e646bb'),
(46, 46, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:03:23', '2019-11-07 07:03:23', '3a05668f-609c-4f30-b085-07952c894542'),
(47, 47, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:12:43', '2019-11-07 07:12:43', '721d3df9-e9ec-4f8f-a30b-ca8cbd126da5'),
(48, 48, 1, 'bnha1', 'post/bnha1', 1, '2019-11-07 07:19:24', '2019-11-07 07:19:24', 'd740611c-95c2-4898-b548-723ab66d5564'),
(49, 49, 1, 'homepage', '__home__', 1, '2019-11-08 01:07:33', '2019-11-08 01:08:51', '3ce42e9d-0335-4ccf-93c0-c8829da3ebfd'),
(50, 50, 1, 'homepage', 'homepage', 1, '2019-11-08 01:07:33', '2019-11-08 01:07:33', 'f623a4cb-844d-4a1d-92be-8383728f81b9'),
(51, 51, 1, 'homepage', 'homepage', 1, '2019-11-08 01:07:34', '2019-11-08 01:07:34', 'f2b38a34-86ff-4c38-9d93-c18d4569d3d7'),
(52, 52, 1, 'homepage', '__home__', 1, '2019-11-08 01:08:51', '2019-11-08 01:08:51', '80149301-95cb-41a6-89c1-25d27528715f'),
(53, 53, 1, 'homepage', '__home__', 1, '2019-11-08 01:09:35', '2019-11-08 01:09:35', 'ccaeb45f-517d-4d9e-bd82-7ea19cbf513a'),
(54, 54, 1, 'homepage', 'homepage', 1, '2019-11-08 01:29:42', '2019-11-08 02:25:29', '5450f786-cae7-489c-a565-937cd7f4cbf0'),
(55, 55, 1, 'homepage', '__home__', 1, '2019-11-08 01:29:42', '2019-11-08 01:29:42', '3cf3ac2e-1a3a-4e4e-ab5e-eb5476d8fbd6'),
(56, 56, 1, NULL, NULL, 1, '2019-11-08 02:03:21', '2019-11-08 02:03:21', '36265f21-c6a6-474f-bd6b-05a67ffd0d8a'),
(57, 57, 1, NULL, NULL, 1, '2019-11-08 02:03:22', '2019-11-08 02:03:22', 'c45b70ed-de5f-45fc-a83c-1a070197f933'),
(58, 58, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 02:03:44', '2019-11-08 02:03:44', 'b53470d2-a29d-4782-94a4-23c635c8d1ef'),
(59, 59, 1, 'homepage', 'post/__temp_UwS8Dh12C2L1eoTLxIdTL0vgVKvMOCsHUY1w', 1, '2019-11-08 02:23:09', '2019-11-08 02:23:17', '0b7c4503-86eb-4032-8a5c-73388b236b4b'),
(60, 60, 1, 'homepage', '__home__', 1, '2019-11-08 02:23:57', '2019-11-08 02:23:57', 'c2afcb1a-dda9-4768-a940-9c863c1e97ad'),
(61, 61, 1, '__temp_CGlQvmMWExxcYxpGZOum3vRsw3cM35yN0vsF', 'post/__temp_CGlQvmMWExxcYxpGZOum3vRsw3cM35yN0vsF', 1, '2019-11-08 02:24:04', '2019-11-08 02:24:04', '885a5f40-97c4-4737-9460-b85f197c1611'),
(62, 62, 1, '__temp_GqQOw0jSUKhxQPTmHGQ8iwv4H3aL2zcdEWjm', 'post/__temp_GqQOw0jSUKhxQPTmHGQ8iwv4H3aL2zcdEWjm', 1, '2019-11-08 02:25:37', '2019-11-08 02:25:37', '107680fe-bfae-4ce4-a78e-793bd9733df7'),
(63, 63, 1, '__temp_TjGQItVknIc0DhupYEi0MHFxKU4vQkiyq4Cs', '__temp_TjGQItVknIc0DhupYEi0MHFxKU4vQkiyq4Cs', 1, '2019-11-08 02:25:46', '2019-11-08 02:25:46', '7a20011c-4281-4137-8a9b-30d7dfb96e4e'),
(65, 65, 1, NULL, NULL, 1, '2019-11-08 02:28:27', '2019-11-08 02:28:27', 'cc726afb-da4b-4b16-bb5a-0fe30310fba5'),
(66, 66, 1, NULL, NULL, 1, '2019-11-08 02:28:37', '2019-11-08 02:28:37', '331dae52-979c-4555-ab46-65f5d434290f'),
(67, 67, 1, NULL, NULL, 1, '2019-11-08 02:28:38', '2019-11-08 02:28:38', '4f41f350-589d-403b-a5d2-b7d627d85b6c'),
(68, 68, 1, NULL, NULL, 1, '2019-11-08 02:28:43', '2019-11-08 02:28:43', '013046b0-1e99-4e5f-814c-1a67ef52aaae'),
(69, 69, 1, NULL, NULL, 1, '2019-11-08 02:28:46', '2019-11-08 02:28:46', '44933b49-68c6-4fe9-85cf-b37d23922ea7'),
(70, 70, 1, NULL, NULL, 1, '2019-11-08 02:28:46', '2019-11-08 02:28:46', '8eed1ba7-6f85-4389-bd7d-a95631772738'),
(71, 71, 1, NULL, NULL, 1, '2019-11-08 02:28:49', '2019-11-08 02:28:49', 'e4d49a4d-cbda-4c62-ba8b-21690bf3ae90'),
(72, 72, 1, NULL, NULL, 1, '2019-11-08 02:28:49', '2019-11-08 02:28:49', 'b7efd8bf-b601-4c70-b2be-02f1d62031f1'),
(73, 73, 1, NULL, NULL, 1, '2019-11-08 02:28:54', '2019-11-08 02:28:54', '3b061548-baa7-4205-b556-d462618c9575'),
(74, 74, 1, NULL, NULL, 1, '2019-11-08 02:28:54', '2019-11-08 02:28:54', '1d1cdd33-1539-4238-a32d-e93935e96713'),
(75, 75, 1, NULL, NULL, 1, '2019-11-08 02:28:55', '2019-11-08 02:28:55', '64966910-f5af-4d56-8324-f51c4e5a8565'),
(76, 76, 1, NULL, NULL, 1, '2019-11-08 02:28:55', '2019-11-08 02:28:55', '7a01099e-95ab-49f8-bf1f-04c787142ea4'),
(77, 77, 1, NULL, NULL, 1, '2019-11-08 02:28:59', '2019-11-08 02:28:59', '40d152a9-7ef1-472a-9d13-a1b128d54d9b'),
(78, 78, 1, NULL, NULL, 1, '2019-11-08 02:29:00', '2019-11-08 02:29:00', '04459541-5c71-4dc5-85cd-f652006ff93f'),
(79, 79, 1, NULL, NULL, 1, '2019-11-08 02:29:05', '2019-11-08 02:29:05', '774228e0-ec1e-473a-bcf5-5b4b3ee98a54'),
(80, 80, 1, NULL, NULL, 1, '2019-11-08 02:29:05', '2019-11-08 02:29:05', '2dcb1cbf-d605-493e-a8a7-29b5a4437b66'),
(81, 81, 1, NULL, NULL, 1, '2019-11-08 02:29:12', '2019-11-08 02:29:12', '3a6d7c5a-b0d3-4a66-9793-95944d3f79c3'),
(82, 82, 1, NULL, NULL, 1, '2019-11-08 02:29:12', '2019-11-08 02:29:12', 'd86d594d-7b72-4fdb-a81a-85b004a73c5d'),
(85, 85, 1, 'homepage', 'homepage', 1, '2019-11-08 02:29:15', '2019-11-08 02:30:11', 'c2718435-f423-411b-ba79-77d5eadc7e68'),
(86, 86, 1, NULL, NULL, 1, '2019-11-08 02:29:15', '2019-11-08 02:29:15', '40e4def5-bfb6-49e9-bf64-2e347f49d166'),
(87, 87, 1, NULL, NULL, 1, '2019-11-08 02:29:15', '2019-11-08 02:29:15', 'd10217c5-e43f-4d0c-9461-5ddcbd2aa5f8'),
(88, 88, 1, 'homepage-1', 'homepage-1', 1, '2019-11-08 02:29:15', '2019-11-08 02:29:15', '752d74fd-8705-4e77-8c20-29d2315fec9b'),
(89, 89, 1, NULL, NULL, 1, '2019-11-08 02:29:15', '2019-11-08 02:29:15', '3f86a0a8-4dba-42ef-8a65-fb5d7c483054'),
(90, 90, 1, NULL, NULL, 1, '2019-11-08 02:29:15', '2019-11-08 02:29:15', '12b318d5-f947-4184-a6c4-9a0fb1585876'),
(91, 91, 1, 'homepage-1', 'homepage-1', 1, '2019-11-08 02:29:51', '2019-11-08 02:29:51', 'e96a0181-2fd1-468c-b1c2-ae13336cdb5e'),
(92, 92, 1, NULL, NULL, 1, '2019-11-08 02:29:51', '2019-11-08 02:29:51', 'ace7ac76-b8ab-4a7e-a4fe-328c43b9ace4'),
(93, 93, 1, NULL, NULL, 1, '2019-11-08 02:29:51', '2019-11-08 02:29:51', '09ae6f7b-5d64-4cc5-8e2e-f12263c7a68b'),
(94, 94, 1, 'homepage', 'homepage', 1, '2019-11-08 02:30:12', '2019-11-08 02:30:12', '25f49880-9604-4cd1-b757-9feffd1a6202'),
(95, 95, 1, NULL, NULL, 1, '2019-11-08 02:30:12', '2019-11-08 02:30:12', '8aba72e2-78ae-4ec4-b78c-c1559e943ae4'),
(96, 96, 1, NULL, NULL, 1, '2019-11-08 02:30:12', '2019-11-08 02:30:12', '4f775ded-903d-426d-91f0-1e983b728d96'),
(97, 97, 1, 'homepage', 'homepage', 1, '2019-11-08 02:33:08', '2019-11-08 02:33:08', '378ce8cd-66c7-4638-8358-9b16468739d3'),
(98, 98, 1, NULL, NULL, 1, '2019-11-08 02:33:08', '2019-11-08 02:33:08', '31a292df-d30b-4d8f-bf56-2409aceaae03'),
(99, 99, 1, NULL, NULL, 1, '2019-11-08 02:33:08', '2019-11-08 02:33:08', '99f272aa-bf2f-4ca8-91d7-7a28307192fd'),
(100, 100, 1, 'homepage', 'homepage', 1, '2019-11-08 02:40:04', '2019-11-08 02:40:04', '70d605ec-7096-46db-be93-85a71a6041f8'),
(101, 101, 1, NULL, NULL, 1, '2019-11-08 02:40:04', '2019-11-08 02:40:04', '5a6f8f9f-2f5b-4558-9044-09bb29825d8b'),
(102, 102, 1, NULL, NULL, 1, '2019-11-08 02:40:04', '2019-11-08 02:40:04', 'd57552bd-b98c-4410-955f-3012f491bce3'),
(103, 103, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 02:49:39', '2019-11-08 02:49:39', 'ac1df134-aa19-4e0c-a113-90d1a89c9e37'),
(104, 104, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 03:26:55', '2019-11-08 03:26:55', 'ac76aa35-1b1d-45ea-a4bf-2d0e81c07475'),
(106, 106, 1, 'jojo3', 'post/jojo3', 1, '2019-11-08 07:53:40', '2019-11-08 08:18:56', 'adaf6dfb-1b03-4555-81b5-888d085b13f2'),
(107, 107, 1, 'jojo-bizzare-adventure-stardust-crusader', 'post/jojo-bizzare-adventure-stardust-crusader', 1, '2019-11-08 07:53:40', '2019-11-08 07:53:40', 'e08839d5-859d-4486-9b05-3ead48e68b7c'),
(108, 108, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '033e4cb5-bb09-44bb-adea-82530a084e88'),
(109, 109, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '45f09476-f1f8-4715-9dba-b5714c98b47d'),
(110, 110, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '44d56481-ab90-4568-8095-66610e434b55'),
(111, 111, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', 'f24f68e2-d4d0-4da5-81c0-bbf8bd380c84'),
(112, 112, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '6d2a704e-0945-4909-8cae-eaa9ea934670'),
(113, 113, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '7d53bf77-1230-4302-9e35-29ed6dab2ab8'),
(114, 114, 1, NULL, NULL, 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '5f65367b-f5bf-48dc-b05a-c42d411c21b9'),
(115, 115, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '3ae636a8-0cad-4c38-803d-5f1a30a961e2'),
(116, 116, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'a195caa9-a7bb-4f24-9687-fba37cd6d09b'),
(117, 117, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '391a771e-94ae-4811-a8a2-2f9c8de4d8bb'),
(118, 118, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '61701c01-65c0-47d5-8948-bf03e284191f'),
(119, 119, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '9d953689-827e-4b81-93cd-079071c4724b'),
(120, 120, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'a261907b-699b-415d-a8aa-68d1d3fca447'),
(121, 121, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'd35e01e6-b0fe-45df-ba0d-ab2e38e810b8'),
(122, 122, 1, NULL, NULL, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'e9432e5f-9494-4973-a524-f8eb09c997fa'),
(123, 123, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '135c9f2b-f5db-41b7-96f7-7a7065779982'),
(124, 124, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '8a5ace1a-5621-4ee5-8526-b3a863edc45a'),
(125, 125, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '1c0a5e00-577b-40c6-b902-de0823816ab3'),
(126, 126, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'fe57e2f2-dcf9-4b6d-884a-7294c9b4fd59'),
(127, 127, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'a7f84d3f-ad4b-4959-8b07-c5103f007dc0'),
(128, 128, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '01904880-6d2b-4541-86db-8ecc9750993f'),
(129, 129, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'ecac4ecb-eff0-48ba-9ba8-e71f277fbc79'),
(130, 130, 1, NULL, NULL, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '110c8d6c-6e59-4628-b056-d1717ee1ea44'),
(131, 131, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '81319e2c-87fe-41d6-92f9-99b25c5f3348'),
(132, 132, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '07141240-31b5-4d87-9331-cf1f6b813dfc'),
(133, 133, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '3ad083ec-50a1-4ce4-88ff-38c69a194c00'),
(134, 134, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '6f1c22b8-3ad2-4e59-8159-eb9db24e06b4'),
(135, 135, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '4c5ed816-732d-4678-ab84-fbf142627126'),
(136, 136, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '679e422f-e27c-4c31-9901-3a635958408c'),
(137, 137, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'd722180e-facb-4d8f-b533-196f0ca41ae9'),
(138, 138, 1, 'jojo-bizzare-adventure-stardust-crusader', 'post/jojo-bizzare-adventure-stardust-crusader', 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '0793aed5-4ba0-499c-807b-9606467f27d0'),
(139, 139, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '40b7132d-9c31-47ac-9021-1ee8f0eb1282'),
(140, 140, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '95ba4aaa-6607-4838-bbea-304fa90a96a0'),
(141, 141, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'f3658ae6-9dff-4f8b-9c23-f2e0def39314'),
(142, 142, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'b1494800-904c-4f7f-9cdf-a1f2317dade4'),
(143, 143, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '5a851818-bd47-4e03-9182-6913d87b2251'),
(144, 144, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '63929c3e-55f9-4e8b-ba0a-088477516fa0'),
(145, 145, 1, NULL, NULL, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '5f60a35e-ea7d-40cf-9e50-1c190e0d56eb'),
(146, 146, 1, 'jojo-bizzare-adventure-stardust-crusader', 'post/jojo-bizzare-adventure-stardust-crusader', 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'c0936168-a098-4b14-925f-2f002842001d'),
(147, 147, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'f27ee34e-f393-4d0a-825a-65abfcc6c554'),
(148, 148, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '23bcf98b-58a9-4b2f-b068-74bc3d583691'),
(149, 149, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '02937415-df89-43fe-a750-96e830f988a1'),
(150, 150, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'd73b9fd1-8dac-4d73-bcf4-0cccd6cf8314'),
(151, 151, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '169f6680-f167-438d-af1b-7ff0acc0c097'),
(152, 152, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'c045d6a4-a1ec-4df0-9e72-4e5b5128071e'),
(153, 153, 1, NULL, NULL, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '876d3260-020f-48bf-9882-c1dd63f4ba09'),
(154, 154, 1, 'bnha1', 'post/bnha1', 1, '2019-11-08 08:14:38', '2019-11-08 08:14:38', 'ea903e8e-8bc6-4a87-84a9-f16f7e9816e3'),
(155, 155, 1, NULL, NULL, 1, '2019-11-08 08:14:38', '2019-11-08 08:14:38', 'c375b15e-48ef-474e-937b-1f0b407dee47'),
(156, 156, 1, 'jojo-bizzare-adventure-stardust-crusader', 'post/jojo-bizzare-adventure-stardust-crusader', 1, '2019-11-08 08:18:38', '2019-11-08 08:18:38', '9eabbf36-54d5-467c-8022-708461c40d79'),
(157, 157, 1, NULL, NULL, 1, '2019-11-08 08:18:38', '2019-11-08 08:18:38', 'c44f04c9-2206-4089-8b2e-5dbda98fd36f'),
(158, 158, 1, 'jojo3', 'post/jojo3', 1, '2019-11-08 08:18:56', '2019-11-08 08:18:56', '6a064281-756e-44a3-85f0-47961b4a5797'),
(159, 159, 1, NULL, NULL, 1, '2019-11-08 08:18:56', '2019-11-08 08:18:56', 'c4724605-0dd4-4180-b22d-a8b02bbd3076'),
(160, 160, 1, 'homepage', 'homepage', 1, '2019-11-08 08:19:22', '2019-11-08 08:19:22', '8acbdc38-e432-4b02-8fe7-3992f1996706'),
(161, 161, 1, NULL, NULL, 1, '2019-11-08 08:19:22', '2019-11-08 08:19:22', '63029846-9fd8-4cb3-97b6-ec5f3d9ecd23'),
(162, 162, 1, NULL, NULL, 1, '2019-11-08 08:19:22', '2019-11-08 08:19:22', '88274b80-077a-4d02-a140-1261ee169cf7'),
(163, 163, 1, 'jojo3', 'post/jojo3', 1, '2019-11-08 08:21:00', '2019-11-08 08:21:00', '36e8236b-aa86-4125-9c39-96b1c3c4344c'),
(164, 164, 1, NULL, NULL, 1, '2019-11-08 08:21:00', '2019-11-08 08:21:00', '51433fff-62f0-4c5d-af5b-ecb035530922'),
(165, 165, 1, 'anime', 'review/anime', 1, '2019-11-09 02:47:46', '2019-11-09 02:47:50', '60a49f56-eaa5-4738-9b41-7e4925d3898d'),
(166, 166, 1, 'homepage', 'homepage', 1, '2019-11-09 02:51:40', '2019-11-09 02:51:40', 'f0cf33fa-b3e7-4cfe-87ae-a4a21286eb44'),
(167, 167, 1, NULL, NULL, 1, '2019-11-09 02:51:40', '2019-11-09 02:51:40', '7cb6c517-1ea3-4857-ac24-73329a34f786'),
(168, 168, 1, NULL, NULL, 1, '2019-11-09 02:51:40', '2019-11-09 02:51:40', '98453b7f-55d4-495d-908f-bbd631b58304'),
(169, 169, 1, 'anime', 'kategori/anime', 1, '2019-11-09 02:54:12', '2019-11-14 01:17:06', '387da9a8-903d-4ca1-bf89-9a56275b0d5f'),
(170, 170, 1, 'manga', 'kategori/manga', 1, '2019-11-09 02:54:26', '2019-11-13 04:16:34', 'bb0f1fae-8056-4819-b621-4e4345747e7f'),
(171, 171, 1, 'homepage', 'homepage', 1, '2019-11-09 02:54:56', '2019-11-09 02:54:56', '656e54b9-e02a-4780-99c5-134c390bf919'),
(172, 172, 1, NULL, NULL, 1, '2019-11-09 02:54:56', '2019-11-09 02:54:56', '1ebdb5f3-fef6-40a6-b40b-44e5a4e8241c'),
(173, 173, 1, NULL, NULL, 1, '2019-11-09 02:54:56', '2019-11-09 02:54:56', '81804d18-bea0-41fc-b1a8-25eae7615b0d'),
(174, 174, 1, NULL, NULL, 1, '2019-11-09 03:02:24', '2019-11-09 03:02:24', 'a4083d4a-80f8-4b79-b28c-22b0032f24e5'),
(175, 175, 1, 'homepage', 'homepage', 1, '2019-11-09 03:02:24', '2019-11-09 03:02:24', '59f2417a-34cb-4ffb-8e52-4add1785b44d'),
(176, 176, 1, NULL, NULL, 1, '2019-11-09 03:02:24', '2019-11-09 03:02:24', 'b1dd5f5a-0170-4a41-a31c-352d31294160'),
(177, 177, 1, NULL, NULL, 1, '2019-11-09 03:02:24', '2019-11-09 03:02:24', '7fe585a1-a76c-48e4-b839-b613c5416b1b'),
(178, 178, 1, NULL, NULL, 1, '2019-11-09 03:02:24', '2019-11-09 03:02:24', '3e594b57-e8ef-40ab-87a3-8a80d0ec95ec'),
(179, 179, 1, 'bnha1', 'post/bnha1', 1, '2019-11-09 03:12:18', '2019-11-09 03:12:18', '61618333-9a51-41c5-92bf-6d036a23563e'),
(180, 180, 1, NULL, NULL, 1, '2019-11-09 03:12:18', '2019-11-09 03:12:18', '6d3b26de-aa28-4610-80e6-1a3688723263'),
(181, 181, 1, 'jojo3', 'post/jojo3', 1, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '3f27b4d4-d726-4173-b2fe-a1b990d97eea'),
(182, 182, 1, NULL, NULL, 1, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '9b6ea11f-5dfb-4522-8d86-d10ce4320ab3'),
(183, 183, 1, 'homepage', 'homepage', 1, '2019-11-09 03:12:53', '2019-11-09 03:12:53', 'a59fdf06-8e76-4c1b-b822-ae4915c82453'),
(184, 184, 1, NULL, NULL, 1, '2019-11-09 03:12:53', '2019-11-09 03:12:53', '2f5ef6b4-846d-4639-a558-d575c507d25b'),
(185, 185, 1, NULL, NULL, 1, '2019-11-09 03:12:53', '2019-11-09 03:12:53', '32a5096c-a924-42c8-91c3-dd2644dc2eac'),
(186, 186, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-09 03:16:26', '2019-11-09 03:16:26', '08b2693b-0fba-40d0-a62a-bbbaadfedc66'),
(187, 187, 1, NULL, NULL, 1, '2019-11-09 03:16:26', '2019-11-09 03:16:26', '4de09d32-5bf1-41ac-9df2-898554ea4a00'),
(188, 188, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '66f88843-339c-4f75-a975-44f4b24c42ec'),
(189, 189, 1, NULL, NULL, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '995e0421-5e22-4c41-b4ee-c2b3074a7fe1'),
(190, 190, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '6e60d298-490e-4181-8b6a-dee292807a1d'),
(191, 191, 1, NULL, NULL, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'a2f8afa4-ab4b-4ec2-974e-91fe7af9005b'),
(192, 192, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-09 03:17:00', '2019-11-09 03:17:00', 'c0d730b1-c356-445b-84a4-afeb5299d3c1'),
(193, 193, 1, NULL, NULL, 1, '2019-11-09 03:17:00', '2019-11-09 03:17:00', 'd754879a-a1f2-4e56-8c9d-8e640f75e08b'),
(194, 194, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '8a4fe6d4-435f-4842-b05d-e173af2eaa99'),
(195, 195, 1, NULL, NULL, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '5712b98d-5fca-4e62-8a87-a1a2496e0c9a'),
(196, 196, 1, 'homepage', 'homepage', 1, '2019-11-09 03:18:59', '2019-11-09 03:18:59', 'bb4eb022-05c1-4e1c-9478-b9e3996ccbbe'),
(197, 197, 1, 'jojo3', 'post/jojo3', 1, '2019-11-09 03:46:33', '2019-11-09 03:46:33', '97daaa57-1530-4e92-a8a1-d4adcdbab867'),
(198, 198, 1, NULL, NULL, 1, '2019-11-09 03:46:33', '2019-11-09 03:46:33', '2c02e3a1-2d0a-4bb9-8ffc-868284198c68'),
(199, 199, 1, 'jojo3', 'post/jojo3', 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '9d111dde-c4cc-4984-8687-eec8020c7fa0'),
(200, 200, 1, NULL, NULL, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'd9b6b17b-c511-416e-b346-d77d760869eb'),
(201, 201, 1, 'bnha1', 'post/bnha1', 1, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '5a2cb71d-9048-41dc-bbb2-d3f69b5e4f1d'),
(202, 202, 1, NULL, NULL, 1, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '15d0e3c7-12a6-46f7-8647-c247da3a838e'),
(203, 203, 1, 'bnha1', 'post/bnha1', 1, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '0eb8ee0b-a3ca-4f42-bbc0-e822fb194169'),
(204, 204, 1, NULL, NULL, 1, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '64c49e48-3aa9-472c-9b84-f45239be1da1'),
(205, 205, 1, '__temp_23KxBFxn06G5og8GuAPjqgaoohSm4iAJREAP', '__temp_23KxBFxn06G5og8GuAPjqgaoohSm4iAJREAP', 1, '2019-11-09 07:40:05', '2019-11-09 07:40:05', '0c63d240-e56f-4d71-bd68-d737204591ff'),
(207, 207, 1, 'about', 'about', 1, '2019-11-09 07:42:06', '2019-11-09 07:42:06', 'd15bf3d3-b4de-4e3c-bd8d-95cecfcf9d6b'),
(208, 208, 1, 'about', 'about', 1, '2019-11-09 07:42:06', '2019-11-09 07:42:06', '94722419-8d92-41d3-83b3-0401df421281'),
(209, 209, 1, 'about', 'about', 1, '2019-11-09 07:44:08', '2019-11-09 07:44:08', 'b58211f6-2fca-4953-b295-8a147790fc12'),
(210, 210, 1, 'about', 'about', 1, '2019-11-09 08:01:43', '2019-11-09 08:01:43', '9ddb0dab-0467-413f-884e-7169af966be3'),
(211, 211, 1, 'about', 'about', 1, '2019-11-09 08:03:36', '2019-11-09 08:03:36', '441db468-891c-412a-b7b2-4c5a10c7d38f'),
(212, 212, 1, 'about', 'about', 1, '2019-11-09 08:03:44', '2019-11-09 08:03:44', 'bf0d1b63-7b4e-4e2e-870d-e73874c20dd9'),
(213, 213, 1, 'about', 'about', 1, '2019-11-09 08:13:30', '2019-11-09 08:13:30', '027830df-6253-4848-bdcd-8e180d6ca574'),
(215, 215, 1, 'homepage', 'homepage', 1, '2019-11-11 06:14:31', '2019-11-11 06:14:31', 'df8b632c-4d7f-4737-8158-3932de8c6b65'),
(216, 216, 1, 'homepage', 'homepage', 1, '2019-11-11 06:14:31', '2019-11-11 06:14:31', 'e8ca1fd8-6f38-46a7-8774-ea59f9c19c8d'),
(217, 217, 1, 'homepage', 'homepage', 1, '2019-11-11 06:17:47', '2019-11-11 06:17:47', '1293e7db-4c29-4d38-ba55-75341ea3df75'),
(218, 218, 1, 'homepage', 'homepage', 1, '2019-11-11 06:24:58', '2019-11-11 06:24:58', 'df848509-5c7c-45c7-87ab-7dd0a1c5add6'),
(219, 219, 1, 'homepage', 'homepage', 1, '2019-11-11 06:26:28', '2019-11-11 06:26:28', '018f6741-84b6-43c4-9f23-8f20f8597224'),
(220, 220, 1, 'homepage', 'homepage', 1, '2019-11-11 06:26:40', '2019-11-11 06:26:40', 'db83b0e5-24e6-4b12-9869-d8eb13475265'),
(221, 221, 1, 'homepage', 'homepage', 1, '2019-11-11 06:33:55', '2019-11-11 06:33:55', 'ea7b14f6-ae72-4f1b-8b1b-a4e1ffa4f113'),
(222, 222, 1, 'homepage', 'homepage', 1, '2019-11-11 06:37:09', '2019-11-11 06:37:09', '9f9e4beb-c37c-4f1c-94aa-60a6b9e7453b'),
(223, 223, 1, 'homepage', 'homepage', 1, '2019-11-11 06:40:06', '2019-11-11 06:40:06', '87d7e06d-4a35-43ac-9d1b-42c457b5f729'),
(224, 224, 1, 'homepage', 'homepage', 1, '2019-11-11 06:41:13', '2019-11-11 06:41:13', 'dd51fdcf-65d3-4d8a-bd38-8b28e445ce63'),
(225, 225, 1, 'about', 'about', 1, '2019-11-12 02:06:11', '2019-11-12 02:06:11', '82bbe1b8-1abd-4fff-b8db-7d128405bb6d'),
(226, 226, 1, 'bnha1', 'post/bnha1', 1, '2019-11-12 03:04:11', '2019-11-12 03:04:11', '3ad90811-95eb-44c6-8bba-bd1d91dcd087'),
(227, 227, 1, NULL, NULL, 1, '2019-11-12 03:04:11', '2019-11-12 03:04:11', '489f0111-cbb7-4acb-ab2c-75aaf2b86acb'),
(229, 229, 1, 'about', 'about', 1, '2019-11-12 06:57:29', '2019-11-12 07:27:01', '158d7405-6202-4761-8ed9-505654718aaf'),
(230, 230, 1, 'about-1', 'about-1', 1, '2019-11-12 06:57:29', '2019-11-12 06:57:29', '39c5b025-eaf0-4913-8aa8-7dcd92fcc3ce'),
(231, 231, 1, 'about-1', 'about-1', 1, '2019-11-12 06:57:46', '2019-11-12 06:57:46', '86cb0129-a956-4743-98c4-d4f8e13fc1fe'),
(232, 232, 1, 'about-1', 'about-1', 1, '2019-11-12 07:21:38', '2019-11-12 07:21:38', '5478c463-45fd-4c0d-86a2-bc21c1f7e291'),
(233, 233, 1, 'about-1', 'about-1', 1, '2019-11-12 07:24:32', '2019-11-12 07:24:32', '54063f47-b057-4fb4-a10e-d3631f84286b'),
(234, 234, 1, 'about-1', 'about-1', 1, '2019-11-12 07:25:41', '2019-11-12 07:25:41', '9815aa64-b009-4458-aeb4-5883d5467dcb'),
(235, 235, 1, 'about', 'about', 1, '2019-11-12 07:27:01', '2019-11-12 07:27:01', 'd548b680-92fe-4090-af1a-a020f3232122'),
(237, 237, 1, 'kategori', 'kategori', 1, '2019-11-12 07:30:29', '2019-11-12 07:30:32', 'e3ddaadc-5516-42c4-86c2-9dc1c294e0c2'),
(238, 238, 1, 'kategori', 'kategori', 1, '2019-11-12 07:30:29', '2019-11-12 07:30:29', '1234b532-c903-48c6-b69e-6fe7ce3f8bd1'),
(240, 240, 1, 'anime', 'anime', 1, '2019-11-12 07:30:53', '2019-11-12 07:55:23', '3d6795a7-8441-4450-bdc2-6704dbc3cb3e'),
(241, 241, 1, 'anime', 'anime', 1, '2019-11-12 07:30:53', '2019-11-12 07:30:53', 'c5f2a3f0-07ff-40f4-ac54-8058b46b1a78'),
(242, 242, 1, 'anime', 'anime', 1, '2019-11-12 07:31:08', '2019-11-12 07:31:08', '3d6df032-ebf8-4a21-b7c3-3c74f8ee3620'),
(244, 244, 1, 'manga', 'manga', 1, '2019-11-12 07:31:26', '2019-11-12 07:55:23', '0c063ba5-7806-4cd5-a7a6-1ce9b6e7986d'),
(245, 245, 1, 'manga', 'manga', 1, '2019-11-12 07:31:26', '2019-11-12 07:31:26', '5b3dd63f-26f6-4c98-9cbf-4e5f1758a17b'),
(246, 246, 1, 'kategori', 'kategori', 1, '2019-11-12 07:55:20', '2019-11-12 07:55:20', '43afa841-bd58-4c89-9763-9903d381c330'),
(247, 247, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-13 01:34:14', '2019-11-13 01:34:14', '91bf98aa-13a3-410c-a65d-6abbe50c7861'),
(248, 248, 1, NULL, NULL, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '24bc8452-3149-4e05-b375-bd0270ef6c67'),
(249, 249, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '6d7d4e80-b427-418b-90de-8cc02717c7fe'),
(250, 250, 1, NULL, NULL, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '45b16fe7-9052-4092-a2ed-ff0544010e54'),
(251, 251, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '2464db0a-2642-4559-ba67-2642f388ab36'),
(252, 252, 1, NULL, NULL, 1, '2019-11-13 01:34:42', '2019-11-13 01:34:42', 'b5bb9711-2b3a-4172-95f9-55a38fb87509'),
(253, 253, 1, 'anime', 'anime', 1, '2019-11-13 03:46:34', '2019-11-13 03:46:34', '0df205b4-24c8-4c40-85d5-67d321f967f1'),
(254, 254, 1, 'manga', 'manga', 1, '2019-11-13 03:46:44', '2019-11-13 03:46:44', 'e4b1a09c-3982-4443-afd4-94ad1e471d07'),
(256, 256, 1, 'about', 'about', 1, '2019-11-13 03:58:26', '2019-11-13 03:58:26', '86b558e5-d056-429e-a1c3-0a2bc2fdefed'),
(257, 257, 1, 'about', 'about', 1, '2019-11-13 03:58:26', '2019-11-13 03:58:26', 'ae138217-68de-45f4-9408-a921129ff517'),
(258, 258, 1, 'about', 'about', 1, '2019-11-13 03:59:53', '2019-11-13 03:59:53', 'b9bf413c-6682-493e-ae1d-f1f05baf6752'),
(259, 259, 1, 'about', 'about', 1, '2019-11-13 04:00:25', '2019-11-13 04:00:25', '8329717c-1833-4e46-aad4-eeb7a38382d2'),
(261, 261, 1, 'kategori', 'kategori', 1, '2019-11-13 04:09:47', '2019-11-13 04:09:47', '2cb5295c-748c-4a5a-8c15-c4dbacd3cbe2'),
(262, 262, 1, 'kategori', 'kategori', 1, '2019-11-13 04:09:47', '2019-11-13 04:09:47', 'cef9b53d-5404-491b-933f-3b52a4f3de96'),
(263, 263, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-14 00:40:30', '2019-11-14 00:40:30', '2317b394-a526-4650-8d32-ce023becc6d7'),
(264, 264, 1, NULL, NULL, 1, '2019-11-14 00:40:30', '2019-11-14 00:40:30', 'dec23ff0-d887-4be5-ac3f-0ca1c55aa514'),
(265, 265, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-14 00:41:30', '2019-11-14 00:41:30', 'ad05064c-53ea-4446-b497-b854739f5489'),
(266, 266, 1, NULL, NULL, 1, '2019-11-14 00:41:30', '2019-11-14 00:41:30', 'b0b57b23-43d6-4c59-a05f-3f0124b730c1'),
(267, 267, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '0521c1e6-e77e-48c3-ada4-16b3e46eeb68'),
(268, 268, 1, NULL, NULL, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', 'f0c34243-9ef7-43e0-b5cb-75c1059d3667'),
(269, 269, 1, 'bnha1-1-1', 'post/bnha1-1-1', 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '8f59b065-56db-4477-acd1-fb1b1bdbbb71'),
(270, 270, 1, NULL, NULL, 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '2cfa63a3-3d1a-4293-9066-36d04a2e9434'),
(271, 271, 1, 'bnha1-1-1', 'post/bnha1-1-1', 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '2e0355af-7007-4573-ae64-87895bad407f'),
(272, 272, 1, NULL, NULL, 1, '2019-11-14 01:18:59', '2019-11-14 01:18:59', 'ab11dc6b-a72e-4920-8ee4-941f80124e7b'),
(273, 273, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-14 01:19:05', '2019-11-14 01:19:05', '0955e79e-1754-49b4-b9b4-6bb625e8ce92'),
(274, 274, 1, NULL, NULL, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'c4712288-9cac-4831-a1a0-6d7eaa90668b'),
(275, 275, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'c6e94cd8-cf08-4bee-b480-f0879d439066'),
(276, 276, 1, NULL, NULL, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '51f599d4-f28e-40d0-abe6-961145daa527'),
(277, 277, 1, 'bnha1-1-2', 'post/bnha1-1-2', 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '27498641-41ff-43b8-8ebf-4062a06fb7cd'),
(278, 278, 1, NULL, NULL, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '4698e8af-677c-4bc5-a0cd-2af064a0416e'),
(279, 279, 1, 'bnha1-1-2', 'post/bnha1-1-2', 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '56039be1-306b-45ba-bbb6-d989a3d038ce'),
(280, 280, 1, NULL, NULL, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '98fa7160-fe1c-46c8-9962-c57b9f0f113d'),
(281, 281, 1, 'bnha1', 'post/bnha1', 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', '4b6c5564-e72b-4100-b271-bfa9568ac224'),
(282, 282, 1, NULL, NULL, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', '688ea449-e194-4641-9e08-b8c12398f72d'),
(283, 283, 1, '__temp_sJQSebWhyxdbMv90Prk9WvR3DqxneJUgNYUC', 'post/__temp_sJQSebWhyxdbMv90Prk9WvR3DqxneJUgNYUC', 1, '2019-11-14 07:23:16', '2019-11-14 07:23:16', '7bd1e191-d03c-4dfc-a04c-a270c91d0edf'),
(284, 284, 1, NULL, NULL, 1, '2019-11-14 07:23:26', '2019-11-14 07:23:26', '6c9b1051-ff66-4810-ad16-b88b6a921bed'),
(286, 286, 1, NULL, NULL, 1, '2019-11-14 07:23:52', '2019-11-14 07:23:52', 'fc7f5dfb-49d3-4176-b87d-271a81a78337'),
(287, 287, 1, NULL, NULL, 1, '2019-11-14 07:23:57', '2019-11-14 07:23:57', '2502241d-9446-47f5-99fe-21327e514ce6'),
(288, 288, 1, NULL, NULL, 1, '2019-11-14 07:23:58', '2019-11-14 07:23:58', 'b43e1ac8-32d5-4924-b02f-6ee11d7e4135'),
(289, 289, 1, NULL, NULL, 1, '2019-11-14 07:24:09', '2019-11-14 07:24:09', '18a4114f-091a-4d69-b639-d7c4f3e771fc'),
(290, 290, 1, NULL, NULL, 1, '2019-11-14 07:24:33', '2019-11-14 07:24:33', '650a02fa-07d0-4454-899b-9ba81cba474e'),
(291, 291, 1, NULL, NULL, 1, '2019-11-14 07:24:35', '2019-11-14 07:24:35', '698112eb-7459-4062-aaa8-ea1e1b3adfa8'),
(292, 292, 1, NULL, NULL, 1, '2019-11-14 07:24:39', '2019-11-14 07:24:39', '3cf2b2e2-b5be-4721-98b0-eaa73d3ff85e'),
(293, 293, 1, NULL, NULL, 1, '2019-11-14 07:30:54', '2019-11-14 07:30:54', '5f0a2a2b-70b0-482a-bd51-7979c3d77b17'),
(294, 294, 1, NULL, NULL, 1, '2019-11-14 07:31:50', '2019-11-14 07:31:50', 'd2bef623-2fa5-443e-9bcb-f1476a6ebc06'),
(295, 295, 1, NULL, NULL, 1, '2019-11-14 07:31:51', '2019-11-14 07:31:51', 'db172d52-8935-4632-b674-949af68c682e'),
(296, 296, 1, NULL, NULL, 1, '2019-11-14 07:31:55', '2019-11-14 07:31:55', '40234233-fb5f-4e76-8a9c-7732002d9c3e'),
(297, 297, 1, NULL, NULL, 1, '2019-11-14 07:32:42', '2019-11-14 07:32:42', 'b3df9dd0-6b29-42ca-aa09-4dcfeeb01b5e'),
(298, 298, 1, NULL, NULL, 1, '2019-11-14 07:32:44', '2019-11-14 07:32:44', 'a51818f2-3339-4cad-8555-cbd25f53e47d'),
(299, 299, 1, NULL, NULL, 1, '2019-11-14 07:32:48', '2019-11-14 07:32:48', 'b618c977-9ff7-419b-b600-93b5dcde5ab9'),
(301, 301, 1, 'darwins-game', 'post/darwins-game', 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '5c3f3ad5-922b-45d4-8b27-95ad3919007c'),
(302, 302, 1, NULL, NULL, 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '8c5271d1-2d0b-49c8-9025-64b921e26c87'),
(303, 303, 1, 'darwins-game', 'post/darwins-game', 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '6a028dee-78d2-4639-b7ba-04285fb54382'),
(304, 304, 1, NULL, NULL, 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '369c9b49-b39b-44c7-a638-de2506421f9e'),
(305, 305, 1, NULL, NULL, 1, '2019-11-14 07:36:02', '2019-11-14 07:36:02', '14308a7e-f162-45e8-909f-f6b792ac368c'),
(306, 306, 1, 'darwins-game', 'post/darwins-game', 1, '2019-11-14 07:38:59', '2019-11-14 07:38:59', 'd1a19f9a-99f8-415b-9bdf-6d3dda4d4b84'),
(307, 307, 1, NULL, NULL, 1, '2019-11-14 07:38:59', '2019-11-14 07:38:59', '6d0585ba-e7a6-42a6-904b-f7932cc7f03d'),
(308, 308, 1, 'darwins-game', 'post/darwins-game', 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', '11eb6adf-74dc-4dc2-976d-3c20c657e534'),
(309, 309, 1, NULL, NULL, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'd7114e00-c2a1-4a75-99c9-3a4f1b11b17b'),
(310, 310, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-14 07:43:48', '2019-11-14 07:43:48', 'd0f2ae90-3272-4388-bf91-f6da24ba6c4d'),
(311, 311, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'ff468a3a-95d9-47dd-8e6d-7cae2534fabe'),
(312, 312, 1, 'bnha1-1', 'post/bnha1-1', 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '8b3ab0a4-cf19-465c-8f61-a2e69f9d02ea'),
(313, 313, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'b57041fb-0dee-41b2-9c02-4cfc1cf486b2'),
(314, 314, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '06aeb085-ea63-46fd-b509-78264b3563cb'),
(315, 315, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '2be8b792-9bbf-40d9-8999-d02df714c34e'),
(316, 316, 1, 'jojo3-1', 'post/jojo3-1', 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '5afc1e15-ec79-43c7-9f56-2d318fa704e4'),
(317, 317, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'beea58f5-bb9e-4a80-ad57-4f3b903b3b2c'),
(318, 318, 1, 'darwins-game-1', 'post/darwins-game-1', 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'b6c08efd-e525-48e8-8ee0-db3e38c9b71d'),
(319, 319, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'd58d9725-8a96-4024-b8ef-d06f2327aeda'),
(320, 320, 1, 'darwins-game-1', 'post/darwins-game-1', 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '9f434631-4986-445c-8fa8-025867422e02'),
(321, 321, 1, NULL, NULL, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '9c28b356-32ac-4803-851f-545965b93f5c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_entries`
--

CREATE TABLE `blog_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_entries`
--

INSERT INTO `blog_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, 1, '2019-11-06 04:53:24', '2019-11-06 04:53:24', 'd67407e5-299c-49af-adba-1fbde787e8d0'),
(4, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, NULL, '2019-11-06 04:53:25', '2019-11-06 04:53:25', '632715f6-79c8-4d5a-b75c-04d013f6c249'),
(6, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, NULL, '2019-11-06 04:54:04', '2019-11-06 04:54:04', 'b3f9e23d-4544-4f08-9bb5-d6fe994a7874'),
(7, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, NULL, '2019-11-06 06:10:21', '2019-11-06 06:10:21', '9b648aad-f7d6-4883-a303-110ee1cddfb8'),
(8, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, NULL, '2019-11-06 06:12:12', '2019-11-06 06:12:12', '9be0c8c2-3c59-4edb-9d24-3a81d2b3a936'),
(10, 3, NULL, 3, 1, '2019-11-06 04:52:00', NULL, NULL, '2019-11-06 06:54:12', '2019-11-06 06:54:12', '9f685367-4ea9-42d2-99b4-30213d12e938'),
(11, 3, NULL, 3, 1, '2019-11-06 06:54:00', NULL, NULL, '2019-11-06 06:54:49', '2019-11-06 06:54:49', 'bb0577c1-5453-4b8b-8d9f-ae83dfd3a86a'),
(13, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 02:32:22', '2019-11-07 02:32:22', '46369cd0-e9af-48a7-a2c6-24b93a224ebf'),
(14, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 02:32:22', '2019-11-07 02:32:22', '2cde9416-c430-4745-bba3-dc6a7175aa44'),
(17, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 02:34:02', '2019-11-07 02:34:02', 'a3ec9791-dbda-4b62-bd71-a33ae361d522'),
(18, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 02:35:26', '2019-11-07 02:35:26', '0229a0a6-abd5-4018-9155-cdb6ccac4edf'),
(19, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 02:41:47', '2019-11-07 02:41:47', 'c1cf96c5-d4f3-423c-b833-3fd5b4c2c6ca'),
(22, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:02:48', '2019-11-07 06:02:48', '8d45385c-e92c-4bb6-b551-b047c34a819f'),
(23, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:18:03', '2019-11-07 06:18:03', '4685504b-67e4-4f72-a4b2-c344d00ccc21'),
(24, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:18:24', '2019-11-07 06:18:24', '2c0270a3-3d81-435e-b71e-dab5603c300f'),
(26, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:18:50', '2019-11-07 06:18:50', '530e115b-1513-4d0d-a3b7-3212665ffcc6'),
(27, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:19:28', '2019-11-07 06:19:28', '030d0690-6edf-4520-a06e-e5d079860c9f'),
(28, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:26:04', '2019-11-07 06:26:04', '9e9b1cc8-adc6-41a7-a9a9-88c026383394'),
(29, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:34:30', '2019-11-07 06:34:30', '2b1eed2d-0a43-4f6d-8fb5-bae2a979dbc8'),
(30, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:34:54', '2019-11-07 06:34:54', '79f43071-4e4b-4f23-8d63-2a8e7c1e8b4a'),
(31, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:35:15', '2019-11-07 06:35:15', 'b2cd017c-55f0-4422-8c8e-839dda9e0eab'),
(32, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:36:04', '2019-11-07 06:36:04', 'd94e168c-0616-482c-a6a7-e26587a34ce6'),
(33, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:37:22', '2019-11-07 06:37:22', 'cb5d815b-88f0-442b-bca2-b84de4f5abfd'),
(34, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:37:44', '2019-11-07 06:37:44', 'f6b287cd-e26a-4756-ae59-25780f4b858c'),
(35, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:38:14', '2019-11-07 06:38:14', '2026a498-e969-4f30-814f-8f49f93a259e'),
(36, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:38:17', '2019-11-07 06:38:17', '7b11d60b-057b-4f18-8bc2-6bc5fd38b00f'),
(37, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:38:44', '2019-11-07 06:38:44', '9357f7a4-0eca-4582-bbe8-fc5327c77396'),
(38, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:39:40', '2019-11-07 06:39:40', '9b7aa21b-0350-4a98-86be-58ccde838f08'),
(39, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:46:30', '2019-11-07 06:46:30', '7e94c73e-c6dd-4919-b317-130ad8680664'),
(40, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:46:50', '2019-11-07 06:46:50', '2c57a310-7e85-4ab6-aec1-4b00aece3447'),
(41, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 06:47:14', '2019-11-07 06:47:14', '81a6ee96-2184-4f5e-90c4-2892332edf70'),
(42, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:02:55', '2019-11-07 07:02:55', '9d454ebd-d288-400e-9fd6-7ab89da42a59'),
(43, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:02:56', '2019-11-07 07:02:56', '6f2d6737-0e13-4aad-b356-0101a272a135'),
(44, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:02:57', '2019-11-07 07:02:57', '6f8db9cc-4bc2-4370-a36d-f88a3a8204e3'),
(45, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:03:15', '2019-11-07 07:03:15', '7bfb6122-6cbf-4f95-8aa7-f596da604755'),
(46, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:03:23', '2019-11-07 07:03:23', '61d8920e-8f3f-4f08-a024-b4b5f306f9d2'),
(47, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:12:43', '2019-11-07 07:12:43', '48ea3f1b-b4ac-44e8-905a-e7958d85b7dd'),
(48, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-07 07:19:24', '2019-11-07 07:19:24', '360d6523-2122-46c0-bb7f-0f3021271eba'),
(49, 7, NULL, 8, NULL, '2019-11-08 01:07:00', NULL, 1, '2019-11-08 01:07:33', '2019-11-08 01:07:33', 'd2a7bd7a-e6e8-4a9f-b51b-ba30f137bfef'),
(50, 7, NULL, 8, NULL, '2019-11-08 01:07:00', NULL, NULL, '2019-11-08 01:07:33', '2019-11-08 01:07:33', 'c941d17a-8d75-4a4f-8951-22583ae60241'),
(51, 7, NULL, 8, NULL, '2019-11-08 01:07:00', NULL, NULL, '2019-11-08 01:07:34', '2019-11-08 01:07:34', '612f10a6-b290-4f1f-b467-efb3baf7edc6'),
(52, 7, NULL, 8, NULL, '2019-11-08 01:07:00', NULL, NULL, '2019-11-08 01:08:51', '2019-11-08 01:08:51', '38379c97-5c4c-4b23-ae48-4a25c1bb42b5'),
(53, 7, NULL, 8, NULL, '2019-11-08 01:07:00', NULL, NULL, '2019-11-08 01:09:35', '2019-11-08 01:09:35', '6e697b09-c844-4797-9213-70c01ad557ec'),
(54, 8, NULL, 9, 1, '2019-11-08 01:29:00', NULL, 0, '2019-11-08 01:29:42', '2019-11-08 02:25:29', '292f7442-acd3-4b2d-91ba-46cf3269b76b'),
(55, 8, NULL, 9, NULL, '2019-11-08 01:29:00', NULL, NULL, '2019-11-08 01:29:42', '2019-11-08 01:29:42', 'a31d664c-2567-42e2-a7f2-a72110415222'),
(58, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 02:03:44', '2019-11-08 02:03:44', 'd3e95964-5df4-46a8-b8a2-9e03fb5087fe'),
(59, 6, NULL, 6, 1, '2019-11-08 02:23:00', NULL, NULL, '2019-11-08 02:23:09', '2019-11-08 02:23:09', 'e832015f-e9e5-4048-b0eb-7fecbc0e977b'),
(60, 8, NULL, 9, NULL, '2019-11-08 01:29:00', NULL, NULL, '2019-11-08 02:23:57', '2019-11-08 02:23:57', '20678897-5238-40f6-a7e5-fecfd7769e96'),
(61, 6, NULL, 6, 1, '2019-11-08 02:24:00', NULL, NULL, '2019-11-08 02:24:04', '2019-11-08 02:24:04', 'bfef45a7-8916-4f78-88a5-3351fa24ea1c'),
(62, 6, NULL, 6, 1, '2019-11-08 02:25:00', NULL, NULL, '2019-11-08 02:25:37', '2019-11-08 02:25:37', '02fa6324-3302-46ce-9270-e13111993fbf'),
(63, 8, NULL, 9, 1, '2019-11-08 02:25:00', NULL, NULL, '2019-11-08 02:25:46', '2019-11-08 02:25:46', 'a9bdf75f-db0a-4287-993a-36cff6e2e528'),
(85, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, 0, '2019-11-08 02:29:15', '2019-11-08 02:29:15', 'e8d574d2-e613-4cee-8e22-6262f1967d33'),
(88, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 02:29:15', '2019-11-08 02:29:15', 'e6c40a6c-6c30-4e3b-8a25-c6d203179646'),
(91, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 02:29:51', '2019-11-08 02:29:51', '9e5f3f0d-c066-40eb-8fd5-23658084bf92'),
(94, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 02:30:12', '2019-11-08 02:30:12', '11abf707-a664-43d2-8a6d-177853f6c2c2'),
(97, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 02:33:08', '2019-11-08 02:33:08', 'afedac9b-c87c-4501-8d25-47973625fd6a'),
(100, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 02:40:04', '2019-11-08 02:40:04', 'ba31f391-f6fb-40b0-acf2-af6a805f8af6'),
(103, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 02:49:39', '2019-11-08 02:49:39', '2754b9f7-afd4-44cc-9686-bd6b17fdf4c8'),
(104, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 03:26:55', '2019-11-08 03:26:55', 'deeb5d56-5d0d-40e7-87a0-0d9ffaad18f9'),
(106, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 07:53:40', '2019-11-08 07:53:40', '11ce3c22-e89e-4c81-a92d-efc930620afa'),
(107, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 07:53:40', '2019-11-08 07:53:40', '2fbdbc73-3a4f-4532-bd61-3407de99b6b0'),
(115, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '3fb8864c-202d-40c6-aca7-b7ce0c7a9542'),
(123, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '67f55597-4355-4e1a-b11c-799ae4b47b03'),
(138, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '59ce21ec-f057-4c00-9006-52c570074949'),
(146, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '797bf6ab-2b7e-466b-93e2-3064ad6dcf7a'),
(154, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-08 08:14:38', '2019-11-08 08:14:38', '7c37350b-32e0-48e1-895f-c054f822cef8'),
(156, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 08:18:38', '2019-11-08 08:18:38', '042eb410-e37b-491d-ab9c-1f08d7f84f85'),
(158, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 08:18:56', '2019-11-08 08:18:56', '45d054b9-8a6d-47dd-80ae-ccac294f53cc'),
(160, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-08 08:19:22', '2019-11-08 08:19:22', 'ea5d81b6-0514-4c11-9f22-74c9c3f80177'),
(163, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-08 08:21:00', '2019-11-08 08:21:00', '2bec2984-3312-4f50-87e9-6d8ca5ccd306'),
(166, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-09 02:51:40', '2019-11-09 02:51:40', '0d57fc18-ef3e-49a2-b24f-c79efc756782'),
(171, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-09 02:54:56', '2019-11-09 02:54:56', '807a0db3-ac1d-4b83-8879-cd947e523901'),
(175, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-09 03:02:24', '2019-11-09 03:02:24', 'aa6af11b-3dc4-4690-bf17-57848dbf27e6'),
(179, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-09 03:12:18', '2019-11-09 03:12:18', 'aa4c4b73-6cda-4460-aa3f-e9e05151809d'),
(181, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '4f6a1695-ae5e-4c43-b5b6-221f40f17357'),
(183, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-09 03:12:53', '2019-11-09 03:12:53', '3dd74a1f-dd13-41f2-9968-1ae3c28b096f'),
(186, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, 0, '2019-11-09 03:16:26', '2019-11-09 03:16:26', 'c0cacd26-12c7-4dc2-b36d-8c597dfde20f'),
(188, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '96e07327-36b3-4880-a765-4967f23d72f0'),
(190, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'cda11856-74bc-42c4-9bb6-9f78cb9a01f9'),
(192, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:17:00', '2019-11-09 03:17:00', '55bb6b02-5407-417e-a5b5-76e81bd2c241'),
(194, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '6baed04e-7879-4da0-86bc-c275a38c6fd5'),
(196, 8, NULL, 9, 1, '2019-11-08 02:28:00', NULL, NULL, '2019-11-09 03:18:59', '2019-11-09 03:18:59', '14e1335f-16ea-459f-9858-fbd7df947676'),
(197, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:46:33', '2019-11-09 03:46:33', 'cdb5adbd-bdc3-4c7e-b2d7-547f9672ae4f'),
(199, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'f03f3653-d728-4b86-96a1-c7567153b131'),
(201, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '0d2cfde4-ebc8-4b3c-9843-0eea11591ad4'),
(203, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '58d372d5-aed7-47a1-b072-46ab703a5e0c'),
(205, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 07:40:05', '2019-11-09 07:40:12', '1ce86b96-c731-4009-a9e8-20348fd6d790'),
(207, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, 0, '2019-11-09 07:42:06', '2019-11-09 07:42:06', '67764678-2ecf-44fb-be37-30f892e32932'),
(208, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 07:42:06', '2019-11-09 07:42:06', '1ce58988-01a0-419c-8a25-a0bb6acb196e'),
(209, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 07:44:08', '2019-11-09 07:44:08', '7fd2388c-3809-4325-b678-8d317b4d871d'),
(210, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 08:01:43', '2019-11-09 08:01:43', '9c0395c0-7445-4057-8d99-3d747177adfc'),
(211, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 08:03:36', '2019-11-09 08:03:36', '7a2e8bff-7896-4ef5-a19e-bdf46e4e7ed4'),
(212, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 08:03:44', '2019-11-09 08:03:44', '215af81e-4119-43d5-be1b-3457698a4115'),
(213, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-09 08:13:30', '2019-11-09 08:13:30', '0bacdef6-aa48-474d-989d-accc1e017a87'),
(215, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, 0, '2019-11-11 06:14:31', '2019-11-11 06:14:31', 'd5277c47-7e88-4448-98fb-30768e9be446'),
(216, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:14:31', '2019-11-11 06:14:31', 'e58d5757-ab2e-47b7-a645-c8b6ecfe8d48'),
(217, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:17:47', '2019-11-11 06:17:47', 'f23ba75b-d532-4bdc-9eef-db93331a00ec'),
(218, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:24:58', '2019-11-11 06:24:58', 'f0a5f058-8c8f-44b9-aaf5-01de08432a5b'),
(219, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:26:28', '2019-11-11 06:26:28', '7cbb0157-f8b9-478e-b77e-65120a2abcd7'),
(220, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:26:40', '2019-11-11 06:26:40', '239fbd30-8733-4ad0-bbfc-4631a94ee7a5'),
(221, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:33:55', '2019-11-11 06:33:55', '72fc8313-5acf-4d32-800d-5bed873dafc5'),
(222, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:37:09', '2019-11-11 06:37:09', '29613b5d-f755-4362-878f-cb42d6a8f3c4'),
(223, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:40:06', '2019-11-11 06:40:06', '38465154-fad1-4394-bf6c-865fc5baca49'),
(224, 8, NULL, 9, 1, '2019-11-11 06:14:00', NULL, NULL, '2019-11-11 06:41:13', '2019-11-11 06:41:13', 'eadf3f89-bfa1-4986-9ff4-baa51a3ca963'),
(225, 8, NULL, 10, 1, '2019-11-09 07:40:00', NULL, NULL, '2019-11-12 02:06:11', '2019-11-12 02:06:11', '24ae057e-d3d6-4962-9eb0-605e45bb752e'),
(226, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-12 03:04:11', '2019-11-12 03:04:11', 'f436a9b4-2fde-40b8-a984-e0ab2dfa662c'),
(229, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, 1, '2019-11-12 06:57:29', '2019-11-12 06:57:29', '6d4d0d7a-e41f-4a99-a158-987c88282899'),
(230, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 06:57:29', '2019-11-12 06:57:29', '7283f5a1-2f28-4f50-b669-b708349d5066'),
(231, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 06:57:46', '2019-11-12 06:57:46', '2a020f71-d3ad-4610-b22e-3aadae26eb28'),
(232, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 07:21:38', '2019-11-12 07:21:38', '6b07c0e0-6f30-4e92-9e3e-5b18206f76ad'),
(233, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 07:24:32', '2019-11-12 07:24:32', '9a5697e8-a11d-4bb6-be38-4969b52d43a0'),
(234, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 07:25:41', '2019-11-12 07:25:41', 'c6bd2256-6853-41fb-b2cc-f4e8266f6a7f'),
(235, 9, NULL, 11, 1, '2019-11-12 06:56:00', NULL, NULL, '2019-11-12 07:27:01', '2019-11-12 07:27:01', '1ca274aa-2534-49bf-9445-ec6c1dff6d70'),
(237, 9, NULL, 12, 1, '2019-11-12 07:30:00', NULL, 1, '2019-11-12 07:30:29', '2019-11-12 07:55:20', '46fe9590-4709-4dc3-b698-a7689ec68bdf'),
(238, 9, NULL, 11, 1, '2019-11-12 07:30:00', NULL, NULL, '2019-11-12 07:30:29', '2019-11-12 07:30:29', 'b2ca542b-0005-483e-b2c1-04081bcb2a18'),
(240, 9, NULL, 13, 1, '2019-11-12 07:30:00', NULL, 1, '2019-11-12 07:30:53', '2019-11-13 03:46:34', '9991baa0-e40b-409f-85c4-fe6dfa28827b'),
(241, 9, NULL, 11, 1, '2019-11-12 07:30:00', NULL, NULL, '2019-11-12 07:30:53', '2019-11-12 07:30:53', '982c51cc-d206-470a-991f-47adca222fa4'),
(242, 9, NULL, 11, 1, '2019-11-12 07:30:00', NULL, NULL, '2019-11-12 07:31:08', '2019-11-12 07:31:08', '074b3923-de6a-48df-8231-d3a093d181fd'),
(244, 9, NULL, 13, 1, '2019-11-12 07:31:00', NULL, 1, '2019-11-12 07:31:26', '2019-11-13 03:46:44', '104d1dd6-d0cd-46b6-a51a-0bb033078576'),
(245, 9, NULL, 11, 1, '2019-11-12 07:31:00', NULL, NULL, '2019-11-12 07:31:26', '2019-11-12 07:31:26', '98ec40a9-f6ed-41c3-8075-5f52ee1e3752'),
(246, 9, NULL, 12, 1, '2019-11-12 07:30:00', NULL, NULL, '2019-11-12 07:55:20', '2019-11-12 07:55:20', '91c0cbe7-d645-43dd-9420-ad71766531e6'),
(247, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, 0, '2019-11-13 01:34:14', '2019-11-14 00:42:01', 'b5c775d4-3267-44b0-b999-618b4860808c'),
(249, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-13 01:34:15', '2019-11-13 01:34:15', 'c1e7cbe4-ba9a-4f35-bd59-d5eaf0f37d5b'),
(251, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '2506dab2-092c-4af7-901b-4f5622e9413c'),
(253, 9, NULL, 13, 1, '2019-11-12 07:30:00', NULL, NULL, '2019-11-13 03:46:34', '2019-11-13 03:46:34', '3ec3d5c8-91c4-4e17-b57e-501d6a415605'),
(254, 9, NULL, 13, 1, '2019-11-12 07:31:00', NULL, NULL, '2019-11-13 03:46:44', '2019-11-13 03:46:44', '9da9ed46-5f08-4e9c-b123-ef4dd72b685f'),
(256, 10, NULL, 14, 1, '2019-11-13 03:58:00', NULL, NULL, '2019-11-13 03:58:26', '2019-11-13 03:58:26', '30025524-8e40-4e0b-8966-4ac255b9d1fb'),
(257, 10, NULL, 14, 1, '2019-11-13 03:58:00', NULL, NULL, '2019-11-13 03:58:26', '2019-11-13 03:58:26', 'c7069625-dd90-474f-98aa-313fc919626c'),
(258, 10, NULL, 14, 1, '2019-11-13 03:58:00', NULL, NULL, '2019-11-13 03:59:53', '2019-11-13 03:59:53', '411882be-52f9-49bc-8063-ae34a66486d6'),
(259, 10, NULL, 14, 1, '2019-11-13 03:58:00', NULL, NULL, '2019-11-13 04:00:25', '2019-11-13 04:00:25', 'c2d9c7c4-159a-4e73-b060-8c6db5e1a889'),
(261, 10, NULL, 15, 1, '2019-11-13 04:09:00', NULL, NULL, '2019-11-13 04:09:47', '2019-11-13 04:09:47', '07935ca6-7493-4f58-9150-5f2726005190'),
(262, 10, NULL, 15, 1, '2019-11-13 04:09:00', NULL, NULL, '2019-11-13 04:09:47', '2019-11-13 04:09:47', '73ccfcf0-3e4f-4342-8abd-c64f7896cdd8'),
(263, 6, NULL, 6, 1, '2019-11-15 02:32:00', NULL, NULL, '2019-11-14 00:40:30', '2019-11-14 00:40:30', '5500f8c6-c5b9-412a-a749-e166b7932529'),
(265, 6, NULL, 6, 1, '2019-11-14 11:00:00', NULL, NULL, '2019-11-14 00:41:30', '2019-11-14 00:41:30', 'cde44fd9-7c3c-4c00-b485-8dcfe3a4a87d'),
(267, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, NULL, '2019-11-14 00:42:01', '2019-11-14 00:42:01', 'caf45e0b-552e-4361-b3c8-1947173e2a3b'),
(269, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, 0, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '196d644b-120c-41e3-9f85-b70cac4fd65e'),
(271, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, NULL, '2019-11-14 01:18:58', '2019-11-14 01:18:58', 'b244665a-65ca-477a-abc4-7f918087993a'),
(273, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, 0, '2019-11-14 01:19:05', '2019-11-14 01:19:05', 'ae473543-831f-4f48-8b7b-b1baca7cbc1b'),
(275, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '9ba67c40-daa8-418a-821b-33ba8d0fb5a3'),
(277, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, 0, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'a64b01c6-37a6-47d4-bccc-84fbb1376855'),
(279, 6, NULL, 6, 1, '2019-11-13 11:00:00', NULL, NULL, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '7588d3a5-664b-4a30-a028-16b1504227c8'),
(281, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-14 02:14:28', '2019-11-14 02:14:28', '4164a9e4-eb7b-4cb3-b079-1b5bff16dde8'),
(283, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:23:16', '2019-11-14 07:23:16', 'bb1caa27-dd65-47fd-a274-3bf018d517c7'),
(301, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '2d14ab16-62c1-43ca-9afa-696409526c7f'),
(303, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:32:50', '2019-11-14 07:32:50', 'c7d00477-ed37-4116-bc70-b13969058262'),
(306, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:38:59', '2019-11-14 07:38:59', 'ce114194-cdd4-48f7-8213-32aa56aae445'),
(308, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:43:40', '2019-11-14 07:43:40', '81ccd372-383d-49b2-a1b5-245997f9ae38'),
(310, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, 0, '2019-11-14 07:43:48', '2019-11-14 07:43:48', '15ea0a44-96c0-4f79-98ee-9edf0e0b3778'),
(312, 6, NULL, 6, 1, '2019-11-07 02:32:00', NULL, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'de51cee2-4162-4488-b891-0a675c11393b'),
(314, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, 0, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '85049dcf-c626-4015-93a6-766a88862e82'),
(316, 6, NULL, 6, 1, '2019-11-08 07:52:00', NULL, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '9ada5786-4f27-461b-96a8-5bdea33d7d77'),
(318, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, 0, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '50357498-f800-4223-b64a-e021c98be7ae'),
(320, 6, NULL, 6, 1, '2019-11-14 07:23:00', NULL, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'e8fd4ae3-cd40-4e2b-be12-328e63f874b7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_entrytypes`
--

CREATE TABLE `blog_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_entrytypes`
--

INSERT INTO `blog_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'firstSection', 'firstsection', 1, 'Title', NULL, 1, '2019-11-06 04:05:54', '2019-11-06 04:05:54', '2019-11-06 04:07:18', '20acb7f6-9a06-4d98-a755-d4eb804e2550'),
(2, 2, NULL, 'section image', 'sectionImage', 1, 'Title', NULL, 1, '2019-11-06 04:30:52', '2019-11-06 04:30:52', '2019-11-06 04:36:57', 'e58d50c3-a116-40ad-9ad0-e38793f9742c'),
(3, 3, 1, 'main section', 'mainSection', 1, 'Title', '', 1, '2019-11-06 04:50:30', '2019-11-06 06:53:53', '2019-11-07 00:07:10', 'd3d2f8dc-02ec-4d64-98ab-89ed3b5601e2'),
(4, 4, NULL, 'post', 'post', 1, 'Title', NULL, 1, '2019-11-07 01:29:40', '2019-11-07 01:29:40', '2019-11-07 01:29:46', '579eecbf-9332-43bd-8711-ab4bf218672f'),
(5, 5, NULL, 'post', 'post', 1, 'Title', NULL, 1, '2019-11-07 01:30:12', '2019-11-07 01:30:12', '2019-11-07 02:19:03', '4a2ba18e-7bdd-44f3-8c45-06c98994d937'),
(6, 6, 2, 'post', 'post', 1, 'Title', '', 1, '2019-11-07 02:19:57', '2019-11-09 03:11:29', NULL, 'fe7f72e1-e404-4139-8ce1-d655801062c7'),
(7, 6, NULL, 'homepage', 'homepage', 1, 'Title', '', 2, '2019-11-07 02:21:24', '2019-11-07 02:21:24', '2019-11-07 06:12:42', 'c793b9d4-54b4-430c-b4ab-364d8ddc21be'),
(8, 7, NULL, 'homepage', 'homepage', 0, NULL, '{section.name|raw}', 1, '2019-11-08 01:07:33', '2019-11-08 01:07:33', '2019-11-08 01:09:35', '28455937-c23a-43f4-afd5-a8cfcad8a1d3'),
(9, 8, 4, 'homepage', 'homepage', 0, '', '{section.name|raw}', 1, '2019-11-08 01:29:41', '2019-11-08 02:23:57', '2019-11-11 07:40:29', 'cb7a4503-446f-48fc-b3d5-cccf11aa34ee'),
(10, 8, 7, 'about', 'about', 1, 'Title', '', 2, '2019-11-09 07:39:56', '2019-11-09 07:39:56', '2019-11-12 07:29:53', 'd70fdb3f-c642-4be4-aa16-0991fbcb0652'),
(11, 9, 8, 'about', 'about', 1, 'Title', '', 1, '2019-11-12 06:56:32', '2019-11-12 07:29:01', '2019-11-13 03:57:27', '8dd3dffc-bc5c-4dbf-abd8-9f39e1c39251'),
(12, 9, 9, 'kategori', 'kategori', 1, 'Title', '', 2, '2019-11-12 07:55:03', '2019-11-12 07:55:03', '2019-11-13 03:57:27', 'db5987a5-6967-497b-b0fb-78eed111b10a'),
(13, 9, 10, 'kategori content', 'kategoriContent', 1, 'Title', '', 3, '2019-11-13 03:46:19', '2019-11-13 03:46:19', '2019-11-13 03:57:27', 'b16fad7a-3465-4fc4-80be-9df3bb400f0e'),
(14, 10, 11, 'about', 'about', 1, 'Title', '', 1, '2019-11-13 03:58:07', '2019-11-13 03:59:19', NULL, '194f11a3-d09c-4754-a923-2db6f8dda7fe'),
(15, 10, NULL, 'kategori', 'kategori', 1, 'Title', '', 2, '2019-11-13 04:09:30', '2019-11-13 04:09:30', NULL, 'e3eeb62a-331d-4db9-bddf-327fbffd0d30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fieldgroups`
--

CREATE TABLE `blog_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_fieldgroups`
--

INSERT INTO `blog_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2019-11-06 02:26:42', '2019-11-06 02:26:42', 'bfef1342-0655-46aa-b202-15eb91bc10de');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fieldlayoutfields`
--

CREATE TABLE `blog_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_fieldlayoutfields`
--

INSERT INTO `blog_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 3, 7, 3, 0, 1, '2019-11-07 03:10:53', '2019-11-07 03:10:53', '3131db7f-4c58-4b6a-a903-0c3ab84ed82b'),
(44, 2, 19, 26, 0, 1, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '93a6191a-47e6-4c8b-81ba-cd3d70220f90'),
(45, 2, 20, 4, 0, 4, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '67e2749c-6dc0-4365-a30d-29b9ed3a2467'),
(46, 2, 20, 2, 0, 3, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '79f98307-0052-4e17-9beb-25594bed79c2'),
(47, 2, 20, 3, 0, 1, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '9428b4e8-764f-4902-96ca-bc0d5ad57c53'),
(48, 2, 20, 9, 0, 2, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '528a8ca9-7620-472c-a0a6-86d1b99a2c1f'),
(49, 7, 21, 2, 0, 2, '2019-11-09 07:39:56', '2019-11-09 07:39:56', 'b8c3c2a1-58b9-4356-9b71-b065023eb88d'),
(50, 7, 21, 3, 0, 1, '2019-11-09 07:39:56', '2019-11-09 07:39:56', 'f4126946-5365-4f2b-9377-73218c28d224'),
(51, 6, 22, 17, 0, 2, '2019-11-11 03:07:10', '2019-11-11 03:07:10', 'd8bff333-933c-4d90-8856-e74d4f8605c8'),
(52, 6, 22, 18, 0, 3, '2019-11-11 03:07:10', '2019-11-11 03:07:10', '2a73d7ba-930a-4ee7-a545-3c1fbd3e4d58'),
(53, 6, 22, 19, 0, 6, '2019-11-11 03:07:11', '2019-11-11 03:07:11', 'c60ed159-13aa-4559-92d3-9a9f3fdb311c'),
(54, 6, 22, 20, 0, 4, '2019-11-11 03:07:11', '2019-11-11 03:07:11', 'bc4c58ac-ffc3-4910-8fac-bde2ba873c93'),
(55, 6, 22, 21, 0, 7, '2019-11-11 03:07:11', '2019-11-11 03:07:11', '664bf1ab-01b0-4059-89e3-41b5a6c4d970'),
(56, 6, 22, 22, 0, 1, '2019-11-11 03:07:11', '2019-11-11 03:07:11', '81650b9d-7d78-486a-bc18-f1385e9dbc5e'),
(57, 6, 22, 23, 0, 5, '2019-11-11 03:07:11', '2019-11-11 03:07:11', '8a229949-9d64-4164-a3bf-65750bd53705'),
(63, 8, 25, 2, 0, 3, '2019-11-12 07:29:01', '2019-11-12 07:29:01', '4ccf5677-3e0c-4f0f-9887-c40548c4add5'),
(64, 8, 25, 3, 0, 2, '2019-11-12 07:29:01', '2019-11-12 07:29:01', '9602c5ae-dff7-40c2-b0d9-8771abef883d'),
(65, 8, 25, 27, 0, 1, '2019-11-12 07:29:01', '2019-11-12 07:29:01', '96b435a6-1031-4839-86b6-dd7071a88077'),
(66, 9, 26, 27, 0, 1, '2019-11-12 07:55:03', '2019-11-12 07:55:03', '9343644d-8964-4e50-90cd-f402b2953aca'),
(67, 10, 27, 3, 0, 1, '2019-11-13 03:46:19', '2019-11-13 03:46:19', 'd3a26004-ef00-43d1-a2d9-049d9c4f0aa1'),
(70, 11, 29, 2, 0, 2, '2019-11-13 03:59:19', '2019-11-13 03:59:19', '6b7a0254-bc7e-48da-a5fa-2e7d86a02e7a'),
(71, 11, 29, 3, 0, 1, '2019-11-13 03:59:19', '2019-11-13 03:59:19', 'c383a629-2ddb-4783-b18d-fcc9ce9dde79'),
(92, 12, 40, 3, 0, 1, '2019-11-14 06:03:11', '2019-11-14 06:03:11', '7d93d683-7274-47e3-a903-3ac9019f8f54'),
(93, 12, 40, 27, 0, 2, '2019-11-14 06:03:11', '2019-11-14 06:03:11', '4e1021d0-e075-470f-866e-8594e1d32817');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fieldlayouts`
--

CREATE TABLE `blog_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_fieldlayouts`
--

INSERT INTO `blog_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2019-11-06 04:52:32', '2019-11-06 04:52:32', '2019-11-07 00:07:10', '461a3315-938e-4405-8196-b3f2bb47f78f'),
(2, 'craft\\elements\\Entry', '2019-11-07 02:20:53', '2019-11-07 02:20:53', NULL, 'dd73dc1a-a8fb-479c-bdca-aff8451c96af'),
(3, 'craft\\elements\\Asset', '2019-11-07 03:10:53', '2019-11-07 03:10:53', '2019-11-07 03:11:35', '13bd7670-08d6-47c6-862e-2f8ec6057b6d'),
(4, 'craft\\elements\\Entry', '2019-11-08 02:23:57', '2019-11-08 02:23:57', '2019-11-11 07:40:29', '135ee0a3-eea3-4725-8e56-ea973a2c269e'),
(5, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-11-08 02:28:15', '2019-11-08 02:28:15', '2019-11-09 06:52:28', '92fd0403-6b16-4a0c-a10f-23df33700d15'),
(6, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-11-08 07:55:51', '2019-11-08 07:55:51', NULL, '02fa9f92-7aee-45d9-904b-1795a519bdda'),
(7, 'craft\\elements\\Entry', '2019-11-09 07:39:56', '2019-11-09 07:39:56', '2019-11-12 07:29:53', 'd5645190-688c-42d4-8fee-2b7053febbc3'),
(8, 'craft\\elements\\Entry', '2019-11-12 07:23:47', '2019-11-12 07:23:47', '2019-11-13 03:57:27', 'bc65f363-aeed-4865-adf6-a6f836315181'),
(9, 'craft\\elements\\Entry', '2019-11-12 07:55:03', '2019-11-12 07:55:03', '2019-11-13 03:57:27', 'c737445d-aeb5-4b23-a87a-bc7d74faacff'),
(10, 'craft\\elements\\Entry', '2019-11-13 03:46:19', '2019-11-13 03:46:19', '2019-11-13 03:57:27', 'c3938eb7-103f-4bf4-92b1-ef84e1f509fb'),
(11, 'craft\\elements\\Entry', '2019-11-13 03:59:02', '2019-11-13 03:59:02', NULL, '0a0af34c-151f-4254-bf72-05c63f67b7a4'),
(12, 'craft\\elements\\Category', '2019-11-14 01:03:54', '2019-11-14 01:03:54', NULL, 'cccab352-309f-4dd0-8017-028c48e50126');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fieldlayouttabs`
--

CREATE TABLE `blog_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_fieldlayouttabs`
--

INSERT INTO `blog_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, 'Common', 1, '2019-11-06 06:53:53', '2019-11-06 06:53:53', 'bc9d2c57-f01c-47fd-8d23-cce3a61348cc'),
(7, 3, 'Content', 1, '2019-11-07 03:10:53', '2019-11-07 03:10:53', '99fac594-2500-4a01-8c4e-8581fcbd2439'),
(8, 4, 'Tab 1', 1, '2019-11-08 02:23:57', '2019-11-08 02:23:57', '227a2d9a-87a9-4850-bb47-83a0420089a5'),
(18, 5, 'Content', 1, '2019-11-09 02:52:29', '2019-11-09 02:52:29', '21978f3e-e645-455e-939a-559c37003d36'),
(19, 2, 'info', 1, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '26b1da3a-5b94-4157-bf25-3b2db2c5f73b'),
(20, 2, 'review', 2, '2019-11-09 03:11:29', '2019-11-09 03:11:29', '58bc2f93-63d1-4d30-ba18-9accae8ac121'),
(21, 7, 'Tab 1', 1, '2019-11-09 07:39:56', '2019-11-09 07:39:56', '1e24834f-b063-4a2b-a785-b4afe0b25cdc'),
(22, 6, 'Content', 1, '2019-11-11 03:07:10', '2019-11-11 03:07:10', 'eab472ef-3bae-41c0-a0f6-94e5ee2ad93e'),
(25, 8, 'about', 1, '2019-11-12 07:29:01', '2019-11-12 07:29:01', '50708239-c925-476a-9f8c-843180e6f272'),
(26, 9, 'info', 1, '2019-11-12 07:55:03', '2019-11-12 07:55:03', 'bbcacf6e-8543-42f3-a491-2a256ebba190'),
(27, 10, 'info', 1, '2019-11-13 03:46:19', '2019-11-13 03:46:19', 'fd8ce722-0ca9-403b-ab65-50223f6f9a82'),
(29, 11, ' info', 1, '2019-11-13 03:59:19', '2019-11-13 03:59:19', '2502e056-59fb-426e-aca4-30413df3a446'),
(40, 12, 'info', 1, '2019-11-14 06:03:11', '2019-11-14 06:03:11', '04758de1-2061-4252-99e3-0b6f019bf21b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fields`
--

CREATE TABLE `blog_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_fields`
--

INSERT INTO `blog_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 'article', 'article', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-11-07 01:30:36', '2019-11-07 07:18:50', '4db92987-748d-4671-ad2f-9c7c3cb8a4ed'),
(3, 1, 'image cover', 'imageCover', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:afba26e3-0bdd-4869-a869-1c0fa55c5161\",\"defaultUploadLocationSubpath\":\"{slug}\",\"singleUploadLocationSource\":\"volume:afba26e3-0bdd-4869-a869-1c0fa55c5161\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-07 01:31:10', '2019-11-08 01:47:03', '4f2b2398-6447-489b-829d-893e6b034216'),
(4, 1, 'video trailer', 'videoTrailer', 'global', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"placeholder\":\"\",\"maxLength\":\"255\"}', '2019-11-07 01:31:40', '2019-11-07 01:32:03', '32ce8c3c-ebcd-40ce-95c9-0f7fa03c48fc'),
(9, 1, 'detail list', 'detailList', 'global', '', 0, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_detaillist}}\",\"propagationMethod\":\"all\",\"staticField\":\"1\",\"columns\":{\"22\":{\"width\":\"\"},\"17\":{\"width\":\"\"},\"18\":{\"width\":\"\"},\"20\":{\"width\":\"\"},\"23\":{\"width\":\"\"},\"19\":{\"width\":\"\"},\"21\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"}', '2019-11-08 07:55:48', '2019-11-11 03:07:09', 'd4291908-d72b-4ced-ba0e-ca6f76dbbb56'),
(17, NULL, 'Kategori', 'kategori', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:02', '2019-11-11 03:07:10', '12ad2855-5adb-4ae3-9a8f-6ebbaf72f233'),
(18, NULL, 'Tipe', 'tipe', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:03', '2019-11-11 03:07:10', '163d6b09-af7e-40fa-8a36-e02e8d45ab90'),
(19, NULL, 'Producer', 'producer', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:04', '2019-11-11 03:07:10', '528238b0-900d-474d-a36f-0ae77383d31f'),
(20, NULL, 'Jumlah Episode', 'jumlahEpisode', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:05', '2019-11-11 03:07:10', '5717f93a-cf0e-4a10-8fa1-8527d57617ab'),
(21, NULL, 'Tanggal Rilis', 'tanggalRilis', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:06', '2019-11-11 03:07:10', '7c65dd47-4862-4653-9a9d-f740aa79b9cd'),
(22, NULL, 'Judul', 'judul', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:07', '2019-11-11 03:07:10', 'a3fe38ba-3cd4-440b-b27f-c4ab82f01170'),
(23, NULL, 'Genre', 'genre', 'superTableBlockType:87eb8f25-186e-4174-8480-86d42d936da6', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-08 08:13:08', '2019-11-11 03:07:10', 'd5da990f-cbaa-4e49-b564-61f803041209'),
(26, 1, 'post kategori', 'postKategori', 'global', '', 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:ca6d9283-71d7-4d3f-bc11-a9396b2f0026\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-09 03:08:25', '2019-11-09 03:08:25', 'af6c2f96-47bb-4fac-b3cd-60e01ed6b562'),
(27, 1, 'text', 'text', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"}', '2019-11-12 07:25:07', '2019-11-12 07:25:07', 'ba68d137-fa68-41fb-85cd-e831c6dfa9aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_globalsets`
--

CREATE TABLE `blog_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_gqlschemas`
--

CREATE TABLE `blog_gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_info`
--

CREATE TABLE `blog_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_info`
--

INSERT INTO `blog_info` (`id`, `version`, `schemaVersion`, `maintenance`, `config`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.3.15', '3.3.3', 0, '{\"fieldGroups\":{\"bfef1342-0655-46aa-b202-15eb91bc10de\":{\"name\":\"Common\"}},\"siteGroups\":{\"76e83b0a-a5f5-44d2-ace8-9ce08907730e\":{\"name\":\"blog-craft\"}},\"sites\":{\"06ea7227-25a1-413f-98b1-dd8d80fc7cfb\":{\"baseUrl\":\"$DEFAULT_SITE_URL\",\"handle\":\"default\",\"hasUrls\":true,\"language\":\"en-US\",\"name\":\"blog-craft\",\"primary\":true,\"siteGroup\":\"76e83b0a-a5f5-44d2-ace8-9ce08907730e\",\"sortOrder\":1}},\"email\":{\"fromEmail\":\"mramamaulana60@gmail.com\",\"fromName\":\"blog-craft\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"blog-craft\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1573711391,\"sections\":{\"e1fd3291-10bf-4038-a10a-ed1a7ee79f46\":{\"name\":\"post\",\"handle\":\"post\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"06ea7227-25a1-413f-98b1-dd8d80fc7cfb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"post/{slug}\",\"template\":\"blog/_entry\"}},\"entryTypes\":{\"fe7f72e1-e404-4139-8ce1-d655801062c7\":{\"name\":\"post\",\"handle\":\"post\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"dd73dc1a-a8fb-479c-bdca-aff8451c96af\":{\"tabs\":[{\"name\":\"info\",\"sortOrder\":1,\"fields\":{\"af6c2f96-47bb-4fac-b3cd-60e01ed6b562\":{\"required\":false,\"sortOrder\":1}}},{\"name\":\"review\",\"sortOrder\":2,\"fields\":{\"32ce8c3c-ebcd-40ce-95c9-0f7fa03c48fc\":{\"required\":false,\"sortOrder\":4},\"4db92987-748d-4671-ad2f-9c7c3cb8a4ed\":{\"required\":false,\"sortOrder\":3},\"4f2b2398-6447-489b-829d-893e6b034216\":{\"required\":false,\"sortOrder\":1},\"d4291908-d72b-4ced-ba0e-ca6f76dbbb56\":{\"required\":false,\"sortOrder\":2}}}]}}}}},\"e4606df0-101f-4eb0-829c-22238ad390fa\":{\"name\":\"home\",\"handle\":\"home\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"06ea7227-25a1-413f-98b1-dd8d80fc7cfb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"{slug}\",\"template\":\"blog\\\\_entry\"}},\"entryTypes\":{\"194f11a3-d09c-4754-a923-2db6f8dda7fe\":{\"name\":\"about\",\"handle\":\"about\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"0a0af34c-151f-4254-bf72-05c63f67b7a4\":{\"tabs\":[{\"name\":\" info\",\"sortOrder\":1,\"fields\":{\"4db92987-748d-4671-ad2f-9c7c3cb8a4ed\":{\"required\":false,\"sortOrder\":2},\"4f2b2398-6447-489b-829d-893e6b034216\":{\"required\":false,\"sortOrder\":1}}}]}}},\"e3eeb62a-331d-4db9-bddf-327fbffd0d30\":{\"name\":\"kategori\",\"handle\":\"kategori\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":2}}}},\"fields\":{\"4db92987-748d-4671-ad2f-9c7c3cb8a4ed\":{\"name\":\"article\",\"handle\":\"article\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"},\"4f2b2398-6447-489b-829d-893e6b034216\":{\"name\":\"image cover\",\"handle\":\"imageCover\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:afba26e3-0bdd-4869-a869-1c0fa55c5161\",\"defaultUploadLocationSubpath\":\"{slug}\",\"singleUploadLocationSource\":\"volume:afba26e3-0bdd-4869-a869-1c0fa55c5161\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"},\"32ce8c3c-ebcd-40ce-95c9-0f7fa03c48fc\":{\"name\":\"video trailer\",\"handle\":\"videoTrailer\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Url\",\"settings\":{\"placeholder\":\"\",\"maxLength\":\"255\"},\"contentColumnType\":\"string(255)\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"},\"d4291908-d72b-4ced-ba0e-ca6f76dbbb56\":{\"name\":\"detail list\",\"handle\":\"detailList\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"verbb\\\\supertable\\\\fields\\\\SuperTableField\",\"settings\":{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_detaillist}}\",\"propagationMethod\":\"all\",\"staticField\":\"1\",\"columns\":{\"22\":{\"width\":\"\"},\"17\":{\"width\":\"\"},\"18\":{\"width\":\"\"},\"20\":{\"width\":\"\"},\"23\":{\"width\":\"\"},\"19\":{\"width\":\"\"},\"21\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"},\"af6c2f96-47bb-4fac-b3cd-60e01ed6b562\":{\"name\":\"post kategori\",\"handle\":\"postKategori\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Categories\",\"settings\":{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:ca6d9283-71d7-4d3f-bc11-a9396b2f0026\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"},\"ba68d137-fa68-41fb-85cd-e831c6dfa9aa\":{\"name\":\"text\",\"handle\":\"text\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"bfef1342-0655-46aa-b202-15eb91bc10de\"}},\"categoryGroups\":{\"ca6d9283-71d7-4d3f-bc11-a9396b2f0026\":{\"name\":\"category\",\"handle\":\"category\",\"structure\":{\"uid\":\"8f5437a0-b407-4ec8-a630-dc0323983abd\",\"maxLevels\":null},\"siteSettings\":{\"06ea7227-25a1-413f-98b1-dd8d80fc7cfb\":{\"hasUrls\":true,\"uriFormat\":\"kategori/{slug}\",\"template\":\"blog\\\\_entry_kategori_list\"}},\"fieldLayouts\":{\"cccab352-309f-4dd0-8017-028c48e50126\":{\"tabs\":[{\"name\":\"info\",\"sortOrder\":1,\"fields\":{\"4f2b2398-6447-489b-829d-893e6b034216\":{\"required\":false,\"sortOrder\":1},\"ba68d137-fa68-41fb-85cd-e831c6dfa9aa\":{\"required\":false,\"sortOrder\":2}}}]}}}},\"volumes\":{\"afba26e3-0bdd-4869-a869-1c0fa55c5161\":{\"name\":\"gambar\",\"handle\":\"gambar\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"uploads/assets/cover/images\",\"settings\":{\"path\":\"uploads/assets/cover/images\"},\"sortOrder\":1}},\"plugins\":{\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"super-table\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.2.0\"}},\"superTableBlockTypes\":{\"87eb8f25-186e-4174-8480-86d42d936da6\":{\"field\":\"d4291908-d72b-4ced-ba0e-ca6f76dbbb56\",\"fields\":{\"12ad2855-5adb-4ae3-9a8f-6ebbaf72f233\":{\"name\":\"Kategori\",\"handle\":\"kategori\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"163d6b09-af7e-40fa-8a36-e02e8d45ab90\":{\"name\":\"Tipe\",\"handle\":\"tipe\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"528238b0-900d-474d-a36f-0ae77383d31f\":{\"name\":\"Producer\",\"handle\":\"producer\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"5717f93a-cf0e-4a10-8fa1-8527d57617ab\":{\"name\":\"Jumlah Episode\",\"handle\":\"jumlahEpisode\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"7c65dd47-4862-4653-9a9d-f740aa79b9cd\":{\"name\":\"Tanggal Rilis\",\"handle\":\"tanggalRilis\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"a3fe38ba-3cd4-440b-b27f-c4ab82f01170\":{\"name\":\"Judul\",\"handle\":\"judul\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"d5da990f-cbaa-4e49-b564-61f803041209\":{\"name\":\"Genre\",\"handle\":\"genre\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"string\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"02fa9f92-7aee-45d9-904b-1795a519bdda\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"12ad2855-5adb-4ae3-9a8f-6ebbaf72f233\":{\"required\":false,\"sortOrder\":2},\"163d6b09-af7e-40fa-8a36-e02e8d45ab90\":{\"required\":false,\"sortOrder\":3},\"528238b0-900d-474d-a36f-0ae77383d31f\":{\"required\":false,\"sortOrder\":6},\"5717f93a-cf0e-4a10-8fa1-8527d57617ab\":{\"required\":false,\"sortOrder\":4},\"7c65dd47-4862-4653-9a9d-f740aa79b9cd\":{\"required\":false,\"sortOrder\":7},\"a3fe38ba-3cd4-440b-b27f-c4ab82f01170\":{\"required\":false,\"sortOrder\":1},\"d5da990f-cbaa-4e49-b564-61f803041209\":{\"required\":false,\"sortOrder\":5}}}]}}}}}', '[]', 'CdWIXTNo2z3E', '2019-11-06 02:26:41', '2019-11-06 02:26:41', '21c848ac-7a16-4c0a-bfed-d295ace85cbd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_matrixblocks`
--

CREATE TABLE `blog_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_matrixblocktypes`
--

CREATE TABLE `blog_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_migrations`
--

CREATE TABLE `blog_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_migrations`
--

INSERT INTO `blog_migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '60ce7daf-f08a-443f-99a6-73b92962c5a0'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '6dcd1e2f-af86-4ed6-abe7-bbb574d23a37'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'ed18b80d-72b6-4d60-adda-558cee54e661'),
(4, NULL, 'app', 'm150403_184533_field_version', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'c7aafda5-4d03-46af-af81-347f8281c5fe'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '8cb6b4f6-4221-4b73-bfe5-c2aa1ebdece3'),
(6, NULL, 'app', 'm150403_185142_volumes', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '01338bf2-b7c7-4939-95b1-6f2ce9e8c28a'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '29a8278a-6b18-49be-b949-39ec0d52ddb1'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'df037b3c-5c60-4b57-bcf1-62382282b957'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'e83d479e-7a92-477d-be69-dae0d16dbe33'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'dc326e6b-f762-48fd-aa48-0b245d7487ba'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '5047bf10-5489-416d-8d77-46ae20a1d919'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '75a1a91f-5fea-4ccf-9f37-f10b2bfe9194'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'd7b37b6f-6b50-4ce8-9165-737512e91303'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '957aa390-3061-4ebe-aea0-75abf6d35423'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '60325588-85e2-46fb-a3a1-148215d3196a'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'b4d9a889-c07c-4856-a079-cdeb39f01d98'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'dfede1d1-4070-4fdb-b5c2-0a6f4cdbe487'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '4e214b18-d2b3-42c3-9dc9-c2e62201f3a2'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'ca3defeb-bb2d-4984-987f-2337d7102284'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2019-11-06 02:26:44', '2019-11-06 02:26:44', '2019-11-06 02:26:44', 'e2a8a195-ea05-40b6-90a4-322dffe3bad1'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '4464efe3-a817-493b-a49c-8864c4bb8d36'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'fe8f3269-b91a-4e5e-907a-0556cac11222'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '6819fc5d-8d64-4044-8eaf-9e8db46e0cc5'),
(24, NULL, 'app', 'm160807_144858_sites', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '144bb3ff-244e-48a6-ae4f-108bcafdd481'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '299759fe-3caa-4d0b-a98a-0e3e746f6d32'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '5a054928-661f-4bd9-87d9-0737010be04c'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'c9bfc417-e14a-47e8-b152-2ed1b76fc8ef'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '49b7886e-e804-4e31-bc93-15ca1154f765'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '81cf60cb-357d-46cd-8c43-ea2fc278ab62'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'ba046d8f-9584-4cad-b801-3702f5af4024'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '5e09eadb-f114-46d4-8892-7676298cf29b'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'f4695265-3dba-45c8-946d-10b6ef233a36'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '89a8d08b-22de-4282-b856-8a784b832a34'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '51174abf-6243-477a-966d-97a1f4c10a76'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '1e2df9e1-929b-4597-8c79-57fc361355e8'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '1d6fb45a-1438-4ef4-9277-a670886ea449'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '79e4a884-2b31-41d1-a67f-e7bdd682fb5d'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '600d901a-70db-456f-8eae-b0a3b3137d3c'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '41afb84e-95be-471a-8c64-4149c0c71d2e'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'cc3a3fed-6231-4e2a-bfc9-456d0b86e959'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'c12644d6-8e4b-4bb7-8a47-f4b876b4c0a3'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '764ca0a2-98a1-4645-982d-88719a3d1161'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '55bc24f4-f627-4b53-ad6c-0c1b9ebbe259'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '206127f9-cb28-4dcf-ad2f-c454192cf1dc'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', 'ddf2ee3f-00d3-4014-8e3a-aa0caa67998d'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '830f2252-ebb3-4038-b00f-1d466367eae9'),
(47, NULL, 'app', 'm170206_142126_system_name', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '269486dc-1a47-483d-b20b-0644e966383d'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '651f4443-fd7e-4b6d-9aff-e2759fd9c25f'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '2019-11-06 02:26:45', '4753d04b-5a8d-4790-9d44-89a9a9ae4feb'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'c82f8e8a-8c6d-4b72-af61-8d8b334cb7bc'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '6b782265-ea1e-489c-a9f4-f32448f34db4'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '9a11d9ff-6a40-4fff-9934-7b98bfb76d16'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '7092e486-52be-4dad-98d4-6cf05728a06f'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '1ba19608-cbf0-4148-a050-da24672aee8c'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'dc74e12b-fb4e-4e3d-8fd8-97b6681141a2'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '7c667689-63d4-4bc7-ab1f-651f7d7edac6'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '19cce024-da9e-483c-a075-e9c9068ac96d'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '225553df-d738-4076-a46b-0be7247abb72'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'ca8878d2-8f33-41c6-a3c4-315f195cebd3'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '0bb19a87-6af6-4368-9267-6015d07bea8f'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '81a06b82-1de4-494e-a334-4817d084aceb'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'c5f9b8b9-321d-4b67-a28b-0883daa30bdb'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2330305b-20b1-49af-8657-eb479d8c0960'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'b304c5f3-8770-4ce4-aa1d-19203159bda0'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '27cce6e5-bc00-49fa-8764-d24dbcabda3a'),
(66, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '4b327b21-203e-49b5-9c8b-9a643fa17c70'),
(67, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'eca588ea-26cc-4afd-9c3b-7c56e3e70a28'),
(68, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'f816f52c-9ad8-4c0b-8f5c-46db29b99412'),
(69, NULL, 'app', 'm171011_214115_site_groups', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '1355457c-cf20-44b1-91a4-8d9553dccdbf'),
(70, NULL, 'app', 'm171012_151440_primary_site', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', 'a384270c-ce49-416a-8ce6-b011c9a676fa'),
(71, NULL, 'app', 'm171013_142500_transform_interlace', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '0d0b4fae-feaa-4142-ba7c-1b4fa414a5a2'),
(72, NULL, 'app', 'm171016_092553_drop_position_select', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '2019-11-06 02:26:46', '312b57b0-6925-47a3-ab1b-2ac21813ffda'),
(73, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '6f22b5fd-9dd4-47dd-bb29-4bec4c95c2cc'),
(74, NULL, 'app', 'm171107_000000_assign_group_permissions', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'c564bf28-859a-471d-869f-c44e90e3b657'),
(75, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'd4b17424-0fd3-47fa-8b51-f68acd93691d'),
(76, NULL, 'app', 'm171126_105927_disabled_plugins', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '4d0b0121-13ac-4a2a-a110-6d5019460c85'),
(77, NULL, 'app', 'm171130_214407_craftidtokens_table', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '740e42e3-88f7-485b-b71a-1238781241d8'),
(78, NULL, 'app', 'm171202_004225_update_email_settings', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'f71dbb53-7f75-4d21-b693-7826b15cfa00'),
(79, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '3fd75215-7ba7-4bcd-bd59-38fcd0f27494'),
(80, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '853237f8-3553-47c7-b886-9c09c4a86487'),
(81, NULL, 'app', 'm171218_143135_longtext_query_column', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '3a226b18-753d-4ed8-a331-0b0f930606ff'),
(82, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '312c12f2-3f1d-46aa-ac19-d789b33cbee2'),
(83, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '0764c225-9d23-40b8-a48e-4b16a4d3c6ac'),
(84, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '0b13983a-77c3-4dd0-9fed-2e96adef1675'),
(85, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '88f8d0d3-fb01-441a-ad45-fc8a043b9116'),
(86, NULL, 'app', 'm180128_235202_set_tag_slugs', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '79bbfe87-3b80-47e2-b3f2-8b89cd24b6ef'),
(87, NULL, 'app', 'm180202_185551_fix_focal_points', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '0d7548a5-3ab2-48e0-8bda-9489ed77dbbb'),
(88, NULL, 'app', 'm180217_172123_tiny_ints', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'ad99f5ee-ba2a-4f9b-b2e5-a6af206db87a'),
(89, NULL, 'app', 'm180321_233505_small_ints', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'f7a66831-4d5f-4546-b62a-4e13afe42753'),
(90, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '02db9aa6-252e-4c12-98f0-3a3f5d542111'),
(91, NULL, 'app', 'm180404_182320_edition_changes', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'c1678e57-98c1-4d00-bf8c-fe725a954281'),
(92, NULL, 'app', 'm180411_102218_fix_db_routes', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '08cdc269-7f4c-4ad1-9f5b-1d0a6e74b7b6'),
(93, NULL, 'app', 'm180416_205628_resourcepaths_table', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'c8893022-7141-4f8c-999f-4fefb724a522'),
(94, NULL, 'app', 'm180418_205713_widget_cleanup', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '58bb8489-d9c8-459f-9fcf-638dde389602'),
(95, NULL, 'app', 'm180425_203349_searchable_fields', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '4eaa2d75-0c4b-417e-99e2-3f876e54381b'),
(96, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'ace7bfed-a85b-4e0c-822e-a575373b50da'),
(97, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2274fc96-3c27-4407-b638-b7c30885fe66'),
(98, NULL, 'app', 'm180518_173000_permissions_to_uid', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'aed44980-20c5-46e0-be41-192f24bc2dc0'),
(99, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2c661304-ecd3-4a0e-b2e8-8e6adff30a5c'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'f6927179-a190-4bba-af49-f8975ba63403'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', 'ff91ccff-a23d-463f-9c78-2d29085ece34'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '90367464-0e12-45c2-a068-f25e102f041e'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '8b388d6e-6bb2-4eb3-a38f-903118783889'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '409cb78f-a381-4029-9a4e-a4b7a94bacff'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '16c2972e-7467-4b6f-9e28-fc7d44cf5d7b'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '93ec533d-5bbb-4dbb-bed2-1fee147b3fc3'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '7fdf469a-1abf-45bb-96eb-b85c56179808'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '2019-11-06 02:26:47', '0764b160-649e-4c9d-a9db-6f3655c76ac3'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '81440b5d-83dc-433b-a6ca-16e114c5d50c'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'ad3eecb9-3f44-4b8d-85d9-e4b596629793'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'e13f176d-9e07-4b63-8663-d9d839ef7118'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '292890fc-b985-44b1-b56e-f2f6294b7859'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '9535e2ed-4f75-46fd-a9fe-2518b9ad1ff7'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '3e501583-5d1f-4bbb-bc60-fa414e652498'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'b348f88e-a1dd-4f4b-9d54-4340ebdc5fb3'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'cedaa200-69aa-470f-806f-8f89e0b8bc32'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '07f66855-35ee-4dc0-8550-c4c97c07fb54'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '70cb8525-f7fb-495d-b759-b13aed61f052'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '8c63dc35-bd49-4d71-96a3-0a2eac0b6b00'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'd60aa71a-e7fd-49f1-884b-ea5f5c757d1d'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '653a432b-a13a-41cc-a42c-8d9e0eb34d2d'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '04e956c7-5a16-43c3-b518-9d40a662fb81'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '20bd3e54-88f0-49c7-a3bb-ec165b806d2a'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'f28967b0-36bc-4e5d-aecc-39ea8e1d4a9c'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '95eaa564-d7f0-4c47-93d5-7b0c7d27892b'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2aa89651-f05f-4872-8467-2589df7d2167'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '9dcb6fbf-d738-4a3b-952d-224f01f22c09'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '255b7b26-21ef-4262-aa3a-169a1208692e'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'd93ad85e-5607-4423-9f27-d1e252972211'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', 'bbe86e67-e569-44fe-8c1b-6feb46eb300c'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '6c13e221-459d-4a35-af2a-18eb9be1691d'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '2019-11-06 02:26:48', '954ffc40-31d8-4501-96e7-e2aeb536f309'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '245c873a-b72d-4db5-a14b-e34910cbe957'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', 'c8c46172-1bb2-47a4-a510-65e0da3ee273'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '3e34d7f1-a926-4b0c-8db7-4c69b4544bbe'),
(136, NULL, 'app', 'm190312_152740_element_revisions', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '9e9c2b44-10a4-4ea9-a334-d194c1077448'),
(137, NULL, 'app', 'm190327_235137_propagation_method', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '195d890b-3efb-438e-a3ad-83d06eda6039'),
(138, NULL, 'app', 'm190401_223843_drop_old_indexes', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '0a8b721a-16c6-49a4-a283-168e9ba327dc'),
(139, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '38fa4bc4-8dfa-4f7b-864d-3c823cce68dd'),
(140, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '6a90d282-b202-41b2-8baf-cdc2878b5201'),
(141, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '69370050-f68f-472d-b744-5cdc49212745'),
(142, NULL, 'app', 'm190504_150349_preview_targets', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2e855a22-d2a4-435b-bb6a-c96624550985'),
(143, NULL, 'app', 'm190516_184711_job_progress_label', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', 'a67bc558-bdcf-4e08-9d1e-4ec2f8d8b449'),
(144, NULL, 'app', 'm190523_190303_optional_revision_creators', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', 'dcde5021-57ee-4913-ba22-6d0da1c5f9dc'),
(145, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '40d85eb7-945f-42a3-bad1-8f9664649319'),
(146, NULL, 'app', 'm190605_223807_unsaved_drafts', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '1c7958d1-eec9-4ce2-b61e-da7cc858b5c4'),
(147, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '5ce2267e-295e-40bb-b5ea-c7a63063528f'),
(148, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '0f731c6b-e03c-4cc8-b44b-66d9575b121d'),
(149, NULL, 'app', 'm190617_164400_add_gqlschemas_table', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', 'adf14886-5735-4e0a-86e1-9d84e9f38f01'),
(150, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '7c77eca9-6f47-48ba-91c8-cdb3f19bacbd'),
(151, NULL, 'app', 'm190711_153020_drop_snapshots', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '1e580171-69c7-4e5d-b8d1-524838a75623'),
(152, NULL, 'app', 'm190712_195914_no_draft_revisions', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '6b20e559-e3fd-4a08-a530-f174af4743cb'),
(153, NULL, 'app', 'm190723_140314_fix_preview_targets_column', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '282d5d61-08e1-4183-830a-4350db40a30a'),
(154, NULL, 'app', 'm190820_003519_flush_compiled_templates', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '854d0716-edb0-407f-b80c-e12c7a841ced'),
(155, NULL, 'app', 'm190823_020339_optional_draft_creators', '2019-11-06 02:26:49', '2019-11-06 02:26:49', '2019-11-06 02:26:49', 'd83d6a47-0ad0-44f0-b4ce-bc59bf44f9be'),
(156, 2, 'plugin', 'm180430_204710_remove_old_plugins', '2019-11-07 07:17:58', '2019-11-07 07:17:58', '2019-11-07 07:17:58', '24d98473-e24b-4d5b-a800-d062a4208564'),
(157, 2, 'plugin', 'Install', '2019-11-07 07:17:58', '2019-11-07 07:17:58', '2019-11-07 07:17:58', 'a9dfe701-9514-4182-80bf-e9ccf8163464'),
(158, 2, 'plugin', 'm190225_003922_split_cleanup_html_settings', '2019-11-07 07:17:58', '2019-11-07 07:17:58', '2019-11-07 07:17:58', 'd6092f25-b2ce-468d-a85d-f94517d7af9d'),
(159, 3, 'plugin', 'Install', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '81534dd2-7aa9-48ad-b78b-8806972f14df'),
(160, 3, 'plugin', 'm180210_000000_migrate_content_tables', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', 'd3b6ecb0-3ae6-4813-b449-1588781ce66f'),
(161, 3, 'plugin', 'm180211_000000_type_columns', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '0e2beee0-cd5f-4a23-8498-4d8956ad5eb2'),
(162, 3, 'plugin', 'm180219_000000_sites', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '8da72590-dc1c-45de-8cee-639d6ace0473'),
(163, 3, 'plugin', 'm180220_000000_fix_context', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', 'e3f917ca-c3e4-4d17-9691-ccf6d537d064'),
(164, 3, 'plugin', 'm190117_000000_soft_deletes', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '3db8a35e-1aec-44b1-8793-10e70f46b4e8'),
(165, 3, 'plugin', 'm190117_000001_context_to_uids', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '3332c8ba-12b4-472f-b819-da91e9f6b9c6'),
(166, 3, 'plugin', 'm190120_000000_fix_supertablecontent_tables', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '0c59265c-245e-46ea-a180-655ad1a7e9b0'),
(167, 3, 'plugin', 'm190131_000000_fix_supertable_missing_fields', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '72b50e89-3f19-4f89-94ca-9d1ba4318abb'),
(168, 3, 'plugin', 'm190227_100000_fix_project_config', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '67a14e34-3bd5-4274-9aeb-ef67ef64c574'),
(169, 3, 'plugin', 'm190511_100000_fix_project_config', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', 'a1924930-621b-49cd-b613-9b40632555de'),
(170, 3, 'plugin', 'm190520_000000_fix_project_config', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2476e1ad-bc36-4aef-8e9d-c7ec64261c7c'),
(171, 3, 'plugin', 'm190714_000000_propagation_method', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '2019-11-08 01:31:48', '954ed420-698b-4d28-a5ae-f6edc5d30e5f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_plugins`
--

CREATE TABLE `blog_plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_plugins`
--

INSERT INTO `blog_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 'redactor', '2.4.0', '2.3.0', 'unknown', NULL, '2019-11-07 07:17:58', '2019-11-07 07:17:58', '2019-11-14 03:13:40', 'b5f4b211-9090-4eb7-9fa7-f1ee6b06aded'),
(3, 'super-table', '2.3.0', '2.2.0', 'unknown', NULL, '2019-11-08 01:31:40', '2019-11-08 01:31:40', '2019-11-14 03:13:40', 'b0e4a5f0-367f-4af2-9a0b-b15c801b079a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_queue`
--

CREATE TABLE `blog_queue` (
  `id` int(11) NOT NULL,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_relations`
--

CREATE TABLE `blog_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_relations`
--

INSERT INTO `blog_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 3, 17, NULL, 15, 1, '2019-11-07 02:34:02', '2019-11-07 02:34:02', '7384feff-828a-4e7b-9e33-b63e9e8f0b08'),
(4, 3, 18, NULL, 15, 1, '2019-11-07 02:35:27', '2019-11-07 02:35:27', 'e15bbff9-5002-4e3c-bb92-272f5c2460d2'),
(6, 3, 19, NULL, 15, 1, '2019-11-07 02:41:47', '2019-11-07 02:41:47', '36e57d3b-6189-4fb8-b2fa-3cd60c8f3d07'),
(8, 3, 22, NULL, 20, 1, '2019-11-07 06:02:48', '2019-11-07 06:02:48', '51d07b6a-18ba-49c9-b854-21390b3c7579'),
(11, 3, 23, NULL, 20, 1, '2019-11-07 06:18:03', '2019-11-07 06:18:03', '2aa28c01-33ae-4ad0-9dd0-f6c952af4cff'),
(13, 3, 24, NULL, 20, 1, '2019-11-07 06:18:24', '2019-11-07 06:18:24', 'a6bba986-8de8-4dc0-a310-2c6ad91030b5'),
(18, 3, 26, NULL, 20, 1, '2019-11-07 06:18:50', '2019-11-07 06:18:50', '84b2154d-6af5-4b92-aa91-95e8eb55515f'),
(20, 3, 27, NULL, 20, 1, '2019-11-07 06:19:28', '2019-11-07 06:19:28', 'b11a0e6c-6c30-46ec-9f8a-c26d2e7e01bc'),
(22, 3, 28, NULL, 20, 1, '2019-11-07 06:26:04', '2019-11-07 06:26:04', '568e4804-af32-40ae-8117-8b72acccfd0e'),
(24, 3, 29, NULL, 20, 1, '2019-11-07 06:34:30', '2019-11-07 06:34:30', '3bf5bc55-3091-479f-91dd-8137eb826371'),
(26, 3, 30, NULL, 20, 1, '2019-11-07 06:34:54', '2019-11-07 06:34:54', '8806e673-7287-4c0b-a96f-9e4f291111ea'),
(28, 3, 31, NULL, 20, 1, '2019-11-07 06:35:15', '2019-11-07 06:35:15', 'abab4a65-368d-436e-b6e8-9e1fdc0a5b8e'),
(30, 3, 32, NULL, 20, 1, '2019-11-07 06:36:04', '2019-11-07 06:36:04', '9ebca1c1-c540-4d6a-8e29-54dcf3deae54'),
(32, 3, 33, NULL, 20, 1, '2019-11-07 06:37:22', '2019-11-07 06:37:22', '96de7d68-ad11-4e46-ad1d-69938ce4c61c'),
(34, 3, 34, NULL, 20, 1, '2019-11-07 06:37:44', '2019-11-07 06:37:44', '2a7eeb95-c0e8-42b3-ac56-736e85487372'),
(36, 3, 35, NULL, 20, 1, '2019-11-07 06:38:14', '2019-11-07 06:38:14', '1dd4ab87-2951-4886-a565-ddc906f01b7b'),
(38, 3, 36, NULL, 20, 1, '2019-11-07 06:38:17', '2019-11-07 06:38:17', 'ac393073-84c5-4e9a-a4c0-3d4fdea9e23d'),
(40, 3, 37, NULL, 20, 1, '2019-11-07 06:38:44', '2019-11-07 06:38:44', '0886b2ae-9e7b-4f28-b5a5-eeadb9c5f730'),
(42, 3, 38, NULL, 20, 1, '2019-11-07 06:39:40', '2019-11-07 06:39:40', '60a78d30-d4bb-4e08-8040-ddad8c61a1a9'),
(44, 3, 39, NULL, 20, 1, '2019-11-07 06:46:30', '2019-11-07 06:46:30', '30638de1-0786-4805-a792-9788d59bca48'),
(46, 3, 40, NULL, 20, 1, '2019-11-07 06:46:50', '2019-11-07 06:46:50', '5ac2ac5b-6614-4e85-bd9d-79ac67395ea8'),
(48, 3, 41, NULL, 20, 1, '2019-11-07 06:47:14', '2019-11-07 06:47:14', 'ae32a920-6cd5-4bf3-b3f9-7a64f930b40c'),
(50, 3, 42, NULL, 20, 1, '2019-11-07 07:02:55', '2019-11-07 07:02:55', '4a1a3ddc-348b-41ae-9f80-b1f3241c7ebd'),
(52, 3, 43, NULL, 20, 1, '2019-11-07 07:02:56', '2019-11-07 07:02:56', '99bd128e-4c09-43d7-9267-2b51d3b6f240'),
(54, 3, 44, NULL, 20, 1, '2019-11-07 07:02:57', '2019-11-07 07:02:57', '1be19e11-2dfa-4f8b-9c38-04eaca143ecb'),
(56, 3, 45, NULL, 20, 1, '2019-11-07 07:03:15', '2019-11-07 07:03:15', 'a387ddf4-25b8-448e-ba71-1419627946ec'),
(61, 3, 46, NULL, 20, 1, '2019-11-07 07:03:39', '2019-11-07 07:03:39', '251db58f-1fd0-41a0-8c2b-c55d23376ce4'),
(63, 3, 47, NULL, 20, 1, '2019-11-07 07:12:43', '2019-11-07 07:12:43', '7a62d908-0996-416b-b2ce-eedda88f69d6'),
(65, 3, 48, NULL, 20, 1, '2019-11-07 07:19:24', '2019-11-07 07:19:24', '418d856c-3070-478c-b162-d2e97db18796'),
(68, 3, 58, NULL, 56, 1, '2019-11-08 02:03:44', '2019-11-08 02:03:44', '8281e533-9cde-4a8a-bf1f-3990770e343c'),
(102, 3, 103, NULL, 56, 1, '2019-11-08 02:49:39', '2019-11-08 02:49:39', '1a289eef-ab0e-4d9c-b055-7ebaff9c87da'),
(104, 3, 104, NULL, 56, 1, '2019-11-08 03:26:55', '2019-11-08 03:26:55', '5df09d33-f883-4016-89ff-e43087f8998b'),
(110, 3, 107, NULL, 57, 1, '2019-11-08 07:53:40', '2019-11-08 07:53:40', 'c8bd57c6-6ba8-457e-96c0-6561322d7ab8'),
(112, 3, 115, NULL, 56, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '07c64831-e0ad-4858-8343-fd9bb6cf3d31'),
(114, 3, 123, NULL, 56, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'ea649d87-a4fb-4263-ac5d-8f3d3606b94a'),
(116, 3, 138, NULL, 57, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '15b1a803-7c66-4319-a780-d4c76ed5a5ab'),
(118, 3, 146, NULL, 57, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'b38c68ce-8c40-48c4-8a4d-71d3b144d1bf'),
(120, 3, 154, NULL, 56, 1, '2019-11-08 08:14:38', '2019-11-08 08:14:38', '471d39cb-2949-4166-9ae5-7b7fe55adc8e'),
(122, 3, 156, NULL, 57, 1, '2019-11-08 08:18:38', '2019-11-08 08:18:38', '349853f4-dddc-4a9f-a5eb-5a0fb2772b68'),
(124, 3, 158, NULL, 57, 1, '2019-11-08 08:18:56', '2019-11-08 08:18:56', '4cb29895-b721-4d60-9119-eb66077adaba'),
(130, 3, 163, NULL, 57, 1, '2019-11-08 08:21:00', '2019-11-08 08:21:00', '38a30914-d5e4-46b1-bee3-9e8d4e36c6fb'),
(157, 26, 179, NULL, 169, 1, '2019-11-09 03:12:18', '2019-11-09 03:12:18', '1d6880fb-0783-4a7a-a807-40aa2c825a9c'),
(158, 3, 179, NULL, 56, 1, '2019-11-09 03:12:18', '2019-11-09 03:12:18', 'e169ca43-3e12-4987-b898-4887f68496d2'),
(161, 26, 181, NULL, 169, 1, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '4d332bff-0da4-4962-b1ce-ea85ebf8b4b1'),
(162, 3, 181, NULL, 57, 1, '2019-11-09 03:12:49', '2019-11-09 03:12:49', 'bc69de85-8dfc-456e-ad60-b4a30df79d97'),
(173, 26, 188, NULL, 169, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '018c041b-e413-4afb-8d16-01c9785c9c6d'),
(174, 3, 188, NULL, 57, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '2976d5a7-72e2-4b0b-b681-7e484a45457a'),
(177, 26, 190, NULL, 169, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'ecd9d04d-f0bd-4c2d-b134-91b3111428e7'),
(178, 3, 190, NULL, 57, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'fdb88185-03ff-4776-bd52-eaefb01de878'),
(181, 26, 192, NULL, 169, 1, '2019-11-09 03:17:00', '2019-11-09 03:17:00', 'f0cdc070-622b-4f32-bcee-97e8372e8443'),
(182, 3, 192, NULL, 57, 1, '2019-11-09 03:17:00', '2019-11-09 03:17:00', '7c8bdf11-3243-41af-b821-47ed843f78f6'),
(183, 26, 186, NULL, 169, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', 'df10efdb-1f25-4de2-928e-f5e50921c4aa'),
(184, 3, 186, NULL, 57, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '28d74fd7-068a-4ad1-886f-38510a4a0826'),
(185, 26, 194, NULL, 169, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', 'e501638c-58bf-4970-abc4-98e3738d07ab'),
(186, 3, 194, NULL, 57, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '44b87d41-4dd6-4b0c-8eb7-a0c9d22dbc25'),
(189, 26, 197, NULL, 169, 1, '2019-11-09 03:46:33', '2019-11-09 03:46:33', '5e85e165-a54e-4236-ae35-823ce929114d'),
(190, 3, 197, NULL, 57, 1, '2019-11-09 03:46:33', '2019-11-09 03:46:33', '53b67084-efd0-4caf-b7b6-44b05e4280bf'),
(191, 26, 106, NULL, 169, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'f8de44ae-75cc-4548-8083-ad757ac9a77a'),
(192, 3, 106, NULL, 57, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'e95f3611-a716-47b7-abb7-7ba4d93f4a8e'),
(193, 26, 199, NULL, 169, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', 'a37e983b-44a1-421b-845b-a438e7f30d6c'),
(194, 3, 199, NULL, 57, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '01afabd2-9c76-4ee2-8563-65eb3069aacd'),
(197, 26, 201, NULL, 169, 1, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '5e23aa66-97dd-4424-bee9-0b8d7224d4c8'),
(198, 3, 201, NULL, 56, 1, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '25ef3fa9-17ad-484f-a415-e20259bdf02d'),
(201, 26, 203, NULL, 169, 1, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '21418fae-272d-4be0-b267-3737a1dffe47'),
(202, 3, 203, NULL, 56, 1, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '64b7d6dc-86a4-491e-b7f1-96d61667b6e0'),
(205, 26, 226, NULL, 169, 1, '2019-11-12 03:04:11', '2019-11-12 03:04:11', 'd64f33d6-66af-424a-9e48-4bca31aefca9'),
(206, 3, 226, NULL, 56, 1, '2019-11-12 03:04:11', '2019-11-12 03:04:11', 'e20b8636-d41a-40e7-9f91-3f465edaf23e'),
(209, 26, 249, NULL, 169, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '35db45cc-33b7-408f-aa0a-ca8f0657834c'),
(210, 3, 249, NULL, 56, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '87b1f089-446f-48b7-8f81-ffa962d09b91'),
(213, 26, 251, NULL, 170, 1, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '54eb5eb7-cbcb-4314-a77b-3d300846c4f2'),
(214, 3, 251, NULL, 56, 1, '2019-11-13 01:34:42', '2019-11-13 01:34:42', 'f694940e-60e2-43f7-86c6-197254a10c42'),
(217, 26, 263, NULL, 170, 1, '2019-11-14 00:40:30', '2019-11-14 00:40:30', 'ebe268e1-f7e4-43d1-9a18-94a90857af10'),
(218, 3, 263, NULL, 56, 1, '2019-11-14 00:40:30', '2019-11-14 00:40:30', '54c9aeb1-b053-4c33-9c3a-b657828b9b0f'),
(221, 26, 265, NULL, 170, 1, '2019-11-14 00:41:30', '2019-11-14 00:41:30', '6136758b-093c-4163-929c-8eeebc46fd93'),
(222, 3, 265, NULL, 56, 1, '2019-11-14 00:41:30', '2019-11-14 00:41:30', '78aa1919-2160-4688-866f-67c90dbbef49'),
(223, 26, 247, NULL, 170, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', 'e5288f73-3985-457e-a0ad-fa8ea309f9c7'),
(224, 3, 247, NULL, 56, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '84739b39-eb94-451d-ab79-bc878b6a4cb6'),
(225, 26, 267, NULL, 170, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '93d38999-5852-41da-8f2d-5ff8e23e5372'),
(226, 3, 267, NULL, 56, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', 'd7439132-b367-4035-af3a-88ba1c1a7b45'),
(227, 3, 169, NULL, 56, 1, '2019-11-14 01:05:03', '2019-11-14 01:05:03', '37c6c755-5f17-41f6-b5da-941674a41c3b'),
(228, 3, 170, NULL, 57, 1, '2019-11-14 01:05:17', '2019-11-14 01:05:17', '007651ac-154d-483b-9b00-ddb4a57a824a'),
(229, 26, 269, NULL, 170, 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '9d73478f-6d1d-44de-a6d8-8f8cfec7fe3d'),
(230, 3, 269, NULL, 56, 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '02378671-a2ab-4150-b8d5-f078bd74277b'),
(231, 26, 271, NULL, 170, 1, '2019-11-14 01:18:59', '2019-11-14 01:18:59', '1149b6cf-36b8-45ba-b140-09609871bea0'),
(232, 3, 271, NULL, 56, 1, '2019-11-14 01:18:59', '2019-11-14 01:18:59', '1c60e405-c5d0-4a31-804b-5f46087b4ec7'),
(233, 26, 273, NULL, 169, 1, '2019-11-14 01:19:05', '2019-11-14 01:19:05', '06a1abdb-5552-463f-97ee-a5cbcf26dd04'),
(234, 3, 273, NULL, 57, 1, '2019-11-14 01:19:05', '2019-11-14 01:19:05', 'd87f602e-6262-496b-a658-fb4ea1650871'),
(235, 26, 275, NULL, 169, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '6d27de70-b0c8-41ba-991d-eb823d19d616'),
(236, 3, 275, NULL, 57, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '90fff817-4072-472f-955e-cdd57d1c4d12'),
(237, 26, 277, NULL, 170, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '298a4c7c-5bad-4113-aaa3-44fd1d526e40'),
(238, 3, 277, NULL, 56, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '11e54e25-7914-477f-a36d-10500b5afd47'),
(239, 26, 279, NULL, 170, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '06bccfd2-6900-4b61-9b11-d03a080bc651'),
(240, 3, 279, NULL, 56, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'b548b72b-be4b-480a-83cc-711d3e829d05'),
(241, 26, 13, NULL, 169, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'aaa297c3-64bb-4684-8f79-b93b7e9ebb7c'),
(242, 3, 13, NULL, 56, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', '22cff7c2-d606-422a-8c28-7752e64ce846'),
(243, 26, 281, NULL, 169, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'ce5f8e37-2c62-404a-9191-4cebedc54a54'),
(244, 3, 281, NULL, 56, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'e342d1fa-c7b0-457c-86c9-b2780ee514ac'),
(245, 26, 283, NULL, 170, 1, '2019-11-14 07:23:26', '2019-11-14 07:23:26', '772dc964-f056-4460-9278-0c3591ad9523'),
(262, 26, 303, NULL, 170, 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', 'f074af71-83d8-4c0b-82b6-e66e6707d79f'),
(265, 26, 306, NULL, 170, 1, '2019-11-14 07:38:59', '2019-11-14 07:38:59', 'ece8f560-c916-4019-80a1-cb36f7978922'),
(266, 3, 306, NULL, 305, 1, '2019-11-14 07:38:59', '2019-11-14 07:38:59', '2f493371-efe8-463b-8cf6-5574b1e7280a'),
(267, 26, 301, NULL, 170, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'e8df2c4c-a3c4-454e-a17d-bd93c4d8e3c8'),
(268, 3, 301, NULL, 305, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'a8a7b8e5-cc8a-4c70-b34a-ece0277a7fa8'),
(269, 26, 308, NULL, 170, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'bd010e02-57a4-419b-aec0-0b4c331e4455'),
(270, 3, 308, NULL, 305, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'f7f3da03-3e22-44ca-980f-bd22b52c0aad'),
(271, 26, 310, NULL, 169, 1, '2019-11-14 07:43:48', '2019-11-14 07:43:48', 'c78d8de2-a9be-40f6-ba10-28669cdfabbc'),
(272, 3, 310, NULL, 56, 1, '2019-11-14 07:43:48', '2019-11-14 07:43:48', 'a040be17-5787-44e0-8364-2f2f280a3700'),
(273, 26, 312, NULL, 169, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'ed1bdb73-ac8e-4a42-b02a-e873e617977f'),
(274, 3, 312, NULL, 56, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '10495fc6-b97f-423a-a7ea-f83ad71e2e9a'),
(275, 26, 314, NULL, 169, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '25bd43c2-045a-4142-9ec1-112ce98ae61e'),
(276, 3, 314, NULL, 57, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'f52ad4b3-78f3-428d-939c-203eee67a1aa'),
(277, 26, 316, NULL, 169, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '19cd3e14-22e2-4556-8e5c-1e950ce3a5fb'),
(278, 3, 316, NULL, 57, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '6505d417-29b3-4df6-af6a-74db4b2e7284'),
(279, 26, 318, NULL, 170, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '989049ac-cec7-4677-a5d7-02c3611e7551'),
(280, 3, 318, NULL, 305, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'f06545d5-0805-4ecb-9a8e-aedf39960305'),
(281, 26, 320, NULL, 170, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '41bae90a-a75a-409d-8122-1ac895a4ba1d'),
(282, 3, 320, NULL, 305, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '7632d9d2-9d43-414e-babc-011e5b32c7e5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_resourcepaths`
--

CREATE TABLE `blog_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_resourcepaths`
--

INSERT INTO `blog_resourcepaths` (`hash`, `path`) VALUES
('17e97f0c', '@lib/jquery.payment'),
('1a412799', '@bower/jquery/dist'),
('226be661', '@lib'),
('35d18c6c', '@lib/element-resize-detector'),
('3ea622d6', '@app/web/assets/edittransform/dist'),
('3f66dec6', '@app/web/assets/sites/dist'),
('418d0fc1', '@app/web/assets/fields/dist'),
('4216c9c', '@app/web/assets/plugins/dist'),
('45674b41', '@lib/jquery-ui'),
('46ea218f', '@app/web/assets/dashboard/dist'),
('4776338a', '@app/web/assets/deprecationerrors/dist'),
('664ce38f', '@app/web/assets/editentry/dist'),
('79a2aeac', '@app/web/assets/dbbackup/dist'),
('81d97abd', '@app/web/assets/login/dist'),
('852282b0', '@vendor/craftcms/redactor/lib/redactor'),
('85e76fc3', '@app/web/assets/cp/dist'),
('8e031ae0', '@lib/fileupload'),
('914f27dc', '@lib/jquery-touch-events'),
('93c92d55', '@lib/prismjs'),
('96eb1b1e', '@lib/picturefill'),
('984e3b4f', '@lib/d3'),
('9edf22e8', '@app/web/assets/pluginstore/dist'),
('a1f7d5ca', '@app/web/assets/tablesettings/dist'),
('a882a6e1', '@app/web/assets/craftsupport/dist'),
('a8ddbb95', '@app/web/assets/utilities/dist'),
('abf32cc9', '@lib/garnishjs'),
('b0124e4e', '@app/web/assets/installer/dist'),
('b2b46631', '@app/web/assets/generalsettings/dist'),
('bced0e4', '@lib/velocity'),
('beb5f8f7', '@lib/fabric'),
('c2280b85', '@app/web/assets/editcategory/dist'),
('c295369a', '@lib/selectize'),
('c8f97210', '@lib/xregexp'),
('cd367012', '@app/web/assets/matrixsettings/dist'),
('d7ebde89', '@app/web/assets/recententries/dist'),
('e0b08b56', '@vendor/craftcms/simple-text/lib/behave.js'),
('e1ea7a4', '@app/web/assets/editsection/dist'),
('e9519ce7', '@app/web/assets/updateswidget/dist'),
('f7062a65', '@lib/timepicker'),
('f7fb23c4', '@verbb/supertable/resources/dist'),
('f8781f30', '@craft/redactor/assets/field/dist'),
('f904ced8', '@app/web/assets/updater/dist'),
('fcfc247d', '@app/web/assets/feed/dist');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_revisions`
--

CREATE TABLE `blog_revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_revisions`
--

INSERT INTO `blog_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 3, 1, 1, NULL),
(2, 3, 1, 2, 'Applied “Draft 1”'),
(3, 3, 1, 3, NULL),
(4, 3, 1, 4, NULL),
(5, 3, 1, 5, NULL),
(6, 13, 1, 1, NULL),
(7, 13, 1, 2, NULL),
(8, 13, 1, 3, NULL),
(9, 13, 1, 4, NULL),
(10, 13, 1, 5, NULL),
(11, 13, 1, 6, NULL),
(12, 13, 1, 7, NULL),
(13, 13, 1, 8, 'Applied “Draft 1”'),
(14, 13, 1, 9, NULL),
(15, 13, 1, 10, NULL),
(16, 13, 1, 11, NULL),
(17, 13, 1, 12, NULL),
(18, 13, 1, 13, NULL),
(19, 13, 1, 14, NULL),
(20, 13, 1, 15, NULL),
(21, 13, 1, 16, NULL),
(22, 13, 1, 17, NULL),
(23, 13, 1, 18, NULL),
(24, 13, 1, 19, NULL),
(25, 13, 1, 20, NULL),
(26, 13, 1, 21, NULL),
(27, 13, 1, 22, NULL),
(28, 13, 1, 23, NULL),
(29, 13, 1, 24, NULL),
(30, 13, 1, 25, NULL),
(31, 13, 1, 26, NULL),
(32, 13, 1, 27, NULL),
(33, 13, 1, 28, NULL),
(34, 13, 1, 29, NULL),
(35, 49, 1, 1, NULL),
(36, 49, 1, 2, NULL),
(37, 49, 1, 3, NULL),
(38, 49, 1, 4, NULL),
(39, 54, 1, 1, NULL),
(40, 13, 1, 30, NULL),
(41, 54, 1, 2, NULL),
(42, 85, 1, 1, NULL),
(43, 85, 1, 2, NULL),
(44, 85, 1, 3, NULL),
(45, 85, 1, 4, NULL),
(46, 85, 1, 5, NULL),
(47, 13, 1, 31, NULL),
(48, 13, 1, 32, NULL),
(49, 106, 1, 1, NULL),
(50, 13, 1, 33, NULL),
(51, 13, 1, 34, NULL),
(52, 106, 1, 2, NULL),
(53, 106, 1, 3, NULL),
(54, 13, 1, 35, NULL),
(55, 106, 1, 4, NULL),
(56, 106, 1, 5, NULL),
(57, 85, 1, 6, NULL),
(58, 106, 1, 6, NULL),
(59, 85, 1, 7, NULL),
(60, 85, 1, 8, NULL),
(61, 85, 1, 9, NULL),
(62, 13, 1, 36, NULL),
(63, 106, 1, 7, NULL),
(64, 85, 1, 10, NULL),
(65, 186, 1, 1, NULL),
(66, 186, 1, 2, NULL),
(67, 186, 1, 3, NULL),
(68, 186, 1, 4, NULL),
(69, 85, 1, 11, NULL),
(70, 106, 1, 8, NULL),
(71, 106, 1, 9, NULL),
(72, 13, 1, 37, NULL),
(73, 13, 1, 38, NULL),
(74, 207, 1, 1, NULL),
(75, 207, 1, 2, NULL),
(76, 207, 1, 3, NULL),
(77, 207, 1, 4, NULL),
(78, 207, 1, 5, NULL),
(79, 207, 1, 6, NULL),
(80, 215, 1, 1, NULL),
(81, 215, 1, 2, NULL),
(82, 215, 1, 3, NULL),
(83, 215, 1, 4, NULL),
(84, 215, 1, 5, NULL),
(85, 215, 1, 6, NULL),
(86, 215, 1, 7, NULL),
(87, 215, 1, 8, NULL),
(88, 215, 1, 9, NULL),
(89, 207, 1, 7, NULL),
(90, 13, 1, 39, NULL),
(91, 229, 1, 1, NULL),
(92, 229, 1, 2, NULL),
(93, 229, 1, 3, NULL),
(94, 229, 1, 4, NULL),
(95, 229, 1, 5, NULL),
(96, 229, 1, 6, NULL),
(97, 237, 1, 1, NULL),
(98, 240, 1, 1, NULL),
(99, 240, 1, 2, NULL),
(100, 244, 1, 1, NULL),
(101, 237, 1, 2, NULL),
(102, 247, 1, 1, NULL),
(103, 247, 1, 2, NULL),
(104, 240, 1, 3, NULL),
(105, 244, 1, 2, NULL),
(106, 256, 1, 1, NULL),
(107, 256, 1, 2, NULL),
(108, 256, 1, 3, NULL),
(109, 261, 1, 1, NULL),
(110, 247, 1, 3, NULL),
(111, 247, 1, 4, NULL),
(112, 247, 1, 5, NULL),
(113, 269, 1, 1, NULL),
(114, 273, 1, 1, NULL),
(115, 277, 1, 1, NULL),
(116, 13, 1, 40, NULL),
(117, 301, 1, 1, NULL),
(118, 301, 1, 2, NULL),
(119, 301, 1, 3, NULL),
(120, 310, 1, 1, NULL),
(121, 314, 1, 1, NULL),
(122, 318, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_searchindex`
--

CREATE TABLE `blog_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_searchindex`
--

INSERT INTO `blog_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' mramamaulana60 gmail com '),
(1, 'slug', 0, 1, ''),
(3, 'field', 7, 1, ' 666 '),
(3, 'field', 6, 1, ' ini adalah blog craft '),
(3, 'slug', 0, 1, ' nomer acak '),
(3, 'title', 0, 1, ' blog '),
(9, 'kind', 0, 1, ' image '),
(9, 'extension', 0, 1, ' jpg '),
(9, 'filename', 0, 1, ' bnha jpg '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' bnha '),
(3, 'field', 8, 1, ' bnha '),
(15, 'filename', 0, 1, ' bnha jpg '),
(15, 'extension', 0, 1, ' jpg '),
(15, 'kind', 0, 1, ' image '),
(15, 'slug', 0, 1, ''),
(15, 'title', 0, 1, ' bnha '),
(16, 'filename', 0, 1, ' jojo 3 jpg '),
(16, 'extension', 0, 1, ' jpg '),
(16, 'kind', 0, 1, ' image '),
(16, 'slug', 0, 1, ''),
(16, 'title', 0, 1, ' jojo 3 '),
(20, 'filename', 0, 1, ' bnha jpg '),
(13, 'title', 0, 1, ' my hero academia '),
(20, 'extension', 0, 1, ' jpg '),
(20, 'kind', 0, 1, ' image '),
(20, 'slug', 0, 1, ''),
(20, 'title', 0, 1, ' bnha '),
(21, 'filename', 0, 1, ' jojo 3 jpg '),
(21, 'extension', 0, 1, ' jpg '),
(21, 'kind', 0, 1, ' image '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' jojo 3 '),
(13, 'slug', 0, 1, ' bnha1 '),
(49, 'slug', 0, 1, ' homepage '),
(49, 'title', 0, 1, ' homepage '),
(54, 'slug', 0, 1, ' homepage '),
(56, 'filename', 0, 1, ' bnha jpg '),
(56, 'extension', 0, 1, ' jpg '),
(56, 'kind', 0, 1, ' image '),
(56, 'slug', 0, 1, ''),
(56, 'title', 0, 1, ' bnha '),
(57, 'filename', 0, 1, ' jojo 3 jpg '),
(57, 'extension', 0, 1, ' jpg '),
(57, 'kind', 0, 1, ' image '),
(57, 'slug', 0, 1, ''),
(57, 'title', 0, 1, ' jojo 3 '),
(54, 'title', 0, 1, ' homepage '),
(85, 'slug', 0, 1, ' homepage '),
(86, 'slug', 0, 1, ''),
(87, 'slug', 0, 1, ''),
(85, 'title', 0, 1, ' homepage '),
(106, 'slug', 0, 1, ' jojo3 '),
(106, 'title', 0, 1, ' jojo bizzare adventure stardust crusader '),
(108, 'slug', 0, 1, ''),
(109, 'slug', 0, 1, ''),
(110, 'slug', 0, 1, ''),
(111, 'slug', 0, 1, ''),
(112, 'slug', 0, 1, ''),
(113, 'slug', 0, 1, ''),
(114, 'slug', 0, 1, ''),
(131, 'slug', 0, 1, ''),
(132, 'slug', 0, 1, ''),
(133, 'slug', 0, 1, ''),
(134, 'slug', 0, 1, ''),
(135, 'slug', 0, 1, ''),
(136, 'slug', 0, 1, ''),
(137, 'slug', 0, 1, ''),
(165, 'slug', 0, 1, ' anime '),
(165, 'title', 0, 1, ' anime '),
(169, 'slug', 0, 1, ' anime '),
(170, 'title', 0, 1, ' manga '),
(170, 'slug', 0, 1, ' manga '),
(174, 'slug', 0, 1, ''),
(186, 'slug', 0, 1, ' jojo3 1 '),
(186, 'title', 0, 1, ' jojo fake adventure '),
(187, 'slug', 0, 1, ''),
(207, 'slug', 0, 1, ' about '),
(207, 'title', 0, 1, ' m rama maulana '),
(215, 'slug', 0, 1, ' homepage '),
(215, 'title', 0, 1, ' homepage '),
(229, 'title', 0, 1, ' tentang '),
(229, 'slug', 0, 1, ' about '),
(237, 'title', 0, 1, ' kategori '),
(237, 'slug', 0, 1, ' kategori '),
(240, 'slug', 0, 1, ' anime '),
(244, 'title', 0, 1, ' manga '),
(244, 'slug', 0, 1, ' manga '),
(247, 'slug', 0, 1, ' bnha1 1 '),
(248, 'slug', 0, 1, ''),
(240, 'title', 0, 1, ' anime '),
(256, 'slug', 0, 1, ' about '),
(256, 'title', 0, 1, ' m rama maulana '),
(261, 'slug', 0, 1, ' kategori '),
(261, 'title', 0, 1, ' kategori '),
(247, 'title', 0, 1, ' zzzzcopy '),
(169, 'title', 0, 1, ' anime '),
(269, 'slug', 0, 1, ' bnha1 1 1 '),
(269, 'title', 0, 1, ' zzzzcopy copy '),
(270, 'slug', 0, 1, ''),
(273, 'slug', 0, 1, ' jojo3 1 '),
(273, 'title', 0, 1, ' jojo bizzare adventure stardust crusader copy '),
(274, 'slug', 0, 1, ''),
(277, 'slug', 0, 1, ' bnha1 1 2 '),
(277, 'title', 0, 1, ' zzzzcopy copy '),
(278, 'slug', 0, 1, ''),
(301, 'slug', 0, 1, ' darwins game '),
(302, 'slug', 0, 1, ''),
(305, 'filename', 0, 1, ' darwin game jpg '),
(305, 'extension', 0, 1, ' jpg '),
(305, 'kind', 0, 1, ' image '),
(305, 'slug', 0, 1, ''),
(305, 'title', 0, 1, ' darwin game '),
(301, 'title', 0, 1, ' darwin s game '),
(310, 'slug', 0, 1, ' bnha1 1 '),
(310, 'title', 0, 1, ' my hero academia copy '),
(311, 'slug', 0, 1, ''),
(314, 'slug', 0, 1, ' jojo3 1 '),
(314, 'title', 0, 1, ' jojo bizzare adventure stardust crusader copy '),
(315, 'slug', 0, 1, ''),
(318, 'slug', 0, 1, ' darwins game 1 '),
(318, 'title', 0, 1, ' darwin s game copy '),
(319, 'slug', 0, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sections`
--

CREATE TABLE `blog_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_sections`
--

INSERT INTO `blog_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'firstSection', 'firstsection', 'channel', 1, 'all', NULL, '2019-11-06 04:05:54', '2019-11-06 04:07:18', '2019-11-06 04:07:18', 'cbaa617f-dd40-4652-b9db-38c0570b8314'),
(2, NULL, 'section image', 'sectionImage', 'channel', 1, 'all', NULL, '2019-11-06 04:30:51', '2019-11-06 04:36:57', '2019-11-06 04:36:57', '8bb25414-b3da-4d6d-a9fe-d755ab3a8ad8'),
(3, NULL, 'main section', 'mainSection', 'channel', 1, 'all', NULL, '2019-11-06 04:50:30', '2019-11-07 00:07:10', '2019-11-07 00:07:10', '3f969419-a236-4c5e-be26-b1f8f695dcd7'),
(4, NULL, 'post', 'post', 'channel', 1, 'all', NULL, '2019-11-07 01:29:39', '2019-11-07 01:29:45', '2019-11-07 01:29:46', '976a60b2-2247-4b48-8a11-4d265d481728'),
(5, NULL, 'post', 'post', 'channel', 1, 'all', NULL, '2019-11-07 01:30:11', '2019-11-07 02:19:03', '2019-11-07 02:19:03', '1a90c6d9-a946-41cd-b547-6f1a82011e8f'),
(6, NULL, 'post', 'post', 'channel', 1, 'all', NULL, '2019-11-07 02:19:57', '2019-11-09 03:11:29', NULL, 'e1fd3291-10bf-4038-a10a-ed1a7ee79f46'),
(7, NULL, 'homepage', 'homepage', 'single', 1, 'all', NULL, '2019-11-08 01:07:33', '2019-11-08 01:09:35', '2019-11-08 01:09:36', 'c718e157-2aea-4a7a-a5a6-c8e09e755e81'),
(8, NULL, 'homepage', 'homepage', 'channel', 1, 'all', NULL, '2019-11-08 01:29:41', '2019-11-12 07:29:53', '2019-11-12 07:29:53', 'b8c82a4d-3557-4b62-8732-21a482c368e5'),
(9, 2, 'navbar', 'navbar', 'structure', 1, 'all', NULL, '2019-11-12 06:56:32', '2019-11-13 03:57:26', '2019-11-13 03:57:27', 'bc2ee8d1-d6d5-43a8-9281-332f0ea73295'),
(10, NULL, 'home', 'home', 'channel', 1, 'all', NULL, '2019-11-13 03:58:07', '2019-11-13 04:09:30', NULL, 'e4606df0-101f-4eb0-829c-22238ad390fa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sections_sites`
--

CREATE TABLE `blog_sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_sections_sites`
--

INSERT INTO `blog_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'firstsection/{slug}', '', 1, '2019-11-06 04:05:54', '2019-11-06 04:07:18', '1a2731e7-7131-47bc-8d07-7878a9766abf'),
(2, 2, 1, 1, 'section-image/{slug}', '', 1, '2019-11-06 04:30:51', '2019-11-06 04:36:57', '368f60d3-129b-4c0a-a8e0-bbb0c20f3249'),
(3, 3, 1, 1, 'main-section/{slug}', '', 1, '2019-11-06 04:50:30', '2019-11-07 00:07:10', 'b2eda263-00bf-46e7-aa3c-deb6e94ad6e4'),
(4, 4, 1, 1, 'post/{slug}', '', 1, '2019-11-07 01:29:39', '2019-11-07 01:29:45', '2ab5f783-93cd-4beb-b28f-0a1ad746779b'),
(5, 5, 1, 1, 'post/{slug}', '', 1, '2019-11-07 01:30:11', '2019-11-07 02:19:03', '8f0149d6-695d-4c14-8fcd-80daa84f8a4b'),
(6, 6, 1, 1, 'post/{slug}', 'blog/_entry', 1, '2019-11-07 02:19:57', '2019-11-09 03:11:29', 'ec7f9760-45cf-4233-963a-e193ab5371fb'),
(7, 7, 1, 1, '__home__', 'blog/_entry', 1, '2019-11-08 01:07:33', '2019-11-08 01:09:35', '3a157365-b02c-4630-b8c6-21f9658ba957'),
(8, 8, 1, 1, '{slug}', 'blog/_entry', 1, '2019-11-08 01:29:41', '2019-11-12 07:29:53', 'e038a041-fda1-4a63-962c-12f08674ac4d'),
(9, 9, 1, 1, '{slug}', 'blog\\_entry', 1, '2019-11-12 06:56:32', '2019-11-13 03:57:26', '608cebd1-ed31-4cfe-8d8e-b122b6fff6b4'),
(10, 10, 1, 1, '{slug}', 'blog\\_entry', 1, '2019-11-13 03:58:07', '2019-11-13 04:09:30', '45dae735-9ab7-429d-bc3f-bfdc23334557');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sequences`
--

CREATE TABLE `blog_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sessions`
--

CREATE TABLE `blog_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_sessions`
--

INSERT INTO `blog_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'y_P33vhQ1auJPiTmjgk9_iIMONKkSReMukyUXZTClPsuDbFTdbOJtTeM4oEIfSs2fkuYeyIF3kluM5Z4DE3XyHxl24aQpBnXdtMk', '2019-11-07 00:06:54', '2019-11-07 00:18:25', '7074727a-a69a-475d-9ed7-037426c55fe4'),
(2, 1, '41SHysedv5UlDxy2E3VoUjl7eMlx8bQu-b5jZjyX4QNMU-CY7PWblyNCXO016KUczJJlcugDPUOhfXqsq0Ku6Wgl56YUhMuiQDZa', '2019-11-07 01:28:18', '2019-11-07 02:21:25', '1e44a2e6-cde3-412c-85cc-4252fff276a0'),
(3, 1, '9h8CljjXWRomSJu5_P73cYQTLx3gPOjUmgyJrlwGqn7ATwhBGqKHd0_8CWp6v3cT80Kb-EZl9YgODMf1j0VQaPlzBGHd8TrZnnxl', '2019-11-07 02:25:46', '2019-11-07 02:25:46', '43b3d409-5c10-4774-9b71-78cde061f7a0'),
(15, 1, 'xr5eRkBOUfjWyNGh2PVWzsT39qltvlIhJM7LisHyW7j-dXgo07aK0iZ66LPWwS9sHJgYI69bPjmLLrFFzlD4W5qo3J7bq1WrnrKQ', '2019-11-11 10:26:26', '2019-11-11 10:27:11', '8538187c-aa89-43f5-9f25-38f194325eb1'),
(17, 1, 'Y0ddJJOWqMeYqj2YgXWoAWo9fEY3tU8CsYfPFrS5adZH53bjS3UlCWzHqCl7HmPXZatW9xF8Gi6pfsciLYBNluOA3vHgIvdYa-tp', '2019-11-12 06:27:52', '2019-11-12 08:38:54', 'b8ce28ef-6efa-451e-a149-667778bb3ea9'),
(19, 1, 'jQR5S41c4K29rXtrxPJJ1RhUW5sOeWIgB-cbUlorrNsyF6xsfLcIGZtHYzdkLmDvcxdZRXEIQq4sagQc5rLqqBMDr0yKumtxjshJ', '2019-11-14 05:49:24', '2019-11-14 07:47:05', '565e1fcd-671d-4698-91d3-d1423f645da1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_shunnedmessages`
--

CREATE TABLE `blog_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sitegroups`
--

CREATE TABLE `blog_sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_sitegroups`
--

INSERT INTO `blog_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'blog-craft', '2019-11-06 02:26:42', '2019-11-06 02:26:42', NULL, '76e83b0a-a5f5-44d2-ace8-9ce08907730e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_sites`
--

CREATE TABLE `blog_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_sites`
--

INSERT INTO `blog_sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'blog-craft', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2019-11-06 02:26:42', '2019-11-06 02:26:42', NULL, '06ea7227-25a1-413f-98b1-dd8d80fc7cfb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_stc_detaillist`
--

CREATE TABLE `blog_stc_detaillist` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_kategori` varchar(255) DEFAULT NULL,
  `field_tipe` varchar(255) DEFAULT NULL,
  `field_producer` varchar(255) DEFAULT NULL,
  `field_jumlahEpisode` varchar(255) DEFAULT NULL,
  `field_tanggalRilis` varchar(255) DEFAULT NULL,
  `field_judul` varchar(255) DEFAULT NULL,
  `field_genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_stc_detaillist`
--

INSERT INTO `blog_stc_detaillist` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_kategori`, `field_tipe`, `field_producer`, `field_jumlahEpisode`, `field_tanggalRilis`, `field_judul`, `field_genre`) VALUES
(1, 108, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', 'bb22c4bd-ba4e-447a-a3c4-5b45db14a8ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 109, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '56954d71-377d-4d0d-bd77-cf2b90ad07e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 110, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', 'fe766808-447d-4804-b53c-861af3b01fb3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 111, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', 'd2a9dc54-6100-4a81-85d5-43c2ad598eb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 112, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '593a4ed2-e26c-4e44-b73e-bea60ea31645', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 113, 1, '2019-11-08 08:03:28', '2019-11-08 08:04:36', '86987677-8bb9-4382-90ac-01cc823c736f', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 114, 1, '2019-11-08 08:03:28', '2019-11-14 02:14:28', 'cf7f51c4-63bb-40c7-bc17-e83c30b317b5', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(8, 116, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '59c2f8e0-6923-4d92-b41c-3999048f3967', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 117, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'e6daceb6-5a6f-4cf1-9e86-a43663b7fc7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 118, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '66042b5d-7e8d-44b7-bf6e-bbd18f5e6aa6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 119, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '8fba635e-24ce-4cc2-a642-ad1d50879c2b', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 120, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '7169f2b9-c13e-497e-8133-4aeef183a943', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 121, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '6e87529a-886d-4aee-a40a-afce69251659', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 122, 1, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'd164bcb9-7a9a-4a7c-8c8e-ca64b471decc', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 124, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '9d295f25-a6db-4059-be93-e1f4723f4a68', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 125, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '8f720f7e-09c5-4c0d-95ed-4db91f86711d', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 126, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'c6782209-8c85-45fa-9b8c-5560f8cddf71', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 127, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '45fd8e9a-76aa-4516-8ee8-f01d3944bc33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 128, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'ad6d0c5c-d3b4-46b8-9a4a-b542b56ddb8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 129, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '25b8e5fc-84bd-4e25-920f-ce163c84cd33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 130, 1, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '0f8874cd-890a-473e-9779-d731f337836d', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 131, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', 'd4e3f645-cd81-4bbb-8315-0b7f64a63d90', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 132, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '5a41aa0c-818c-4f70-a289-108ada3a57cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 133, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '0779374e-2121-47fe-8ad1-f21bc743eb89', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 134, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '00ce0a4e-16f2-4b73-8b8a-dc62f8460b9b', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 135, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '4fe639fd-fd80-40e5-a55b-f53166614fed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 136, 1, '2019-11-08 08:08:22', '2019-11-08 08:09:55', '057ff729-9ad3-4d29-936a-f791f86c74fb', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 137, 1, '2019-11-08 08:08:22', '2019-11-09 03:47:31', '68dd51e3-088a-419b-aa82-51cae0a8f990', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(29, 139, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '44c92827-2407-44b2-b1fc-c6923a6bdf0c', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 140, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '3ab7b99c-5955-463c-90c1-bc438e591a71', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 141, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'b88149eb-cd8f-40d4-a7b6-d21cdb0a32df', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 142, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'a43c16f4-1f22-4cc4-b2f5-c25668723596', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 143, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '146159cf-b4a1-4cc5-a3d3-c6a0b2ed7e72', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 144, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '08e30a70-15a7-4d7d-aefa-10a8fd190ec1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 145, 1, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'f5d928e2-d10f-44b3-8aa1-43dc556dff74', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 147, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'e40d87c8-bc52-4c20-b03d-7894a111beff', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 148, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '65df0927-c233-47f6-9113-ed7e2139c2cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 149, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '2c74b79f-c5ba-4587-b49e-dd970924d3bf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 150, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '2f6d2f49-f5e3-4c75-af15-e2791c954c8d', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 151, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '3813c7b5-fc40-4e46-8194-908bc4aa35b0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 152, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '3f25ce74-4603-45bd-a280-554669b771d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 153, 1, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '3befcbfd-446e-45df-95bb-140f9e0e2911', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 155, 1, '2019-11-08 08:14:38', '2019-11-08 08:14:38', 'c56b1078-86b6-4016-ba67-5f4a899cf6b6', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 – 26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(44, 157, 1, '2019-11-08 08:18:38', '2019-11-08 08:18:38', 'ccb04d98-ac76-4de8-86c2-063096b34b00', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(45, 159, 1, '2019-11-08 08:18:56', '2019-11-08 08:18:56', 'f3389df7-ab53-4071-9fa7-5ceab24f95eb', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(46, 164, 1, '2019-11-08 08:21:00', '2019-11-08 08:21:00', 'd776b21c-92f4-4736-821b-4bd1c72bc3cb', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(47, 180, 1, '2019-11-09 03:12:18', '2019-11-09 03:12:18', '0b2a52a0-354d-4079-8cd5-cf65d0dd544b', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 – 26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(48, 182, 1, '2019-11-09 03:12:49', '2019-11-09 03:12:49', 'c40fe729-0180-4d78-a078-7d63d4087f5c', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(49, 187, 1, '2019-11-09 03:16:26', '2019-11-09 03:18:08', 'cc337df0-7082-4544-b038-9c62a5dbf2ed', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(50, 189, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'a560bef3-6920-44ce-8846-2f528904dfe0', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(51, 191, 1, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '8f9a73f3-005a-4c9e-879b-f2928ff95e28', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(52, 193, 1, '2019-11-09 03:17:00', '2019-11-09 03:17:00', 'ea45ff13-017a-4b01-b52e-553f2bc9f152', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(53, 195, 1, '2019-11-09 03:18:08', '2019-11-09 03:18:08', '6fef677e-586a-4a15-86ba-ec40b388b5b9', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(54, 198, 1, '2019-11-09 03:46:33', '2019-11-09 03:46:33', 'b4bde52b-540e-45c9-91b1-532c81ad12f7', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(55, 200, 1, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '2963a1a4-a48e-4bbc-a24a-84d4f4875a33', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(56, 202, 1, '2019-11-09 06:45:49', '2019-11-09 06:45:49', 'c3357564-d0a0-4c13-9af0-17df97d46f16', 'Anime', 'TV Seri', 'Bones Studio', '13', NULL, 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(57, 204, 1, '2019-11-09 06:46:47', '2019-11-09 06:46:47', 'e78dc7b2-df9b-402a-89d7-0386dedf9de5', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(58, 227, 1, '2019-11-12 03:04:11', '2019-11-12 03:04:11', 'ef993262-1d0e-4f0b-8a12-51702fa393b8', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(59, 248, 1, '2019-11-13 01:34:15', '2019-11-14 00:42:01', '746181f0-5470-49a8-9393-8b23210f74f3', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(60, 250, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '9222c682-d4b6-4d9f-afce-6aaff8f926ba', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(61, 252, 1, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '703caa19-3c3c-4438-abfa-ff1eb48f9a34', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(62, 264, 1, '2019-11-14 00:40:30', '2019-11-14 00:40:30', 'ae2ddb4c-8e8f-4901-8ade-eac96212c4e3', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(63, 266, 1, '2019-11-14 00:41:30', '2019-11-14 00:41:30', 'cff7350b-d02b-41c2-be93-1ca45478883f', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(64, 268, 1, '2019-11-14 00:42:01', '2019-11-14 00:42:01', '75dbcb34-b341-458e-b4bb-3ef0d941b7ff', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(65, 270, 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', 'a040294d-6c08-4c7e-a315-e98cf1c91441', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(66, 272, 1, '2019-11-14 01:18:59', '2019-11-14 01:18:59', 'f30b4b60-fa26-4d8f-aa3d-eaf0ead0a670', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(67, 274, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '9ee08678-2dc9-4164-8b95-4f430ef472c8', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(68, 276, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '42291263-8245-4a12-bbbd-61e735b6d6fa', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(69, 278, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '1a05b09a-4247-4f3f-ab25-0225be37ce9f', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(70, 280, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '905c5ed7-45fc-47c8-a451-8192cb51ed5a', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(71, 282, 1, '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'afe6f9d4-7d3f-432b-8f68-e209aa7dfe48', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(72, 284, 1, '2019-11-14 07:23:26', '2019-11-14 07:23:26', 'ac7c3a54-c72e-4733-9498-546006a8eac2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 286, 1, '2019-11-14 07:23:52', '2019-11-14 07:23:52', '1de1b54a-aaf9-4ce9-be90-200912e21173', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 287, 1, '2019-11-14 07:23:57', '2019-11-14 07:23:57', '343efbda-56fa-4cb6-b47a-ad99f6d60399', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 288, 1, '2019-11-14 07:23:59', '2019-11-14 07:23:59', '097f23dd-b909-4197-981d-d559ac3105c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 289, 1, '2019-11-14 07:24:09', '2019-11-14 07:24:09', 'b461aabc-68cd-4438-bccc-7d5e3bca92c1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 290, 1, '2019-11-14 07:24:33', '2019-11-14 07:24:33', '085feae8-decf-4a34-aa88-ed117a3a66a7', NULL, NULL, NULL, NULL, NULL, 'Darwin', NULL),
(78, 291, 1, '2019-11-14 07:24:35', '2019-11-14 07:24:35', 'e0cd700e-c2e8-4a17-b527-f306dbdf26d6', NULL, NULL, NULL, NULL, NULL, 'Darwin\'s Game', NULL),
(79, 292, 1, '2019-11-14 07:24:39', '2019-11-14 07:24:39', 'afdd5848-f7f4-4cac-bc38-a3fcb7e83745', 'Manga', NULL, NULL, NULL, NULL, 'Darwin\'s Game', NULL),
(80, 293, 1, '2019-11-14 07:30:54', '2019-11-14 07:30:54', '930e8b99-0f2c-4618-b2e2-58dd3f8f17f3', 'Manga', 'Manga', NULL, NULL, NULL, 'Darwin\'s Game', NULL),
(81, 294, 1, '2019-11-14 07:31:50', '2019-11-14 07:31:50', 'f20c04d2-05f6-4d0d-b1dc-c03e2f3b3085', 'Manga', 'Manga', NULL, '81', NULL, 'Darwin\'s Game', NULL),
(82, 295, 1, '2019-11-14 07:31:51', '2019-11-14 07:31:51', 'da2f3c08-b81d-4ccf-9176-90bf8696349c', 'Manga', 'Manga', NULL, '81 ()', NULL, 'Darwin\'s Game', NULL),
(83, 296, 1, '2019-11-14 07:31:56', '2019-11-14 07:31:56', '178ca389-6538-4288-b86d-c4d2847e0c23', 'Manga', 'Manga', NULL, '81 (Belum Selesai)', NULL, 'Darwin\'s Game', NULL),
(84, 297, 1, '2019-11-14 07:32:42', '2019-11-14 07:32:42', '05374a74-770a-47fd-a026-dbf1aab786f4', 'Manga', 'Manga', NULL, '81 (Belum Selesai)', NULL, 'Darwin\'s Game', 'Action,'),
(85, 298, 1, '2019-11-14 07:32:44', '2019-11-14 07:32:44', 'a1b2999f-c361-410d-b465-ddd00b52b0f8', 'Manga', 'Manga', NULL, '81 (Belum Selesai)', NULL, 'Darwin\'s Game', 'Action, Mystery'),
(86, 299, 1, '2019-11-14 07:32:48', '2019-11-14 07:32:48', '39ed247f-a4e7-43f5-a183-cdb0d1dd327d', 'Manga', 'Manga', NULL, '81 (Belum Selesai)', NULL, 'Darwin\'s Game', 'Action, Mystery, Shoun'),
(88, 302, 1, '2019-11-14 07:32:50', '2019-11-14 07:43:40', '9edb4192-a197-4321-aade-7376dcaa299f', 'Manga', 'Manga', 'FLIPFLOPs', '81 (Belum Selesai)', '12 Desember 2012 - Sekarang (Belum Selesai)', 'Darwin\'s Game', 'Action, Mystery, Shounen'),
(89, 304, 1, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '4cd1a93f-efdb-440e-8b59-d955de708447', 'Manga', 'Manga', NULL, '81 (Belum Selesai)', NULL, 'Darwin\'s Game', 'Action, Mystery, Shounen'),
(90, 307, 1, '2019-11-14 07:38:59', '2019-11-14 07:38:59', '14cc89f1-1c01-4c60-9c18-94d2978dcd54', 'Manga', 'Manga', 'FLIPFLOPs', '81 (Belum Selesai)', '12 Desember 2012 - Sekarang (Belum Selesai)', 'Darwin\'s Game', 'Action, Mystery, Shounen'),
(91, 309, 1, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'f94325e6-5cca-41b8-b14f-f20c86c92015', 'Manga', 'Manga', 'FLIPFLOPs', '81 (Belum Selesai)', '12 Desember 2012 - Sekarang (Belum Selesai)', 'Darwin\'s Game', 'Action, Mystery, Shounen'),
(92, 311, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '04606207-5fb2-45f5-be1e-192ee0d48cda', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(93, 313, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '01405db9-492f-47b6-9351-5c35592a7661', 'Anime', 'TV Seri', 'Bones Studio', '13', '3 April 2016 -  26 Juni 2016', 'My Hero Academia', 'Action, Super Power, Comedy, School, Shounen'),
(94, 315, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '4e7bb91b-7ee4-4ce4-8434-0e1a599a720e', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(95, 317, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'dac0858b-a363-4f28-a40a-921025d6986f', 'Anime', 'TV Seri', 'David Production', '48', '4 April 2014 – 19 Juni 2015', 'Jojo Bizzare Adventure: Stardust Crusader', 'Action, Supranatural, Adventure, Shounen'),
(96, 319, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '1fcbb1de-b597-47dc-9847-5db97b3fed94', 'Manga', 'Manga', 'FLIPFLOPs', '81 (Belum Selesai)', '12 Desember 2012 - Sekarang (Belum Selesai)', 'Darwin\'s Game', 'Action, Mystery, Shounen'),
(97, 321, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'c0cf73bb-fe6f-41a1-ab1e-5cffe73dd1f0', 'Manga', 'Manga', 'FLIPFLOPs', '81 (Belum Selesai)', '12 Desember 2012 - Sekarang (Belum Selesai)', 'Darwin\'s Game', 'Action, Mystery, Shounen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_structureelements`
--

CREATE TABLE `blog_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_structureelements`
--

INSERT INTO `blog_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 6, 0, '2019-11-09 02:47:46', '2019-11-14 01:17:05', '86793b7d-8643-44bb-a181-d97dc0764ba1'),
(3, 1, 169, 1, 2, 3, 1, '2019-11-09 02:54:12', '2019-11-14 01:17:05', '8b42e026-2a68-4f54-8712-f79bb4d552ba'),
(4, 1, 170, 1, 4, 5, 1, '2019-11-09 02:54:26', '2019-11-14 01:17:05', 'cfe12042-31b6-4c78-bb59-7cf972c11257'),
(5, 2, NULL, 5, 1, 28, 0, '2019-11-12 06:56:48', '2019-11-13 03:57:27', 'fb2d2706-8e9c-443d-a6fb-3e4200205705'),
(8, 2, 230, 5, 2, 3, 1, '2019-11-12 06:57:29', '2019-11-13 03:57:27', 'f99627fe-2e3a-44d4-ab51-4c90ebf61075'),
(9, 2, 231, 5, 4, 5, 1, '2019-11-12 06:57:46', '2019-11-13 03:57:27', '8aa5e77b-faeb-466a-8417-d73e925c3b92'),
(10, 2, 232, 5, 6, 7, 1, '2019-11-12 07:21:38', '2019-11-13 03:57:27', 'ccc00908-85b3-484a-9ed5-6cda8186d30f'),
(11, 2, 233, 5, 8, 9, 1, '2019-11-12 07:24:32', '2019-11-13 03:57:27', '19617ae7-8c44-4b2c-9dda-44f3a06496c6'),
(12, 2, 234, 5, 10, 11, 1, '2019-11-12 07:25:41', '2019-11-13 03:57:27', '2e4169ab-1343-416d-b525-5d227ba38fec'),
(13, 2, 235, 5, 12, 13, 1, '2019-11-12 07:27:01', '2019-11-13 03:57:27', '6602009b-6863-4a0b-a386-240cf151729c'),
(16, 2, 238, 5, 22, 23, 1, '2019-11-12 07:30:29', '2019-11-13 03:57:27', 'bf7e778c-9ebc-40e6-a3f6-d6ebb27f6e2e'),
(19, 2, 241, 5, 24, 25, 1, '2019-11-12 07:30:53', '2019-11-13 03:57:27', '3768a20f-e37f-4f5f-ab18-fc7a1765b92f'),
(20, 2, 242, 5, 14, 15, 1, '2019-11-12 07:31:08', '2019-11-13 03:57:27', '0d99f5d2-5513-44c6-b397-d6a423a5861e'),
(23, 2, 245, 5, 16, 17, 1, '2019-11-12 07:31:26', '2019-11-13 03:57:27', '493f676d-ee0c-4e59-8d4b-7a05e8b5e296'),
(24, 2, 246, 5, 26, 27, 1, '2019-11-12 07:55:20', '2019-11-13 03:57:27', '92f4d0d9-c0ec-4f7d-b2a5-df2822edb8ff'),
(25, 2, 253, 5, 18, 19, 1, '2019-11-13 03:46:34', '2019-11-13 03:57:27', '3962c78c-7b1e-43c8-9fa1-00e7d849228c'),
(26, 2, 254, 5, 20, 21, 1, '2019-11-13 03:46:44', '2019-11-13 03:57:27', '49eb13ae-4a00-4740-b768-d252834d85b5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_structures`
--

CREATE TABLE `blog_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_structures`
--

INSERT INTO `blog_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2019-11-06 06:48:06', '2019-11-06 06:48:06', NULL, '8f5437a0-b407-4ec8-a630-dc0323983abd'),
(2, NULL, '2019-11-12 06:56:32', '2019-11-12 06:56:32', '2019-11-13 03:57:27', '1f63121f-290e-4c25-8185-cec1445c40c6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_supertableblocks`
--

CREATE TABLE `blog_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_supertableblocks`
--

INSERT INTO `blog_supertableblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(108, 13, 9, 2, 1, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '199b82d5-4504-49e0-a719-8b6fdaa221ba'),
(109, 13, 9, 2, 2, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', 'b8afb7d7-f1a8-45ab-817e-61875e686db2'),
(110, 13, 9, 2, 3, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '2bfac297-8952-452e-9c47-f54f18d75838'),
(111, 13, 9, 2, 4, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', 'c50919be-d8eb-4383-9e9a-8317834b3453'),
(112, 13, 9, 2, 5, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', '1625bd1a-f807-42e7-bcab-c9ce0f615494'),
(113, 13, 9, 2, 6, 0, '2019-11-08 08:03:28', '2019-11-08 08:03:28', 'a6f28e30-be4c-45e5-8046-f33bdb89fee5'),
(114, 13, 9, 2, 1, NULL, '2019-11-08 08:03:28', '2019-11-08 08:14:38', '08e494d1-2511-4f3c-9bb4-ff8915900e2c'),
(116, 115, 9, 2, 1, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '986e9efe-78c0-4e99-97eb-221775a7934b'),
(117, 115, 9, 2, 2, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '74cab966-a17c-427e-83d4-caaa287cdf72'),
(118, 115, 9, 2, 3, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '6214ae0a-786f-4bb0-91c1-54eeb36f75ee'),
(119, 115, 9, 2, 4, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '68d2b012-3002-4444-966c-b14bfda3175e'),
(120, 115, 9, 2, 5, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'b371cefa-6566-45ff-afff-f4b82a8cc95e'),
(121, 115, 9, 2, 6, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', 'eb5b5c82-b61e-4c4b-a30a-ed9e7ab90f02'),
(122, 115, 9, 2, 7, NULL, '2019-11-08 08:03:29', '2019-11-08 08:03:29', '300a4c7a-ab1f-402a-a66a-64ac901ac1d2'),
(124, 123, 9, 2, 1, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '87b33dc1-b0ef-4840-93cc-c83bd967b625'),
(125, 123, 9, 2, 2, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '2f07d2e3-aec8-48fe-aba7-e20f728c45ef'),
(126, 123, 9, 2, 3, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '3da91a5d-3544-492d-9e0a-0774c15d0eb0'),
(127, 123, 9, 2, 4, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', 'c73f8259-bed6-4ab6-bb4c-cf4694c0dd71'),
(128, 123, 9, 2, 5, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '9dad23d4-f30e-4a6c-99a4-cc34d005be22'),
(129, 123, 9, 2, 6, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '2b995929-89ad-4153-b9c3-907352baee16'),
(130, 123, 9, 2, 7, NULL, '2019-11-08 08:04:36', '2019-11-08 08:04:36', '8d0338ab-313d-405a-a8c0-f98a3d5bf07d'),
(131, 106, 9, 2, 1, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '1ce86a12-229f-4f50-bc7f-43ea2db1c92d'),
(132, 106, 9, 2, 2, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '1342853f-511c-4def-a08a-9156a0855fec'),
(133, 106, 9, 2, 3, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '53e9d780-d496-4c5f-89e9-c83a0d8425c7'),
(134, 106, 9, 2, 4, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'e4f2f096-5ffb-4400-a433-1911cc6e158f'),
(135, 106, 9, 2, 5, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '44eac8cb-c663-4d07-ae4b-72befa42eecf'),
(136, 106, 9, 2, 6, 0, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '50bae2f4-7291-4d06-bf77-86ee7f8bb53e'),
(137, 106, 9, 2, 1, NULL, '2019-11-08 08:08:22', '2019-11-08 08:18:38', '79dc80ef-8a65-4506-9046-133ef39ba553'),
(139, 138, 9, 2, 1, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '6e00a9d7-ddb5-4140-8aa0-39c80a46eb47'),
(140, 138, 9, 2, 2, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '2d29fd57-4416-40bf-b88b-4b1f5f867125'),
(141, 138, 9, 2, 3, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '12807fba-6279-44d3-98c2-84ec7c6cd438'),
(142, 138, 9, 2, 4, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '544ff353-5a5a-4c47-815f-34074bdb9a87'),
(143, 138, 9, 2, 5, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', '0a9cd99a-61ae-480b-b605-a496afbcc210'),
(144, 138, 9, 2, 6, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'fe7c3878-fd6a-43e4-b1bc-b2a57d59d822'),
(145, 138, 9, 2, 7, NULL, '2019-11-08 08:08:22', '2019-11-08 08:08:22', 'a50f660a-558c-4b81-b9ba-c5159f9bd774'),
(147, 146, 9, 2, 1, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '0e36de14-3208-499c-ab16-6c6b4655ae8e'),
(148, 146, 9, 2, 2, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '5651ea4f-b41e-42c3-a859-3fc44c7ddd05'),
(149, 146, 9, 2, 3, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '5106fca2-e437-4b32-a313-27eefee6fa7a'),
(150, 146, 9, 2, 4, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '47c752e3-f1d3-4e6a-b201-7889f18f0cbd'),
(151, 146, 9, 2, 5, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', '94a2c1aa-31a5-414a-b073-2e05047edf76'),
(152, 146, 9, 2, 6, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'bf479bff-6b4a-4307-bb5c-5cc5d902f3c7'),
(153, 146, 9, 2, 7, NULL, '2019-11-08 08:09:55', '2019-11-08 08:09:55', 'b3f574cd-fa49-4f1a-b673-969a4cdc0fa8'),
(155, 154, 9, 2, 1, NULL, '2019-11-08 08:14:38', '2019-11-08 08:14:38', '87145160-36f5-4439-a5f9-cc1656eef697'),
(157, 156, 9, 2, 1, NULL, '2019-11-08 08:18:38', '2019-11-08 08:18:38', 'a28e9166-b076-494c-b98a-4be64c5b6ec2'),
(159, 158, 9, 2, 1, NULL, '2019-11-08 08:18:56', '2019-11-08 08:18:56', '8c785d5c-d177-4435-a1db-4d6ec1a13791'),
(164, 163, 9, 2, 1, NULL, '2019-11-08 08:21:00', '2019-11-08 08:21:00', 'ac1b1f17-5dcf-42ef-9931-2ba60d6c3511'),
(180, 179, 9, 2, 1, NULL, '2019-11-09 03:12:18', '2019-11-09 03:12:18', '1255a2f0-37c5-4137-a43f-785e151fcd10'),
(182, 181, 9, 2, 1, NULL, '2019-11-09 03:12:49', '2019-11-09 03:12:49', '9e3d610d-4927-4fd5-81d3-832a9a38a35e'),
(187, 186, 9, 2, 1, 1, '2019-11-09 03:16:26', '2019-11-09 03:16:26', 'ca140d08-ed36-458d-89ff-15909908c123'),
(189, 188, 9, 2, 1, NULL, '2019-11-09 03:16:27', '2019-11-09 03:16:27', 'fd27d50f-a496-4105-b4c5-47f0bb70e189'),
(191, 190, 9, 2, 1, NULL, '2019-11-09 03:16:27', '2019-11-09 03:16:27', '20bd704e-a189-4a8e-81aa-6bfa44f68328'),
(193, 192, 9, 2, 1, NULL, '2019-11-09 03:17:00', '2019-11-09 03:17:00', '948f1a5c-8591-40e9-b030-54aeb9051aa4'),
(195, 194, 9, 2, 1, NULL, '2019-11-09 03:18:08', '2019-11-09 03:18:08', 'ea4004d0-db81-4a89-9327-3e4880a3ab87'),
(198, 197, 9, 2, 1, NULL, '2019-11-09 03:46:33', '2019-11-09 03:46:33', '7d6a2a9c-cef9-4c7e-a471-2d1550546db2'),
(200, 199, 9, 2, 1, NULL, '2019-11-09 03:47:31', '2019-11-09 03:47:31', '4eba75f4-9842-4a69-801b-2ed89dffb6d4'),
(202, 201, 9, 2, 1, NULL, '2019-11-09 06:45:49', '2019-11-09 06:45:49', '56c9b565-3223-45c1-acba-818a1162b896'),
(204, 203, 9, 2, 1, NULL, '2019-11-09 06:46:47', '2019-11-09 06:46:47', '0407ac4b-b1c1-4849-ad7a-1695fdac60a4'),
(227, 226, 9, 2, 1, NULL, '2019-11-12 03:04:11', '2019-11-12 03:04:11', 'bddfbe55-08e9-43eb-8bf6-5f8b5090d271'),
(248, 247, 9, 2, 1, 1, '2019-11-13 01:34:15', '2019-11-13 01:34:15', '18063934-ed49-4ab2-b42f-aff0eabbdc75'),
(250, 249, 9, 2, 1, NULL, '2019-11-13 01:34:15', '2019-11-13 01:34:15', 'ab0722e8-daa7-4a08-8ac7-d17ce1cb3f94'),
(252, 251, 9, 2, 1, NULL, '2019-11-13 01:34:42', '2019-11-13 01:34:42', '7745b6ec-d28a-4efc-a629-988a397c0bfb'),
(264, 263, 9, 2, 1, NULL, '2019-11-14 00:40:30', '2019-11-14 00:40:30', 'b327dc7c-b228-44d4-92aa-5a1a52f17641'),
(266, 265, 9, 2, 1, NULL, '2019-11-14 00:41:30', '2019-11-14 00:41:30', '064c3cd0-ed29-42d2-a72f-0d7d7e539b78'),
(268, 267, 9, 2, 1, NULL, '2019-11-14 00:42:01', '2019-11-14 00:42:01', 'dbb2eb43-051b-4103-b785-a19d148e326b'),
(270, 269, 9, 2, 1, 1, '2019-11-14 01:18:58', '2019-11-14 01:18:58', '4a3fa494-c232-46d5-be4d-05fd57dba6d7'),
(272, 271, 9, 2, 1, NULL, '2019-11-14 01:18:59', '2019-11-14 01:18:59', 'e8eccba0-ff52-47fe-91c6-cc45d52a8b02'),
(274, 273, 9, 2, 1, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '7fb4c079-74e6-45fd-b38f-a5460f5345e2'),
(276, 275, 9, 2, 1, NULL, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'caee100b-3d09-4cab-a4a7-990644378f89'),
(278, 277, 9, 2, 1, 1, '2019-11-14 01:19:06', '2019-11-14 01:19:06', 'ed64bb9a-96ab-4bb4-85f7-7259157e7c4d'),
(280, 279, 9, 2, 1, NULL, '2019-11-14 01:19:06', '2019-11-14 01:19:06', '93e57c23-3e36-4b6b-a04e-22dc5a8947d0'),
(282, 281, 9, 2, 1, NULL, '2019-11-14 02:14:28', '2019-11-14 02:14:28', 'c1333bf8-ee7d-4eaf-8c8d-f514863c8ecb'),
(284, 283, 9, 2, 1, NULL, '2019-11-14 07:23:26', '2019-11-14 07:23:26', '11761a75-3cf5-4a85-b554-5205caa4b4da'),
(302, 301, 9, 2, 1, NULL, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '5353cf8f-c9a0-4483-ac48-c7e88fa313e0'),
(304, 303, 9, 2, 1, NULL, '2019-11-14 07:32:50', '2019-11-14 07:32:50', '11d7503b-adea-45f1-826a-77d899c88266'),
(307, 306, 9, 2, 1, NULL, '2019-11-14 07:38:59', '2019-11-14 07:38:59', '2306c7fb-1aba-44c1-9642-5b55e24020af'),
(309, 308, 9, 2, 1, NULL, '2019-11-14 07:43:40', '2019-11-14 07:43:40', 'fe8e9e02-0e13-4e56-8e05-f794e2250f93'),
(311, 310, 9, 2, 1, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '076d38e1-b087-4e58-93a8-2e604ffdb3f0'),
(313, 312, 9, 2, 1, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '70fa734a-3c0a-4203-b979-5f83cc3a0a89'),
(315, 314, 9, 2, 1, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '60625b00-6d93-4fc6-bbf2-b67e90ce121d'),
(317, 316, 9, 2, 1, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '2bbba80d-c00c-4937-8975-2199f33b7a5b'),
(319, 318, 9, 2, 1, 1, '2019-11-14 07:43:49', '2019-11-14 07:43:49', '4c1cbd8a-5ecd-4c71-9987-54cdcc6b6bf1'),
(321, 320, 9, 2, 1, NULL, '2019-11-14 07:43:49', '2019-11-14 07:43:49', 'f4a51b46-8ac9-4f65-86d6-2f662061c45d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_supertableblocktypes`
--

CREATE TABLE `blog_supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_supertableblocktypes`
--

INSERT INTO `blog_supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 9, 6, '2019-11-08 07:55:51', '2019-11-08 07:55:51', '87eb8f25-186e-4174-8480-86d42d936da6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_systemmessages`
--

CREATE TABLE `blog_systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_taggroups`
--

CREATE TABLE `blog_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_templatecacheelements`
--

CREATE TABLE `blog_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_templatecachequeries`
--

CREATE TABLE `blog_templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_templatecaches`
--

CREATE TABLE `blog_templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_tokens`
--

CREATE TABLE `blog_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_tokens`
--

INSERT INTO `blog_tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 'vAE1EPL6PONr9WYj7UKa07d6NliRtdeB', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":13,\"siteId\":1,\"draftId\":5,\"revisionId\":null}]', NULL, NULL, '2019-11-08 06:18:41', '2019-11-07 06:18:41', '2019-11-07 06:18:41', 'c853ce38-df61-4625-842f-71fad71f2558'),
(3, '2j-H9rug89jqwkS9XkRc1cSgrKVojvgY', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":13,\"siteId\":1,\"draftId\":6,\"revisionId\":null}]', NULL, NULL, '2019-11-08 07:03:25', '2019-11-07 07:03:25', '2019-11-07 07:03:25', 'c2314ae7-d722-4e99-b81d-b79e711bc351');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_usergroups`
--

CREATE TABLE `blog_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_usergroups_users`
--

CREATE TABLE `blog_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_userpermissions`
--

CREATE TABLE `blog_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_userpermissions_usergroups`
--

CREATE TABLE `blog_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_userpermissions_users`
--

CREATE TABLE `blog_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_userpreferences`
--

CREATE TABLE `blog_userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_userpreferences`
--

INSERT INTO `blog_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_users`
--

CREATE TABLE `blog_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_users`
--

INSERT INTO `blog_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'mramamaulana60@gmail.com', '$2y$13$GZ3PVGC/VTRmCmVLw1rrc.KVb/Qn10lZzwlHZ03HY0vft0Uh51Cwa', 1, 0, 0, 0, '2019-11-14 05:49:24', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2019-11-06 02:26:43', '2019-11-06 02:26:43', '2019-11-14 05:49:24', '799faee3-11a8-42e8-91bb-25c66b65eb7e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_volumefolders`
--

CREATE TABLE `blog_volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_volumefolders`
--

INSERT INTO `blog_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'gambar', '', '2019-11-06 06:49:39', '2019-11-08 02:03:01', 'db79c3b3-35df-4e84-b2ed-deeed2b8e92c'),
(2, NULL, NULL, 'Temporary source', NULL, '2019-11-06 06:49:44', '2019-11-06 06:49:44', 'bad1839b-60bb-48c8-bdf8-f529685ed447'),
(3, 2, NULL, 'user_1', 'user_1/', '2019-11-06 06:49:44', '2019-11-06 06:49:44', '0eaebfc7-425e-4812-a8a4-d8964cf7a01b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_volumes`
--

CREATE TABLE `blog_volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_volumes`
--

INSERT INTO `blog_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'gambar', 'gambar', 'craft\\volumes\\Local', 1, 'uploads/assets/cover/images', '{\"path\":\"uploads/assets/cover/images\"}', 1, '2019-11-06 06:49:39', '2019-11-08 02:03:01', NULL, 'afba26e3-0bdd-4869-a869-1c0fa55c5161');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_widgets`
--

CREATE TABLE `blog_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `blog_widgets`
--

INSERT INTO `blog_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2019-11-06 03:51:27', '2019-11-06 03:51:27', 'a0d571c2-6eff-4a88-8508-a925a65694ca'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2019-11-06 03:51:27', '2019-11-06 03:51:27', '22a0d4f2-553a-4c63-aa30-c9f106321390'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2019-11-06 03:51:27', '2019-11-06 03:51:27', '8eb61175-8e54-4fb6-9d86-fb0fa1d89a2e'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2019-11-06 03:51:27', '2019-11-06 03:51:27', 'daac899a-ed64-44c0-88cb-539fb4c3127d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `blog_assetindexdata`
--
ALTER TABLE `blog_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `blog_assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `blog_assets`
--
ALTER TABLE `blog_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `blog_assets_folderId_idx` (`folderId`),
  ADD KEY `blog_assets_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `blog_assettransformindex`
--
ALTER TABLE `blog_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indeks untuk tabel `blog_assettransforms`
--
ALTER TABLE `blog_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `blog_assettransforms_handle_unq_idx` (`handle`);

--
-- Indeks untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_groupId_idx` (`groupId`),
  ADD KEY `blog_categories_parentId_fk` (`parentId`);

--
-- Indeks untuk tabel `blog_categorygroups`
--
ALTER TABLE `blog_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categorygroups_name_idx` (`name`),
  ADD KEY `blog_categorygroups_handle_idx` (`handle`),
  ADD KEY `blog_categorygroups_structureId_idx` (`structureId`),
  ADD KEY `blog_categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `blog_categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `blog_categorygroups_sites`
--
ALTER TABLE `blog_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `blog_categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `blog_content`
--
ALTER TABLE `blog_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `blog_content_siteId_idx` (`siteId`),
  ADD KEY `blog_content_title_idx` (`title`);

--
-- Indeks untuk tabel `blog_craftidtokens`
--
ALTER TABLE `blog_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_craftidtokens_userId_fk` (`userId`);

--
-- Indeks untuk tabel `blog_deprecationerrors`
--
ALTER TABLE `blog_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indeks untuk tabel `blog_drafts`
--
ALTER TABLE `blog_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_drafts_creatorId_fk` (`creatorId`),
  ADD KEY `blog_drafts_sourceId_fk` (`sourceId`);

--
-- Indeks untuk tabel `blog_elementindexsettings`
--
ALTER TABLE `blog_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_elementindexsettings_type_unq_idx` (`type`);

--
-- Indeks untuk tabel `blog_elements`
--
ALTER TABLE `blog_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `blog_elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `blog_elements_type_idx` (`type`),
  ADD KEY `blog_elements_enabled_idx` (`enabled`),
  ADD KEY `blog_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `blog_elements_draftId_fk` (`draftId`),
  ADD KEY `blog_elements_revisionId_fk` (`revisionId`);

--
-- Indeks untuk tabel `blog_elements_sites`
--
ALTER TABLE `blog_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `blog_elements_sites_siteId_idx` (`siteId`),
  ADD KEY `blog_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `blog_elements_sites_enabled_idx` (`enabled`),
  ADD KEY `blog_elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indeks untuk tabel `blog_entries`
--
ALTER TABLE `blog_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_entries_postDate_idx` (`postDate`),
  ADD KEY `blog_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `blog_entries_authorId_idx` (`authorId`),
  ADD KEY `blog_entries_sectionId_idx` (`sectionId`),
  ADD KEY `blog_entries_typeId_idx` (`typeId`),
  ADD KEY `blog_entries_parentId_fk` (`parentId`);

--
-- Indeks untuk tabel `blog_entrytypes`
--
ALTER TABLE `blog_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `blog_entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `blog_entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `blog_entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `blog_entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `blog_fieldgroups`
--
ALTER TABLE `blog_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_fieldgroups_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `blog_fieldlayoutfields`
--
ALTER TABLE `blog_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `blog_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `blog_fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `blog_fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indeks untuk tabel `blog_fieldlayouts`
--
ALTER TABLE `blog_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `blog_fieldlayouts_type_idx` (`type`);

--
-- Indeks untuk tabel `blog_fieldlayouttabs`
--
ALTER TABLE `blog_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `blog_fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indeks untuk tabel `blog_fields`
--
ALTER TABLE `blog_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `blog_fields_groupId_idx` (`groupId`),
  ADD KEY `blog_fields_context_idx` (`context`);

--
-- Indeks untuk tabel `blog_globalsets`
--
ALTER TABLE `blog_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_globalsets_name_idx` (`name`),
  ADD KEY `blog_globalsets_handle_idx` (`handle`),
  ADD KEY `blog_globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `blog_gqlschemas`
--
ALTER TABLE `blog_gqlschemas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_gqlschemas_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `blog_gqlschemas_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `blog_info`
--
ALTER TABLE `blog_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_matrixblocks`
--
ALTER TABLE `blog_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `blog_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `blog_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `blog_matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indeks untuk tabel `blog_matrixblocktypes`
--
ALTER TABLE `blog_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `blog_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `blog_matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `blog_matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `blog_migrations`
--
ALTER TABLE `blog_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_migrations_pluginId_idx` (`pluginId`),
  ADD KEY `blog_migrations_type_pluginId_idx` (`type`,`pluginId`);

--
-- Indeks untuk tabel `blog_plugins`
--
ALTER TABLE `blog_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_plugins_handle_unq_idx` (`handle`);

--
-- Indeks untuk tabel `blog_queue`
--
ALTER TABLE `blog_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `blog_queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`);

--
-- Indeks untuk tabel `blog_relations`
--
ALTER TABLE `blog_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `blog_relations_sourceId_idx` (`sourceId`),
  ADD KEY `blog_relations_targetId_idx` (`targetId`),
  ADD KEY `blog_relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indeks untuk tabel `blog_resourcepaths`
--
ALTER TABLE `blog_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indeks untuk tabel `blog_revisions`
--
ALTER TABLE `blog_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `blog_revisions_creatorId_fk` (`creatorId`);

--
-- Indeks untuk tabel `blog_searchindex`
--
ALTER TABLE `blog_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `blog_searchindex` ADD FULLTEXT KEY `blog_searchindex_keywords_idx` (`keywords`);

--
-- Indeks untuk tabel `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sections_handle_idx` (`handle`),
  ADD KEY `blog_sections_name_idx` (`name`),
  ADD KEY `blog_sections_structureId_idx` (`structureId`),
  ADD KEY `blog_sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `blog_sections_sites`
--
ALTER TABLE `blog_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `blog_sections_sites_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `blog_sequences`
--
ALTER TABLE `blog_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indeks untuk tabel `blog_sessions`
--
ALTER TABLE `blog_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sessions_uid_idx` (`uid`),
  ADD KEY `blog_sessions_token_idx` (`token`),
  ADD KEY `blog_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `blog_sessions_userId_idx` (`userId`);

--
-- Indeks untuk tabel `blog_shunnedmessages`
--
ALTER TABLE `blog_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indeks untuk tabel `blog_sitegroups`
--
ALTER TABLE `blog_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sitegroups_name_idx` (`name`);

--
-- Indeks untuk tabel `blog_sites`
--
ALTER TABLE `blog_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `blog_sites_handle_idx` (`handle`),
  ADD KEY `blog_sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `blog_sites_groupId_fk` (`groupId`);

--
-- Indeks untuk tabel `blog_stc_detaillist`
--
ALTER TABLE `blog_stc_detaillist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_stc_detaillist_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `blog_stc_detaillist_siteId_fk` (`siteId`);

--
-- Indeks untuk tabel `blog_structureelements`
--
ALTER TABLE `blog_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `blog_structureelements_root_idx` (`root`),
  ADD KEY `blog_structureelements_lft_idx` (`lft`),
  ADD KEY `blog_structureelements_rgt_idx` (`rgt`),
  ADD KEY `blog_structureelements_level_idx` (`level`),
  ADD KEY `blog_structureelements_elementId_idx` (`elementId`);

--
-- Indeks untuk tabel `blog_structures`
--
ALTER TABLE `blog_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `blog_supertableblocks`
--
ALTER TABLE `blog_supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_supertableblocks_ownerId_idx` (`ownerId`),
  ADD KEY `blog_supertableblocks_fieldId_idx` (`fieldId`),
  ADD KEY `blog_supertableblocks_typeId_idx` (`typeId`),
  ADD KEY `blog_supertableblocks_sortOrder_idx` (`sortOrder`);

--
-- Indeks untuk tabel `blog_supertableblocktypes`
--
ALTER TABLE `blog_supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_supertableblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `blog_supertableblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `blog_systemmessages`
--
ALTER TABLE `blog_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `blog_systemmessages_language_idx` (`language`);

--
-- Indeks untuk tabel `blog_taggroups`
--
ALTER TABLE `blog_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_taggroups_name_idx` (`name`),
  ADD KEY `blog_taggroups_handle_idx` (`handle`),
  ADD KEY `blog_taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `blog_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indeks untuk tabel `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_groupId_idx` (`groupId`);

--
-- Indeks untuk tabel `blog_templatecacheelements`
--
ALTER TABLE `blog_templatecacheelements`
  ADD KEY `blog_templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `blog_templatecacheelements_elementId_idx` (`elementId`);

--
-- Indeks untuk tabel `blog_templatecachequeries`
--
ALTER TABLE `blog_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `blog_templatecachequeries_type_idx` (`type`);

--
-- Indeks untuk tabel `blog_templatecaches`
--
ALTER TABLE `blog_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `blog_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `blog_templatecaches_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `blog_tokens`
--
ALTER TABLE `blog_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tokens_token_unq_idx` (`token`),
  ADD KEY `blog_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indeks untuk tabel `blog_usergroups`
--
ALTER TABLE `blog_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `blog_usergroups_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `blog_usergroups_users`
--
ALTER TABLE `blog_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `blog_usergroups_users_userId_idx` (`userId`);

--
-- Indeks untuk tabel `blog_userpermissions`
--
ALTER TABLE `blog_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_userpermissions_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `blog_userpermissions_usergroups`
--
ALTER TABLE `blog_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `blog_userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indeks untuk tabel `blog_userpermissions_users`
--
ALTER TABLE `blog_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `blog_userpermissions_users_userId_idx` (`userId`);

--
-- Indeks untuk tabel `blog_userpreferences`
--
ALTER TABLE `blog_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indeks untuk tabel `blog_users`
--
ALTER TABLE `blog_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_users_uid_idx` (`uid`),
  ADD KEY `blog_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `blog_users_email_idx` (`email`),
  ADD KEY `blog_users_username_idx` (`username`),
  ADD KEY `blog_users_photoId_fk` (`photoId`);

--
-- Indeks untuk tabel `blog_volumefolders`
--
ALTER TABLE `blog_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `blog_volumefolders_parentId_idx` (`parentId`),
  ADD KEY `blog_volumefolders_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `blog_volumes`
--
ALTER TABLE `blog_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_volumes_name_idx` (`name`),
  ADD KEY `blog_volumes_handle_idx` (`handle`),
  ADD KEY `blog_volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `blog_volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `blog_widgets`
--
ALTER TABLE `blog_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_assetindexdata`
--
ALTER TABLE `blog_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_assettransformindex`
--
ALTER TABLE `blog_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_assettransforms`
--
ALTER TABLE `blog_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_categorygroups`
--
ALTER TABLE `blog_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_categorygroups_sites`
--
ALTER TABLE `blog_categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_content`
--
ALTER TABLE `blog_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT untuk tabel `blog_craftidtokens`
--
ALTER TABLE `blog_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_deprecationerrors`
--
ALTER TABLE `blog_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `blog_drafts`
--
ALTER TABLE `blog_drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `blog_elementindexsettings`
--
ALTER TABLE `blog_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `blog_elements`
--
ALTER TABLE `blog_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `blog_elements_sites`
--
ALTER TABLE `blog_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `blog_entrytypes`
--
ALTER TABLE `blog_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `blog_fieldgroups`
--
ALTER TABLE `blog_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_fieldlayoutfields`
--
ALTER TABLE `blog_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `blog_fieldlayouts`
--
ALTER TABLE `blog_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `blog_fieldlayouttabs`
--
ALTER TABLE `blog_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `blog_fields`
--
ALTER TABLE `blog_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `blog_globalsets`
--
ALTER TABLE `blog_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_gqlschemas`
--
ALTER TABLE `blog_gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_info`
--
ALTER TABLE `blog_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_matrixblocktypes`
--
ALTER TABLE `blog_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_migrations`
--
ALTER TABLE `blog_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT untuk tabel `blog_plugins`
--
ALTER TABLE `blog_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blog_queue`
--
ALTER TABLE `blog_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `blog_relations`
--
ALTER TABLE `blog_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT untuk tabel `blog_revisions`
--
ALTER TABLE `blog_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `blog_sections`
--
ALTER TABLE `blog_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `blog_sections_sites`
--
ALTER TABLE `blog_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `blog_sessions`
--
ALTER TABLE `blog_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `blog_shunnedmessages`
--
ALTER TABLE `blog_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_sitegroups`
--
ALTER TABLE `blog_sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_sites`
--
ALTER TABLE `blog_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_stc_detaillist`
--
ALTER TABLE `blog_stc_detaillist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `blog_structureelements`
--
ALTER TABLE `blog_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `blog_structures`
--
ALTER TABLE `blog_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `blog_supertableblocktypes`
--
ALTER TABLE `blog_supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `blog_systemmessages`
--
ALTER TABLE `blog_systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_taggroups`
--
ALTER TABLE `blog_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_templatecachequeries`
--
ALTER TABLE `blog_templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_templatecaches`
--
ALTER TABLE `blog_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_tokens`
--
ALTER TABLE `blog_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blog_usergroups`
--
ALTER TABLE `blog_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_usergroups_users`
--
ALTER TABLE `blog_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_userpermissions`
--
ALTER TABLE `blog_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_userpermissions_usergroups`
--
ALTER TABLE `blog_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_userpermissions_users`
--
ALTER TABLE `blog_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_userpreferences`
--
ALTER TABLE `blog_userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_volumefolders`
--
ALTER TABLE `blog_volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blog_volumes`
--
ALTER TABLE `blog_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog_widgets`
--
ALTER TABLE `blog_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog_assetindexdata`
--
ALTER TABLE `blog_assetindexdata`
  ADD CONSTRAINT `blog_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `blog_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_assets`
--
ALTER TABLE `blog_assets`
  ADD CONSTRAINT `blog_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `blog_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `blog_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `blog_categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_categorygroups`
--
ALTER TABLE `blog_categorygroups`
  ADD CONSTRAINT `blog_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `blog_structures` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_categorygroups_sites`
--
ALTER TABLE `blog_categorygroups_sites`
  ADD CONSTRAINT `blog_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_content`
--
ALTER TABLE `blog_content`
  ADD CONSTRAINT `blog_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_craftidtokens`
--
ALTER TABLE `blog_craftidtokens`
  ADD CONSTRAINT `blog_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_drafts`
--
ALTER TABLE `blog_drafts`
  ADD CONSTRAINT `blog_drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `blog_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_elements`
--
ALTER TABLE `blog_elements`
  ADD CONSTRAINT `blog_elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `blog_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `blog_revisions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_elements_sites`
--
ALTER TABLE `blog_elements_sites`
  ADD CONSTRAINT `blog_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_entries`
--
ALTER TABLE `blog_entries`
  ADD CONSTRAINT `blog_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `blog_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `blog_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `blog_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_entrytypes`
--
ALTER TABLE `blog_entrytypes`
  ADD CONSTRAINT `blog_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `blog_sections` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_fieldlayoutfields`
--
ALTER TABLE `blog_fieldlayoutfields`
  ADD CONSTRAINT `blog_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `blog_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_fieldlayouttabs`
--
ALTER TABLE `blog_fieldlayouttabs`
  ADD CONSTRAINT `blog_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_fields`
--
ALTER TABLE `blog_fields`
  ADD CONSTRAINT `blog_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_globalsets`
--
ALTER TABLE `blog_globalsets`
  ADD CONSTRAINT `blog_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_matrixblocks`
--
ALTER TABLE `blog_matrixblocks`
  ADD CONSTRAINT `blog_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `blog_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_matrixblocktypes`
--
ALTER TABLE `blog_matrixblocktypes`
  ADD CONSTRAINT `blog_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_migrations`
--
ALTER TABLE `blog_migrations`
  ADD CONSTRAINT `blog_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `blog_plugins` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_relations`
--
ALTER TABLE `blog_relations`
  ADD CONSTRAINT `blog_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_revisions`
--
ALTER TABLE `blog_revisions`
  ADD CONSTRAINT `blog_revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `blog_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blog_revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD CONSTRAINT `blog_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `blog_structures` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_sections_sites`
--
ALTER TABLE `blog_sections_sites`
  ADD CONSTRAINT `blog_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `blog_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_sessions`
--
ALTER TABLE `blog_sessions`
  ADD CONSTRAINT `blog_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_shunnedmessages`
--
ALTER TABLE `blog_shunnedmessages`
  ADD CONSTRAINT `blog_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_sites`
--
ALTER TABLE `blog_sites`
  ADD CONSTRAINT `blog_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_stc_detaillist`
--
ALTER TABLE `blog_stc_detaillist`
  ADD CONSTRAINT `blog_stc_detaillist_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_stc_detaillist_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_structureelements`
--
ALTER TABLE `blog_structureelements`
  ADD CONSTRAINT `blog_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `blog_structures` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_supertableblocks`
--
ALTER TABLE `blog_supertableblocks`
  ADD CONSTRAINT `blog_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `blog_supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_supertableblocktypes`
--
ALTER TABLE `blog_supertableblocktypes`
  ADD CONSTRAINT `blog_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `blog_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_taggroups`
--
ALTER TABLE `blog_taggroups`
  ADD CONSTRAINT `blog_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_templatecacheelements`
--
ALTER TABLE `blog_templatecacheelements`
  ADD CONSTRAINT `blog_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `blog_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_templatecachequeries`
--
ALTER TABLE `blog_templatecachequeries`
  ADD CONSTRAINT `blog_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `blog_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_templatecaches`
--
ALTER TABLE `blog_templatecaches`
  ADD CONSTRAINT `blog_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `blog_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_usergroups_users`
--
ALTER TABLE `blog_usergroups_users`
  ADD CONSTRAINT `blog_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_userpermissions_usergroups`
--
ALTER TABLE `blog_userpermissions_usergroups`
  ADD CONSTRAINT `blog_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `blog_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `blog_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_userpermissions_users`
--
ALTER TABLE `blog_userpermissions_users`
  ADD CONSTRAINT `blog_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `blog_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_userpreferences`
--
ALTER TABLE `blog_userpreferences`
  ADD CONSTRAINT `blog_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_users`
--
ALTER TABLE `blog_users`
  ADD CONSTRAINT `blog_users_id_fk` FOREIGN KEY (`id`) REFERENCES `blog_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `blog_assets` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_volumefolders`
--
ALTER TABLE `blog_volumefolders`
  ADD CONSTRAINT `blog_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `blog_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `blog_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_volumes`
--
ALTER TABLE `blog_volumes`
  ADD CONSTRAINT `blog_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `blog_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `blog_widgets`
--
ALTER TABLE `blog_widgets`
  ADD CONSTRAINT `blog_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
