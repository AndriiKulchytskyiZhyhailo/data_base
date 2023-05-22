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
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/

 /*DROP TABLE books*/

/*CREATE TABLE student_group (
name_of_group varchar(255) NOT NULL PRIMARY KEY,
monitor varchar(255),
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/


/*CREATE TABLE rooms (
room_number  varchar(255) NOT NULL PRIMARY KEY,
student_number int,
amount_of_student_in_room int,
amoud_now int,
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/

/*CREATE TABLE mark (
sudent_number int,
number_stubent int,
ball float,
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/
/*
CREATE TABLE "subject"(
subject_number  varchar(255) NOT NULL PRIMARY KEY,
credits int,
lecture varchar(255),
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/


/*CREATE TABLE books(
number_of_book int NOT NULL PRIMARY KEY,
student_number varchar(255),
author varchar(255),
name_of_book varchar(255),
genre varchar(255),
time_of_take varchar(255),
time_return varchar(255),
price_of_debt int,
if_free  bit,
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/

/*ALTER TABLE student
ADD "name" varchar(255);*/























/*CREATE DATABASE student_1;*/

/*DROP TABLE student*/


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
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
);*/

/*CREATE TABLE rooms (
room_number  varchar(255) NOT NULL PRIMARY KEY,
amount_of_student_in_room int CHECK (amount_of_student_in_room<=3) DEFAULT '3',
amoud_now int CHECK (amoud_now<=3) DEFAULT '0',

UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date,
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
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date
);*/

/*CREATE TABLE mark (
student_number varchar(255) FOREIGN KEY REFERENCES student(student_number),
subject_number varchar(255) FOREIGN KEY REFERENCES "subject"(subject_number),
ball float CHECK (ball<=100 and ball>=0),
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date
);*/



/*CREATE TABLE "subject"(
subject_number  varchar(255) NOT NULL PRIMARY KEY,
credits int,
lecture varchar(255),
UCR varchar(255),
DCR date,
ULC varchar(255), 
DLC date
);*/

/*ALTER TABLE rooms
ADD CHECK (amount_of_student_in_room>=0);
ALTER TABLE rooms
ADD CHECK (amoud_now>=0);*/


/*INSERT INTO rooms (room_number, amoud_now)
VALUES
('1A', '2'), ('1B', '3'), ('1C', '3'), ('2A', '3'), ('2B', '3'), ('2C', '3'), ('3A', '3'), ('3B', '3'), ('3C', '3'), ('4A', ''), ('4B', ''), ('4C', '');*/

/*INSERT INTO student_group (name_of_group, monitor)
VALUES
('AM_11', '0005'), ('AM_21','0001');*/


/*INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
('5785','0001', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023','50','1'), 
('6745','0014','Colson R','The Maths Book','scientific','10.03.2022','15.01.2023','50','1'),
('1545','0004','Nassim N','Black swan','Sci-fi','12.02.2022','15.03.2023','38', '1'), 
('2345','0002', 'Freeman E','Head First. Design patterns','scientific','12.02.2022','15.03.2023','65', '1');*/


/*INSERT INTO "subject"(subject_number, credits, lecture)
VALUES
('math_analysis', '6', 'Gladun V R'), ('discrete_math', '4', 'Hnativ B V'), ('probability theory', '5', 'Kostrobiy P P'), ('english', '3', 'Rudyk M M'), 
('philosophy', '3', 'Onyshchuk O V');*/


