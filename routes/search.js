var express = require('express');
var router = express.Router();
let searchController = require("../controllers/searchController")

router.get("/resultadoBusqueda/", searchController.resultadoBusqueda);

router.get("/detallePost/:id", searchController.detallePost);

router.post("/comentarioAgregado/:id", searchController.agregarComentario);

module.exports = router;