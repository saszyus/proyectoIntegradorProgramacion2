module.exports = (sequelize, DataTypes) => {

    let cols = {
        idposts: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        idusuario: {
            type: DataTypes.INTEGER

        },
        texto_post: {
            type: DataTypes.STRING

        },
        texto_creacion: {
            type: DataTypes.STRING

        },
        url_imagen: {
            type: DataTypes.STRING
        }
    }


    let config = {
        tableName: "posts",
        timestamps: false
    }

    let Posts = sequelize.define("Posts", cols, config);

    return Posts;
}