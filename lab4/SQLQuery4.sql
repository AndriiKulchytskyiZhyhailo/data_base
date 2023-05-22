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
