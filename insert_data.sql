USE course_enrollment;

INSERT INTO students VALUES
(1, 'Roshini', 'roshini@example.com', 'CSE'),
(2, 'Rahul', 'rahul@example.com', 'IT'),
(3, 'Priya', 'priya@example.com', 'CSE');

INSERT INTO instructors VALUES
(1, 'Dr. Kumar', 'Databases'),
(2, 'Ms. Meera', 'Web Development');

INSERT INTO courses VALUES
(101, 'SQL Basics', 3, 1),
(102, 'Web Development', 4, 2),
(103, 'Advanced Databases', 4, 1);

INSERT INTO enrollments VALUES
(1, 1, 101, '2025-01-10'),
(2, 1, 102, '2025-01-12'),
(3, 2, 101, '2025-01-15'),
(4, 3, 103, '2025-01-18');
