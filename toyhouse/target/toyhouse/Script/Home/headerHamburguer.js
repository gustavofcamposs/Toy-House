function clickMenu(){
    if (hamburguer.style.display === 'block'){ /*Necessário deixar o ID com o mesmo nome, pois ele puxa o ID e não a cLASS*/
        hamburguer.style.display = 'none'
    } else{
        hamburguer.style.display = 'block'
    }
}