create or replace package employee_action as
procedure employee_add ( P_EMPLOYEE_ID in  number,  
    P_FIRST_NAME in varchar2,  
    P_LAST_NAME in varchar2,  
    P_PHONE_NO in varchar2,  
    P_HIRE_DATE in date,  
    P_SALARY in number,  
    P_COMMISSION_PCT in number,  
    P_MANAGER_ID in number,  
    P_JOB_ID in varchar2,  
    P_DEPARTMENT_ID in number);

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
end employee_action;
