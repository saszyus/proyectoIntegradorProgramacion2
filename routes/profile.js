var express = require('express');
var router = express.Router();
let profileController = require("../controllers/profileController")

router.get("/miPerfil/", profileController.profile);

router.get("/agregarPost", profileController.agregarPost);

router.get ("/detalleUsuario/:id", profileController.detalleUsuario);

module.exports = router;