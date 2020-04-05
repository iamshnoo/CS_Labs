-- ASSIGNMENT 7 --

-- ------------------------------------------------------------------
-- DATABASE SCHEMA :
-- ------------------------------------------------------------------
-- depts([deptcode], deptname)
-- students([rollno], name, bdate, {deptcode}, hostel, parent_inc)
-- faculty([fac_code], fac_name, {fac_dept})
-- crs_offrd([crs_code], crs_name, crs_credits, {crs_fac_cd})
-- crs_regd([{crs_rollno}, {crs_cd}], marks)
-- ------------------------------------------------------------------

-- Creating departments table

    create table depts(
                    deptcode varchar(3) PRIMARY KEY,
                    deptname varchar(50) NOT NULL);

-- Creating students table

    create table students(
                    rollno number(9) PRIMARY KEY,
                    name varchar(30),
                    deptcode varchar(3) REFERENCES DEPTS(deptcode) ON DELETE CASCADE,
                    bdate date NOT NULL,
                    hostel number CHECK(hostel < 17),
                    parent_income number(5));
                
-- Inserting departments

    insert into depts
    values('CSE', 'Computer Science and Engineering');

    insert into depts
    values('ETC', 'Electronics and Telecommunication Engineering');

    insert into depts
    values('ME', 'Mechanical Engineering');

    insert into depts
    values('EE', 'Electrical Engineering');

-- Inserting students 

    insert into students
    values('510517080', 'Mainak Basu', 'CSE', '14-JUL-1999', '1', '20000');   

    insert into students
    values('510517086', 'Anjishnu Mukherjee', 'CSE', '2-NOV-1998', '9', '25000'); 

    insert into students
    values('510517087', 'Sagnik Acharya', 'CSE', '2-NOV-2000' ,'6', '18000');

    insert into students
    values('510517006', 'Anthony Rajiv', 'CSE', '2-MAR-1998', '4', '13000');

    insert into students
    values('510517004', 'Sourav Gaikwad', 'CSE', '1-JAN-2000', '8', '22000');

    insert into students
    values('510517001', 'Akash Singh', 'CSE', '2-NOV-1998', '11', '23000');

    insert into students
    values('510417021', 'Soham Das', 'ME', '2-FEB-1999', '7', '15000');

    insert into students
    values('510417018', 'Sanchari Saha', 'ME', '2-OCT-1997', '2', '26000');

    insert into students
    values('510417019', 'Kushal Paul', 'ME', '2-SEP-1998', '6', '17000');

    insert into students
    values('510417050', 'Anuradha Bhattacharya', 'ME', '2-DEC-1998', '10', '19000');

    insert into students
    values('510617001', 'Swastika Dutta', 'ME', '2-NOV-1998', '14', '10000');

    insert into students
    values('510417010', 'Shreyan Ghosh', 'ME', '14-AUG-1999', '13', '10000');

    insert into students
    values ('510317011', 'Pramit Das', 'EE', '24-AUG-1999', '13', '25000');

    insert into students
    values ('510317012', 'Anindya Kundu', 'EE', '4-OCT-1999', '13', '30000');

    insert into students
    values ('510317015', 'Indranil Bit', 'EE', '17-DEC-1999', '13', '20000');

    insert into students
    values ('510217017', 'Soumyo Roy', 'ETC', '13-SEP-1999', '13', '10000');

-- Q1> Create a view of all students in dept CSE.

    create view all_students as
    select * 
    from students 
    where deptcode = 'CSE';

    select * from all_students;

-- Q2> Create a view named as cse_students for ‘CSE’ dept students 
--     having attributes rollno, name, hostel

    create view cse_students as
    select rollno, name, hostel 
    from students 
    where deptcode = 'CSE';

    select * from cse_students;

-- Q3> Insert a new student of CSE. Analyse the result.
        
    -- Value inserted into students table but not in cst_stud view 
    -- since deptcode, hostel, parent_income and bdate are null    
    select * from all_students;
    select * from students where deptcode = 'CSE';

    insert into all_students
    values('510517090', 'Pragati Gupta', 'CSE', '26-DEC-1996', '16', '21000');

    select * from all_students;
    select * from students where deptcode = 'CSE';
    
    -- DOESN'T WORK. CAN'T INSERT NULL.
    insert into cse_students
    values('510517090', 'Arijit Singha', '16');
    
    select * from cse_students;
    select * from students where deptcode = 'CSE';

-- Q4> Increment parental income by Rs. 5000 (HRA).

    select * from all_students;
    select * from students where deptcode = 'CSE';

    update all_students
    set parent_income = parent_income + 5000;

    select * from all_students;
    select * from students where deptcode = 'CSE';

-- Q5> Delete the view.

    drop view cse_students;
    drop view all_students;

-- Q6> Create another view of all students in 
--     dept Mechanical Engineering (department Name). 
--     The view will contain attributes namely Roll-No, Name, Department Name, Age.

    select * from students;

    create view mech_students as
    select rollno, name, deptname, floor(months_between(sysdate, bdate)/12) as age 
    from students, depts
    where students.deptcode = depts.deptcode and deptname = 'Mechanical Engineering';

    select * from mech_students;

-- Q7> Attempt : Insert a new student of Mechanical Engineering Department.
--     Analyse the result.

    -- --ERROR--
    -- ORA-01776: cannot modify more than one base table through a join view
    insert into mech_students
    values('511017100', 'Kaustav Sarkar', 'Mechanical Engineering', '20');
    
    -- ANALYSIS
    create view test as
      select rollno, name, students.deptcode as code, depts.deptcode, deptname, bdate, hostel, parent_income 
      from students, depts
      where students.deptcode = depts.deptcode and deptname = 'Mechanical Engineering';
  
    insert into test 
    values('511017100', 'Kaustav Sarkar', 'ME', 'ME', 'Mechanical Engineering','2-NOV-1998', '16', '17000');

-- Q8> Attempt : Delete a student (for a given Name) of the same department
--     Analyse the result.

    select * from mech_students;

    delete from mech_students where name = 'Soham Das';

    select * from mech_students;
    select * from students;

-- Q9> Attempt : Shift a student (for a given Name) from Mechanical to Computer Science.
--     Analyse the result.

    select * from mech_students;
    
    -- ERROR--
    -- ORA-01779: cannot modify a column which maps to a non key-preserved table
    update mech_students
    set deptname = 'Computer Science and Engineering'
    where name = 'Shreyan Ghosh';

    select * from mech_students;
    select * from students;

    -- Delete the view.

    drop view mech_students;

-- Drop the tables.

    drop table depts cascade constraints;
    drop table students cascade constraints;