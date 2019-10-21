<?php
session_start();
//https://www.highcharts.com/docs/chart-design-and-style/design-and-style
include('DataSystem.php');
class InfoChart extends DataSystem
{
    private $bConnection;
    private function OpenDB()
    {
        $bConnection = new mysqli(DataSystem::dbHost, DataSystem::dbUser, DataSystem::dbPwd, DataSystem::dbName);
    		if ($bConnection->connect_errno)
    		{
    			//echo 'NOK: (Error: '.$mysqli->connect_errno.') '.$mysqli->connect_error;
    			$this->bConnection = false;
    		}
    		else
    		{
    			//echo 'OK '.$mysqli->host_info.'\n';
    			$this->bConnection = $bConnection;
    		}
    }

    private function CloseDB()
    {
        mysqli_close($this->bConnection);
    }

    private function GetQueryUSP($i, $arg1 = 'N/A')
  	{
  		return "call uspTeAsChMx(".$i.",'".$arg1."');";
  	}


    public function setHighChartsFontFamily(){
      $objChartStyle->fontFamily='myFont1';
      $objChart->style=$objChartStyle;
      $myJSON->chart=$objChart;
      return json_encode($myJSON);
    }

    private function setHighCharstStyleCharts(){
      $myObjChart->spacingBottom=10;
      $myObjChart->spacingTop=10;
      $myObjChart->spacingLeft=10;
      $myObjChart->spacingRight=10;
      $myObjChart->width=null;
      $myObjChart->height=null;
    }

    public function getChart1($st)//bsnsCharts
  	{
      $arrElement1=array();
      $arrElement2=array();
      $arrElement3=array();
      $arrXaxis=array();
      $arrPie1=null;
      $arrPie2=null;

      $arrElement1=array(1, 2, 1, 3, 4, 1, 3, 4);
      $arrElement2=array(8, 8, 8, 8, 8, 8, 8, 8);
      $arrElement3=array(3, 2.67, 3, 6.33, 3.33, 3, 6.33, 3.33);
      $arrXaxis=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5', 'Profesor 6', 'Profesor 7', 'Profesor 8');
      $arrPie1=45;
      $arrPie2=55;

      /*$this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(1, $st));
  		while($r = mysqli_fetch_assoc($res)) {
        $arrElement1[] = intval($r['L3']);
        $arrElement3[] = floatval($r['L2']);
        $arrElement2[] = intval($r['L4']);
        $arrXaxis[] = $r['L1'];
  		}
  		$this->CloseDB();

      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(2, $st));
  		while($r = mysqli_fetch_assoc($res)) {
        $arrPie1 = floatval($r['L5']);
        $arrPie2 = floatval($r['L6']);
  		}
  		$this->CloseDB();*/

      $objxAxis->categories=$arrXaxis;
      $objSeriesElemnt1->data=$arrElement1;
      $objSeriesElemnt2->data=$arrElement2;
      $objSeriesElemnt3->data=$arrElement3;
      $objSeriesElemnt4Half1->y=$arrPie1;
      $objSeriesElemnt4Half2->y=$arrPie2;
      $objSeriesElemnt1->type='column';
      $objSeriesElemnt1->name='Competencias evaluadas';
      $objSeriesElemnt1->color='#009688';
      $objSeriesElemnt2->type='column';
      $objSeriesElemnt2->name='Competencias a evaluar [8]';
      $objSeriesElemnt2->color='#004D40';
      $objSeriesElemnt3->type='spline';
      $objSeriesElemnt3->name='Evaluación promedio [5 a 10]';
      $objSeriesElemnt3->color='#FF9800';
      $objSeriesElemnt3Marker->lineWidth=2;
      $objSeriesElemnt3Marker->lineColor='#d32f2f';
      $objSeriesElemnt3Marker->fillColor='#d32f2f';
      $objSeriesElemnt3->marker=$objSeriesElemnt3Marker;
      $objSeriesElemnt4->type='pie';
      $objSeriesElemnt4->name='Completado';
      $objSeriesElemnt4->center=array(100,80);
      $objSeriesElemnt4->size=80;
      $objSeriesElemnt4->showInLegend=false;
      $objSeriesElemnt4Half1->name='Avance';
      $objSeriesElemnt4Half1->color='#5C6BC0';
      $objSeriesElemnt4Half2->name='Total';
      $objSeriesElemnt4Half2->color='#303F9F';
      $objSeriesElemnt4Label->enabled=false;
      $objSeriesElemnt4->dataLabels=$objSeriesElemnt4Label;
      $objSeriesElemnt4->data=array($objSeriesElemnt4Half1,$objSeriesElemnt4Half2);
      $objLabelItemsStyle->left='50px';
      $objLabelItemsStyle->top='18px';
      $objLabelItemsStyle->color='#3949AB';
      $objLabelItemsStyle->font='bold 13px myFont1';
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
      $myJSON = json_encode($myObj);
      return $myJSON;
  	}

