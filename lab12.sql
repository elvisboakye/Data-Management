SELECT CONCAT(course_name, ' - ', semester) AS course_semester
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE DAYOFWEEK(lab_time) = 6;

SELECT assignment_title, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

SELECT assignment_title
FROM assignments
WHERE DATE_FORMAT(due_date, '%m') = '09';

SELECT assignment_title
FROM assignments
WHERE due_date IS NULL;