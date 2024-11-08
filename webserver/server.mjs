import express from "express";
import fs from "fs";
import https from "https";
import bodyParser from "body-parser";

const app = express();
const port = 8080;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

import cors from 'cors';
app.use(cors());

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.post('/submit', (req, res) => {
  console.log('request data = ', req.body);
  res.send(req.body);
});

const options = {
    key: fs.readFileSync("/Users/zack/.ssh/glasspp/server.key"),
    cert: fs.readFileSync("/Users/zack/.ssh/glasspp/server.crt"),
};

https.createServer(options, app)
    .listen(port, function (req, res) {
        console.log(`Server started at port ${port}`);
    });
