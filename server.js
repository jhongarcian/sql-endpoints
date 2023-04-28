const { json } = require("body-parser");
const express = require("express");
const pgp = require('pg-promise')();

const PORT = 8080;

const server = express();
server.use(json())

const cn = {
    host: 'localhost',
    port: 5432,
    database: 'mockcompany',
    user: 'jhongarcian',
    password: '',
    allowExitOnIdle: true
}

const db =pgp(cn);

server.get('/students', async (req, res) => {
    const students = await getStudents();
    res.json(students)
})

async function getStudents() {
    const students = await db.any('SELECT * FROM students', [false]);
    return students;
}

// Health endpoint 
server.get('/heartbeat', (req, res) => {
    res.json({
        "status": "ok",
        "is": "working"
    })
})

server.listen(PORT, () => {
    console.log(`The server is running at PORT ${PORT}`)
})
