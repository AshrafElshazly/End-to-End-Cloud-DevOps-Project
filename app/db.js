const mysql = require('mysql2');
const dotenv = require('dotenv');

dotenv.config();

// Create MySQL connection
const connection = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
});

// Connect to the MySQL server
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL: ', err);
  } else {
    console.log('Connected to MySQL server');
    // Setup the database and create users table
    setupDatabase();
  }
});

// Function to setup the database and create the users table
function setupDatabase() {
  connection.query(
    `CREATE DATABASE IF NOT EXISTS ${process.env.DATABASE_NAME};`,
    (err) => {
      if (err) {
        console.error('Error creating database: ', err);
      } else {
        console.log('Database created or already exists');
        // Use the created database
        connection.query(`USE ${process.env.DATABASE_NAME};`, (useErr) => {
          if (useErr) {
            console.error('Error selecting database: ', useErr);
          } else {
            console.log('Database selected');
            // Create the users table
            connection.query(
              `CREATE TABLE IF NOT EXISTS users (
                id INT PRIMARY KEY AUTO_INCREMENT,
                username VARCHAR(255) NOT NULL,
                email VARCHAR(255) NOT NULL
              );`,
              (tableErr) => {
                if (tableErr) {
                  console.error('Error creating users table: ', tableErr);
                } else {
                  console.log('Users table created or already exists');
                  // Insert 3 sample users
                  insertSampleUsers();
                }
              }
            );
          }
        });
      }
    }
  );
}

// Function to insert sample users
function insertSampleUsers() {
  const sampleUsers = [
    { username: 'user1', email: 'user1@example.com' },
    { username: 'user2', email: 'user2@example.com' },
    { username: 'user3', email: 'user3@example.com' },
  ];

  connection.query(
    'INSERT INTO users (username, email) VALUES ?',
    [sampleUsers.map((user) => [user.username, user.email])],
    (err) => {
      if (err) {
        console.error('Error inserting sample users: ', err);
      } else {
        console.log('Sample users inserted successfully');
      }
    }
  );
}

module.exports = connection;
