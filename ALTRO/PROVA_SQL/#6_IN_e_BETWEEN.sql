/*
10 IN e BETWEEN

- sintassi IN
- IN e NOT IN
- sintassi BETWEEN
- BETWEEN e NOT BETWEEN

SELECT column1_name, column2_name, column_name
FROM table_name
WHERE column_name BETWEEN min_value AND max_value; -- WHERE nome_specifico_colonna BETWEEN....;
*/
/*
SELECT nome_colonna
FROM nome_tabella
WHERE nome_collona_specifica IN (valore1, valore2, ...)
*/

/*
-- seleziona tutte le colonne
SELECT *
-- della tabella dipendenti
FROM dipendenti
-- dove il valore di mansione IN è in questa lista ('impiegato', 'commerciale');
WHERE mansione IN ('impiegato', 'commerciale');
*/

/*
SELECT *
FROM dipendenti
-- dove nella colonna stipendio cè il valore specifico (1500, 1700) ->restituisce solo le colonne dove i valori specifici corrispondono
WHERE stipendio IN (1500, 1700); -- valori specifici in questo caso
*/

/*
SELECT *
FROM dipendenti
WHERE stipendio NOT IN (1500, 1700); -- restituisce tutti i valori eccetto quelli specifici (NOT IN)
*/

/*
-- voliamo sapere tutte le persone che sono state assunte nel 2018, (tra 2018-01-01 e 2018-12-31) 
SELECT *
FROM dipendenti
WHERE data_assunzione BETWEEN '2018-01-01' AND '2018-12-31';
*/

/*
select *
from dipendenti
where stipendio BETWEEN 1300 AND 1600; -- stessa cosa di WHERE stipendio >=1300 AND stipendio <= 1600;
*/

/*
select *
from dipendenti
where stipendio NOT BETWEEN 1300 AND 1600; -- NOT BETWEEN restituisce tutto eccetto i valori nel range
*/



