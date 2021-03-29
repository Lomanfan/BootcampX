/* 
Create a new directory called BootcampX.
Start a new psql session.

-- Create the database
CREATE DATABASE bootcampx;

-- Start using the database
\c bootcampx; (enter \c bootcampx every time you enter a new psql session to make sure that you're using the correct database.)

Write the CREATE TABLE statements for the students and a cohorts tables.

Add the tables to the database.
From your psql session, type \i migrations/students_cohorts.sql
Now enter \dt into your psql session to make sure the two tables have been created.

To look at all of the data in the students and cohorts tables.
In psql, enter the following commands:
SELECT * FROM students;
SELECT * FROM cohorts;
*/

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);


CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohorts_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
)