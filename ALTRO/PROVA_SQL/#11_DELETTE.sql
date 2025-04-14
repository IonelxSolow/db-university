/*
15 DELETE

- sintassi
- cancelliamo un record
- attenzione all'errore
- cosa succede all'ID

DELETE FROM tabella WHERE condizione;
*/

/*
-- cancella dalla tabella cliente, dove, id_cliente che corrisponde a 7
DELETE FROM cliente WHERE id_cliente = 7; -- potremmo cancellare più righe contemporaneamente id_cliente = 7 AND id_cliente = 6 AND ...
*/

/*
DELETE FROM dipendenti WHERE mansione = 'commerciale'; -- se ci sono più righe che hanno la stessa mansione, verranno cancellate
*/

/*
-- elimina da dipendenti .... se non cè la clausola WHERE verra cancellato tutto!!!
DELETE FROM dipendenti;
*/

/*
una cosa da tenere a mente che l'AUTO_INCEMENT tiene in memoria l'ultimo ID aggiunto, quindi anche se andiamo ad cancellare
una riga con id 7 per esempio, quest'ultimo non esisterà più e non verrà rimpiazato da un nuovo INSERT INTO, quindi ci troveremo
gli id non sequenziali:
es:
ID
1
2
17
18
52
ecc...
*/


