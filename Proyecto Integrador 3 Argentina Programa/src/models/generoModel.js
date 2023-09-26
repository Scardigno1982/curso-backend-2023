
const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
    const Genero = sequelize.define('Genero', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        nombre: {
            type: DataTypes.STRING(255),
            allowNull: false
        }
    }, {
        tableName: 'genero',
        timestamps: false
    });

    Genero.associate = (models) => {
        Genero.belongsToMany(models.Catalogo, {
            as: 'catalogos',
            through: 'catalogo_genero',
            foreignKey: 'genero_id',
            otherKey: 'catalogo_id',
            timestamps: false
        });
    };

    return Genero;
};
