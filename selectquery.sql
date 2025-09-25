USE CollegeDB;

-- 1. Select everything from Students
SELECT * FROM Students;

-- 2. Select specific columns
SELECT first_name, last_name, email FROM Students;

-- 3. WHERE condition (students born after 2000)
SELECT * FROM Students
WHERE dob > '2000-01-01';

-- 4. WHERE with AND (Computer Science instructors with email)
SELECT * FROM Instructors
WHERE department = 'Computer Science'
  AND email IS NOT NULL;

-- 5. WHERE with OR (students with missing email OR missing dob)
SELECT * FROM Students
WHERE email IS NULL OR dob IS NULL;

-- 6. LIKE (search pattern: names starting with 'P')
SELECT * FROM Students
WHERE first_name LIKE 'P%';

-- 7. BETWEEN (students born between 1999 and 2001)
SELECT * FROM Students
WHERE dob BETWEEN '1999-01-01' AND '2001-12-31';

-- 8. ORDER BY (students sorted by last name ASC)
SELECT * FROM Students
ORDER BY last_name ASC;

-- 9. ORDER BY (courses sorted by credits DESC)
SELECT * FROM Courses
ORDER BY credits DESC;

-- 10. LIMIT (only first 2 rows from Students)
SELECT * FROM Students
LIMIT 2;
