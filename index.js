const express = require("express")
const cors = require("cors")
const app = express()
const database = require("./config/db")

app.use(cors("*"))

app.get("/", (req,res) => {
    res.status(200).send("je suis sur le localhost")
})


app.get("/demandeur", (req,res) => {
  
    database
        .query("SELECT * FROM demandeur")
        .then(([demandeur]) => res.json(demandeur))
        .catch((err) => {
            console.error(err)
            res.status(500).send("Error retrieving data from database")
        })
})


app.get("/fichedepost", (req,res) => {
  
    database
        .query("SELECT * FROM fichedepost inner join demandeur on fichedepost.Demandeur_id = demandeur.id")
        .then(([fichedepost]) => res.json(fichedepost))
        .catch((err) => {
            console.error(err)
            res.status(500).send("Error retrieving data from database")
        })
})





app.listen(4242, console.log("http://localhost:4242"))