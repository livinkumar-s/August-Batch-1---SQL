use augbatch1;
select * from products;

select @@autocommit;

SET autocommit=0;

UPDATE products set price=150 where id=1;
select * from products;

commit;
rollback;

CREATE TABLE bankAcc (
accNo char(7) primary key,
accHolder varchar(50) not null,
balance float not null default 0
);

INSERT INTO bankAcc (accNo, accHolder, balance) VALUES ('1234567', 'John Doe', 1000),
('2345678', 'Jane Smith', 2000),
('3456789', 'Alice Johnson', 1500),
('4567890', 'Bob Brown', 2500),
('5678901', 'Charlie Davis', 3000);

select * from bankAcc;

START TRANSACTION;
UPDATE bankacc set balance=balance-50 where accNo="1234567";
UPDATE bankacc set balance=balance+50 where accNo="2345678";
SAVEPOINT s1;
UPDATE bankacc set balance=balance-100 where accNo="3456789";
UPDATE bankacc set balance=balance+100 where accNo="4567890";
COMMIT;
ROLLBACK;
ROLLBACK to s1;
