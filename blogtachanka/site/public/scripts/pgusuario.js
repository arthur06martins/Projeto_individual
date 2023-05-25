
    var nomes = ['ace','alibi','amaru','aruni','ash','azumi','blackbird','bandit','blitz','castle','brava','caveira','buck','clash','capitao','doc','dokkaebi','echo','finka','ela','flores','frost','fuze','goyo','glaz','jager','gridlock','kaid','grim','kapkan','hibana','lesion','iana','maestro','iq','melusi','jackal','mira','kali','mozzie','lion','mute','maverick','oryx','montagne','pulse','nomad','rook','nook','smoke','osa','solis','sens','tachanka','sledge','thorn','thatcher','thunderbird','thermite','valkyrie','twitch','vigil','ying','wamai','zero','warden','zofia']
    var imagens = ['./img/atacantes/ace.png',`./img/defesa/alibi.png`,'./img/atacantes/amaru.png','./img/defesa/aruni.png','./img/atacantes/ash.png','./img/defesa/azami.png','./img/atacantes/blackbird.png',
'./img/defesa/bandit.png','./img/atacantes/blitz.png','./img/defesa/castle.png','./img/atacantes/brava.png','./img/defesa/caveira.png'
,'./img/atacantes/buck.png','./img/defesa/clash.png','./img/atacantes/capitao.png','./img/defesa/doc.png','./img/atacantes/dokkaebi.png','./img/defesa/echo.png','./img/atacantes/finka.png','./img/defesa/ela.png','./img/atacantes/flores.png','./img/defesa/frost.png','./img/atacantes/fuze.png',
'./img/defesa/goyo.png','./img/atacantes/glaz.png','./img/defesa/jager.png','./img/atacantes/gridlock.png','./img/defesa/kaid.png','./img/atacantes/grim.png','./img/defesa/kapkan.png','./img/atacantes/hibana.png','./img/defesa/lesion.png','./img/atacantes/iana.png','./img/defesa/maestro.png','./img/atacantes/iq.png','./img/defesa/melusi.png',
'./img/atacantes/jackal.png',`./img/defesa/mira.png`,'./img/atacantes/kali.png','./img/defesa/mozzie.png','./img/atacantes/lion.png','./img/defesa/mute.png','./img/atacantes/maverick.png','./img/defesa/oryx.png','./img/atacantes/montagne.png','./img/defesa/pulse.png','./img/atacantes/nomad.png','./img/defesa/rook.png',
'./img/atacantes/nook.png','./img/defesa/smoke.png','./img/atacantes/osa.png','./img/defesa/solis.png','./img/atacantes/sens.png','./img/defesa/tachanka.png','./img/atacantes/sledge.png','./img/defesa/thorn.png','./img/atacantes/thatcher.png','./img/defesa/thunderbird.png','./img/atacantes/thermite.png','./img/defesa/valkyrie.png','./img/atacantes/twitch.png','./img/defesa/vigil.png',
'./img/atacantes/ying.png','./img/defesa/wamai.png','./img/atacantes/zero.png','./img/defesa/warden.png','./img/atacantes/zofia.png']

var posicao_img_logoUser = []

document.addEventListener("DOMContentLoaded", function(valor) {

    if(valor|| valor == "nenhum")
    {
        img_user.innerHTML = `<img style ="height:70%;width:20vw;right:37.5%; position:absolute"class = "t" src = "./img/usuario.png">`
            a_img_login.innerHTML =`<img class = "img_user_logo" style="background:rgba(255,255,255,0.005"  src ="./img/usuario.png">`
    }
for(var i = 0; i < nomes.length;i++)
{
    var nome  = nomes[i]
    if(nome)
    {
        select_img.innerHTML += `<option value="${nome}">${nome}</option>`
    }
}
})
   function user_img(value)
   {
        
       for(var i = 0;i<imagens.length;i++)
       {
            var atribuir = imagens[i]
        
             if(atribuir == `./img/defesa/${value}.png` || atribuir == `./img/atacantes/${value}.png`)
            {
                posicao_img_logoUser.push(i)
                img_user.innerHTML = `<img class = "t" src = "${atribuir}">`
                a_img_login.innerHTML =`<img class = "img_user_logo"  src = "${atribuir}">`
                break
            }
            else if(value == "nenhum")
            {
                img_user.innerHTML = `<img style ="height:70%;width:20vw;left position:absolute; " src = "./img/usuario.png">`
                 a_img_login.innerHTML =`<img class = "img_user_logo" style="background:rgba(255,255,255,0.005"  src ="./img/usuario.png">`
            }
        }
            
   }
