-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2016 at 09:32 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grandcitra`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(17, 'JNE', 'http://www.jne.co.id', 'logo-expedisi-JNE.png', '2016-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(10, 'Katalog 001', 'test.jpg', '2011-01-31', 3),
(11, 'katalog 2', 'Penguins.jpg', '2016-04-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(29, 'Baner 1', '', 'banner 1.jpg', '2016-04-07'),
(30, 'baner 2', '', 'banner2.jpg', '2016-04-07'),
(31, 'baner 3', '', 'banner3.jpg', '2016-04-07'),
(32, 'baner 4', '', 'banner 4.jpg', '2016-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(33, 'arwe', 'asde@gmail.com', 'dese', 'asdeded', '2016-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(23, 'CELANA', 'celana'),
(19, 'Kaos', 'kaos'),
(20, 'kemeja', 'kemeja'),
(21, 'JAKET', 'jaket'),
(22, 'TOPI', 'topi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(74, 124, 'Rizal Faizal', '', ' terima  kasih  atas  perhatiannya   ', '2011-02-22', '20:38:30', 'Y'),
(76, 54, 'Rizal Faizal', '', ' gawatttttttttt   ', '2011-02-23', '23:36:53', 'Y'),
(77, 54, 'Rizal Faizal', '', ' fewfg   ', '2011-02-23', '23:39:46', 'Y'),
(78, 54, 'fff', '', ' ffffffffffff   ', '2011-02-23', '23:41:36', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(5, 5, 'Jakarta', 15000),
(6, 6, 'Bandung', 15000),
(7, 5, 'Surabaya', 13000),
(8, 5, 'Semarang', 17500),
(9, 6, 'Medan', 20000),
(10, 6, 'Aceh', 25000),
(11, 6, 'Banjarmasin', 17500);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(10, 'BERANDA', 'index.php', 'Y'),
(11, 'PROFIL ', 'profil-kami.html', 'Y'),
(12, 'PRODUK', 'semua-produk.html', 'Y'),
(13, 'KERANJANG BELANJA', 'keranjang-belanja.html', 'Y'),
(14, 'CARA PEMBELIAN', 'cara-pembelian.html', 'Y'),
(15, 'DOWNLOAD KATALOG', 'semua-download.html', 'N'),
(16, 'HUBUNGI KAMI', 'hubungi-kami.html', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:TrackMoves/>\r\n<w:TrackFormatting/>\r\n<w:PunctuationKerning/>\r\n<w:ValidateAgainstSchemas/>\r\n<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n<w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n<w:DoNotPromoteQF/>\r\n<w:LidThemeOther>EN-US</w:LidThemeOther>\r\n<w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n<w:DontGrowAutofit/>\r\n<w:SplitPgBreakAndParaMark/>\r\n<w:EnableOpenTypeKerning/>\r\n<w:DontFlipMirrorIndents/>\r\n<w:OverrideTableStyleHps/>\r\n</w:Compatibility>\r\n<m:mathPr>\r\n<m:mathFont m:val="Cambria Math"/>\r\n<m:brkBin m:val="before"/>\r\n<m:brkBinSub m:val="--"/>\r\n<m:smallFrac m:val="off"/>\r\n<m:dispDef/>\r\n<m:lMargin m:val="0"/>\r\n<m:rMargin m:val="0"/>\r\n<m:defJc m:val="centerGroup"/>\r\n<m:wrapIndent m:val="1440"/>\r\n<m:intLim m:val="subSup"/>\r\n<m:naryLim m:val="undOvr"/>\r\n</m:mathPr></w:WordDocument>\r\n</xml><![endif]-->\r\n</p>\r\n<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"\r\nDefSemiHidden="false" DefQFormat="false" DefPriority="99"\r\nLatentStyleCount="371">\r\n<w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 2"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 3"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 4"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 5"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 6"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 7"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 8"/>\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="heading 9"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 6"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 7"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 8"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index 9"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 1"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 2"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 3"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 4"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 5"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 6"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 7"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 8"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="toc 9"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Normal Indent"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="footnote text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="annotation text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="header"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="footer"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="index heading"/>\r\n<w:LsdException Locked="false" Priority="35" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="caption"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="table of figures"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="envelope address"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="envelope return"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="footnote reference"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="annotation reference"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="line number"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="page number"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="endnote reference"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="endnote text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="table of authorities"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="macro"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="toa heading"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Bullet"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Number"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Bullet 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Bullet 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Bullet 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Bullet 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Number 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Number 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Number 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Number 5"/>\r\n<w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Closing"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Signature"/>\r\n<w:LsdException Locked="false" Priority="1" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="Default Paragraph Font"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text Indent"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Continue"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Continue 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Continue 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Continue 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="List Continue 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Message Header"/>\r\n<w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Salutation"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Date"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text First Indent"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text First Indent 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Note Heading"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text Indent 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Body Text Indent 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Block Text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Hyperlink"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="FollowedHyperlink"/>\r\n<w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>\r\n<w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Document Map"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Plain Text"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="E-mail Signature"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Top of Form"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Bottom of Form"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Normal (Web)"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Acronym"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Address"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Cite"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Code"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Definition"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Keyboard"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Preformatted"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Sample"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Typewriter"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="HTML Variable"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Normal Table"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="annotation subject"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="No List"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Outline List 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Outline List 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Outline List 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Simple 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Simple 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Simple 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Classic 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Classic 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Classic 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Classic 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Colorful 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Colorful 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Colorful 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Columns 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Columns 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Columns 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Columns 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Columns 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 6"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 7"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Grid 8"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 4"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 5"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 6"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 7"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table List 8"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table 3D effects 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table 3D effects 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table 3D effects 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Contemporary"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Elegant"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Professional"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Subtle 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Subtle 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Web 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Web 2"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Web 3"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Balloon Text"/>\r\n<w:LsdException Locked="false" Priority="39" Name="Table Grid"/>\r\n<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\nName="Table Theme"/>\r\n<w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>\r\n<w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>\r\n<w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>\r\n<w:LsdException Locked="false" Priority="34" QFormat="true"\r\nName="List Paragraph"/>\r\n<w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>\r\n<w:LsdException Locked="false" Priority="30" QFormat="true"\r\nName="Intense Quote"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>\r\n<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>\r\n<w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>\r\n<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>\r\n<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>\r\n<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>\r\n<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>\r\n<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>\r\n<w:LsdException Locked="false" Priority="19" QFormat="true"\r\nName="Subtle Emphasis"/>\r\n<w:LsdException Locked="false" Priority="21" QFormat="true"\r\nName="Intense Emphasis"/>\r\n<w:LsdException Locked="false" Priority="31" QFormat="true"\r\nName="Subtle Reference"/>\r\n<w:LsdException Locked="false" Priority="32" QFormat="true"\r\nName="Intense Reference"/>\r\n<w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>\r\n<w:LsdException Locked="false" Priority="37" SemiHidden="true"\r\nUnhideWhenUsed="true" Name="Bibliography"/>\r\n<w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\nUnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>\r\n<w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>\r\n<w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>\r\n<w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>\r\n<w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>\r\n<w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>\r\n<w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>\r\n<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>\r\n<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>\r\n<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 1"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 1"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 1"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 2"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 2"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 2"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 3"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 3"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 3"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 4"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 4"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 4"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 5"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 5"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 5"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="Grid Table 1 Light Accent 6"/>\r\n<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="Grid Table 6 Colorful Accent 6"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="Grid Table 7 Colorful Accent 6"/>\r\n<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>\r\n<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>\r\n<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 1"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 1"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 1"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 2"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 2"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 2"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 3"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 3"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 3"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 4"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 4"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 4"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 5"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 5"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 5"/>\r\n<w:LsdException Locked="false" Priority="46"\r\nName="List Table 1 Light Accent 6"/>\r\n<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>\r\n<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>\r\n<w:LsdException Locked="false" Priority="51"\r\nName="List Table 6 Colorful Accent 6"/>\r\n<w:LsdException Locked="false" Priority="52"\r\nName="List Table 7 Colorful Accent 6"/>\r\n</w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-parent:"";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin:0in;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Calibri","sans-serif";\r\nmso-bidi-font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n</p>\r\n<p style="margin: 0in 0in 6pt; text-align: justify; text-indent: 35.45pt; line-height: 200%" class="MsoListParagraphCxSpFirst" align="justify">\r\n<font face="comic sans ms,sand" size="3"><span style="line-height: 200%">Grand Citra Busana didirikan pada tahun 1995 Perusahaan yang berlokasi di Jl. Tuanku Tambusai , Sukajadi,\r\nPekanbaru. Grand Citra Busana adalah sebuah perusahaan yang bergerak dalam\r\nbidang usaha dagang pakaian jadi. Awal mula berdirinya Grand Citra Busana hanya\r\nberfokus pada penjualan pakaian jadi, tidak meliputi pada produksi barang. </span></font>\r\n</p>\r\n<div align="justify">\r\n<font face="comic sans ms,sand" size="3">\r\n</font>\r\n</div>\r\n<p style="margin: 0in 0in 6pt; text-align: justify; text-indent: 35.45pt; line-height: 200%" class="MsoListParagraphCxSpMiddle" align="justify">\r\n<font face="comic sans ms,sand" size="3"><span style="line-height: 200%">Saat ini Grand Citra Busana<span>&nbsp;\r\n</span>memiliki toko retail sendiri untuk memasarkan produk pakaian jadinya\r\nyakni. Produk-produk pakaian jadi ini didapatkan dari sales dan belanja dari\r\nagen yang ada.</span></font>\r\n</p>\r\n<div align="justify">\r\n<font face="comic sans ms,sand" size="3">\r\nGrand Citra Busana&nbsp; adalah toko fashion online, yang menyediakan segala kebutuhan fashion anda. Grand Citra Busana ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja fashion berkualias dengan harga yang terjangkau.\r\n</font>\r\n</div>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<font face="comic sans ms,sand" size="3">\r\n</font>\r\n<p class="MsoNormal">\r\n<font face="comic sans ms,sand" size="3">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />\r\n</font>\r\n</p>\r\n<font face="comic sans ms,sand" size="3">\r\n</font>\r\n<p class="MsoNormal">\r\n<font face="comic sans ms,sand" size="3">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembuatan/pemesanan fashion sesuai design/pola&nbsp; yang anda inginkan.<br />\r\n</font>\r\n</p>\r\n<font face="comic sans ms,sand" size="3">\r\n</font>\r\n<p class="MsoNormal">\r\n<font face="comic sans ms,sand" size="3">\r\nAkhirnya, kami mengucapkan terima kasih atas kunjungan anda di Grand Citra Busana.\r\n</font>\r\n</p>\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<font face="comic sans ms,sand" size="2"><br />\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2">======================================================================================</font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>CARA PEMESANAN</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Pilih dan tentukan product</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Perhatikan kode product atau nama product</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Hubungi customer service kami atau tinggalkan pesan melalui \r\nvia SMS, BBM, LINE, YM atau EMAIL untuk mengecek ketersediaan stock \r\nbarang</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Kami akan segera memberikan respon dan konfirmasi balik ke anda berupa informasi yang anda butuhkan, paling lama 1x12jam</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Jika sudah deal, kami akan memberikan informasi berupa jumlah total harga pembayaran dan rekening bank pembayaran</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Rekening pembayaran bank BCA dan atm bersama an ARWENDA&nbsp; 0342095737 (tidak menggunakan rekening atasnama lain)</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Jika proses pembayaran oleh customer sudah selesai, mohon \r\nuntuk segera langsung memberikan konfirmasi kepada kami pihak customer \r\nservis</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Pengiriman barang dari jakarta ke seluruh lokasi dan kota \r\nbesar di INDONESIA menggunakan jasa pengiriman paket JNE, untuk biaya \r\npengiriman dapat di check di official website www.jne.co.id</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Pengiriman paket service REG untuk 2-3 hari dan YES untuk 1 hari (tergantung request)</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Kami menerima layanan untuk COD / ketemuan langsung, tetapi \r\nhanya dapat di lokasi jakarta pusat (dengan perjanjian terlebih dahulu)</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>&raquo; Garansi barang cacat atau rusak dapat di tukar 1x24jam sesudah barang di terima pelanggan </span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">\r\n</font>\r\n<p>\r\n<font face="comic sans ms,sand" size="2"><span>======================================================================================</span></font>\r\n</p>\r\n<font face="comic sans ms,sand" size="2">																	\r\n</font>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(47, 'Edit Link Terkait', '?module=banner', '', '', 'user', 'Y', 13),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(53, 'User Yahoo Messenger', '?module=ym', '', '', 'user', 'Y', 15),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '', '', 'user', 'Y', 14),
(56, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '<font face="comic sans ms,sand" size="3"><span class="center_content2"><span class="center_content">\r\n<div class="profil">\r\n<div>\r\n<span class="center_content">\r\n<div>\r\n<strong>Selamat Datang di&nbsp; Grand Citra Busana</strong>\r\n</div>\r\n<div>\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt">Kami menyediakan berbagai macam jenis fashion berkualitas\r\ntinggi untuk segala kebutuhan penampilan anda. Mulai dari baju, celana, \r\njaket\r\ndan lainnya.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt">Berkonsep Toko online, kami berusaha memanjakan sekaligus\r\nmemudahkan para customer untuk berbelanja di toko online kami. \r\nKenyamanan dan\r\nkeamanan pun kami jaga sehingga tercipta hubungan baik penjual dan \r\npembeli.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt">Selamat berbelanja. Dan terima kasih atas kunjungan anda&hellip;</span></span>\r\n</p>\r\n</div>\r\n</span>\r\n</div>\r\n</div>\r\n</span></span></font><font face="comic sans ms,sand" size="3">\r\n</font>\r\n', 'hai.jpg', 'user', 'Y', 12),
(57, 'Edit Rekening Bank', '?module=bank', '', '', 'user', 'Y', 16),
(58, 'Edit Selamat Datang', '?module=welcome', '<strong>mobilestore.com</strong> merupakan website resmi dari Toko HP Lokomedia \r\nyang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. \r\nDirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br />\r\n<br />\r\nProduk\r\nunggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris \r\nbertema Nokia yang merupakan merk produk handphone paling terdepan saat \r\nini.\r\n', 'gedung.jpg', 'user', 'Y', 6),
(61, 'Edit Menu Utama', '?module=menuutama', '', '', 'user', 'Y', 2),
(62, 'Edit Sub Menu', '?module=submenu', '', '', 'user', 'Y', 3),
(63, 'Edit Download Katalog', '?module=download', '', '', 'user', 'Y', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mod_bank`
--

