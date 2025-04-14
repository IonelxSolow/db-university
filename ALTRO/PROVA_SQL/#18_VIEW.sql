/*
22 CREATE VIEW

- cosa sono le view -- sono come le funzioni dove all'interno si puo salvare la logica e richiamarle quando serve
- perchè usarle
- esempio pratico
			creare view: CREATE VIEW nome_view AS
      chiamare view: SELECT * FROM nome_view
      
- sostituire una view esistente
			CREATE OR REPLACE VIEW nome_view AS
      
- aggiornare dati attraverso view (da approfondire)
- rimuovere view 
			DROP VIEW nome_view;

SELECT x.id_dipendente, x.nome, y.id_ufficio
FROM dipendenti AS x
LEFT JOIN uffici AS y
ON x.id_ufficio = y.id_ufficio;
*/

-- CREATE VIEW prova AS -- crea una nuova VIEW prova
/*
SELECT x.id_dipendente, x.nome, y.id_ufficio
FROM dipendenti AS x
LEFT JOIN uffici AS y
ON x.id_ufficio = y.id_ufficio;
*/
-- SELECT * FROM prova; -- richiama VIEW prova


-- CREATE OR REPLACE VIEW prova AS -- crea o sostituisce la VIEW prova con:
-- SELECT * FROM dipendenti;

-- SELECT * FROM prova; -- richiama VIEW prova

-- DROP VIEW prova; -- cancella la VIEW

 -- SELECT * FROM prova -- non esiste perchè precedentemente e stata cancellata