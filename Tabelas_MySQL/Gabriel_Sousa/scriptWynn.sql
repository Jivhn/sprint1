CREATE DATABASE dbWynn;
USE dbWynn;


CREATE TABLE tbEmpresa (
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR (80) NOT NULL,
    cnpjEmpresa CHAR (19) NOT NULL,
	emailEmpresa VARCHAR (70) NOT NULL,
    telEmpresa VARCHAR(14) NOT NULL,
    cepLogradouroEmpresa VARCHAR (80) NOT NULL,
    logradouroEmpresa VARCHAR (80),
    bairroLogradouroEmpresa VARCHAR(70),
    cidadeLogradouroEmpresa VARCHAR (50),
    ufLogradouroEmpresa CHAR(2),
    numLogradouroEmpresa VARCHAR (5),
    compLogradouroEmpresa VARCHAR (150)
);

CREATE TABLE tbFuncionarioEmpresa (
idFuncionarioEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeFuncionarioEmpresa VARCHAR (100) NOT NULL,
idEmpresa INT NOT NULL,
foneFuncionarioEmpresa VARCHAR (14),
emailFuncionarioEmpresa VARCHAR (70) NOT NULL,
senhaFuncionarioEmpresa VARCHAR(45) NOT NULL,
cargoFuncionarioEmpresa VARCHAR (45)
);

CREATE TABLE tbControleTonel (
	idControleTonel INT PRIMARY KEY AUTO_INCREMENT,
    idEmpresa INT,
    idMicroControlador INT,
    medidaTotalMQ2 FLOAT NOT NULL,
    medidaTotalLM35 FLOAT NOT NULL
);

CREATE TABLE tbSensor (
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    idControleTonel INT,
    tipoSensor VARCHAR (45),
    statusSensor VARCHAR (45)
    CONSTRAINT chk_statusSensor CHECK (statusSensor IN('Ativo', 'Inativo')),
    CONSTRAINT chk_tipoSensor CHECK (tipoSensor IN('MQ2', 'LM35'))
);

CREATE TABLE tbMedidaSensor (
	idMedidaSensor INT PRIMARY KEY AUTO_INCREMENT,
    idSensor INT,
    medidaSensor FLOAT NOT NULL
);

CREATE TABLE tbMicroControlador (
	idMicroControlador INT PRIMARY KEY AUTO_INCREMENT,
    situacaoMicroControlador VARCHAR (45),
     CONSTRAINT chk_situacaoMicroControlador CHECK (situacaoMicroControlador IN('Ativo', 'Inativo'))
);


INSERT INTO tbEmpresa (nomeEmpresa, cnpjEmpresa, emailEmpresa, telEmpresa, cepLogradouroEmpresa, logradouroEmpresa, bairroLogradouroEmpresa, cidadeLogradouroEmpresa, ufLogradouroEmpresa, numLogradouroEmpresa, compLogradouroEmpresa)VALUES
	('Vinícola Campestre', '98.521.909/0002-70', 'vinicolaCampestre@gmail.com', '114940028922',
    '95205000',  'BR-116 KM 30', 'Bairro Passo da Porteira', 'Vacaria', 'RS', '1410', default)
	,('Vinícola Abreu Garcia', '10.327.131/0001-31', 'abreuGarcia@gmail.com', '114988888888',
    '88580000', 'Fazenda Nova Dela Costa', 'Alto Travessão', 'Campo Belo do Sul', 'SC', default,
    'Sem número');
    
INSERT INTO tbFuncionarioEmpresa (nomeFuncionarioEmpresa, idEmpresa,foneFuncionarioEmpresa, emailfuncionarioEmpresa, senhafuncionarioEmpresa, cargofuncionarioEmpresa) VALUES 
('Macari Marcelino', 1, '11956789012', 'macari,marcelino@gmail.com', '1234', 'Gerente'),
('Lucas Aielo', 2, '11988776655', 'lucas.aielo@gmail.com', '1234', 'Énologo'),
('Gabriel Sousa', 1, '11922334455', 'gabriel.sousa@gmail.com', '1234', 'Énologo');

INSERT INTO tbMicroControlador (situacaoMicroControlador) 
VALUES 
('Ativo'), 
('Ativo'), 
('Ativo');

INSERT INTO tbControleTonel (idEmpresa, idMicroControlador, medidaTotalMQ2, medidaTotalLM35) 
VALUES 
(1, 1, 23.5, 28.3), 
(2, 2, 50.2, 30.6), 
(3, 3, 48.1, 27.4);

INSERT INTO tbSensor (idControleTonel, tipoSensor, statusSensor) 
VALUES 
(1, 'MQ2', 'Ativo'), 
(1, 'LM35', 'Ativo'), 
(2, 'MQ2', 'Ativo'),
(2, 'LM35', 'Ativo'),
(3, 'MQ2', 'Ativo'),
(3, 'LM35', 'Ativo');

INSERT INTO tbMedidaSensor (idSensor, medidaSensor) 
VALUES 
(1, 23.5), 
(2, 28.3), 
(3, 50.2),
(4, 30.6),
(5, 48.1),
(6, 27.4);

SELECT * FROM tbEmpresa;
SELECT * FROM tbFuncionarioEmpresa;
SELECT * FROM tbMicroControlador;
SELECT * FROM tbControleTonel;
SELECT * FROM tbSensor;
SELECT * FROM tbMedidaSensor;

-- SELECT QUE MOSTRA A MEDIDA DOS SENSORES
SELECT CASE
	WHEN idSensor IN(1,3,5) THEN CONCAT('A medida do sensor de gás ', idSensor, ' é: ', medidaSensor, 'ppm' )
	WHEN idSensor IN(2,4,6) THEN CONCAT('A medida do sensor de temperatura ', idSensor, ' é: ', medidaSensor, '°') END AS 'Medida dos sensores'
FROM tbMedidaSensor ;

-- SELECT QUE MOSTRA A QUAL TONÉL O SENSOR PERTENCE
SELECT CONCAT('O sensor ', idSensor,' ' ,tipoSensor, ', pretence ao tonél ', idControleTonel, ', e o status dele está ',statusSensor) AS 'Identificação dos sensores' FROM tbSensor;

-- SELECT QUE MOSTRA A QUE EMPRESE PERTENCE O TONÉL
SELECT CONCAT('O Tonél ', idControleTonel, ' pertence a empresa ',idEmpresa, ', esá utilizando o micro controlador ', idMicroControlador, '. Volume de gás: ', medidaTotalMQ2, 'PPM', ' Temperatura: ', medidaTotalLM35, '°') AS 'Informações dos tonéis' FROM tbControleTonel;





