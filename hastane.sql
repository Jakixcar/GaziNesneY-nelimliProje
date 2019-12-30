-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Ara 2019, 09:59:22
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hastane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doktor`
--

CREATE TABLE `doktor` (
  `doktor_isim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `doktor_soyisim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `poliklinik` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `id` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `şifre` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `doktor_ünvan` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `doktor`
--

INSERT INTO `doktor` (`doktor_isim`, `doktor_soyisim`, `poliklinik`, `id`, `şifre`, `doktor_ünvan`) VALUES
('Didem Tuba', 'Akçalı', 'Algoloji', '121789', 'a123', 'Prof. Dr.'),
('Nurten', 'İnan', 'Algoloji', '121643', 'ab123', 'Prof. Dr.'),
('Ömer', 'Kurtipek', 'Anesteziyoloji ve Reanimasyon', '133654', 'erwq', 'Prof. Dr.'),
('Demet', 'Coşkun', 'Anesteziyoloji ve Reanimasyon', '133579', 'lmao', 'Doç. Dr.'),
('Şükrü', 'Akyol', 'Beyin ve Sinir Cerrahisi', '145987', 'şa78', 'Prof. Dr.'),
('Aydemir', 'Kale', 'Beyin ve Sinir Cerrahisi', '145349', 'akol', 'Doç. Dr.'),
('Ramazan', 'Karabulut', 'Çocuk Cerrahisi', '156987', 'ra9', 'Prof. Dr.'),
('Cem', 'Kaya', 'Çocuk Cerrahisi', '156324', 'ckol', 'Dr. Öğr. Üyesi'),
('Ayşe Deniz', 'Oğuz', 'Çocuk Kalp ve Damar Cerrahisi', '167891', 'adoq23', 'Prof. Dr.'),
('Semiha', 'Tokgöz', 'Çocuk Kalp ve Damar Cerrahisi', '164327', 'stok', 'Doç. Dr.'),
('Aysu Duyan', 'Çamurdan', 'Çocuk Sağlığı ve Hastalıkları', '179832', 'adçam', 'Prof. Dr.'),
('Nazmi Mutlu', 'Karakaş', 'Çocuk Sağlığı ve Hastalıkları', '178432', 'nmkar24', 'Dr. Öğr. Üyesi'),
('Muhterem', 'Polat', 'Dermatoloji', '189367', 'mupol', 'Prof. Dr.'),
('Esra', 'Adışen', 'Dermatoloji', '189654', 'esadş', 'Prof. Dr.'),
('Murat', 'Dizbay', 'Endokrinoloji', '198765', 'murdiz', 'Prof. Dr.'),
('Özlem Güzel', 'Tunçcan', 'Endokrinoloji', '198627', 'ögütun', 'Doç. Dr.'),
('Esin', 'Şenol', 'Enfeksiyon Hastalıkları', '201783', 'esşon', 'Prof. Dr.'),
('Kenan', 'Hızel', 'Enfeksiyon Hastalıkları', '201674', 'kenhızel', 'Prof. Dr.'),
('Belgin', 'Karaoğlan', 'Fiziksel Tıp ve Reh.(Romatoloji)', '213678', 'belka', 'Prof. Dr.'),
('Jale', 'Meray', 'Fiziksel Tıp ve Reh.(Romatoloji)', '217649', 'jalmer', 'Prof. Dr.'),
('Zafer', 'Günendi', 'Gastroenteroloji', '223765', 'zzaff', 'Prof. Dr.'),
('Murat', 'Zinnuroğlu', 'Gastroenteroloji', '223176', 'murzinn', 'Prof. Dr.'),
('Mustafa', 'Ünlü', 'Nöroloji', '234871', 'nustünll', 'Prof. Dr.'),
('Neşe', 'Karabacak', 'Kadın Hastalıkları ve Doğum', '237856', 'neşşa', 'Doç. Dr.'),
('Osman', 'Yüksel', 'Genel Cerrahi', '245786', 'osmmyü', 'Doç. Dr.'),
('Kürşat', 'Dikmen', 'Genel Cerrahi', '245223', 'kürtttd', 'Dr. Öğr. Üyesi'),
('Esin', 'Koç', 'Genel Dahiliye', '254318', 'eskoçç', 'Prof. Dr.'),
('Canan', 'Türkyılmaz', 'Genel Dahiliye', '254378', 'cantürk', 'Prof. Dr.'),
('Berna', 'Göker', 'Geriatri', '267941', 'gerbern', 'Prof. Dr.'),
('Ali', 'Çelik', 'Göğüs Cerrahisi', '278641', 'aliççç', 'Doç. Dr.'),
('Muhammet', 'Sayan', 'Göğüs Cerrahisi', '279453', 'muhmmsa', 'Dr. Öğr. Üyesi'),
('Can', 'Öztürk', 'Göğüs Hastalıkları', '286142', 'cöztürka', 'Prof. Dr.'),
('Nurdan', 'Köktürk', 'Göğüs Hastalıkları', '286321', 'nurddkö', 'Prof. Dr.'),
('Meral', 'Or', 'Göz Hastalıkları', '298345', 'ormera', 'Prof. Dr.'),
('Zeynep', 'Aktaş', 'Göz Hastalıkları', '298712', 'akzeynp', 'Doç. Dr.'),
('Suna', 'Ömeroğlu', 'Hematoloji', '301478', 'sunnöm', 'Prof. Dr.'),
('Çiğdem', 'Elmas', 'Hematoloji', '301759', 'elmdem', 'Prof. Dr.'),
('Merih', 'Bayram', 'Kadın Hastalıkları ve Doğum', '315764', 'cmerihc', 'Prof. Dr.'),
('Nuray', 'Bozkurt', 'Kadın Hastalıkları ve Doğum', '312587', 'bozknurr1', 'Prof. Dr.'),
('Dilek', 'Erer', 'Kalp ve Damar Cerrahisi', '323587', 'ererer17', 'Prof. Dr.'),
('Halim', 'Soncul', 'Kalp ve Damar Cerrahisi', '323478', 'son64cul', 'Prof. Dr.'),
('Adnan', 'Abacı', 'Kardiyoloji', '334556', '4dn4n4b', 'Prof. Dr.'),
('Mehmet Kadri', 'Akboğa', 'Kardiyoloji', '334542', 'k4dr1m3', 'Doç. Dr.'),
('Alper', 'Ceylan', 'Kulak Burun Boğaz Hastalıkları', '345208', '4lpp3r', 'Prof. Dr.'),
('Ayşe', 'İriz', 'Kulak Burun Boğaz Hastalıkları', '345668', '4yys33', 'Doç. Dr.'),
('Nihan', 'Örüklü', 'Medikal Onkoloji', '357324', 'n1h44naa', 'Prof. Dr.'),
('Vedat', 'Vuriç', 'Medikal Onkoloji', '356751', 'vedat99g', 'Dr. Öğr. Üyesi'),
('Ferda', 'Kadıoğlu', 'Plastik ve Rekonstrüktif Cerrahi', '369870', 'f3rd44k4', 'Prof. Dr.'),
('Serhan', 'Akın', 'Plastik ve Rekonstrüktif Cerrahi', '365179', '4k1nns3r', 'Doç. Dr.'),
('Zülfikar', 'Kılıç', 'Romatoloji', '372436', 'zuulfff', 'Prof. Dr.'),
('Canan', 'Arat', 'Romatoloji', '379954', 'c4n4a4', 'Dr. Öğr. Üyesi'),
('Cemre', 'Belözoğlu', 'Üroloji', '386427', 'cccemmmr', 'Prof. Dr.'),
('Volkan', 'Altınel', 'Üroloji', '387762', 'vollkkknnn', 'Doç. Dr.'),
('Hasan', 'Merdiven', 'Nefroloji', '397854', 'hassmer', 'Prof.Dr'),
('Caner', 'Osmanpaşa', 'Nefroloji', '395577', 'cannnosm', 'Doç. Dr.'),
('Metin', 'Altın', 'Ortopedi ve Travmatoloji', '400975', 'meetttn', 'Prof. Dr.'),
('Sarp', 'Akıncı', 'Ortopedi ve Travmatoloji', '403587', 'sarpppak', 'Prof. Dr.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta`
--

