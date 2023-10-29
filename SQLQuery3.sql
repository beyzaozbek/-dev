CREATE TABLE UYELER(
Uye_no INT IDENTITY(1,1),
Uye_adi nchar(100),
Uye_soyadi nchar(100),
Cinsiyet nchar(10),
Adres_no nchar(100)
Telefon int not null,
E_posta nchar(100) not null,
PRIMARY KEY ("Uye_no")
);

Sütun ekleme 
ALTER TABLE UYELER ADD Uye_adi VARCHAR ;
Sütun deðiþtirme
ALTER TABLE UYELER ALTER COLUMN Adres_no INT ;
Sütun silme
ALTER TABLE UYELER DROP COLUMN Cinsiyet ;

CREATE TABLE ADRESLER(
Adres_no INT IDENTITY(1,1),
Cadde nchar(100),
Mahalle nchar(100),
Bina_no int,
Sehir nchar(100) not null,
Posta_kodu int,
Ulke nchar(100) not null,
PRIMARY KEY ("Adres_no")
);


ALTER TABLE ADRESLER ALTER COLUMN  Cadde VARCHAR ;

ALTER TABLE ADRESLER DROP COLUMN Bina_no ;


CREATE TABLE KÝTAPLAR (
ISBN int not null,
Kitap_adi nchar(100),
Yayin_tarihi date,
S_sayisi int,
PRIMARY KEY ("ISBN")
);

CREATE TABLE KUTUPHANE (
Kutuphane_no int,
Adres_no int,
Kutuphane_ismi nchar(100),
Aciklama nchar(100),
PRIMARY KEY ("Kutuphane_no")
);



CREATE TABLE YAZARLAR (
Yazar_no int,
Yazar_adi nchar(100),
Yazar_soyadi nchar(100),
PRIMARY KEY ("Yazar_no")
);

CREATE TABLE EMANET (
Emanet_no int,
ISBN int,
Uye_no int,
Kutuphane_no int,
Emanet_tarih date,
Teslim_tarihi date,
PRIMARY KEY ("Emanet_no")
);

CREATE TABLE KATEGORÝLER (
Kategori_no int,
Kategori_adi nchar(100),
PRIMARY KEY ("Kategori_no")
);

CREATE TABLE KÝTAP_KATEGORÝ (
ISBN int,
Kategori_no int,
FOREIGN KEY (Kategori_no)
);

CREATE TABLE KÝTAP_KUTUPHANE (
Kutphane_no int,
ISBN int,
MÝktar int,
);

CREATE TABLE KÝTAP_YAZAR (
ISBN int,
Yazar_no int,
FOREIGN KEY (Kitap_adi)

);
