-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the database
USE hbtn_0d_usa;

-- Create the cities table if it doesn't exist
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

-- Insert data into the cities table
INSERT INTO cities (state_id, name) VALUES (1, "San Francisco");

-- Select data from the cities table
SELECT * FROM cities;

-- Attempt to insert data that violates the foreign key constraint
-- This will result in an error
-- INSERT INTO cities (state_id, name) VALUES (10, "Paris");
