-- Step 1. Create a database named mockcompany.

SELECT 'CREATE DATABASE mockcompany' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'mockcompany')\gexec
