SELECT cohorts.name AS cohort,
sum(assistance_requests.completed_at-assistance_requests.started_at) AS total_duration
FROM cohorts
JOIN students
ON cohorts.id = students.cohort_id
JOIN assistance_requests
ON students.id = assistance_requests.student_id
GROUP BY cohort
ORDER BY total_duration;