--DVD Rental Sample Database--
SELECT * FROM actor;

SELECT first_name AS isim, last_name AS soyisim FROM actor;

SELECT first_name isim, last_name soyisim FROM actor;

SELECT first_name "isim test", last_name "soyisim test" FROM actor;

SELECT COUNT(*) FROM actor;

SELECT COUNT(*) AS "aktor sayisi" FROM actor;

SELECT CONCAT(first_name,' ', last_name) AS "İsim ve Soyisim" FROM actor;