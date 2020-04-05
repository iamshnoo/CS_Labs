-- ASSIGNMENT 6 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Q1> Display highest parent incomes in descending order, for each department,
--     excluding 'ARCH' such that only those highest parent incomes will appear
--     that are below 12,000

select x.deptname, x.p_inc 
from (select d.deptname, max(s.parent_inc) as p_inc
      from students s, depts d
      where d.deptcode = s.deptcode
      group by d.deptname) x
where x.deptname <> 'Architecture'
      and x.p_inc < 12000
order by x.p_inc desc;

-- Q2> Retrieve the fifth highest parent income for hostel number 5.

select s1.parent_inc
from students s1
where (4) = (select count(distinct (parent_inc))
             from students s2
             where s2.parent_inc > s1.parent_inc
                   and s2.hostel = s1.hostel 
                   and s1.hostel = 5);

-- Q3> Find the roll number of the students from each department who obtained 
--     highest total marks in their own department.

select B.crs_rollno, A.deptcode, A.max_marks
from (select deptcode, max_marks
      from (select deptcode, max(total_marks) as max_marks 
            from (select crs_rollno, sum(marks) as total_marks 
                  from crs_regd
                  group by crs_rollno), students
            where rollno = crs_rollno
            group by deptcode)) A, 
    (select crs_rollno, deptcode, max(total_marks) as max_marks  
     from (select crs_rollno, sum(marks) as total_marks 
           from crs_regd
           group by crs_rollno), students
     where rollno = crs_rollno
     group by crs_rollno, deptcode) B
where A.max_marks = B.max_marks 
      and A.deptcode = B.deptcode;
      
/* -- QUERIES THAT DIDN'T WORK
select d1.deptname, s1.parent_inc 
from students s1, depts d1
where d1.deptcode = s1.deptcode
      and d1.deptname <> 'Architecture'
      and s1.parent_inc < 12000
      and (d1.deptname, s1.parent_inc) in (select d.deptname, max(s.parent_inc)
                                           from students s, depts d
                                           where d.deptcode = s.deptcode
                                           group by d.deptname)
order by s1.parent_inc desc;

SELECT x.deptname, x.p 
FROM (SELECT d.deptname, MAX(s.parent_income) as p
      FROM STUDENTS s, DEPTS d
      WHERE d.deptcode = s.deptcode
      GROUP BY d.deptname) x
WHERE x.deptname <> 'Architecture'
      AND x.p < 25
ORDER BY x.p DESC;

SELECT name, parent_income FROM STUDENTS
WHERE hostel = 5  AND ROWNUM = 5
ORDER BY parent_income DESC;

select distinct d1.deptname, max(s1.name) as name ,max(c1.crs_rollno) as rollno , max(x.marks) as total_marks 
from students s1
     inner join depts d1 on d1.deptcode = s1.deptcode
     inner join crs_regd c1 on c1.crs_rollno = s1.rollno
     inner join (select s.name as name, d.deptname as deptname, sum(c.marks) as marks 
                 from students s
                      inner join crs_regd c on s.rollno = c.crs_rollno
                      inner join depts d on d.deptcode = s.deptcode
                 group by s.name,d.deptname
                 ) x on x.name = s1.name and x.deptname = d1.deptname 
group by d1.deptname;

select distinct d1.deptname, max(s1.name) as name ,max(c1.crs_rollno) as rollno , max(x.marks) as total_marks 
from students s1, depts d1, crs_regd c1, (select s.name as name, d.deptname as deptname, sum(c.marks) as marks 
                                          from students s
                                               inner join crs_regd c on s.rollno = c.crs_rollno
                                               inner join depts d on d.deptcode = s.deptcode
                                          group by s.name,d.deptname
                                          ) x
where d1.deptcode = s1.deptcode
     and c1.crs_rollno = s1.rollno
     and x.name = s1.name 
     and x.deptname = d1.deptname 
group by d1.deptname;

select a.deptcode, a.rollno, a.name
from (select s.deptcode, s.name, s.rollno, sum(c.marks) as total 
      from course c, students s 
      where s.rollno = c.crs_rollno 
      group by s.rollno) a

     join 
     
    (select deptcode, max(total) max_total  
     from (select s.deptcode, s.name, s.rollno, sum(c.marks) as total 
           from course c, students s 
           where s.rollno = c.crs_rollno 
           group by s.rollno) a_ 
     group by deptcode) b
           
on a.deptcode = b.deptcode and a.total = b.max_total;

select a.deptcode, a.rollno
from (select s.deptcode, s.name, s.rollno, sum(c.marks) as total 
      from course c, students s 
      where s.rollno = c.crs_rollno 
      group by s.rollno) a, (select deptcode, max(total) max_total  
     from (select s.deptcode, s.name, s.rollno, sum(c.marks) as total 
           from course c, students s 
           where s.rollno = c.crs_rollno 
           group by s.rollno) a_ 
     group by deptcode) b  
where a.deptcode = b.deptcode 
      and a.total = b.max_total;
*/  