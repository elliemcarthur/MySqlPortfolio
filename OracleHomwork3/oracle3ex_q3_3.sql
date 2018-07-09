create table Course_Fees  (
Course_Code varchar(10),
Base_Fees int(10),
Special_Fees int(10),
Discount int(5),
constraint course_fees_fk_1 foreign key (Course_Code) references Course_Info(Course_Code),
constraint chk_course_fees check (Base_Fees>15000 and Base_Fees>Special_Fees and Discount BETWEEN 5 and 15)
);
