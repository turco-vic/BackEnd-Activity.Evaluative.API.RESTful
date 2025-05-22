CREATE DATABASE escola;

\c escola; 

CREATE TABLE salas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    idade TEXT,
    sala_id INTEGER REFERENCES salas(id) ON DELETE SET NULL,
    photo TEXT
);

INSERT INTO salas (name) VALUES
('Sala A1'),
('Sala B2'),
('Sala C3'),
('Sala D4'),
('Sala E5');

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

INSERT INTO alunos (name, sala_id, idade, photo) VALUES
('Kevin', 1, 11, NULL),
('Gabriel', 2, 12, NULL),
('Rafael', 3, 13, NULL),
('Felipe', 4, 14, NULL),
('Matheus', 5, 15, NULL),
('Fernanda', 1, 11, NULL),
('Larissa', 2, 12, NULL),
('Juliana', 3, 13, NULL),
('Tatiane', 4, 14, NULL),
('Priscila', 5, 15, NULL),

INSERT INTO alunos (name, sala_id, idade, photo) VALUES
('Priscilo', 1, 11, NULL),
('Jefferson', 2, 12, NULL),
('Vinicius', 3, 13, NULL),
('Eduardo', 4, 14, NULL),
('Thiago', 5, 15, NULL),
('Amanda', 1, 11, NULL),
('Patricia', 2, 12, NULL),
('Camila', 3, 13, NULL),
('Roberta', 4, 14, NULL),
('Sabrina', 5, 15, NULL);

INSERT INTO salas (name) VALUES
('Sala F6'),
('Sala G7'),
('Sala H8'),
('Sala I9'),
('Sala J10'),
('Sala K11'),
('Sala L12'),
('Sala M13'),
('Sala N14'),
('Sala O15'),
('Sala P16'),
('Sala Q17'),
('Sala R18'),
('Sala S19'),
('Sala T20'),
('Sala U21'),
('Sala V22'),
('Sala W23'),
('Sala X24'),
('Sala Y25'),
('Sala Z26');
