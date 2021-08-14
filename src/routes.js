import { Router } from 'express'
const router = new Router()

import mysql from 'mysql2'
import dbconfig from './config/dbconfig'

var connection = mysql.createConnection({
    host: dbconfig.host,
    user: dbconfig.user,
    password: dbconfig.password,
    database: dbconfig.db,
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
        'SELECT cidades.nome FROM sistema_turismo.cidades',
        (err, rows, fields) => {
            if (err) throw err;
            res.status(200).json(rows);
        },
    );
});
router.get('/roteiros', (req, res) => {
    connection.query(
        'SELECT setores.setor FROM sistema_turismo.setores',
        (err, rows, fields) => {
            if(err) throw err;
            res.status(200).json(rows);
        },
    );
});

// GET /cidades/{id_cidades}
router.get('/roteiros/{id_roteiro}', (req, res) => {
    connection.query(
        'SELECT roteiros.id, cidades.nome, cidades.estado, setores.setor, pontos_turisticos.nome, enderecos.logradouro, enderecos.numero FROM sistema_turismo.roteiros inner join setores on setores.id = roteiros.fk_tipo inner join atracoes_roteiro on atracoes_roteiro.idRoteiro = roteiros.id inner join cidades on cidades.id = roteiros.fk_cidade inner join pontos_turisticos on pontos_turisticos.id = atracoes_roteiro.idAtracao inner join enderecos on enderecos.id = pontos_turisticos.fk_enderecos)  '
        [req.params.id_roteiro],
        (err, rows, fields) => {
            if (err) throw err;
            if(rows.length <= 0) {
                return res.status(404).json({err: 'Roteiro não encontrado.'});
            }
            return res.status(200).json(rows);
        },
    );
});

export default router