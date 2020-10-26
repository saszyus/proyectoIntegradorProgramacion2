let db = require("../database/models/index")
let op = db.Sequelize.Op;

let searchController =  {

    resultadoBusqueda: function (req,res) {

        res.render("resultadoBusqueda");
      
    
    },

    detallePost: function (req,res) {

        db.Posts.findAll()
        .then(function(posts){
           res.render("detallePost",{posts:posts})
        })
    
    
    },
    
    
    }
    
    module.exports = searchController;