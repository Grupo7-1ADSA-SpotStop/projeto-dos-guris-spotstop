create database spotstop;

use spotstop;

create table cadastroCliente (
idEmpresa int primary key auto_increment,
cnpj varchar (18) unique,
emailEmpresa varchar (50),
senhaEmpresa varchar (50),
nomeEmpresa varchar (100),
representanteEmpresa varchar (100),
enderecoEmpresa varchar (100)
)auto_increment = 1;


create table sensor (
idSensor int primary key auto_increment,
modelo varchar (50),
tipoCaptacao varchar (50),
statusSensor varchar (30)
);

create table dadoSensor (
idSensor2 int primary key auto_increment,
numeroVaga varchar (30),
binario tinyint, constraint chkBinario check (binario in (0, 1))
);

create table staffSuporte (
idFuncionario int primary key auto_increment,
nome varchar (100),
emailFuncionario varchar (100),
telefone varchar (20),
statusFuncionario varchar (40)
);

insert into cadastroEmpresa (cnpj, emailEmpresa, senhaEmpresa, nomeEmpresa, representanteEmpresa, enderecoEmpresa) values
();


insert into sensor (modelo, tipoCaptacao, statusSensor) values
();


insert into dadoSensor (numeroVaga, binario) values
();


insert into staffSuporte (nome, email, telefone, statusFuncionario) values
();

select * from cadastroEmpresa;
select cnpj from cadastroEmpresa;
select nomeEmpresa from cadastroEmpresa;
select representanteEmpresa from cadastroEmpresa;
select enderecoEmpresa from cadastroEmpreso;

select * from sensor;
select modelo from sensor;
select tipoCaptacao from sensor;
select statusSensor from sensor;

select * from dadoSensor;
select numeroVaga from dadoSensor;
select binario from dadoSensor;

select * from staffSuporte;
select nome from staffSuporte;
select emailFuncionario from staffSuporte;
select telefone from staffSuporte;
select statusFuncionario from staffSuporte;