
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

