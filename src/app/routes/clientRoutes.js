const express = require("express");
const { defineClient } = require("../controllers/clientController");

const router = express.Router();

router.post("/define", defineClient);

module.exports = router;
