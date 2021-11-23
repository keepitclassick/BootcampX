SELECT COUNT(assistance_requests.*) as total_AssistanceRequests, name 
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;