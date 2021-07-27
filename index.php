<?php
include("conection.php");
$conn = conectar();

$sql="SELECT * FROM comprometido c, fechaCompromiso f WHERE c.idCompromiso = f.idCom";
$query=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($query); 

?>




    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
        <link rel="" href="https://cdn.datatables.net/fixedheader/3.1.6/css/fixedHeader.dataTables.min.css">
        <link rel="stylesheet" href="styles.css" type="text/css" media="all">
        <title>Consultas</title>
    </head>

    <body>
   
    

        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link" id="menu-1" aria-current="page" href="#" onclick="mostrar('consulta');">Consulta</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="menu-2" href="#" onclick="mostrar('Cargar'); ">Cargar información</a>
            </li>
        </ul>
        <!-- SECCION PARA CONSULTAR  -->
        <section id="consulta" style="display:none;">
            <form>
                <div class="mb-3">
                    <h2>Folio</h2>
                    <select class="form-select form-select-lg mb-3">
                    
                    <?php 
                            $sql1 = "SELECT folio FROM siaf.comprometido group by folio;";
                            $query1 = $conn -> query ($sql1);
                        while($valores = mysqli_fetch_array($query1)){
                            echo "<option value='".$valores['folio']."'>".$valores['folio']."</option>";
                     }
                        ?>
        </select>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button type="submit" class="btn btn-primary">Consultar</button>
                </div>
            </form>
            <table id="tablaCon" class="table table-striped">
                    <thead>
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Clave presupuestal</th>
                        <th scope="col">Total</th>
                        <th scope="col">Enero</th>
                        <th scope="col">Febrero</th>
                        <th scope="col">Marzo</th>
                        <th scope="col">Abril</th>
                        <th scope="col">Mayo</th>
                        <th scope="col">Junio</th>
                        <th scope="col">Julio</th>
                        <th scope="col">Agosto</th>
                        <th scope="col">Septiembre</th>
                        <th scope="col">Octubre</th>
                        <th scope="col">Noviembre</th>
                        <th scope="col">Diciembre</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while($row=mysqli_fetch_array($query)){
                        ?>
                        <tr>
                            <th><?php echo trim($row['idCompromiso'])?></th>
                            <th><?php echo trim($row['ClavePresupuestal']) ?></th>
                            <th><?php echo trim($row['Total']) ?></th>
                            <th><?php echo $row['ENERO'] ?></th>
                            <th><?php echo $row['FEBRERO'] ?></th>
                            <th><?php echo $row['MARZO'] ?></th>
                            <th><?php echo $row['ABRIL'] ?></th>
                            <th><?php echo $row['MAYO'] ?></th>
                            <th><?php echo $row['JUNIO'] ?></th>
                            <th><?php echo $row['JULIO'] ?></th>
                            <th><?php echo $row['AGOSTO'] ?></th>
                            <th><?php echo $row['SEPTIEMBRE'] ?></th>
                            <th><?php echo $row['OCTUBRE'] ?></th>
                            <th><?php echo $row['NOVIEMBRE'] ?></th>
                            <th><?php echo $row['DICIEMBRE'] ?></th>
                           
                        </tr>
                    <?php
                            }
                    ?>
                    </tbody>
            </table>
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
    <script>
     let temp = $("#btn1").clone();
        $("#btn1").click(function(){
         $("#btn1").after(temp);
        });

        $(document).ready(function(){
             var table = $('#tablaCon').DataTable({
             orderCellsTop: true,
             fixedHeader: true 
        });

    //Creamos una fila en el head de la tabla y lo clonamos para cada columna
    $('#tablaCon thead tr').clone(true).appendTo( '#tablaCon thead' );

    $('#tablaCon thead tr:eq(1) th').each( function (i) {
        var title = $(this).text(); //es el nombre de la columna
        $(this).html( '<input type="text" placeholder="Search...'+title+'" />' );
 
        $( 'input', this ).on( 'keyup change', function () {
            if ( table.column(i).search() !== this.value ) {
                table
                    .column(i)
                    .search( this.value )
                    .draw();
                 }
          } );
         } );   
    });

    </script>

    </body>


    </html>