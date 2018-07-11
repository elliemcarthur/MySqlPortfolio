select S_ID, First_Name, Last_Name, C_Code
from students s
inner join student_course sc
on s.S_ID = sc.S_ID
where sc.c_code=102;