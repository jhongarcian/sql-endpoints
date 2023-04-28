SELECT 'CREATE DATABASE exp_db' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'exp_db')\gexec
