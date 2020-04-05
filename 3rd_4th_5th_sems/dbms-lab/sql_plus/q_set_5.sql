-- ASSIGNMENT 5 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Q1> Retrieve the name of the student(s) who obtained second highest marks in ‘DBMS’.

select distinct (name), rollno, marks 
from students, crs_regd
where rollno = crs_rollno
      and marks = (select max(marks) 
                   from crs_regd
                   where crs_cd = 'DBMS' 
                         and marks < (select max(marks) 
                                      from crs_regd
                                      where crs_cd = 'DBMS'));
                                           
-- Q2> Find out the differences between highest and lowest marks obtained in each subject.

select offr.crs_name, max(reg.marks) - min(reg.marks) difference
from crs_regd reg, crs_offrd offr
where reg.crs_cd = offr.crs_code
group by offr.crs_name;

-- Q3> Assuming the existance of several interdepartmental courses, retrieve the
--    name of the student(s) who is(are) studying under at least one faculty from
--    each department.

select name from students
minus
select name from students 
where (select count(*) from depts 
       where depts.deptcode = students.deptcode) = (select count(distinct(fac_dept)) 
                                                    from (select fac_dept 
                                                          from fac,crs_regd,crs_offrd
                                                          where rollno = crs_rollno 
                                                                and crs_reg_code = crs_cd 
                                                                and crs_fac_cd = fac_cd));
 
-- Q4> Assuming the existance of several interdepartmental courses, retrieve the
--    name of the student(s) who is(are) studying under the faculties only from
--    his(their) own department.

select name 
from students 
where (select count(*) 
       from depts 
       where depts.deptcode = students.deptcode)= (select count(distinct(fac_dept)) 
                                                   from (select fac_dept 
                                                         from fac, crs_regd, crs_offrd
                                                         where rollno = crs_rollno
                                                               and crs_cd = crs_code
                                                               and crs_fac_cd = fac_code));
                                                              
 /* -- QUERIES THAT DIDN'T WORK
select s.name, max(c.marks) "marks" 
from students s
     inner join crs_regd c on c.crs_rollno = s.rollno
     inner join crs_offrd o on c.crs_cd = o.crs_code
where o.crs_name = 'DBMS' 
     and c.marks < (select max(ri.marks) 
                    from crs_regd ri, crs_offrd oi
                    where ri.crs_cd = oi.crs_code 
                          and oi.crs_name = 'DBMS') 
group by s.name, c.marks;

select crs_rollno, max(marks) as marks 
from crs_regd 
where crs_cd = 'DBMS' 
       and marks < (select max(marks) 
                    from crs_regd 
                    where crs_cd = 'DBMS');
      
select s.name, max(reg.marks) as marks
from students s, crs_regd reg, crs_offrd offr
where reg.crs_rollno = s.rollno
      and reg.crs_cd = offr.crs_code
      and offr.crs_name = 'DBMS' 
      and reg.marks < (select max(ri.marks) 
                       from crs_regd ri, crs_offrd oi
                       where ri.crs_cd = oi.crs_code 
                            and oi.crs_name = 'DBMS') 
group by s.name, c.marks;

select max(reg.marks) as marks
from crs_regd reg, crs_offrd offr
where offr.crs_name = 'DBMS' 
      and reg.marks < (select max(r.marks) 
                       from crs_regd r, crs_offrd o
                       where o.crs_name = 'DBMS') 
group by s.name, reg.marks;

select s.name, r.marks 
from students s, crs_regd r
where s.rollno = r.crs_rollno
      and r.marks = (select max(marks)
                     from crs_regd reg
                     where reg.crs_cd = 'DBMS'
                           and reg.marks < (select max(marks)
                                            from crs_regd r2
                                            where r2.crs_cd = 'DBMS'));
*/                                                                                                                      