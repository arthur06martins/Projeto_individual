var nomes = ['ace','alibi','amaru','Aruni','ash','azumi','blackbird','bandit','blitz','castle','brava','caveira','buck','clash','capitão','doc','dokkaebi','echo','finka','ela','flores','frost','fuze','goyo','glaz','jager','gridlock','kaid','grim','kapkan','hibana','lesion','iana','maestro','iq','melusi','jackal','mira','kali','mozzie','lion','mute','maverick','oryx','montagne','pulse','nomad','rook','nook','smoke','osa','solis','sens','tachanka','sledge','thorn','thatcher','thunderbird','thermite','valkyrie','twitch','vigil','ying','wamai','zero','warden','zofia']
var imagens = [`./img/atacantes/ace.png`,'./img/defesa/alibi.png','./img/atacantes/amaru.png','./img/defesa/aruni.png','./img/atacantes/ash.png','./img/defesa/azami.png','./img/atacantes/blackbird.png',
'./img/defesa/bandit.png','./img/atacantes/blitz.png','./img/defesa/castle.png','./img/atacantes/brava.png','./img/defesa/caveira.png'
,'./img/atacantes/buck.png','./img/defesa/clash.png','./img/atacantes/capitao.png','./img/defesa/doc.png','./img/atacantes/dokkaebi.png','./img/defesa/echo.png','./img/atacantes/finka.png','./img/defesa/ela.png','./img/atacantes/flores.png','./img/defesa/frost.png','./img/atacantes/fuze.png',
'./img/defesa/goyo.png','./img/atacantes/glaz.png','./img/defesa/jager.png','./img/atacantes/gridlock.png','./img/defesa/kaid.png','./img/atacantes/grim.png','./img/defesa/kapkan.png','./img/atacantes/hibana.png','./img/defesa/lesion.png','./img/atacantes/iana.png','./img/defesa/maestro.png','./img/atacantes/iq.png','./img/defesa/melusi.png',
'./img/atacantes/jackal.png','./img/defesa/mira.png','./img/atacantes/kali.png','./img/defesa/mozzie.png','./img/atacantes/lion.png','./img/defesa/mute.png','./img/atacantes/maverick.png','./img/defesa/oryx.png','./img/atacantes/montagne.png','./img/defesa/pulse.png','./img/atacantes/nomad.png','./img/defesa/rook.png',
'./img/atacantes/nook.png','./img/defesa/smoke.png','./img/atacantes/osa.png','./img/defesa/solis.png','./img/atacantes/sens.png','./img/defesa/tachanka.png','./img/atacantes/sledge.png','./img/defesa/thorn.png','./img/atacantes/thatcher.png','./img/defesa/thunderbird.png','./img/atacantes/thermite.png','./img/defesa/valkyrie.png','./img/atacantes/twitch.png','./img/defesa/vigil.png',
'./img/atacantes/ying.png','./img/defesa/wamai.png','./img/atacantes/zero.png','./img/defesa/warden.png','./img/atacantes/zofia.png']







document.addEventListener("DOMContentLoaded",function(){
    content_atacantes.innerHTML = ""
    var contador = 0
    for(var i = 0;i < imagens.length && i < nomes.length;)
    { 
        var atribuir = imagens[i]
        var nome = nomes[i]  
        testando.innerHTML += `<script>
            function ${nome}()
            {
                
                dados()
                
            }
            </script>`
        if(i == contador)
        {
            
            content_atacantes.innerHTML += `            <div class="card-agente">
            
            <div id="img_agente_${nome}" onclick="redirecionar(id)
        "  class="img-agente">  <img src="${[atribuir]}" alt=""></div> 
            <div class="nome-agente">${nome.toUpperCase()}</div>
            </div>
          
            `

        }
        contador++
        i++
    }
})

 function redirecionar(valor)
{
    
//    var value =  document.getElementById(valor)
   for(var  i =  0; i< imagens.length;i++)
   {
       var nome = nomes[i]          
    
       
        if(valor == `img_agente_${nome}`)
        {
             localStorage.setItem(`nome`,JSON.stringify(nome))   
    //  window.location.assign("./usuario.html")
        setTimeout(() => {
            window.location = "./pgSobreAgentes.html";
        }, "100")

        }
   }
}


cont_ataque = 0
function ataque()
{   
    cont_defesa = 0
    defensores.innerHTML =`<span >Defesa</span>`
    var validar = document.getElementById("atacantes").click
    
    if(validar && cont_ataque == 0)
    {
        atacantes.innerHTML =`<span style="color: red">Atacantes</span>`
        
        content_atacantes.innerHTML =""
        var contador = 0
        for(var i = 0;i < imagens.length;)
        {

            var atribuir = imagens[i]
            var nome = nomes[i]
            if(i == contador)
            {
                
                content_atacantes.innerHTML += `            <div class="card-agente">
                
                <div id="img_agente" class="img-agente" onclick="redirecionar(id)>  <img src="${[atribuir]}" alt=""></div> 
                <div class="nome-agente">${nome.toUpperCase()}</div>
                
                </div>`
            }
            contador+=2
            i +=2
           


        }
        cont_ataque = 1
    }
    else if( cont_ataque == 1)
    {
        atacantes.innerHTML =`<span >Atacantes</span>`
        content_atacantes.innerHTML = ""
        var contador = 0
        for(var i = 0;i < imagens.length && i < nomes.length;)
        { 
            var atribuir = imagens[i]
            var nome = nomes[i]
            if(i == contador)
            {
                
                content_atacantes.innerHTML += `            <div class="card-agente">
                
                <div id="img_agente" class="img-agente" onclick="redirecionar(id)>  <img src="${[atribuir]}" alt=""></div> 
                <div class="nome-agente">${nome.toUpperCase()}</div>
                
                </div>`
            }
            contador++
            i++
        }
        cont_ataque = 0
    }
    
}


cont_defesa = 0
function defesa()
{
    atacantes.innerHTML =`<span >Atacantes</span>`
    cont_ataque = 0
    var validar = document.getElementById("defensores").click
    
    if(validar &&  cont_defesa == 0)
    {
        defensores.innerHTML =`<span style="color:red;" >Defesa</span>`
        content_atacantes.innerHTML = ""
        var contador = 1
        for(var i = 1;i < imagens.length;)
        {
            
            var atribuir = imagens[i]
            var nome = nomes[i]
            
            if(i == contador)
            {
                
                content_atacantes.innerHTML += `            <div class="card-agente">
                
                <div id="img_agente" class="img-agente" onclick="redirecionar(id)>  <img src="${[atribuir]}" alt=""></div> 
                <div class="nome-agente">${nome.toUpperCase()}</div>
                
                </div>`
            }
            
            contador+=2
            i+=2


        }
        cont_defesa = 1

    }
    else if( cont_defesa== 1)
    {
        cont_ataque = 0
        defensores.innerHTML =`<span;" >Defesa</span>`
        
        content_atacantes.innerHTML = ""
        var contador = 0
        for(var i = 0;i < imagens.length && i < nomes.length;)
        { 
            var atribuir = imagens[i]
            var nome = nomes[i]
            if(i == contador)
            {
                
                content_atacantes.innerHTML += `            <div class="card-agente">
                
                <div id="img_agente" class="img-agente" >  <img src="${[atribuir]}" alt=""></div> 
                <div class="nome-agente">${nome.toUpperCase()}</div>
                
                </div>`
            }
            contador++
            i++
        }
        cont_defesa = 0
    }
}
    



