document.addEventListener("DOMContentLoaded",function(){
    var maps = {
        mapas: [1,8,7,9,],
        nome:[`b`,`b`],
        text:[`a`,`a`]
    }
    for(var i = 0;i < maps.mapas.length; i++)
    {
        var contagen = maps.mapas[i]

        content_mapas.innerHTML += `<div id= "mapa${i}">${contagen}</div>`
    }
})

