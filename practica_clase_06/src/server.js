const express = require("express");
const data = require("./data.js");

const server = express();
const PORT = 3000;
const HOST = "127.0.0.1";
const cursos = data.obtenerCursos();

// Configuración de la ruta 
server.get('/curso/codigo/:id', (request, response) => {
    const id = parseInt(request.params.id);

    //verifico que sea numerico y que venga vacio
    if (typeof id !== 'number' || isNaN(id)) {
        return response.status(400).send('El ID del curso debe ser un número.');
    }

    const cursos = data.obtenerCursos();
    const curso = cursos.find(c => c.id === id);

    //en caso de no haber cursos con el id mencionado paro un 404
    if (!curso) {
        return response.status(404).send('No se pudo encontrar un curso con el ID proporcionado.');
    }

    return response.send(curso);
   
});

// Configuración de la ruta 
server.get('/curso/nombre/:nombre', (request, response) => {
    const nombre = request.params.nombre.toLowerCase();
    const cursos = data.obtenerCursos();
    const cursosEncontrados = cursos.filter(c => c.nombre.toLowerCase().includes(nombre));

    if (cursosEncontrados.length === 0) {
        return response.status(404).send('No se encontraron cursos con el nombre proporcionado.');
    }

    return response.send(cursosEncontrados);
});

// Control de rutas inexistentes
server.use('*', (request, response) => {
    response.status(404).send(`<h1>Error 404</h1><h3>La URL indicada no existe en este servidor</h3>`);
});

// Método oyente de peteciones
server.listen(PORT, HOST, () => console.log(`Ejecutandose en http://${HOST}:${PORT}`));