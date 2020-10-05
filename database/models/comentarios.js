module.exports = (sequelize, DataTypes) => {

    let cols = {
        idcomentarios: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,

        },
        idposts: {
            type: DataTypes.INTEGER,
            
        },
        idusuarios: {
            type: DataTypes.INTEGER,
            

        },
        texto_comentario: {
            type: DataTypes.STRING

        },
        fecha_comentario: {
            type: DataTypes.DATE
        }
    }


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentarios = sequelize.define("comentarios", cols, config);

    return Comentarios;
}