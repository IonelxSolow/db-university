/*
17 JOIN

- cosa sono
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN (non disponibili in MySQL --> UNION)
- CROSS JOIN (unisce entrambe le tabelle cosi come sono)
SELECT column_name -- una o tutte le collone che ci servono
FROM table1
CROSS JOIN table2; 

SELECT campi
FROM tabella1
INNER JOIN tabella2 ON condizione;

SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
INNER JOIN uffici ON dipartimenti.id_ufficio = uffici.id_ufficio;
*/

/*
-- selezioniamo tutti i campi che ci servono sia dalla tabella 1 che dalla tabella 2
SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio -- voglio sapere l'id_dipendente, nome dipendente, nome ufficio
FROM dipendenti -- andiamo a prendere la prima tabella (quella di SX)
-- INNER JOIN andiamo a prendere solo i dati corrispondenti in entrambe le tabelle
-- uffici... prendiamo la tabella 2 a ON(a condizione che) dipendenti.id_ufficio sia = a uffici.id_ufficio
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
*/

/*
SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti 
-- LEFT JOIN restituisce tutta la tabella SX a prescindere e dalla tabella DX solo gli uffici a cui sono assegnati dei dipendenti
LEFT JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
*/

/*
SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti 
-- RIGHT JOIN restituisce tutta la tabella DX a prescindere e dalla tabella SX solo i dipendenti che sono assegnati
RIGHT JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
*/

/*
FULL JOIN (non suportato in MySQL)
-- va a prendere entrambe le tabelle e le unisce codi come sono
-- vediamo UNION nel file #14
*/













-- qua sotto ho aggiunto la tabella uffici e modificato la tabella dipendenti

/*
insert into dipendenti (nome, data_assunzione, stipendio, telefono, id_ufficio)
values  -- i seguenti valori(che devono anche questi rispettare l'ordine delle colonne)
('Luca Rossi', '2020-02-22', '1500', '2499856100', 1),
('Marco Verdi', '2018-05-30', '1300', '0085834210', 2),
('Anna Neri', '2019-07-13', '1700', '2944101834', 2),
('Antonio Mari', '2019-08-01', '1400', '9854339500', 4),
('Maria Monti', '2020-11-23', '1350', '5892033098', 4),
('Leonardo Valli', '2020-12-11', '1250', '0092884712');
*/
/*
CREATE TABLE if not exists uffici(
	id_ufficio int UNSIGNED not null AUTO_INCREMENT,
  nome_ufficio varchar(255) not null,
  PRIMARY KEY(id_ufficio)
);
*/
/*
insert into uffici (nome_ufficio)
values
('Amministrazione'),
('Servizio Clienti'),
('Risorse Umane'),
('Vendite');
*/

