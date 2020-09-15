let paqueteFrutas = require("../frutas")
let searchController =  {

    detalleUsuario: function (req,res) {

 
      //  let idUsuario = req.params.idUsuario;
        //let listadoId = paqueteFrutas.detalleUsuario(idUsuario);


          
        res.render("detalleUsuario")
    
    },

    resultadoBusqueda: function (req,res) {

    //detalleBusqueda

        res.render("resultadoBusqueda")
    
    },

    detallePost: function (req,res) {
//idPost
    
        res.render("detallePost")
    
    },
    
    
  
    

    
    
    
    
    }
    
    module.exports = searchController;