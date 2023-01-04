-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 04 Oca 2023, 19:06:54
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `phpemlak`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

DROP TABLE IF EXISTS `ayar`;
CREATE TABLE IF NOT EXISTS `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT '0',
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_siteurl` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_recapctha` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_goooglemap` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` text COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_slider` varchar(2) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ayar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_siteurl`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_adres`, `ayar_ilce`, `ayar_il`, `ayar_mesai`, `ayar_recapctha`, `ayar_goooglemap`, `ayar_zopim`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_youtube`, `ayar_google`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_slider`) VALUES
(0, 'dimg/30180logo-real-estate.png', 'http://localhost/proje/', 'Php Emlak Proje', 'Bu bir Ã¶dev sonucu ortaya Ã§Ä±kmÄ±ÅŸtÄ±r', 'pdo, php', 'theyigiit', '05347271364', '05347271364', '05347271364', 'theyigiit@hotmail.com', 'Anitkabir', 'Cankaya', 'Ankara', 'Hafta Sonu Kapali', '', 'AIzaSyAkiDi2QWD7s1L5lUEI9Ic4WXfAKS1fQdQ', 'https://v2.zopim.com/?4VmUKYqSPaMIoIwnhU2d6UWywnqScwLC', '', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.youtube.com', 'http://www.google.com', 'mail.theyigiit.com', 'theyigiit@hotmail.com', 'Emreygt41', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emlak`
--

DROP TABLE IF EXISTS `emlak`;
CREATE TABLE IF NOT EXISTS `emlak` (
  `emlak_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(11) NOT NULL,
  `emlak_zaman` datetime NOT NULL,
  `emlak_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `emlak_adres` text COLLATE utf8_turkish_ci NOT NULL,
  `emlak_fiyat` float(9,2) NOT NULL,
  `emlak_durum` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `emlak_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `emlak_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`emlak_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `emlak`
--

INSERT INTO `emlak` (`emlak_id`, `kullanici_id`, `emlak_zaman`, `emlak_baslik`, `emlak_adres`, `emlak_fiyat`, `emlak_durum`, `emlak_detay`, `emlak_resimyol`) VALUES
(3, 1, '2017-03-17 18:41:26', 'Süper lüx villa kaptandan kelepir fiyata', 'İstanbul Bakırköy', 345642.00, 'Satılık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KELEPİR FİYATA KA&Ccedil;IRMA KARDEŞŞ</p>\r\n', 'dimg/emlak/29679209022552424379kaptanvilla.jpg'),
(4, 1, '2017-03-17 18:43:18', 'Kaptandan kiralık lüx villa', 'Ankara, Devlet Mahallesi, TBMM, Çankaya, Türkiye', 2345.00, 'Kiralık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KİRALIK</p>\r\n', 'dimg/emlak/30353253492127520341kiralakaptan.jpg'),
(5, 1, '2017-03-17 18:41:26', 'Süper lüx villa kaptandan kelepir fiyata', 'İstanbul Bakırköy', 345642.00, 'Satılık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KELEPİR FİYATA KA&Ccedil;IRMA KARDEŞŞ</p>\r\n', 'dimg/emlak/29679209022552424379kaptanvilla.jpg'),
(6, 1, '2017-03-17 18:43:18', 'Kaptandan kiralık lüx villa', 'İstanbul', 2345.00, 'Kiralık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KİRALIK</p>\r\n', 'dimg/emlak/30353253492127520341kiralakaptan.jpg'),
(7, 1, '2017-03-17 18:41:26', 'Süper lüx villa kaptandan kelepir fiyata', 'İstanbul Bakırköy', 345642.00, 'Satılık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KELEPİR FİYATA KA&Ccedil;IRMA KARDEŞŞ</p>\r\n', 'dimg/emlak/29679209022552424379kaptanvilla.jpg'),
(8, 1, '2017-03-17 18:43:18', 'Kaptandan kiralık lüx villa', 'Kocaeli Sapanca', 2345.00, 'Kiralık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KİRALIK</p>\r\n', 'dimg/emlak/30353253492127520341kiralakaptan.jpg'),
(9, 1, '2017-03-17 18:41:26', 'Süper lüx villa kaptandan kelepir fiyata', 'İstanbul Bakırköy', 345642.00, 'Satılık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KELEPİR FİYATA KA&Ccedil;IRMA KARDEŞŞ</p>\r\n', 'dimg/emlak/29679209022552424379kaptanvilla.jpg'),
(10, 1, '2017-03-17 18:43:18', 'Kaptandan kiralık lüx villa', 'Kocaeli Sapanca', 2345.00, 'Kiralık', '<p>S&Uuml;PER L&Uuml;X VİLLA KAPTANDAN KİRALIK</p>\r\n', 'dimg/emlak/30353253492127520341kiralakaptan.jpg'),
(11, 0, '2017-03-27 16:49:25', 'Satış danışmanı özel ev', 'Ankara', 1900.00, 'Satılık', '<p>emlak &ouml;zellikleri burada</p>\r\n', 'dimg/emlak/26849260712889028444ev.JPG'),
(12, 0, '2017-03-27 16:52:08', 'Süper satış danışmanı evi', 'ortaköy', 34567.00, 'Kiralık', '<p>test &ouml;zellikler</p>\r\n', 'dimg/emlak/21197235722799628546ev.JPG'),
(13, 1, '2017-03-27 16:53:21', 'Süper satış danışmanı evi', 'ortaköy', 34567.00, 'Kiralık', '<p>test &ouml;zellikler</p>\r\n', 'dimg/emlak/31546201712145228854ev.JPG'),
(14, 2, '2017-03-27 16:54:05', 'Robotz satış danışmanının evi', 'Avcılar', 1000.00, 'Satılık', '<p>test &ouml;zellikler</p>\r\n', 'dimg/emlak/29680236073047623761ragmanoglu-emlak-sahibinden-satilik-villa-860508.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

DROP TABLE IF EXISTS `galeri`;
CREATE TABLE IF NOT EXISTS `galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `galeri_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`galeri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `galeri_ad`, `galeri_resimyol`) VALUES
(31, '', 'dimg/galeri/31479306792435331350business foto.jpg'),
(32, '', 'dimg/galeri/30572300952589527730015bba1f8e8a82ea353f699586f03e5e.jpg'),
(33, '', 'dimg/galeri/2806327333286713105174-1.jpg'),
(34, '', 'dimg/galeri/279862203029673232631454076320462.jpg'),
(35, '', 'dimg/galeri/27704219642623821592analytics-technology-ss-1920-800x450.jpg'),
(36, '', 'dimg/galeri/21908293192677122711apple-for-business_thumb800.jpg'),
(37, '', 'dimg/galeri/29478210723175126172assemble-a-team-business-company-prezi-template.jpg'),
(38, '', 'dimg/galeri/25509302822233223417business foto.jpg'),
(39, '', 'dimg/galeri/22464275832431522698businessadvice.jpg'),
(40, '', 'dimg/galeri/25924252182911121950business-energy-comparison-blog.jpg'),
(41, '', 'dimg/galeri/21777224482342825849business-math_118287_large.jpg'),
(42, '', 'dimg/galeri/22846235062920924398business-planning-img.jpg'),
(43, '', 'dimg/galeri/29973255403123828789e9e912d3ae44d0cc3655bb4451b58d21.jpg'),
(44, '', 'dimg/galeri/26401247702975327385dsst-introduction-to-business-course_129463_large.jpg'),
(45, '', 'dimg/galeri/27176304852486722142how-to-do-market-research-for-your-online-business.jpg'),
(46, '', 'dimg/galeri/23512249052344126536intro-to-business-syllabus-resource-lesson-plans_138757_large.jpg'),
(47, '', 'dimg/galeri/28715226353186621536introduction-to-business-certificate-course_129464_large.jpg'),
(48, '', 'dimg/galeri/23107264272808720592mid-size-business.jpg'),
(49, '', 'dimg/galeri/27910287283067527476S4B.jpg'),
(50, '', 'dimg/galeri/24084226752192724939praxis-ii-business-education-test_118084_large.jpg'),
(51, '', 'dimg/galeri/28114246722730523830verizon-wireless-business-specials-mass.jpg'),
(52, '', 'dimg/galeri/30569312763008830200vr-virtual-reality-ss-1920-800x450.jpg'),
(53, '', 'dimg/galeri/27450220922887931224woman-e1457107581326.jpg'),
(55, '', 'dimg/galeri/23962223202543525741intro-to-business-syllabus-resource-lesson-plans_138757_large.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`hakkimizda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Ã–dev HakkÄ±nda', '<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque massa vel magna pellentesque accumsan. Suspendisse tempus dolor eu sapien varius volutpat. Mauris ac tincidunt lacus, quis molestie nunc. Pellentesque justo nunc, malesuada et rhoncus eu, varius quis ligula. Donec vestibulum magna sed erat feugiat tempor. Nunc egestas blandit consequat. Curabitur sed mauris tristique, facilisis massa non, maximus nisl. Nunc vel odio sed odio rhoncus fringilla. Sed eu libero erat. Sed a egestas neque. Suspendisse sollicitudin enim et urna pharetra porta.</p>\r\n</blockquote>\r\n\r\n<p>Proin blandit turpis quis magna suscipit, vulputate feugiat dolor vehicula. Integer eleifend, leo quis mattis convallis, <img alt=\"\" src=\"http://lorempixel.com/output/animals-q-c-640-480-5.jpg\" style=\"float:right; height:225px; width:300px\" />neque nibh ullamcorper elit, et vehicula nunc ex ac nulla. Vivamus ultrices, dolor vel condimentum eleifend, eros neque imperdiet magna, eget fringilla turpis ante ac risus. Donec eget dignissim justo. Proin volutpat purus et accumsan varius. Vivamus ullamcorper sed ex sed condimentum. Sed vulputate posuere nulla. Sed a pretium ipsum. Donec vel sapien sit amet sapien maximus lobortis in eu ipsum. Suspendisse eget posuere turpis. Maecenas vehicula facilisis nunc, nec gravida est scelerisque id. Vestibulum et odio aliquet, pharetra libero at, laoreet dolor. In ut dui in sem placerat mollis. Praesent justo lacus, lacinia eu aliquet nec, volutpat ut nunc.</p>\r\n\r\n<p>Praesent ac malesuada leo. Vivamus euismod nisi vel nibh cursus, sit amet porttitor magna semper. Donec non ante ipsum. Vestibulum vehicula tristique dolor, id pretium ipsum tincidunt a. Maecenas nisl elit, dapibus at tristique id, convallis sed lectus. Proin feugiat rhoncus finibus. Phasellus euismod dictum orci et blandit.</p>\r\n\r\n<p>Nulla non enim malesuada ante sodales consequat at fermentum nulla. Suspendisse congue scelerisque aliquet. Vivamus eget dignissim tortor. In nec tincidunt urna. Duis in diam nulla. Maecenas aliquet, ante eget vestibulum fringilla, tortor justo placerat justo, vitae commodo felis justo eu lorem. Suspendisse potenti. Nunc malesuada, dolor non viverra luctus, lacus nulla suscipit magna, sit amet mollis risus diam sed libero. Sed nec ornare nunc. Fusce interdum odio in semper finibus. Nunc vitae ligula odio. Nulla quam ex, mollis sit amet leo ac, malesuada mattis sem.</p>\r\n\r\n<p>Fusce fringilla est a nibh dignissim, at pretium ipsum pellentesque. Duis sed urna quis enim faucibus sodales. In libero ante, accumsan vel eros vel, congue semper mi. Ut blandit gravida mauris sed cursus. Maecenas fermentum consectetur dictum. Phasellus sit amet tellus eu ipsum sodales elementum. Curabitur ullamcorper, metus a ornare dictum, urna lacus commodo est, non facilisis nisi mauris nec eros. Quisque nibh nunc, malesuada at enim non, venenatis gravida nibh. Pellentesque bibendum tempor tellus, at porttitor ipsum. Vivamus venenatis mollis viverra. Mauris massa turpis, ullamcorper vitae tortor ornare, ultrices ullamcorper tortor. Morbi tincidunt eros urna, quis porta risus luctus id.</p>\r\n\r\n<p>Donec tortor magna, vulputate at convallis eu, lobortis quis nibh. Fusce eu metus non nisl condimentum vestibulum. Donec sit amet erat pulvinar neque interdum mollis eu sit amet tellus. Aliquam iaculis enim nec dictum faucibus. Proin sodales egestas nisi eu malesuada. Nunc cursus, ex ut egestas bibendum, urna est tristique augue, sed tempus libero lacus ut libero. Morbi pharetra tincidunt nibh id venenatis. Nam ligula ipsum, suscipit ac erat eu, facilisis dapibus libero. Nulla blandit rutrum dui et porttitor. Suspendisse potenti. Suspendisse malesuada auctor leo nec mollis. Ut et ex ac odio pellentesque pharetra vitae quis leo. Proin faucibus consectetur lacus eget porta. Vestibulum ut laoreet dui, non lacinia tellus. Integer aliquam magna eu lectus blandit, eu faucibus elit egestas. Quisque placerat, mi sed condimentum tincidunt, felis enim maximus ligula, vel vehicula eros libero ac nisl.</p>\r\n\r\n<p>Mauris tristique volutpat massa, fringilla placerat lorem dapibus id. Praesent ac porttitor mauris. Aliquam porta sapien ipsum, vitae faucibus lorem porta at. Integer luctus placerat arcu, ac condimentum massa pretium et. Nulla lobortis vel dolor eget gravida. Aenean elementum bibendum pharetra. Sed pretium velit nec ipsum maximus pellentesque.</p>\r\n\r\n<p>Integer ex nunc, tincidunt sit amet vehicula sit amet, ultricies quis mi. Pellentesque sed malesuada neque. Nunc tempus rhoncus turpis sed eleifend. Quisque at suscipit eros, a sodales libero. Nam dui metus, congue vel neque quis, ultrices blandit nisi. Nullam quis lorem ac libero aliquam ultricies eu eget dui. Etiam nibh tortor, sollicitudin at elementum eget, sagittis id ex. Sed vel elit dapibus, euismod justo sit amet, faucibus diam.</p>\r\n\r\n<p>8 paragraf, 685 s&ouml;zc&uuml;k, 4629 karakter&nbsp;Lorem Ipsum&nbsp;&uuml;retilmi?tir</p>\r\n', 'WEEIOALnj3A', 'Ã–dev Yapmak', 'Hep Ã–dev Yapmak');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

DROP TABLE IF EXISTS `icerik`;
CREATE TABLE IF NOT EXISTS `icerik` (
  `icerik_id` int(11) NOT NULL AUTO_INCREMENT,
  `icerik_zaman` datetime NOT NULL,
  `icerik_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`icerik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_zaman`, `icerik_resimyol`, `icerik_ad`, `icerik_detay`, `icerik_keyword`, `icerik_durum`) VALUES
(29, '2017-01-06 20:28:57', 'dimg/icerik/21638225872599528235haber_gorsel.png', 'Haber Test 8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(31, '2023-01-04 16:19:47', 'dimg/icerik/29651284372881427038', 'emre', '<p>vdfafa</p>\r\n', 'v', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kullanici_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL,
  PRIMARY KEY (`kullanici_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_ad`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_tel`, `kullanici_mail`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2017-01-07 20:00:00', 'dimg/kullanici/26500ss.JPG', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Yunus Emre Yigit', '05347271364', 'info@emrahyuksel.com.tr', '5', 1),
(2, '2017-01-07 20:00:00', 'dimg/kullanici/30036EovEDQrv.jpg', 'robotz', 'e10adc3949ba59abbe56e057f20f883e', 'yunus emre yigit', '02122121212', 'robotyuksel@tobot.com', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `menu_ust` int(11) NOT NULL,
  `menu_icon` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` int(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `kategori_id`, `menu_ust`, `menu_icon`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`) VALUES
(1, 0, 0, 'fa-home', 'Anasayfa', '', 'index.php', 1, 1),
(2, 0, 0, '', 'HakkÄ±mÄ±zda', '', 'hakkimizda', 2, 1),
(5, 0, 0, '', 'Ä°letiÅŸim', '', 'bize-ulasin', 9, 1),
(11, 0, 0, '', 'S.S.S', '', 'sik-sorulan-sorular', 8, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(6, 'Ofis', 'dimg/slider/30252287303143827856slide01.jpeg', 'http', 4, '1'),
(13, 'ÅžÃ¶mine', 'dimg/slider/28958206403189920548slider02.jpg', 'https://www.youtube.com/watch?v=xyntP0hj7Dw&t=56s&ab_channel=FLAPSTARS', 0, '1'),
(15, 'GÃ¼n BatÄ±mÄ±', 'dimg/slider/31640210952424821205slider03.jpg', 'http', 3, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

DROP TABLE IF EXISTS `sss`;
CREATE TABLE IF NOT EXISTS `sss` (
  `sss_id` int(11) NOT NULL AUTO_INCREMENT,
  `sss_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `sss_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `sss_sira` int(2) NOT NULL,
  `sss_resimyol` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`sss_id`, `sss_ad`, `sss_detay`, `sss_sira`, `sss_resimyol`) VALUES
(2, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(3, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(5, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(6, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(7, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(8, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(9, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(10, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(11, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(12, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(13, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(28, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(29, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(30, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(31, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, ''),
(33, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
