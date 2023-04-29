-- Step 16. Display the name and corresponding id number of the second highest paid employee. 

SELECT name, id FROM employee WHERE salary = (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee));