CREATE DATABASE site_wynn;
USE site_wynn;

CREATE TABLE cadastro_PJ(
	idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome_fantasia varchar(45) NOT NULL,
    razao_social varchar(45) NOT NULL,
    email varchar(20) NOT NULL,
    cnpj char(14) NOT NULL,
    telefone varchar(14) NOT NULL,
    qtd_usuario int NOT NULL,
    data_criacao datetime NOT NULL
);

CREATE TABLE usuario_PF(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    cnpj char(14) NOT NULL,
    nome varchar(45) NOT NULL,
    email varchar(20) NOT NULL,
    setor varchar(20) NOT NULL,
    cargo varchar(20) NOT NULL
);

CREATE TABLE sensorLM35(
	idLM35 INT PRIMARY KEY AUTO_INCREMENT,
    valor float NOT NULL,
    dataHora datetime NOT NULL
);

CREATE TABLE sensorMQ2(
	idMQ2 INT PRIMARY KEY AUTO_INCREMENT,
    valor float NOT NULL,
    dataHora datetime NOT NULL
);

