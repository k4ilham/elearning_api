const express = require('express');
const router = express.Router();
const classController = require('../controllers/classController');

router.post('/list', classController.getList);
router.post('/detail/:class_id', classController.getDetail);

module.exports = router;
