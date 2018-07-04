CREATE TABLE person (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
age INTEGER,
height DECIMAL,
city TEXT,
favoritecolor TEXT
);

INSERT INTO person
(name, age, height, city, favoritecolor)
VALUES
('Bobby', 15, 180.12, 'Zimboro', 'purple'),
('Larend', 48, 188.3, 'Laurote', 'burgundy'),
('Efflen', 102, 140.77, 'Carnstead', 'magenta'),
('Pooglop', 3, 50.9, 'Torens', 'eggwhite'),
('Meaffle', 29, 190.4, 'Croxton', 'black');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favoritecolor != 'red';

SELECT * FROM person
WHERE favoritecolor != 'red' AND favoritecolor IS NOT 'blue';

SELECT * FROM person
WHERE favoritecolor = 'orange' OR favoritecolor = 'green';

SELECT * FROM person
WHERE favoritecolor IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favoritecolor IN ('yellow', 'purple');

CREATE TABLE orders (
personid INTEGER,
productname TEXT,
productprice DECIMAL,
quantity INTEGER
);

INSERT INTO orders
(personid, productname, productprice, quantity)
VALUES
(2, 'GloopGlop', 109.45, 2),
(2, 'Leadle Ladle', 30.99, 4),
(4, 'Trinket Widget', 12.98, 9),
(1, 'Zoober Plingos', 51.12, 1),
(5, 'Deep Pobs', 999.1, 112);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(productprice * quantity) FROM orders;

SELECT SUM(productPrice * quantity) FROM orders WHERE personid = 2;

INSERT INTO artist
(artistid, name)
VALUES
(997, 'ODESZA'),
(998, 'Imad Royal'),
(999, 'Louis the Child');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5 OFFSET 190;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT firstname, lastname FROM employee
WHERE city = 'Calgary';

SELECT firstname, lastname, birthdate FROM employee
ORDER BY birthdate DESC
LIMIT 1;

SELECT firstname, lastname, MIN(birthdate) FROM employee;

SELECT * FROM employee
WHERE reportsto IS 2;

SELECT count(*) FROM employee
WHERE city IS 'Lethbridge';

SELECT count(*) FROM invoice
WHERE billingcountry IS "USA";

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(*) FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billingstate IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;