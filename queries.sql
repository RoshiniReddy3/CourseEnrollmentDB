USE course_enrollment;

-- 1. List all students
SELECT * FROM students;

-- 2. List all courses with instructor names
SELECT c.course_id, c.course_name, i.instructor_name
FROM courses c
JOIN instructors i ON c.instructor_id = i.instructor_id;

-- 3. Find all courses taken by a particular student
SELECT s.student_name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

-- 4. Count how many students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- 5. Show students who have enrolled in more than one course
SELECT s.student_name, COUNT(e.course_id) AS course_count
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
HAVING COUNT(e.course_id) > 1;
