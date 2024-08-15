const mysql = require('mysql2');
const dotenv = require('dotenv');

dotenv.config();

// Create connection pools for master and slave servers
const masterPool = mysql.createPool({
  host: process.env.MYSQL_MASTER_HOST,
  user: process.env.MYSQL_APP_USER,
  password: process.env.MYSQL_APP_USER_PASSWORD,
  database: process.env.DATABASE_NAME,
});

const slavePool = mysql.createPool({
  host: process.env.MYSQL_SLAVE_HOST,
  user: process.env.MYSQL_APP_USER,
  password: process.env.MYSQL_APP_USER_PASSWORD,
  database: process.env.DATABASE_NAME,
});

let activePool = masterPool; // Start with master pool

// Function to get a connection from the active pool
const getConnection = () => {
  return new Promise((resolve, reject) => {
    activePool.getConnection((err, connection) => {
      if (err) {
        console.error('Error connecting to database: ', err);
        reject(err);
      } else {
        resolve(connection);
      }
    });
  });
};

// Function to handle failover by switching to the slave pool
const handleFailover = () => {
  console.log('Switching to slave server...');
  activePool = slavePool;
};

// Connect to the MySQL servers
const connectToServers = () => {
  masterPool.getConnection((err, connection) => {
    if (err) {
      console.error('Error connecting to master server: ', err);
      handleFailover();
    } else {
      console.log('Connected to master server');
      connection.release();
    }
  });

  slavePool.getConnection((err, connection) => {
    if (err) {
      console.error('Error connecting to slave server: ', err);
    } else {
      console.log('Connected to slave server');
      connection.release();
    }
  });
};

// Call the function to connect to servers when this module is loaded
connectToServers();

module.exports = {
  getConnection,
};
