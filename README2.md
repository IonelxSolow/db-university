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



## Tables

- departments
- degrees
- courses
- teachers
- exams
- students

## Table: departments
- id: INT PK AI NN UN
- name: VARCHAR(100) NN
- head_of_department: VARCHAR(100) NN
- phone_number: CHAR(10) NULL
- email: VARCHAR(150)

## Table: degrees (department -> degreese)
- id: INT PK AI NN UN
- name: VARCHAR(100) NN
- departement_id: INT FK
- level
-website

## Table: courses 
- id: INT PK AI NN UN
- name: VARCHAR(100) NN
- degree_id: INT UN
- cfu: TINYINT //
- period: VARCHAR(50) NN
- year
- website

## Table: teachers
- id: INT PK AI NN UN
- name: VARCHAR(100) NN
- lastname: VARCHAR(100) NN
- phone_number: CHAR(10) NULL
- emal: VARCHAR(150) 

## Pivot: course_teacher
- id: INT PK AI NN UN
- theacher_id: INT (FK)
- course_id: INT (FK)

## Table: exams
- id: INT PK AI NN UN
- course_id: INT (FK)
- date: DATE NN
- hour: TIME NN
- location: VARCHAR(100) NN
- address: VARCHAR(100) NN

## Table: students
- id: INT PK AI NN UN
- degree_id: FK
- phone_number: CHAR(10) NULL
- email: VARCHAR(150) NN

## Pivot: exam_student
- id: INT PK AI NN UN
- exam_id: INT (FK)
- student_id: INT (FK)
- vote