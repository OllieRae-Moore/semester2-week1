-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
.mode columns
.header on
SELECT DepartmentName,
COUNT(EnrolmentId) AS TotalEnrolments
FROM Department
--join course on department.departmentid = course.departmentid
--join enrolment on course.courseid = enrolment.courseid
left join course on department.departmentid = course.departmentid
left join enrolment on course.courseid = enrolment.courseid 
--added left join just in case some departments dont have enrolments or courses
group by departmentname;

