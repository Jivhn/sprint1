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

-- Empresas e funcionarios check

create table consulta(
empresa varchar(45),
id_tonel int,
datahora datetime,
temperatura float,
gas float);

insert into consulta values
('Vale dos Ventos Vinhos', 1, '2024-09-01 00:00:00', 18.5, 0.75),
('Vale dos Ventos Vinhos', 1, '2024-09-01 06:00:00', 18.3, 0.72),
('Vale dos Ventos Vinhos', 1, '2024-09-01 12:00:00', 18.8, 0.78),
('Vale dos Ventos Vinhos', 1, '2024-09-01 18:00:00', 18.6, 0.76),
('Vale dos Ventos Vinhos', 2, '2024-09-01 00:00:00', 19.0, 0.80),
('Vale dos Ventos Vinhos', 2, '2024-09-01 06:00:00', 18.9, 0.79),
('Vale dos Ventos Vinhos', 2, '2024-09-01 12:00:00', 19.2, 0.83),
('Vale dos Ventos Vinhos', 2, '2024-09-01 18:00:00', 19.1, 0.82),
('Vale dos Ventos Vinhos', 3, '2024-09-01 00:00:00', 17.5, 0.70),
('Vale dos Ventos Vinhos', 3, '2024-09-01 06:00:00', 17.8, 0.73),
('Vale dos Ventos Vinhos', 3, '2024-09-01 12:00:00', 17.9, 0.74),
('Vale dos Ventos Vinhos', 3, '2024-09-01 18:00:00', 18.0, 0.75),
('Vinícola Pedra Branca', 1, '2024-09-01 00:00:00', 20.0, 0.90),
('Vinícola Pedra Branca', 1, '2024-09-01 06:00:00', 19.8, 0.88),
('Vinícola Pedra Branca', 1, '2024-09-01 12:00:00', 20.2, 0.91),
('Vinícola Pedra Branca', 1, '2024-09-01 18:00:00', 20.1, 0.89),
('Vinícola Pedra Branca', 2, '2024-09-01 00:00:00', 21.0, 0.95),
('Vinícola Pedra Branca', 2, '2024-09-01 06:00:00', 20.9, 0.94),
('Vinícola Pedra Branca', 2, '2024-09-01 12:00:00', 21.2, 0.97),
('Vinícola Pedra Branca', 2, '2024-09-01 18:00:00', 21.1, 0.96),
('Vinícola Pedra Branca', 3, '2024-09-01 00:00:00', 19.5, 0.85),
('Vinícola Pedra Branca', 3, '2024-09-01 06:00:00', 19.7, 0.87),
('Vinícola Pedra Branca', 3, '2024-09-01 12:00:00', 19.9, 0.88),
('Vinícola Pedra Branca', 3, '2024-09-01 18:00:00', 19.8, 0.86),
('Encantos da Serra Vinhedos', 1, '2024-09-01 00:00:00', 22.0, 1.00),
('Encantos da Serra Vinhedos', 1, '2024-09-01 06:00:00', 21.9, 0.98),
('Encantos da Serra Vinhedos', 1, '2024-09-01 12:00:00', 22.1, 1.02),
('Encantos da Serra Vinhedos', 1, '2024-09-01 18:00:00', 22.2, 1.01),
('Encantos da Serra Vinhedos', 2, '2024-09-01 00:00:00', 21.5, 0.92),
('Encantos da Serra Vinhedos', 2, '2024-09-01 06:00:00', 21.4, 0.91),
('Encantos da Serra Vinhedos', 2, '2024-09-01 12:00:00', 21.7, 0.94),
('Encantos da Serra Vinhedos', 2, '2024-09-01 18:00:00', 21.6, 0.93),
('Encantos da Serra Vinhedos', 3, '2024-09-01 00:00:00', 20.0, 0.85),
('Encantos da Serra Vinhedos', 3, '2024-09-01 06:00:00', 20.1, 0.87),
('Encantos da Serra Vinhedos', 3, '2024-09-01 12:00:00', 20.2, 0.88),
('Encantos da Serra Vinhedos', 3, '2024-09-01 18:00:00', 20.3, 0.89);

select * from consulta;


-- tonel check 

create table tonel(
id_tonel int,
empresa varchar(45),
idSensor int);

insert into tonel values 
(1, 'Vale dos Ventos Vinhos', 101),
(2, 'Vale dos Ventos Vinhos', 102),
(3, 'Vale dos Ventos Vinhos', 103),
(1, 'Vinícola Pedra Branca', 104),
(2, 'Vinícola Pedra Branca', 105),
(3, 'Vinícola Pedra Branca', 106),
(1, 'Encantos da Serra Vinhedos', 107),
(2, 'Encantos da Serra Vinhedos', 108),
(3, 'Encantos da Serra Vinhedos', 109);
select * from tonel;



