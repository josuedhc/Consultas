<?php 
    include("conection.php");
    $conn =  conectar();
    $FolioCon = $_POST['consulta'];
    $sql="SELECT ClavePresupuestal FROM siaf.comprometido WHERE Folio = '$FolioCon' GROUP BY ClavePresupuestal"; 
    
    $query=mysqli_query($conn,$sql);
    echo "Valor Seleccionado: ".$FolioCon;
?>
<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link rel="" href="https://cdn.datatables.net/fixedheader/3.1.6/css/fixedHeader.dataTables.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="styles.css" type="text/css" media="all">
    <title>Consultas</title>
</head>
<body>
    <header>
        <nav>
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link" id="menu-1" aria-current="page" href="#consulta">Consulta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="menu-2" href="#Cargar">Cargar información</a>
                </li>
            </ul>

        </nav>
    </header>

    <!-- SECCION PARA CONSULTAR  -->
    <!-- <section id="consulta" style="display:none;"> -->
    <section id="consulta" style="display:block;">
        <form name="FormBuscar" method="POST" action="index.php">
            <div class="mb-3">
                <h2>Folio</h2>
                <select id="seleBusca" class="form-select">
                    <option value=" "> </option>
                    <?php 
                                $sql1 = "SELECT folio FROM siaf.comprometido group by folio;";
                                $query1 = $conn-> query ($sql1);
                            while($valores = mysqli_fetch_array($query1)){
                                echo "<option value='".$valores['folio']."'>".$valores['folio']."</option>";
                        }
                    ?>
                </select>
                <input id="folio" type="text" name="consulta" style="display:none;">
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button type="submit" class="btn btn-primary" id="idBtn" >Consultar</button>    
            </div>
        </form>
         
        <div class="container">
            <div class="row">
                <div class="col-lg-13">
                        <h3 class="text-center">CONSULTA</h3>
                        <table class="table table-striped table-hover" >
                            <thead class="text-center">
                                <th>ClavePresupuestal</th> 
                            </thead>
                            <tbody>
                            <?php
                                while($row=mysqli_fetch_array($query)){
                             ?>
                                <tr>
                                <th class="text-center"><?php echo $row['ClavePresupuestal']?></th>
                                <th><a href="mostrar.php?ClavePresupuestal=<?php echo $row['ClavePresupuestal'] ?>">VER</a></th>
                                </tr> 
                                                 
                            <?php
                               }
                            ?>
                             
                            </tbody>
                        </table>

                </div>
            </div>
        </div>    
    </section>

    <!-- SECCION PARA SUBIR LOS DATOS -->
    <section id="Cargar" style="display:none;">
        <div class="container">
            <h2>Cargar e importar archivo excel a MySQL</h2>
            <form name="importa" method="post" action="" enctype="multipart/form-data">
                <div class="mb-3">
                    <div class="form-group">
                        <input type="file" class="filestyle" data-buttonText="Seleccione archivo" name="excel">
                    </div>
                </div>
                <div class="mb-3">
                    <input class="btn btn-secondary" type='submit' name='enviar' value="Importar" />
                </div>
                <input type="hidden" value="upload" name="action" />
                <input type="hidden" value="usuarios" name="mod">
                <input type="hidden" value="masiva" name="acc">
            </form>
        </div>
    </section>
    


    
    <script src="js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.6/js/dataTables.fixedHeader.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
       //funcion para obtener el item seleccionado
             $("#seleBusca").on("select2:select", function (e) { 
              var folio = $(e.currentTarget).val();
              console.log(folio);
              $("#folio").val(folio);
                });
         //funcion para implementar el buscador con select2
             $(document).ready(function() {
             $('#seleBusca').select2();
             });

                  
    </script>
    
</body>


</html>