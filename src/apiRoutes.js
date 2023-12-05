const express = require('express');
const router = express.Router();
const classRoutes = require('./module/class/routes/classRoutes');

router.use('/class', classRoutes);

module.exports = router;
