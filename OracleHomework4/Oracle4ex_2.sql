select s.S_ID, s.First_Name, s.Last_Name, sc.C_Code
from students s
inner join student_course sc
on s.S_ID = sc.S_ID
where sc.c_code=102;
