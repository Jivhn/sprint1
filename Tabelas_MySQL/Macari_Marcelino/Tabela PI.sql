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



select * from cadastro_empresa;
insert into cadastro_empresa values 
(default, '08737145000181', 'Vale dos Ventos Vinhos','Vale dos Ventos Produção de Vinhos LTDA', 'contato@valedosventosvinhos.com.br', '(11) 3456-7890', 50);
insert into cadastro_empresa values
(default, '04614886000114', 'Vinícola Pedra Branca','Pedra Branca Vinhedos e Vinhos LTDA', 'atendimento@pedrabrancavinhedos.com.br', '(21) 2345-6789', 35);
insert into cadastro_empresa values
(default, '27681036000134', 'Encantos da Serra Vinhedos','Encantos da Serra Vinicultura LTDA', 'info@encantosdaserra.com.br', '(31) 4567-8901', 45);

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





