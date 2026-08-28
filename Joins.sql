USE augbatch1;

SELECT * from cricketer;
SELECT * from iplteam;
SELECT * from jersey;

CREATE TABLE iplteam (
id int primary key auto_increment,
team varchar(5) not null,
playerId int not null
);

INSERT INTO iplteam (team,playerId) VALUES 
("CSK",7),
("RCB",1),
("MI",16),
("MI",8),
("PBKS",99);

SELECT c.name,i.team from cricketer c inner join iplteam i
on c.id=i.playerId;

SELECT * from cricketer c left join iplteam i
on c.id=i.playerId
union
SELECT * from cricketer c right join iplteam i
on c.id=i.playerId;

select c.name,i.team,j.jersey from cricketer c inner join
iplteam i on c.id=i.playerId inner join 
jersey j on c.id=j.playerId;
