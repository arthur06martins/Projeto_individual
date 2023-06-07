var requisicao =  require("/models/sobreagentes.js")

function buscarAgente(req,res)
{
    var agente = req.agente.agente.agenteServer;

    if(agente == undefined)
    {
        console.log("o erro esta no sobreagentescontroller")
    }
        sobreagentesModel.buscarAgente(agente)
}