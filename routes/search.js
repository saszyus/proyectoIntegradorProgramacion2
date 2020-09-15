var express = require('express');
var router = express.Router();
let searchController = require("../controllers/searchController")

router.get("/detalleUsuario/:idUsuario", searchController.detalleUsuario);

router.get("/resultadoBusqueda/:idBusqueda", searchController.resultadoBusqueda);

router.get("/detallePost/:idPost", searchController.detallePost);

module.exports = router;