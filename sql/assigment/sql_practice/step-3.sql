-- Step 3. Add three students to your table.

INSERT INTO students (id, name, website, github_username, points, gender, cohort_start_date, graduated)
VALUES 
  (1, 'Alice', 'https://alice.com', 'alice123', 100, 'female', '2021-01-01', true),
  (2, 'Bob', 'https://bob.com', 'bob456', 80, 'male', '2021-02-15', true),
  (3, 'Charlie', 'https://charlie.com', 'charlie789', 70, 'male', '2021-03-01', false);