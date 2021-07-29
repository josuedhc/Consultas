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








//---------FUNCION PARA CONVERTIR EL TIPO DE FORMATO DE MONEDA-------------
function convertir($value) {
    if ($value<0) return "-".convertir(-$value);
    return '$' . number_format($value, 2);
  }




?>