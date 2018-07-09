create table Student_Courses (
Student_ID varchar(10) PRIMARY KEY NOT NULL, 
Course_Code varchar(20) NOT NULL,
constraint stu_courses_fk_1 foreign key (Student_ID) references Student_Info(Student_ID),
constraint stu_courses_fk_2 foreign key (Course_Code) references course_info(Course_Code));

# note: using MYSQL