CREATE TABLE IF NOT EXISTS `mod_bank` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mod_bank`
--

INSERT INTO `mod_bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(1, 'BCA', '0342095737', 'Arwenda', 'mandiri.gif');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'TES 2', 'TES TES'),
(2, 'wewen', 'wewen');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(50, 'adas', 'asdasd', '001212', 'ad@gmail.com', 'Baru', '2016-04-11', '10:58:42', 10),
(48, 'ad', 'asdasd', '0129123', 'arweda@gmail.com', 'Lunas/Terkirim', '2016-04-06', '02:17:35', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(2, 16, 1),
(3, 17, 1),
(0, 56, 1),
(0, 58, 1),
(0, 60, 1),
(0, 50, 1),
(0, 51, 1),
(0, 55, 1),
(0, 61, 1),
(0, 58, 1),
(0, 60, 1),
(0, 56, 1),
(4, 44, 1),
(5, 53, 1),
(0, 58, 1),
(0, 47, 1),
(0, 58, 1),
(0, 61, 1),
(0, 58, 1),
(6, 61, 1),
(7, 58, 1),
(8, 43, 1),
(9, 58, 1),
(11, 43, 1),
(12, 44, 1),
(13, 43, 1),
(13, 58, 1),
(16, 58, 1),
(17, 50, 1),
(18, 45, 1),
(19, 41, 1),
(20, 59, 1),
(31, 58, 1),
(31, 42, 2),
(35, 59, 1),
(35, 54, 1),
(35, 61, 2),
(0, 54, 1),
(0, 59, 1),
(38, 54, 1),
(39, 59, 1),
(40, 61, 1),
(41, 54, 1),
(42, 54, 1),
(42, 55, 1),
(43, 61, 1),
(43, 58, 1),
(45, 87, 1),
(48, 81, 1),
(48, 92, 1),
(50, 113, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=236 ;

--
-- Dumping data for table `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(233, 115, 'e0d2ds77tocq3llgedoi5hh965', 1, '2016-04-10', '23:16:35', 12),
(234, 109, 'e0d2ds77tocq3llgedoi5hh965', 1, '2016-04-10', '23:16:55', 10);

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Bagus', 'Jawaban', 27, 'Y'),
(2, 'Lumayan', 'Jawaban', 80, 'Y'),
(3, 'Tidak', 'Jawaban', 21, 'Y'),
(8, 'Bagaimana tampilan web ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(115, 21, 'Jaket Volcom 21', 'jaket-volcom-21', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Jaket Volcom 21</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 300,000</span></span></span></strong>\r\n</p>\r\n', 300000, 12, 1.00, '2016-04-08', '83KLO_VOLCOM_21.jpg', 1, 25),
(114, 21, 'Jaket Volcom 111', 'jaket-volcom-111', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Jaket Volcom 111</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 300,000</span></span></span></strong>\r\n</p>\r\n', 300000, 12, 1.00, '2016-04-08', '80JKP_VOLCOM_111.jpg', 1, 10),
(112, 21, 'Jaket Ripcurl 141', 'jaket-ripcurl-141', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Jaket Ripcurl 141</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '24JKO_RIPCURL_141.jpg', 1, 10),
(113, 21, ' Kode : Jaket Ripcurl 831', '-kode--jaket-ripcurl-831', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Jaket Ripcurl 831</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,00</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '79JKO_RIPCURL_831.jpg', 1, 10),
(111, 23, 'Celana Jeans Lee 141', 'celana-jeans-lee-141', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Celana Jeans Lee 141</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : 30 - 36</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 349,000</span></span></span></strong>\r\n</p>\r\n', 349000, 12, 1.00, '2016-04-08', '99JEANS_LEE_141.jpg', 1, 10),
(109, 23, ' Kode : Celana Jeans Lee 71', '-kode--celana-jeans-lee-71', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Celana Jeans Lee 071</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : 30 - 36</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 399,000</span></span></span></strong>\r\n</p>\r\n', 399000, 10, 1.00, '2016-04-08', '40JEANS_LEE_71.jpg', 1, 0),
(110, 23, 'Celana Jeans Lee 121', 'celana-jeans-lee-121', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Celana Jeans Lee 121</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 349,000</span></span></span></strong>\r\n</p>\r\n', 349000, 12, 1.00, '2016-04-08', '97JEANS_LEE_121.jpg', 1, 10),
(107, 20, ' Kemeja Hugo BOSS 003', '-kemeja-hugo-boss-003', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Kemeja Hugo BOSS 003</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '85KHB_31.jpg', 1, 0),
(108, 23, 'Celana Jeans Calvin Klein 001', 'celana-jeans-calvin-klein-001', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Celana Jeans Calvin Klein 002</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 399,000</span></span></span></strong>\r\n</p>\r\n', 399000, 12, 1.00, '2016-04-08', '2JEANS_CALVIN_31.jpg', 1, 10),
(102, 19, ' Kode : KAOS Oakley 007', '-kode--kaos-oakley-007', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 007</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 175000, 10, 1.00, '2016-04-08', '20ready_stock_kaos_original_oakley__ripcurl_928911_1431436738.jpg', 1, 0),
(104, 20, 'Kemeja Gues 002', 'kemeja-gues-002', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Kemeja Gues 002</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '61KGP_21.jpg', 1, 0),
(105, 20, 'Kemeja Hugo BOSS 001', 'kemeja-hugo-boss-001', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Kemeja Hugo BOSS</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '79KHB_11.jpg', 1, 10),
(106, 20, 'Kemeja Hugo BOSS 002', 'kemeja-hugo-boss-002', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Kemeja Hugo BOSS 002</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 15, 1.00, '2016-04-08', '37KHB_21.jpg', 1, 25),
(98, 19, 'Kaos Oakley 003 ', 'kaos-oakley-003-', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 003</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 10, 1.00, '2016-04-08', '17ready_stock_kaos_original_oakley__ripcurl_928911_1431436733.jpg', 1, 10),
(99, 19, ' Kode : KAOS Oakley 002', '-kode--kaos-oakley-002', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 002</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 12, 1.00, '2016-04-08', '88ready_stock_kaos_original_oakley__ripcurl_928911_1431436726.jpg', 1, 0),
(100, 19, ' Kode : KAOS Oakley 005', '-kode--kaos-oakley-005', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 005</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 4, 1.00, '2016-04-08', '51TO_OAKLEY_471.jpg', 1, 10),
(101, 19, ' Kode : KAOS Oakley 006 ', '-kode--kaos-oakley-006-', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 006</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 10, 1.00, '2016-04-08', '13ready_stock_kaos_original_oakley__ripcurl_928911_1431436737.jpg', 1, 10),
(96, 19, 'KAOS ripcurl 004', 'kaos-ripcurl-004', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS ripcurl 001</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 12, 1.00, '2016-04-07', '35ready_stock_kaos_original_oakley__ripcurl_928911_1431436726.jpg', 1, 0),
(97, 19, 'KAOS Oakley 001', 'kaos-oakley-001', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS Oakley 001</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 150,000</span></span></span></strong>\r\n</p>\r\n', 150000, 12, 1.00, '2016-04-08', '15ready_stock_kaos_original_oakley__ripcurl_928911_1431436731.jpg', 1, 10),
(103, 20, 'Kemeja Gues 001', 'kemeja-gues-001', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : Kemeja Gues 001</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 250,000</span></span></span></strong>\r\n</p>\r\n', 250000, 12, 1.00, '2016-04-08', '1KGP_11.jpg', 1, 0),
(94, 19, 'Kaos ripcurl 001', 'kaos-ripcurl-001', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS ripcurl 001</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 135,000</span></span></span></strong>\r\n</p>\r\n', 135000, 12, 1.00, '2016-04-07', '38ready_stock_kaos_original_oakley__ripcurl_928911_1431436720.jpg', 1, 20),
(95, 19, 'Kaos ripcurl 002', 'kaos-ripcurl-002', '<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">Kode : KAOS ripcurl 002</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">SIZE : S,M,L,XL</span></span></span></strong>\r\n</p>\r\n<p>\r\n<strong><span style="color: red ! important"><span style="font-size: 16px ! important"><span style="display: block; text-align: center">\r\nRp. 215,000</span></span></span></strong>\r\n</p>\r\n', 145000, 8, 1.00, '2016-04-07', '40ready_stock_kaos_original_oakley__ripcurl_928911_1431436723.jpg', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', 'news5.jpg'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '2010-04-11', 'news4.jpg'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', 'news3.jpg'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', 'news2.jpg'),
(5, 'Presiden AS Barack Obama memesan Nasi Goreng di restoran Bali langsung dari Amerika', '2010-04-11', 'news1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_pengiriman`
--

CREATE TABLE IF NOT EXISTS `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `gambar`) VALUES
(6, 'JNE', ''),
(5, 'TIKI', ''),
(7, 'POS EKSPRESS', '');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('127.0.0.1', '2016-03-30', 17, '1459327589'),
('127.0.0.1', '2016-04-02', 9, '1459613953'),
('127.0.0.1', '2016-04-03', 29, '1459628995'),
('127.0.0.1', '2016-04-04', 55, '1459759329'),
('127.0.0.1', '2016-04-06', 22, '1459936507'),
('127.0.0.1', '2016-04-07', 34, '1460047416'),
('127.0.0.1', '2016-04-08', 41, '1460104151'),
('127.0.0.1', '2016-04-10', 12, '1460305444'),
('127.0.0.1', '2016-04-11', 10, '1460347124');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(32, 'JAKET', 'kategori-21-JAKET.html', 12),
(25, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 0),
(20, 'LIHAT KERANJANG', 'keranjang-belanja.html', 13),
(21, 'SELESAI BELANJA', 'selesai-belanja.html', 13),
(33, 'TOPI', 'kategori-22-TOPI.html', 12),
(34, 'CELANA', 'kategori-23-CELANA.html', 12),
(35, 'KAOS', 'kategori-19-KAOS.html', 12),
(31, 'KEMEJA', 'kategori-20-kemeja.html', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktivasi` int(6) NOT NULL DEFAULT '0',
  `cek_aktivasi` int(6) NOT NULL DEFAULT '0',
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

