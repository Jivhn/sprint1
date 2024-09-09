CREATE DATABASE site_wynn;
USE site_wynn;

CREATE TABLE cadastro_PJ(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
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

CREATE TABLE sensores(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    tipo varchar(4)
);

CREATE TABLE microcontroladores(
	idMicrocontrolador INT PRIMARY KEY,
    statusMic varchar(10),
    CONSTRAINT chk_statuesMic
    CHECK (statusMic IN('Ativio','Inativo'))
);

CREATE TABLE tonel(
	idTonel INT PRIMARY KEY AUTO_INCREMENT,
    idEmpresa INT,
    idMicrocontrolador INT NOT NULL,
    idSensor1 INT NOT NULL,
    idSensor2 INT NOT NULL
);

CREATE TABLE consulta(
	idConsulta INT PRIMARY KEY AUTO_INCREMENT,
    idTonel INT,
    valorGas float,
    valorTemperatura float,
    dataHora datetime
);

SHOW TABLES;



