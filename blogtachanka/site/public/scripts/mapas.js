var img_mapas = [`./img/mapas/bank.jpg`,`./img/mapas/base_hereford.jpg`,`./img/mapas/border.jpg`,
`./img/mapas/clubhouse.jpg`,`./img/mapas/coastline.jpg`,`./img/mapas/consulado.jpg`,`./img/mapas/emerald_plains.jpg`,
`./img/mapas/favela.jpg`,`./img/mapas/fortaleza.jpg`,`./img/mapas/house.jpg`,`./img/mapas/kafe.jpg`,`./img/mapas/kanal.jpg`,
`./img/mapas/nighthaven.jpg`,`./img/mapas/oregon.jpg`,`./img/mapas/outback.jpg`,`./img/mapas/plane.jpg`,`./img/mapas/skyscraper.jpg`,`./img/mapas/stadium.jpg`,`./img/mapas/themepark.jpg`,`./img/mapas/tower.jpg`,`./img/mapas/villa.jpg`,`./img/mapas/yacht.jpg`,]



document.addEventListener("DOMContentLoaded",function(){
    
    for(var i = 0;i <img_mapas.length; i++)
    {
        var atribuir = img_mapas[i]

        mapas.innerHTML += `<div class= "cards_mapas"><div class="img_mapas" id= "mapa${i}"> <img src="${[atribuir]}" alt=""></div>`

    }
})

