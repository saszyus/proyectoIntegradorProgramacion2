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
    
    
    }
    
    module.exports = searchController;