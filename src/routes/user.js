const express = require('express');
const router = express.Router();

const mysqlConnection = require('../database');

router.get('/api/users', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    mysqlConnection.query('SELECT * FROM personal', (err, rows, fields) => {
        if(!err) {
            res.json(rows);
        } else {
            console.log('err', err);
        }
    });
});


router.post('/api/users', (req, res) => {
    mysqlConnection.query("INSERT IGNORE INTO personal (nombre, identificacion, donde_vive, donde_trabaja, cargo, cuanto_gana, jefe_inmediato, telefono, correo_personal, correo_corporativo) VALUES('Jefferson', '1234791503', 'San benito', 'Sicte', 'Programador', '1.800.000', 'Probando','3135256943','', '')", (err, rows, fields ) => {
    // mysqlConnection.query("INSERT IGNORE INTO personal (nombre, identificacion) VALUES ('jefferson', 1234)", (err, rows, fields ) => {
        if (!err){
            res.json(rows);
        } else {
            console.log(err);
        }
    });
});

module.exports = router;