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
('João', 1, 11, NULL),
('Maria', 2, 12, NULL),
('José', 3, 13, NULL),
('Ana', 4, 14, NULL),
('Pedro', 5, 15, NULL),
('Lucas', 1, 11, NULL),
('Gabriel', 2, 12, NULL),
('Mateus', 3, 13, NULL),
('Julia', 4, 14, NULL),
('Mariana', 5, 15, NULL);

INSERT INTO alunos (name, sala_id, idade, photo) VALUES
('Rafael', 1, 11, NULL),
('Larissa', 2, 12, NULL),
('Beatriz', 3, 13, NULL),
('Felipe', 4, 14, NULL),
('Matheus', 5, 15, NULL),
('Fernanda', 1, 11, NULL),
('Larissa', 2, 12, NULL),
('Juliana', 3, 13, NULL),
('Tatiane', 4, 14, NULL),
('Priscila', 5, 15, NULL);

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

INSERT INTO alunos (name, sala_id, idade, photo) VALUES
('Carlos', 6, 10, NULL),
('Bruna', 6, 11, NULL),
('Ricardo', 6, 12, NULL),
('Patrícia', 7, 10, NULL),
('Fernanda', 7, 11, NULL),
('André', 7, 12, NULL),
('Aline', 8, 10, NULL),
('Marcos', 8, 11, NULL),
('Tatiane', 8, 12, NULL),
('Paulo', 9, 10, NULL),
('Letícia', 9, 11, NULL),
('Robson', 9, 12, NULL),
('Simone', 10, 10, NULL),
('Bruno', 10, 11, NULL),
('Carla', 10, 12, NULL),
('Renato', 11, 10, NULL),
('Vanessa', 11, 11, NULL),
('Diego', 11, 12, NULL),
('Elaine', 12, 10, NULL),
('Rodrigo', 12, 11, NULL),
('Tatiana', 12, 12, NULL),
('Sandra', 13, 10, NULL),
('Marcelo', 13, 11, NULL),
('Cristina', 13, 12, NULL),
('Fábio', 14, 10, NULL),
('Juliana', 14, 11, NULL),
('Leandro', 14, 12, NULL),
('Adriana', 15, 10, NULL),
('Gustavo', 15, 11, NULL),
('Camila', 15, 12, NULL),
('Luciana', 16, 10, NULL),
('Maurício', 16, 11, NULL),
('Débora', 16, 12, NULL),
('Sérgio', 17, 10, NULL),
('Rafaela', 17, 11, NULL),
('Cristiano', 17, 12, NULL),
('Tatiane', 18, 10, NULL),
('Alexandre', 18, 11, NULL),
('Michele', 18, 12, NULL),
('Rogério', 19, 10, NULL),
('Priscila', 19, 11, NULL),
('César', 19, 12, NULL),
('Viviane', 20, 10, NULL),
('Edson', 20, 11, NULL),
('Daniela', 20, 12, NULL),
('Alessandra', 21, 10, NULL),
('Fernando', 21, 11, NULL),
('Paula', 21, 12, NULL),
('Rafael', 22, 10, NULL),
('Bianca', 22, 11, NULL),
('Eduarda', 22, 12, NULL),
('Tiago', 23, 10, NULL),
('Larissa', 23, 11, NULL),
('Vitor', 23, 12, NULL),
('Isabela', 24, 10, NULL),
('Henrique', 24, 11, NULL),
('Natália', 24, 12, NULL),
('Lucas', 25, 10, NULL),
('Luiza Y2', 25, 11, NULL),
('Luisa Y3', 25, 12, NULL),
('Caio Z1', 26, 10, NULL),
(' Z2', 26, 11, NULL),
('Aluno Z3', 26, 12, NULL);