-- sensor check 

create table sensor(
idSensor int primary key auto_increment);

alter table sensor auto_increment = 100;
insert into sensor values
(default),
(default),
(default),
(default),
(default),
(default),
(default),
(default),
(default);
select * from sensor;
insert into sensor values(default);
delete from sensor where idSensor = 100;



-- cadastro das empresas

select * from cadastro_empresa;
insert into cadastro_empresa values 
(default, '08737145000181', 'Vale dos Ventos Vinhos','Vale dos Ventos Produção de Vinhos LTDA', 'contato@valedosventosvinhos.com.br', '(11) 3456-7890', 50);
insert into cadastro_empresa values
(default, '04614886000114', 'Vinícola Pedra Branca','Pedra Branca Vinhedos e Vinhos LTDA', 'atendimento@pedrabrancavinhedos.com.br', '(21) 2345-6789', 35);
insert into cadastro_empresa values
(default, '27681036000134', 'Encantos da Serra Vinhedos','Encantos da Serra Vinicultura LTDA', 'info@encantosdaserra.com.br', '(31) 4567-8901', 45);



-- cadastro dos funcionarios 

insert into cadastro_func values
(default,'08737145000181', 'Mariana Souza Costa', 'mariana.costa@valedosventosvinhos.com.br','Produção','Enóloga'),
(default,'08737145000181', 'João Henrique Almeida', 'joao.almeida@valedosventosvinhos.com.br','Administrativo','Gerente Administrativo'),
(default,'08737145000181', 'Laura Martins Pereira', 'laura.pereira@valedosventosvinhos.com.br','Marketing','Coordenadora de Marketing'),
(default,'08737145000181', 'Rafael Oliveira Mendes', 'rafael.mendes@valedosventosvinhos.com.br','Vendas','Supervisor de Vendas'),
(default,'08737145000181', 'Bruna Carvalho Silva', 'bruna.silva@valedosventosvinhos.com.br','Produção','Assistente de Vinificação'),
(default,'04614886000114', 'Felipe Santos Lima', 'felipe.lima@pedrabrancavinhedos.com.br','Produção','Sommelier'),
(default,'04614886000114', 'Amanda Ferreira Gomes', 'amanda.gomes@pedrabrancavinhedos.com.br','Financeiro','Analista Financeira'),
(default,'04614886000114', 'Lucas Vieira Rocha', 'lucas.rocha@pedrabrancavinhedos.com.br','Recursos Humanos','Coordenador de RH'),
(default,'04614886000114', 'Gabriela Menezes Santos', 'gabriela.santos@pedrabrancavinhedos.com.br','Marketing','Analista de Comunicação'),
(default,'04614886000114', 'Thiago Nogueira Souza', 'thiago.souza@pedrabrancavinhedos.com.br','Produção','Técnico em Vinhedos'),
(default,'27681036000134', 'Carolina Ribeiro Monteiro', 'carolina.monteiro@encantosdaserra.com.br','Comercial','Gerente de Vendas'),
(default,'27681036000134', 'Diego Almeida Borges', 'diego.borges@encantosdaserra.com.br','Produção','Enólogo Chefe'),
(default,'27681036000134', 'Fernanda Oliveira Fernandes', 'fernanda.fernandes@encantosdaserra.com.br','Qualidade','Coordenadora de Controle de Qualidade'),
(default,'27681036000134', 'Ricardo Pereira Lima', 'ricardo.lima@encantosdaserra.com.br','Logística','Supervisor de Logística'),
(default,'27681036000134', 'Paula Nunes Barros', 'paula.barros@encantosdaserra.com.br','Administrativo','Assistente Administrativa');

select * from cadastro_func;
alter table cadastro_func add column nome_empresa varchar(45);
update cadastro_func set nome_empresa = 'Vale dos Ventos Vinhos' where id_funcionario_empresa in (1,2,3,4,5);
update cadastro_func set nome_empresa = 'Vinícola Pedra Branca' where id_funcionario_empresa in (6,7,8,9,10);
update cadastro_func set nome_empresa = 'Encantos da Serra Vinhedos' where id_funcionario_empresa in (11,12,13,14,15);

select * from cadastro_empresa;
update cadastro_empresa set qtd_funcionarios = 5 where id_empresa in (1,2,3);
select * from consulta;





