<?php

function setHighCharstStyleChart(){
  $myObjChart->spacingBottom=100;
  $myObjChart->spacingTop=100;
  $myObjChart->spacingLeft=100;
  $myObjChart->spacingRight=100;
  $myObjChart->width=null;
  $myObjChart->height=null;
  return $myObjChart;
}


function setHighCharstStyleLabel(){
  $myObjChart->align='right';
  $myObjChart->x=-10;
  $myObjChart->y=0;
  return $myObjChart;
}

$objSeriesElemnt1->data=array(1, 2, 1, 3, 4, 1, 3, 4);
$objSeriesElemnt2->data=array(8, 8, 8, 8, 8, 8, 8, 8);
$objSeriesElemnt3->data=array(3, 2.67, 3, 6.33, 3.33, 3, 6.33, 3.33);
$objxAxis->categories=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5', 'Profesor 6', 'Profesor 7', 'Profesor 8');
$objSeriesElemnt1->type='column';
$objSeriesElemnt1->name='Competencias evaluadas';
$objSeriesElemnt1->color='#009688';
$objSeriesElemnt2->type='column';
$objSeriesElemnt2->name='Total de comptencias';
$objSeriesElemnt2->color='#004D40';
$objSeriesElemnt3->type='spline';
$objSeriesElemnt3->name='Evaluación promedio';
$objSeriesElemnt3->color='#FF9800';
$objSeriesElemnt3Marker->lineWidth=2;
$objSeriesElemnt3Marker->lineColor='#d32f2f';
$objSeriesElemnt3Marker->fillColor='#d32f2f';
$objSeriesElemnt3->marker=$objSeriesElemnt3Marker;
$objSeriesElemnt4->type='pie';
$objSeriesElemnt4->name='Completado';
$objSeriesElemnt4->center=array(100,80);
$objSeriesElemnt4->size=100;
$objSeriesElemnt4->showInLegend=false;
$objSeriesElemnt4Half1->name='Avance';
$objSeriesElemnt4Half1->y=25;
$objSeriesElemnt4Half1->color='#5C6BC0';
$objSeriesElemnt4Half2->name='Total';
$objSeriesElemnt4Half2->y=75;
$objSeriesElemnt4Half2->color='#303F9F';
$objSeriesElemnt4Label->enabled=false;
$objSeriesElemnt4->dataLabels=$objSeriesElemnt4Label;
$objSeriesElemnt4->data=array($objSeriesElemnt4Half1,$objSeriesElemnt4Half2);
$objLabelItemsStyle->left='50px';
$objLabelItemsStyle->top='18px';
$objLabelItemsStyle->color='#3949AB';
$objLabelItemsStyle->font='bold 16px myFont1';
$objLabelItems->style=$objLabelItemsStyle;
$objLabelItems->html='Relación de profesores evaluados por competencias';
$objLabel->items=array($objLabelItems);
$objyAxisTitleStyle->font='bold 16px myFont1';
$objyAxisTitleStyle->color='#283593';
$objyAxisTitle->style=$objyAxisTitleStyle;
$objyAxisTitle->text='Competencias';
$objyAxis->title=$objyAxisTitle;
$objyAxis->max=20;
$objStyle->color='#283593';
$objStyle->font='bold 16px myFont1';
$objTitle->text='Totales de avance';
$objTitle->style=$objStyle;
$myObj->title=$objTitle;
$myObj->xAxis=$objxAxis;
$myObj->yAxis=$objyAxis;
$myObj->labels=$objLabel;
$myObj->series=array($objSeriesElemnt1,$objSeriesElemnt2,$objSeriesElemnt3,$objSeriesElemnt4);
$myJSON1 = json_encode($myObj);

