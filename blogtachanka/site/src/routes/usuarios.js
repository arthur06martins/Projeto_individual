var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});
router.get("/buscar/:nome",function (req,res){
   usuarioController.buscarAgente(req, res)
})

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})
router.post("/pontos",function(req,res){
    usuarioController.pontos(req,res)
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.get("/getpontos:id",function(req,res)
{ usuarioController.getpontos(req,res);})

module.exports = router;