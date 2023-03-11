create database spotstop;

use spotstop;

-- TABELA CADASTROCLIENTE

create table cadastroCliente (
idEmpresa int primary key auto_increment,
cnpj char (18) unique not null,
emailEmpresa varchar (50) not null,
senhaEmpresa varchar (50) not null,
nomeEmpresa varchar (100) not null,
representanteEmpresa varchar (100) not null,
enderecoEmpresa varchar (100) not null
)auto_increment = 1;

drop table cadastroCliente;

truncate table cadastroCliente;

insert into cadastroCliente (cnpj, emailEmpresa, senhaEmpresa, nomeEmpresa, representanteEmpresa, enderecoEmpresa) values
('30.751.886/0001-76', 'patiopaulista@gmail.com', '0123456789', 'Shopping Patio Paulista', 'Francisco Schwartz', 'R. Treze de Maio, 1947 - Bela Vista, São Paulo - SP, 01327-900'),
('03.384.220/0001-54', 'analiafranco@hotmail.com', '1234567890','Shopping Analia Franco', 'César Romano', 'Av. Reg. Feijó, 1739 - Jardim Analia Franco, São Paulo - SP, 03342-900');

select * from cadastroCliente;
select cnpj from cadastroCliente;
select emailEmpresa from cadastroCliente;
select senhaEmpresa from cadastroCliente;
select nomeEmpresa from cadastroCliente;
select representanteEmpresa from cadastroCliente;
select enderecoEmpresa from cadastroCliente;

-- TABELA SENSOR

create table sensor (
idSensor int primary key auto_increment,
modelo varchar (50) not null,
tipoCaptacao varchar (50) not null,
statusSensor varchar (30) not null, constraint chkStatus check (statusSensor in ('Operando', 'Desligado', 'Manutenção'))
);

drop table sensor;

truncate table sensor;

insert into sensor (modelo, tipoCaptacao, statusSensor) values
('AX1', 'Infravermelho', 'Operando'),
('XV7', 'Ultrassonico', 'Desligado'),
('SJ5', 'Infravermelho', 'Manutenção');

select * from sensor;
select modelo from sensor;
select tipoCaptacao from sensor;
select statusSensor from sensor;

-- TABELA DADOSENSOR

create table dadoSensor (
idSensor2 int primary key auto_increment,
numeroVaga varchar (30) not null,
binario tinyint not null, constraint chkBinario check (binario in (0, 1))
);

drop table dadoSensor;

truncate table dadoSensor;

insert into dadoSensor (numeroVaga, binario) values
('X-9', 1),
('Y-7', 0),
('Z-5', 1);

select * from dadoSensor;
select numeroVaga from dadoSensor;
select binario from dadoSensor;

-- TABELA STAFFSUPORTE

create table staffSuporte (
idFuncionario int primary key auto_increment,
nome varchar (100) not null,
emailFuncionario varchar (100) not null,
telefone varchar (20) not null,
statusFuncionario varchar (40) not null constraint chkFuncionario check (statusFuncionario in ('Operando', 'Livre', 'Ausente'))
);

drop table staffSuporte;

truncate table staffSuporte;

insert into staffSuporte (nome, emailFuncionario, telefone, statusFuncionario) values
('Jonas Cardoso', 'jonasc@outlook.com', '00-123456789', 'Operando'),
('Beatriz Silva', 'beatrizs@outlook.com', '11-234567890', 'Livre'),
('Jean Matsui', 'jeanm@outlook.com', '22-345678901', 'Ausente');

select * from staffSuporte;
select nome from staffSuporte;
select emailFuncionario from staffSuporte;
select telefone from staffSuporte;
select statusFuncionario from staffSuporte;














