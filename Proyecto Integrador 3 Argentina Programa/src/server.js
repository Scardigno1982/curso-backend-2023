const dotenv = require('dotenv');
dotenv.config();

const express = require('express');

const sequelize = require('./conexion/connection'); // Importa la conexión Sequelize
const { Op } = require('sequelize');

const Genero = require('./models/generoModel')(sequelize);
const Categorias = require('./models/categorias')(sequelize);
const Catalogo = require('./models/catalogoModel')(sequelize);
const CatalogoGenero = require('./models/catalogoGeneroModel')(sequelize); // Añade esta línea

Genero.associate({ Catalogo, CatalogoGenero });
Catalogo.associate({ Genero, Categorias });



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
        const categorias = await Categorias.findAll();
        console.log('Después de consultar categorías');
        res.json(categorias);
    } catch (error) {
        console.error('Error al obtener categorías:', error);
        res.status(500).json({ error: error.message });
    }
});

// Endpoint para obtener todo el catalogo
server.get('/catalogo', async (req, res) => {
    try {
        const catalogo = await Catalogo.findAll();
        res.json(catalogo);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error al obtener el catálogo' });
    }
});

// Filtrar por código de la película/serie
server.get('/catalogo/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const peliculaSerie = await Catalogo.findByPk(id);
        if (!peliculaSerie) {
            return res.status(404).json({ error: 'Película o serie no encontrada' });
        }
        res.json(peliculaSerie);
    } catch (error) {
        console.error('Error al obtener la película o serie:', error);
        res.status(500).json({ error: error.message });
    }
});

// Endpoint para filtrar por nombre o parte del nombre
server.get('/catalogo/nombre/:nombre', async (req, res) => {
    const { nombre } = req.params;
    try {
        const peliculasSeries = await Catalogo.findAll({
            where: {
                titulo: {
                    [Op.like]: `%${nombre}%`,
                },
            },
        });
        res.json(peliculasSeries);
    } catch (error) {
        console.error('Error al obtener las películas o series por nombre:', error);
        res.status(500).json({ error: error.message });
    }
});

// Endpoint para obtener películas o series por género
server.get('/catalogo/genero/:genero', async (req, res) => {
    try {
        const generoNombre = req.params.genero;

        const catalogo = await Catalogo.findAll({
            include: [
                {
                    model: Genero,
                    as: 'generos',
                    where: {
                        nombre: generoNombre
                    }
                }
            ]
        });

        if (!catalogo.length) {
            return res.status(404).json({ error: 'No se encontraron películas o series para el género especificado.' });
        }

        res.json(catalogo);
    } catch (error) {
        console.error('Error al obtener las películas o series por género:', error);
        res.status(500).json({ error: error.message });
    }
});

// Endpoint para obtener películas o series por categoría
server.get('/catalogo/categoria/:categoria', async (req, res) => {
    try {
        const categoriaNombre = req.params.categoria;

        // Realiza la consulta para obtener películas o series por categoría
        const catalogo = await Catalogo.findAll({
            include: [
                {
                    model: Categorias,
                    as: 'categoria',
                    where: {
                        nombre: categoriaNombre
                    }
                }
            ]
        });

        if (!catalogo.length) {
            return res.status(404).json({ error: 'No se encontraron películas o series para la categoría especificada.' });
        }

        res.json(catalogo);
    } catch (error) {
        console.error('Error al obtener las películas o series por categoría:', error);
        res.status(500).json({ error: error.message });
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
