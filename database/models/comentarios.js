module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
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
        
        created_at: {
            type: DataTypes.DATE
        },

        updated_at: {
            type: DataTypes.DATE
        }
    }


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentarios = sequelize.define("comentarios", cols, config);

      Comentarios.associate = function(models) {
         
            Comentarios.belongsTo(models.Usuario,{

            as:"relacionComentUser",
            foreignKey:"idusuarios",
        })

            Comentarios.belongsTo(models.Posts,{

            as:"relacionComentPosts",
            foreignKey:"idposts",
        })

      };

    
    return Comentarios;


}