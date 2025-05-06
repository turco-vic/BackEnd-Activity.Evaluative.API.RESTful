const express = require("express");
const router = express.Router();
const alunoController = require("../controllers/alunoController");
const upload = require("../config/upload.js");
const apiKeyMiddleware = require("../config/apiKey");

router.use(apiKeyMiddleware);
router.get("/", alunoController.getAllAlunos);
router.get("/:id", alunoController.getAluno);
router.post("/", upload.single("photo"), alunoController.createAluno);
router.put("/:id", alunoController.updateAluno);
router.delete("/:id", alunoController.deleteAluno);

module.exports = router;
