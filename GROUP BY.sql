--DVD Rental Sample Database--
SELECT * FROM film;

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

SELECT MAX(length) FROM film
GROUP BY rental_rate;

SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

SELECT rental_rate, COUNT(length) FROM film
GROUP BY rental_rate;

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

SELECT MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

SELECT COUNT(DISTINCT replacement_cost) FROM film;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost, rental_rate DESC;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length);

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length)
LIMIT 8;