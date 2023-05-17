CREATE DATABASE blogtachanka;

USE blogtachanka;

drop table if exists usuario;
drop table if exists dados_usuario;
drop table if exists agentes;

CREATE TABLE usuario(
id int auto_increment,
nome varchar(30),
apelido varchar(20) not null,
email varchar(45) not null,
senha varchar(20) not null,
primary key idusuario(id))
;

create table dados_usuario(
id int auto_increment,
agente_mais_utilizado varchar(30),
agente_mais_banido varchar(30),
fkUsuario int not null,
constraint fkUsuario foreign key (fkUsuario) references	blogtachanka.usuario(id),
constraint pk_dados_usuario primary key  (id, fkUsuario) );

create table agente(
id int auto_increment,
nome varchar(30),
ix_banimento varchar(5),
ix_pick varchar(5),
fkuser int,
fkDados_usuario int,
primary key idagente(id),
constraint fkuser foreign key (fkuser) references	blogtachanka.usuario(id),
constraint fkDados_usuario foreign key (fkDados_usuario) references blogtachanka.dados_usuario(id)
);


