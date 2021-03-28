create database animes;
use aluno;
use animes;
create table animes (
idanimes int primary key,
nome varchar (50),
genero varchar(20),
favoritos varchar(25)
);
insert into animes values(01,'One Piece','Shounen','Fav');
select * from animes;
insert into animes values(02,'Naruto','Shounen','Fav');
insert into animes values(03,'Dragon Ball','Shounen','Fav');
insert into animes values(04,'Bleach','Shounen','Fav');
insert into animes values(05,'Cavaleiros do Zodiaco','Shounen','Fav');
insert into animes values(06,'Shingeki no Kyogin','Shounen','Fav');

select * from animes;
insert into animes values(07,'Jujutsu Kaisen','Shounen','Fav');
insert into animes values(08,'Dr.Stone','Shounen','Fav');
insert into animes values(09,'Goblin Slayer','Shounen','Fav');
insert into animes values(10,'yo-gi-oh','Shounen','Fav');
insert into animes values(11,'tokyo ghoul','Shounen','Fav');
insert into animes values(12,'Ano Hana','Shoujo','Fav');
select * from animes;
insert into animes values(13,'Fumetall Alchemist','Shounen','Fav');
insert into animes values(14,'Mirai nikki','Terror','Fav');
insert into animes values(15,'kimetsu no yaiba','shounen','Fav');
insert into animes values(16,'One punch man','shounen','Fav');
insert into animes values(17,'Black Clover','shounen','Fav');
insert into animes values(18,'boku no hero','shounen','Fav');
insert into animes values(19,'nanatsu no taizai','shounen','Fav');
insert into animes values(20,'Sword art online','shounen','Fav');
select * from animes;

insert into animes (idanimes,nome) values(21,'no game,no life');
insert into animes (idanimes,nome) values(22,'hunter x hunter');
insert into animes (idanimes,nome) values(23,'faairy tail');
insert into animes (idanimes,nome) values(24,'cells art work');
select * from animes;
select * from animes where idanimes;
select * from animes where idanimes  > - 20;
select * from animes where idanimes < - 20;
select * from animes where idanimes > - 10;
select * from animes where idanimes <> 10;
select * from animes where nome like '%D%'; -- Procura essa letra final no começo e no fimal da frase --
select * from animes where nome like '%D'; -- Na frente é uma frase que começa com a letra--
select * from animes where nome like 'D%'; -- Na frente é uma frase que termina com a letra--
select * from animes where nome like '_a%'; -- Dessa forma, esse comando procurará os nomes que tenham um caractere qualquer, seguido da letra 'A' --
select * from animes;
select * from animes;
update animes set nome = 'frenfren' where idanimes = 3;
update animes set genero = 'shoujo' where idanimes = 4;
select * from animes;
update animes set nome = 'Dragon Ball' where idanimes = 3;
delete from animes where idanimes = 02;

select * from animes;
delete from animes where idanimes = 20;
select * from animes;
delete from animes where idanimes > 20;
select * from animes;
delete from animes where idanimes < 5;
select * from animes;

update animes set favoritos = 'Melhor de todos' where idanimes = 19;
select * from animes;
update animes set favoritos = 'ganhou premio' where idanimes = 16;
update animes set favoritos = 'top 10' where idanimes = 11;
update animes set favoritos = 'manga do ano' where idanimes = 14;
update animes set favoritos = 'para toda a vida' where idanimes = 18;
select * from animes;
update animes set favoritos = 'choro livre' where idanimes = 6;
update animes set favoritos = 'novelinha' where idanimes = 8;
update animes set favoritos = 'novela de otaku' where idanimes = 9;
select * from animes;

update animes set favoritos = 'anime que gosto' where idanimes = 5 or idanimes = 11;
select * from animes;
update animes set favoritos = 'anime que vou chorar' where idanimes in (13,14);

alter table animes add ano int;
alter table animes add Personagem varchar(50);

update animes set ano = 2000 where idanimes in (6,7,8,9,10);
update animes set ano = 2015, Personagem = 'naruto'  where idanimes in (10,11,12,13);

alter table animes modify nome varchar(72);
desc animes;
describe animes;

alter table animes drop ano;
alter table animes drop column ano;
select * from animes;
select * from animes order by titulo;
select * from animes order by favoritos;
select * from animes order by idanimes desc;
select * from animes order by idanimes asc;