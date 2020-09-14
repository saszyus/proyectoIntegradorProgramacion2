let paqueteFrutas = require("../frutas")
let homeController =  {

    home: function (req,res) {

    
        res.render("home")
    
    },
    
    
    registracion: function (req,res) {

    
        res.render("registracion")
    
    },


    login: function (req,res) {

    
        res.render("login")
    
    },
  
    list: function(req, res) {
        let listado = paqueteFrutas.lista;
     
        res.render("list", {listado: listado});
    },

    
    
    
    
    }
    
    module.exports = homeController;