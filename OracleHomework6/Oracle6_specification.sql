create or replace package LMS as
procedure Update_Student_Contact_Info( P_Phone_Number students.Phone_Number%type,  
    P_New_Email STUDENTS.New_Email%type,  P_Full_Address STUDENTS.Full_Address%type,  
    P_Contact# students.Contact%type );
     procedure displaynamenumber( displaynanph in varchar2);
     --return???;
function student_age (p_student_id in students.student_id%type)
return number;

function studenttime (p_student_id in students.s_id%type)
return number 

end lms;