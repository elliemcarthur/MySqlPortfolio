insert into students (First_Name,Last_Name,E_Mail,
Address,State,Pin,
Phone_No,S_ID,Date_Of_Birth,
Qualification,Percent_10, Percent_12,Date_Of_Passing_12,
Subjects)
values ('Ranjit', 'Chatterjee', 'r_chatt@aaa.com', '2/10 ashok vihar', 'west bengal', 700101, 9876578901, 'S1001', '1980-04-22', 'BE', 70, 69, '2002-03-30', 'Mechanical Engg.'),
	  ('Kaushik', 'Bhatterjee',  'kaushik@bb.com','block A gagan vihar','west bengal',700096,9812345643,  'S1002', '1980-08-10','BE',   65,72,'2002-04-30','Civil Engg'),
	 ('Kunal',    'Ghosh',       'Kunal@gmail.com','1A Shivam Apt',      'west bengal',700096,9678430987, 'S1003', '1979-12-12','BE',   77,74,'1979-12-12','Mechanical Engg.'),
     ('Pradeep',  'R',            'Pradeep@gmail.com','2B Trinity towers','west bengal',700107,9234540987,'S1004','1981-09-22','BE',    78,70,'1981-09-22','Electrical Engg'),
     ('Rakhi',    'Mukherjee',      'Rakhi@gmail.com','8/12c ashoka',     'west bengal',700109,9980768543,'S1005','1981-05-03','BE',    80,82,'1981-05-03','Electrical Engg.'),
     ('Sekhar',    'Rao',          's_rao@gmail.com','22/10 A Vishal Apt','west bengal',700109,null,      'S1006','1981-05-03','BE',    75,80,'2003-06-13','Electrical Engg.');

insert into courses(C_Name,C_Code ,C_Subjects,C_Duration,C_Fee ,C_Description)
values ('C & Data Structure',100,'c, ds',40,4000,'Deatiled c and datastructure concepts'),
('HTML & JS',101,'html, js',20,3500,'Detailed HTML and JAVA SCRIPT'),
('Java',102,'java',90,6000,'Core Java'),
('Database',103,'rdbms, oracle',40,6000,'Database Concepts'),
('Cobol',104,'PL,Cobol',40,6000,'Programming Logic and Cobol');

insert into student_course(S_ID,C_Code,Reg_No ,Course_Status)
values ('S1001',100,'R1001','COMPL'),
('S1001', 101,'R1002','VALID'),
('S1002',102,'R1003','VALID'),
('S1003',103,'R1004','BREAK'),
('S1004',103,'R1005','COMPL'),
('S1005',103,'R1006','COMPL');

insert into student_score(Reg_No,Score,Exam_Date)
values('R1001',70,'2004-01-12'),
('R1005', 80, '2003-09-15'),
('R1006', 78, '2003-12-12');

insert into certification(Reg_No,C_Code,Certificate_Request_ID,Certificate_Status,Issue_Date)
values ('R1001',100,101,'APPLIED',NULL),
('R1005', 103, 102, 'ISSUED', '2003-10-18'),
('R1006', 103, 103, 'ISSUED', '2004-01-10');

insert into instructor(First_Name,Last_Name,Address,State,Phone_No,Instructor_ID,Date_Of_Birth,Qualification,
Subjects,C_Code)
values('Kaushik','Bhatterjee','block A gagan vihar','west bengal',700101,'I1001',
'1973-04-22','BE','Comp Engg',100),
('Kanchan','Sen','2/10 vani vilas','west bengal',700096,
'I1002','1970-08-10','BE','Comp Engg',101),
('Sourabh','Ghosh','1A Sheetal Apt','west bengal',700096,'I1003','1969-12-12',
'BE','Comp Engg',102),
('Sumit','Guha','2B T towers','west bengal',700107,'I1004','1970-09-22','BE','Comp Engg',103),
('Radha','Mukherjee','8/12c ashoka','west bengal',700109,'I1005','1971-05-03','BE','Comp Engg',104),
('Sekhar','Rao','22/10 A Vishal Apt','west bengal',700109,'I1006','1975-05-03','BE','Comp Engg',103);

insert into emp(Employee_ID,
First_Name,
Last_Name,
Phone_No,
Hire_Date,
Salary,
Commission_PCT,
Manager_ID,
Job_ID,
Department_ID)
values(10,'Smith','Trenna',7890,'1997-01-29',20000,0.5,20,'SA_REP',10),
(20,'Sam','Peter',3456,'1998-03-15',30000, NULL, NULL, 'MKT_REP', 10),
(30,'Sekhar','Rao',7632,'1998-07-09',13000,0.5,20,'ST_CLERK',20),
(40,'Sourabh','Ghosh',7812,'1998-02-12',10000,null,10,'MKT_REP',10),
(50, 'Kanchan','Sen',9000,'1996-10-01',12000,0.3,10,'ST_CLERK',	10),
(60,'Kushik','Bhatterjee',2345,'1997-01-05',9000,0.6,30,'SA_MAN',20),
(70, 'Radha','Mukherjee',2134,'1997-03-10',15000,0.6,30,'SA_MAN',20);

