use test1;


create table elev(
	elevID INT primary key auto_increment
	,nume varchar(100)
    ,prenume varchar(100)
    ,email varchar(100)
    ,clasaID INT
);


create table clasa(
	clasaID INT primary key auto_increment
	,clasa tinytext
	,nr_elevi int(3)
	);


Alter table elev
Add Constraint Fk_clasaID
Foreign Key(clasaID) References clasa(clasaID);

alter table clasa
add elevi INT;

Alter table clasa
Add Constraint Fk_elevID
Foreign Key(elevi) References elev(elevID);


select * from clasa;

select * from elev;


insert into elev values(1, "Bolba","Denis", "denisbolba@gmail.com", null);

insert into clasa values(1, "10D", 27, 1);

DELETE FROM elev;

TRUNCATE TABLE elev;
TRUNCATE TABLE clasa;