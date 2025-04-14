/*
19 ALTER TABLE

- spiegazione
- aggiungere nuova colonna
	ALTER TABLE table_name ADD column_name data_type constraints;

- cambiare posizione alla colonna
  ALTER TABLE table_name
	MODIFY column_name column_definition AFTER column_name;
  
- aggiungere constraint
	ALTER TABLE table_name ADD UNIQUE (column_name,...);
  
- rimuovere una colonna
	ALTER TABLE table_name DROP COLUMN column_name;

- cambiare tipo di dato di una colonna
	ALTER TABLE table_name MODIFY column_name new_data_type;

- rinominare tabella
	ALTER TABLE current_table_name RENAME new_column_name;
  
*/

/*
-- aggiunge una colonna
ALTER TABLE rapporto_clienti ADD prova varchar(50) not null;
*/

/*
ALTER TABLE rapporto_clienti 
-- modifica la posizione della colonna prova(in questo caso posiziona la colonna prova AFTER(dopo) la colonna id_rapporto )
MODIFY prova varchar(50) AFTER id_rapporto
*/

/*
ALTER TABLE rapporto_clienti
-- agiungiamo il constraint UNIQUE (o PRIMARY KEY per esempio) alla colona prova
ADD UNIQUE (prova); -- separate da virgola possiamo aggiungere su più colonne
*/

/*
ALTER TABLE rapporto_clienti
-- DROP COLUMN rimuove permanentemente la colonna prova
DROP COLUMN prova;
*/

/*
ALTER TABLE rapporto_clienti
-- modifica il tipo di dato dalla colonna prova (in questo cado da VARCHAR(50 a INT))
MODIFY prova INT;
*/

/*
-- rinommina una tabella, in questo caso da rapporto_clienti diventerebbe miao_miao
ALTER TABLE rapporto_clienti RENAME miao_miao
*/