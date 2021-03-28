create database revista;
use revista;
create table revista(
idrevista int primary key auto_increment,
nome varchar(40),
categoria varchar (30)
);

select * from revista;

insert into revista(nome) values('veja');
insert into revista(nome) values('mangapop');
insert into revista(nome) values('Epoca');
insert into revista(nome) values('made in japan');
insert into revista(nome) values('capricho');

select * from revista;

update revista set categoria = 'noticias' where idrevista = 1;
update revista set categoria = 'manga' where idrevista = 2;
update revista set categoria = 'novelas' where idrevista = 3;

select * from revista;

insert into revista(nome,categoria) values('amazonia','cientifica');
insert into revista(nome,categoria) values('papers do naea','cientifica');
insert into revista(nome,categoria) values('sebo aow','animes');

select * from revista;

describe revista;

alter table revista modify categoria varchar(40);

describe revista;

alter table revista add periodicidade varchar(15);

select * from revista;

alter table revista drop periodicidade;
select * from revista;

create table editora(
ideditora int primary key auto_increment,
nomeEditora varchar(40),
datafund date
)auto_increment = 1000;

insert into editora(nomeEditora,datafund) values('jbc','1988-08-05');
insert into editora(nomeEditora,datafund) values('panini', '2001-02-23');
insert into editora(nomeEditora,datafund) values('power', '1955-12-15');
insert into editora(nomeEditora,datafund) values('rolling','2012-01-08');
insert into editora(nomeEditora,datafund) values('capri','2009-06-24');
select * from editora;

alter table revista add column fkEditora int;

alter table revista add foreign key (fkEditora) references editora (ideditora);

update revista set fkEditora = '1000' where idrevista = 1;
update revista set fkEditora = '1001' where idrevista = 2;
update revista set fkEditora = '1002' where idrevista = 3;
update revista set fkEditora = '1003' where idrevista = 4;
update revista set fkEditora = '1004' where idrevista = 5;

select * from revista;

select * from revista,editora;

select * from revista,editora where ideditora = '1001'; 

select * from revista join editora;
select * from editora join revista;
select nome from revista inner join editora on 5 = 1000;
select * from revista inner join editora on ideditora = 1001;
select revista,editora from revista inner join editora on ideditora = 1002;

/*seleciona a intersecção entre as duas tabelas, um join é o mesmo que o inner join*/
select * from revista join editora on revista.fkEditora = editora.ideditora;

/*seleciona a intersecção + todos od dados da tabela a direita do join*/
select * from revista left join editora on revista.fkeditora = editora.ideditora;

