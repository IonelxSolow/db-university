/*
11 ORDER BY (sort/ sorting/ ordinamento)

- sintassi
- ordinare una sola colonna
- ordinare per multiple colonne

SELECT column_list
FROM table_name
ORDER BY column_name ASC | DESC;
*/


/*
-- ordiniamo per una sola colonna con ASC (ascendente) o DESC (descendente)
SELECT *
FROM dipendenti
ORDER BY stipendio ASC; -- ordinato per colonna stipendio (crescente)
*/

/*
SELECT *
FROM dipendenti
ORDER BY nome DESC; -- ordinato per colonna nome (decrescente) quindi dalla Z alla A
-- stessa cosa anche per la data, numeri, ecc...
*/

-- ordinamento di multiple colonne
/*
SELECT *
FROM dipendenti
ORDER BY nome, cognome ASC;
*/

/*
SELECT *
FROM dipendenti
ORDER BY data_assunzione, stipendio ASC;
-- in caso del primo valore identico il secondo valore va ad incidere sull'ordinamento
-- es:
-- data_assunzione |	stipendio
-- 2020-10-13			|	1400         -- il secondo valore incide sull'ordinamento
-- 2020-10-13			|	1500
*/
