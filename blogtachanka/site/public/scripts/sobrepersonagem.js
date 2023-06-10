// const { get } = require("../../src/routes/sobreagentes")

var nomes = ['ace','alibi','amaru','aruni','ash',"azumi",'blackbird','bandit','blitz','castle','brava','caveira','buck','clash','capitão','doc','dokkaebi','echo','finka','ela','flores','frost','fuze','goyo','glaz','jager','gridlock','kaid','grim','kapkan','hibana','lesion','iana','maestro','iq','melusi','jackal','mira','kali','mozzie','lion','mute','maverick','oryx','montagne','pulse','nomad','rook','nook','smoke','osa','solis','sens','tachanka','sledge','thorn','thatcher','thunderbird','thermite','valkyrie','twitch','vigil','ying','wamai','zero','warden','zofia']
var imagens = [`./img/atacantes/ace.png`,'./img/defesa/alibi.png','./img/atacantes/amaru.png','./img/defesa/aruni.png','./img/atacantes/ash.png','./img/defesa/azami.png','./img/atacantes/blackbird.png',
'./img/defesa/bandit.png','./img/atacantes/blitz.png','./img/defesa/castle.png','./img/atacantes/brava.png','./img/defesa/caveira.png'
,'./img/atacantes/buck.png','./img/defesa/clash.png','./img/atacantes/capitao.png','./img/defesa/doc.png','./img/atacantes/dokkaebi.png','./img/defesa/echo.png','./img/atacantes/finka.png','./img/defesa/ela.png','./img/atacantes/flores.png','./img/defesa/frost.png','./img/atacantes/fuze.png',
'./img/defesa/goyo.png','./img/atacantes/glaz.png','./img/defesa/jager.png','./img/atacantes/gridlock.png','./img/defesa/kaid.png','./img/atacantes/grim.png','./img/defesa/kapkan.png','./img/atacantes/hibana.png','./img/defesa/lesion.png','./img/atacantes/iana.png','./img/defesa/maestro.png','./img/atacantes/iq.png','./img/defesa/melusi.png',
'./img/atacantes/jackal.png','./img/defesa/mira.png','./img/atacantes/kali.png','./img/defesa/mozzie.png','./img/atacantes/lion.png','./img/defesa/mute.png','./img/atacantes/maverick.png','./img/defesa/oryx.png','./img/atacantes/montagne.png','./img/defesa/pulse.png','./img/atacantes/nomad.png','./img/defesa/rook.png',
'./img/atacantes/nook.png','./img/defesa/smoke.png','./img/atacantes/osa.png','./img/defesa/solis.png','./img/atacantes/sens.png','./img/defesa/tachanka.png','./img/atacantes/sledge.png','./img/defesa/thorn.png','./img/atacantes/thatcher.png','./img/defesa/thunderbird.png','./img/atacantes/thermite.png','./img/defesa/valkyrie.png','./img/atacantes/twitch.png','./img/defesa/vigil.png',
'./img/atacantes/ying.png','./img/defesa/wamai.png','./img/atacantes/zero.png','./img/defesa/warden.png','./img/atacantes/zofia.png']



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
                                imagen_agente.innerHTML=`<img src="./img/agentespng/${nm}.png" alt="">`
                                img_logo_agente.innerHTML = `<img src="./img/logo_agentes/${nm.replace(/[""]/g,"")}.png" alt="">`
                                j.innerHTML = `${nm.toUpperCase()}`
                                agente_lado.innerHTML = `${localStorage.getItem("lado").replace(/[""]/g,"").toLocaleUpperCase()}`
                                especialidade.innerHTML =`${localStorage.getItem("especialidade").replace(/[""]/g,"").toLocaleUpperCase()}`
                                if( saude == 1)
                                {
                                    Sradio1.style.background ="blue"
                                
                                
                                
                                }
                                else if(saude == 2)
                                {
                                    Sradio1.style.background ="blue"
                                    Sradio2.style.background ="blue"
                                }
                                else if(saude == 3)
                                {
                                    Sradio1.style.background ="blue"
                                    Sradio2.style.background ="blue"
                                    Sradio3.style.background ="blue"
                                }
                                //validando a velocidade do agente
                                if(velocidade == 1)
                                {
                                    Vradio1.style.background ="blue"
                                
                                }
                                else if(velocidade== 2)
                                {
                                    Vradio1.style.background ="blue"
                                    Vradio2.style.background ="blue"
                                }
                                else if(velocidade == 3)
                                {
                                    Vradio1.style.background ="blue"
                                    Vradio2.style.background ="blue"
                                    Vradio3.style.background ="blue"
                                }


                            }
                            
                            
                            
                        })                             
                    }
                }) 
            }      
        }
       
      
})  

