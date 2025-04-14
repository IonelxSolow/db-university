/*
24 Clonare tabelle

- introduzione
- copiare struttura e dati tabella
    CREATE TABLE nuova_tabella LIKE tabella_originale;
    INSERT INTO nuova_tabella SELECT * FROM tabella_originale;
    
- copiare solo dati
			CREATE TABEL nuova_tabella SELECT * FROM tabella_originale;
    
*/


-- CREATE TABLE tabella_clonata LIKE prova; -- clona la tabella prova

/*
CREATE TABLE tabella_clonata_uno LIKE prova;
INSERT INTO tabella_clonata_uno SELECT * FROM prova;  -- inserisci le colonne clonate nella tabella clonata
*/

CREATE TABLE tabella_clonata_semlpice SELECT * FROM prova; -- clona la tabella ma non la PRIMARY KEY (non copia i constraint)
