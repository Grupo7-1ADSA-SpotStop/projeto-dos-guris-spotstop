USE SPOTSTOP;

CREATE TABLE dadosSensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    modeloSensor VARCHAR (40),
    binario TINYINT, CONSTRAINT chkBinario
		CHECK (binario IN(0,1))
    );
    
DESC dadosSensor;
DROP TABLE dadosSensor;

INSERT INTO dadosSensor(modeloSensor, binario) VALUES
	('abc123', 0),
    ('def123', 1),
    ('ghi123', 0),
    ('jkl123', 0),
    ('mno123', 1);
    
SELECT * FROM dadosSensor;

INSERT INTO dadosSensor (modeloSensor, binario) VALUES
	('pqr123', 1),
    ('stu123', 0);