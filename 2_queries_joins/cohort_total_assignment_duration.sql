SELECT sum(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
-- This is what I did before, keeping to self check
-- JOIN cohorts ON cohorts.id = assignment_submissions.assignment_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';