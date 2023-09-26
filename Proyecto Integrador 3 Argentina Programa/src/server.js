// Importa el módulo dotenv para manejar variables de entorno
const dotenv = require('dotenv');
// Configura dotenv para cargar las variables de entorno desde el archivo .env
dotenv.config();

// Importa el módulo Express para crear y manejar el servidor web
const express = require('express');

// Importa la configuración y conexión de Sequelize a la base de datos
const sequelize = require('./conexion/connection');

// Importa el operador `Op` de Sequelize para hacer consultas personalizadas
const { Op } = require('sequelize');

// Define los modelos de datos usando la conexión de Sequelize
const Genero = require('./models/generoModel')(sequelize);
const Categorias = require('./models/categorias')(sequelize);
const Catalogo = require('./models/catalogoModel')(sequelize);
// Define el modelo de relación entre Catálogo y Género
const CatalogoGenero = require('./models/catalogoGeneroModel')(sequelize);

// Asocia los modelos entre sí para definir relaciones (como las relaciones de llave foránea)
Genero.associate({ Catalogo, CatalogoGenero });
Catalogo.associate({ Genero, Categorias });

// Inicializa el servidor Express
const server = express();

// Define el puerto en el que correrá el servidor Express
const PORT = 3000;



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

        // Si no hay categorías, devuelve un error 404
        if (categorias.length === 0) {
            return res.status(404).json({ error: 'No se encontraron categorías' });
        }

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

        // Si no hay elementos en el catálogo, devuelve un error 404
        if (catalogo.length === 0) {
            return res.status(404).json({ error: 'No se encontraron elementos en el catálogo' });
        }

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

        // Si no hay películas o series con ese nombre, devuelve un error 404
        if (peliculasSeries.length === 0) {
            return res.status(404).json({ error: `No se encontraron películas o series con el nombre: ${nombre}` });
        }

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
