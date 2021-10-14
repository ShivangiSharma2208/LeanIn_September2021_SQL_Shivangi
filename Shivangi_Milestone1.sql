#HW_STUDENTS
CREATE DATABASE hw_student;
USE hw_student;

#STUDENTS_DATA
CREATE TABLE students_data
(
    roll_no INTEGER NOT NULL AUTO_INCREMENT ,
    first_name VARCHAR(30) NOT NULL DEFAULT 'UNKNOWN' ,
    last_name VARCHAR(30) NULL ,
    class_rank INTEGER NOT NULL ,
    PRIMARY KEY(roll_no)
    
);

DESC students_data;

INSERT INTO students_data (first_name,last_name,class_rank) VALUES ('Kavita','Gupta',17),('Vidya','Balan',3),('Nidhi','Sharma',27),('Riya','Kumar',12);
INSERT INTO students_data (first_name,class_rank) VALUES ('Drishti',7),('Samiksha',1),('Poornima',6),('Kavya',25);
INSERT INTO students_data (class_rank) VALUES (2),(15);
INSERT INTO students_data (first_name,last_name,class_rank) VALUES ('Harshita','Mehra',4),('Avni','Chaturvedi',5),('Nidhi','KUmari',8),
('Pawan','Kumar',10);

SELECT * FROM students_data;
SELECT roll_no,first_name,class_rank FROM students_data;
SELECT  roll_no AS Roll_number, first_name AS First_name , last_name AS Last_name , class_rank AS Rank from students_data;



#TEACHERS
CREATE TABLE teachers
(
    id_no INTEGER AUTO_INCREMENT ,
    Name VARCHAR(60) NOT NULL DEFAULT 'UNKNOWN USER' ,
    Address VARCHAR(100) NULL,
    age INTEGER NOT NULL,
    PRIMARY KEY(id_no)
);


 INSERT INTO teachers (Name, Address, age) VALUES ('Priety Goel','Shimla Road, Himachal Pradesh',35), ('SunilKumar Verma', 'LodhiRoad, New Delhi',28),
('Priyanka','Tonk,Rajasthan',31);
INSERT INTO teachers (Name) VALUES ('Anshika kapoor');
INSERT INTO teachers (Address,age) VALUES ('Dwarka, Delhi',25),('Tonk,Rajasthan',38);
INSERT INTO teachers (Name,age) VALUES ('Sakshi',28),('Sangam Jha',31);

SELECT id_no,Name,IFNULL(Address,'N/A'),age FROM teachers;

DROP TABLE teachers;
DROP TABLE students_data;
DROP DATABASE hw_student;


#PASTRY SHOP
CREATE DATABASE pastry_shop;
USE pastry_shop;

#MENU
CREATE TABLE menu
(
   s_no INTEGER NOT NULL AUTO_INCREMENT ,
   pastry_name VARCHAR(30) NOT NULL DEFAULT 'UNAVAILABLE',
   price INTEGER NOT NULL DEFAULT '9999',
   PRIMARY KEY(s_no)
);

INSERT INTO menu (pastry_name,price) VALUES ('Vanilla pastry',70),('Butter cookie pastry',78),('Chocolate pastry',88),('Cream & nutpastry',99),('Light vegan pastry',99),('Red velvet pastry',89);
INSERT INTO menu (s_no,pastry_name,price) VALUES (100,'Fruit & nut pastry',88),(150,'Mixed fruit pastry ',85),(9,'Honey cream pastry',76);
INSERT INTO menu (pastry_name,price) VALUES ('Dark forest pastry',89),('mango pastry',75);
INSERT INTO menu (price) VALUES  (88),(90),(76);
INSERT INTO menu (pastry_name) VALUES ('Strawberry pastry'),('Ice cream and pastry combo');

SELECT * FROM menu;





