select s.First_name, s.Last_name, s.E_Mail,
 c.C_Name, sc.C_Code, ss.Score, ss.Exam_Date
 from students s 
 left join student_course sc
 on s.S_ID= sc.S_ID
 inner join courses c 
 on  sc.C_Code= c.C_code
 inner join  student_course sc2 
 on c.C_Code= sc.C_code
 inner join student_score ss
 on sc2.reg_no=ss.reg_no
 where ss.reg_no=102;