create database spotstop;
use spotstop;

create table cliente (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(100),
cnpj char(14) unique,
representante varchar(100)
);

create table sensor (
idSensor int primary key auto_increment,
modelo varchar(30),
tipoCaptacao varchar(40),
statusSensor varchar(30)
);

create table dadoSensor (
idDado int primary key auto_increment,
numeroVaga int,
presenca int, constraint chkPresenca check (presenca in(0,1))
);

create table suporte (
idFuncionario int primary key auto_increment,
nome varchar(100),
email varchar(100),
telefone varchar(20),
statusFuncionario varchar(40)
);




