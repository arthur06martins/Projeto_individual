

var nomes = ['ace','alibi','amaru','aruni','ash',"azumi",'blackbird','bandit','blitz','castle','brava','caveira','buck','clash','capitão','doc','dokkaebi','echo','finka','ela','flores','frost','fuze','goyo','glaz','jager','gridlock','kaid','grim','kapkan','hibana','lesion','iana','maestro','iq','melusi','jackal','mira','kali','mozzie','lion','mute','maverick','oryx','montagne','pulse','nomad','rook','nook','smoke','osa','solis','sens','tachanka','sledge','thorn','thatcher','thunderbird','thermite','valkyrie','twitch','vigil','ying','wamai','zero','warden','zofia']



var agentess = [ ]
var validar = false
var nome_agentes =localStorage.getItem('a')
document.addEventListener('DOMContentLoaded',function ativar() {
        var nm  = ""
        for(var i=0; i < nomes.length; i++)
        {

            var nome = nomes[i]
            

            if(`"${nome}"` == nome_agentes  )
            {
                nm = nome
                fetch(`/usuarios/buscar/${nome}`,{
                    cache:"no-store"


                

                }).then(function(resposta){
                    if(resposta.ok)
                    {
                        resposta.json().then(function(response){
                            for(var i = 0; i < response.length;i++)
                            {
                                agentess = response[i]
                                Object.keys(agentess).forEach(function(item){

                                    localStorage.setItem(`${item}`,JSON.stringify(agentess[item]))
                                
                                })

                            }
                            var apelido = localStorage.getItem("apelido")
                            var saude =localStorage.getItem("saude")
                            var dificuldade = localStorage.getItem("dificuldade")
                            var velocidade = localStorage.getItem("velocidade")
                            

                            
                                 
                            if(`${apelido}` == `"${nm}"`)
                            {
                                DIV_titulo_txt_biografia.innerHTML =`${localStorage.getItem("titulo_biografia").replace(/["]/g,"")}`
                                DIV_txt_biografia.innerHTML = `${localStorage.getItem("biografia").replace(/[.]/g,`.  `)}`
                                DIV_local_nasc.innerHTML = `${localStorage.getItem("local_nasc").toUpperCase()}`
                                DIV_nome_agente.innerHTML = `${localStorage.getItem("nome").toUpperCase()}`
                                DIV_data_nasc.innerHTML = `${localStorage.getItem("dtNascimento").replace(/[""]/g,"").toUpperCase()}`
                                imagen_agente.innerHTML=`<img src="./img/agentespng/${nm}.png" alt="">`
                                img_logo_agente.innerHTML = `<img src="./img/logo_agentes/${nm.replace(/[""]/g,"")}.png" alt="">`
                                j.innerHTML = `${nm.toUpperCase()}`
                                agente_lado.innerHTML = `${localStorage.getItem("lado").replace(/[""]/g,"").toLocaleUpperCase()}`
                                especialidade.innerHTML =`${localStorage.getItem("especialidade").replace(/[""]/g,"").toLocaleUpperCase()}`
                                if( saude == 1)
                                {
                                    Sradio1.style.background ="aqua"
                                
                                
                                
                                }
                                else if(saude == 2)
                                {
                                    Sradio1.style.background ="aqua"
                                    Sradio2.style.background ="aqua"
                                }
                                else if(saude == 3)
                                {
                                    Sradio1.style.background ="aqua"
                                    Sradio2.style.background ="aqua"
                                    Sradio3.style.background ="aqua"
                                }
                                //validando a velocidade do agente
                                if(velocidade == 1)
                                {
                                    Vradio1.style.background ="aqua"
                                
                                }
                                else if(velocidade== 2)
                                {
                                    Vradio1.style.background ="aqua"
                                    Vradio2.style.background ="aqua"
                                }
                                else if(velocidade == 3)
                                {
                                    Vradio1.style.background ="aqua"
                                    Vradio2.style.background ="aqua"
                                    Vradio3.style.background ="aqua"
                                }

                                //validar dificuldade
                                if(dificuldade == 1)
                                {
                                    Dradio1.style.background ="aqua"
                          
                                }
                                else if(dificuldade== 2)
                                {
                                    Dradio1.style.background ="aqua"
                                    Dradio2.style.background ="aqua"
                                }
                                else if(dificuldade == 3)
                                {
                                    Dradio2.style.background ="aqua"
                                    Dradio1.style.background ="aqua"
                                    Dradio3.style.background ="aqua"
                                }


                            }
                            
                            
                            
                        })                             
                    }
                }) 
            }      
        }
       
      
})  

