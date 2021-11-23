SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration,
AVG(assignments.duration) as estimated_duration_average
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);