const { DataTypes } = require('sequelize');

module.exports = function(sequelize) {
    const Catalogo = sequelize.define('Catalogo', {
        titulo: {
            type: DataTypes.STRING,
            allowNull: false
        },
        categoria_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        poster: {
            type: DataTypes.STRING
        }
    }, {
        tableName: 'catalogo', // Nombre de la tabla en la base de datos
        timestamps: false, // Desactiva el registro de timestamps (created_at, updated_at)
    });

    Catalogo.associate = function(models) {
        // Relación con la tabla 'categorias'
        Catalogo.belongsTo(models.Categorias, {
            foreignKey: 'categoria_id',
            as: 'categoria'
        });

        // Relación con la tabla 'catalogo_genero' a través de 'genero_id'
        Catalogo.belongsToMany(models.Genero, {
            through: 'catalogo_genero',
            foreignKey: 'catalogo_id',
            as: 'generos'
        });

        // Relación con la tabla 'catalogo_reparto' a través de 'actor_id'
        Catalogo.belongsToMany(models.ActricesYActores, {
            through: 'catalogo_reparto',
            foreignKey: 'catalogo_id',
            as: 'reparto'
        });
    };

    return Catalogo;
};
