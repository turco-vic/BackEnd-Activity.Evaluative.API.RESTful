const salaModel = require("../models/salaModel");

const getAllSalas = async (req, res) => {
    try {
        const salas = await salaModel.getSalas();
        res.json(salas);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Sala!" });
    }
};

const getSala = async (req, res) => {
    try {
        const sala = await salaModel.getSalaById(req.params.id);
        if (!sala) {
            return res.status(404).json({ message: "Sala não encontrada!" });
        }
        res.json(sala);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Sala!" });
    }
};

const createSala = async (req, res) => {
    try {
        const { name } = req.body;
        const newSala = await salaModel.createSala(name);
        res.status(201).json(newSala);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar sala!" });
    }
};

const updateSala = async (req, res) => {
    try {
        const { name } = req.body;
        const updateSala = await salaModel.updateSala(req.params.id, name);
        if (!updateSala) {
            return res.status(404).json({ message: "Sala não encontrada!" });
        }
        res.json(updateSala);
    } catch (error) {
        console.error(error)
        res.status(500).json({ message: "Erro ao atualizar Sala!" });
    }
};

const deleteSala = async (req, res) => {
    try {
        const message = await salaModel.deleteSala(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar Sala!" });
    }
};

module.exports = { getAllSalas, getSala, createSala, updateSala, deleteSala };