CREATE DATABASE sistema;

USE sistema;

CREATE TABLE CadEmpresa(
idUsuarioEmp INT PRIMARY KEY AUTO_INCREMENT,
razao_social VARCHAR(50) NOT NULL,
email VARCHAR(40) NOT NULL,
senha VARCHAR(25) NOT NULL,
CNPJ CHAR(14) NOT NULL,
celular CHAR(11) NOT NULL,
qtd_usuarios INT NOT NULL
);

INSERT INTO CadEmpresa VALUES
(default, 'Vinhos Aurora SA', 'contato@aurora.com.br', '12345678000195', 51987654321, 7),
(default, 'Casa Valduga Ltda', 'vendas@valduga.com.br', '98765432000156', 51912345678, 8),
(default, 'Miolo Wine Group', 'admin@miolowine.com.br', '11223344000167', 51999887766, 8);

SELECT * FROM CadEmpresa;

SELECT * FROM CadEmpresa
	WHERE razao_social LIKE 'V%';

CREATE TABLE CadFunc(
idUsuarioFunc INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(40) NOT NULL,
senha VARCHAR(25) NOT NULL,
CNPJ CHAR(14) NOT NULL,
setor VARCHAR(20) NOT NULL,
 CONSTRAINT setcheck CHECK(setor in('Marketing', 'Logistica', 'Financeiro', 'Comercial', 'Produção', 'Gerencia', 'Diretoria'))
);

INSERT INTO CadFunc VALUES
(default, 'Vinicius Gonçalves', 'vinicius@sptech.school', '0123456789', 'Marketing'),
(default, 'Lucas Aiello', 'Lucas@sptech.school', '9874561230', 'Logistica'),
(default, 'Gabriel Souza', 'Gabriel@sptech.school', '1122334455', 'Financeiro');

CREATE TABLE sensorLM35(
idSensorLM35 INT PRIMARY KEY AUTO_INCREMENT,
valor FLOAT,
datahora DATETIME
);

INSERT INTO sensorLM35 VALUES
(1, 23.5, now()),
(2, 25.7, now()),
(3, 24.2, now()),
(1, 25.4, now()),
(2, 24.3, now()),
(3, 21.2, now());

CREATE TABLE sensorMQ2(
idSensorMQ2 INT PRIMARY KEY AUTO_INCREMENT,
valor FLOAT,
datahora DATETIME
);

INSERT INTO sensorMQ2 VALUES
(1, 28, now()),
(2, 23.5, now()),
(3, 33.6, now()),
(1, 27.3, now()),
(2, 24.5, now()),
(3, 31.8, now());

CREATE TABLE Consulta(
idTonel INT PRIMARY KEY,
idEmpresa INT,
idLM35 INT,
idMQ2 INT,
valor FLOAT,
dataHora DATETIME
);

INSERT INTO Consulta VALUES
(1, 'Vinhos Aurora SA', 1, 1, 25.3, now ()),
(6, 'Casa Valduga Ltda', 2, 2, 25.3, now ()),
(12, 'Miolo Wine Group', 3, 3, 25.3, now ());