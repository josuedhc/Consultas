<?php

// VALOR DEL FORMULARIO
//$folio =$_POST['seleBusca'];

function conectar(){
    $servername = "proyectoconsulta.localhost";
    $database = "siaf";
    $username = "root";
    $password = "admin";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    echo "Connected successfully";
   // mysqli_close($conn);
    
    return $conn;
}
///
/*
function obtenDatos($FolioCon){
    $conn = conectar();
    $consultaFolio = "SELECT c.folio,d.folioCompro,c.ClavePresupuestal,c.Total,d.ImporteTotal, f.ENERO, f.FEBRERO, f.MARZO, f.ABRIL, f.MAYO, f.JUNIO, f.JULIO, f.AGOSTO, f.SEPTIEMBRE, f.OCTUBRE, f.NOVIEMBRE, f.DICIEMBRE FROM siaf.comprometido c, siaf.fechacompromiso f, siaf.devengo d WHERE  f.idcom = c.idcompromiso  and  d.folioCompro = '$FolioCon' and c.clavepresupuestal = d.ClavePresupuestal;";
    $queryConsulta=mysqli_query($conn,$consultaFolio);
    $ver=mysqli_fetch_row($queryConsulta);

    if(!isset($ver)){
        $datos=array(
            'folio' => $ver[0],
            'folioCompro' => $ver[1],
            'ClavePresupuestal' => $ver[2],
            'Total' => $ver[3],
            'ImporteTotal' => $ver[4],
            'ENERO' => $ver[5],
            'FEBRERO' => $ver[6],
            'MARZO' => $ver[7],
            'ABRIL' => $ver[8],
            'MAYO' => $ver[9],
            'JUNIO' => $ver[10],
            'JULIO' => $ver[11],
            'AGOSTO' => $ver[12],
            'SEPTIEMBRE' => $ver[13],
            'OCTUBRE' => $ver[14],
            'NOVIEMBRE' => $ver[15],
            'DICIEMBRE' => $ver[16]
        
   
    );
    return $datos; 

}
    //while($rows1=mysqli_fetch_array($queryConsulta)){
    //echo "Folio: ".$rows1[0]."<br>";
    //}

    
    }
    

*/




//---------FUNCION PARA CONVERTIR EL TIPO DE FORMATO DE MONEDA-------------
function convertir($value) {
    if ($value<0) return "-".convertir(-$value);
    return '$' . number_format($value, 2);
  }


?>