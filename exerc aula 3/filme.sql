create database filme;
use filme;
create table filme(
idfilme int primary key,
titulo varchar(50),
genero varchar (50),
diretor varchar (50)
);
select * from filme;
insert into filme values (1000000, 'Your Name', 'Romance', 'Makoto Shinkai');
insert into filme values (2000000, 'Tenki no Ko', 'Romance', 'Makoto Shinkai');
insert into filme values (3000000, 'Koe no Katachi','Romance', 'Naoko Yamada');
select * from filme;
insert into filme(idfilme,titulo) values (4000000, 'pantera negra');
insert into filme(idfilme,titulo) values (5000000, 'O castelo animado');
select * from filme;
insert into filme(idfilme,titulo) values (6000000, 'Totoro');
insert into filme(idfilme,titulo) values (7000000, 'Ponyo');
select * from filme;

insert into filme values (8000000, 'A viagem de chihiro', null, null);
select * from filme;
