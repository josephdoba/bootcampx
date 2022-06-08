-- has: id | assignment_id | student_id | duration | submission_date

-- It will work on any student, but for this example use: 'Ibrahim Schimmel'
-- Get the total amount of assignment time spent from one student

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
 