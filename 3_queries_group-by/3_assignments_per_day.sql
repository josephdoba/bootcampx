-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;


-- assignments table contains rows:
--  id, name, content, day, chapter, duration 


SELECT day, count(id) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY day ASC;

-- SELECT day, count(assignment_submissions.*)
-- FROM assignments