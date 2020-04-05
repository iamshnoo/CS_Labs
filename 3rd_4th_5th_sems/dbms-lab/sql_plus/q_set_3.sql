-- ASSIGNMENT 3 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Q1> List students (rollno,name,deptcode) registered for course EE101
select rollno, name, deptcode 
from students,crs_regd
where crs_cd= 'EE101' and rollno = crs_rollno;

-- Q2> List students (rollno,name) in ELE dept registered for course EE101.
select rollno, name 
from students, crs_regd
where rollno = crs_rollno 
      and deptcode = 'ELE' 
      and crs_cd = 'EE101';

-- Q3> List students (rollno,name) in ELE dept not registered for course EE101.
select rollno, name
from students,crs_regd
where deptcode = 'ELE' 
minus
select rollno, name 
from students, crs_regd
where rollno = crs_rollno
	and deptcode = 'ELE'
	and crs_cd = 'EE101';

-- Q4> List the names of the students who have registered for both the courses 'DBMS'and 'OS'.
select name 
from students, crs_regd
where rollno = crs_rollno 
      and crs_cd = 'DBMS'
intersect
select name 
from students, crs_regd
where rollno = crs_rollno 
      and crs_cd = 'OS';

-- Q5> Find the names of the faculty members who have offered either 'MIS' or 'Software Engg.'
/*
select fac_name 
from faculty, crs_offrd
where fac_code = crs_fac_cd 
      and (crs_code = 'MIS' or crs_code = 'SE');
*/
select fac_name from faculty,crs_offrd
where fac_code = crs_fac_cd
and (crs_code = (select crs_code from crs_offrd where crs_name = 'Information Systems')
    or crs_code = (select crs_code from crs_offrd where crs_name = 'Software'));

-- Q6> Find the names of the faculty members who have offered 'MIS' but not offered 'Software Engg.'
/*
select fac_name 
from faculty, crs_offrd
where fac_code = crs_fac_cd 
      and (crs_code = 'MIS' or crs_code = 'SE')
minus
select fac_name 
from faculty, crs_offrd
where fac_code = crs_fac_cd 
      and crs_code = 'SE';
*/

select fac_name from faculty,crs_offrd
where fac_code = crs_fac_cd
and (crs_code = (select crs_code from crs_offrd where crs_name = 'Information Systems')
    or crs_code = (select crs_code from crs_offrd where crs_name = 'Software'))
minus
select fac_name from faculty,crs_offrd
where fac_code = crs_fac_cd
and (crs_code = (select crs_code from crs_offrd where crs_name = 'Software'));
    

-- Q7> Find out the students in each hostel who are not registered for any course
select name, hostel 
from students
minus
select name, hostel 
from students, crs_regd 
where rollno = crs_rollno;

-- Q8> Select the students who are in ELE dept or who have registered for course CS101.
select name 
from students
where deptcode = 'ELE'
union
select name 
from students, crs_regd
where rollno = crs_rollno 
      and crs_cd = 'CS101';

-- Q9> Display the students who have registered to all the courses.
select crs_rollno 
from students, crs_regd  
where rollno = crs_rollno
group by crs_rollno
having count(crs_cd) = (select count(crs_cd) 
                        from crs_offrd);

-- Q10> Give Grace Marks 5 in subject DBMSto the students who have scored less than 50 in that subject.
-- Update command is commented out to avoid modifying table during debugging.
select * from crs_regd
where crs_cd = 'DBMS' and marks < 50;
/*
update crs_regd
set marks = marks + 5
where crs_cd = 'DBMS' and marks < 50;
*/
-- END OF ASSIGNMENT 3 -- 

    
