import { Router } from 'express'
const router = new Router()

import mysql from 'mysql2'
import bdconfig from './config/bdconfig'

var connection = mysql.createConnection({
    host: bdconfig.host,
    user: bdconfig.user,
    password: bdconfig.password,
    database: bdconfig.db,
})
connection.connect()

connection.connect((err) => {
    if ( err ) throw err;
    console.log('Conectado a base de dados');
})

router.get('/', (req, res) => {
    return res.json({message: 'OK'})
})

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
router.get('/cidades/:cidadeId', (req, res) => {
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

//GET /cidades/{id_cidades}/atracoes/{id_atracao}


export default router