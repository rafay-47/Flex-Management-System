use flex
Insert into Courses(CourseID,CourseCode,CourseName,CreditHours, PrerequisiteCourseID) values
(11,'CS103','Programming Fundamentals',3,NULL)
use flex
select * from Courses
use flex
select c.CourseID from Courses c where c.CourseID = 13;

use flex
select * from [dbo].[Faculty]

ALTER TABLE students ADD section INT null;
ALTER TABLE students ADD CONSTRAINT FK_students_section FOREIGN KEY (section) REFERENCES section(SectionID);
use flex select * from [dbo].[OfferedCourses]