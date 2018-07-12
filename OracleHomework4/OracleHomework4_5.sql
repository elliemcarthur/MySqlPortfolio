select s.First_Name, sc.C_Code
from students s 
inner join student_course sc
on s.s_id= sc.S_ID;

