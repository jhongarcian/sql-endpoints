-- Step 5. Update the values in your table where any student who has False for their graduation is changed to True.

UPDATE students SET graduated = true WHERE graduated = false;