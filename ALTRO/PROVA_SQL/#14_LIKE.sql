/*
18 LIKE 

- spiegazione
- sintassi
- pattern
		comincia con 'C%' -- comincia con C e % indica un numero indefinito di caratteri
    finisce con '%C'
    contiene '%C%'
    caratteri fissi e comincia con 'C_' -- underscore _ definisce uno spazio
    caratteri fissi e finisce con '_C'
    caratteri fissi e contiene '_C_'
    contiene stringa e finisce con uno '%C_' -- caratteri indefiniti...C..._(underscore)carattere
    contiene stringa e inizia con uno '_C%' 
    
SELECT colonne FROM tabella
WHERE campo LIKE 'pattern';
*/

/*
SELECT * FROM clienti
-- "cerca" nella colonna denominazione i valori che comincia con R
WHERE denominazione LIKE 'R%';
*/
/*
SELECT * FROM clienti
-- "cerca" nella colonna denominazione i valori che finisce con a
WHERE denominazione LIKE '%a';
*/

/*
SELECT * FROM clienti
-- "cerca" nella colonna denominazione i valori che contengono la letterà/parola/ecc A (a/A e = perchè e case_insensitive)
WHERE denominazione LIKE '%cess%'; -- esempio con più carrateri
*/

SELECT * FROM clienti
WHERE denominazione LIKE 'P__________'; -- restituisce (P+10 carrateri compreso lo spazio)Pitture Srl



