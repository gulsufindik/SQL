--MyCar Araba Kiralama Database--

--Databasedeki tabloları oluşturmak için SQL kodları--
CREATE TABLE tblMarkalar (
id serial PRIMARY KEY,
ad varchar(20) );

CREATE TABLE tblModelTur (
id serial PRIMARY KEY,
tur varchar(20) );

CREATE TABLE tblModel (
id serial PRIMARY KEY,
ad varchar(20),
vitesliMi boolean,
renk varchar(20),
marka_id integer REFERENCES tblMarkalar(id),
fiyat integer,
beygir_gucu integer,
tur_id integer REFERENCES tblModelTur(id) );

CREATE TABLE tblMusteri (
id serial PRIMARY KEY,
ad varchar(20),
yas integer,
telefon integer );

CREATE TABLE tblSepet (
id serial PRIMARY KEY,
musteri_id integer REFERENCES tblMusteri(id),
model_id integer REFERENCES tblModel(id),
süre integer,
adet integer );

CREATE TABLE tblOdemeTuru (
id serial PRIMARY KEY,
tur varchar(20) );

CREATE TABLE tblOdeme (
id serial PRIMARY KEY,
tur_id integer REFERENCES tblOdemeTuru(id),
toplam_fiyat integer,
sepet_id integer REFERENCES tblSepet(id),
tarih timestamp );

--Tablolara girilen verilerin SQL kodları--
INSERT INTO tblMarkalar (ad)
VALUES ('bmw'),('mercedes'),('volvo');

INSERT INTO tblModelTur (tur)
VALUES ('spor'),('ekonomik'),('klasik')

INSERT INTO tblModel
VALUES (1,'c1','TRUE','SIYAH','1','12300','200','1'),   --bmw marka siyah spor araba vitesli
       (2,'c2','FALSE','BEYAZ','1','52000','205','2'),  --bmw marka beyaz ekonomik araba
       (3,'a1','FALSE','BEYAZ','2','78000','300','3'),  --mercedes marka klasik araba 
       (4,'b2','FALSE','MOR','3','100000','550','2')    --volvo marka ekonomik araba 

INSERT INTO tblmusteri (ad,yas,telefon)
VALUES  ('Gülsu','27','12345678'),   --Gülsu 27 yaşında tel no: 12345678 
        ('Lola','30','12345678'),    --Lola 30 yaşında tel no: 12345678
        ('Luanna','24','12345678')      --Lua 24 yaşında tel no: 12345678

INSERT INTO tblSepet 
VALUES (1,1,1,2,1), --Gülsu BMW arabayı kiraladı 2 günlük 1 adet 
       (2,3,4,7,2)  --Lua Volvo arabayı kiraladı 7 günlük 2 adet

INSERT INTO tblOdemeTuru
VALUES (1,'nakit'),
       (2,'kredi karti'),
       (3,'senet')

INSERT INTO tblOdeme
VALUES (1,1,5000,1,'2023-05-20'), 
       (2,2,6000,2,'2023-05-29') 
--nakit ödeme, 5000tl, 1 id'li sepete bağlı, tarih: 20.05.2023 
--kredikartı ile ödeme, 6000tl, 2 id'li sepete bağlı, 29.05.2023

-- 5 soruya cevap verecek SQL kodları --
--En pahalı arabanın rengini veren çıktıyı yazdır
SELECT renk FROM tblModel
ORDER BY fiyat DESC
LIMIT 1 

--Kiralanan en pahalı araba'nın rengi ve fiyatını yazdır
SELECT m.renk, m.fiyat FROM tblmodel AS m
INNER JOIN tblsepet AS s
ON m.id = s.model_id
ORDER BY fiyat DESC
LIMIT 1

--Kiralanmamış arabaların listesini getiren sorguyu yaz
SELECT * FROM tblModel AS m
LEFT JOIN tblsepet AS s
ON m.id = s.model_id 
WHERE s.id is NULL

--En yüksek ödemeyi yapan müşterinin yaşı'nı bulunuz
SELECT yas FROM tblOdeme AS o
INNER JOIN tblSepet AS s
ON o.sepet_id = s.id
INNER JOIN tblMusteri AS m
ON s.musteri_id = m.id
ORDER BY toplam_fiyat DESC
LIMIT 1

--Vitessiz arabayı kiralayan müşterinin adı'nı getiren sorgu yazınız
SELECT mu.ad FROM  tblModel AS m
INNER JOIN tblSepet AS s
ON m.id= s.model_id
INNER JOIN tblMusteri AS mu
ON s.musteri_id = mu.id
WHERE viteslimi = true
