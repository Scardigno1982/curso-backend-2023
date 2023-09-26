const { Sequelize } = require('sequelize');

// Carga las variables de entorno desde el archivo .env
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE, process.env.USER, process.env.PASSWORD, {
  host: process.env.HOST,
  port: process.env.PORT,
  dialect: 'mysql',
  logging: console.log,
});


module.exports = sequelize;
