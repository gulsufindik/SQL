--DVD Rental Sample Database--
-- "film" tablosundan benzersiz (distinct) değiştirme maliyetlerini seç
SELECT DISTINCT replacement_cost FROM film;

-- "film" tablosundaki benzersiz değiştirme maliyeti sayısını seç
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- "film" tablosundan başlığı 'T' ile başlayan ve derecesi 'G' olan filmlerin sayısını seç
SELECT COUNT(title) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- "country" tablosundan beş harfli ülkelerin sayısını seç
SELECT COUNT(country) FROM country
WHERE LENGTH(country) = 5;

-- "city" tablosundan adı 'r' ile başlayan şehirlerin sayısını seç (büyük/küçük harf duyarsız)
SELECT COUNT(city) FROM city
WHERE city ILIKE 'r%';
