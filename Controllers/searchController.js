let db = require("../database/models/index")
let op = db.Sequelize.Op;

let searchController =  {

    resultadoBusqueda: function (req,res) {

   // let id = req.params.idBusqueda
    //let listado = paqueteFrutas.resultadoBusqueda(id);

        res.render("resultadoBusqueda");
      
    
    },

    detallePost: function (req,res) {

        res.render("detallePost")
    
    },
    
    
    }
    
    module.exports = searchController;