const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection'); // Ajusta la ruta según la ubicación de tu archivo de conexión

const Categoria = sequelize.define('Categoria', {
    // Define los campos de la tabla categorias
    nombre: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    // Opciones adicionales del modelo, como el nombre de la tabla
    tableName: 'categorias',
    timestamps: false // Puedes ajustar esto según tus necesidades
});

module.exports = Categoria;