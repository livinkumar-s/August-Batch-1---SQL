CREATE TABLE user(
id int primary key auto_increment,
name varchar(30)
);

CREATE TABLE orders(
id int primary key auto_Increment,
product varchar(50) not null,
userId int,
foreign key (userId) references user(id)
ON DELETE RESTRICT
ON UPDATE RESTRICT 
);

INSERT INTO user(name) VALUES('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Bob Brown'),
('Charlie Davis');

INSERT INTO orders(product, userId) VALUES('Laptop', 1),
('Smartphone', 2),
('Tablet', 1),
('Headphones', 3),
('Monitor', 4),
('Keyboard', 5);


select * from user;
select * from orders;

DROP TABLE orders;
DROP TABLE user;

UPDATE user set id=10 where id=1;
DELETE from user where id=1;