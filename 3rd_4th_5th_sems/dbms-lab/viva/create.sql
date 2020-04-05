create table stud(
sroll number(3) primary key,
sname varchar(30),
hostel number check(hostel<10),
parent_inc number(6)
);
