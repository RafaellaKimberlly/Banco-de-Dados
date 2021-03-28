create database musica;
use musica;
create table musica(
idmusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);
select * from musica;

insert into musica values (01,'sparkle','radwimps','rock');
insert into musica values (02,'black','pear jam','rock');
insert into musica values (03,'given to fly','pear jam','rock');
insert into musica values (04,'without me','halsey','pop');
insert into musica values (06,'vermilion','slipknot','rock');
insert into musica values (07,'queen','love of my life','rock');
insert into musica values (08,'queen','cool cat','rock');
insert into musica values (09,'wish you were here','pink floyd','rock');
insert into musica values (10,'more than words ','extreme','rock');
select * from musica;
insert into musica values (11,'forgotten love','aurora','pop');
insert into musica values (12,'back to black','amy winehouse','blues');
insert into musica values (13,'lovely','billie eilish','indie/alternative');
insert into musica values (14,'dollhouse','melanie martinez','indie/pop');
insert into musica values (15,'minha fe','zeca pagodinho','samba');
insert into musica values (16,'kiss me','ed sheeran','pop');

select * from musica;
select titulo, artista from musica;
select * from musica where genero = 'rock';
select * from musica where artista = 'pear jam';
select * from musica order by titulo;
select * from musica order by artista desc;
select * from musica where titulo = 's%';
select * from musica where artista = '%a';
select * from musica where titulo = 'a_';
select * from musica where titulo = '_o';

drop database
