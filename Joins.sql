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

select * from actordetails;
ALTER TABLE actordetails ADD latestMovie varchar(50);
ALTER TABLE actordetails MODIFY name varchar(50);
ALTER TABLE actordetails CHANGE latestMovie lastMovie varchar(40);
ALTER TABLE actordetails RENAME COLUMN lastMovie TO latestMovie;
ALTER TABLE actors DROP COLUMN latestMovie;

ALTER TABLE actordetails RENAME TO actors;

UPDATE actordetails SET latestmovie="jananayagan" where id=1;

ALTER TABLE actors ADD PRIMARY KEY (id);
ALTER TABLE actors DROP PRIMARY KEY;
