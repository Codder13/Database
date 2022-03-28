use test1;


create table elev
(
    elevID  INT primary key auto_increment,
    nume    varchar(100),
    prenume varchar(100),
    email   varchar(100),
    clasaID INT,
    Constraint Fk_clasaID
        Foreign Key (clasaID) References clasa (clasaID)
);


create table clasa
(
    clasaID  INT primary key auto_increment,
    clasa    tinytext,
    nr_elevi int check (nr_elevi between 0 and 40),
    profesor INT

);

create table profesor
(
    profID  INT primary key auto_increment,
    nume    varchar(100),
    prenume varchar(100),
    materie varchar(100)

);



select *
from clasa;

select *
from elev;

select *
from profesor;


insert into elev (nume, prenume, email, clasaID)
values ("Bolba", "Denis", "denisbolba@gmail.com", null);

insert into clasa (clasa, nr_elevi)
values ("10D", 1);





alter table elev
    drop constraint Fk_clasaID;



drop table elev;

drop table clasa;

drop table profesor;