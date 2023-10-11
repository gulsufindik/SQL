--DVD Rental Sample Database--
-- "film" tablosundaki farklı dereceleri gruplayarak seç
SELECT rating FROM film
GROUP BY rating;

-- "film" tablosundaki değiştirme maliyetlerini gruplayarak, 50'den fazla filme sahip olan maliyetleri seç
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

-- "customer" tablosundaki mağaza kimlik numarasına sahip müşteri sayısını seç
SELECT COUNT(store_id) FROM customer;

-- "city" tablosundaki ülke kimlik numarasına göre gruplandırılmış şehir sayısını sayarak, en fazla şehri olan ülkeyi seç
SELECT MAX(country_id), COUNT(city) FROM city
GROUP BY country_id 
ORDER BY COUNT(city) DESC
LIMIT 1;
