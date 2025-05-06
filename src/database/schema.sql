CREATE DATABASE escola;

\c escola; 

CREATE TABLE salas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    idade INTEGER,
    sala_id INTEGER REFERENCES salas(id) ON DELETE SET NULL,
    photo TEXT
);

INSERT INTO salas (name) VALUES
('Sala A'),
('Sala B'),
('Sala C'),
('Sala D'),
('Sala E');

INSERT INTO alunos (name, sala_id, idade, photo) VALUES
('Bernardo', 1, 11, NULL),
('Pedro', 2, 12, NULL),
('Luiz', 3, 13, NULL),
('Lucas', 4, 14, NULL),
('Carlos', 5, 15, NULL),
('Julia', 1, 11, NULL),
('Beatriz', 2, 12, NULL),
('Ana', 3, 13, NULL),
('Giovana', 4, 14, NULL),
('Mariana', 5, 15, NULL);
