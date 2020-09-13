let searchController =  {

    detalleUsuario: function (req,res) {

//idUsuario    
       // let idUsuario = req.params.idUsuario;

          
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