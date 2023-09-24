const dotenv = require('dotenv');
dotenv.config();

const express = require('express');
const sequelize = require('./conexion/connection'); // Importa la conexión Sequelize
const Categoria = require('./models/Categorias');
const Catalogo = require('./models/catalogoModel')(sequelize);


const server = express();
const PORT = 3000; // Esto forzará al servidor Express a usar el puerto 3000


// Middlewares
server.use(express.json());

server.get('/', (req, res) => {
    res.send('¡Bienvenido a mi aplicación!');
});

// Endpoint para obtener todas las categorías
server.get('/categorias', async (req, res) => {
    try {
        console.log('Antes de consultar categorías');
        const categorias = await Categoria.findAll();
        console.log('Después de consultar categorías');
        res.json(categorias);
    } catch (error) {
        console.error('Error al obtener categorías:', error);
        res.status(500).json({ error: error.message });
    }
});

server.get('/catalogo', async (req, res) => {
    try {
        const catalogo = await Catalogo.findAll();
        res.json(catalogo);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error al obtener el catálogo' });
    }
});

// Control de rutas inexistentes (debería estar después de todas tus rutas)
server.use('*', (req, res) => {
    res.status(404).send({ error: `La URL indicada no existe en este servidor` });
});

// Método oyente de solicitudes
sequelize
    .authenticate()
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
