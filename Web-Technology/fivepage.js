const express = require('express')
const app = express()

app.get('/Home', (req, res) => {
    res.send("This is Home Page")
})
app.get('/about', (req, res) => {
    res.send("This is about Page")
})
app.get('/Contect', (req, res) => {
    res.send("This is Contect Page")
})
app.get('/info', (req, res) => {
    res.send("This is info Page")
})
app.get('/other', (req, res) => {
    res.send("This is other Page")
})

app.listen(4000)
