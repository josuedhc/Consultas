<?php
include 'conection.php';
$conn = conectar();


$consulta = "SELECT folio,ClavePresupuestal,Total FROM siaf.comprometido where folio='2021-05-069-0515-03-0039' group by folio";
$resultado = mysqli_query($conn,$consulta);
//$data=$resultado->fetchAll(PDO::FETCH_ASSOC);

$data = array();
while ($row = $resultado->fetch_assoc()) {
  $data[] = $row;

}


//  $consultaFolio = "SELECT c.folio,d.folioCompro,c.ClavePresupuestal,c.Total,d.ImporteTotal, f.ENERO, f.FEBRERO, f.MARZO, f.ABRIL, f.MAYO, f.JUNIO, f.JULIO, f.AGOSTO, f.SEPTIEMBRE, f.OCTUBRE, f.NOVIEMBRE, f.DICIEMBRE FROM siaf.comprometido c, siaf.fechacompromiso f, siaf.devengo d WHERE  f.idcom = c.idcompromiso  and  d.folioCompro = '$FolioCon' and c.clavepresupuestal = d.ClavePresupuestal;";
   // $queryConsulta=mysqli_query($conn,$consultaFolio);
   //while($rows1=mysqli_fetch_array($queryConsulta)){
      //  echo "Folio: ".$rows1[0]."<br>";

print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conn=null;
?>