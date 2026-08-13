use augbatch1;

select * from actordetails where age>50;

select * from actordetails where age>50 AND id>10;
select * from actordetails where age>50 OR id>10;
select * from actordetails where NOT age<40 OR id<10;

SELECT * from actordetails where age in (34,44,33,55,52,54,72,69);

SELECT * from actordetails where not age BETWEEN 44 and 54;

SELECT * from actordetails where name LIKE "%a%a%";


SELECT * from actordetails where name LIKE "% %a%";
SELECT * from actordetails order by age asc;
select * from actordetails limit 3 OFFSET 3;
