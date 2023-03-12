create database sprint2;

use sprint2;

create table cadastro (
	id int primary key auto_increment,
    nomeEmpresa varchar(50) not null,
    email varchar(50) not null,
    senha varchar(50) not null,
    cnpj char(18) not null
    );
    
alter table cadastro modify column cnpj char(18) not null;    
desc cadastro;

insert into cadastro (nomeEmpresa, email, senha, cnpj) values
	('Box Delivery', 'boxdelirvery@123.com','123456', '12.345.678/0001-00'),
    ('C6 Bank', 'c6banco@123.com', '12370819', '12.345.678/0001-01'),
    ('Google', 'google@123.com','abc123senha', '92.394.678/0001-01');
    
select email from cadastro;

select * from cadastro where cnpj like '%01';





create table sensores (
	id int primary key auto_increment,
    modelo varchar(50),
    nome varchar(40),
    statusSensor varchar(40)
    );
    
desc sensores;    
    
insert into sensores (modelo, nome, statusSensor) values
	('Bloqueio', 'BOS016F', 'Ativo'),
    ('Bloqueio', 'LM393', 'Em manutenção'),
    ('Temperatura', 'DMI T5TPD', 'Ativo'),
     ('Temperatura', 'My380', 'Em manutenção')
     ;
select * from sensores; 

select * from sensores where statusSensor = 'Em manutenção';




create table suporte (
	id int primary key auto_increment,
    funcionario varchar(50),
    dtChamado date,
    urgencia varchar(40)
    );
    
insert into suporte (funcionario, dtChamado, urgencia) values
		('Brian', '2024-01-03', 'Muita urgência'),
        ('Daniel', '2024-07-11', 'Pouca urgência'),
        ('Murilo', '2025-12-12', 'Desejável')
        ;
        
select * from suporte where urgencia = 'Muita urgência';

select * from suporte where funcionario = 'Brian';




create table dadoSensor (
	id int primary key auto_increment,
    localVaga varchar(30),
    binario int
    );
    
alter table dadoSensor add constraint chKbinario check (binario in (0, 1));

insert into dadoSensor (localVaga, binario) values
		('Andar 3, Setor B', '1'),
        ('Andar 2, Setor F', '0'),
        ('Andar 1, Setor G', '1')
        ;
        
select * from dadoSensor where binario = '1';        
        
    