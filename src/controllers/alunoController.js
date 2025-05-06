const alunoModel = require("../models/alunoModel");

const getAllAlunos = async (req, res) => {
    try {
        const {name} = req.query;
        const alunos = await alunoModel.getAlunos(name);
        res.json(alunos);
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: 'Erro ao buscar Aluno!' });
    }
};

const getAluno = async (req, res) => {
    try {
        const aluno = await alunoModel.getAlunoById(req.params.id);
        if (!aluno) {
            return res.status(404).json({ message: "Aluno não encontrado!" });
        }
        res.json(aluno);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Aluno!" });
    }
};

const createAluno = async (req, res) => {
    try {
        const { name, sala_id } = req.body;
        const photo = req.file ? req.file.filename : null;
        const newAluno = await alunoModel.createAluno(name, sala_id, photo);
        res.status(201).json(newAluno);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar Aluno!" });
    }
};

const updateAluno = async (req, res) => {
    try {
        const { name, sala_id } = req.body;
        const updateAluno = await alunoModel.updateAluno(req.params.id, name, sala_id);
        if (!updateAluno) {
            return res.status(404).json({ message: "Aluno não encontrado!" });
        }
        res.json(updateAluno);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Erro ao atualizar Aluno!" });
    }
};

const deleteAluno = async (req, res) => {
    try {
        const message = await alunoModel.deleteAluno(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar Aluno!" });
    }
};

module.exports = { getAllAlunos, getAluno, createAluno, updateAluno, deleteAluno };