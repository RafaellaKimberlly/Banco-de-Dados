create database Atleta;
use atleta;
create table atleta(
idatleta int primary key,
Nome varchar(40),
Modalidade varchar(40),
qtdMedalha int(30)
);
select * from atleta;
insert into atleta values (01,'daiane dos santos', 'ginastica', 10);
insert into atleta values (02, 'gabriel medina','surfe',5);
insert into atleta values (03,'milena titonelli','taekwondo',2);
insert into atleta values (04,'maria ieda','pentatlo',1);
insert into atleta values (05,'lucas cielo','natação',10);
insert into atleta values (06,'marcus d almeida','tiro ao arco',2);
select * from atleta;

select nome,qtdmedalha from atleta;
select * from atleta order by modalidade;
select * from atleta order by qtdmedalha desc;
select * from atleta where nome like '%s%';
select * from atleta where nome like 'l%';
select * from atleta where nome like '%o';
select * from atleta where nome like '_r%';
drop database atleta;

