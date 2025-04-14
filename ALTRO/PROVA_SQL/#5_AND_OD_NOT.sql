/*
09 AND OR e NOT
(condizioni più specifiche)

- sintassi AND
- sintassi OR
- sintassi NOT

- combinare AND OR e NOT 
*/

-- seleziona la colonna1, colonna2 da tabella dove si verifica la condizione1 AND condizione2 AND condizione3 ...;
/*
SELECT colonna1, colonna2, ...
FROM tabella
WHERE condizione1 AND condizione2 AND condizione3 ...;
*/

-- selez ... dalla tabella dipendenti dove `stipendio` e maggiore o uguale a 1400 AND la `mansione` sia 'impiegato'
-- select * from `dipendenti` where `stipendio` >= 1400 AND `mansione` = 'impiegato';

-- selez ... dalla tabella dipendenti dove la `mansione` e uguale a 'commerciale' OR 'impiegato'
-- select * from `dipendenti` where `mansione` = 'commerciale' OR `mansione` = 'impiegato';

-- selez ... dalla tabella dipendenti dove la `mansione` NON è commerciale (quindi restituisce tutte le mansioni ma non quella 'commerciale')
-- select * from `dipendenti` where NOT `mansione` = 'commerciale'


/*
-- vogliamo tutti gli impiegati che guadagnano soppra 1500 e tutti i magazinieri che guadagnano soppra i 1300
select * from dipendenti 
-- dove mansione e uguale a impiegato AND lo stipendio maggiore di 1500 -- OR (in questo caso ->è anche) dove mansione=magaziniere AND stipendio > 1300
where (`mansione` = 'impiegato' AND `stipendio` > 1500) 
-- OR (in questo caso ->è anche) dove mansione=magaziniere AND stipendio > 1300
OR (`mansione` = 'magazziniere' AND `stipendio` > 1300);
*/

/*
-- selezione tutte le colonne
SELECT *
-- dalla tabella dipendenti
FROM dipendenti
-- dove NOT (non voglio la) mansione = impiegato (quindi tutti gli impiegati non me li restituisce)
WHERE NOT `mansione` = 'impiegato'
-- AND stipendio maggiore o uguale a 1300 (mi restituisce tutte le altre mansioni con lo stipendio >= 1300)
AND stipendio >= 1300;
*/