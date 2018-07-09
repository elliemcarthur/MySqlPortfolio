create table students (First_Name char(20),
Last_Name char(20),
E_Mail varchar(25),
Address varchar(25),
State char(15),
Pin Int(10),
Phone_No varchar(10),
S_ID varchar(10) NOT NULL primary key,
Date_Of_Birth date,
Qualification varchar(2),
Percent_10 int(3),
Date_Of_Passing_12 date,
Subjects varchar(20));

create table courses(
C_Name varchar(20),
C_Code int(3) NOT NULL PRIMARY KEY,
C_Subjects varchar(10),
C_Duration int,
C_Fee int,
C_Description varchar(50));

create table Student_Course(
S_ID varchar(10) NOT NULL,
C_Code int(3) NOT NULL,
Reg_No varchar(5) NOT NULL PRIMARY KEY,
Course_Status char(5),
constraint st_course_fk_1 foreign key (S_ID) references students(S_ID),
constraint st_course_fk_2 foreign key (C_Code) references courses(C_Code)
);

create table Student_Score (
Reg_No VARCHAR(5) NOT NULL,
Score int(3),
Exam_Date date,
constraint Student_Score_fk foreign key (Reg_No) references Student_Course(Reg_No)
);

create table Certification(
Reg_No varchar(5) NOT NULL,
C_Code int(3) NOT NULL,
Certificate_Request_ID int(3) NOT NULL PRIMARY KEY,
Certificate_Status char(10),
Issue_Date date,
constraint Certif_fk foreign key (Reg_No) references Student_Course(Reg_No),
constraint Certif_fk_2 foreign key(C_Code) references courses(C_Code)
);

create table instructor(
First_Name char(15),
Last_Name char(15),
Address varchar (25),
State char(15),
Pin int(10),
Instructor_ID varchar(5) NOT NULL primary key,
Date_Of_Birth date,
Qualification char(2),
Subjects varchar(20),
C_Code int(3));

create table emp(
Employee_ID int(2),
First_Name char(15),
Last_Name char(15),
Phone_No varchar(10),
Hire_Date date,
Salary int(6),
Commission_PCT float(2,1),
Manager_ID int(20),
Job_ID varchar(10),
Department_ID int(2))



