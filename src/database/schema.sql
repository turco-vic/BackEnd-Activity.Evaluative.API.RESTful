CREATE DATABASE school;

\c school; 

CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    class_id INTEGER REFERENCES classes(id) ON DELETE SET NULL,
    photo TEXT
);

INSERT INTO classes (name) VALUES
('Class A'),
('Class B'),
('Class C'),
('Class D'),
('Class E');

INSERT INTO students (name, class_id, photo) VALUES
('Bernardo', 1, NULL),
('Pedro', 2, NULL),
('Luiz', 3, NULL),
('Lucas', 4, NULL),
('Carlos', 5, NULL),
('Julia', 1, NULL),
('Beatriz', 2, NULL),
('Ana', 3, NULL),
('Giovana', 4, NULL),
('Mariana', 5, NULL);