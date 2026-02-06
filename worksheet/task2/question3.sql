-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT
  d.DepartmentName AS DepartmentName,
  COUNT(*) AS TotalEnrolments
FROM Department d
JOIN Course c
  ON c.DepartmentId = d.DepartmentId
JOIN Enrolment e
  ON e.CourseId = c.CourseId
GROUP BY d.DepartmentName;
