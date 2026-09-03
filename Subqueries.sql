use augbatch1;

create table students (
id int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept enum("EEE","ECE","CIVIL")
);

INSERT INTO students (name, mark, dept) VALUES
('John', 85, 'EEE'),
('Alice', 90, 'ECE'),
('Bob', 75, 'CIVIL'),
('Eve', 95, 'EEE'),
('Charlie', 80, 'ECE'),
('David', 70, 'CIVIL'),
('Frank', 88, 'EEE'),
('Grace', 92, 'ECE'),
('Hannah', 78, 'CIVIL'),
('Ivy', 82, 'EEE'),
('Jack', 89, 'ECE'),
('Kathy', 76, 'CIVIL'),
('Leo', 91, 'EEE'),
('Mia', 84, 'ECE'),
('Nina', 79, 'CIVIL'),
('Oscar', 87, 'EEE'),
('Paul', 93, 'ECE'),
('Quinn', 81, 'CIVIL'),
('Rita', 86, 'EEE'),
('Sam', 94, 'ECE');


select * from students;
select avg(mark) from students;
select * from students where mark>84.75;


select * from students where mark>(select avg(mark) from students);

select name, mark, avg(marks) from students;

select mark from students where dept="ECE";

select * from students where 
mark> ALL (select mark from students where dept="ECE");

select * from students where 
mark > ANY (select mark from students where dept="ECE");

select * from students where 
mark IN (select mark from students where dept="ECE");

select * from students where 
mark NOT IN (select mark from students where dept="ECE");

select * from students;

select 56 as result;
select upper(name) from students;

select * from students s1 where
mark > (select avg(mark) from students where dept="EEE");

select dept,avg(marks) from students;