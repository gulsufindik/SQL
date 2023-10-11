--DVD Rental Sample Database--
-- "film" tablosundan değiştirme maliyeti 12.99 ile 16.99 arasında olan filmleri seç
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- "actor" tablosundan ilk adı Penelope, Nick veya Ed olan aktörlerin adını ve soyadını seç
SELECT first_name, last_name FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- "film" tablosundan kiralama ücreti 0.99, 2.99 veya 4.99 ve değiştirme maliyeti 12.99, 15.99 veya 28.99 olan filmleri seç
SELECT * FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);
