-- Step 2. Create a table named employee, and have the following columns: name, position, currently_employed, gender, years_employed, salary, id.

CREATE TABLE students (
    name VARCHAR(250) NOT NULL,
    position VARCHAR(250) NOT NULL,
    currently_employed BOOLEAN NOT NULL,
    years_employed INTEGER NOT NULL,
    gender VARCHAR(50) NOT NULL,
    salary INTEGER NOT NULL,
    id INTEGER NOT NULL
);
