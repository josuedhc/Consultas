<?php 
include("conection.php");

$conn = conectar();

$sql="SELECT c.folio,d.folioCompro,c.ClavePresupuestal,c.Total,d.ImporteTotal FROM siaf.comprometido c, siaf.fechacompromiso f, siaf.devengo d WHERE c.idcompromiso = f.idcom and c.folio = d.folioCompro and c.clavepresupuestal = d.ClavePresupuestal;";
$query=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($query); 
$FolioCon = $_POST['consulta'];
echo $FolioCon;

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
                <select id="seleBusca" class="form-select form-select-lg mb-3">
                    <option value=" "> </option>
                    <?php 
                                $sql1 = "SELECT folio FROM siaf.comprometido group by folio;";
                                $query1 = $conn -> query ($sql1);
                            while($valores = mysqli_fetch_array($query1)){
                                echo "<option value='".$valores['folio']."'>".$valores['folio']."</option>";

                        }
                    ?>
                </select>
                <input id="folio" type="text" name="consulta" style="display:none;">
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button type="submit" class="btn btn-primary">Consultar</button>
                
            </div>
        </form>
        <div class="container-fluid">
            <table id="tablaCon" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Folio</th>
                        <th scope="col">Folio Comprometido</th>
                        <th scope="col">Clave Presupuestal</th>
                        <th scope="col">Ejercicio</th>
                        <th scope="col">Ramo</th>
                        <th scope="col">Institución</th>
                        <th scope="col">Unidad</th>
                        <th scope="col">Programa</th>
                        <th scope="col">Iden Gasto</th>
                        <th scope="col">Financiamiento</th>
                        <th scope="col">Origen</th>
                        <th scope="col">Procedencia</th>
                        <th scope="col">Objeto Gasto</th>
                        <th scope="col">Aprobado</th>
                        <th scope="col">Pagado</th>
                        <th scope="col">Diferencia</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                            while($row=mysqli_fetch_array($query)){
                        ?>
                    <tr>
                        <th><?php echo $row['folio']?></th>
                        <th><?php echo $row['folioCompro']?></th>
                        <th><?php echo $row['ClavePresupuestal']?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),0,2) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),3,2) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),6,3) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),10,4) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),21,4) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),33,1) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),35,1) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),37,1) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),39,3) ?></th>
                        <th><?php echo substr(($row['ClavePresupuestal']),47,4) ?></th>
                        <th><?php echo convertir($row['Total']) ?></th>
                        <th><?php echo convertir($row['ImporteTotal'])?></th>
                        <th><?php echo convertir($row['Total'] - $row['ImporteTotal'])?></th>
                    </tr>
                    <?php
                        }
                    ?>
                </tbody>
            </table>
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

///--------codigo referente a TablaData
    let temp = $("#btn1").clone();
    $("#btn1").click(function() {
        $("#btn1").after(temp);
    });

    $(document).ready(function() {
        var table = $('#tablaCon').DataTable({
            orderCellsTop: true,
            fixedHeader: true,
            ordering: false,
            bAutoWidth: false,
            language: {
                search: "Filtrar:",
                info: "Mostrando desde el _START_ al _END_ del total de _TOTAL_ registros",
                infoEmpty: "Mostrando desde el 0 al 0 del total de  0 registros",
                lengthMenu: "Mostrar _MENU_ registros por página",
                paginate: {
                    first: "Primera",
                    last: "Última",
                    next: "Siguiente",
                    previous: "Anterior",
                }
            }

        });

        //Creamos una fila en el head de la tabla y lo clonamos para cada columna
        $('#tablaCon thead tr').clone(true).appendTo('#tablaCon thead');

        $('#tablaCon thead tr:eq(1) th').each(function(i) {
            var title = $(this).text(); //es el nombre de la columna
            $(this).html('<input type="text" placeholder="Search...' + title + '" />');

            $('input', this).on('keyup change', function() {
                if (table.column(i).search() !== this.value) {
                    table
                        .column(i)
                        .search(this.value)
                        .draw();
                }
            });

        });
    });

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