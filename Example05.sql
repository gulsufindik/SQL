--DVD Rental Sample Database--
-- "film" tablosundan adı 'n' harfi ile biten filmleri seç, uzunluğuna göre büyükten küçüğe sırala ve ilk 5 sonucu seç
SELECT title FROM film
WHERE title LIKE '%n' 
ORDER BY length DESC
LIMIT 5;

-- "film" tablosundan adı 'n' harfi ile biten filmleri seç, uzunluğuna göre küçükten büyük sırala, ilk 5 sonucu atla ve sonraki 5 sonucu seç
SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- "customer" tablosundan mağaza ID'si 1 olan müşterilerin soyadlarını seç, soyadına göre büyükten küçüğe sırala ve ilk 4 sonucu seç
SELECT last_name FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
