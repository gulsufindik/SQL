--DVD Rental Sample Database--
-- "film" tablosundan benzersiz (distinct) kiralama ücretlerini seç
SELECT DISTINCT rental_rate FROM film;

-- "actor" tablosundan ilk ismi "A" ile başlayan aktörlerin sayısını seç
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'A%';

-- "actor" tablosundan benzersiz (distinct) ilk isimlere sahip aktörlerin sayısını seç
SELECT COUNT(DISTINCT first_name) FROM actor;
