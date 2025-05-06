const pool = require("../config/database");

const getStudents = async (name) => {
    if (!name) {
        const result = await pool.query(`
            SELECT students.id, students.name AS student_name, classes.name AS class_name
                FROM students
            LEFT JOIN classes ON students.class_id = classes.id`
        );
        return result.rows;
    }
    else {
        const result = await pool.query(`            
            SELECT students.id, students.name AS student_name, classes.name AS class_name
                FROM students
            LEFT JOIN classes ON students.class_id = classes.id
            WHERE students.name ILIKE $1`,
            [`%${name}%`]);
        return result.rows;
    }
};

const getStudentById = async (id) => {
    const result = await pool.query(
        `SELECT students.*, classes.name AS class_name 
        FROM students 
        LEFT JOIN classes ON students.class_id = classes.id 
        WHERE students.id = $1`, [id]
    );
    return result.rows[0];
};

const createStudent = async (name, class_id, photo) => {
    const result = await pool.query(
        "INSERT INTO students (name, class_id, photo) VALUES ($1, $2, $3) RETURNING *",
        [name, class_id, photo]
    );
    return result.rows[0];
};

const updateStudent = async (id, name, class_id) => {
    const result = await pool.query(
        "UPDATE students SET name = $1, class_id = $2 WHERE id = $3 RETURNING *",
        [name, class_id, id]
    );
    return result.rows[0];
};

const deleteStudent = async (id) => {
    const result = await pool.query("DELETE FROM students WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Aluno não encontrado!" };
    }
    return { message: "Aluno deletado com sucesso!" };
};

module.exports = { getStudents, getStudentById, createStudent, updateStudent, deleteStudent };
