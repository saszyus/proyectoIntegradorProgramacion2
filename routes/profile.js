var express = require('express');
var router = express.Router();
let profileController = require("../controllers/profileController")

router.get("/miPerfil", profileController.profile);
router.get ("/detalleUsuario/:id", profileController.detalleUsuario);

router.get("/agregarPost", profileController.agregarPost);
router.post("/postAgregado", profileController.post);



router.get("/editarPerfil/:id", profileController.editarPerfil)

router.post("/perfilActualizado", profileController.perfilActualizado)

module.exports = router;