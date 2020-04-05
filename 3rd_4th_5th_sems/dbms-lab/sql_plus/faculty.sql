-- ASSIGNMENT 0 --

/*
create table faculty( 
    fac_code char(8) primary key, 
    fac_name char(30) not null, 
    fac_dept char(3) references depts(deptcode) 
);

Needed : DBP, NLS
*/

insert into faculty values ('MH','Manas Hira','CSE');
insert into faculty values ('MSH','Minhaz Hossain','PHY');
insert into faculty values ('PD','Pradip Dutta','CHM');
insert into faculty values ('XXX','DBP','ELE');
insert into faculty values ('YYY','NLS','ELE');
insert into faculty values ('SDB','SD Bit','CSE');
insert into faculty values ('AM','Abhik Mukherjee','CSE');
