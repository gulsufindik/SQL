--DVD Rental Sample Database--
-- "film" tablosundaki kiralama ücretlerinin ortalama değerini 3 ondalık basamağa yuvarla
SELECT ROUND(AVG(rental_rate), 3) FROM film;

-- "film" tablosundan başlığı 'C' ile başlayan filmlerin sayısını seç
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

-- "film" tablosundan kiralama ücreti 0.99 olan filmlerin en uzun film uzunluğunu ve bu ücrete sahip film sayısını seç
SELECT MAX(length), COUNT(rental_rate) FROM film
WHERE rental_rate = 0.99;

-- "film" tablosundan uzunluğu 150'den fazla olan filmlerin benzersiz değiştirme maliyeti sayısını seç
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;
