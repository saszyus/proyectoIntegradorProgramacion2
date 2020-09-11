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
  
    

    
    
    
    
    }
    
    module.exports = homeController;