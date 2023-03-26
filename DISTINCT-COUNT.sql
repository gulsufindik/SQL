--DVD Rental Sample Database--
SELECT DISTINCT rental_rate FROM film;

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'A%';

SELECT COUNT(DISTINCT first_name) FROM actor;
