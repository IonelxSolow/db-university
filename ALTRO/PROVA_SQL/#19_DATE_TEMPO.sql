/*
23 DATE è TEMPO

- introduzione
- tipi di dati relativi al tempo
- now()
- proprietà di aggiornamento automatico
			DEFAULT CURRENT_TIMESTAMP
      ON UPDATE CURRENT_TIMESTAMP
      
- estrare solo certe parti della data
			YEAR(), MONTH(), DAYOFMONTH(), MONTHNAME(), DAYNAME(), HOUR(), MINUTE(), SECOND()
      
- formatazione date
			DATE_FORMAT(birth_date, '%M %e, %Y')
      
CREATE TABLE IF NOT EXIST prova (
			id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL UNIQUE,
      data_nascita DATE NOT NULL,
      data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP,
      data_INSERIMENTO TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
*/

/*
CREATE TABLE IF NOT EXISTS prova (
			id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL UNIQUE,
      data_nascita DATE NOT NULL,
      data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP,
      data_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
*/

-- INSERT INTO prova (nome, data_nascita, data_inserimento)
-- VALUES ('Luca', '1995-06-06', NOW());

-- INSERT INTO prova (nome, data_nascita)
-- VALUES ('Marco', '1998-03-16');

-- UPDATE prova SET nome = 'Antonio'
-- WHERE id = 1;

-- UPDATE prova SET nome = 'Leonardo'
-- WHERE id = 2;

-- YEAR(), MONTH(), DAYOFMONTH(), MONTHNAME(), DAYNAME(), HOUR(), MINUTE(), SECOND()

-- SELECT nome, YEAR(data_nascita) FROM prova
-- SELECT nome, MONTH(data_nascita) FROM prova
 
-- SELECT nome, DATE_FORMAT(data_nascita, '%M %e, %Y') AS data FROM prova;
-- SELECT nome, DATE_FORMAT(data_nascita, '%e %M, %Y') AS data FROM prova;