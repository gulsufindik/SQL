--DVD Rental Sample Database--
-- "film" tablosundan tüm sütunları seç
SELECT * FROM film;

-- "film" tablosundan kiralama ücreti 0.99 olan filmler arasından en uzun filmi seç
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- "film" tablosunu kiralama ücretine göre gruplayarak, her kiralama ücreti için en uzun filmi seç
SELECT MAX(length) FROM film
GROUP BY rental_rate;

-- "film" tablosunu kiralama ücretine göre gruplayarak, her kiralama ücreti için en uzun filmi ve kiralama ücretini seç
SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

-- "film" tablosunu kiralama ücretine göre gruplayarak, her kiralama ücreti için film uzunluğunun sayısını seç
SELECT rental_rate, COUNT(length) FROM film
GROUP BY rental_rate;

-- "film" tablosunu dereceye göre gruplayarak, her derece için film sayısını seç
SELECT rating, COUNT(*) FROM film
GROUP BY rating;

-- "film" tablosunu değiştirme maliyeti ve kiralama ücretine göre gruplayarak, her kombinasyon için en kısa filmi seç
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

-- "film" tablosunu değiştirme maliyeti ve kiralama ücretine göre gruplayarak, her kombinasyon için en kısa filmi seç ve sadece değiştirme maliyetini kullan
SELECT MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

-- "film" tablosunda benzersiz (distinct) değiştirme maliyetlerinin sayısını seç
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- "film" tablosunu değiştirme maliyeti ve kiralama ücretine göre gruplayarak, değiştirme maliyetine göre sırala, ardından kiralama ücretine göre azalan sırada sırala
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost, rental_rate DESC;

-- "film" tablosunu değiştirme maliyeti ve kiralama ücretine göre gruplayarak, her kombinasyon için en kısa filmi seç ve film uzunluğuna göre sırala
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length);

-- "film" tablosunu değiştirme maliyeti ve kiralama ücretine göre gruplayarak, her kombinasyon için en kısa filmi seç, film uzunluğuna göre sırala ve ilk 8 sonucu seç
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length)
LIMIT 8;
