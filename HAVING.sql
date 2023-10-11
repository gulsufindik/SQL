--DVD Rental Sample Database--
-- "film" tablosunu kiralama ücretine göre gruplayarak, kiralama ücreti 2.99 olmayan filmlerin sayısını seç
SELECT rental_rate, COUNT(*) FROM film
WHERE rental_rate != 2.99 
GROUP BY rental_rate;

-- "film" tablosunu kiralama ücretine göre gruplayarak, her kiralama ücreti için toplam film sayısını seç, film sayısı 325'ten fazla olanları al
SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325;

-- "payment" tablosunu çalışan kimlik numarasına göre gruplayarak, her çalışan için yapılan ödeme sayısını seç, 7300'den fazla ödeme yapanları al
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
HAVING COUNT(*) > 7300;

-- "payment" tablosunu müşteri kimlik numarasına göre gruplayarak, her müşteri için yapılan toplam ödeme miktarını seç, ödeme toplamı 100'den fazla olanları sırala ve en yükseğini seç
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id 
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC
LIMIT 1;
