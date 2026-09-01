use augbatch1;

create table products(
id int primary key auto_increment,
name varchar(30) not null,
price float,
category enum("veg","fruit","gadgets")
);

Insert into products(name, price, category) values
("apple", 20, "fruit"),
("banana", 10, "fruit"),
("carrot", 15, "veg"),
("laptop", 50000, "gadgets"),
("mobile", 20000, "gadgets"),
("mango", 25, "fruit"),
("potato", 5, "veg"),
("tablet", 15000, "gadgets"),
("grapes", 30, "fruit"),
("onion", 8, "veg"),
("cabbage", 12, "veg"),
("headphones", 3000, "gadgets"),
("orange", 18, "fruit"),
("cucumber", 7, "veg"),
("keyboard", 1500, "gadgets");


select * from products;

Insert into products(name) values
("dummy");

delete from products where id=16;

select count(*) from products;
select count(name) from products;
select sum(price) from products;
select sum(id) from products;
select avg(price) from products;
select min(id) from products;
select max(price) from products;


select avg(price) as averagePrice, count(*) as noOfRecords
FROM products;

select price, avg(price) as averagePrice from products;

select avg(price) from products where price>avg(price);

select category, count(*), avg(price) from products
where price>10 group by category HAVING avg(price)<50;
