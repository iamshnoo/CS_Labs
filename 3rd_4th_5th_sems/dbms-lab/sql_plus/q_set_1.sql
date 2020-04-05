-- ASSIGNMENT 1 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Q1> Delete records from dept where deptcode='CSE'.
--    (This deletes records from students whose deptcode='CSE')

-- instead of deleting them, I just used select, to prevent half of my table from getting deleted
-- delete from students where deptcode='CSE';

select * from students 
where deptcode='CSE';

-- Q2> Find out the courses offered by the faculty dbp and nls.
select crs_name 
from crs_offrd
where crs_fac_cd = (select fac_code from faculty where fac_name = 'DBP')
   or crs_fac_cd = (select fac_code from faculty where fac_name = 'NLS');


-- Q3> Find out the courses with full details offered by dbp.
select * from crs_offrd
where crs_fac_cd = (select fac_code from faculty where fac_name = 'DBP');

-- Q4> Get the courses the credits of which lies between 4.0 and 6.0.
-- Actually my table only has values between 2 and 4, thus i modified this query
-- select * from crs_offrd where crs_credits between 4.0 and 6.0;
select crs_name from crs_offrd 
where crs_credits between 2.0 and 4.0;

-- Q5> Get the courses the credits of which are > 6.5.
-- select * from crs_offrd where crs_credits > 6.5;
select crs_name from crs_offrd 
where crs_credits > 2.5;

