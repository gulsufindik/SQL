--DVD Rental Sample Database--
-- Tüm sütunları "actor" tablosundan seç
SELECT * FROM actor;

-- "first_name" sütununu "isim" olarak, "last_name" sütununu "soyisim" olarak seç
SELECT first_name AS isim, last_name AS soyisim FROM actor;

-- "first_name" sütununu "isim" olarak, "last_name" sütununu "soyisim" olarak seç
SELECT first_name isim, last_name soyisim FROM actor;

-- "first_name" sütununu "isim test" olarak, "last_name" sütununu "soyisim test" olarak seç
SELECT first_name "isim test", last_name "soyisim test" FROM actor;

-- "actor" tablosundaki kayıt sayısını seç
SELECT COUNT(*) FROM actor;

-- "actor" tablosundaki kayıt sayısını "aktor sayisi" olarak seç
SELECT COUNT(*) AS "aktor sayisi" FROM actor;

-- "first_name" ve "last_name" sütunlarını birleştirerek "İsim ve Soyisim" olarak seç
SELECT CONCAT(first_name,' ', last_name) AS "İsim ve Soyisim" FROM actor;
