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

CREATE TABLE jersey (
id int primary key auto_increment,
jersey int not null,
playerId int,
foreign key (playerId) references cricketer(id)
);

insert into jersey (jersey,playerId) vALUES 
(7,17);