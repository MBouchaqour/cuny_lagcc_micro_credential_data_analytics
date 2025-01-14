DROP TABLE IF EXISTS student;
CREATE TABLE student
(
    id serial PRIMARY KEY,
    first_name character varying,
    last_name character varying,
    email character varying,
    gender character varying,
    work_phone character varying,
    book_preference_hardcopy boolean 
);

copy student(first_name,last_name,email,gender,work_phone,book_preference_hardcopy)
--set the path for file location of student_data.csv
from 'E:\EverUp Program\cuny_lagcc_micro_credential_data_analytics\cuny_lagcc_micro_credential_data_analytics\Track A\Unit 5 - SQL_ Relational Databases\guided exercise\data\student_data.csv'
delimiter ',' CSV header


  
DROP TABLE IF EXISTS student_marks;
CREATE TABLE student_marks
(
    id serial PRIMARY KEY,
    student_reg_id integer,
    student_id integer,
	unit2 integer,
	unit3 integer,
	unit4 integer,
	unit5 integer    
);

copy student_marks(student_reg_id,student_id,unit2,unit3,unit4,unit5)
--set the path for file location of student_marks.csv
from 'E:\EverUp Program\cuny_lagcc_micro_credential_data_analytics\cuny_lagcc_micro_credential_data_analytics\Track A\Unit 5 - SQL_ Relational Databases\guided exercise\data\student_marks.csv'
delimiter ',' CSV header

