module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
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
        
        url_imagen: {
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
        tableName: "posts",
        timestamps: false
    }

    let Posts = sequelize.define("Posts", cols, config);

        
    Posts.associate = function(models) {
       

        Posts.belongsTo(models.Usuario,{

            as:"relacionPostUser",
            foreignKey:"idusuario",
        }),
        Posts.hasMany(models.comentarios,{

            as:"relacionComentPosts",
            foreignKey:"idposts",
        })
        
         
        

    } ;   



    return Posts;
}