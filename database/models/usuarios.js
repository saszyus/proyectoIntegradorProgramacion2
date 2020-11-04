module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        nombre_usuario: {
            type: DataTypes.STRING

        },

        email: {
            type: DataTypes.STRING

        }, 
        
        fecha_nacimiento: {
            type: DataTypes.DATE

        },

        contraseña: {
            type: DataTypes.STRING
        }, 

        pregunta: {
            type: DataTypes.STRING
        },

        respuesta: {
            type: DataTypes.STRING
        }

    }

    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuarios = sequelize.define("Usuario", cols, config);
        
    Usuarios.associate = function(models) {
       

        Usuarios.hasMany(models.Posts,{

            as:"relacionPostUser",
            foreignKey:"idusuario",
        })

    } ;

    return Usuarios;
}
