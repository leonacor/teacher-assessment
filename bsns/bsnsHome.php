<?php
$c = $_POST['c'];
$arg = $_POST['arg'];
include ('InfoSystem.php') ;
$objInfoSystem = new InfoSystem();
switch ($c) {
  case 1:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->getTeachersToEvaluate($objJson->L1);
    echo($strR);
    break;
  case 2:
    $strR = $objInfoSystem->getQuestions();
    echo($strR);
    break;
  case 3:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setNoTeacher($objJson->L1,$objJson->L2,$objJson->L3,$objJson->L4);
    echo($strR);
    break;
  case 4:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setInsertNewAssessment($objJson->L1,$objJson->L2,$objJson->L3,$objJson->L4,$objJson->L5);
    echo($strR);
    break;
  case 5:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setInsertNewQuestion($objJson->L1,$objJson->L2,$objJson->L3,$objJson->L4);
    echo($strR);
    break;
  case 6:
    $objJson = json_decode($arg);
    for($i=0;$i<count($objJson->L2);$i++){
      $strR = $objInfoSystem->setInsertNewProdQuPrSkAs($objJson->L1,$objJson->L2[$i],$objJson->L3);
    }
    echo($strR);
    break;
  case 7:
    $strR = $objInfoSystem->getAssessment();
    echo ($strR);
    break;
  case 8:
    $strR = $objInfoSystem->getProdQuPrSkAs();
    echo($strR);
    break;
  case 9:
    $strR = $objInfoSystem->getAllQuPrSkAs();
    echo($strR);
    break;
  case 10:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setUpdateCatAssessmentPublish($objJson->L1,$objJson->L2);
    echo($strR);
    break;
  case 11:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setUpdateDismissQuPrSkAs($objJson->L1,$objJson->L2,$objJson->L3);
    echo($strR);
    break;
  case 12:
    $strR = $objInfoSystem->getQuPrSkAsQuery();
    echo($strR);
    break;
  case 13:
    $strR = $objInfoSystem->getPrSkQuery();
    echo($strR);
    break;
  case 14:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setRemoveQuestion($objJson->L1,$objJson->L2);
    echo($strR);
    break;
  case 15:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setRemovePrSk($objJson->L1,$objJson->L2);
    echo($strR);
    break;
  case 16:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setNewPrSk($objJson->L1,$objJson->L2,$objJson->L3);
    echo($strR);
    break;
  case 17:
    $strR = $objInfoSystem->getCatAsAliveQuery();
    echo($strR);
    break;
  case 18:
    $strR = $objInfoSystem->getCatGr();
    echo($strR);
    break;
 case 19:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setAliveAs($objJson->L1,$objJson->L2);
    echo($strR);
    break;
  case 20:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->setRemoveAliveAs($objJson->L1,$objJson->L2);
    echo($strR);
    break;
  case 21:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->getCatUsProfile($objJson->L1);
    echo($strR);
    break;
  case 22:
    $objJson = json_decode($arg);
    $strR = $objInfoSystem->getTeachersToEvaluateAlreadyEvaluated($objJson->L1);
    echo($strR);
    break;
  case 23:
    $objJson = json_decode($arg,true);
    for($i=0;$i<$objJson['L4'];$i++){
      $strR = $objInfoSystem->setAnswersQuestions($objJson['L1'],$objJson['L2'],$objJson['L3'],$objJson['q'.$i],$objJson['a'.$i],$objJson['L5']);
    }
    echo($strR);
    break;
  default:
    echo('No hay Información #PHPSwitch');
    break;
}
?>
