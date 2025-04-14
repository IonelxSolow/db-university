/*
20 ALIAS

- introduzione
- alias per tabelle
- alias per colonne

SELECT nome, DATE_FORMAT(data_assunzione, '%e %M, %Y') FROM dipendenti;
*/

/*
SELECT dipendenti.id_dipendenti, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
*/
-- e se vogliamo anche altre colonne ad esempio data_assunziona, stipendio, telefono?
/*
SELECT dipendenti.id_dipendenti, dipendenti.nome, dipendenti.data_assunzione, 
dipendenti.stipendio, dipendenti.telefono, uffici.nome_ufficio -- diventa parecchio lunga

FROM dipendenti
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
*/

/*
-- ALIAS ci aiuta a rinominare la tabella 

-- accorciamo un pò fornendo l'ALIAS x alla tabell dipendenti e ALIAS y alla tabella uffici
SELECT x.id_dipendenti, x.nome, x.data_assunzione, x.stipendio, x.telefono, y.nome_ufficio
FROM dipendenti AS x  -- rinomina la tabella dipendenti con x <- ALIAS (AS)
INNER JOIN uffici AS y -- rinomina la tabella dipendenti con y <- ALIAS (AS)
ON x.id_ufficio = y.id_ufficio;
*/


/*
-- seleziona la colonna nome, seleziona data_assunzione (esegui la funzione DATE_FORMAT) sotto ALIAS data_assunzione(o anche pippo) dalla tabella dipendenti
SELECT nome, DATE_FORMAT(data_assunzione, '%e %M, %Y') AS data_assunzione FROM dipendenti;
-- DATE_FORMAT formatta la data lato backend da es: 2020-02-22 a 22 February, 2018
*/