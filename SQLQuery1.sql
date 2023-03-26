/*CREATE TABLE student (
student_number int NOT NULL PRIMARY KEY,
name_of_group  varchar(255),
surname varchar(255), 
birthday int,
place_of_birth varchar(255),
addres varchar(255),
sex varchar(255),
merital_status varchar(255),
scholarship varchar(255),
room_in_hostel varchar(255),
hobby varchar(255),
);*/



/*CREATE TABLE student_group (
name_of_group varchar(255) NOT NULL PRIMARY KEY,
monitor varchar(255),
);*/


/*CREATE TABLE rooms (
room_number  varchar(255) NOT NULL PRIMARY KEY,
student_number int,
amount_of_student_in_room int,
amoud_now int,
);*/

/*CREATE TABLE mark (
sudent_number int,
number_stubent int,
ball float,
);*/
/*
CREATE TABLE "subject"(
subject_number  varchar(255) NOT NULL PRIMARY KEY,
credits int,
lecture varchar(255),
);
*/

/*CREATE TABLE books(
number_of_book varchar(255) NOT NULL PRIMARY KEY,
student_number varchar(255),
author varchar(255),
name_of_book varchar(255),
genre varchar(255),
time_of_take varchar(255),
time_return varchar(255),
price_of_debt int,
if_free  bit,
);*/

/*ALTER TABLE student
ADD "name" varchar(255);*/




/*CREATE DATABASE student_1;*/

/*DROP TABLE rooms;*/

/*CREATE TABLE student (
student_number varchar(255) NOT NULL PRIMARY KEY,
room_number  varchar(255) FOREIGN KEY REFERENCES rooms(room_number),
name_of_group  varchar(255) FOREIGN KEY REFERENCES student_group(name_of_group),
"name" varchar(255),
surname varchar(255) NOT NULL, 
middle_name varchar(255),
birthday varchar(255),
place_of_birth varchar(255),
addres varchar(255),
sex varchar(255),
merital_status varchar(255),
scholarship varchar(255),
hobby varchar(255),
);*/

/*CREATE TABLE rooms (
room_number  varchar(255) NOT NULL PRIMARY KEY,
amount_of_student_in_room int CHECK (amount_of_student_in_room<=3) DEFAULT '3',
amoud_now int CHECK (amoud_now<=3) DEFAULT '0',
);*/

/*CREATE TABLE student_group (
name_of_group varchar(255) NOT NULL PRIMARY KEY,
monitor varchar(255),
);*/

/*CREATE TABLE books(
number_of_book varchar(255) NOT NULL PRIMARY KEY,
student_number varchar(255) FOREIGN KEY REFERENCES student(student_number),
author varchar(255),
name_of_book varchar(255),
genre varchar(255),
time_of_take varchar(255),
time_return varchar(255),
price_of_debt int CHECK (price_of_debt>=0),
if_free  bit,
);*/

/*CREATE TABLE mark (
student_number varchar(255) FOREIGN KEY REFERENCES student(student_number),
subject_number varchar(255) FOREIGN KEY REFERENCES "subject"(subject_number),
ball float CHECK (ball<=100 and ball>=0),
);*/

/*CREATE TABLE "subject"(
subject_number  varchar(255) NOT NULL PRIMARY KEY,
credits int,
lecture varchar(255),
);*/

/*ALTER TABLE rooms
ADD CHECK (amount_of_student_in_room>=0);
ALTER TABLE rooms
ADD CHECK (amoud_now>=0);*/


/*INSERT INTO rooms (room_number, amoud_now)
VALUES
('1A', '2'), ('1B', '3'), ('1C', '1'), ('2A', '3'), ('2B', ''), ('2C', ''), ('3A', ''), ('3B', ''), ('3C', '');*/

/*INSERT INTO student_group (name_of_group, monitor)
VALUES
('AM_11', '9906'), ('AM_21','5786');*/


/*INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
('KN5785','9346', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023','40','1'), 
('KM6745',NULL,'Colson R','The Maths Book','scientific','10.03.2022','15.01.2023','50','0'),
('KM1545',NULL,'Nassim N','Black swan','scientific','12.02.2022','15.03.2023','38', '0'), 
('KM2345',NULL, 'Freeman E','Head First. Design patterns','scientific',NULL,NULL,'55', '0');*/

