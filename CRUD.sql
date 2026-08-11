USE augbatch1;

INSERT INTO actordetails (id,name,age) VALUES 
(1,"Vijay",54),
(2,"Surya",52);

INSERT INTO actordetails (id,name,age) VALUES 
(3,"Ajith",52),
(4,"Simbu",45),
(5,"Dhanush",38),
(6,"Karthi",42),
(7,"Vikram",52),
(8,"Suriya",52),
(9,"Arya",39),
(10,"Vijay Sethupathi",45),
(11,"Jayam Ravi",42),
(12,"Kamal Haasan",67),
(13,"Rajinikanth",72),
(14,"Nayanthara",36),
(15,"Trisha",38),
(16,"Samantha",35),
(17,"Keerthy Suresh",29),
(18,"Anushka Shetty",39),
(19,"Tamannaah Bhatia",34),
(20,"Shruti Haasan",36);

SELECT * FROM actordetails;
SELECT * FROM actordetails WHERE name="Ajith";

UPDATE actordetails SET age=54 where name="Ajith";
UPDATE actordetails SET age=55 where id=3;
DELETE FROM actordetails;

SET SQL_SAFE_UPDATES=1;