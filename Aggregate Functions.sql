--DVD Rental Sample Database--
-- "film" tablosundan tüm sütunları seç
SELECT * FROM film;

-- "film" tablosundaki toplam kayıt sayısını seç
SELECT COUNT(*) FROM film;

-- "film" tablosundaki "replacement_cost" sütunundaki en büyük değeri seç
SELECT MAX(replacement_cost) FROM film;

-- "film" tablosundaki "replacement_cost" sütunundaki en küçük değeri seç
SELECT MIN(replacement_cost) FROM film;

-- "film" tablosundaki "length" sütunundaki ortalama süreyi seç
SELECT AVG(length) FROM film;

-- "film" tablosundaki "length" sütunundaki ortalama süreyi 3 ondalık basamağa yuvarla ve seç
SELECT ROUND(AVG(length), 3) FROM film;

-- "film" tablosundaki "rental_rate" sütunundaki değerlerin toplamını seç
SELECT SUM(rental_rate) FROM film;

-- "film" tablosundaki "length" sütunundaki en büyük değeri, en küçük değeri ve "replacement_cost" sütunundaki değerlerin toplamını seç
SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;

-- "film" tablosundaki "rental_rate" sütununda 0.99 ve 2.99 olan kiralama oranına sahip filmler arasında en uzun filmi seç
SELECT MAX(length) FROM film
WHERE rental_rate IN (0.99, 2.99);

-- "film" tablosundaki "rental_rate" sütununda 0.99 olan kiralama oranına sahip filmler arasında en uzun filmi seç
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;
