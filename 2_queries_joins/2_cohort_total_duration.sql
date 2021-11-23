SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = students_id
JOIN cohorts ON cohorts.id = cohorts_id
WHERE cohorts.name = 'FEB12';