/*INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,
merital_status, scholarship, hobby )
VALUES 
('0001', '1A', 'AM_21', 'Yura', 'Bondarenko', 'Ivanovich', '2004.07.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling'),
('0002', '1A', 'AM_21', 'Andriy', 'Benko', 'Vitaliyovych', '2004.12.10', 'Kyiv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'chess'),
('0003', '1A', 'AM_21', 'Olga', 'Kermoshchuk', 'Anatolyvna', '2003.09.15', 'Lviv', 'Arkhipenko 2', 'woman', 'married', 'dont have' , 'cycling'),
('0004', NULL, 'AM_21', 'Ivan', 'Ishchenko', 'Andreyovych', '2004.07.11', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'fishing'),
('0005', '1B', 'AM_21', 'Dmytro', 'Shoemaker', 'Mykhailovych', '2003.09.24', 'Odesa', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'dont have'),
('0006', '1B', 'AM_11', 'Oleg', 'Davydov', 'Ivanovich', '2005.02.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'play on guitar'),
('0007', '1C', 'AM_11', 'Andriy', 'Levchenko', 'Ostapovich', '2005.10.19', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0008', '1C', 'AM_11', 'Sofia', 'Kovalishyn', 'Dmitrivna', '2004.07.03', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'dont have'),
('0009', '1C', 'AM_11', 'Catherine', 'Yaremko', 'Andriivna', '2005.07.03', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'swimming'),
('0010', '2A', 'AM_21', 'Lucas', 'Smith', 'Mark', '2004.09.13', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'Painting'),
('0011', '2A', 'AM_21', 'Jackson', 'Johnson', 'Steven', '2004.07.23', 'Kyiv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Photography'),
('0012', '2A', 'AM_21', 'Logan', 'Williams', 'Kevin', '2003.08.20', 'Odesa', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'Dancing'),
('0013', '2B', 'AM_21', 'Owen', 'Brown', 'Brian', '2004.04.01', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'dont have' , 'Writing'),
('0014', '2B', 'AM_21', 'Luke', 'Martinez', 'Patrick', '2004.06.09', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'Meditation'),
('0015', NULL, 'AM_21', 'Henry', 'Perez', 'Andrew', '2004.03.19', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'Swimming'),
('0016', '2C', 'AM_21', 'Gabriel', 'Taylor', 'Jason', '2004.12.23', 'Kyiv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'Yoga'),
('0017', '2C', 'AM_21', 'Yura', 'King', 'Jason', '2004.02.12', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Fishing'),
('0018', '2C', 'AM_21', 'Olivia', 'Cooper', 'Adam', '2003.07.18', 'Lviv', 'Arkhipenko 2', 'woman', 'unmarried', 'have' , 'cycling'),
('0019', '3A', 'AM_21', 'Sophia', 'Gray', 'Stephen', '2004.07.07', 'Odesa', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Knitting'),
('0020', null, 'AM_11', 'Jason', 'King', 'Ostapovich', '2005.12.25', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0021', '3A', 'AM_11', 'Andriy', 'Young', 'Henry', '2005.09.12', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Drawing'),
('0022', NULL, 'AM_11', 'Andriy', 'Levchenko', 'Ostapovich', '2005.08.15', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0023', '3B', 'AM_11', 'Gregory', 'Allen', 'Ostapovich', '2005.12.16', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Sculpting'),
('0024', '3B', 'AM_11', 'Justin', 'Russell', 'Joel', '2004.01.18', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0025', '3B', 'AM_11', 'Frank', 'Nelson', 'Walter', '2005.05.18', 'Odesa', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0026', NULL, 'AM_11', 'Stephen', 'Campbell', 'Andriy', '2005.08.17', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Dancing'),
('0027', '3B', 'AM_11', 'Walter', 'Russell', 'Ostapovich', '2005.01.12', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling'),
('0028', null, 'AM_11', 'Andriy', 'Evans', 'Justin', '2005.04.22', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Improv'),
('0029', '3C', 'AM_11', 'Joel', 'Harris', 'Ostapovich', '2005.06.01', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'Chess'),
('0030', NULL, 'AM_11', 'Victor', 'Young', 'Victor', '2005.10.04', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'dont have' , 'cycling');*/


/*INSERT INTO mark (student_number, subject_number, ball)
VALUES 
('0001', 'discrete_math', '40'),('0001', 'philosophy', '38'), ('0002', 'probability theory', '67'), ('0002', 'english', '47'), ('0003', 'discrete_math', '90'), 
('0003', 'english', '80'), ('0004', 'discrete_math', '78'), ('0004', 'philosophy', '71'), ('0005', 'discrete_math', '35'), ('0005', 'english', '51'), 
('0006', 'math_analysis', '49'), ('0006', 'english', '97'), ('0007', 'math_analysis', '78'), ('0007', 'english', '84'), ('0008', 'math_analysis', '82'), 
('0008', 'philosophy', '67'), ('0009', 'math_analysis', '63'), ('0009', 'english', '80'),
('0010', 'discrete_math', '85'),('0010', 'philosophy', '90'),
('0011', 'discrete_math', '65'),('0011', 'philosophy', '75'),('0012', 'discrete_math', '56'),('0012', 'philosophy', '65'),
('0013', 'discrete_math', '85'),('0013', 'philosophy', '88'),('0014', 'discrete_math', '88'),('0014', 'philosophy', '90'),
('0015', 'discrete_math', '81'),('0015', 'philosophy', '73'),('0016', 'discrete_math', '93'),('0016', 'philosophy', '74'),
('0017', 'discrete_math', '69'), ('0017', 'philosophy', '65'),('0018', 'discrete_math', '85'),('0018', 'philosophy', '88'),
('0019', 'discrete_math', '45'), ('0019', 'philosophy', '40'), ('0020', 'math_analysis', '63'), ('0020', 'english', '60'),
('0021', 'math_analysis', '89'), ('0021', 'english', '87'), ('0022', 'math_analysis', '54'),('0022', 'english', '65'), ('0023', 'math_analysis', '88'), ('0023', 'english', '96'),
('0024', 'math_analysis', '100'), ('0024', 'english', '96'), ('0025', 'math_analysis', '88'), ('0025', 'english', '97'),
('0026', 'discrete_math', '85'), ('0026', 'english', '85'), ('0027', 'math_analysis', '80'), ('0027', 'english', '71'), ('0028', 'math_analysis', '76'),
('0028', 'english', '90'), ('0029', 'math_analysis', '86'),('0029', 'english', '80'),('0030', 'math_analysis', '60'),('0030', 'english', '80');*/



