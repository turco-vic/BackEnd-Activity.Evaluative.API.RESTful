const pool = require("../config/database");

const getSalas = async () => {
    const result = await pool.query("SELECT * FROM salas");
    return result.rows;
};

const getSalaById = async (id) => {
    const result = await pool.query("SELECT * FROM salas WHERE id = $1", [id]);
    return result.rows[0];
};

const createSala = async (name) => {
    const result = await pool.query(
        "INSERT INTO salas (name) VALUES ($1) RETURNING *",
        [name]
    );
    return result.rows[0];
};

const updateSala = async (id, name) => {
    const result = await pool.query(
        "UPDATE salas SET name = $1 WHERE id = $2 RETURNING *",
        [name, id]
    );
    return result.rows[0];
};

const deleteSala = async (id) => {
    const result = await pool.query("DELETE FROM salas WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Sala não encontrada!" };
    }
    return { message: "Sala deletada com sucesso!" };
};

module.exports = { getSalas, getSalaById, createSala, updateSala, deleteSala };
