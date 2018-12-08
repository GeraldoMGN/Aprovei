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
