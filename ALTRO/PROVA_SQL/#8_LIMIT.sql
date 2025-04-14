/* 
12 LIMIT
come porre un limite alle colonne che vogliamo vedere

- sintassi limit
- limit offset

SELCT colonne FROM tabella LIMIT numero;
*/

/*
SELECT * FROM dipendenti 
-- ordina in base allo stipendio decrescente e mi prendi solo (LIMIT) 3 risultati.
ORDER BY stipendio DESC LIMIT 3;
*/

/*
SELECT * FROM dipendenti 
-- ordina in base alla data_assunzione e mi restituisci solo (LIMIT) 3 risultati
ORDER BY data_assunzione DESC LIMIT 3;
*/

/*
SELECT * FROM dipendenti 
-- ordiniamo in base al id_dipendente in ordine discendente e prendiamo solo il primo risultato
ORDER BY id_dipendente DESC LIMIT 1;
*/

/*
-- LIMIT OFFSET -> ... LIMIT 1, 2;
SELECT * FROM dipendenti 
-- restituisce i primi 2 valori ma saltando 1 riga... 
ORDER BY id_dipendente ASC LIMIT 1, 2; -- in questo caso restituisce id_dipendente 2 e 3;
*/

-- restituisci la penultima persona aggiunta
SELECT * FROM dipendenti  
ORDER BY id_dipendente DESC LIMIT 1, 1; -- salta l'ultima (1) e mi restituisci solo (1) risultato