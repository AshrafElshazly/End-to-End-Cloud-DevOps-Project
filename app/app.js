const express = require('express');
const bodyParser = require('body-parser');
const db = require('./db');

const app = express();

app.use(bodyParser.json());

// Redirect root to
app.get('/', (req, res) => {
  res.status(200).send('<h1>Hello, this is a sample app!</h1> <br> <p>Fetch users from the database by visiting <a href="/users">users</a>.<p>Test 2 CI/CD');
}); 

app.get('/users', (req, res) => {
  db.query('SELECT * FROM users', (err, results) => {
    if (err) {
      console.error('Error executing MySQL query: ', err);
      res.status(500).send('Internal Server Error');
    } else {
      res.json(results);
    }
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
