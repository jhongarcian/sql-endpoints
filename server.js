const express = require("express");

const PORT = 8080;

const server = express();

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
