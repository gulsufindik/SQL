--DVD Rental Sample Database--
SELECT rating FROM film
GROUP BY rating;

SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

SELECT COUNT(store_id) FROM customer;

SELECT MAX(country_id), COUNT(city) FROM city
GROUP BY country_id 
ORDER BY COUNT(city) DESC
LIMIT 1;