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
            type: DataTypes.DATE,
          //  defaultValue: sequelize.literal("CURRENT_TIMESTAMP")
        },

        contraseña: {
            type: DataTypes.STRING
        }, 

        pregunta: {
            type: DataTypes.STRING
        },

        respuesta: {
            type: DataTypes.STRING
        },

        foto_perfil: {
            type: DataTypes.STRING
        },

        created_at: {
            type: DataTypes.DATE
        },

        updated_at: {
            type: DataTypes.DATE
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

        Usuarios.hasMany(models.comentarios,{

            as:"relacionComentUser",
            foreignKey:"idusuarios",
        })

    } ;

    return Usuarios;
}
