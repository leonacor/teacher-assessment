<?php
$arg1 = $_POST['arg1'];
$arg2 = $_POST['arg2'];
//$arg3 = $_POST['arg3'];
include('InfoSystem.php');
$objInfoSystem = new InfoSystem();
$strA = $objInfoSystem->getAccess($arg1,$arg2/*,$arg3*/);
//if(intval($strA)==intval($arg3)){
if(strlen($strA) && (intval($strA)==4 || intval($strA)==5 || intval($strA)==6)){
  $strUsNam = $objInfoSystem->getUsNam($arg1);
  $strSession = setSession($strUsNam,$strA,$arg1);
  header('Location: ../views/home.php?token='.$strSession);
}
else
{
  header('Location: http://bsnet.com.mx/evaluacion/');
}
function setSession($strUsNam,$iProfile,$strUs)
{
    session_start();
    $_SESSION['lgn'] = true;
    $_SESSION['pfl'] = $iProfile;
    $_SESSION['nam'] = $strUsNam;
    $_SESSION['usr'] = $strUs;
    $_SESSION['tkn'] = base64_encode(hash('sha256',date('Y/m/d h:i:s')));
    return $_SESSION['tkn'];
}
?>
