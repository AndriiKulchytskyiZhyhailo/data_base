SELECT * FROM books
WHERE genre='scientific' AND (name_of_book='The Universe Speaks in Numbers' OR name_of_book='The Maths Book' OR name_of_book='Black swan' OR
name_of_book='Head First. Design patterns');

SELECT * FROM books
WHERE genre='scientific' and if_free='0';

SELECT * FROM student
WHERE scholarship='have' and (sex='man'or sex='woman');

select DATEDIFF(year, '2022/08/25', birthday)
from student;
UPDATE student
SET birthday = REPLACE(birthday, '.', '/')

SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'man' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC; 

SELECT student.sex, student.surname ,student_group.name_of_group
FROM student
JOIN student_group
ON student.name_of_group = student_group.name_of_group
WHERE student.sex= 'woman' AND (student_group.name_of_group ='AM_11' OR student_group.name_of_group ='AM_21')
ORDER BY student.sex ASC;

SELECT *
FROM student
FULL OUTER JOIN books
ON student.student_number = books.student_number;

SELECT * FROM student
WHERE surname LIKE 'B%';

SELECT * FROM student
WHERE surname LIKE 'K%';

SELECT * FROM student
WHERE name_of_group LIKE '%11';


SELECT * FROM student
WHERE name_of_group LIKE '%21';

SELECT * FROM mark
WHERE ball  BETWEEN 50 AND 100;

  SELECT * FROM student
WHERE place_of_birth IN ('Kyiv', 'Odesa');

select * from student
where Exists(select * from rooms where rooms.room_number = student.room_number)

SELECT *
FROM mark
WHERE ball = ALL (SELECT student_number FROM student
where ball<50 );


SELECT surname
FROM student
WHERE student_number = ANY
  (SELECT student_number
  FROM mark
  WHERE ball <= 50);

select student.place_of_birth, count(*) as student_nymber from (select * from student where room_number = '2A') as student
group by student.place_of_birth

select student.place_of_birth, count(*) as student_nymber from 
student where room_number = '1A'
group by student.place_of_birth;

WITH student_rooms AS (
   SELECT student_number, name_of_group, surname, 1 as number 
   FROM student
   WHERE room_number is null

   UNION ALL
   
   SELECT student.student_number, student.name_of_group, student.surname, 2 as number
   FROM student
   WHERE room_number is not null
)
select * from student_rooms;


SELECT name_of_book, author, book.scientific
FROM (
  SELECT name_of_book, author, genre, price_of_debt
  FROM books
) AS book
PIVOT (
  SUM(price_of_debt)
  FOR genre IN ([scientific])
) AS book


SELECT 'total_price_of_debt' as Total_price_of_dept, [scientific], [non fictional]
FROM (SELECT genre, price_of_debt
 FROM books) AS SourceTable
PIVOT (
  SUM(price_of_debt) 
  FOR genre IN ([scientific], [non fictional])
) AS privot_book

select * from books;

UPDATE student
SET "name" = 'Andrii', surname= 'Davidov', middle_name='Olegovich', birthday='2004.09.02', place_of_birth='Lviv', addres='Arkhipenko 2', sex='man',
merital_status='unmarried', scholarship='have', hobby='fishing'
WHERE student_number=0001

select * from student;

UPDATE mark
SET ball = '88'
FROM mark
INNER JOIN student 
ON mark.student_number = student.student_number 
inner join "subject" 
ON mark.subject_number="subject".subject_number
WHERE "subject".subject_number='philosophy'and student.student_number='0001';

INSERT INTO student (student_number, room_number, name_of_group, "name", surname, middle_name, birthday, place_of_birth, addres, sex,merital_status, scholarship, hobby )
VALUES('0303', '4A', 'AM_21', 'Yura', 'Shevchenco', 'Ivanovich', '2004.08.03', 'Lviv', 'Arkhipenko 2', 'man', 'unmarried', 'have' , 'cycling');

INSERT INTO "subject"(subject_number, credits, lecture)
select sub.subject_number+'_un', 4, student.surname
from student join mark on student.student_number = mark.student_number join "subject" as sub
on sub.subject_number = mark.subject_number
WHERE student.student_number ='0007';

select * from "subject";

DELETE FROM student WHERE student_number= 0202;
DELETE FROM student;
DELETE FROM books;
DELETE FROM student_group;
DELETE FROM "subject";
DELETE FROM mark;
DELETE FROM rooms;