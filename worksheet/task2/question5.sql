-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
.mode columns 
.header on
SELECT student.studentid, Firstname, Lastname, sum(credits)  as TotalCreditsPassed
from student
left join enrolment on student.studentid = enrolment.studentid
left join course on enrolment.courseid = course.courseid
where enrolment.grade>39
group by student.studentid;
