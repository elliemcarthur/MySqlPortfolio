create or replace package body employee_action as
procedure employee_add ( P_EMPLOYEE_ID in number,  
    P_FIRST_NAME in varchar2,  
    P_LAST_NAME in varchar2,  
    P_PHONE_NO in varchar2,  
    P_HIRE_DATE in date,  
    P_SALARY in number,  
    P_COMMISSION_PCT in number,  
    P_MANAGER_ID in number,  
    P_JOB_ID in varchar2,  
    P_DEPARTMENT_ID in number) is 
    BEGIN
    INSERT INTO EMP ( EMPLOYEE_ID,FIRST_NAME,LAST_NAME,  PHONE_NO,  
                      HIRE_DATE,  SALARY,  COMMISSION_PCT,MANAGER_ID,  
                      JOB_ID,  DEPARTMENT_ID)
VALUES ( P_EMPLOYEE_ID,  P_FIRST_NAME,  P_LAST_NAME,  P_PHONE_NO,  
         P_HIRE_DATE,    P_SALARY,  P_COMMISSION_PCT,  P_MANAGER_ID,  
         P_JOB_ID,   P_DEPARTMENT_ID);
         COMMIT;
         END employee_add;
procedure employee_update ( P_EMPLOYEE_ID in  number,  
    P_FIRST_NAME in varchar2,  
    P_LAST_NAME in varchar2,  
    P_PHONE_NO in varchar2,  
    P_HIRE_DATE in date,  
    P_SALARY in number,  
    P_COMMISSION_PCT in number,  
    P_MANAGER_ID in number,  
    P_JOB_ID in varchar2,  
    P_DEPARTMENT_ID in number) is 
    begin
    BEGIN  
UPDATE EMP SET EMPLOYEE_ID=P_EMPLOYEE_ID,FIRST_NAME=P_FIRST_NAME,LAST_NAME=P_LAST_NAME,  
PHONE_NO=P_PHONE_NO,  HIRE_DATE=P_HIRE_DATE,  SALARY=P_SALARY,  
COMMISSION_PCT=P_COMMISSION_PCT ,MANAGER_ID=P_MANAGER_ID,  
JOB_ID=P_JOB_ID,  DEPARTMENT_ID=P_DEPARTMENT_ID
WHERE EMPLOYEE_ID=P_EMPLOYEE_ID;  
COMMIT;  
END employee_update;
END employee_action;