/*INSERT INTO "subject"(subject_number, credits, lecture)
VALUES
('math_analysis', '6', 'Gladun V R'), ('discrete_math', '4', 'Hnativ B V'), ('probability theory', '5', 'Kostrobiy P P'), ('english', '3', 'Rudyk M M'), 
('philosophy', '3', 'Onyshchuk O V');*/


/*INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,
merital_status, scholarship, hobby )
VALUES 
('5786', '1A', 'AM_21', 'Yura', 'Bondarenko', 'Ivanovich', '03.07.2004', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling'),
('9564', '1A', 'AM_21', 'Andriy', 'Benko', 'Vitaliyovych', '10.12.2004', 'Kyiv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'chess'),
('9346', '1B', 'AM_21', 'Olga', 'Kermoshchuk', 'Anatolyvna', '15.09.2003', 'Lviv', 'Arkhipenko 2', 'woman', 'married', 'dont have' , 'cycling'),
('0346', '1B', 'AM_21', 'Ivan', 'Ishchenko', 'Andreyovych', '11.07.2004', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'fishing'),
('6346', '1B', 'AM_21', 'Dmytro', 'Shoemaker', 'Mykhailovych', '24.09.2003', 'Odesa', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'dont have'),
('9906', '1C', 'AM_11', 'Oleg', 'Davydov', 'Ivanovich', '03.02.2005', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'play on guitar'),
('9646', '2A', 'AM_11', 'Andriy', 'Levchenko', 'Ostapovich', '16.10.2005', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('1346', '2A', 'AM_11', 'Sofia', 'Kovalishyn', 'Dmitrivna', '03.07.2004', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'dont have'),
('1348', '2A', 'AM_11', 'Catherine', 'Yaremko', 'Andriivna', '03.07.2005', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'swimming');*/


/*INSERT INTO mark (student_number, subject_number, ball)
VALUES 
('5786', 'discrete_math', '40'),('5786', 'philosophy', '38'), ('9564', 'probability theory', '67'), ('9564', 'english', '47'), ('9346', 'discrete_math', '90'), 
('9346', 'english', '80'), ('0346', 'discrete_math', '78'), ('0346', 'philosophy', '71'), ('6346', 'discrete_math', '35'), ('6346', 'english', '51'), 
('9906', 'math_analysis', '49'), ('9906', 'english', '97'), ('9646', 'math_analysis', '78'), ('9646', 'english', '84'), ('1346', 'math_analysis', '82'), 
('1346', 'philosophy', '67'), ('1348', 'math_analysis', '63'), ('1348', 'english', '80');*/


/*CREATE SCHEMA lab_SEQUENCES;  
GO  
CREATE SEQUENCE lab_SEQUENCES.book_number 
    START WITH 1  
    INCREMENT BY 1 ;  
GO  */

/*
select * from rooms;
select * from student;
select * from books;
select * from "subject";
select * from student_group;
select * from mark;
*/

/*DELETE FROM student;*/
/*DELETE FROM books;*/
/*DELETE FROM student_group;*/
/*DELETE FROM "subject";*/
/*DELETE FROM mark;*/
/*DELETE FROM rooms;*/


/*CREATE DATABASE student_2;*/

/*SELECT * FROM books
WHERE genre='scientific' AND (name_of_book='The Universe Speaks in Numbers' OR name_of_book='The Maths Book' OR name_of_book='Black swan' OR
name_of_book='Head First. Design patterns');*/


/*select * from student cross join books;*/

/*SELECT * FROM books
WHERE genre='scientific' and if_free='1';*/

/*SELECT * FROM student
WHERE scholarship='have' and (sex='man'or sex='woman');*/

SELECT surname
FROM student
WHERE student_number = ANY
  (SELECT student_number
  FROM mark
  WHERE ball <= 50);

  SELECT * FROM student
WHERE place_of_birth IN ('Kyiv', 'Odesa');

SELECT * FROM mark
WHERE ball  BETWEEN 50 AND 100;
 









