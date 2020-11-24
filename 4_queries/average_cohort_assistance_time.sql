SELECT cohorts.name AS name,
avg(completed_at-started_at) as average_asisstance_time
FROM cohorts
JOIN students
ON cohorts.id = students.cohort_id
JOIN assistance_requests 
ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average_asisstance_time;