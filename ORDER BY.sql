--DVD Rental Sample Database--
-- "film" tablosunu başlığa göre sırala (artan sırada)
SELECT * FROM film
ORDER BY title;

-- "film" tablosunu başlığa göre sırala (azalan sırada)
SELECT * FROM film
ORDER BY title DESC;

-- "film" tablosunu uzunluğa göre sırala (artan sırada)
SELECT * FROM film
ORDER BY length;

-- "film" tablosunu uzunluğa göre sırala (azalan sırada)
SELECT * FROM film
ORDER BY length DESC;

-- Başlığı 'A' harfi ile başlayan filmleri kira ücretine göre artan, uzunluğa göre azalan sırada sırala
SELECT title, rental_rate, length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC, length DESC;

-- Derecesi 'G' olan filmleri uzunluğa göre azalan sırada sırala
SELECT * FROM film
WHERE rating = 'G'
ORDER BY length DESC;
