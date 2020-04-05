-- ASSIGNMENT 0 --

/*
create table crs_regd(
    crs_rollno number(8) references students(rollno),
    crs_cd char(5) references crs_offrd(crs_code),
    marks number(5,2),
    primary key(crs_rollno,crs_cd)
);

Related queries :
-- min,max,avg marks of all courses
-- marks of students having marks more than roll no 92005102 for course CH103 and PH106
-- Students registered for EE101
-- students of ELE registered for EE101
-- students of ELE not registered for EE101
-- students registered for both DBMS and OS
-- students in each hostel not registered for any course
-- students in ELE dept who have registered for CS101
-- students registered to all courses
-- grace marks 5 in DBMS for students scoring less than 50
*/

insert into crs_regd values (92005001,'DBMS', 80.5);
insert into crs_regd values (92005002,'MIS',  84.5);
insert into crs_regd values (92005003,'OS',   83.5);
insert into crs_regd values (92005004,'CS101',82.5);
insert into crs_regd values (92005005,'SE',   78.5);
insert into crs_regd values (92005109,'PH106',45.5);
insert into crs_regd values (92005107,'CH103', 90 );

insert into crs_regd values (92005102,'CH103', 70 );
insert into crs_regd values (92005102,'PH106', 35 );
insert into crs_regd values (92005010,'CH103', 80 );
insert into crs_regd values (92005017,'CH103', 90 );
insert into crs_regd values (92005014,'PH106', 96 );
insert into crs_regd values (92005013,'PH106', 95 );

insert into crs_regd values (92005018,'EE101', 30 );
insert into crs_regd values (92005019,'EE101', 42 );
insert into crs_regd values (92005106,'EE101', 89 );
insert into crs_regd values (92005014,'EE101', 80 );
insert into crs_regd values (92005006,'EE101', 95 );
insert into crs_regd values (92005004,'EE101', 80 );

insert into crs_regd values (92005001,'OS',   44.5);
insert into crs_regd values (92005003,'DBMS', 43.5);
insert into crs_regd values (92005014,'OS',   90  );
insert into crs_regd values (92005014,'DBMS', 91  );
insert into crs_regd values (92005017,'OS',   80  );
insert into crs_regd values (92005017,'DBMS', 82.5);

insert into crs_regd values (92005106,'CS101',80.5);
insert into crs_regd values (92005107,'CS101',80.5);
insert into crs_regd values (92005018,'CS101',80.5);

insert into crs_regd values (92005014,'CH103', 80 );
insert into crs_regd values (92005014,'MIS',   90 );
insert into crs_regd values (92005014,'CS101', 95 );
insert into crs_regd values (92005014,'SE',    91 );
insert into crs_regd values (92005004,'SE',    90 );
insert into crs_regd values (92005004,'OS',    89 );
insert into crs_regd values (92005004,'MIS',  85.5);
insert into crs_regd values (92005004,'DBMS',  90 );
insert into crs_regd values (92005004,'PH106', 91 );
insert into crs_regd values (92005004,'CH103', 90 );