    public function getChart2($st)//bsnsCharts
  	{
      $arrPie1=null;
      $arrPie2=null;
      $arrPie1=45;
      $arrPie2=55;
      /*$this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(2, $st));
  		while($r = mysqli_fetch_assoc($res)) {
        $arrPie1 = floatval($r['L5']);
        $arrPie2 = floatval($r['L6']);
  		}
  		$this->CloseDB();*/

      $objChart=$this->setHighCharstStyleCharts();
      $objChart->type='pie';
      $objChartOptions->enabled=true;
      $objChartOptions->alpha=65;
      $objChartOptions->beta=0;
      $objChart->options3d=$objChartOptions;
      $myObj->chart=$objChart;
      $objTitle->text='Avance total de la Evaluación ¿Cuál es el avance de la evaluación?';
      $myObj->title=$objTitle;
      $objTooltip->pointFormat='{series.name}:{point.percentage:.1f}%';
      $myObj->tooltip=$objTooltip;
      $objPlotOptionsPie->allowPointSelect=true;
      $objPlotOptionsPie->depth=25;
      $objPlotOptionsPie->colors=array('#039BE5','#0D47A1');
      $objPlotOptionsPieLabels->enabled=true;
      $objPlotOptionsPieLabels->format='{point.name}';
      $objPlotOptionsPie->dataLabels=$objPlotOptionsPieLabels;
      $objPlotOptions->pie=$objPlotOptionsPie;
      $myObj->plotOptions=$objPlotOptions;
      $objSeriesArray->name='Evaluación';
      $objSeriesData1=array('Evaluación actual', $arrPie1);
      $objSeriesData2=array('Evaluación total', $arrPie2);
      $objSeriesData=array($objSeriesData1,$objSeriesData2);
      $objSeriesArray->data=$objSeriesData;
      $objSeriesArray->showInLegend=true;
      $objSeries=array($objSeriesArray);
      $myObj->series=$objSeries;
      $myJSON = json_encode($myObj);
      return $myJSON;
    }

    public function getChart3($st)//bsnsCharts
  	{
      $arrElement1=array();
      $arrElement2=array();
      $arrElement3=array();
      $arrXaxis=array();

      $arrElement1=array(1, 2, 1, 3, 4, 1, 3, 4);
      $arrElement2=array(8, 8, 8, 8, 8, 8, 8, 8);
      $arrElement3=array(3, 2.67, 3, 6.33, 3.33, 3, 6.33, 3.33);
      $arrXaxis=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5', 'Profesor 6', 'Profesor 7', 'Profesor 8');

      /*$this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(1, $st));
  		while($r = mysqli_fetch_assoc($res)) {
        $arrElement1[] = intval($r['L3']);
        $arrElement3[] = intval($r['L4']) - intval($r['L3']);
        $arrElement2[] = intval($r['L4']);
        $arrXaxis[] = $r['L1'];
  		$this->CloseDB();*/
      $objChart=$this->setHighCharstStyleCharts();
      $objChart->type='column';
      $myObj->chart=$objChart;
      $objTitle->text='Evaluación de profesores ¿Cuanto avance se ha hecho?';
      $myObj->title=$objTitle;
      $objxAxis->categories=$arrXaxis;
      $objyAxis->min=0;
      $objyAxisTitle->text='Total de avance de Evaluación';
      $objyAxis->title=$objyAxisTitle;
      $myObj->xAxis=$objxAxis;
      $myObj->yAxis=$objyAxis;
      $objTooltip->headerFormat='<b>{point.x}</b><br/>';
      $objTooltip->pointFormat='{series.name}: {point.y}<br/>Total: {point.stackTotal}';
      $myObj->tootltip=$objTooltip;
      $objPlotOptionsColumn->stacking='normal';
      $objPlotOptionsColumndataLabels->enabled=true;
      $objPlotOptionsColumndataLabels->color='#4A148C';
      $objPlotOptionsColumn->dataLabels=$objPlotOptionsColumndataLabels;
      $objPlotOptions->column=$objPlotOptionsColumn;
      $myObj->plotOptions=$objPlotOptions;
      $objSeries1->name='Competencias evaluadas';
      $objSeries1->data=$arrElement1;
      $objSeries1->color='#B39DDB';
      $objSeries2->name='Competencias por evaluar';
      $objSeries2->data=$arrElement3;
      $objSeries2->color='#673AB7';
      $myObj->series=array($objSeries1,$objSeries2);
      $myJSON = json_encode($myObj);
      return $myJSON;
    }

    public function getChart4($st){
      $arrElement1=array();
      $arrXaxis=array();
      $arrElement1=array(3, 2.67, 3, 6.33, 3.33, 3, 6.33, 3.33);
      $arrXaxis=array('Profesor 1', 'Profesor 2', 'Profesor 3', 'Profesor 4', 'Profesor 5', 'Profesor 6', 'Profesor 7', 'Profesor 8');
      /*$this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(1, $st));
  		while($r = mysqli_fetch_assoc($res)) {
        $arrElement1[] = floatval($r['L2']);
        $arrXaxis[] = $r['L1'];
  		}
  		$this->CloseDB();*/
      $objChart=$this->setHighCharstStyleCharts();
      $objChart->type='spline';
      $myObj->chart=$objChart;
      $objTitle->text='Promedio de las competencias por profesor ¿Cuál es el promedio de los profesores?';
      $myObj->title=$objTitle;
      $objyAxisTitle->text='Promedio';
      $objyAxis->max=10;
      $objyAxis->min=5;
      $objyAxis->title=$objyAxisTitle;
      $myObj->yAxis=$objyAxis;
      $objxAxis->categories=$arrXaxis;
      $myObj->xAxis=$objxAxis;
      $objSeries->name='Promedio de cada profesor';
      $objSeries->data=$arrElement1;
      $myObj->series=array($objSeries);
      $myJSON = json_encode($myObj);
      return $myJSON;
    }
}
?>
