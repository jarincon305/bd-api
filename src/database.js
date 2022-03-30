const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'users_data'
});


mysqlConnection.connect(function (err) {
    if (err) {
        console.log(err);
    } else {
        console.log('Se conecto a la base de datos.');
    }
});

module.exports = mysqlConnection;