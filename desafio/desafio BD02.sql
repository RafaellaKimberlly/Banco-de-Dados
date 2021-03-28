create database modalidade;
use modalidade;
create table modalidade(
idmodalidade int primary key auto_increment,
nomeModalidade varchar(40),
datafund date,
tipo varchar(40),
classe int
)auto_increment = 5000;

insert into modalidade values(null,'ginastica','1950-06-25','feminino',1);
insert into modalidade values(null,'futebol','1820-08-21','mascuino',2);
insert into modalidade values(null,'surf','1910-02-28','feminino',3);
insert into modalidade values(null,'tiro ao alvo','1800-03-07','masculino',4);

select * from modalidade;

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

alter table atleta drop modalidade;

alter table atleta add column fk_modalidade int;
alter table atleta add foreign key (fk_modalidade) references atleta(idatleta);

update atleta set fk_modalidade = '2000' where idatleta = 2000;
update atleta set fk_modalidade = '2001' where idatleta = 2001;
update atleta set fk_modalidade = '2002' where idatleta = 2002;
update atleta set fk_modalidade = '2003' where idatleta = 2003;

select atleta.nome,modalidade.nomeModalidade from modalidade join atleta
on atleta.idatleta = atleta.fk_modalidade;

