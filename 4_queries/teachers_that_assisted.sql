-- SELECT teachers.name AS teacher,
-- cohorts.name as cohorts
-- WHERE cohorts.name = 'JUL02' AND
-- WHERE cohorts.end_date < teachers.end_date
-- OR
-- WHERE teachers.end_date IS NULL;
-- JOIN teachers ON 

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;