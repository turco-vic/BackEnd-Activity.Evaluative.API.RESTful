const express = require("express");
const router = express.Router();
const reportController = require("../controllers/reportControllers");
const apiKeyMiddleware = require("../config/apiKey");

router.use(apiKeyMiddleware);
router.get("/pdf", reportController.exportAlunoPDF);

module.exports = router;