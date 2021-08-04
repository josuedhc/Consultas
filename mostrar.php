<?php
include 'conection.php';
$conn=conectar();
$ClaveP=$_GET['ClavePresupuestal'];
$sql="SELECT * FROM comprometido WHERE ClavePresupuestal= '".$ClaveP. "';";
$resultado1=mysqli_query($conn,$sql);
while ($fila=mysqli_fetch_assoc($resultado1)){

 ?>  
 <div class="mb-3">
     <form   action="">
         <input class="form-control" type="hidden" name="txtClaveP" value="<?php echo $fila['ClavePresupuestal'] ?>">
         <label>Disponible :</label>
         <input class="form-control" type="text" txtdisponible value="<?php echo $fila['ClavePresupuestal'] ?>"><br>
         <label>Comprometido: </label>
         <input class="form-control" type="text" txtcomprometido value="<?php echo $fila['ClavePresupuestal'] ?>"><br>
         <label>Devengo: </label>
         <input class="form-control" type="text" txtdevengo value="<?php echo $fila['ClavePresupuestal'] ?>"><br>
         <label>Pagado: </label>
         <input class="form-control" type="text" txtpagado value="<?php echo $fila['ClavePresupuestal'] ?>"><br>
         <a href="index.php">Regresar</a>
     </form>
     <?php } ?>
 </div>
 


