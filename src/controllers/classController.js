const classModel = require("../models/classModel");

const getAllClasses = async (req, res) => {
    try {
        const classes = await classModel.getClasses();
        res.json(classes);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Sala!" });
    }
};

const getClass = async (req, res) => {
    try {
        const class = await classModel.getClassById(req.params.id);
        if (!class) {
            return res.status(404).json({ message: "Sala não encontrada!" });
        }
        res.json(class);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Sala!" });
    }
};

const createClass = async (req, res) => {
    try {
        const { name } = req.body;
        const newClass = await classModel.createClass(name);
        res.status(201).json(newClass);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar sala!" });
    }
};

const updateClass = async (req, res) => {
    try {
        const { name } = req.body;
        const updateClass = await classModel.updateClass(req.params.id, name);
        if (!updateClass) {
            return res.status(404).json({ message: "Sala não encontrada!" });
        }
        res.json(updateClass);
    } catch (error) {
        console.error(error)
        res.status(500).json({ message: "Erro ao atualizar Sala!" });
    }
};

const deleteClass = async (req, res) => {
    try {
        const message = await classModel.deleteClass(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar Sala!" });
    }
};

module.exports = { getAllClasses, getClass, createClass, updateClass, deleteClass };