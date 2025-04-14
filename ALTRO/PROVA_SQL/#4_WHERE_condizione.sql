/*
08 WHERE

- sintassi
- la nostra prima condizione
- operatori logici
*/


-- seleziona una lista di colonne(firstname, lastname, ...) oppure *(tutto) dalla table_nome WHERE condizione
-- SELECT column_list FROM table_nome WHERE condition

-- seleziona tutte le collonne dalla tabella clienti con la condizione che id_cliente =(corrisponde) a 1 
-- SELECT * FROM clienti WHERE id_cliente = 1;

-- seleziona le collonne denominazione, telefono FROM tabella clienti con la condizione che id_cliente corrispone a 1
-- SELECT denominazione, telefono FROM clienti WHERE id_cliente = 1;

-- seleziona tutte le colonne dalla tabella clienti che siano (condizione) diverse da id_cliente 1
-- SELECT * FROM clienti WHERE id_cliente <> 1; -- diverso da si puo scrivere in 2 modi: != oppure <>

-- selezione tutte le colonne dalla tabella dipendenti che (condizione) hanno nella colonna stipendio il valore maggiore di 1400
 -- SELECT * FROM dipendenti WHERE stipendio > 1400; -- < (minore), <=(minore o uguale), =(uguale a) >=(maggiore o uguale)

-- selezione tutte le colonne dalla tabella dipendenti con (condizione) la data_assunzione e uguale a "2020-02-22"
 -- select * from dipendenti where data_assunzione = "2020-02-22";
