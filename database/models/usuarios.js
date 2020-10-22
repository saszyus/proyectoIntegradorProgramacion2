module.exports = (sequelize, DataTypes) => {

    let cols = {
        idposts: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        nombre_usuario: {
            type: DataTypes.STRING

        },
        fecha_nacimiento: {
            type: DataTypes.DATE

        },

        edad: {
            type: DataTypes.INTEGER

        },

    }

    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuarios = sequelize.define("Usuarios", cols, config);

    return Usuarios;
}
