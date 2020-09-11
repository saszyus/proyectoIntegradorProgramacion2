var express = require('express');
var router = express.Router();
let profileController = require("../controllers/profileController")

router.get("/miPerfil", profileController.profile);

router.get("/agregarPost", profileController.agregarPost);

module.exports = router;