create or replace package body LMS as
procedure Update_Student_Contact_Info( P_Phone_Number in  number,  
    P_New_Email in varchar2,  
    P_Full_Address in varchar2,  
    P_Contact# in varchar2  
    ) as
    begin
      INSERT INTO students ( Phone_Number,New_Email,Full_Address,  Contact#)
VALUES(P_Phone_Number,P_New_Email,P_Full_Address,P_Contact#);
         COMMIT;
         END Update_Student_Contact_Info;
    
    procedure displaynamenumber(charinput in varchar)as
    /* may have to display a variable for output here! research!
    */
    

procedure employee_update ( P_EMPLOYEE_ID in  number,  
    P_FIRST_NAME in varchar2,  
    P_LAST_NAME in varchar2,  
    P_PHONE_NO in varchar2,  
    P_HIRE_DATE in date,  
    P_SALARY in number,  
    P_COMMISSION_PCT in number,  
    P_MANAGER_ID in number,  
    P_JOB_ID in varchar2,  
    P_DEPARTMENT_ID in number);
end LMS;