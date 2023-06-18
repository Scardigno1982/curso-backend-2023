const express = require("express");
const path = require("path");
const data = require("./data.js"); // Importación de un archivo JS en mi caso las zapatillas

const server = express();
const PORT = 3000;
const HOST = "127.0.0.1";

const zapatillas = data.obtenerZapatillas();


// Configuración del motor de plantillas
server.set("view engine", "ejs");
server.set("views", path.join(__dirname, "views/pages/"));

// Servir un recurso de forma estática (imagenes, PDFs, etc.)
server.use("/public", express.static(path.join(__dirname, "public")));



// Configuración de la ruta zapatillas http://127.0.0.1:3000/productos
server.get("/productos", (req, res) => {
    res.status(200).render("productos", { zapatillas });
});

server.get("/", (req, res) => {
    res.status(200).render("index");
});



// Control de rutas inexistentes
server.use('*', (request, response) => {
    response.status(404).send(`<h1>Error 404</h1><h3>La URL indicada no existe en este servidor</h3>`);
});

// Método oyente de peteciones
server.listen(PORT, HOST, () => console.log(`Ejecutandose en http://${HOST}:${PORT}`));