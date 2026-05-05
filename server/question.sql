-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2026 at 02:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codesmic`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `xp` int(11) NOT NULL DEFAULT 10,
  `subject` varchar(100) NOT NULL,
  `subtopic` varchar(100) NOT NULL,
  `difficulty` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'Fix & Run Lab',
  `mini_materi` text NOT NULL,
  `code_html` text NOT NULL,
  `code_css` text NOT NULL,
  `code_js` text NOT NULL,
  `task` text NOT NULL,
  `validation_js` text NOT NULL,
  `answer` longtext DEFAULT NULL,
  `answer_type` ENUM('html','css','js') NOT NULL DEFAULT 'html',
  `hint1` text NOT NULL,
  `hint2` text NOT NULL,
  `hint3` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `xp`, `subject`, `subtopic`, `difficulty`, `type`, `mini_materi`, `code_html`, `code_css`, `code_js`, `task`, `validation_js`, `answer`, `hint1`, `hint2`, `hint3`, `created_at`, `updated_at`) VALUES
(1, 'DOCTYPE HTML', 10, 'HTML', 'Struktur Dasar HTML', 'Mudah', 'Fix & Run Lab', 'DOCTYPE wajib di awal HTML.', '<html><body></body></html>', '', '', 'Tambahkan DOCTYPE.', 'document.doctype && document.doctype.name===\"html\"', '<!DOCTYPE html>', 'Di atas file.', 'HTML5.', '<!DOCTYPE html>', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(2, 'Tag Title', 10, 'HTML', 'Head', 'Mudah', 'Fix & Run Lab', 'title untuk judul tab.', '<head></head>', '', '', 'Tambahkan title \"Web\".', 'document.querySelector(\"title\") && document.title===\"Web\"', '<head><title>Web</title></head>', 'Di head.', 'Judul tab.', '<title>Web</title>', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(3, 'Heading H1', 10, 'HTML', 'Teks', 'Mudah', 'Fix & Run Lab', 'h1 untuk judul.', '<p>Judul</p>', '', '', 'Ubah jadi h1.', 'document.querySelector(\"h1\")!==null', '<h1>Judul</h1>', 'Gunakan h1.', 'Besar.', '<h1>', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(4, 'Paragraf', 10, 'HTML', 'Teks', 'Mudah', 'Fix & Run Lab', 'p untuk paragraf.', '<h1>Halo</h1>', '', '', 'Tambah paragraf.', 'document.querySelector(\"p\")!==null', '<h1>Halo</h1><p>Ini paragraf</p>', 'Tag p.', 'Tambahkan teks.', '<p>', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(5, 'Bold Text', 10, 'HTML', 'Formatting', 'Mudah', 'Fix & Run Lab', 'b/strong tebal.', '<p>HTML penting</p>', '', '', 'Tebalkan HTML.', 'document.querySelector(\"b,strong\")!==null', '<p><b>HTML</b> penting</p>', 'Gunakan b.', 'Atau strong.', '<b>', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(6, 'Link', 10, 'HTML', 'Link', 'Mudah', 'Fix & Run Lab', 'a untuk link.', '<p>Klik</p>', '', '', 'Buat link ke google.', 'document.querySelector(\"a\") && document.querySelector(\"a\").href.includes(\"google\")', '<a href=\"https://google.com\">Klik</a>', 'Gunakan a.', 'Tambahkan href.', 'https://google.com', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(7, 'Image', 10, 'HTML', 'Media', 'Mudah', 'Fix & Run Lab', 'img untuk gambar.', '<h1>Galeri</h1>', '', '', 'Tambahkan img.', 'document.querySelector(\"img\")!==null', '<img src=\"image.jpg\" alt=\"Gambar\">', 'Gunakan img.', 'Tanpa penutup.', 'src', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(8, 'List', 10, 'HTML', 'List', 'Mudah', 'Fix & Run Lab', 'ul li list.', '<h2>Hobi</h2>', '', '', 'Buat 2 item.', 'document.querySelectorAll(\"li\").length>=2', '<ul><li>Membaca</li><li>Ngoding</li></ul>', 'ul.', 'li.', '2 item', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(9, 'Table Row', 10, 'HTML', 'Table', 'Sedang', 'Fix & Run Lab', 'tr baris.', '<table></table>', '', '', 'Tambah 1 baris.', 'document.querySelector(\"tr\")!==null', '<table><tr><td>Data</td></tr></table>', 'tr.', 'td.', 'row', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(10, 'Table Header', 10, 'HTML', 'Table', 'Sedang', 'Fix & Run Lab', 'th header.', '<table></table>', '', '', 'Tambah th.', 'document.querySelector(\"th\")!==null', '<table><tr><th>Header</th></tr></table>', 'th.', 'atas.', 'header', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(11, 'Form Input', 10, 'HTML', 'Form', 'Sedang', 'Fix & Run Lab', 'input text.', '<form></form>', '', '', 'Tambah input text.', 'document.querySelector(\"input[type=text]\")!==null', '<form><input type=\"text\"></form>', 'input.', 'type.', 'text', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(12, 'Radio', 10, 'HTML', 'Form', 'Sedang', 'Fix & Run Lab', 'radio.', '<form></form>', '', '', '2 radio.', 'document.querySelectorAll(\"input[type=radio]\").length>=2', '<form><input type=\"radio\" name=\"gender\"> Laki-laki <input type=\"radio\" name=\"gender\"> Perempuan</form>', 'radio.', '2.', 'name', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(13, 'Select', 10, 'HTML', 'Form', 'Sedang', 'Fix & Run Lab', 'select option.', '<form></form>', '', '', 'Tambah select.', 'document.querySelector(\"select\")!==null', '<form><select><option>Pilih</option><option>HTML</option></select></form>', 'select.', 'option.', 'dropdown', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(14, 'Semantic', 10, 'HTML', 'Semantic', 'Sulit', 'Fix & Run Lab', 'header main footer.', '<div>Isi</div>', '', '', 'Gunakan header dan main.', 'document.querySelector(\"header\") && document.querySelector(\"main\")', '<header>Header</header><main>Isi</main><footer>Footer</footer>', 'Semantic.', 'header.', 'main', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(15, 'Iframe', 10, 'HTML', 'Media', 'Sulit', 'Fix & Run Lab', 'iframe embed.', '<h2>Video</h2>', '', '', 'Tambahkan iframe.', 'document.querySelector(\"iframe\")!==null', '<h2>Video</h2><iframe src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\"></iframe>', 'iframe.', 'embed.', 'youtube', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(16, 'Color', 10, 'CSS', 'Dasar', 'Mudah', 'Fix & Run Lab', 'color teks.', '<p id=\"t\">Teks</p>', '#t{}', '', 'Merah.', 'getComputedStyle(document.querySelector(\"#t\")).color===\"rgb(255, 0, 0)\"', '#t{color:red;}', 'color.', 'red.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(17, 'Background', 10, 'CSS', 'Dasar', 'Mudah', 'Fix & Run Lab', 'background.', '<body></body>', 'body{}', '', 'Biru.', 'getComputedStyle(document.body).backgroundColor===\"rgb(0, 0, 255)\"', 'body{background:blue;}', 'background.', 'blue.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(18, 'Font Size', 10, 'CSS', 'Teks', 'Mudah', 'Fix & Run Lab', 'font size.', '<p>Halo</p>', 'p{}', '', '20px.', 'getComputedStyle(document.querySelector(\"p\")).fontSize===\"20px\"', 'p{font-size:20px;}', 'font-size.', 'px.', '20', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(19, 'Margin', 10, 'CSS', 'Box', 'Mudah', 'Fix & Run Lab', 'margin.', '<div id=\"a\"></div>', '#a{}', '', '10px.', 'getComputedStyle(document.querySelector(\"#a\")).marginTop===\"10px\"', '#a{margin:10px;}', 'margin.', 'luar.', '10', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(20, 'Padding', 10, 'CSS', 'Box', 'Mudah', 'Fix & Run Lab', 'padding.', '<div id=\"a\"></div>', '#a{}', '', '10px.', 'getComputedStyle(document.querySelector(\"#a\")).paddingTop===\"10px\"', '#a{padding:10px;}', 'padding.', 'dalam.', '10', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(21, 'Border', 10, 'CSS', 'Box', 'Mudah', 'Fix & Run Lab', 'border.', '<div id=\"a\"></div>', '#a{}', '', 'solid.', 'getComputedStyle(document.querySelector(\"#a\")).borderStyle===\"solid\"', '#a{border:1px solid black;}', 'border.', 'solid.', '1px', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(22, 'Flex', 10, 'CSS', 'Layout', 'Sedang', 'Fix & Run Lab', 'flex.', '<div class=\"c\"></div>', '.c{}', '', 'flex.', 'getComputedStyle(document.querySelector(\".c\")).display===\"flex\"', '.c{display:flex;}', 'display.', 'flex.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(23, 'Justify Center', 10, 'CSS', 'Flex', 'Sedang', 'Fix & Run Lab', 'center.', '<div class=\"c\"></div>', '.c{display:flex;}', '', 'center.', 'getComputedStyle(document.querySelector(\".c\")).justifyContent===\"center\"', '.c{display:flex;justify-content:center;}', 'justify.', 'center.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(24, 'Align Center', 10, 'CSS', 'Flex', 'Sedang', 'Fix & Run Lab', 'align.', '<div class=\"c\"></div>', '.c{display:flex;}', '', 'center.', 'getComputedStyle(document.querySelector(\".c\")).alignItems===\"center\"', '.c{display:flex;align-items:center;}', 'align.', 'center.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(25, 'Hover', 10, 'CSS', 'Effect', 'Sedang', 'Fix & Run Lab', 'hover.', '<button>klik</button>', '', '', 'hover warna.', 'document.styleSheets.length>0', 'button:hover{background:red;}', ':hover.', 'pseudo.', 'effect', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(26, 'Grid', 10, 'CSS', 'Layout', 'Sulit', 'Fix & Run Lab', 'grid.', '<div class=\"g\"></div>', '.g{}', '', 'grid.', 'getComputedStyle(document.querySelector(\".g\")).display===\"grid\"', '.g{display:grid;}', 'display.', 'grid.', ';', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(27, 'Shadow', 10, 'CSS', 'Effect', 'Sulit', 'Fix & Run Lab', 'shadow.', '<div></div>', 'div{}', '', 'box-shadow.', 'getComputedStyle(document.querySelector(\"div\")).boxShadow!==\"none\"', 'div{box-shadow:0 4px 8px rgba(0,0,0,0.2);}', 'shadow.', 'effect.', 'css', '2026-05-03 11:12:44', '2026-05-03 11:33:56'),
(61, 'Halaman Kosong', 20, 'HTML', 'Struktur Dasar HTML', 'Mudah', 'Code Challenge Arena', 'Kenapa halaman kosong?', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', '', '', 'Isi title \"Belajar Web\" dan tampilkan h1 \"Halo Dunia\"', 'const t=document.querySelector(\"title\");const h=document.querySelector(\"h1\");return t&&h;', '<!DOCTYPE html><html><head><title>Belajar Web</title></head><body><h1>Halo Dunia</h1></body></html>', 'Cek title', 'Gunakan h1', 'Isi title dan tambah h1', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(62, 'Teks Tidak Rapi', 20, 'HTML', 'Teks', 'Mudah', 'Code Challenge Arena', 'Kenapa teks tidak terstruktur?', '<body>Belajar HTML</body>', '', '', 'Buat h1 dan paragraf', 'return document.querySelector(\"h1\")&&document.querySelector(\"p\");', '<body><h1>Belajar HTML</h1><p>HTML itu mudah dipelajari.</p></body>', 'Gunakan h1', 'Gunakan p', 'Pisahkan teks', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(63, 'Link Mati', 20, 'HTML', 'Link', 'Mudah', 'Code Challenge Arena', 'Kenapa link tidak jalan?', '<body>Klik</body>', '', '', 'Buat link ke google', 'return document.querySelector(\"a\");', '<body><a href=\"https://google.com\">Klik</a></body>', 'Gunakan a', 'Tambahkan href', 'Isi URL', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(64, 'Gambar Hilang', 20, 'HTML', 'Media', 'Mudah', 'Code Challenge Arena', 'Kenapa gambar tidak muncul?', '<body></body>', '', '', 'Tampilkan img image.jpg', 'return document.querySelector(\"img\");', '<body><img src=\"image.jpg\" alt=\"Gambar\"></body>', 'Gunakan img', 'Tambahkan src', 'Isi image.jpg', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(65, 'List Berantakan', 20, 'HTML', 'List', 'Mudah', 'Code Challenge Arena', 'Kenapa data tidak rapi?', '<body>Ayam Nasi Teh</body>', '', '', 'Buat list', 'return document.querySelector(\"ul\");', '<body><ul><li>Ayam</li><li>Nasi</li><li>Teh</li></ul></body>', 'Gunakan ul', 'Gunakan li', 'Pisahkan item', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(66, 'Tabel Kosong', 20, 'HTML', 'Tabel', 'Mudah', 'Code Challenge Arena', 'Kenapa tabel tidak ada?', '<body></body>', '', '', 'Buat tabel 2 kolom', 'return document.querySelector(\"table\");', '<body><table><tr><td>Nama</td><td>Nilai</td></tr></table></body>', 'Gunakan table', 'Gunakan tr td', 'Isi data', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(67, 'Form Tidak Input', 20, 'HTML', 'Form', 'Mudah', 'Code Challenge Arena', 'Kenapa tidak bisa input?', '<form></form>', '', '', 'Tambah input text', 'return document.querySelector(\"input\");', '<form><input type=\"text\"></form>', 'Gunakan input', 'Type text', 'Letakkan di form', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(68, 'Warna Polos', 20, 'CSS', 'Dasar CSS', 'Mudah', 'Code Challenge Arena', 'Kenapa tidak ada warna?', '<p>Halo</p>', 'p{}', '', 'Buat teks merah', 'return true;', 'p{color:red;}', 'Gunakan color', 'Isi red', 'Tambahkan di CSS', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(69, 'Font Kecil', 20, 'CSS', 'Font', 'Mudah', 'Code Challenge Arena', 'Kenapa teks kecil?', '<p>Halo</p>', 'p{}', '', 'Perbesar font', 'return true;', 'p{font-size:24px;}', 'Gunakan font-size', 'Isi ukuran', 'Tambahkan CSS', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(70, 'Selector Gagal', 20, 'CSS', 'Selector', 'Mudah', 'Code Challenge Arena', 'Kenapa style tidak masuk?', '<p class=\"a\">Hi</p>', '.a{}', '', 'Tambahkan warna', 'return true;', '.a{color:blue;}', 'Gunakan .a', 'Tambah property', 'Gunakan color', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(71, 'Margin Mepet', 20, 'CSS', 'Box Model', 'Mudah', 'Code Challenge Arena', 'Kenapa mepet?', '<div>Box</div>', 'div{}', '', 'Tambahkan margin', 'return true;', 'div{margin:20px;}', 'Gunakan margin', 'Isi px', 'Tambahkan CSS', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(72, 'JS Alert', 20, 'JavaScript', 'Output', 'Mudah', 'Code Challenge Arena', 'Kenapa tidak muncul?', '', '', '', 'Tampilkan alert Halo', 'return true;', 'alert(\"Halo\");', 'Gunakan alert', 'Isi teks', 'alert(\"Halo\")', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(73, 'JS Variabel', 20, 'JavaScript', 'Variabel', 'Mudah', 'Code Challenge Arena', 'Kenapa data tidak tersimpan?', '', '', '', 'Buat variabel nama', 'return true;', 'let nama = \"Andi\";', 'Gunakan let', 'Isi nama', 'let nama', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(74, 'JS Button', 20, 'JavaScript', 'Event', 'Mudah', 'Code Challenge Arena', 'Kenapa tidak klik?', '<button>Click</button>', '', '', 'Tambahkan onclick', 'return true;', '<button onclick=\"alert(&quot;Klik&quot;)\">Click</button>', 'Gunakan onclick', 'Isi fungsi', 'Tambahkan event', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(75, 'Input Value', 20, 'JavaScript', 'DOM', 'Mudah', 'Code Challenge Arena', 'Kenapa input kosong?', '<input id=\"i\">', '', '', 'Ambil value input', 'return true;', 'let nilai = document.getElementById(\"i\").value;', 'Gunakan value', 'Ambil id', 'Gunakan DOM', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(76, 'Layout Semantic', 20, 'HTML', 'Semantic', 'Sedang', 'Code Challenge Arena', 'Kenapa layout kacau?', '<body></body>', '', '', 'Buat header main footer', 'return document.querySelector(\"header\");', '<body><header>Header</header><main>Konten</main><footer>Footer</footer></body>', 'Gunakan semantic', 'Tambah header', 'Tambah footer', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(77, 'Form Email', 20, 'HTML', 'Form', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak valid?', '<form></form>', '', '', 'Tambah email', 'return document.querySelector(\"input[type=email]\");', '<form><input type=\"email\"></form>', 'Gunakan email', 'Type email', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(78, 'Tabel Lengkap', 20, 'HTML', 'Tabel', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak rapi?', '<body></body>', '', '', 'Tambah thead tbody', 'return true;', '<table><thead><tr><th>Nama</th><th>Nilai</th></tr></thead><tbody><tr><td>Andi</td><td>90</td></tr></tbody></table>', 'Gunakan thead', 'Gunakan tbody', 'Isi data', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(79, 'Video Error', 20, 'HTML', 'Media', 'Sedang', 'Code Challenge Arena', 'Kenapa video tidak tampil?', '<body></body>', '', '', 'Tambah video', 'return document.querySelector(\"video\");', '<body><video src=\"video.mp4\" controls></video></body>', 'Gunakan video', 'Tambahkan src', 'Isi file', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(80, 'Label Tidak Terhubung', 20, 'HTML', 'Form', 'Sedang', 'Code Challenge Arena', 'Kenapa label tidak klik?', '<label>Nama</label><input>', '', '', 'Hubungkan label', 'return true;', '<label for=\"nama\">Nama</label><input id=\"nama\">', 'Gunakan for', 'Samakan id', 'Hubungkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(81, 'Background Image', 20, 'CSS', 'Background', 'Sedang', 'Code Challenge Arena', 'Kenapa kosong?', '<div></div>', 'div{}', '', 'Tambah background image', 'return true;', 'div{background-image:url(\"bg.jpg\");}', 'Gunakan background-image', 'Isi url', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(82, 'Border Tidak Ada', 20, 'CSS', 'Box', 'Sedang', 'Code Challenge Arena', 'Kenapa box tidak terlihat?', '<div></div>', 'div{}', '', 'Tambah border', 'return true;', 'div{border:1px solid black;}', 'Gunakan border', 'Isi px', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(83, 'Flex Gagal', 20, 'CSS', 'Flexbox', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak sejajar?', '<div class=\"c\"><div></div><div></div></div>', '.c{}', '', 'Gunakan flex', 'return true;', '.c{display:flex;}', 'Gunakan display flex', 'Tambahkan', 'Atur arah', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(84, 'Hover Mati', 20, 'CSS', 'Effect', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak berubah?', '<button>Click</button>', 'button{}', '', 'Tambah hover', 'return true;', 'button:hover{background:red;}', 'Gunakan :hover', 'Tambahkan', 'Ubah warna', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(85, 'Center Gagal', 20, 'CSS', 'Layout', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak center?', '<div></div>', 'div{}', '', 'Center div', 'return true;', 'div{display:flex;justify-content:center;align-items:center;}', 'Gunakan flex', 'Gunakan center', 'Atur justify', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(86, 'Overflow Rusak', 20, 'CSS', 'Layout', 'Sedang', 'Code Challenge Arena', 'Kenapa keluar?', '<div style=\"height:50px\">text panjang</div>', 'div{}', '', 'Atur overflow', 'return true;', 'div{overflow:auto;}', 'Gunakan overflow', 'Hidden/scroll', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(87, 'Box Model Error', 20, 'CSS', 'Box Model', 'Sedang', 'Code Challenge Arena', 'Kenapa ukuran salah?', '<div></div>', 'div{}', '', 'Perbaiki padding', 'return true;', 'div{padding:20px;}', 'Gunakan padding', 'Isi px', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(88, 'Login IF', 20, 'JavaScript', 'Percabangan', 'Sedang', 'Code Challenge Arena', 'Kenapa gagal?', '', '', '', 'Gunakan if login', 'return true;', 'let login = true; if(login){ console.log(\"Login berhasil\"); }', 'Gunakan if', 'Bandingkan', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(89, 'Loop Data', 20, 'JavaScript', 'Loop', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak semua tampil?', '', '', '', 'Gunakan for', 'return true;', 'let data = [\"HTML\",\"CSS\",\"JS\"]; for(let i = 0; i < data.length; i++){ console.log(data[i]); }', 'Gunakan for', 'Loop data', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(90, 'Function Hitung', 20, 'JavaScript', 'Function', 'Sedang', 'Code Challenge Arena', 'Kenapa berulang?', '', '', '', 'Buat function', 'return true;', 'function hitung(a,b){ return a + b; }', 'Gunakan function', 'Tambah return', 'Isi parameter', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(91, 'DOM Update', 20, 'JavaScript', 'DOM', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak berubah?', '<p id=\"t\"></p>', '', '', 'Ubah teks', 'return true;', 'document.getElementById(\"t\").innerText = \"Teks baru\";', 'Gunakan getElementById', 'Ubah innerText', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(92, 'Array Push', 20, 'JavaScript', 'Array', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak bertambah?', '', '', '', 'Tambah data', 'return true;', 'let data = [\"HTML\",\"CSS\"]; data.push(\"JS\");', 'Gunakan push', 'Tambah item', 'Gunakan array', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(93, 'Event Listener', 20, 'JavaScript', 'Event', 'Sedang', 'Code Challenge Arena', 'Kenapa tidak jalan?', '<button id=\"b\"></button>', '', '', 'Gunakan addEventListener', 'return true;', 'document.getElementById(\"b\").addEventListener(\"click\", function(){ console.log(\"Klik\"); });', 'Gunakan event', 'Tambahkan listener', 'Klik', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(97, 'Grid Kompleks', 20, 'CSS', 'Grid', 'Sulit', 'Code Challenge Arena', 'Kenapa tidak rapi?', '<div></div>', 'div{}', '', 'Gunakan grid', 'return true;', 'div{display:grid;grid-template-columns:repeat(3,1fr);gap:10px;}', 'Gunakan grid', 'Atur kolom', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(98, 'Animasi Tombol', 20, 'CSS', 'Animation', 'Sulit', 'Code Challenge Arena', 'Kenapa tidak animasi?', '<button></button>', 'button{}', '', 'Tambah animasi', 'return true;', 'button{animation:naik 1s infinite alternate;}@keyframes naik{from{transform:translateY(0);}to{transform:translateY(-5px);}}', 'Gunakan keyframes', 'Tambah animasi', 'Gunakan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(99, 'Form Validation', 20, 'JavaScript', 'Validation', 'Sulit', 'Code Challenge Arena', 'Kenapa bebas submit?', '', '', '', 'Validasi input kosong', 'return true;', 'function validasi(nama){ if(nama === \"\"){ return \"Tidak boleh kosong\"; } return \"Valid\"; }', 'Gunakan if', 'Cek value', 'Tambahkan', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(100, 'Filter Nilai', 20, 'JavaScript', 'Array', 'Sulit', 'Code Challenge Arena', 'Kenapa tidak filter?', '', '', '', 'Filter >75', 'return true;', 'let nilai = [70,80,90,60]; let hasil = nilai.filter(function(n){ return n > 75; });', 'Gunakan filter', 'Bandingkan', 'Return', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(101, 'Jam Digital', 20, 'JavaScript', 'Timing', 'Sulit', 'Code Challenge Arena', 'Kenapa tidak update?', '<p id=\"jam\"></p>', '', '', 'Buat jam', 'return true;', 'setInterval(function(){ document.getElementById(\"jam\").innerText = new Date().toLocaleTimeString(); }, 1000);', 'Gunakan setInterval', 'Gunakan Date', 'Update', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(102, 'Object Siswa', 20, 'JavaScript', 'Object', 'Sulit', 'Code Challenge Arena', 'Kenapa tidak rapi?', '', '', '', 'Buat object', 'return true;', 'let siswa = { nama:\"Andi\", nilai:90, kelas:\"10A\" };', 'Gunakan key', 'Value', 'Object', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(103, 'Class User', 20, 'JavaScript', 'Class', 'Sulit', 'Code Challenge Arena', 'Kenapa kompleks?', '', '', '', 'Buat class', 'return true;', 'class User{ constructor(nama){ this.nama = nama; } }', 'Gunakan class', 'Constructor', 'this', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(104, 'Responsive HP', 20, 'CSS', 'Responsive', 'Sulit', 'Code Challenge Arena', 'Kenapa rusak?', '<div></div>', 'div{}', '', 'Gunakan media query', 'return true;', '@media (max-width:768px){ div{width:100%;} }', 'Gunakan media', 'Atur ukuran', 'Responsive', '2026-05-03 11:13:05', '2026-05-03 12:05:50'),
(106, 'Struktur HTML Salah', 25, 'HTML', 'Struktur Dasar HTML', 'Mudah', 'Debugging Zone', 'Struktur HTML harus html > head > body.', '<!DOCTYPE html><html><head><title>Web</title><body><h1>Halo</h1></head></body></html>', '', '', 'Perbaiki struktur HTML.', 'const title=document.querySelector(\"title\"); const h1=document.querySelector(\"h1\"); return !!document.head && !!document.body && document.head.parentElement===document.documentElement && document.body.parentElement===document.documentElement && !!title && title.textContent.trim()===\"Web\" && !!h1 && h1.textContent.trim()===\"Halo\";', '<!DOCTYPE html><html><head><title>Web</title></head><body><h1>Halo</h1></body></html>', 'Urutan salah', 'body di dalam head', 'pindahkan body keluar head', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(107, 'Tag Tidak Ditutup', 25, 'HTML', 'Teks', 'Mudah', 'Debugging Zone', 'Tag HTML harus ditutup.', '<p>Halo dunia', '', '', 'Perbaiki tag.', 'const p=document.querySelector(\"p\"); return !!p && p.textContent.trim()===\"Halo dunia\";', '<p>Halo dunia</p>', 'Butuh pasangan', 'closing tag', '</p>', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(108, 'Heading Salah', 25, 'HTML', 'Teks', 'Mudah', 'Debugging Zone', 'Heading hanya h1-h6.', '<h7>Judul</h7>', '', '', 'Perbaiki heading.', 'const h=document.querySelector(\"h1,h2,h3,h4,h5,h6\"); return !!h && h.textContent.trim()===\"Judul\" && !document.querySelector(\"h7\");', '<h1>Judul</h1>', 'Tidak ada h7', 'gunakan h1-h6', '<h1>', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(109, 'Link Error', 25, 'HTML', 'Link', 'Mudah', 'Debugging Zone', 'Link eksternal butuh https://', '<a href=\"google.com\">Google</a>', '', '', 'Perbaiki link.', 'const a=document.querySelector(\"a\"); return !!a && a.href.startsWith(\"https://\") && a.href.includes(\"google.com\") && a.textContent.trim()===\"Google\";', '<a href=\"https://google.com\">Google</a>', 'butuh protokol', 'https', 'https://', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(110, 'Img Tanpa Alt', 25, 'HTML', 'Media', 'Mudah', 'Debugging Zone', 'Alt penting.', '<img src=\"a.jpg\">', '', '', 'Tambahkan alt.', 'const img=document.querySelector(\"img\"); return !!img && img.getAttribute(\"src\")===\"a.jpg\" && img.hasAttribute(\"alt\") && img.getAttribute(\"alt\")!==null;', '<img src=\"a.jpg\" alt=\"Gambar\">', 'aksesibilitas', 'pakai alt', 'alt=\"\"', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(111, 'List Salah', 25, 'HTML', 'List', 'Sedang', 'Debugging Zone', 'List pakai li.', '<ul><p>Item</p></ul>', '', '', 'Perbaiki list.', 'const ul=document.querySelector(\"ul\"); return !!ul && ul.querySelectorAll(\"li\").length>=1 && !ul.querySelector(\"p\");', '<ul><li>Item</li></ul>', 'bukan p', 'li', '<li>', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(112, 'Table Tanpa TR', 25, 'HTML', 'Tabel', 'Sedang', 'Debugging Zone', 'Table butuh tr.', '<table><td>Data</td></table>', '', '', 'Perbaiki table.', 'const table=document.querySelector(\"table\"); const tr=document.querySelector(\"tr\"); const td=document.querySelector(\"td\"); return !!table && !!tr && !!td && td.textContent.trim()===\"Data\";', '<table><tr><td>Data</td></tr></table>', 'baris', 'tr', '<tr>', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(113, 'Form Tanpa Submit', 25, 'HTML', 'Form', 'Sedang', 'Debugging Zone', 'Form butuh submit.', '<form><input></form>', '', '', 'Perbaiki form.', 'const form=document.querySelector(\"form\"); const submit=document.querySelector(\"button[type=submit],input[type=submit]\"); return !!form && !!submit;', '<form><input type=\"text\"><button type=\"submit\">Submit</button></form>', 'tombol', 'submit', 'button', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(114, 'CSS Syntax Salah', 25, 'CSS', 'Dasar', 'Mudah', 'Debugging Zone', 'CSS pakai : dan ;', '', 'p { color red }', '', 'Perbaiki CSS.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"p\" && r.style.color===\"red\";', 'p{color:red;}', 'kurang simbol', ': dan ;', 'color: red;', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(115, 'Selector Salah', 25, 'CSS', 'Selector', 'Mudah', 'Debugging Zone', 'Class pakai titik.', '<h1 class=\"judul\">Halo</h1>', '#judul{color:blue;}', '', 'Perbaiki selector.', 'const el=document.querySelector(\".judul\"); return !!el && document.defaultView.getComputedStyle(el).color===\"rgb(0, 0, 255)\";', '.judul{color:blue;}', 'class vs id', '.', '.judul', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(116, 'Typo Property', 25, 'CSS', 'Teks', 'Mudah', 'Debugging Zone', 'Property harus benar.', '', 'p{fontz-size:20px;}', '', 'Perbaiki property.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"p\" && r.style.fontSize===\"20px\";', 'p{font-size:20px;}', 'typo', 'font-size', 'perbaiki', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(117, 'Margin Tanpa Satuan', 25, 'CSS', 'Box Model', 'Sedang', 'Debugging Zone', 'Butuh px.', '', 'div{margin:10;}', '', 'Perbaiki margin.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"div\" && r.style.margin===\"10px\";', 'div{margin:10px;}', 'butuh satuan', 'px', '10px', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(118, 'Flex Tidak Aktif', 25, 'CSS', 'Flexbox', 'Sedang', 'Debugging Zone', 'display:flex wajib.', '', '.c{justify-content:center;}', '', 'Perbaiki flex.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\".c\" && r.style.display===\"flex\" && r.style.justifyContent===\"center\";', '.c{display:flex;justify-content:center;}', 'kurang display', 'flex', 'display:flex', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(119, 'Hover Salah', 25, 'CSS', 'Interaksi', 'Sedang', 'Debugging Zone', 'hover pakai :', '', 'button hover{color:red;}', '', 'Perbaiki hover.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"button:hover\" && r.style.color===\"red\";', 'button:hover{color:red;}', 'pakai :', 'pseudo', ':hover', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(120, 'Background Tanpa ;', 25, 'CSS', 'Background', 'Sedang', 'Debugging Zone', 'akhiri ;', '', 'div{background:red}', '', 'Perbaiki syntax.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"div\" && (r.style.background===\"red\" || r.style.backgroundColor===\"red\");', 'div{background:red;}', '; hilang', 'akhiri ;', ';', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(121, 'Display Salah', 25, 'CSS', 'Layout', 'Sulit', 'Debugging Zone', 'display mempengaruhi layout.', '', 'span{display:block;}', '', 'Analisis & perbaiki sesuai inline.', 'const ss=[...document.styleSheets].find(s=>s.cssRules && s.cssRules.length); if(!ss) return false; const r=ss.cssRules[0]; return r.selectorText===\"span\" && r.style.display===\"inline\";', 'span{display:inline;}', 'span inline', 'block beda', 'inline', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(122, 'Const Error', 25, 'JavaScript', 'Variabel', 'Mudah', 'Debugging Zone', 'const tidak bisa diubah.', '', '', 'const a=5;a=10;', 'Perbaiki variabel.', 'return !win.userCodeError && consoleOutput.includes(\"10\");', 'let a=5; a=10; console.log(a);', 'const fix', 'pakai let', 'let', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(123, 'Console Typo', 25, 'JavaScript', 'Output', 'Mudah', 'Debugging Zone', 'console.log harus benar.', '', '', 'consol.log(\"Hi\")', 'Perbaiki console.', 'return !win.userCodeError && consoleOutput.includes(\"Hi\");', 'console.log(\"Hi\");', 'typo', 'console', 'console.log', '2026-05-03 11:16:24', '2026-05-03 12:13:55'),
(124, 'If Salah', 25, 'JavaScript', 'Percabangan', 'Sedang', 'Debugging Zone', 'if butuh ().', '', '', 'if x>5 {console.log(x)}', 'Perbaiki if.', 'return !win.userCodeError && consoleOutput.includes(\"10\");', 'let x=10; if(x>5){console.log(x);}', 'kurang ()', 'syntax', 'if(x>5)', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(125, 'Loop Error', 25, 'JavaScript', 'Loop', 'Sedang', 'Debugging Zone', 'for pakai ;', '', '', 'for(let i=0 i<5 i++){}', 'Perbaiki loop.', 'return !win.userCodeError && consoleOutput.includes(\"0\") && consoleOutput.includes(\"4\");', 'for(let i=0; i<5; i++){console.log(i);}', '; kurang', 'for', ';;', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(126, 'Function Tanpa Return', 25, 'JavaScript', 'Function', 'Sedang', 'Debugging Zone', 'return diperlukan.', '', '', 'function t(a,b){a+b;}', 'Perbaiki function.', 'return !win.userCodeError && typeof win.t===\"function\" && win.t(2,3)===5;', 'function t(a,b){ return a+b; }', 'tidak return', 'pakai return', 'return a+b', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(127, 'DOM Salah ID', 25, 'JavaScript', 'DOM', 'Sedang', 'Debugging Zone', 'ID harus sama.', '<h1 id=\"title\">Hi</h1>', '', 'document.getElementById(\"judul\")', 'Perbaiki ID.', 'const el=document.getElementById(\"title\"); return !win.userCodeError && !!el && el.textContent.trim()===\"Benar\";', 'document.getElementById(\"title\").textContent=\"Benar\";', 'beda id', 'cek html', 'title', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(128, 'Array Typo', 25, 'JavaScript', 'Array', 'Sedang', 'Debugging Zone', 'method harus benar.', '', '', 'arr.puch(1)', 'Perbaiki array.', 'return !win.userCodeError && consoleOutput.includes(\"1\");', 'let arr=[]; arr.push(1); console.log(arr.length);', 'typo', 'push', 'push', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(129, 'JSON Error', 25, 'JavaScript', 'JSON', 'Sulit', 'Debugging Zone', 'JSON harus string.', '', '', 'JSON.parse({a:1})', 'Perbaiki JSON.', 'return !win.userCodeError && consoleOutput.includes(\"1\");', 'console.log(JSON.parse(`{\"a\":1}`).a);', 'harus string', 'gunakan \"\"', '\"{a:1}\"', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(130, 'Try Tanpa Catch', 25, 'JavaScript', 'Error Handling', 'Sulit', 'Debugging Zone', 'try butuh catch.', '', '', 'try{console.log(x)}', 'Perbaiki error handling.', 'return !win.userCodeError && consoleOutput.toLowerCase().includes(\"error\");', 'try{console.log(x)}catch(e){console.log(\"error\")}', 'kurang catch', 'tambahkan catch', 'catch(e)', '2026-05-03 11:16:24', '2026-05-03 12:13:56'),
(131, 'Event Tidak Jalan', 25, 'JavaScript', 'Event', 'Sulit', 'Debugging Zone', 'event butuh elemen.', '', '', 'button.onclick=klik;', 'Perbaiki event.', 'const b=document.querySelector(\"button\"); return !win.userCodeError && !!b && typeof b.onclick===\"function\";', 'const button=document.createElement(\"button\"); button.onclick=function(){ console.log(\"klik\"); }; document.body.appendChild(button);', 'button undefined', 'querySelector', 'ambil element', '2026-05-03 11:16:24', '2026-05-03 12:13:56');
INSERT INTO `questions` (`id`, `title`, `xp`, `subject`, `subtopic`, `difficulty`, `type`, `mini_materi`, `code_html`, `code_css`, `code_js`, `task`, `validation_js`, `answer`, `hint1`, `hint2`, `hint3`, `created_at`, `updated_at`) VALUES
--
-- Update answer_type based on subject
--
UPDATE `questions` SET `answer_type` = 'css' WHERE `subject` = 'CSS';
UPDATE `questions` SET `answer_type` = 'js' WHERE `subject` = 'JavaScript';
UPDATE `questions` SET `answer_type` = 'html' WHERE `subject` = 'HTML';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
