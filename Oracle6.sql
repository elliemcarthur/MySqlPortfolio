create or replace package body LMS as
procedure Update_Student_Contact_Info( P_Phone_Number students.Phone_Number%type,  
    P_New_Email STUDENTS.New_Email%type,  P_Full_Address STUDENTS.Full_Address%type,  
    P_Contact# students.Contact%type ) as
    begin
    UPDATE students SET students.Phone_Number=P_Phone_Number, STUDENTS.New_Email=P_New_Email,
    STUDENTS.Full_Address=P_Full_Address, Students.contacts=P_contact
WHERE students.Phone_Number=P_Phone_Number or students.New_Email=P_New_Email or
   Students.Full_Address=P_Full_Address or Students.contacts=P_contact
         COMMIT;
         END Update_Student_Contact_Info;
    
    procedure displaynamenumber( displaynph in out varchar)as
    begin 
    displaynph:= select students.name, students.phone_number
    from students
    where students.name like 'displaynph%' 
    or students.phone_number like 'displaynph%';
       dbms_output.put_line(displaynph);
       commit;
       end displaynamenumber;
 /*Create a function which accepts the student id, returns the age of a student in number based on the DOB and the current date.*/
function student_age (p_student_id in students.student_id%type);
return age number;
begin
students.currentdate-students.DOB
end LMS;