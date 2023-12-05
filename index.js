const express = require('express');
const app = express();
const cors = require('cors');
app.use(cors());
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
const connection = require('./src/config/database');
const apiRoutes = require('./src/apiRoutes');
app.use('/api', apiRoutes);
app.listen(process.env.APP_PORT, () => {
  console.log(`Run On : ${process.env.APP_URL }:${process.env.APP_PORT}`);
});