CREATE TABLE `hasta` (
  `tc` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `cinsi` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `memleket` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `baba` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ana` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `parola` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hasta`
--

INSERT INTO `hasta` (`tc`, `ad`, `soyad`, `cinsi`, `memleket`, `baba`, `ana`, `parola`) VALUES
('47935905260', 'Hüseyin Mert', 'Kök', 'Erkek', 'Karabük', 'Yıldırım', 'Sadiye', '123'),
('47965814654', 'Şadiye', 'Kök', 'Kadın', 'Zonguldak', 'Tahir', 'Nazile', '6778'),
('15789645873', 'Berk', 'Kök', 'Erkek', 'Karabük', 'Yıldırım', 'Sadiye', '963'),
('26478214589', 'Necmiye', 'Yener', 'Kadın', 'Kayseri', 'Muhittin', 'Zehra', '5656'),
('18426577591', 'İlke', 'Yener', 'Kadın', 'Kayseri', 'Tolga', 'Necmiye', '753'),
('13028637134', 'Öykü', 'Yener', 'Kadın', 'Kayseri', 'Tolga', 'Necmiye', '5664');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

CREATE TABLE `randevu` (
  `tarih` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `saat` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `hasta_isim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `hasta_soyisim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `poliklinik` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `doktor_isim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `doktor_soyisim` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ünvan` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`tarih`, `saat`, `hasta_isim`, `hasta_soyisim`, `poliklinik`, `doktor_isim`, `doktor_soyisim`, `ünvan`) VALUES
('30.12.2019', '08.30', 'Hüseyin Mert', 'Kök', 'Gastroenteroloji', 'Murat', 'Zinnuroğlu', 'Prof. Dr.'),
('03.01.2019', '09.20', 'Berk', 'Kök', 'Çocuk Cerrahisi', 'Cem', 'Kaya', 'Dr. Öğr. Üyesi'),
('15.01.2019', '10.30', 'Berk', 'Kök', 'Çocuk Sağlığı ve Hastalıkları', 'Nazmi Mutlu', 'Karakaş', 'Dr. Öğr. Üyesi'),
('09.01.2019', '08.30', 'Öykü', 'Yener', 'Genel Cerrahi', 'Kürşat', 'Dikmen', 'Dr. Öğr. Üyesi'),
('01.02.2019', '15.50', 'İlke', 'Yener', 'Göğüs Cerrahisi', 'Muhammet', 'Sayan', 'Dr. Öğr. Üyesi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
