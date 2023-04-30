const { json } = require("body-parser");
const express = require("express");
const pgp = require('pg-promise')();

const PORT = 8080;

const server = express();
server.use(json())

const connectOptions = {
    host: 'localhost',
    port: 5432,
    database: 'mockcompany',
    user: 'jhongarcian',
    password: '',
    allowExitOnIdle: true
}

const db =pgp(connectOptions);

server.get('/employee', async (req, res) => {
    const employee = await getEmployee();
    res.json(employee)
})

async function getEmployee() {
    const employee = await db.any('SELECT * FROM employee', [false]);
    return employee;
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
