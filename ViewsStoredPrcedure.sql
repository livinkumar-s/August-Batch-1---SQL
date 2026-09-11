USE augbatch1;
SELECT * from cricketer;
SELECT * from iplteam;

INSERT INTO iplteam (team,playerId) VALUE ("MI",2);

CREATE VIEW cricketerTeam AS SELECT c.name,i.team from cricketer c 
INNER JOIN iplteam i on c.id=i.playerId;


select * from actors;

DELIMITER //

CREATE PROCEDURE showactors()
BEGIN
select * from actors;
END//

DELIMITER ;

select * from cricketerteam;

CALL showactors();

select * from cricketerteam;

DELIMITER //

CREATE PROCEDURE showactordetails(IN actId INT)
BEGIN
select * from actors WHERE id=actId;
END//

DELIMITER ;


CALL showactordetails(2);

DELIMITER //

CREATE PROCEDURE getEldest(OUT eldAge INT)
BEGIN
select age into eldAge from actors order by age desc limit 1;
END//

DELIMITER ;

CALL getEldest(@a);

select age into @a from actors where id=1;
SET @b=10;

select @a;

DELIMITER //

CREATE PROCEDURE getAge(INOUT a INT)
BEGIN
SELECT age into a FROM actors WHERE id=a;
END//

DELIMITER ;

SET @age=6;
CALL getAge(@age);

SELECT @age;
