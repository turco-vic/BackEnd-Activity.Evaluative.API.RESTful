const express = require("express");
const router = express.Router();
const salaController = require("../controllers/salaController");
const apiKeyMiddleware = require("../config/apiKey")

router.use(apiKeyMiddleware);
router.get("/", salaController.getAllSalas);
router.get("/:id", salaController.getSala);
router.post("/", salaController.createSala);
router.put("/:id", salaController.updateSala);
router.delete("/:id", salaController.deleteSala);

module.exports = router;
