create database wynn;
use wynn;


create table empresa (
	idEmpresa int primary key auto_increment,
    nome varchar(45) not null,
    email varchar(45) not null,
    cnpj char(14) not null,
    telefone char(8) not null
);

insert into empresa values
	(default, 'WineMerch', 'winemerch@gmail.com', '12345678901234', '12345678'),
	(default, 'Vinícola Vale do Sol', 'valedosol@gmail.com', '12345678901233', '12345677'),
	(default, 'Quinta dos Ventos', 'quintaventos@gmail.com', '12345678901222', '12345666'),
	(default, 'Terra Serena', 'terraserena@gmail.com', '12345678901111', '12345555'),
	(default, 'Estrela do Sul', 'estrela_sul@gmail.com', '12345678900000', '12344444');
    
select * from empresa;

create table usuários (
	idUsuario int primary key auto_increment,
    nome varchar(45),
    email varchar(70),
    senha varchar(45),
    acesso char(1),
		constraint chkAcesso check (acesso in (1, 2 ,3))
)auto_increment = 1000;
-- O QUE É ESSE ACESSO?
-- RESUMO: NÍVEL DE ACESSO DO USUÁRIO, SENDO 1 O MAIS BAIXO E O 3 O MAIS ALTO

insert into usuários values
	(default, 'Erick Soo Ho Lee', 'ericklee@gmail.com', '1234567890', 3),
	(default, 'Jinwoo Kin', 'jinwoo@gmail.com', '1234567899', 2),
	(default, 'Lucas Aiolli', 'ericklee@gmail.com', '1234567888', 1),
	(default, 'Macari', 'macari@gmail.com', '1234567777', 3),
	(default, 'Gabriel', 'gabriel@gmail.com', '1234566666', 2),
	(default, 'Vinicius', 'vinicius@gmail.com', '1234555555', 1);
    
select * from usuários;

create table sensores (
	idSensor int primary key auto_increment,
    status varchar(15),
    tipo char(6)
)auto_increment = 2000;

insert into sensores values
	(default, 'Ligado', 'LM35'),
	(default, 'Desligado', 'MQ-2'),
	(default, 'Ligado', 'NMQ-22'),
	(default, 'Ligado', 'LM35'),
	(default, 'Desligado', 'LM35'),
	(default, 'Ligado', 'MQ-2');
    
select * from sensores;
select status as Condição,
	tipo as 'Tipo do Sensor'
		from sensores;
        
create table leitura (
	idLeitura int primary key auto_increment,
    temperatura double,
    gas double,
    dtHora datetime default current_timestamp
);

insert into leitura values
	(default, 25, 15, '2024-09-07 14:56:00'),
	(default, 24, 11, '2024-09-07 14:57:00'),
	(default, 26, 20, '2024-09-07 14:58:00'),
	(default, 30, 11, '2024-09-07 14:59:00'),
	(default, 40, 10, '2024-09-07 15:00:00');
    
select * from leitura;
select temperatura as °C,
	gas as Gas,
		dtHora,
			date_format(dtHora, '%H:%i:%s') as 'Data e Hora'
				from leitura;
                