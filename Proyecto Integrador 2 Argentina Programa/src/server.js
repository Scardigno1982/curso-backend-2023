const express = require('express');
const { connectToDB, disconnectFromMongoDB } = require('../connection_db');
const app = express();
const PORT = process.env.PORT || 3005;

app.use(express.json());

// Generador de código
async function generateId(collection) {
    const documentMaxId = await collection
        .find()
        .sort({ codigo: -1 })
        .limit(1)
        .toArray();
    const maxId = documentMaxId[0]?.codigo ?? 0;

    return maxId + 1;
}

// Middleware para establecer el encabezado Content-Type en las respuestas
app.use((req, res, next) => {
    res.header('Content-Type', 'application/json; charset=utf-8');
    next();
});

// Ruta de inicio
app.get('/', (req, res) => {
    res.status(200).end('Bienvenido a la API de Muebles');
});

// a) Ruta para obtener todos los recursos y b) Obtener los registros de los muebles filtrados y ordenados por una categoría
// b) Obtener los registros de los muebles por precio mayor o igual que un valor y ordenados por precio de forma ascendente
// c) Obtener los registros de los muebles por precio menor o igual que un valor y ordenados por precio de forma descendente

// getDatabaseClient intenta conectarse a la base de datos y devuelve el cliente. Si algo sale mal, lanza un error.
const getDatabaseClient = async () => {
    const client = await connectToDB();
    if (!client) throw new Error('Error al conectarse a MongoDB');
    return client;
};

// buildQuery se encarga de crear el query que vamos a usar para obtener muebles, en base a los datos que recibimos en la petición.
// Toma en cuenta la categoría y los rangos de precios si los hay.
const buildQuery = (req) => {
    let query = {};
    let sort = {};

    if (req.query.categoria) {
        let categoriaRegExp = RegExp(`^${req.query.categoria}$`, 'iu');
        query.categoria = categoriaRegExp;
    }

    if (req.query.precio_gte || req.query.precio_lte) {
        query.precio = {};

        if (req.query.precio_gte) {
            query.precio.$gte = parseFloat(req.query.precio_gte);
            sort.precio = 1;
        }

        if (req.query.precio_lte) {
            query.precio.$lte = parseFloat(req.query.precio_lte);
            sort.precio = -1;
        }
    }
    return { query, sort };
};

// getMuebles busca en la base de datos los muebles que coincidan con el query que le pasamos y los devuelve.
const getMuebles = async (db, query, sort) =>
    db.collection('muebles')
        .find(query)
        .sort(sort)
        .toArray();

app.get('/api/v1/muebles', async (req, res) => {
    try {
        const client = await getDatabaseClient();
        const db = client.db('muebleria');
        const { query, sort } = buildQuery(req);
        let muebles = await getMuebles(db, query, sort);
        if (req.query.categoria) {
            if (muebles.length === 0) {
                return res.status(200).json(muebles);
            }
            muebles.sort((a, b) => a.codigo - b.codigo);
            let lastItem = muebles.pop();
            muebles.unshift(lastItem);
        }
        res.json(muebles.length === 0 ? [] : muebles);
    } catch (error) {
        res.status(500).send('Error al obtener muebles de la base de datos');
    } finally {
        await disconnectFromMongoDB();
    }
});


// e) Obtener el registro de un mueble por su código
app.get('/api/v1/muebles/:codigo', async (req, res) => {
    const codigo = parseInt(req.params.codigo);

    try {
    // Conexión a la base de datos
        const client = await connectToDB();
        if (!client) {
            return res.status(500).send('Error al conectarse a MongoDB');
        }

        // Obtener la colección de muebles y buscar el mueble por su código
        const db = client.db('muebleria');
        const mueble = await db.collection('muebles').findOne({ codigo });

        if (mueble) {
            // Enviamos el mueble dentro de la propiedad payload del objeto respuesta
            return res.status(200).json({ payload: mueble });
        }
        // Si no se encuentra el mueble, se devuelve un error 400 con un mensaje personalizado
        return res
            .status(400)
            .json({ message: 'El código no corresponde a un mueble registrado' });
    } catch (error) {
    // Manejo de errores al obtener el mueble por su código
        return res
            .status(500)
            .send('Error al obtener el mueble de la base de datos por su código');
    } finally {
    // Desconexión de la base de datos
        await disconnectFromMongoDB();
    }
});

