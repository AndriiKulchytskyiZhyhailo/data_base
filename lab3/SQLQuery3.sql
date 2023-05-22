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

