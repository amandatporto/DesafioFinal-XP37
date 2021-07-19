import { Router } from 'express';
const router = new Router();

import mysql from 'mysql2';
import dbconfig from './config/dbconfig';

var connection = mysql.createConnection({
    host: dbconfig.host,
    user: dbconfig.user,
    password: dbconfig.password,
    database: dbconfig.bd
})

connection.connect();

connection.connect((err) => {
    if (err) throw err;
    console.log('Conectado à base de dados.')
});



// get /cidades
router.get('/cidades', (req, res) => {
    connection.query(
        //inserir SELECT ' 
        (err, rows, fields) => {
            if (err) throw err;
            res.status(200).json(rows);
        },
    );
});

// GET /cidades/{id_cidades}
router.get( '/cidades/:cidadeId', (req, res) => {
    connection.query(
        //inserir SELECT    
        [req.params.cidadeId],
        (err, rows, fields) => {
            if (err) throw err;
            if(rows.length <= 0) {
                return res.status(404).json({err: 'Cidade não encontrada.'});
            }
            return res.status(200).json(rows);
        },
    );
});

//GET /cidades/{id_cidades}/atracoes

//GET /cidades/{id_cidades}/atracoes/{id_atracao}

