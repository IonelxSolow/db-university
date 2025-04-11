>>> JOIN
1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
 SELECT students.* FROM students
 JOIN degrees ON students.degree_id = degrees.id
 WHERE degrees.name = 'Corso di Laurea in Economia'; 
 
2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT degrees.*
FROM degrees
JOIN departments ON degrees.department_id = departments.id
WHERE departments.name = 'Dipartimento di Neuroscienze'
AND degrees.level = 'magistrale';

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT courses.* 
FROM courses
JOIN course_teacher ON courses.id = course_teacher.course_id
WHERE course_teacher.teacher_id = 44;

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.surname, students.name, degrees.*, departments.name AS department_name
FROM students
JOIN degrees ON students.degree_id = degrees.id
JOIN departments ON degrees.department_id = departments.id
ORDER BY students.surname, students.name;

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.name AS degree_name, courses.name AS course_name, teachers.surname AS teacher_surname, teachers.name AS teacher_name
FROM degrees
JOIN courses ON degrees.id = courses.degree_id
JOIN course_teacher ON courses.id = course_teacher.course_id
JOIN teachers ON course_teacher.teacher_id = teachers.id;

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT teachers.*
FROM teachers
JOIN course_teacher ON teachers.id = course_teacher.teacher_id
JOIN courses ON course_teacher.course_id = courses.id
JOIN degrees ON courses.degree_id = degrees.id
JOIN departments ON degrees.department_id = departments.id
WHERE departments.name = 'Dipartimento di Matematica';

7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.


>>> GROUP BY
1. Contare quanti iscritti ci sono stati ogni anno

2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

3. Calcolare la media dei voti di ogni appello d'esame

4. Contare quanti corsi di laurea ci sono per ogni dipartimento

>>> RIPASSINO SELECT (extra bonus opzionale per il weekend):

1. Selezionare tutti gli insegnanti

2. Selezionare tutti i referenti per ogni dipartimento

3. Selezionare tutti gli studenti il cui nome inizia per "E" (373)

4. Selezionare tutti gli studenti che si sono iscritti nel 2021 (734)

5. Selezionare tutti i corsi che non hanno un sito web (676)

6. Selezionare tutti gli insegnanti che hanno un numero di telefono (50)

7. Selezionare tutti gli appelli d'esame dei mesi di giugno e luglio 2020 (2634)

8. Qual è il numero totale degli studenti iscritti? (5000)