/*CREATE SCHEMA lab_SEQUENCES;  
GO  
CREATE SEQUENCE lab_SEQUENCES.book_number 
    START WITH 1  
    INCREMENT BY 1 ;  
GO  */


/*select * from rooms;
select * from student;
select * from books;
select * from "subject";
select * from student_group;
select * from mark;*/
/*select * from mark;
select * from student;*/




/*DELETE FROM student;*/
/*DELETE FROM books;*/
/*DELETE FROM student_group;*/
/*DELETE FROM "subject";*/
/*DELETE FROM mark;*/
/*DELETE FROM rooms;*/
/*DELETE FROM scholarship*/

/*CREATE DATABASE student_2;*/

/*SELECT * FROM books
WHERE genre='scientific' AND (name_of_book='The Universe Speaks in Numbers' OR name_of_book='The Maths Book' OR name_of_book='Black swan' OR
name_of_book='Head First. Design patterns');*/

/*SELECT * FROM books
WHERE genre='scientific' and if_free='0';*/

/*SELECT * FROM student
WHERE scholarship='have' and (sex='man'or sex='woman');*/

/*select DATEDIFF(year, '2022/08/25', birthday)
from student;*/
/*UPDATE student
SET birthday = REPLACE(birthday, '.', '/')*/

/*SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'man' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC; */
/*
SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'woman' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC;*/

/*SELECT *
FROM student
FULL OUTER JOIN books
ON student.student_number = books.student_number;*/

/*SELECT * FROM student
WHERE surname LIKE 'B%';*/

/*SELECT * FROM student
WHERE surname LIKE 'K%';*/

/*SELECT * FROM student
WHERE name_of_group LIKE '%11';*/


/*SELECT * FROM student
WHERE name_of_group LIKE '%21';*/

/*SELECT * FROM mark
WHERE ball  BETWEEN 50 AND 100;*/

  /*SELECT * FROM student
WHERE place_of_birth IN ('Kyiv', 'Odesa');*/

/*select * from student
where Exists(select * from rooms where rooms.room_number = student.room_number)*/

/*SELECT *
FROM mark
WHERE ball = ALL (SELECT student_number FROM student
where ball<50 );
*/

/*SELECT surname
FROM student
WHERE student_number = ANY
  (SELECT student_number
  FROM mark
  WHERE ball <= 50);*/

/*select student.place_of_birth, count(*) as student_nymber from (select * from student where room_number = '2A') as student
group by student.place_of_birth*/

/*select student.place_of_birth, count(*) as student_nymber from 
student where room_number = '1A'
group by student.place_of_birth;*/

/*WITH student_rooms AS (
   SELECT student_number, name_of_group, surname, 1 as number 
   FROM student
   WHERE room_number is null

   UNION ALL
   
   SELECT student.student_number, student.name_of_group, student.surname, 2 as number
   FROM student
   WHERE room_number is not null
)
select * from student_rooms;*/

/*
SELECT name_of_book, author, book.scientific
FROM (
  SELECT name_of_book, author, genre, price_of_debt
  FROM books
) AS book
PIVOT (
  SUM(price_of_debt)
  FOR genre IN ([scientific])
) AS book
*/


/*SELECT 'total_price_of_debt' as Total_price_of_dept, [scientific], [Sci-fi]
FROM (SELECT genre, price_of_debt
 FROM books) AS SourceTable
PIVOT (
  SUM(price_of_debt) 
  FOR genre IN ([scientific], [Sci-fi])
) AS privot_book

select * from books;*/

/*UPDATE student
SET "name" = 'Andrii', surname= 'Davidov', middle_name='Olegovich', birthday='2004.09.02', place_of_birth='Lviv', addres='Arkhipenko 2', sex='man',
merital_status='unmarried', scholarship='have', hobby='fishing'
WHERE student_number=0001

select * from student;*/

/*UPDATE mark
SET ball = '88'
FROM mark
INNER JOIN student 
ON mark.student_number = student.student_number 
inner join "subject" 
ON mark.subject_number="subject".subject_number
WHERE "subject".subject_number='philosophy'and student.student_number='0001';*/

/*INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,merital_status, scholarship, hobby )
VALUES('0303', '4A', 'AM_21', 'Yura', 'Shevchenco', 'Ivanovich', '2004.08.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling');*/

/*INSERT INTO "subject"(subject_number, credits, lecture)
select sub.subject_number+'_un', 4, student.surname
from student join mark on student.student_number = mark.student_number join "subject" as sub
on sub.subject_number = mark.subject_number
WHERE student.student_number ='0007';

select * from "subject";*/

/*DELETE FROM student WHERE student_number= 0202;*/

/*DELETE FROM student;*/
/*DELETE FROM books;*/
/*DELETE FROM student_group;*/
/*DELETE FROM "subject";*/
/*DELETE FROM mark;*/
/*DELETE FROM rooms;*/

