-- SELECT students.name as student_name, AVG(assignment_submissions.*) as average_assignment_duration
-- FROM students
-- JOIN students ON students.name = student.name
-- JOIN assignments ON assignments.duration = assignments.average_duration
-- GROUP BY student_name
-- ORDER BY average_assignment_duration;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;