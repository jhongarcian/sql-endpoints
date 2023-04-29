-- Step 12. Display the name, position, and salary of the highest paid employee.

SELECT name, position, salary FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);