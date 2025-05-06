const pool = require("../config/database");

const getClasses = async () => {
    const result = await pool.query("SELECT * FROM classes");
    return result.rows;
};

const getClassById = async (id) => {
    const result = await pool.query("SELECT * FROM classes WHERE id = $1", [id]);
    return result.rows[0];
};

const createClass = async (name) => {
    const result = await pool.query(
        "INSERT INTO classes (name) VALUES ($1) RETURNING *",
        [name]
    );
    return result.rows[0];
};

const updateClass = async (id, name) => {
    const result = await pool.query(
        "UPDATE classes SET name = $1 WHERE id = $2 RETURNING *",
        [name, id]
    );
    return result.rows[0];
};

const deleteClass = async (id) => {
    const result = await pool.query("DELETE FROM classes WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Sala não encontrada!" };
    }
    return { message: "Sala deletada com sucesso!" };
};

module.exports = { getClasses, getClassById, createClass, updateClass, deleteClass };
