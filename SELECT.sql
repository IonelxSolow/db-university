--  1. Selezionare tutti gli insegnanti 
-- SELECT * FROM teachers;

-- 2. Selezionare tutti i referenti per ogni dipartimento
-- SELECT `name`, `head_of_department` FROM `departments`;

-- 3. Selezionare tutti gli studenti il cui nome inizia per "E" (373)
-- SELECT * FROM students WHERE name LIKE 'E%';

-- 4. Selezionare tutti gli studenti che si sono iscritti nel 2021 (734)
-- select * from students WHERE YEAR(enrolment_date) = 2021;

-- 5. Selezionare tutti i corsi che non hanno un sito web (676)
-- select * from courses where website IS NULL

-- 6. Selezionare tutti gli insegnanti che hanno un numero di telefono (50)
-- select * from teachers where phone IS NOT NULL;

-- 7. Selezionare tutti gli appelli d'esame dei mesi di giugno e luglio 2020 (2634)
-- select * from exams where YEAR(date) = 2020 AND month(date) BETWEEN 6 AND 7;

-- 8. Qual è il numero totale degli studenti iscritti? (5000)
-- select COUNT(*) AS total_students FROM students;
