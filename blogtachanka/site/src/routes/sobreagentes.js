var express = require("express");
var router = express.Router();

var sobreagentesController = require("../controllers/sobreagentesController");
 
router.get("/GetAgentes",function (req,res){
    sobreagentesController.buscarAgente(req, res)
})

module.exports = router;