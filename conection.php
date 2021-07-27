<?php

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

?>