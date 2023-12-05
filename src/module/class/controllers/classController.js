const connection = require('../../../config/database');

exports.getList = (req, res) => {
  const { class_id, class_name, page, page_size } = req.body;
  const query = `CALL spMasterClassList(?, ?, ?, ?)`;
  connection.query(query, [class_id, class_name, page, page_size], (error, results) => {
    if (error) {
      console.error('Error executing stored procedure:', error.message);
      res.status(500).json({ error: 'Server error' });
    } else {
      const jsonResponse = {
        result: results[0][0]['result_code'],
        message: results[0][0]['error_message'],
        total_rows: results[1][0]['total_rows'],
        data: results.slice(2, -1)[0],
      };
      res.json(jsonResponse);
    }
  });
};

exports.getDetail = (req, res) => {
  const classId = req.params.class_id;
  connection.query(
    'CALL spMasterClassDetail(?)',[classId],(error, results) => {
      if (error) {
        res.status(500).json({ result: 0, message: 'Error executing the stored procedure.' });
        return;
      }
      const jsonResponse = {
        result: results[0][0]['result_code'],
        message: results[0][0]['error_message'],
        data: results[1],
      };
      res.json(jsonResponse);
    }
  );
};
