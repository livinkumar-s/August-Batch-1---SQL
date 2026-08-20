use augbatch1;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(30) not null,
role enum("Batsman","Bowler","All-Rounder","Keeper"),
email varchar(100) not null unique,
phone char(10) not null unique,
cent int not null check (cent>=10),
isActive bool default 1
);

insert into cricketer (name,role,email,phone,cent,isActive) VALUES
("Sachin Tendulkar","Batsman","sachin.tendulkar@example.com","9876543210",150,0);


select * from cricketer;