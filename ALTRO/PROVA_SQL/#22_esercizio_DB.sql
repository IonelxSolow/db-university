-- create database esercizio_sql
/*
CREATE TABLE if not exists studenti(
  id_studente int not null auto_increment references studenti_corsi(id_studenti),
  nome varchar(20) not null,
  cognome varchar(20) not null,
  email varchar(50) not null unique,
  data_nascita date,
  primary key(id_studente)
);
*/

/*
CREATE TABLE if not exists corsi(
  id_corso int not null auto_increment references studenti_corsi(id_corso),
  nome varchar(100) not null,
  data_inizio date,
  data_fine date,
  costo int not null,
  partecipanti_max int not null,
  id_docente int not null,
  primary key(id_corso)
);
*/

/*
CREATE TABLE if not exists docenti(
  id_docente int not null auto_increment references corsi(id_docente),
  nome varchar(20) not null,
  cognome varchar(20) not null,
  email varchar(50) not null unique,
  primary key(id_docente)
);
*/

/*
CREATE TABLE if not exists studenti_corsi(
  id int not null auto_increment,
  id_studente int not null,
  id_corso int not null,
  primary key(id)
);
*/

/*
insert into docenti (nome, cognome, email)
values
('Anna', 'Neri', 'annaneri@gmail.it'),
('Marco', 'Verdi', 'marcoverdi@gmail.it'),
('Luca', 'Viola', 'lucaviola@gmail.it'),
('Geronimo', 'Rosso', 'geronimorosso@gmail.it'),
('Carla', 'Perlato', 'carlaperlato@gmail.it'),
('Carlo', 'Ciano', 'carlociano@gmail.it'),
('Edoardo', 'Giallo', 'edoardogiallo@gmail.it'),
('Leonardo', 'Marrone', 'leonardomarrone@gmail.it'),
('Michele', 'Arancione', 'michelearancione@gmail.it'),
('Gianni', 'Azurro', 'gianniazurro@gmail.it'),
('Giovanni', 'Gialli', 'giovannigialli@gmail.it'),
('Antonio', 'Verdi', 'antonioverdi@gmail.it'),
('Maurizio', 'Verde', 'maurizioverde@gmail.it');
*/

/*
insert into studenti(nome,cognome,email,data_nascita)
values
('Francesco', 'Ferrari', 'francescoferrari@gmai.it', '2010-09-21'),
('Leonardo', 'Russo', 'leonardorusso@gmai.it', '2010-04-04'),
('Alessandro', 'Esposito', 'alessandroesposito@gmai.it', '2000-03-17'),
('Lorenzo', 'Bianchi', 'lorebianchi@gmai.it', '2000-10-14'),
('Mattia', 'Romano', 'mattiaromano@gmai.it', '2001-11-13'),
('Andrea', 'Colombo', 'andreacolombo@gmai.it', '2002-02-05'),
('Riccardo', 'Ricci', 'riccardoricci@gmai.it', '2004-02-24'),
('Tommaso', 'Marino', 'tommasomarino@gmai.it', '2006-07-29'),
('Edoardo', 'Greco', 'edoardogreco@gmai.it', '2006-01-02'),
('Sofia', 'Bruno', 'sofiabruno@gmai.it', '2000-09-01'),
('Alice', 'Gallo', 'alicegallo@gmai.it', '2002-08-19'),
('Giulia', 'Conti', 'giuliaconti@gmai.it', '2005-05-16'),
('Emma', 'Mancini', 'emmamancini@gmai.it', '2001-05-13');
*/

/*
insert into corsi(nome,data_inizio,data_fine,costo,partecipanti_max,id_docente)
values
('Matematica 101', '2021-01-01', '2021-02-01', 100,6,1),
('Matematica 101', '2021-02-02', '2021-03-01', 100,4,3),
('Matematica 101', '2022-03-02', '2022-04-01', 120,12,7),
('Matematica 102', '2021-01-01', '2021-02-01', 100,5,5),
('Matematica 102', '2021-02-02', '2021-03-01', 150,10,1),

('Storia 101', '2021-01-01', '2021-04-01', 120,6,9),
('Biologia 101', '2022-01-01', '2022-02-01', 80,7,4),
('Programmazione 101', '2021-01-01', '2021-02-01', 200,11,5),
('Italiano 101', '2021-07-01', '2021-09-01', 150,15,11),
('Latino 101', '2022-02-01', '2022-03-01', 130,5,5),

('Chimica 101', '2021-01-01', '2021-04-01', 70,10,7),
('Storia 102', '2022-03-01', '2022-05-01', 150,6,10),
('Biologia 102', '2021-01-01', '2021-02-01', 120,7,13),
('Matematica 103', '2021-12-01', '2022-02-01', 180,6,1),
('Matematica 104', '2021-12-01', '2022-03-01', 200,5,7);
*/

/*
insert into studenti_corsi(id_studente, id_corso)
values
(1,1),(1,2),(1,5),(1,7),(1,10),(1,15),
(2,1),(2,5),(2,10),
(3,4),
(4,1),(4,2),(4,3),(4,8),(4,13),(4,15),
(5,2),(5,4),
(6,4),(6,10),
(7,1),
(8,8),
(9,10),
(10,1),(10,7),(10,9),(10,10),(10,13),
(11,10),
(12,7),(12,14),
(13,4),(13,5),(13,9),
(14,2),
(15,3),(15,10),
(16,3),(16,5),(16,7),(16,12),(16,13),(16,15),
(17,11),
(18,10),
(19,8),
(20,5),
(21,3), (21,7),
(22,6), (22,12), (22,15),
(23,6), (23,9),
(24,4),
(25,1), (25,7), (25,8), (25,11), (25,12),
(26,4), (26,8), (26,11),
(27,3), (27,8),
(28,1),
(29,2), (29,7), (29,12), (29,13),
(30,15),
(31,10),
(32,4),
(33,1),
(34,1), (34,7), (34,9), (34,11),
(35,3), (35,13), (35,15),
(36,2), (36,7),
(37,13),
(38,11);
*/
