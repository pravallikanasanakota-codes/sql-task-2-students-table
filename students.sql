-- Task 2: Data Types, Constraints & Table Design

-- 1. Create students table with constraints
CREATE TABLE students (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender CHAR(1),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_students PRIMARY KEY (student_id),
    CONSTRAINT uq_students_email UNIQUE (email)
);

-- 2. Insert valid data
INSERT INTO students (first_name, last_name, email, date_of_birth, gender)
VALUES ('Rahul', 'Sharma', 'rahul.sharma@email.com', '2000-05-14', 'M');

-- 3. Insert invalid data (UNIQUE constraint violation)
INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES ('Amit', 'Verma', 'rahul.sharma@email.com', '1999-03-10');

-- 4. Insert invalid data (NOT NULL constraint violation)
INSERT INTO students (last_name, email, date_of_birth)
VALUES ('Singh', 'singh@email.com', '2001-01-01');

-- 5. Add new column
ALTER TABLE students
ADD COLUMN phone_number VARCHAR(15) UNIQUE;

-- 6. Rename column
ALTER TABLE students
CHANGE gender sex CHAR(1);

-- 7. Drop column
ALTER TABLE students
DROP COLUMN phone_number;
