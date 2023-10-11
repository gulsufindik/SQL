--DVD Rental Sample Database--
-- "film" tablosundan ilk 20 filmi seç
SELECT * FROM film
LIMIT 20;

-- Kira ücreti 4.99 olan filmler arasından en kısa filmleri seç, ilk 10'u
SELECT * FROM film
WHERE rental_rate = 4.99
ORDER BY length
LIMIT 10;

-- Değiştirme maliyeti 14.99 ve kira ücreti 0.99 olan filmler arasından en uzun filmleri seç, ilk 7'si
SELECT * FROM film
WHERE replacement_cost = 14.99 AND rental_rate = 0.99
ORDER BY length DESC
LIMIT 7;

-- "country" tablosundan altıncı sıradan başlayarak dört ülkeyi seç
SELECT * FROM country
OFFSET 6
LIMIT 4;

-- Adı 'Penelope' olan aktörlerden soyadı sıralamasına göre üçüncü olanı seç
SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2 
LIMIT 1;