$myObj=null;
$objxAxis=null;
$objTitle=null;
$objChart=setHighCharstStyleChart();
$objChart->type='pie';
$objChartOptions->enabled=true;
$objChartOptions->alpha=65;
$objChartOptions->beta=0;
$objChart->options3d=$objChartOptions;
$myObj->chart=$objChart;
//$myObj->chart=setHighCharstStyleChart();
$objTitle->text='Avance total de la Evaluación';
$myObj->title=$objTitle;
$objTooltip->pointFormat='{series.name}:{point.percentage:.1f}%';
$myObj->tooltip=$objTooltip;
$objPlotOptionsPie->allowPointSelect=true;
//$objPlotOptionsPie->cursor='pointer';
$objPlotOptionsPie->depth=35;
$objPlotOptionsPieLabels->enabled=true;
$objPlotOptionsPieLabels->format='{point.name}';
$objPlotOptionsPie->dataLabels=$objPlotOptionsPieLabels;
$objPlotOptions->pie=$objPlotOptionsPie;
$myObj->plotOptions=$objPlotOptions;
//$objSeriesArray->type='pie';
//$objxAxis->categories=array('Evaluación Completado','Evaluación Completado');
$myObj->xAxis=$objxAxis;
$objSeriesArray->name='Evaluación';
$objSeriesData1=array('Evaluación Completado', 75.0);
$objSeriesData2=array('Completado', 25.0);
$objSeriesData=array($objSeriesData1,$objSeriesData2);
$objSeriesArray->data=$objSeriesData;
$objSeriesArray->showInLegend=true;
$objSeries=array($objSeriesArray);
$myObj->series=$objSeries;
$myJSON2 = json_encode($myObj);
echo($myJSON2.'--2---');

$myObj=null;
$objTitle=null;
$objxAxis=null;
$objyAxis=null;
$objyAxisTitle=null;
$objTooltip=null;
$objPlotOptions=null;
$objSeries1=null;
$objSeries2=null;
$objChart=null;
$objChart=setHighCharstStyleChart();
$objChart->type='column';
$myObj->chart=$objChart;
$objTitle->text='Evaluación de profesores total';
$myObj->title=$objTitle;
//$objyAxis=setHighCharstStyleLabel();
$objxAxis->categories=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5');
$objyAxis->min=0;
$objyAxisTitle->text='Total de avance de Evaluación';
$objyAxis->title=$objyAxisTitle;

/*$objyAxisStacked->enabled=true;
$objyAxisStackedStyle->fontWeight='bold';
$objyAxisStackedStyle->color='#311B92';
$objyAxisStacked->style=$objyAxisStackedStyle;
$objyAxis->stackLabels=$objyAxisStacked;*/
$myObj->xAxis=$objxAxis;
$myObj->yAxis=$objyAxis;
/*$objLegend->align='right';
$objLegend->x=-30;
$objLegend->verticalAlign='top';
$objLegend->y=25;
$objLegend->floating=true;
$objLegend->backgroundColor='#880E4F';
$objLegend->borderColor='#CCC';
$objLegend->borderWidth=1;
$objLegend->shadow=false;
$myObj->legend=$objLegend;*/
$objTooltip->headerFormat='<b>{point.x}</b><br/>';
$objTooltip->pointFormat='{series.name}: {point.y}<br/>Total: {point.stackTotal}';
$myObj->tootltip=$objTooltip;
$objPlotOptionsColumn->stacking='normal';
$objPlotOptionsColumndataLabels->enabled=true;
$objPlotOptionsColumndataLabels->color='#4A148C';
$objPlotOptionsColumn->dataLabels=$objPlotOptionsColumndataLabels;
$objPlotOptions->column=$objPlotOptionsColumn;
$myObj->plotOptions=$objPlotOptions;
$objSeries1->name='faltan';
$objSeries1->data=array(5, 8, 6, 3, 1);
$objSeries1->color='#4527A0';
$objSeries2->name='avance';
$objSeries2->data=array(3, 0, 2, 5, 7);
$objSeries2->color='#7E57C2';
$myObj->series=array($objSeries1,$objSeries2);
$myJSON3 = json_encode($myObj);
echo($myJSON3.'---');


