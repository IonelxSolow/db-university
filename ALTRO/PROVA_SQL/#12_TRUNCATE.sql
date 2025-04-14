/*
16 TRUNCATE

- sintassi
- puliamo la tabella
- TRUNCATE vs DELETE
					TRUNCATE ricrea la tabella aggiornando anche AUTO_INCREMENT
          DELETE permette di filtrare le righe da cancellare: DELETE FROM clienti WHERE condizione; <<< filra con la condizione
          TRUNCATE è un comando di DDL(Data Definition Language(es: CREATE TABLE, CREATE DATABASE, ALTER TABLE, DROP TABLE ... struttura database))
          DELETE è un comando di DML(Data Manipulation Language(es: INSERT INTO, UPDATE, SELECT... manipolano i dati contenuti nel database))
          TRUNCATE è più veloce perchè cancella a prescindere, mentre delete scansiona ogni riga
          
TRUNCATE TABLE tabella;
*/

/*
-- cancella tutte le righe della tabella a prescindere!!! anche gli ID (quindi si resettano, riparte da 1 con un nuovo INSERT INTO)
TRUNCATE TABLE clienti;
*/

/*
-- cancella tutta la tabella ma non resetta gli ID (se l'ultimo ID e 30 nonostante la tabella sia stata
totalmente cancellata, il prossimo INSERT INTO partirà da ID 31)
DELETE FROM clienti; 
*/
