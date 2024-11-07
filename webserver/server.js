import express from "express";

const app = express();
const port = 8080;

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.post('/submit', (req, res) => {
  console.log('request data = ', req.body);
  res.send(req.body);
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
