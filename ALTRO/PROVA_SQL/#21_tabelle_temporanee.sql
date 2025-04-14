/*
25 Tabelle Temporanee

- introduzione 
- sintassi
			CREATE TEMPORARY TABLE table_name (column definirions);
 
- eliminare tabella 
			DROP TEMPORARY TABLE persons

*/

/*
CREATE TEMPORARY TABLE temp1 (
		id INT PRIMARY KEY,
  	name VARCHAR(50) NOT NULL,
  	gender VARCHAR(50) NOT NULL,
  	age INT NOT NULL,
  	total_score INT NOT NULL
);
*/

/*
INSERT INTO temp1
VALUES (1, 'Jolly', 'Female',20, 500),
(2, 'Jon', 'Male', 22, 545),
(3, 'Sara', 'Female', 25, 600),
(4, 'Laura', 'Female', 18, 400),
(5, 'Alan', 'Male', 20, 500),
(6, 'Kate', 'Female', 22, 500),
(7, 'Joseph', 'Male', 18, 643),
(8, 'Mice', 'Male', 23, 543),
(9, 'Wise', 'Male', 21, 499),
(10, 'Elis', 'Female', 27, 400);
*/

-- SELECT * FROM temp1;

-- CREATE TEMPORARY TABLE temp2 SELECT * FROM prova


-- SELECT * FROM temp2;

-- DROP TEMPORARY TABLE temp1;

-- SELECT * FROM temp1; -- non esiste perchè cancellata


-- se si chiude la sessione del server e poi si riapre la tebella temporanea non sarà piu disponibile.(cancellata)

-- SELECT * FROM temp2; -- non esiste perchè cancellata dalla riapertura della sessione