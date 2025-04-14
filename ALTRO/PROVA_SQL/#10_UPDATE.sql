/*
14 UPDATE

- sintassi
- modificare una colonna
- modificare più colonne
- modificare più righe insieme
- attenzione a non omettere where


UPDATE tabella -- mi aggiorni la tabella
SET colonna1 = valore1 -- andando a mettere colonna1 = valore1
WHERE condizione; -- dove la condione e questa 
*/

/*
UPDATE clienti  -- aggiorna la tabella clienti
SET indirizzo = 'Corso della Vittoria' -- andiamo a modificare/settare la colonna indirizzo con il valore 'Corso della Vittoria'
WHERE id_cliente = 1; -- dove? id_cliente 1
*/

/*
UPDATE clienti  -- aggiorna la tabella clienti
SET indirizzo = 'Corso della Vittoria' -- andiamo a modificare/settare la colonna indirizzo con il valore 'Corso della Vittoria'
WHERE id_cliente = 1; -- dove? id_cliente 1
*/

/*
UPDATE clienti
set indirizzo = 'Corso Liberazione'
WHERE id_cliente = 2 AND id_cliente = 3;
*/
-- oppure SOLO COME ESEMPIO invece di andare a selezionare ogni id possiamo prendere un valore in comune(in questo caso città -> Roma)
/*
UPDATE clienti
set indirizzo = 'Corso Liberazione'
WHERE città = 'Roma';
*/

/*
UPDATE clienti
set indirizzo = 'Corso Liberazione', città = 'Roma' -- modifichiamo 2 colonne contemporaneamente
WHERE id_cliente = 1;
*/

/*
-- se si omete WHERE va a modificare tutte le righe delle colonne con i valori impostati
!!! NON eseguire !!! 
zUPDATE clienti
zSET indirizzo = 'Corso Liberazione', città = 'Roma'
*/

