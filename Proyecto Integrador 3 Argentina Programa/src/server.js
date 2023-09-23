const dotenv = require('dotenv');
dotenv.config();
const express = require('express');
const { Op } = require("sequelize");
const sequelize = require("./conexion/connection"); // Asegúrate de que la ruta sea correcta y apunte al archivo de configuración de Sequelize
// const Catalogo = require("./modelos/catalogo"); // Esto es solo un supuesto, no sé cómo llamaste a tu modelo

const server = express();
const PORT = process.env.PORT || 3000; // Puerto predeterminado 3000 si no se especifica en .env

// Middlewares
server.use(express.json());

// Control de rutas inexistentes
server.use('*', (req, res) => {
    res.status(404).send({ error: `La URL indicada no existe en este servidor` });
});

// Método oyente de solicitudes
sequelize.authenticate()
    .then(() => {
        console.log('Conexión a la base de datos establecida correctamente.');
        sequelize.sync({ force: false })
            .then(() => {
                console.log('Sincronización de modelos completada.');
                // Inicia tu servidor Express u otras operaciones aquí
            })
            .catch((error) => {
                console.error('Hubo un problema con la sincronización de los modelos:', error);
            });
    })
    .catch((error) => {
        console.error('Hubo un problema con la conexión a la base de datos:', error);
    });
