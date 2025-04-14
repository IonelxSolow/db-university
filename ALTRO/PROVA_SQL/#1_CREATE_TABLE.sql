
CREATE TABLE if not exists rapporto_clienti(
	id_rapporto int not null AUTO_INCREMENT,
  id_cliente int not null,
  id_dipendente int not null,
  PRIMARY KEY(id_rapporto)
);

CREATE TABLE if not exists dipendenti(
  id_dipendente int UNSIGNED not null AUTO_INCREMENT REFERENCES rapporto_clienti(id_dipendente),
  nome varchar(255) not null,
  cognome varchar(255) not null,
  data_assunzione date not null,
  stipendio decimal not null check (stipendio >= 1200 AND stipendio <= 5000),
  telefono varchar(10) not null unique,
  mansione varchar(255) not null default 'impiegato',
  PRIMARY KEY(id_dipendente)
);

CREATE TABLE if not exists clienti(
	id_cliente int UNSIGNED not null AUTO_INCREMENT REFERENCES rapporto_clienti(id_cliente),
  denominazione varchar(255) not null,
  p_iva varchar(16) not null unique,
  indirizzo varchar(255) not null,
  telefono varchar(10) not null unique,
  PRIMARY KEY(id_cliente)
);


-- elimina le tabelle
-- drop table clienti, dipendenti, rapporto_clienti




