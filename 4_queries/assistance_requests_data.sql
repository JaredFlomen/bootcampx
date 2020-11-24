-- SELECT teachers.name AS teacher,
-- students.name AS student,
-- assignments.name AS assignment, 
-- (assitance_requests.completed_at) - (assitance_requests.started_at) AS duration
-- FROM students
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- JOIN assignments ON assignment_submissions.assignment_id = assignments.id
-- JOIN assistance_requests ON 
-- ORDER BY (assitance_requests.completed_at) - (assitance_requests.started_at) DESC;

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;