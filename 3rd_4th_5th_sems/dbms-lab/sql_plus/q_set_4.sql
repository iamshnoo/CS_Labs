-- ASSIGNMENT 4 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------


-- Q1> Retrieve the name of the students whose name starts with ‘S’ and contains ‘r’
--     as the second last character.
select name 
from students 
where name like 'S%r_';

-- Q2> Retrieve the name of the youngest student(s) from the ‘CST’ department
--     along with the total marks obtained by him (them).

select s.name, sum(c.marks) as marks 
from students s, crs_regd c, 
    (select min(s1.bdate) as bdate 
     from students s1, depts d                                                             
     where s1.deptcode = d.deptcode and d.deptname = 'Computer Science'
    ) x
where s.rollno = c.crs_rollno
      and x.bdate = s.bdate
group by s.name, s.bdate;

-- Q3> Find the age of all the students.

select name, floor(months_between(sysdate, bdate)/12) as Age
from students;

/* -- QUERIES THAT DIDN'T WORK
select s.name, sum(c.marks) as marks 
from students s
     inner join crs_regd c on s.rollno = c.crs_rollno
     inner join ( select min(s1.bdate) as bdate 
                  from students s1, depts d                                                               
                  where s1.deptcode = d.deptcode and d.deptname = 'Computer Science'
                ) x on x.bdate = s.bdate 
group by s.name, s.bdate;
SELECT s.name, SUM(c.marks) FROM STUDENTS s, COURSE_REGISTERED c, 
				 (SELECT MAX(s1.bdate) as bdate FROM STUDENTS s1, DEPTS d
                                  WHERE s1.deptcode = d.deptcode AND d.deptcode = 'CST') minage
WHERE s.rollno = c.course_rollno AND minage.bdate = s.bdate
GROUP BY s.name;
select s.name, sum(c.marks) as marks
from students s
     inner join crs_regd c on s.rollno = c.crs_rollno
where s.bdate in (select min(s1.bdate) as bdate 
                  from students s1
                       inner join depts d on s1.deptcode = d.deptcode and d.deptname='CST')
group by s.name;
select s.name, sum(c.marks) as marks
from students s, crs_regd c
where s.rollno = c.crs_rollno
      and s.bdate in (select min(s1.bdate) as bdate 
                      from students s1, depts d
                      where s1.deptcode = d.deptcode 
                            and d.deptname = 'Computer Science'
                     )
group by s.name;
select name, floor(months_between(sysdate, bdate)/12) "age"
from students;
*/