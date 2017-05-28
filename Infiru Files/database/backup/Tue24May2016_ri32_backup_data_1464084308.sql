DROP TABLE administrator;

CREATE TABLE `administrator` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_login` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO administrator VALUES("1","Nazrul Hakim Bin Mat Wazir","admin","21232f297a57a5a743894a0e4a801fc3","2016-05-24 18:04:00","2016-05-17 23:30:46","572deaf1c6914.1.png");



DROP TABLE kalendar;

CREATE TABLE `kalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_kalendar` varchar(20) NOT NULL,
  `subjek` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO kalendar VALUES("2","15-4-2016","Tamat Li","[ Infiru Dynamic Enterprise ]");
INSERT INTO kalendar VALUES("3","11-5-2016","Jbj","Knknkn");



DROP TABLE maklumat_slot;

CREATE TABLE `maklumat_slot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tarikh` varchar(50) NOT NULL,
  `nama_slot` varchar(50) DEFAULT NULL,
  `tajuk_kuliah` varchar(50) DEFAULT NULL,
  `penceramah` varchar(50) DEFAULT NULL,
  `episod` int(10) DEFAULT NULL,
  `bahagian` varchar(10) DEFAULT NULL,
  `sinopsis` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

INSERT INTO maklumat_slot VALUES("52","2016-03-31","Alhamdulillah","Hijrah","Ustaz Ahmad Khairi","1","1","  Slot Alhamdulillah Episod 1 akan menjelaskan sedikit mukaddimah penting dalam setiap rukun Islam yang wajib kita ketahui. Pengacara memberikan penerangan yang mudah dan ringkas sebagai panduan kepada penonton dalam mendalami ilmu fardhu kifayah ini.");
INSERT INTO maklumat_slot VALUES("53","2016-04-03","Darul Ilmu","Adab Menuntut Ilmu","Ustaz Abdul Fattah Bin Awang","1","1","  Slot Darul Ilmu Episod 1 akan menjelaskan sedikit mukaddimah penting dalam setiap rukun Islam yang wajib kita ketahui. Pengacara memberikan penerangan yang mudah dan ringkas sebagai panduan kepada penonton dalam mendalami ilmu fardhu kifayah ini.");
INSERT INTO maklumat_slot VALUES("54","2016-05-07","Kufiah Putih","Munafiq","Ustaz Abdul Fattah Bin Awang","1","1","Slot Kufiah Putih Episod 1 akan menjelaskan sedikit mukaddimah penting dalam setiap rukun Islam yang wajib kita ketahui. Pengacara memberikan penerangan yang mudah dan ringkas sebagai panduan kepada penonton dalam mendalami ilmu fardhu kifayah ini.");



DROP TABLE sinopsis;

CREATE TABLE `sinopsis` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_slot` varchar(100) DEFAULT NULL,
  `tajuk` varchar(200) NOT NULL,
  `episod` varchar(20) NOT NULL,
  `bahagian` varchar(20) NOT NULL,
  `tarikh` varchar(30) NOT NULL,
  `pengacara` varchar(100) DEFAULT NULL,
  `sinopsis` varchar(500) DEFAULT NULL,
  `gambar` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO sinopsis VALUES("15","Kufiah Putih","	Muhasabah Diri","12","1","2016-03-29","Ustaz Ahmad Khairi"," akan menjelaskan sedikit mukaddimah penting dalam setiap rukun Islam yang wajib kita ketahui.



DROP TABLE slot;

CREATE TABLE `slot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_slot` varchar(50) DEFAULT NULL,
  `tarikh_mula` varchar(20) DEFAULT NULL,
  `tarikh_akhir` varchar(20) NOT NULL,
  `poster` varchar(30) DEFAULT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO slot VALUES("11","Kufiah Putih","2015-2-20","2016-5-31","56ff519a13a91.K.png","56ff5181cfaf5.S.png");
INSERT INTO slot VALUES("26","Darul Ilmu","2016-4-2","2016-4-30","56ff5624d4007.D.png","56ff5624d42dd.S.png");



DROP TABLE upload_file;

CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_slot` varchar(70) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;




DROP TABLE upload_invois;

CREATE TABLE `upload_invois` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_slot` varchar(70) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



