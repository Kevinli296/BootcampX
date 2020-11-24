SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;

-- FIRST ATTEMPT:
-- SELECT students.name AS student, AVG(duration) AS average_assignment_duration
-- FROM assignment_submissions
-- LEFT JOIN students ON students.id = student_id
-- LEFT JOIN cohorts ON cohorts.id = cohort_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- ORDER BY AVG(duration) DESC;