/*Create Procedure */










/*SELECT surname
FROM student
WHERE student_number = ANY
  (SELECT student_number
  FROM mark
  WHERE ball <= 50);

  SELECT * FROM student
WHERE place_of_birth IN ('Kyiv', 'Odesa');*/

/*SELECT * FROM mark
WHERE ball  BETWEEN 50 AND 100;*/

/*select * from student
where Exists(select * from rooms where rooms.room_number = student.room_number)*/

/*SELECT * FROM student
WHERE surname LIKE 'B%';*/

/*SELECT * FROM student
WHERE surname LIKE 'K%';*/

/*SELECT * FROM student
WHERE name_of_group LIKE '%11';*/


/*SELECT * FROM student
WHERE name_of_group LIKE '%21';*/

/*select place_of_birth, count(*) from student
group by place_of_birth;*/


/*select student.place_of_birth, count(*) as student_nymber from (select * from student where room_number = '2A') as student
group by student.place_of_birth*/

/*select student.place_of_birth, count(*) as student_nymber from 
student where room_number = '1A'
group by student.place_of_birth;*/



/*select DATEDIFF(year, '2022/08/25', birthday)
from student;*/

/*UPDATE student
SET birthday = REPLACE(birthday, '.', '/')*/




/*UPDATE student
SET "name" = 'Andrii', surname= 'Davidov', middle_name='Olegovich', birthday='2004.09.02', place_of_birth='Lviv', addres='Arkhipenko 2', sex='man',
merital_status='unmarried', scholarship='have', hobby='fishing'
WHERE student_number=0001

select * from student;*/

/*SELECT *
FROM student
right OUTER JOIN mark
ON student.student_number = mark.subject_number;*/

/*INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,merital_status, scholarship, hobby )
VALUES('0303', '4A', 'AM_21', 'Yura', 'Shevchenco', 'Ivanovich', '2004.08.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling');*/

/*DELETE FROM student WHERE student_number= 0202;*/

/*SELECT *
FROM student
FULL OUTER JOIN books
ON student.student_number = books.student_number;*/

/*SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'man' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC; */
/*
SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'woman' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC;*/


/*UPDATE mark
SET ball = '88'
FROM mark
INNER JOIN student 
ON mark.student_number = student.student_number 
inner join "subject" 
ON mark.subject_number="subject".subject_number
WHERE "subject".subject_number='philosophy'and student.student_number='0001';*/

/*INSERT INTO mark (student_number)
SELECT student_number
FROM student
WHERE student.surname=''*/
/*WHERE Country = 'USA';*/

/*SELECT *
FROM mark
WHERE ball = ALL (SELECT student_number FROM student
where ball<50 );
*/

/*WITH student_rooms AS (
   SELECT student_number, name_of_group, surname, 1 as number 
   FROM student
   WHERE room_number is null

   UNION ALL
   
   SELECT student.student_number, student.name_of_group, student.surname, 2 as number
   FROM student
   WHERE room_number is not null
)
select * from student_rooms;*/

/*INSERT INTO lecters(number_of_lecter, surname_of_lecter)
SELECT student_number, surname
FROM student
WHERE student_number='0002';
select * from lecters;*/



/*CREATE TABLE lecters(

number_of_lecter varchar(255) NOT NULL PRIMARY KEY,
surname_of_lecter varchar(255),
);*/



/*SELECT *
FROM (
  SELECT name_of_book, author, genre, price_of_debt
  FROM books
) AS books
PIVOT (
  SUM(price_of_debt)
  FOR genre IN ([scientific])
) AS books

select * from books;*/

/*INSERT INTO "subject"(subject_number, credits, lecture)
select sub.subject_number+'_un', 4, student.surname
from student join mark on student.student_number = mark.student_number join "subject" as sub
on sub.subject_number = mark.subject_number
WHERE student.student_number ='0001';


select * from "subject";*/

/*CREATE PROCEDURE calculateScholarship
@studentId varchar(255)
AS

BEGIN
DECLARE @total_grades INT
    DECLARE @total_points FLOAT
    DECLARE @average_grade FLOAT
	DECLARE @scholarship FLOAT
SELECT @total_grades = COUNT(*), @total_points = SUM(ball)
    FROM mark
    WHERE student_number = @studentId --AND MONTH(created_at) = MONTH(@month) AND YEAR(created_at) = YEAR(@month)

    -- Обчислення середнього балу за вказаний місяць
    IF @total_grades > 0
        SET @average_grade = CAST(@total_points AS FLOAT) / @total_grades
    ELSE
        SET @average_grade = 0

SELECT @average_grade = ball
    FROM mark
    WHERE student_number = @studentId;

	IF @average_grade >= 95
        SET @scholarship = 1000;
    ELSE IF @average_grade >= 90
        SET @scholarship = 750;
    ELSE IF @average_grade >= 85
        SET @scholarship = 500;
    ELSE IF @average_grade >= 80
        SET @scholarship = 250;
    ELSE
        SET @scholarship = 0;
 
UPDATE student
    SET scholarship = @scholarship
    WHERE student_number = @studentId
END
*/
/*exec calculateScholarship 0003*/;

