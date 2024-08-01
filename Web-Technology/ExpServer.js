const express = require('express');

const app = express()

const fs = require('fs')

fs.writeFile('about.txt','Here is the INFORMATION About home',(req,res)=>{

    console.log('File Created')
})

app.get('/about',(req,res)=>{

    const read =fs.readFileSync('about.txt')
    
    res.send(read.toString())

  })

  fs.writeFile('contact.txt','Contact Number:xxxxxxxxxx',(req,res)=>{

    console.log('File Created')
})

app.get('/contact',(req,res)=>{

    const read =fs.readFileSync('contact.txt')
    
    res.send(read.toString())

  })

app.listen(3000);