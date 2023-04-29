-- Step 2. Create a table and name it students. It should contain the following information: name, website, github_username, points, gender, cohort_start_date, graduated.

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