/*DROP PROCEDURE calculateScholarship*/

/*select * from student*/


/*
CREATE PROCEDURE Scholarship
    @studentId INT
   
AS
BEGIN
    DECLARE @category VARCHAR(50);
    DECLARE @averageGrade FLOAT;
    DECLARE @amount FLOAT;

    -- Визначення категорії студента
    SELECT @averageGrade = ball
    FROM mark
    WHERE student_number = @studentId;

    -- Розрахунок суми стипендії
    IF @averageGrade >= 95
        SET @amount = 1000;
    ELSE IF @averageGrade >= 90
        SET @amount = 750;
    ELSE IF @averageGrade >= 85
        SET @amount = 500;
    ELSE IF @averageGrade >= 80
        SET @amount = 250;
    ELSE
        SET @amount = 0;
		 > >
    -- Додавання запису про нарахування стипендії
  UPDATE student
    SET scholarship = @amount
    WHERE student_number = @studentId
END
*/

/*exec Scholarship 0003;*/

/*DROP PROCEDURE Scholarship;*/












/*alter PROCEDURE ScholarshipForStudent2
    @studentId varchar(255)
AS
BEGIN

DECLARE @ball float;
DECLARE @scholarship_amount varchar(255);


set @ball = ( 
select sum(sub.credits * mark.ball)/ sum(sub.credits)
from student join mark on student.student_number = mark.student_number join "subject" as sub on sub.subject_number = mark.subject_number 
where student.student_number = @studentId
)

IF @ball >= 89
        SET @scholarship_amount =  '3000';
ELSE IF @ball >=79
        SET @scholarship_amount =  '1000';
ELSE
        SET @scholarship_amount = '0';


INSERT INTO scholarship (amount, date_of_accrual, student_number)
VALUES (@scholarship_amount, CAST( GETDATE() AS Date ), @studentId);

END*/


/*exec ScholarshipForStudent2 '0007'*/


/*
CREATE PROCEDURE Scholarship2
AS
BEGIN
	declare @student_id varchar(255)
	declare cur CURSOR LOCAL for
		select student.student_number from student

	open  cur

	fetch next from cur into @student_id

	while @@FETCH_STATUS = 0 BEGIN

		exec ScholarshipForStudent2 @student_id

		fetch next from cur into @student_id
	END

	close cur
	deallocate cur
END
*/


/*select * from student join mark on student.student_number = mark.student_number join "subject" as sub on sub.subject_number = mark.subject_number join scholarship on student.student_number = scholarship.student_number ;
*/
/*exec Scholarship2;*/

/*select * from student join mark on student.student_number = mark.student_number join "subject" as sub on sub.subject_number = mark.subject_number join scholarship on student.student_number = scholarship.student_number ;
;*/





/*
Create table Scholarship (
	Personid int IDENTITY(1,1) PRIMARY KEY,
	amount int,
	date_of_accrual date,
	student_number varchar(255),
	UCR varchar(255),
    DCR date,
    ULC varchar(255), 
    DLC date,
	CONSTRAINT FK_Studentnumber FOREIGN KEY (student_number)
    REFERENCES Student(student_number)
);*/


/*select * from Scholarship;*/

/*DELETE FROM Scholarshi  p;*/















/*create  TRIGGER trigger_name
ON books
AFTER INSERT
AS
BEGIN
	UPDATE books
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END;*/

/*INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
('5789','0001', 'Graham F','The Universe Speaks','scientific','03.03.2022','03.02.2023','50','1');*/
/*select *  from books*/

/*CREATE TRIGGER books_upbate
ON books
AFTER UPDATE
AS
BEGIN
	UPDATE books
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END;*/

/*update books
set genre = '59'
where number_of_book = '2345'*/
/*select * from books;*/

/*CREATE TRIGGER student_insert
ON student
AFTER INSERT
AS
BEGIN
	UPDATE books
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE student_number IN (SELECT student_number FROM inserted)
END;*/

/*alter TRIGGER student_insert
ON student
AFTER INSERT
AS
BEGIN
	UPDATE student
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE student_number IN (SELECT student_number FROM inserted)
END;*/

/*INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,
merital_status, scholarship, hobby )
VALUES 
('0036', '1A', 'AM_21', 'Yura', 'Bondarenko', 'Ivanovich', '2004.07.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling');

select * from student;*/

/*DROP TRIGGER student_insert;*/

/*CREATE TRIGGER student_update
ON student
AFTER UPDATE
AS
BEGIN
	UPDATE student
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE student_number IN (SELECT student_number FROM inserted)
END;*/

/*select * from student;*/

/*update student
set addres = 'Rynok Square 5'
where student_number = '0001'
select * from student;*/

