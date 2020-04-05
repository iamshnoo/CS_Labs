-- ASSIGNMENT 0 --

/*
drop table students;

create table students( 
    rollno number(8) primary key, 
    name char(30), 
    bdate date check(bdate < '01-JAN-1997'), 
    deptcode char(3) references depts(deptcode) on delete cascade, 
    hostel number check(hostel<10), 
    parent_inc number(8,1) 
);
92005010, 92005102, 
*/
insert into students values (92005001,'Kinjal','31-DEC-1996','CSE',1,92130);
insert into students values (92005002,'Ritesh','30-DEC-1996','CSE',2,92114);
insert into students values (92005003,'Satish','29-DEC-1996','CSE',3,92110);
insert into students values (92005004,'Arijit','28-DEC-1996','CSE',4,90510);
insert into students values (92005005,'Kaustav','27-DEC-1996','CSE',5,900110);
insert into students values (92005006,'Rohit','26-DEC-1996','CSE',6,90510);
insert into students values (92005007,'Kishan','25-DEC-1996','CSE',7,90110);
insert into students values (92005008,'Sanchari','24-DEC-1996','CSE',8,925110);
insert into students values (92005009,'Swagata','23-DEC-1996','CSE',9,92510);
insert into students values (92005010,'Debaroti','22-DEC-1996','CSE',9,915110);
insert into students values (92005011,'Subarna','21-DEC-1996','CSE',8,921110);
insert into students values (92005012,'Mohana','20-DEC-1996','CSE',7,92410);
insert into students values (92005013,'Debdeep','19-DEC-1996','CSE',6,92510);
insert into students values (92005014,'Anjishnu','18-DEC-1996','CSE',5,986432);
insert into students values (92005015,'Aditya','17-DEC-1996','CSE',4,920110);
insert into students values (92005016,'Gayen','16-DEC-1996','CSE',3,92001);
insert into students values (92005017,'Souparno','15-DEC-1996','CSE',2,92110);
insert into students values (92005018,'Kushal','14-DEC-1996','ELE',1,9050);
insert into students values (92005019,'Sagnik','13-DEC-1996','ELE',1,9010);
insert into students values (92005020,'Rittik','12-DEC-1996','ELE',2,9210);
insert into students values (92005100,'Biplab','11-DEC-1996','ELE',3,92110);
insert into students values (92005101,'Birbal','10-DEC-1996','ELE',4,92510);
insert into students values (92005102,'Anindya','09-DEC-1996','PHY',5,9110);
insert into students values (92005103,'Om','08-DEC-1996','PHY',6,920810);
insert into students values (92005104,'Paras','07-DEC-1996','ELE',7,9810);
insert into students values (92005105,'Balraj','06-DEC-1996','PHY',8,99110);
insert into students values (92005106,'Anurag','05-DEC-1996','ELE',9,9110);
insert into students values (92005107,'Rafiul','04-DEC-1996','ELE',9,920510);
insert into students values (92005108,'Shaswat','03-DEC-1996','PHY',8,920110);
insert into students values (92005109,'Sunirban','02-DEC-1996','CHM',7,915110);
insert into students values (92005110,'Amit','01-DEC-1996','CHM',6,922210);
