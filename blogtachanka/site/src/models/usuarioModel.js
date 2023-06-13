var database = require("../database/config")

function pegarponto(id)
{
    var instrucao = `select pontos_quiz
     from dados_usuario join usuario 
	on fkUsuario = usuario.id
		where fkUsuario = ${id};`
    return database.executar(instrucao)
}
function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM usuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}
function buscarAgente(agente)
{
    var instrucao = ` select * from agentes where apelido = '${agente}'; `
  
    return database.executar(instrucao)
    console.log("o erro esta no agentes model")
}
function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, apelido, email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, apelido, email, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO usuario (nome,apelido, email, senha) VALUES ('${nome}','${apelido}', '${email}', '${senha}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}
function pontos (id,pontos)
{
    console.log("estou no models pontos")

    var instrucao = 
    `INSERT INTO dados_usuario (id,pontos_quiz,fkusuario) VALUE (null,${pontos},${id});`
    return database.executar(instrucao)
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    buscarAgente,
    pontos,
    pegarponto
};