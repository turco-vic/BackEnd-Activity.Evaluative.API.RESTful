require("dotenv").config();
const express = require("express");
const cors = require("cors");
const studentRoutes = require("./src/routes/studentRoutes");
const classRoutes = require("./src/routes/classRoutes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api/students", studentRoutes);
app.use("/api/classs", classRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
