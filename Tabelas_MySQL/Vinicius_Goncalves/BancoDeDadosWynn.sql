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
(default, 'Ana Silva', 'ana.silva@empresa.com', '12345678000195', 'Marketing'),
(default, 'Carlos Pereira', 'carlos.pereira@empresa.com', '98765432000156', 'Logistica'),
(default, 'Maria Souza', 'maria.souza@empresa.com', '11223344000167', 'Financeiro');

CREATE TABLE tonel(
idTonel INT PRIMARY KEY AUTO_INCREMENT,
idEmpresa INT,
idMicrocontrolador INT,
idLM35 INT,
idMQ2 INT,
dataHora INT,
valor DATETIME
);