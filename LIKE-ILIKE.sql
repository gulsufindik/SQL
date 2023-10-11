--DVD Rental Sample Database--
-- İsmi 'M' harfi ile başlayan müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'M%';

-- İsmi 'y' harfi ile biten müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE '%y';

-- İsmi 'y' harfi ile bitmeyen müşterileri seç
SELECT * FROM customer
WHERE first_name NOT LIKE '%y';

-- İsmi 'A' harfi ile başlayıp 'y' harfi ile biten müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'A%y';

-- İsmi 'A' harfi ile başlayan ve soyadı 'A' harfi ile başlayan müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';

-- İsmi 'J' ile başlayıp 'an' ile biten müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'J%an';

-- İsmi 'J' ile başlayıp 'an' haricinde bir harf olan müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'J_an';

-- İsmi 'J' ile başlayan iki harflik müşterileri seç
SELECT * FROM customer
WHERE first_name LIKE 'J_';

-- İsmi 'b' harfi ile başlayan müşterileri seç (büyük/küçük harf duyarsız)
SELECT * FROM actor
WHERE first_name ILIKE 'b%';
