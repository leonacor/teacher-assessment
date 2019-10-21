<?php
$arg1 = $_POST['arg1'];
$arg2 = $_POST['arg2'];
include('InfoSystem.php');
$objInfoSystem = new InfoSystem();
$strR = $objInfoSystem->setNewUser($arg1,$arg2);
if($strR>0){
  header('Location: ../users/message.php?i='.$strR);
}
else{
  header('Location: ../users/message.php?i=0');
}
?>
