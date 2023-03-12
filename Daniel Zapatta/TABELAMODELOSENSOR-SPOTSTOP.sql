USE SPOTSTOP;

CREATE TABLE sensorModelos (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    modeloSensor VARCHAR (50) NOT NULL,
    tipodoSensor VARCHAR (20),
    medicao VARCHAR (40),
    statusSensor VARCHAR (20),
    valor DECIMAL (5,2)
    );
    
DESC sensorModelos;
DROP TABLE sensorModelos;

INSERT INTO sensorModelos (modeloSensor, tipodoSensor, medicao, statusSensor, valor) VALUES
	('abc123', 'bloqueio', 'ultrassonico', 'ativo', 15.00),
    ('def123', 'bloqueio', 'infravermelho', 'ativo', 20.00),
    ('ghi123', 'bloqueio', 'infravermelho', 'inativo', 20.00),
    ('jkl123', 'bloqueio', 'ultrassonico', 'inativo', 15.00),
    ('mno123', 'bloquieo', 'infravermelho', 'manuntencao', 20.00);
    
SELECT * FROM sensorModelos;