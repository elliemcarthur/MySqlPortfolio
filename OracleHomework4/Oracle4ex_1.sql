create table students (
First_Name varchar(20) NOT NULL,
Last_Name varchar(20) NOT NULL,
E_Mail varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
State char(15) NOT NULL,
Pin Int(10) NOT NULL,
Phone_No varchar(10) null,
S_ID varchar(10) NOT NULL primary key,
Date_Of_Birth DATE NOT NULL,
Qualification varchar(2) NOT NULL,
Percent_10 int(3) NOT NULL,
Percent_12 int (2) NOT NULL,
Date_Of_Passing_12 date NOT NULL,
Subjects varchar(20) NOT NULL);

create table courses(
C_Name varchar(20) NOT NULL,
C_Code int(3) NOT NULL PRIMARY KEY,
C_Subjects varchar(20) NOT NULL,
C_Duration int(2) NOT NULL,
C_Fee int(4) NOT NULL,
C_Description varchar(50) NOT NULL);

create table Student_Course(
S_ID varchar(10) NOT NULL,
C_Code int(3) NOT NULL,
Reg_No varchar(5) NOT NULL PRIMARY KEY,
Course_Status char(5)NOT NULL,
constraint st_course_fk_1 foreign key (S_ID) references students(S_ID),
constraint st_course_fk_2 foreign key (C_Code) references courses(C_Code)
);

create table Student_Score (
Reg_No VARCHAR(5) NOT NULL,
Score int(3) NOT NULL,
Exam_Date date NOT NULL,
constraint Student_Score_fk foreign key (Reg_No) references Student_Course(Reg_No)
);

create table Certification(
Reg_No varchar(5) NOT NULL,
C_Code int(3) NOT NULL,
Certificate_Request_ID int(3) NOT NULL PRIMARY KEY,
Certificate_Status char(10) NOT  NULL,
Issue_Date date,
constraint Certif_fk foreign key (Reg_No) references Student_Course(Reg_No),
constraint Certif_fk_2 foreign key(C_Code) references courses(C_Code)
);

create table instructor(
First_Name varchar(20) NOT NULL,
Last_Name varchar(20) NOT NULL,
Address varchar(100) NOT NULL,
State char(15) NOT NULL,
Phone_No varchar(10),
Instructor_ID varchar(5) NOT NULL primary key,
Date_Of_Birth date NOT NULL,
Qualification varchar(2) NOT NULL,
Subjects varchar(20) NOT NULL,
C_Code int(3)NOT NULL);

create table emp(
Employee_ID int(2) NOT NULL,
First_Name varchar(20) NOT NULL,
Last_Name varchar(20) NOT NULL,
Phone_No varchar(10),
Hire_Date date NOT NULL,
Salary int(6) NOT NULL,
Commission_PCT float(2,1),
Manager_ID int(20),
Job_ID varchar(10) NOT NULL,
Department_ID int(2)NOT NULL);
