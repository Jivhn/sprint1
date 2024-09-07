create database wynnBD;
use wynnBD;

create table cadastro_empresa(
id_empresa int primary key auto_increment,
cnpj char(14) not null,
nome_fantasia varchar(45) not null,
razao_social varchar(45) not null,
email varchar(45) not null,
telefone varchar (14) not null,
qtd_funcionarios int not null);


create table cadastro_func(
id_funcionario_empresa int primary key auto_increment,
cnpj char(14) not null,
nome_func varchar (45) not null,
email_func varchar (45) not null,
setor varchar (45) not null,
cargo varchar (45) not null);

create table consulta(
id_tonel int,
datahora datetime,
temperatura float,
gas float);

create table tonel(
id_tonel int primary key auto_increment,
id_sensorM int,
id_sensorL int);

create table sensorM(
id_sensorM int primary key auto_increment,
id_tonel int);

create table sensorL(
id_sensorL int primary key auto_increment,
id_toenl int);






