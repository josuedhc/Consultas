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
    echo "Connected successfully"."<br>";
   // mysqli_close($conn);
    
    return $conn;
}

/*
class Conexion{
    class Conexion{	  
        public static function Conectar() {        
            define('servidor', 'proyectoconsulta.localhost');
            define('nombre_bd', 'siaf');
            define('usuario', 'root');
            define('password', 'admin');					        
            $opciones = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');			
            try{
                $conexion = new PDO("mysql:host=".servidor."; dbname=".nombre_bd, usuario, password, $opciones);			
                return $conexion;
            }catch (Exception $e){
                die("El error de Conexión es: ". $e->getMessage());
            }
        }
}


*/




//---------FUNCION PARA CONVERTIR EL TIPO DE FORMATO DE MONEDA-------------
function convertir($value) {
    if ($value<0) return "-".convertir(-$value);
    return '$' . number_format($value, 2);
  }


?>