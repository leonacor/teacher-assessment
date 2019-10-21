<?php
$c = $_POST['c'];
$arg = $_POST['arg'];
include ('InfoChart.php') ;
$objInfoChart = new InfoChart();
switch ($c) {
  case 1:
    $strR = $objInfoChart->getChart1($arg);
    echo ($strR);
    break;
  case 2:
    $strStyle = $objInfoChart->setHighChartsFontFamily();
    $strR = $objInfoChart->getChart2($arg);
    echo($strR.'|'.$strStyle);
    break;
  case 3:
    $strStyle = $objInfoChart->setHighChartsFontFamily();
    $strR = $objInfoChart->getChart3($arg);
    echo($strR.'|'.$strStyle);
    break;
  case 4:
    $strStyle = $objInfoChart->setHighChartsFontFamily();
    $strR = $objInfoChart->getChart4($arg);
    echo($strR.'|'.$strStyle);
    break;
}
?>
