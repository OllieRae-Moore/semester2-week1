-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
.mode columns 
.header ON
Select  student.StudentId,  FirstName, LastName, course.CourseName from student
join enrolment on student.studentid = enrolment.studentid
join course on enrolment.courseid = course.courseid;

