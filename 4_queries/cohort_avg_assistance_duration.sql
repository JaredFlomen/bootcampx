-- SELECT avg(assistance_requests.completed_at-assistance_requests.started_at) AS average_total_duration
-- FROM cohorts
-- JOIN students
-- ON cohorts.id = students.cohort_id
-- JOIN assistance_requests
-- ON students.id = assistance_requests.student_id;

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;