// g) Actualizar el registro de un mueble por su código (contemplar la validación del esquema)
app.put('/api/v1/muebles/:codigo', async (req, res) => {
    const { codigo } = req.params;
    const { nombre, precio, categoria } = req.body;

    // Validación de los datos proporcionados
    if (!codigo || !nombre || !precio || !categoria) {
        return res.status(400).json({ message: 'Faltan datos relevantes' });
    }

    try {
        const client = await connectToDB();
        if (!client) {
            return res.status(500).send('Error al conectarse a MongoDB');
        }

        const db = client.db('muebleria');
        const mueblesCollection = db.collection('muebles');

        let mueble = await mueblesCollection.findOne({ codigo: Number(codigo) });

        // Si el mueble no existe en la base de datos
        if (!mueble) {
            return res
                .status(400)
                .json({ message: 'El código no corresponde a un mueble registrado' });
        }

        mueble = { codigo: Number(codigo), nombre, precio, categoria };

        await mueblesCollection.updateOne({ codigo: Number(codigo) }, { $set: mueble });
        res.status(200).json({ message: 'Registro actualizado', payload: mueble });
    } catch (error) {
        console.error('Error al actualizar el mueble en la base de datos:', error);
        res
            .status(500)
            .json({ message: 'Error en el servidor al actualizar el mueble' });
    } finally {
        await disconnectFromMongoDB();
    }
});

// h) Eliminar el registro de un mueble por su código
app.delete('/api/v1/muebles/:codigo', async (req, res) => {
    let codigo = parseInt(req.params.codigo);

    if (isNaN(codigo)) {
        return res
            .status(400)
            .json({ message: 'Error: El código del mueble no es un número válido.' });
    }

    try {
    // Conexión a la base de datos
        const client = await connectToDB();
        if (!client) {
            return res.status(500).json({ message: 'Error al conectarse a MongoDB' });
        }

        // Obtener la colección de muebles y eliminar el mueble por su código
        const db = client.db('muebleria');
        const resultado = await db.collection('muebles').deleteOne({ codigo });

        if (resultado.deletedCount > 0) {
        // Si se eliminó al menos un registro, enviamos un mensaje de éxito
            return res.status(200).json({ message: 'Registro eliminado' });
        }
        // Si no se eliminó ningún registro, enviamos un error 400 con un mensaje personalizado
        return res
            .status(400)
            .json({ message: 'El código no corresponde a un mueble registrado' });
    } catch (error) {
    // Manejo de errores al eliminar el mueble por su código
        return res
            .status(500)
            .json({
                message:
          'Error al eliminar el mueble de la base de datos por su código'
            });
    } finally {
        // Desconexión de la base de datos
        await disconnectFromMongoDB();
    }
});

// f) Crear un nuevo registro de un mueble (contemplar la validación del esquema)
app.post('/api/v1/muebles', async (req, res) => {
    const { nombre, precio, categoria } = req.body;

    // Validación del esquema: los campos no deben ser nulos
    if (!nombre || !precio || !categoria) {
        return res.status(400).json({ message: 'Faltan datos relevantes' });
    }

    try {
        const client = await connectToDB();
        if (!client) {
            return res.status(500).send('Error al conectarse a MongoDB');
        }

        const db = client.db('muebleria');
        const mueblesCollection = db.collection('muebles');

        const codigo = await generateId(mueblesCollection);
        const nuevoMueble = { codigo, nombre, precio, categoria };

        const resultado = await mueblesCollection.insertOne(nuevoMueble);
        if (!resultado.insertedId) {
            return res
                .status(500)
                .send('Error al insertar el nuevo mueble en la base de datos.');
        }

        res.status(201).json({ message: 'Registro creado', payload: nuevoMueble });
    } catch (error) {
        console.error('Error al crear el mueble en la base de datos:', error);
        res.status(500).send('Error en el servidor al crear el mueble');
    } finally {
        await disconnectFromMongoDB();
    }
});

// Ruta no existente
app.use((req, res) => {
    res.status(404).json({ message: 'Ruta no existente' });
});

// Aquí es donde arrancamos el servidor. Cuando todo está listo y funcionando, lo sabremos porque nos lo dice en la consola.
app.listen(PORT, () => {
    console.log(`Servidor escuchando en el puerto ${PORT}`);
});
