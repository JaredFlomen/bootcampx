-- SELECT
-- assistance_requests.id as id, assignments.name AS name,
-- assignments.day AS day,
-- assignments.chapter as chapter,
-- count(assistance_requests.*) AS total_requests
-- FROM assistance_requests
-- JOIN assignments
-- ON assistance_requests.assignment_id = assignments.id
-- GROUP BY assistance_requests.id
-- ORDER BY total_requests;

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;