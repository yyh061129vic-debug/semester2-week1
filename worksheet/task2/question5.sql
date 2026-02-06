-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT
  s.StudentId,
  s.FirstName,
  s.LastName,
  COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM Student s
LEFT JOIN Enrolment e
  ON e.StudentId = s.StudentId
 AND e.Grade >= 40
LEFT JOIN Course c
  ON c.CourseId = e.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName;
