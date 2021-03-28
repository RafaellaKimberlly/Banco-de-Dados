create database programa;
use programa;

create table programa(
idprograma int primary key,
nome varchar(40),
genero varchar(30),
emissora varchar(20)
);

insert into programa values(001,'bom dia e cia','infantil','sbt');
insert into programa values(002,'tvdesenho','infantil','sbt');
insert into programa values(003,'tvglobinho','adolescente','globo');
insert into programa values(004,'manchete','adolescente','globo');
insert into programa values(005,'novela das seis','adulto','record');
insert into programa values(006,'malhacao','adulto','record');
insert into programa values(007,'jornal anime','todos','band');
insert into programa values(008,'telemanga','infantil','band');

select * from programa;

select nome,emissora from programa;

select * from programa where emissora = 'band';

select * from programa order by genero;

select * from programa order by nome desc;

select * from programa where nome like '%o';

select * from programa where nome like 'manche_e';

update programa set emissora = 'animenet' where idprograma in (4);
select * from programa;

delete from programa where idprograma = 2;
select * from programa;
