-- creare il database prima, guardare nel file #22_esercizio_DB.sql

/*
01 tutti i docenti  
02 email studenti maggiorenni  
03 corsi già terminati  
04 prossimi corsi in programma  
05 prossim corsi che costano meno di [scegliere cifra]  
06 tutti i corsi di un docente 
06.1 tutti i corsi di due docenti 
07 tutti i corsi passati di un docente  
08 numero studenti iscritti ad un particolare corso  
09 corsi che hanno raggiunto la capacità massima  
10 numero di corsi frequentati da uno studente  
11 lista corsi frequentati da uno studente  
12 calcolare quante volte i corsi sono stati riproposti  
13 l'insegnante con più corsi insegnati  
14 top 3 studenti più partecipi  
15 il primissimo corso che abbiamo rilasciato  
16 lista studenti che hanno partecipato al corso di un insegnante specifico
*/


/* 01 tutti i docenti */ 
-- SELECT * FROM docenti

/* 02 email studenti maggiorenni */ 
/*
SELECT email FROM studenti
--  data_nascita deve essere minore di oggi - 18 anni
-- date_sub -> date subtract... cosa? current_data() -> data corrente, meno interval 18 anni
WHERE data_nascita < date_sub(current_date(), interval 18 year)
*/

/* 03 corsi già terminati */ 
-- SELECT * FROM corsi WHERE data_fine < current_date(); 

/* 04 prossimi corsi in programma */ 
-- SELECT * FROM corsi WHERE data_inizio >= '2021-08-01'  -- current_date() 

/* 05 prossimi corsi che costano meno di [scegliere cifra] */ 
-- SELECT * FROM corsi WHERE data_inizio >= '2021-08-01' AND costo < 150

/* 06 tutti i corsi di un docente */ 
/*
SELECT * FROM corsi
JOIN docenti ON docenti.id_docente = corsi.id_docente
WHERE docenti.id_docente = 7;
*/

/* 06.1 tutti i corsi di due docenti */
-- SELECT * FROM corsi WHERE id_docente = 1 or id_docente = 7

 /* SELECT * FROM corsi
JOIN docenti ON docenti.id_docente = corsi.id_docente
WHERE docenti.id_docente = 7 OR docenti.id_docente = 5; */

/* SELECT 
    corsi.*, 
    docenti.*, 
    docenti.id_docente AS id_docenti -- con ALIAS per una nuova colonna
FROM corsi
JOIN docenti ON docenti.id_docente = corsi.id_docente
WHERE docenti.id_docente = 7 OR docenti.id_docente = 5; */

-- oppure scritto in modo più pulito con IN

/* SELECT 
    corsi.*, 
    docenti.*, 
    docenti.id_docente AS id_docenti 
FROM corsi
JOIN docenti ON docenti.id_docente = corsi.id_docente
WHERE docenti.id_docente IN (5, 7); */

/* 07 tutti i corsi passati di un docente */ 
-- SELECT * FROM corsi WHERE data_fine < current_date() AND id_docente = 1

/* 08 numero studenti iscritti ad un particolare corso */ 
-- SELECT COUNT(*) AS partecipanti FROM studenti_corsi WHERE id_corso = 1

/* SELECT corsi.nome AS nome_corso, COUNT(*) AS numero_partecipanti FROM studenti_corsi
INNER JOIN corsi ON studenti_corsi.id_corso = corsi.id_corso
WHERE studenti_corsi.id_corso = 1
GROUP BY corsi.nome; */

/* 09 corsi che hanno raggiunto la capacità massima */ 
/*
SELECT corsi.id_corso, corsi.nome, corsi.partecipanti_max, COUNT(studenti_corsi.id) AS numero FROM studenti_corsi
INNER JOIN corsi ON corsi.id_corso = studenti_corsi.id_corso
GROUP BY studenti_corsi.id_corso 
-- se avvessi usato WHERE ci da errore in quanto viene eseguito prima del count
-- invece HAVING viene eseguito dopo aver ottenuto i dati (filtra il risultato)
HAVING numero >= corsi.partecipanti_max */

/* 10 numero di corsi frequentati da uno studente */ 
/*SELECT studenti.id_studente, studenti.nome, studenti.cognome, COUNT(studenti_corsi.id) AS course
FROM studenti
INNER JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
GROUP BY studenti_corsi.id_studente */

/* 11 lista corsi frequentati da uno studente */ 
/* SELECT corsi.id_corso, corsi.nome from corsi
INNER JOIN studenti_corsi ON corsi.id_corso = studenti_corsi.id_corso
WHERE studenti_corsi.id_studente = 1; */

/* 12 calcolare quante volte i corsi sono stati riproposti */ 
-- SELECT nome, COUNT(*) FROM corsi GROUP BY nome

/* 13 l'insegnante con più corsi insegnati */
/*
SELECT docenti.nome, docenti.cognome, COUNT(corsi.id_docente) AS numero_corsi FROM docenti
INNER JOIN corsi ON corsi.id_docente = docenti.id_docente
GROUP BY corsi.id_docente ORDER BY numero_corsi DESC LIMIT 1 */

/* 14 top 3 studenti più partecipi */
/* SELECT studenti.nome, studenti.cognome, COUNT(studenti_corsi.id) AS numero_corsi FROM studenti
INNER JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
GROUP BY studenti_corsi.id_studente ORDER BY numero_corsi DESC LIMIT 3 */


/* 15 il primissimo corso che abbiamo rilasciato */
-- SELECT * FROM corsi LIMIT 1

/* 16 lista studenti che hanno partecipato al corso di un insegnante specifico */
/*
SELECT studenti.nome, studenti.cognome FROM studenti
INNER JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
INNER JOIN corsi ON corsi.id_corso = studenti_corsi.id_corso
WHERE corsi.id_docente = 1 GROUP BY studenti.id_studente */