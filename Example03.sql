--DVD Rental Sample Database--
-- "country" tablosundan ismi 'A' ile başlayıp 'a' ile biten ülkeleri seç
SELECT country FROM country
WHERE country LIKE 'A%a';

-- "country" tablosundan adı beş harfli olan ve 'n' harfi ile biten ülkeleri seç
SELECT country FROM country
WHERE country LIKE '_____n';

-- "film" tablosundan adında en az dört 't' harfi bulunan filmleri seç (büyük/küçük harf duyarsız)
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t';

-- "film" tablosundan adı 'C' ile başlayan, uzunluğu 90'dan az, ve kiralama ücreti 2.99 olan filmleri seç
SELECT * FROM film
WHERE title LIKE 'C%' AND length < 90 AND rental_rate = 2.99;
