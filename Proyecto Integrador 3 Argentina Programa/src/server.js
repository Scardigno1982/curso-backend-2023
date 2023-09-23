const dotenv = require('dotenv');
dotenv.config();

const express = require('express');
const { Op } = require("sequelize");
const sequelize = require("./conexion/connection");

const server = express();
const PORT = 3000; // Esto forzará al servidor Express a usar el puerto 3000

// Middlewares
server.use(express.json());

server.get('/', (req, res) => {
    res.send('¡Bienvenido a mi aplicación!');
});

// Control de rutas inexistentes (debería estar después de todas tus rutas)
server.use('*', (req, res) => {
    res.status(404).send({ error: `La URL indicada no existe en este servidor` });
});

// Método oyente de solicitudes
sequelize.authenticate()
    .then(() => {
        console.log('Conexión a la base de datos establecida correctamente.');

        return sequelize.sync({ force: false });
    })
    .then(() => {
        console.log('Sincronización de modelos completada.');

        // Inicia el servidor después de conectar y sincronizar con la base de datos
        server.listen(PORT, () => {
            console.log(`El servidor está corriendo en http://localhost:${PORT}`);
        });
    })
    .catch((error) => {
        console.error('Hubo un problema:', error);
    });