/*CREATE TRIGGER rooms_update
ON rooms
AFTER UPDATE
AS
BEGIN
	UPDATE rooms
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE room_number IN (SELECT room_number FROM inserted)
END;*/

/*update rooms
set amoud_now = '2'
where room_number = '1C'*/

/*create TRIGGER rooms_insert
ON rooms
AFTER INSERT
AS
BEGIN
	UPDATE rooms
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE room_number IN (SELECT room_number FROM inserted)
END;*/

/*INSERT INTO rooms (room_number, amoud_now)
VALUES
('aaa', '2')
select * from rooms*/

/*CREATE TRIGGER subject_insert
ON "subject"
AFTER INSERT
AS
BEGIN
	UPDATE "subject"
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE subject_number IN (SELECT subject_number FROM inserted)
END;*/

/*INSERT INTO "subject"(subject_number, credits, lecture)
VALUES
('math_analysis-1', '6', 'Gladun V R')

select * from "subject";*/

/*CREATE TRIGGER subject_update
ON "subject"
AFTER UPDATE
AS
BEGIN
	UPDATE "subject"
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE subject_number IN (SELECT subject_number FROM inserted)
END;*/

/*update "subject"
set credits = '2'
where subject_number = 'english'
select * from "subject"*/

/*CREATE TRIGGER student_group_insert
ON student_group
AFTER INSERT
AS
BEGIN
	UPDATE student_group
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE name_of_group IN (SELECT name_of_group FROM inserted)
END;*/

/*INSERT INTO student_group (name_of_group, monitor)
VALUES
('AM_14', '0006');
select* from student_group;*/

/*CREATE TRIGGER student_group_update
ON student_group
AFTER UPDATE
AS
BEGIN
	UPDATE student_group
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE name_of_group IN (SELECT name_of_group FROM inserted)
END;*/

/*update student_group
set monitor = '0010'
where name_of_group = 'AM_21'
select * from student_group*/

/*CREATE TRIGGER scholarship_insert
ON Scholarship
AFTER INSERT
AS
BEGIN
	UPDATE Scholarship
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE Personid IN (SELECT Personid FROM inserted)
END;*/

/*CREATE TRIGGER scholarship_update
ON Scholarship
AFTER UPDATE
AS
BEGIN
	UPDATE Scholarship
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
    WHERE Personid IN (SELECT Personid FROM inserted)
END;*/

/*select * from books;*/

/*update books
set time_return = Null
where number_of_book = 'KM2345'*/

/*
create SEQUENCE lab_SEQUENCES.book_pk_con
    START WITH 0
    INCREMENT BY 1 ;
	*/
	/*
create TRIGGER book_pk_control
ON books
after INSERT
AS
BEGIN
    UPDATE books
	set  number_of_book = NEXT VALUE FOR lab_SEQUENCES.book_pk_con
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END

*/




/*

INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
(55,'0001', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023','50','1'), 
(6745,'0014','Colson R','The Maths Book','scientific','10.03.2022','15.01.2023','50','1'),
(1545,'0004','Nassim N','Black swan','Sci-fi','12.02.2022','15.03.2023','38', '1'), 
(2345,'0002', 'Freeman E','Head First. Design patterns','scientific','12.02.2022','15.03.2023','65', '1');
*/

/*select * from books;*/

/*
alter TRIGGER InsteadCheackRooms
on rooms
INSTEAD OF INSERT
AS
BEGIN
  
  INSERT INTO rooms
	   (room_number, amount_of_student_in_room, amoud_now)
       SELECT room_number, amount_of_student_in_room, amoud_now
       FROM inserted
	   where inserted.amoud_now<=inserted.amount_of_student_in_room
END;
*/


/*
alter TRIGGER InsteadCheackRooms
on rooms
INSTEAD OF INSERT
AS
BEGIN
  
  INSERT INTO rooms
	   (room_number, amount_of_student_in_room, amoud_now)
       SELECT room_number, amount_of_student_in_room, amoud_now
       FROM inserted
	   where inserted.amoud_now<=inserted.amount_of_student_in_room
END;*/



 /*INSERT INTO rooms (room_number, amoud_now)
VALUES
('b', 5), ('a', 3);

select * from rooms;*/

/*
alter TRIGGER UpdateCheackRooms1
on rooms
INSTEAD OF UPDATE
AS
BEGIN
  if update (amoud_now) 
  UPDATE rooms 
       SET
	   rooms.amount_of_student_in_room = inserted.amount_of_student_in_room,
	   rooms.amoud_now = inserted.amoud_now
       FROM inserted
	   where inserted.amoud_now<=inserted.amount_of_student_in_room and rooms.room_number in (select room_number from inserted)
END;
*/


/*update rooms
set amoud_now = 1
where room_number = '2C'*/


/*select * from rooms*/





