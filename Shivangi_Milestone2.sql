CREATE DATABASE shivangi_db;
USE shivangi_db;


CREATE TABLE shirts(
    
    shirt_id INT(11) NOT NULL  PRIMARY KEY AUTO_INCREMENT ,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT(11)
);

DESC shirts;

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES('t-shirt', 'white', 'S', 10),('t-shirt', 'green', 'S', 200),('polo shirt', 'black', 'M', 10),('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),('polo shirt', 'red', 'M', 5),('tank top', 'white', 'S', 200),('tank top', 'blue', 'M', 15),
('purple', 'polo shirt', 'medium', 50);

SELECT * FROM shirts;

# Table 1 
SELECT article, color FROM shirts;

# Table 2 
SELECT shirt_id, article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

# Table 3 
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';


UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

SELECT shirt_id, article, color, shirt_size, last_worn FROM shirts WHERE article = 'polo shirt';


UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

SELECT shirt_id, article, color, shirt_size, last_worn FROM shirts WHERE last_worn = 0;


UPDATE shirts SET color = 'off white', shirt_size = 'XS' WHERE color = 'white';


SELECT shirt_id, article, color, shirt_size, last_worn FROM shirts WHERE color = 'off white';


SELECT * FROM shirts;


DELETE FROM shirts WHERE last_worn >= 200;

SELECT * FROM shirts;


DELETE FROM shirts WHERE article = 'tank top';

SELECT * FROM shirts;



DELETE FROM shirts;




/*
PL/SQL ANSWERS
 1. A
 2. C
 3. C
*/

