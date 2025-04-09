Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:
- sono presenti diversi *Dipartimenti* (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);

- ogni *Dipartimento* offre più *Corsi di Laurea* (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)

- ogni *Corso di Laurea* prevede diversi *Corsi* (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);

- ogni *Corso* può essere tenuto da diversi *Insegnanti*;

- ogni *Corso* prevede più appelli d'*Esame*;

- ogni *Studente* è iscritto ad un solo *Corso di Laurea*;

- ogni *Studente* può iscriversi a più appelli di *Esame*;

- per ogni appello d'*Esame* a cui lo *Studente* ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente. Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.

Utilizzare https://www.drawio.com/ per la creazione dello schema.
Esportare quindi il diagramma in png, caricarlo nella repo in un file index.html  nel quale inserite l'immagine come visto in classe.


Entità principali:          | Relazioni:
                            |
1. dipartimento             | più *Corsi di Laurea* (es.: Civiltà e Letterature Classiche, Informatica, ecc...
2. corso di laurea          | diversi *Corsi* (es.: Letteratura Latina, Sistemi Operativi 1, ecc...
3. corso                    | diversi *Insegnanti*, più appelli d'*Esame*
4. insegnante               | eroga il *corso*
5. esame                    | relativo ad un solo *corso*
6. studente                 | un solo *Corso di Laurea*, a più appelli di *Esame*

- struttura delle tabelle

1. dipartimento
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)

2. corso di laurea
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)
- id dipartimento

3. corso
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)

4. insegnante
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)

5. esame
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)

6. studente
- id        | INT PK - NOT NULL
- nome      | VARCHAR(50)