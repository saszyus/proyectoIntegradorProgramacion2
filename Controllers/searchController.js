let db = require("../database/models/index")
let op = db.Sequelize.Op;

let searchController =  {

    resultadoBusqueda: function (req,res) {

        let resultadoBusqueda = req.query.busqueda
        
        db.Usuario.findAll({
            order: [["nombre_usuario"]
        
        ],
            where:[ {nombre_usuario: {[op.like]:"%" + resultadoBusqueda + "%" } }
                
            ],
        })
        .then(function(busquedas){
           res.render("resultadoBusqueda",{busquedas:busquedas})
        })
    
    },

    detallePost: function (req,res) {

        db.Posts.findAll()
        .then(function(posts){
           res.render("detallePost",{posts:posts})
        })
    
    
    },
    
    agregarComentario: function (req,res) {

       
        let comentar = {
           
            idposts:req.body.idpost,
            idusuarios:req.body.idusuario,
            texto_comentario:req.body.fecha,
            fecha_comentario: req.body.comentario,

       }

       db.comentarios.create(comentar)
       .then(function() {
               
       res.redirect("/search/detallePost/:id");
       })
    
    
    },
    
    
    }


    
    module.exports = searchController;