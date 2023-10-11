--UPDATE <table_name>
--SET column1 = value1,
-- column2 = value2
--WHERE condition;

-- "author" tablosundaki kimliği 10 olan yazarın bilgilerini güncelle
UPDATE author
SET first_name = 'Emrah Safa',
	last_name = 'Gürkan',
	email = 'emrah@gurhan.com',
	birthday = '1980.01.01'
WHERE id = 10;

-- Adı 'V' ile başlayan yazarların adını 'XXX' ve soyadını 'YYY' olarak güncelle
UPDATE author
SET first_name = 'XXX',
	last_name = 'YYY'
WHERE first_name LIKE 'V%';

-- Adı 'Alice' olan yazarların soyadını 'UPDATE' olarak güncelle ve değişiklikleri döndür
UPDATE author
SET last_name = 'UPDATE'
WHERE first_name = 'Alice'
RETURNING *;

-- Yorum satırı: Tablo verilerini silmek için "DELETE" kullanılır. İlgili tabloyu ve koşulu belirtmeniz gerekmektedir.
-- Örnek kullanım: DELETE FROM <table_name> WHERE condition;

-- "author" tablosundan kimliği 6 olan yazarı sil
DELETE FROM author
WHERE id = 6;

-- "author" tablosundan kimliği 11'den büyük olan yazarları sil ve silinen verileri döndür
DELETE FROM author
WHERE id > 11
RETURNING *;