$myObj=null;
$objTitle=null;
$objxAxis=null;
$objyAxis=null;
$objyAxisTitle=null;
$objTooltip=null;
$objPlotOptions=null;
$objSeries=null;
$objSeries2=null;
$objChart=null;
//$objSeries=null;
$objChart=setHighCharstStyleChart();
$objChart->type='spline';
$myObj->chart=$objChart;
$objTitle->text='Promedio de las competencias por profesor';
$myObj->title=$objTitle;
//$objyAxis=setHighCharstStyleLabel();
$objyAxisTitle->text='Promedio';
$objyAxis->max=10;
$objyAxis->title=$objyAxisTitle;
$myObj->yAxis=$objyAxis;
$objxAxis->categories=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5', 'Profesor 6', 'Profesor 7', 'Profesor 8');
$myObj->xAxis=$objxAxis;
$objSeries->name='promedio';
$objSeries->data=array(5, 6, 3, 7, 8, 2, 4, 4);
$myObj->series=array($objSeries);
$myJSON4 = json_encode($myObj);
echo($myJSON4.'---');
?>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../styles/cssTemplate.css" />
<link rel="stylesheet" href="../styles/cssFontFace.css" />
<body>
  <script src="../charts/jquery.js"></script>
  <script src="../charts/highcharts.js"></script>
  <script src="../charts/highcharts3d.js"></script>
  <script src="../charts/highchartsmore.js"></script>
  <script src="../charts/highchartsgauge.js"></script>
  <script src="../charts/highchartswordcloud.js"></script>
  <script src="../charts/jsChartsTest.js"></script>
<script src="../scripts/jsChartReports.js"></script>
  <script>
    var objCharts = null;
    $(document).ready(function(){
      objCharts = new jsCharts();
      /*$.post('../bsns/bsnsChart.php',{c:1},function(r){
        objCharts.printCombine($('#div11'),r)
      });*/
      objCharts.printCombine($('#div11'),'<?php echo($myJSON1); ?>');
      objCharts.printColumnStacked($('#div5'),'<?php echo($myJSON3); ?>');
      objCharts.printPie3dFull($('#div3'),'<?php echo($myJSON2); ?>');
      objCharts.printLineA($('#div6'),'<?php echo($myJSON4); ?>');
      /*objCharts.printBubble($('#div1'));
      objCharts.printAreaspline($('#div2'));
      objCharts.printPie3dFull($('#div3'));
      objCharts.printPieFull($('#div4'));
      objCharts.printColumnStacked($('#div5'));
      objCharts.printLine($('#div6'));
      objCharts.printArea($('#div7'));
      objCharts.printBar($('#div8'));
      objCharts.printBarStacked($('#div9'));
      objCharts.printColumn3d($('#div10'));

      objCharts.printAreaStacked($('#div12'));
      objCharts.printPieWheel($('#div13'));
      objCharts.printColumn($('#div14'));
      objCharts.printColumnNegative($('#div15'));
      objCharts.printColumnGrouped($('#div16'));
      objCharts.printPieHalf($('#div17'));
      objCharts.printScatter($('#div18'));
      objCharts.printBubblePacked($('#div19'));
      objCharts.printBubbleGrouped($('#div20'));
      objCharts.printPieDonut($('#div21'));
      objCharts.printSpider($('#div22'));
      objCharts.printGaugeFull($('#div23'));
      objCharts.printGaugeHalf($('#div24'));
      objCharts.printWordCloud($('#div25'));*/
    });
  </script>
  <div id="div1"></div>
  <div id="div2"></div>
  <div id="div3"></div>
  <div id="div4"></div>
  <div id="div5"></div>
  <div id="div6"></div>
  <div id="div7"></div>
  <div id="div8"></div>
  <div id="div9"></div>
  <div id="div10"></div>
  <div id="div11"></div>
  <div id="div12"></div>
  <div id="div13"></div>
  <div id="div14"></div>
  <div id="div15"></div>
  <div id="div16"></div>
  <div id="div17"></div>
  <div id="div18"></div>
  <div id="div19"></div>
  <div id="div20"></div>
  <div id="div21"></div>
  <div id="div22"></div>
  <div id="div23"></div>
  <div id="div24"></div>
  <div id="div25"></div>
</body>
</html>

​
