# Proyecto Integrador N°3: Trailerflix

El presente documento, es el **Proyecto Integral N°2** de ***Argentina Program 4.0***. Esta es una pequeña solución informática que sirve registrar los muebles de una mueblería.
La misma, fue diseñada y construida sobre una arquitectura API RESTful, la cual está desarrollada bajo las restricciones y recomendaciones de REST, además, implementa buenas prácticas de programación.

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


#### Método GET:
- Request:
    - Parámetros opcionales de tipo QUERY:
        - categoria=Oficina  *(tipo: string. Trae los muebles de una misma categoría)*
        - precio_gte=500.00  *(tipo: decimal. Trae los muebles que tienen un precio mayor o igual a $500)*
        - precio_lte=400.00  *(tipo: decimal. Trae los muebles que tienen un precio menor o igual a $400)*
- Response:
    ``` json
        [
            {
                "_id": "64b082dabbbdbf35047fd6b6",
                "codigo": 7,
                "nombre": "Cama individual",
                "precio": 399.99,
                "categoria": "Dormitorio"
            }
        ]
    ```
    - Código HTTP: **200** *payload: muebles*
    - Código HTTP: **500** *message: Se ha generado un error en el servidor*


#### Método GET - Específico:
- Request:
    - Parámetro obligatorio de tipo URL:
        - 9 *(tipo: integer. Indica el código del mueble que se requiere obtener)*
- Response:
    ``` json
        {
              "_id": "64b082dabbbdbf35047fd6b7",
              "codigo": 9,
              "nombre": "Mesa de Comedor de Madera",
              "precio": 299.99,
              "categoria": "Comedor"
        }
    ```
    - Código HTTP: **200** *payload: mueble*
    - Código HTTP: **400** *message: El código no corresponde a un mueble registrado*
    - Código HTTP: **500** *message: Se ha generado un error en el servidor*



