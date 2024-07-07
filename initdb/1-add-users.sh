#!/bin/bash

psql -U ${POSTGRES_USER} <<-END
    -- Create the users table
    CREATE TABLE users (
        id SERIAL PRIMARY KEY,
        username VARCHAR(50) UNIQUE NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        password VARCHAR(100) NOT NULL,
        full_name VARCHAR(100),
        date_of_birth DATE,
        is_active BOOLEAN DEFAULT TRUE,
        created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
    );

    -- Expose a view in our db schema (this will hide the password column)
    CREATE VIEW ${DB_SCHEMA}.users WITH (security_invoker = true) AS
    SELECT 
        id, 
        username, 
        email, 
        full_name, 
        date_of_birth, 
        is_active, 
        created_at
    FROM users;
END