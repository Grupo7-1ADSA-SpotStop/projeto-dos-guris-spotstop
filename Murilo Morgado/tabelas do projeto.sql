create database spotstop;
use spotstop;

create table clienteEmpresa (
idEmpresa int primary key auto_increment,
cnpj char (14),
nomeEmpresa varchar (100),
representanteEmpresa varchar (100),
enderecoEmpresa varchar (100)
);

insert into clienteEmpresa (cnpj, nomeEmpresa, representanteEmpresa, enderecoEmpresa) values
(15897635279438, 'Anália Franco', 'João', 'Av. Regente Feijó'),
(89637512486537, 'Shopping D', 'Maria', 'Pq. Novo Mundo'),
(98647531248653, 'Shopping Tatuapé', 'Miguel', 'Rua Tuiuti');

select * from clienteEmpresa;

create table sensor (
idSensor int primary key auto_increment,
modelo varchar (50),
tipoCaptacao varchar (50),
statusSensor varchar (30)
);

insert into sensor (modelo, tipoCaptacao, statusSensor) values
('ABC123', 'infravermelho', 'ativo'),
('HGT674', 'infravermelho', 'manutenção'),
('TMS472', 'infravermelho', 'inativo');

select * from sensor;

create table dadoSensor (
idSensor2 int primary key auto_increment,
numeroVaga varchar (30),
presenca int
);

alter table dadoSensor add constraint chkPresenca check
(presenca in (0, 1));

alter table dadoSensor add column horarioEntrada datetime default current_timestamp;

insert into dadoSensor (numeroVaga, presenca) values
('A05', 1),
('B16', 0),
('D09', 1);

select * from dadoSensor;