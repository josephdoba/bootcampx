SELECT COUNT(*) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;