SELECT COUNT(assistance_requests.*) as total_AssistanceRequests, name 
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;