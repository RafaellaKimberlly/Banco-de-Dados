create database Faculdade;
use faculdade;
create table aluno(
ra int primary key,
nome varchar(50),
bairro varchar(40)
);
select * from aluno;
select nome from aluno;

insert into aluno values(10,'julia','parana'), (20,'ronald','mooca');