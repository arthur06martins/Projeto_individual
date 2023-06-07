var database = require("../database/config")

// function sobreagentes(apelido,lado, biografia,especialidade,saude,velocidade,dificuldade,nome,dtnascimento,local_nascimento)

function buscarAgente(agente)
{
    var instrucao = ` select * from agentes where apelido = '${agente}'; `
  
    return database.executar(instrucao)
    console.log("o erro esta no agentes model")
}