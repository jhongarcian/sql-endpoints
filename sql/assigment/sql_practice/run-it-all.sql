SELECT 'CREATE DATABASE sept2022' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'sep2022')\gexec

\c sept2022

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    website VARCHAR(250) NOT NULL,
    github_username VARCHAR (250),
    points INTEGER NOT NULL,
    gender VARCHAR(50) NOT NULL,
    cohort_start_date VARCHAR(100) NOT NULL,
    graduated BOOLEAN NOT NULL
);

INSERT INTO students (id, name, website, github_username, points, gender, cohort_start_date, graduated)
VALUES 
  (1, 'Alice', 'https://alice.com', 'alice123', 100, 'female', '2021-01-01', true),
  (2, 'Bob', 'https://bob.com', 'bob456', 80, 'male', '2021-02-15', true),
  (3, 'Charlie', 'https://charlie.com', 'charlie789', 70, 'male', '2021-03-01', false);

UPDATE students SET points = points + 5 WHERE id = (SELECT id FROM students ORDER BY points ASC LIMIT 1);

UPDATE students SET graduated = true WHERE graduated = false;

INSERT INTO students (id, name, website, github_username, points, gender, cohort_start_date, graduated)
VALUES
  (4, 'Danielle', 'https://danielle.com', 'danielle101', 90, 'female', '2021-04-15', true),
  (5, 'Evan', 'https://evan.com', 'evan2022', 60, 'male', '2021-05-01', false);

DELETE FROM students WHERE id = 2;

SELECT * FROM students WHERE gender = 'male';

SELECT * FROM students WHERE graduated = true;

ALTER TABLE students ADD COLUMN city VARCHAR(50);

SELECT AVG(points) FROM students;
