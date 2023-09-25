// catalogoModels.js

const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
    const Catalogo = sequelize.define('Catalogo', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        poster: {
            type: DataTypes.STRING(255),
            allowNull: true
        },
        titulo: {
            type: DataTypes.STRING(255),
            allowNull: false
        },
        categoria_id: {
            type: DataTypes.INTEGER,
            references: {
                model: 'categorias',
                key: 'id'
            }
        },
        resumen: {
            type: DataTypes.TEXT,
            allowNull: true
        },
        temporadas: {
            type: DataTypes.INTEGER,
            allowNull: true
        },
        trailer: {
            type: DataTypes.STRING(255),
            allowNull: true
        }
    }, {
        tableName: 'catalogo',
        timestamps: false
    });

    Catalogo.associate = (models) => {
        Catalogo.belongsToMany(models.Genero, {
            as: 'generos',
            through: 'catalogo_genero',
            foreignKey: 'catalogo_id',
            otherKey: 'genero_id',
            timestamps: false
        });

        Catalogo.belongsTo(models.Categorias, {
            as: 'categoria',
            foreignKey: 'categoria_id'
        });
    };

    return Catalogo;
};
