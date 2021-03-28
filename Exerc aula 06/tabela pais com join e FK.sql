create database pais;
use pais;
create table pais(
idpais int primary key auto_increment,
nome varchar(40),
capital varchar(40),
datafund date
)auto_increment = 20000;

select * from pais;

insert into pais values(null,'Brasil','Brasilia','1800-08-05');
insert into pais values(null,'Japão','Toquio','1720-04-30');
insert into pais values(null,'China','Pequim','1740-11-01');
insert into pais values(null,'EUA','Nova York','1600-09-22');

create table atleta(
idatleta int primary key auto_increment,
nome varchar(30),
modalidade varchar(40),
quantmedalhas int
)auto_increment = 2000;

insert into atleta(idatleta,nome,modalidade,quantmedalhas) values(null,'Ana Maria','Ginastica',8);
insert into atleta(idatleta,nome,modalidade,quantmedalhas) values(null,'Vagner Silva','Volei de Praia',10);
insert into atleta(idatleta,nome,modalidade,quantmedalhas) values(null,'Caroline','Arco e Flecha',5);
insert into atleta(idatleta,nome,modalidade,quantmedalhas) values(null,'Cocielo','Natação',2);

select * from atleta;

alter table atleta add column fk_pais int;
alter table atleta add foreign key (fk_pais) references atleta(idatleta);

select * from atleta;

select atleta.idatleta,atleta.nome,atleta.modalidade,atleta.quantmedalhas,pais.nome,pais.capital from atleta join pais 
on atleta.idatleta = atleta.fk_pais;

select atleta.nome,atleta.modalidade,pais.nome from atleta join pais 
on atleta.idatleta = atleta.fk_pais;

