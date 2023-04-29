-- Step 8: Display only the names of employees that have a d, upper or lower case, somewhere in their name.

SELECT name FROM employee WHERE name ILIKE '%a%' or name ILIKE '%b%';