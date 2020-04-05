-- ASSIGNMENT 0 --

--drop table crs_regd;

--drop table crs_offrd;

--drop table faculty;

--drop table students;

--drop table depts;

-- CODE COPIED FROM QUESTION STATEMENT

create table depts( 
    deptcode char(3) primary key, 
    deptname char(30) not null 
);

create table students( 
    rollno number(8) primary key, 
    name varchar(30), 
    bdate date check(bdate < '01-JAN-1997'), 
    deptcode char(3) references depts(deptcode) on delete cascade, 
    hostel number check(hostel<10), 
    parent_inc number(8,1) 
);

create table faculty( 
    fac_code char(8) primary key, 
    fac_name char(30) not null, 
    fac_dept char(3) references depts(deptcode) on delete cascade
);

create table crs_offrd( 
    crs_code char(5) primary key, 
    crs_name char(35) not null, 
    crs_credits number(2,1), 
    crs_fac_cd char(8) references faculty(fac_code) on delete cascade
);

create table crs_regd( 
    crs_rollno number(8) references students(rollno), 
    crs_cd char(5) references crs_offrd(crs_code) on delete cascade, 
    marks number(5,2), 
    primary key(crs_rollno,crs_cd) 
);

