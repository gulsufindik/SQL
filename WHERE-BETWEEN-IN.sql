--DVD Rental Sample Database--
-- Film uzunluğu 90 ile 120 dakika arasındaki filmleri seç
SELECT title, length FROM film
WHERE length >= 90 AND length <= 120;

-- Film uzunluğu 90 ile 120 dakika arasındaki filmleri seç (BETWEEN kullanarak)
SELECT title, length FROM film
WHERE length BETWEEN 90 AND 120;

-- Film uzunluğu 90 ile 120 dakika arasında olmayan filmleri seç
SELECT title, length FROM film
WHERE length NOT BETWEEN 90 AND 120;

-- Film uzunluğu 90 dakikadan kısa veya 120 dakikadan uzun olan filmleri seç
SELECT title, length FROM film
WHERE length < 90 OR length > 120;

-- Kira ücreti 2 ile 4 arasında ve değiştirme maliyeti 10 ile 20 arasında olan filmleri seç
SELECT rental_rate, replacement_cost FROM film
WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);

-- Film uzunluğu 40, 50 veya 60 dakika olan filmleri seç
SELECT * FROM film
WHERE length IN (40, 50, 60);

-- Değiştirme maliyeti 10.99, 12.99 veya 16.99 olan filmleri seç
SELECT * FROM film
WHERE replacement_cost IN (10.99, 12.99, 16.99);

-- Değiştirme maliyeti 10.99, 12.99 veya 16.99 olmayan filmleri seç
SELECT * FROM film
WHERE replacement_cost NOT IN (10.99, 12.99, 16.99);
