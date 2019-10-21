<!DOCTYPE html>
<html>
<body>
<script src="../charts/jquery.js"></script>
<script src="../charts/highcharts.js"></script>
<script src="../charts/highcharts3d.js"></script>
<script src="../charts/highchartsmore.js"></script>
<script src="../charts/highchartsgauge.js"></script>
<script src="../charts/highchartswordcloud.js"></script>
<script src="../charts/jsChartsTest.js"></script>
  <script>
    var objCharts = null;
    $(document).ready(function(){
      objCharts = new jsCharts();
      objCharts.printBubble($('#div1'));
      objCharts.printAreaspline($('#div2'));
      objCharts.printPie3dFull($('#div3'));
      objCharts.printPieFull($('#div4'));
      objCharts.printColumnStacked($('#div5'));
      objCharts.printLine($('#div6'));
      objCharts.printArea($('#div7'));
      objCharts.printBar($('#div8'));
      objCharts.printBarStacked($('#div9'));
      objCharts.printColumn3d($('#div10'));
      objCharts.printCombine($('#div11'));
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
      objCharts.printWordCloud($('#div25'));
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
