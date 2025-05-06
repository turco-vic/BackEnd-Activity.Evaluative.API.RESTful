const pool = require("../config/database");

const getAlunos = async (name) => {
    if (!name) {
        const result = await pool.query(`
            SELECT alunos.id, alunos.name AS aluno_name, salas.name AS sala_name, alunos.idade AS aluno_idade
                FROM alunos
            LEFT JOIN salas ON alunos.sala_id = salas.id`
        );
        return result.rows;
    }
    else {
        const result = await pool.query(`            
            SELECT * FROM alunos WHERE name LIKE $1`,
            [`%${name}%`]);
        return result.rows;
    }
}; 

const getAlunoById = async (id) => {
    const result = await pool.query(
        `SELECT alunos.*, salas.name AS sala_name 
        FROM alunos 
        LEFT JOIN salas ON alunos.sala_id = salas.id 
        WHERE alunos.id = $1`, [id]
    );
    return result.rows[0];
};

const createAluno = async (name, sala_id, idade, photo) => {
    const result = await pool.query(
        "INSERT INTO alunos (name, sala_id, idade, photo) VALUES ($1, $2, $3, $4) RETURNING *",
        [name, sala_id, idade, photo]
    );
    return result.rows[0];
};

const updateAluno = async (id, name, sala_id, idade) => {
    const result = await pool.query(
        "UPDATE alunos SET name = $1, sala_id = $2, idade = $3 WHERE id = $4 RETURNING *",
        [name, sala_id, idade, id]
    );
    return result.rows[0];
};

const deleteAluno = async (id) => {
    const result = await pool.query("DELETE FROM alunos WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Aluno não encontrado!" };
    }
    return { message: "Aluno deletado com sucesso!" };
};

module.exports = { getAlunos, getAlunoById, createAluno, updateAluno, deleteAluno };
