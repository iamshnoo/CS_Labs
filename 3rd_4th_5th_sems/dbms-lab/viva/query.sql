select T1.hostel, sroll, T1.parent_inc
from stud, (select hostel, max(parent_inc) as parent_inc
            from stud group by hostel) T1
where stud.hostel = T1.hostel
      and stud.parent_inc = T1.parent_inc;
