--CREATE TABLE <table_name> (
--	<column_name> <data_type> <constaint>,
--	<column_name> <data_type> <constaint>; )	

CREATE TABLE author (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE );
—
INSERT INTO author (first_name, last_name, email, birthday)
VALUES
	('James', 'Gosling', 'james@gosling.com', '1955-05-19'),
	('Victor', 'Hugo', 'victor@hugo.com', '1802-02-26');
—
CREATE TABLE author2 (LIKE author);
—
INSERT INTO author2
SELECT * FROM author
WHERE first_name = 'James';
—
CREATE TABLE author3 AS
SELECT * FROM author;
—
DROP TABLE IF EXISTS author4;
—
DROP TABLE IF EXISTS author3; || DROP TABLE author3;
—
DROP TABLE author2;DROP TABLE author2;