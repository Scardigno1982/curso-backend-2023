const { DataTypes } = require('sequelize');

module.exports = function(sequelize) {
    const CatalogoGenero = sequelize.define('CatalogoGenero', {
        catalogo_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'catalogo',
                key: 'id'
            }
        },
        genero_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'genero',
                key: 'id'
            }
        }
    }, {
        tableName: 'catalogo_genero',
        timestamps: false,
    });

    return CatalogoGenero;
};
