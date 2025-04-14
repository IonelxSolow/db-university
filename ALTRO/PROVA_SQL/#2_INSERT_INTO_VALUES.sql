/* 06 Insert

- sintassi
- inserire la prima riga
- senza campi
- auto_increment
- inserimenti multipli
*/


-- inserire un'intera riga
/*
INSERT INTO clienti (denominazione, p_iva, indirizzo, telefono)
VALUES ("Xyz Impianti", "9045234478", "Via Roma, Cesena", "1134600067");
*/

-- inserimento seconda riga, da notare che con AUTO_INCREMENT l'id incrementa in automatico
/*
INSERT INTO clienti (denominazione, p_iva, indirizzo, telefono)
VALUES ("Abc Servizi Casa", "5542095600", "Via Liberazion, Roma", "1134008675");
*/

-- inserimenti multipli con id AUTO_INCRIMENT
/*
INSERT INTO clienti (denominazione, p_iva, indirizzo, telefono)
VALUES 
("Rossi Giardinaggio", "2309006548", "Via Augusto, Roma", "9854339500"),
("Baracca Fai da Te", "9983721344", "Piazza Vittoria, Lodi", "0084922385"),
("F.lli Malli Concessionaria", "9909563341", "Via Torino, Milano", "0375093489"),
("Pitture Srl", "9857299753", "Via R. Vailati, Udine", "1129759388");
*/

-- inserimento multiplo con id AUTO_INCREMENT
-- inserisci in tabella dipendenti nelle colonne (nome, cognome, ...(devono corrispondere))
-- da notare che manca nelle colonne la >mansione< che di default e >impiegato< se non la inseriamo
/*
insert into dipendenti (nome, cognome, data_assunzione, stipendio, telefono)
values  -- i seguenti valori(che devono anche questi rispettare l'ordine delle colonne)
('Luca', 'Rossi', '2020-02-22', '1500', '2499856100'),
('Marco', 'Verdi', '2018-05-30', '1300', '0085834210'),
('Anna', 'Neri', '2020-10-13', '1700', '2944101834');
*/


-- aggiungiamo altri dipendenti
/*
insert into dipendenti (nome, cognome, data_assunzione, stipendio, telefono, mansione)
values  
('Antonio', 'Valli', '2019-08-01', 1400, '9854339500', 'Magazziniere'),
('Maria', 'Monti', '2020-11-23', 1350, '5892033098', 'Magazziniere'),
('Leonardo', 'Mari', '2018-09-11', 1250, '8964125365', 'Magazziniere'),
('Lucia', 'Gardini', '2017-08-30', 1700, '7845632158', 'Commerciale'),
('Ilaria', 'Casotta', '2019-03-15', 1800, '7458965874', 'Commerciale');
*/