var express = require('express');
var router = express.Router();
let profileController = require("../controllers/profileController")

router.get("/miPerfil", profileController.profile);

router.get ("/detalleUsuario/:id", profileController.detalleUsuario);

router.get("/editarPerfil/:id", profileController.editarPerfil)

router.get("/agregarPost", profileController.agregarPost);

router.post("/postAgregado", profileController.post);

router.post("/perfilActualizado", profileController.perfilActualizado)

module.exports = router;