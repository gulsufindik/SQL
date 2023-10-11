--CREATE TABLE <table_name> (
--	<column_name> <data_type> <constaint>,
--	<column_name> <data_type> <constaint> );	

-- "author" tablosunu oluştur ve sütunları tanımla
CREATE TABLE author (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    birthday DATE
);

-- "author" tablosuna veri ekle
INSERT INTO author (first_name, last_name, email, birthday)
VALUES
    ('James', 'Gosling', 'james@gosling.com', '1955-05-19'),
    ('Victor', 'Hugo', 'victor@hugo.com', '1802-02-26');

-- "author" tablosuna benzer bir yapıda "author2" tablosu oluştur
CREATE TABLE author2 (LIKE author);

-- "author" tablosundan sadece 'James' olan satırları "author2" tablosuna ekle
INSERT INTO author2
SELECT * FROM author
WHERE first_name = 'James';

-- "author" tablosundan bir kopya oluştur ve adını "author3" yap
CREATE TABLE author3 AS
SELECT * FROM author;

-- Eğer varsa "author4" tablosunu sil
DROP TABLE IF EXISTS author4;

-- Eğer varsa "author3" tablosunu sil
-- Aşağıdaki iki satır aynı işlemi yapar, ikincisi gereksiz bir karakter içerir
DROP TABLE IF EXISTS author3; -- DROP TABLE author3;

-- "author2" tablosunu sil
DROP TABLE author2;
