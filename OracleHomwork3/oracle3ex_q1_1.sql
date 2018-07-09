
create table COURSE_INFO(COURSE_CODE VARCHAR(10) PRIMARY KEY, 
COURSE_NAME varchar(20) NOT NULL, 
COURSE_DESCRIPTION varchar(25),COURSE_START_DATE date, 
COURSE_DURATION int,
NUMBER_OF_PARTICIPANTS INT,
COURSE_TYPE CHAR(3));

create table Student_Info (Student_ID varchar(10) PRIMARY KEY, First_Name varchar(20),
Last_Name varchar(25), Address varchar(150));
