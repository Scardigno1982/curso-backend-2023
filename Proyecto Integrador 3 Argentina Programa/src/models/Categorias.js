
const { DataTypes } = require('sequelize');

module.exports = function(sequelize) {
    const Categoria = sequelize.define('Categoria', {
        nombre: {
            type: DataTypes.STRING,
            allowNull: false
        }
    }, {
        tableName: 'categorias',
        timestamps: false,
    });

    Categoria.associate = function(models) {
        Categoria.hasMany(models.Catalogo, {
            foreignKey: 'id',
            as: 'catalogos'
        });
    };




    return Categoria;
};
