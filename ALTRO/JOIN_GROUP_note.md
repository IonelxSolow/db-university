-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT students.* -- seleziona tutte le colonne students
FROM students -- dalla tabella students
-- unisci la tabella degrees con la condizione (ON) che la colonna students.degree_id corrisponda con degrees.id
JOIN degrees ON students.degree_id = degrees.id  -- restituisce tutte le corrispondenze
-- e dove la condizione(WHERE) degrees_name corrisponda a 'Corso di Laurea in Economia'
WHERE degrees.name = 'Corso di Laurea in Economia';

/*
-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT degrees.* -- seleziona tutte le colonne di degrees
FROM degrees -- dalla tabella degrees
-- unisci la tabella departments con la condizione(ON) che degrees.department_id corrisponda a department.id
JOIN departments ON degrees.department_id = departments.id
-- restituiscimi i risultati con condizione che la colonna departments.name corrisponda a 'Dipartimento di Neuroscenze'
WHERE departments.name = 'Dipartimento di Neuroscienze'
-- e anche(AND) la condizione che departments.level corrisponda a 'magistrale'
AND degrees.level = 'magistrale'
*/

/*
-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT courses.* -- seleziona tutte le colonne dei courses
FROM courses -- dalla tabella courses
-- unisci la tabella course_teacher con la condizione che courses.id corrisponda a course_teacher.course_id
JOIN course_teacher ON courses.id = course_teacher.course_id
-- mi restituisci i risultati dove course_teacher.teacher_id corrisponde a 44
WHERE course_teacher.teacher_id = 44;
*/

/*
-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, 
-- in ordine alfabetico per cognome e nome
SELECT students.name, students.surname, degrees.*, departments.name AS department_name
FROM students
-- unisci la tabella degrees con la condizione che students.degree_id corrisponda a degrees.id
JOIN degrees ON students.degree_id = degrees.id
-- unisci il relativo dipartimento con la condizione che degrees.department_id corrisponda a departments.id
JOIN departments ON degrees.department_id = departments.id
-- raggrupali/ordinali in ordine alfabettico per nome e cognome
ORDER BY students.surname, students.name ASC;
*/

/*
-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.name AS degree_name, courses.name AS courses_name, teachers.name AS teacher_name, teachers.surname AS teacher_surname
FROM degrees -- dalla tabella degreese
-- unisci la tabella courses con la condizione che courses.degree_id corrisponda a degrees.id
JOIN courses ON courses.degree_id = degrees.id
-- unisci la tabella course_teacher con la condizione che course_teacher.course_id corrisponda a courses.id
JOIN course_teacher ON course_teacher.course_id = courses.id
-- unire la tabella teachers con la condizione che course_teacher.teacher_id corrisponda a teachers.id
JOIN teachers ON course_teacher.teacher_id = teachers.id
*/

/*
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
-- SELECT DISTINCT teachers.name AS teacher_name, teachers.surname AS teacher_surname, departments.name
-- seleziona tutti i docenti aggregando i possibili dubblicati (DISTINCT)
SELECT DISTINCT teachers.*
FROM teachers -- dalla tabella teachers
-- unisci la tabella course_teacher con la condizione che teachers.id corrisponda a course_teacher.teacher_id
JOIN course_teacher ON teachers.id = course_teacher.teacher_id
-- unisci la tabella courses con la condizione che course_teacher.course_id corrisponda a courses.id
JOIN courses ON course_teacher.course_id = courses.id
-- unisci la tabella degrees con la condizione che courses.degree_id corrisponda a degrees.id
JOIN degrees ON courses.degree_id = degrees.id
-- unisci la tabella departments con la condizione che degrees.department_id corrisponda a departments.id
JOIN departments ON degrees.department_id = departments.id
-- e dove la condizione(WHERE) departments.name = 'Dipartimento di Matematica'
WHERE departments.name = 'Dipartimento di Matematica';
*/




/*
7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.
-- seleziona la colonna students.name, students.surname, 
-- COUNT(*)(conta tutti i tentativi grazie a GROUP BY), 
-- MAX(exam_student.vote) restituisce il numerò massimo di exam_student.vote
SELECT students.name, students.surname, COUNT(*) AS tentativi, MAX(exam_student.vote) AS max_vote
FROM students -- dalla tabella studenti
-- unisci exam_student con la condizione che students.id corrisponda a exam_student.student_id
JOIN exam_student ON students.id = exam_student.student_id
-- unisci exams con la condizione che exam_student.exam_id corrisponda a exams.id
JOIN exams ON exam_student.exam_id = exams.id
-- GROUP BY seguendo l'ordine student.id > student.name > student.surname > exams.course_id
GROUP BY students.id, students.name, students.surname, exams.course_id -- (32246 risultati)
-- Filtra il risultato (32246) HAVING alias >= 18; MIN(exam_student.vote) restituisce solo il MINimo voto maggiore o uguale a 18;
HAVING MIN(exam_student.vote) >= 18; -- (16583 righe/risultati). i tentativi in questo caso sono sempre 1
*/


GROUP BY -- raggruppa i risultati in base a una o più colonne

/*
1. Contare quanti iscritti ci sono stati ogni anno
- estrare l'anno dalla data YEAR(enrolment_date)
- contare il numero di studenti inscritti COUNT(*)
*/
SELECT YEAR(enrolment_date) AS year, COUNT(*) AS enrolled_students
FROM students
-- raggruppa per anno
GROUP BY YEAR(enrolment_date);

/*
2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
- teachers
- indirizzo office_address
- contare quanti teachers condividono l'indirizzo =
*/
SELECT office_address, COUNT(*) AS teachers_count
FROM teachers
GROUP BY office_address

/*
 3. Calcolare la media dei voti di ogni appello d'esame
- tabella exam_student
- vote
-exam_id
*/

-- AVG per ottenere la media di (vote)
SELECT exam_id, AVG(vote) AS media_voto
FROM exam_student
GROUP BY exam_id

/*
 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
- degrees
- departments
- degrees.department_id = department.id
- contare i degree ragruppati per departments.name
*/
SELECT departments.name, COUNT(*) AS degrees_count
FROM degrees
JOIN departments ON degrees.department_id = departments.id
GROUP BY departments.name