-- ASSIGNMENT 2 -- 

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Q1> Count the number of students in CSE dept.
select count(rollno)
from students
where deptcode ='CSE';

-- Q2> Determine the minimum, maximum and average marks of each courses
select crs_cd, min(marks), max(marks), avg(marks)
from crs_regd
group by crs_cd;

-- Q3> Determine the total credits of the courses registered by a student
select crs_rollno, sum(crs_credits) 
from crs_regd, crs_offrd
where crs_regd.crs_cd = crs_offrd.crs_code
group by crs_rollno;

-- Q4> Count the number of students in each hostel whose department is CSE.
select hostel, count(rollno) 
from  students
where deptcode = 'CSE'
group by hostel;

-- Q5> Display the hostel, rollno, parent_inc of the student who has the max(parent_inc) in a hostel.
select hostel, rollno, parent_inc
from students
where parent_inc 
    in (select max(parent_inc)
        from students
        group by hostel);

-- Q6> Display the name and parental income of each student greater than the parental income of some rollno 92005010.
select name, parent_inc
from students
where parent_inc > (select parent_inc
                    from students
                    where rollno = 92005010);
-- Q7> Find out marks of students who have marks more than rollno 92005102 for course CH103 and PH106.              
select crs_rollno,marks
from crs_regd
where ((marks > (select marks 
		from crs_regd
		where crs_rollno = 92005102 and crs_cd = 'CH103')) and crs_cd = 'CH103')
	or
	((marks > (select marks
		   from crs_regd
		   where crs_rollno = 92005102 and crs_cd = 'PH106')) and crs_cd = 'PH106');

-- END OF ASSIGNMENT 2 -- 
