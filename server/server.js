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
// função para separar alunos por area
app.get('/api/area', (req, res) =>{
    res.send(alunos.map(aluno => aluno.area));
});
// função para separar alunos por curso
app.get('/api/curso', (req, res) =>{
    res.send(alunos.map(aluno => aluno.curso));
});
// função para separar alunos por vestibular
app.get('/api/vestibular', (req, res) =>{
    res.send(alunos.map(aluno => aluno.vestibular));
});
