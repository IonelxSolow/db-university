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
SELECT students.name, students.surname, degrees.*, departments.name AS department_name
FROM students
JOIN degrees ON students.degree_id = degrees.id
JOIN departments ON degrees.department_id = departments.id
ORDER BY students.name, students.surname;

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
SELECT students.name, students.surname, COUNT(*) AS tentativi, MAX(exam_student.vote) AS max_vote
FROM students
JOIN exam_student ON students.id = exam_student.student_id
JOIN exams ON exam_student.exam_id = exams.id
GROUP BY students.id, students.name, students.surname, exams.course_id
HAVING MIN(exam_student.vote) >= 18;

>>> GROUP BY
1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date) AS year, COUNT(*) AS enrolled_students
FROM students
GROUP BY YEAR(enrolment_date);

2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address, COUNT(*) AS teachers_count
FROM teachers
GROUP BY office_address

3. Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id, AVG(vote) AS media_voto
FROM exam_student
GROUP BY exam_id

4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT departments.name, COUNT(*) AS degrees_count
FROM degrees
JOIN departments ON degrees.department_id = departments.id
GROUP BY departments.name;

>>> RIPASSINO SELECT (extra bonus opzionale per il weekend):

1. Selezionare tutti gli insegnanti
SELECT * FROM `teachers`;

2. Selezionare tutti i referenti per ogni dipartimento
SELECT `name`, `head_of_department` FROM `departments`;

3. Selezionare tutti gli studenti il cui nome inizia per "E" (373)
SELECT * FROM students WHERE name LIKE 'E%';

4. Selezionare tutti gli studenti che si sono iscritti nel 2021 (734)
select * from students WHERE YEAR(enrolment_date) = 2021;

5. Selezionare tutti i corsi che non hanno un sito web (676)
select * from courses where website IS NULL

6. Selezionare tutti gli insegnanti che hanno un numero di telefono (50)
select * from teachers where phone IS NOT NULL;

7. Selezionare tutti gli appelli d'esame dei mesi di giugno e luglio 2020 (2634)
select * from exams where YEAR(date) = 2020 AND month(date) BETWEEN 6 AND 7;

8. Qual è il numero totale degli studenti iscritti? (5000)
select COUNT(*) AS total_students FROM students;

