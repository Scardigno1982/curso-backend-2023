# Proyecto Integrador N°3: Trailerflix

El presente documento, es el **Proyecto Integral N°3** de ***Argentina Program 4.0***. Esta es una pequeña aplicación
que muestra un pequeño catalogo de peliculas cargadas en una base de datos.
La misma, fue diseñada y construida sobre una arquitectura API RESTful, la cual está desarrollada bajo las 
restricciones y recomendaciones de REST, además, implementa buenas prácticas de programación.

#### Especificaciones
- Servidor: http://127.0.0.1:3000
- Autor: Sergio Scardigno
- Versión: 1.0.8

#### Requerimientos
- Node.js v18.16.1
- MongoDB v5.6
- GIT v2.40.1
- IDE - Visual Studio Code v1.78.2
- MySQL 3.6.0


#### Estructura de directorios
``` tree
    ├── node_modules
    ├── src
    │   └── conexion
    │   │   └── connections.js
    │   └── models
    │   │   └──catalogoGeneroModels.js
    │   │   └──catalogoModels.js
    │   │   └──Categorias.js
    │   │   └──generoModels.js
    │   └── server.js
    ├── .env
    ├── .env.example
    ├── .eslintrc.json
    ├── .gitignore
    ├── package.json
    ├── package-lock.json 
    └── README.md
```

---
### CONFIGURACION DE ENTORNO
- #### VARIABLES DE ENTORNO
    Hacer una copia del archivo .env.dist y renombrarlo como .env. Ajustar las variables:

  ``` js
    SERVER_PORT=3000
    SERVER_HOST=127.0.0.1

    DATABASE_URL=tu-cadena-de-conexion
    DATABASE_NAME=trailerflix
  ```


---
### INICIANDO LA BASE DE DATOS
    Utilice el archivo trailerflix.sql para crear y poblar las tablas necesarias en MySQL.

#### Métodos HTTP
| Tipo | URI | Descripción |
|------|-----|-------------|
| GET | http://127.0.0.1:3000/categorias | Obtiene todas las categorías existentes |
| GET | http://127.0.0.1:3000/catalogo | Obtiene todo el catálogo|
| GET | http://127.0.0.1:3000/catalogo/:id | Filtra por código de la película/serie|
| GET | http://127.0.0.1:3000/catalogo/nombre/:nombre | Filtra por nombre o parte del nombre |
| GET | http://127.0.0.1:3000/catalogo/genero/:genero | Filtra por género del contenido |
| GET | http://127.0.0.1:3000/catalogo/categoria/:categoria | Filtra por categoría (serie, película, etc.) |


#### Método GET - Específico:
- Request:
        - /categorias
  - Response:
      ``` json
          [
            {
                "id": 1,
                "nombre": "Serie"
            },
            {
                "id": 2,
                "nombre": "Película"
            }
          ]
      ```
      - Código HTTP: **404** *message: No se encontraron categorías*
      - Código HTTP: **500** *message: Error al obtener categorías*


#### Método GET - Específico:
- Request:
    - /catalogo
- Response:
    ``` json
        {
                "id": 1,
                "poster": "/posters/1.jpg",
                "titulo": "The Crown",
                "categoria_id": 1,
                "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
                "temporadas": 4,
                "trailer": "NULL"
        }
    ```
    - Código HTTP: **404** *message: No se encontraron elementos en el catálogo*
    - Código HTTP: **500** *message: Error al obtener el catálogo*

#### Método GET - Específico:
- Request:
  - /catalogo/:id
- Response:
    ``` json
        {
                "id": 1,
                "poster": "/posters/1.jpg",
                "titulo": "The Crown",
                "categoria_id": 1,
                "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
                "temporadas": 4,
                "trailer": "NULL"
        }
    ```
  - Código HTTP: **404** *message: Película o serie no encontrada*
  - Código HTTP: **500** *message: Error al obtener la película o serie*

#### Método GET - Específico:
- Request:
  - /catalogo/nombre/:nombre
    - Response:
        ``` json
            {
                  "id": 3,
                  "poster": "/posters/3.jpg",
                  "titulo": "The Mandalorian",
                  "categoria_id": 1,
                  "resumen": "Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.",
                  "temporadas": 2,
                  "trailer": "https://www.youtube.com/embed/aOC8E8z_ifw"
            }
        ```
      - Código HTTP: **404** *message: No se encontraron películas o series con el nombre*
      - Código HTTP: **500** *message: Error al obtener las películas o series por nombre*

#### Método GET - Específico:
- Request:
  - /catalogo/genero/:genero
    - Response:
        ``` json
            {
        "id": 7,
        "poster": "/posters/7.jpg",
        "titulo": "Guasón",
        "categoria_id": 2,
        "resumen": "Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.",
        "temporadas": null,
        "trailer": "https://www.youtube.com/embed/zAGVQLHvwOY",
        "generos": [
            {
                "id": 4,
                "nombre": "Suspenso",
                "catalogo_genero": {
                    "genero_id": 4,
                    "catalogo_id": 7
                }
            }
            }
        ```
      - Código HTTP: **404** *message: No se encontraron películas o series para el género especificado.*
      - Código HTTP: **500** *message: Error al obtener las películas o series por género*

#### Método GET - Específico:
- Request:
  - /catalogo/categoria/:categoria
    - Response:
        ``` json
            {
                "id": 6,
                "poster": "/posters/6.jpg",
                "titulo": "Enola Holmes",
                "categoria_id": 2,
                "resumen": "La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.",
                "temporadas": null,
                "trailer": "NULL",
                "categoria": {
                    "id": 2,
                    "nombre": "Película"
                }
            }
        ```
      - Código HTTP: **404** *message: No se encontraron películas o series para la categoría especificada*
      - Código HTTP: **500** *message: Error al obtener las películas o series por categoría*