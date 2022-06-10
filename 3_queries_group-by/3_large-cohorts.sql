-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

-- SELECT cohort_id, start_date
-- FROM students, cohorts
-- GROUP BY cohort_name
-- HAVING count(*) >= 18
-- ORDER BY cohort_name;

SELECT cohorts.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;