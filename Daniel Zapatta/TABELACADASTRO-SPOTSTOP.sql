CREATE DATABASE SPOTSTOP;

USE SPOTSTOP;

CREATE TABLE cadastro (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR (80) NOT NULL,
    senha VARCHAR (60) NOT NULL,
    cnpj CHAR (14) UNIQUE NOT NULL,
    nomeEmpresaFilial VARCHAR (80),
    cnpjFilial CHAR (14) UNIQUE
    ) AUTO_INCREMENT = 1000;
    
DESC cadastro;
drop table cadastro;

INSERT INTO cadastro (nomeEmpresa, senha, cnpj, nomeEmpresaFilial, cnpjFilial) VALUES
	('empresa1', '11223344', 01234567891010, '', 00000000000001),
    ('empresa2', '22334455', 12345678910101, 'empresa2.1', 12345678910102),
    ('empresa3', '33445566', 23456789101010, '', 00000000000002),
    ('empresa4', '44556677', 34567891010101, '', 00000000000003),
    ('empresa5', '55667788', 45678910101010, 'empresa5.1', 45678910101012);
    
SELECT * FROM cadastro;

