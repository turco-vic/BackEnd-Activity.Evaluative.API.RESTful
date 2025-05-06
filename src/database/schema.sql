CREATE DATABASE escola;

\c escola; 

CREATE TABLE salas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    sala_id INTEGER REFERENCES salas(id) ON DELETE SET NULL,
    photo TEXT
);

INSERT INTO salas (name) VALUES
('Sala A'),
('Sala B'),
('Sala C'),
('Sala D'),
('Sala E');

INSERT INTO alunos (name, sala_id, photo) VALUES
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
