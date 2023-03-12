USE SPOTSTOP;

CREATE TABLE staffSuporte (
	idChamado INT PRIMARY KEY AUTO_INCREMENT,
    idSensor INT,
    nomeFuncionario VARCHAR (40) NOT NULL,
    dataAberturaChamado DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
    ) AUTO_INCREMENT = 1000;
    
DESC staffSuporte;
DROP TABLE staffSuporte;

INSERT INTO staffSuporte (idSensor, nomeFuncionario) VALUES
	(5, 'Luccas Bueno'),
    (19, 'Daniel Zapatta'),
    (34, 'Diogo Vidal'),
    (78, 'Brian Guimaraes');
    
SELECT * FROM staffSuporte;