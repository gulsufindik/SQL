--UPDATE <table_name>
--SET column1 = value1,
--	column2 = value2
--WHERE condition;
—
UPDATE author
SET first_name = 'Emrah Safa',
	last_name = 'Gürkan',
	email = 'emrah@gurhan.com',
	birthday = '1980.01.01'
WHERE id = 10;
—
UPDATE author
SET first_name = 'XXX',
	last_name = 'YYY'
WHERE first_name LIKE 'V%';
—
UPDATE author
SET last_name = 'UPDATE'
WHERE first_name = 'Alice'
RETURNING *;
—
--DELETE <table_name>
--WHERE condition;
—
DELETE FROM author
WHERE id = 6; 
—
DELETE FROM author
WHERE id > 11
RETURNING *;