/*
alter TRIGGER InsteadCheackBooks
on books
INSTEAD OF INSERT
AS
BEGIN
  
  INSERT INTO books
	   (number_of_book, price_of_debt, student_number, author, name_of_book, genre, time_of_take, time_return, if_free)
       SELECT number_of_book, price_of_debt, student_number, author, name_of_book, genre, time_of_take, time_return, if_free
       FROM inserted
	   where (select sum(books.price_of_debt) from books where books.student_number =  inserted.student_number) + inserted.price_of_debt < 100
END;*/


/*
INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
('5798','0001', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023',100,'1'),
('5796','0001', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023',1,'1')


select * from books;
*/
/*
alter TRIGGER UpdateCheackBooks1
on books
INSTEAD OF UPDATE
AS
BEGIN
   if update (price_of_debt) or update (student_number)
  UPDATE books
       SET
	   books.author = inserted.author,
	   books.genre = inserted.genre,
	   books.name_of_book = inserted.name_of_book,
	   books.price_of_debt = inserted.price_of_debt,
	   books.if_free = inserted.if_free,
	   books.student_number = inserted.student_number
       FROM inserted
	   where (select sum(books.price_of_debt) from books where books.student_number =  inserted.student_number) + inserted.price_of_debt < 100 and 
	   books.number_of_book in (select number_of_book from inserted)
END;
  */
  


  /*
INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
('5785','0001', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023','35','1'), 
('6745','0014','Colson R','The Maths Book','scientific','10.03.2022','15.01.2023','69','1'),
('1545','0004','Nassim N','Black swan','Sci-fi','12.02.2022','15.03.2023','38', '1'), 
('2345','0002', 'Freeman E','Head First. Design patterns','scientific','12.02.2022','15.03.2023','75', '1');
 */


 /* ***************************************************************** BOOKS *******************************************************************************/
 /*


 /* ************************************************** first cteate *******************************************************************/
create TRIGGER books_update
ON books
AFTER UPDATE
AS
BEGIN
	UPDATE books
    SET DLC = GETDATE(),
	ULC = USER_NAME()
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END;
*/

/*
create  TRIGGER book_insert
ON books
AFTER INSERT
AS
BEGIN
	UPDATE books
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END;
*/

/*INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
(5789,'0001', 'Graham F','The Universe Speaks','scientific','03.03.2022','03.02.2023',50,'1');
select *  from books*/

/*update books
set price_of_debt = 31
where number_of_book = 379
select *  from books*/
 /* ************************************************** second cteate *******************************************************************/

/*
create TRIGGER book_pk_control
ON books
after INSERT
AS
BEGIN
    UPDATE books
	set  number_of_book = NEXT VALUE FOR lab_SEQUENCES.book_pk_con
    WHERE number_of_book IN (SELECT number_of_book FROM inserted)
END;

*/
/* ************************************************** third create *******************************************************************/
/*
alter TRIGGER books_cheack_price_of_debt_insert
on books
INSTEAD OF INSERT
AS
BEGIN
  
  INSERT INTO books
	   (number_of_book, price_of_debt, student_number, author, name_of_book, genre, time_of_take, time_return, if_free)
       SELECT number_of_book, price_of_debt, student_number, author, name_of_book, genre, time_of_take, time_return, if_free
       FROM inserted
	   where (select COALESCE(sum(books.price_of_debt), 0)  from books where books.student_number =  inserted.student_number) + inserted.price_of_debt < 100
END;

*/

/*
alter TRIGGER books_cheack_price_of_debt_update
on books
INSTEAD OF UPDATE
AS
BEGIN
   if update (price_of_debt) or update (student_number)
  UPDATE books
       SET
	   books.author = inserted.author,
	   books.genre = inserted.genre,
	   books.name_of_book = inserted.name_of_book,
	   books.price_of_debt = inserted.price_of_debt,
	   books.if_free = inserted.if_free,
	   books.student_number = inserted.student_number
       FROM inserted
	   where (select sum(books.price_of_debt) from books where books.student_number =  inserted.student_number) + inserted.price_of_debt < 100 and 
	   books.number_of_book in (select number_of_book from inserted)
END;
*/


/*delete from books;

INSERT INTO books (number_of_book,student_number, author, name_of_book, genre, time_of_take, time_return, price_of_debt, if_free)
VALUES
(57,'0003', 'Graham F','The Universe Speaks in Numbers','scientific','03.03.2022','03.02.2023',49,'1'), 
(6765,'0014','Colson R','The Maths Book','scientific','10.03.2022','15.01.2023',25,'1'),
(1544,'0004','Nassim N','Black swan','Sci-fi','12.02.2022','15.03.2023',38, '1'), 
(2348,'0002', 'Freeman E','Head First. Design patterns','scientific','12.02.2022','15.03.2023',65, '1');


select * from books;*/



/*update books

set student_number = '0002'

where number_of_book = 389;

select * from books;*/



/* ***************************************************************** MARKS *******************************************************************************/


--select * from mark;
/*
alter TRIGGER mark_insert
ON mark
AFTER INSERT
AS
BEGIN
	UPDATE mark
    SET DCR = GETDATE(),
	 UCR = USER_NAME()
	from inserted
    WHERE inserted.student_number = mark.student_number and inserted.subject_number = mark.subject_number
END;
*/

