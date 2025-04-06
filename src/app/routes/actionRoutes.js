const express = require("express");
const router = express.Router();
const { trackAction } = require("../controllers/actionController"); // استيراد الدالة من الكونترولر


router.post("/track", trackAction);

module.exports = router;
