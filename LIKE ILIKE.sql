--DVD Rental Sample Database--
SELECT * FROM customer
WHERE first_name LIKE 'M%';

SELECT * FROM customer
WHERE first_name LIKE '%y';

SELECT * FROM customer
WHERE first_name NOT LIKE '%y';

SELECT * FROM customer
WHERE first_name LIKE 'A%y';

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';

SELECT * FROM customer
WHERE first_name LIKE 'J%an';

SELECT * FROM customer
WHERE first_name LIKE 'J_an';

SELECT * FROM customer
WHERE first_name LIKE 'J_';

SELECT * FROM actor
WHERE first_name ILIKE 'b%';
