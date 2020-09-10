var express = require('express');
var router = express.Router();
let perfilController = require("../controllers/perfilController")

router.get("/miPerfil", perfilController.miPerfil);

module.exports = router;