/*
13 SELECT DISTINCT

- perchè usarlo
- sintassi
- abbiniamolo al count

SELECT DISTINCT colonne FROM tabella;
*/

/*
SELECT DISTINCT colonne FROM tabella;
*/

/*
-- ho aggiunto la colonna città
ALTER TABLE clienti
ADD città VARCHAR(50) NOT NULL
*/

-- quali e quante sono le città in cui operano i nostri clienti?
-- SELECT città FROM clienti; -- restituisce tutto compreso i risultati doppi

-- SELECT COUNT(città) FROM clienti; -- restituisce 6 (Roma 2 volte)

-- 

-- SELECT DISTINCT città FROM clienti; -- DISTINCT restituisce i risultati escludendo i doppioni

-- da notare che DISTINCT e tra (DISTINCT città) perchè va ad escludere i doppioni da città
-- SELECT COUNT(DISTINCT città) FROM clienti; -- restituisce 5 (Roma 1 volta, esclude il doppione)


-- se vogliamo invece del conteggio vedere i nome città
SELECT DISTINCT città FROM clienti -- ci restituisce i nomi con volendo relativo conteggio righe a SX