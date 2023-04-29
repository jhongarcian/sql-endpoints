-- Step 1. Create Database Sept2022;

SELECT 'CREATE DATABASE sept2022' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'sep2022')\gexec