/*INSERT INTO mark (student_number, subject_number, ball)
VALUES 
('0001', 'discrete_math', '40');
select * from mark;*/
/*

CREATE TRIGGER mark_update
ON mark
AFTER UPDATE
AS
BEGIN
	UPDATE mark
    SET DLC = GETDATE(),
	 ULC = USER_NAME()
	from inserted
    WHERE inserted.student_number = mark.student_number and inserted.subject_number = mark.subject_number
END;*/
/*update mark
set ball = '86'
where student_number = '0003' and subject_number='english';
select * from mark;*/




/* ***************************************************************** Scholarship *******************************************************************************/
/*exec Scholarship2;

select * from Scholarship;*/







 /*CREATE LOGIN LoginTry   
    WITH PASSWORD = '1111';*/




	
	/*create Role [student_user_1] authorization [user1]
	go
	alter authorization on schema::[db_owner] to [student_user_1]
	go
	grant select on [dbo].[mark] to [student_user_1]
	go
	alter authorization on schema::[db_owner] to [student_user_1]
	go
	grant select on [dbo].[student] to [student_user_1]
	alter authorization on schema::[db_owner] to [student_user_1]
	go
	grant select on [dbo].[subject] to [student_user_1]*/


	/*create Role [lecture_user_1] authorization [user1]
	go
	alter authorization on schema::[db_owner] to [lecture_user_1]
	go
	grant select on [dbo].[mark] to [lecture_user_1]
	go
	grant update on [dbo].[mark] to [lecture_user_1]
	go
	alter authorization on schema::[db_owner] to [lecture_user_1]
	go
	grant select on [dbo].[subject] to [lecture_user_1]
	go
	grant update on [dbo].[subject] to [lecture_user_1]
	go*/


	/*create Role [administrator] authorization [user1]
	go
	alter authorization on schema::[db_owner] to [administrator]
	go
	grant select on [dbo].[books] to [administrator]
	go
	grant update on [dbo].[books] to [administrator]
	go
	grant insert on [dbo].[books] to [administrator]
	go*/
	/*alter authorization on schema::[db_owner] to [administrator]
	go
	grant select on [dbo].[rooms] to [administrator]
	go
	grant update on [dbo].[rooms] to [administrator]
	go
	grant insert on [dbo].[rooms] to [administrator]
	go*/


	/*Create login Bondarenko with password = 'Bondarenko1';*/

	/*Create user Monitor_1 for login Bondarenko;*/

	/*use student_2
	go
	grant select on mark to Monitor_1
	grant select on student to Monitor_1
	grant select on Scholarship to Monitor_1
	grant select on student_group to Monitor_1
	grant select on "subject" to Monitor_1*/

	/*Create login Kostrobiy with password = 'Kostrobiy2'*/

	/*Create user Rector_1 for login Kostrobiy;*/

	/*use student_2
	go
	grant select on mark to Rector_1
	grant update on mark to Rector_1
	grant insert on mark to Rector_1
	grant select on student to Rector_1
	grant update on student to Rector_1
	grant insert on student to Rector_1
	grant select on Scholarship to Rector_1
	grant update on Scholarship to Rector_1
	grant insert on Scholarship to Rector_1
	grant select on student_group to Rector_1
	grant update on student_group  to Rector_1
	grant insert on student_group  to Rector_1
	grant select on "subject" to Rector_1
	grant update on "subject"  to Rector_1
	grant insert on "subject"  to Rector_1*/

	/*Create login Benko with password = 'Benko3'*/

	/*Create user librarian_1 for login Benko;*/

	/*use student_2
	go
	grant select on books to librarian_1
	grant update on books to librarian_1
	grant insert on books to librarian_1*/

	/*Create login Benjemin with password = 'Benjemin4'*/
	/*Create user Hotel_administrator_1 for login Benjemin*/

	/*use student_2
	go
	grant select on rooms to Hotel_administrator_1
	grant update on rooms to Hotel_administrator_1
	grant insert on rooms to Hotel_administrator_1*/

--create Role [try] authorization [dbo];

/*ALTER ROLE  role_name  
{  
       ADD MEMBER database_principal  
    |  DROP MEMBER database_principal  
    |  WITH NAME = new_name  
}  
[;]  

*/

/*alter Role [try] ADD MEMBER [student];*/


 --5)
/*alter Role [administrator] ADD MEMBER [librarian_1];*/

--6)
/*REVOKE update on books  FROM [librarian_1];*/

--7)

/*ALTER ROLE [administrator]
DROP MEMBER [librarian_1]; */



--8)
/*DROP user rector*/

/*DROP ROLE administrator;*/ 




/*update "subject"
set credits = '3'
where subject_number = 'english'
select * from "subject"*/

/*select * from books*/
/*update books
set price_of_debt = '20'
where name_of_book = 'The Maths Book'
select * from books*/

