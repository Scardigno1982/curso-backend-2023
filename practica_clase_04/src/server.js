const express = require("express");
const path = require("path");

const server = express();
const PORT = 3050;
const HOST = "localhost";

// En este método si importa el lugar en el que se ha declarado.
// Se debe colocar arriba de todas las rutas. Lo podes probar en
// tu navegador: http://localhost:3000/img/argentina_programa_4.png
server.use('/public', express.static(path.join(__dirname, 'public')));

server.get('/', (request, response) => {
    // response.status(200).send("Hola Mundo");
    response.status(200).sendFile(path.join(__dirname, 'public/index.html'));

});

server.get('/cursos', (request, response) => {
    response.status(200).send("Estos son los cursos de programación: NodeJS, Express entre otros.");
});

server.get('/contacto', (request, response) => {
    response.status(200).send("<p>Los datos de contacto son <a href='https://github.com/serinformatico/PB-05-2023-UNTREF'>Link de github</a>");
});

// En este método si importa el lugar en el que se ha declarado.
// Se debe colocar debajo de todas las rutas.
server.get('*', (request, response) => {
    response.status(404).json({error: "Lo siento, la página que buscas no existe."});
});

server.listen(PORT, HOST, () => console.log(`Ejecutandose en http://${HOST}:${PORT}`));