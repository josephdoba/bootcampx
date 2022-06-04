SELECT count(id) FROM students
WHERE cohort_id <= 3;

-- LHL's solution:
-- SELECT count(id)
-- FROM students
-- WHERE cohort_id IN (1,2,3);