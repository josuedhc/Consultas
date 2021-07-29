function mostrar(id) {
    var element = document.getElementById(id);

    if (element.style.display == 'none') {
        element.style.display = 'block';

    } else {
        element.style.display = 'none';


    }
}

function valida() {
    if (document.getElementById('menu-1').onclick()) {
        //document.getElementById('Cargar').style.display = 'block';
        console.log("entro 1");
    } else {
        document.getElementById('consulta').style.display = 'none';
        console.log("entro 2");

    }


}