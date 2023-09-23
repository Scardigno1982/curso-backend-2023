const { Sequelize } = require('sequelize');

// Carga las variables de entorno desde el archivo .env
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE, process.env.USER, process.env.PASSWORD, {
  host: process.env.HOST, // Asegúrate de que HOST sea la dirección correcta (puede ser 'localhost')
  port: process.env.PORT, // Asegúrate de que PORT sea el puerto correcto (generalmente 3306)
  dialect: 'mysql',
  logging: console.log, // Esto mostrará información de consultas en la consola (opcional)
});


module.exports = sequelize;
