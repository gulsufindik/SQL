--DVD Rental Sample Database--
-- "film" tablosundan "title" ve "description" sütunlarını seç
SELECT title, description FROM film;

-- "film" tablosundan uzunluğu 60 ile 75 arasında olan filmleri seç
SELECT * FROM film 
WHERE length > 60 AND length < 75;

-- "film" tablosundan kiralama ücreti 0.99 ve değiştirme maliyeti 12.99 veya 28.99 olan filmleri seç
SELECT * FROM film 
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- "customer" tablosundan ilk adı "Mary" olan müşterilerin soyadlarını seç
SELECT last_name FROM customer
WHERE first_name = 'Mary';

-- "film" tablosundan uzunluğu 50'den büyük olmayan, kiralama ücreti 2.99 veya 4.99 olmayan filmleri seç
SELECT * FROM film
WHERE NOT (length > 50 AND (rental_rate = 2.99 OR rental_rate = 4.99));
