-- Step 4. Update your table so that the student with the lowest points is given 5 more points.

UPDATE students SET points = points + 5 WHERE id = (SELECT id FROM students ORDER BY points ASC LIMIT 1); 