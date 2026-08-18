USE augbatch1;

select "Hello" as result;
select "ActorX" as actorName, 0 as actorAge;

select 1/10;

select round(11.54764827365872467,4) as result;
select floor(11.9999999999999) as result;
select ceil(11.000000001) as result;
SELECT ABS(-19) as result;
select power(2,3) as result;
select sqrt(20) as result;
select mod(20,3) as result;

SELECT concat("Hello"," ","World","...!") as result;
SELECT length("Series of") as result;
SELECT upper("Series of") as result;
SELECT lower("Series of") as result;
SELECT concat(".",TRIM("         Hello World              "),".") 
as result;
SELECT concat(".",LTRIM("         Hello World              "),".") as result;
SELECT concat(".",RTRIM("         Hello World              "),".") as result;
SELECT SUBSTRING("Hello world",7,5) as result;
SELECT replace("hello hello hello world","hell","hi") as result;

select curdate();
select curtime();
select now();
select datediff("2026-08-27",curdate()) as result;


select * from actordetails;

select id, concat("It is ",upper(name)) as name, age+10 as modifiedAge 
from actordetails;


SELECT CONCAT("The name is ", UPPER(name), ". They are ", age, ".") 
AS details
FROM actordetails;
 

