-- ASSIGNMENT 0 --

/*

create table crs_offrd( 
    crs_code char(5) primary key, 
    crs_name char(35) not null, 
    crs_credits number(2,1), 
    crs_fac_cd char(8) references faculty(fac_code) 
);

Needed : 'CH103',  'PH106', 'DBMS' ,  'MIS' , 'Software Engg.', 'OS', 'CS101' 'EE101'
*/

insert into crs_offrd values ('CH103','Chemistry',3,'PD');
insert into crs_offrd values ('PH106','Physics',3,'MSH');
insert into crs_offrd values ('DBMS','Database',3,'SDB');
insert into crs_offrd values ('MIS','Information Systems',4,'AM');
insert into crs_offrd values ('SE','Software',4,'MH');
insert into crs_offrd values ('OS','Operating Systems',3,'XXX'); 
insert into crs_offrd values ('CS101','Intro to CS',3,'YYY');   
insert into crs_offrd values ('EE101','Intro to EE',3,'XXX');    
