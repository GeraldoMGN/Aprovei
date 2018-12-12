// ==================== EXTERNAL IMPORTS ==================== //
const request = require('request');
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');

// ==================== GLOBAL VARIABLES ==================== //

const app = express();
const alunos = [];

// ==================== START SERVER ==================== //

app.listen(process.env.PORT || 3000, () => {
    console.log('READY');
});
// ==================== FUNCTIONS ==================== //
// função para separar alunos por colunas da planilha, caso não seja selecionado nada, mostrará todos.
app.get('/api/alunos', (req, res) =>{
    if(!req.query.column){
        res.send(alunos);
        return;
    }
    res.send(alunos.map(aluno => aluno[req.query.column]));
});
