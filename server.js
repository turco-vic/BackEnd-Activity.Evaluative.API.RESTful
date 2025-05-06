require("dotenv").config();
const express = require("express");
const cors = require("cors");
const alunoRoutes = require("./src/routes/alunoRoutes");
const salaRoutes = require("./src/routes/salaRoutes");
const path = require("path");
const reportRoutes = require("./src/routes/reportRoutes");

const app = express();
app.use(cors());
app.use(express.json());
app.use("/api/alunos", alunoRoutes);
app.use("/api/salas", salaRoutes);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));
app.use("/api/report", reportRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
