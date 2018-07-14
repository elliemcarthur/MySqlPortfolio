--emailid? I just put New_Email

create or replace package body LMS as
procedure Update_Student_Contact_Info( P_Phone_Number students.Phone_Number%type,  
    P_New_Email STUDENTS.New_Email%type,  P_Full_Address STUDENTS.Full_Address%type,  
    P_Contact# students.Contact%type ) as
    begin
    UPDATE students SET students.Phone_Number=P_Phone_Number, STUDENTS.New_Email=P_New_Email,
    STUDENTS.Full_Address=P_Full_Address, Students.contacts=P_contact
WHERE students.Phone_Number=P_Phone_Number or students.New_Email=P_New_Email or
   Students.Full_Address=P_Full_Address or Students.contacts=P_contact;
         COMMIT;
         END Update_Student_Contact_Info;
    
    procedure displaynamenumber( displaynanph in varchar2) is
    
    begin 
    displaynam varchar2;
    displayph varchar2;
    select students.name, students.Phone_Number INTO displaynam, displayph
    from students 
    where students.name like 'displaynanph%' 
    or students.phone_number like 'displaynanph%';
           dbms_output.put_line(displaynam, displayph);
       commit;
       end displaynamenumber;

function student_age (p_student_id in students.student_id%type)
return number 
is age number;
begin
select extract (year from SYSDATE)
- extract(year from students.DOB%type)
as age
from students;
return age;
commit;
end student_age;

function studenttime (p_student_id in students.s_id%type)
return number 
is yearsincollege number;
begin
select extract (year from SYSDATE)
- extract(year from student_score.exam_date)
as yearsincollege
from students s 
inner join student_course sc
on s.s_id= sc.s_id
inner join student_score ss
on sc.reg_no=ss.reg_no;
return yearsincollege;
commit;
end studenttime;

end LMS;