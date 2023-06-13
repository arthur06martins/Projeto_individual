var ctx = document.getElementById('ranking_quiz')

 new Chart(ctx,{
    type: 'bar',
    data: {
      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

    var pontos = 0
function respostas()
{

    

     var r1 = (resposta1.value).toUpperCase()
     var r2 = (resposta2.value).toUpperCase()
     var r3 = (resposta3.value).toUpperCase()
     var r4 = (resposta4.value).toUpperCase()
     var r5 = (resposta5.value).toUpperCase()
     var r6 = (resposta6.value).toUpperCase()
     var r7 = (resposta7.value).toUpperCase()
    

    

       if(r1 == "A")
       {
           nota = 2
       }
       else{
        results.innerHTML += `1-Você errou<br>`
       }
       if(r2 == "C")
       {
           nota = 3
       }
       else{
        results.innerHTML += `2-Você errou<br>`
       }
       if(r3 == "D")
       {
           nota = 2
       }
       else{
        results.innerHTML += `3-Você errou<br>`
       }

       if(r4 == "A")
       {
           nota = 2
       }
       else{
        results.innerHTML += `4-Você errou<br>`
       }
       if(r5 == "C")
       {
           nota = 2
       }
       else{
        results.innerHTML += `5-Você errou<br>`
       }
       if(r6 == "D")
       {
           nota = 3
       }
       else{
        results.innerHTML += `6-Você errou<br>`
       }

       if(r7 == "D")
       {
           nota = 2
       }
       else{
        results.innerHTML += `7-Você errou<br>`
       }
        fetch("/usuario/")                                                                                                
}