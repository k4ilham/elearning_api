require('dotenv').config(); // Menggunakan dotenv untuk mengambil nilai dari file .env

let mysql = require('mysql');

let connection = mysql.createConnection({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'raihan_payment',
  multipleStatements: true,
});

connection.connect(function (error) {
  if (error) {
    console.error('Kesalahan koneksi:', error.message);
  } else {
    console.log('Koneksi berhasil!');
  }
});

// Tangani penutupan koneksi saat aplikasi berakhir
process.on('SIGINT', function () {
  connection.end(function (err) {
    if (err) {
      console.error('Kesalahan penutupan koneksi:', err.message);
    } else {
      console.log('Koneksi ditutup.');
      process.exit();
    }
  });
});

module.exports = connection;
