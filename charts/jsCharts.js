class jsCharts {
  constructor(){}
  printChart(domComponent,json,style){
    domComponent.empty();
    var id = domComponent.attr('id');
    Highcharts.chart(id,jQuery.parseJSON(json));
    Highcharts.setOptions(jQuery.parseJSON(style));
    objResources.showWaiter(2)
  }

  getPostChartResp(iSwitch,resp){
    switch (iSwitch) {
      case 1:
        this.printChart($('#divChart1'),resp,null);
        break;
      case 2:
        var objJson1=resp.split('|')[0];
        var objJson2=resp.split('|')[1];
        this.printChart($('#divChart2'),objJson1,objJson2);
        break;
      case 3:
        var objJson1=resp.split('|')[0];
        var objJson2=resp.split('|')[1];
        this.printChart($('#divChart3'),objJson1,objJson2);
        break;
      case 4:
        var objJson1=resp.split('|')[0];
        var objJson2=resp.split('|')[1];
        this.printChart($('#divChart4'),objJson1,objJson2);
        break;
      case 5:
        var objJson1=resp.split('|')[0];
        var objJson2=resp.split('|')[1];
        this.printChart($('#divTeChart1'),objJson1,objJson2);
        break;
      default:
        break;
    }
  }

  getPostChart(iSwitch){
    var objJson={};
    objJson.L1=document.getElementById('lblStrUs').innerHTML;
    switch (iSwitch) {
      case 1:
        this.sendPostRequestCharts('bsnsChart.php',1,JSON.stringify(objJson),1,this);
        break;
      case 2:
        this.sendPostRequestCharts('bsnsChart.php',2,JSON.stringify(objJson),2,this);
        break;
      case 3:
        this.sendPostRequestCharts('bsnsChart.php',3,JSON.stringify(objJson),3,this);
        break;
      case 4:
        this.sendPostRequestCharts('bsnsChart.php',4,JSON.stringify(objJson),4,this);
        break;
      case 5:
        this.sendPostRequestCharts('bsnsChart.php',4,JSON.stringify(objJson),5,this);
        break;
      default:
        break;
    }
  }

  sendPostRequestCharts(fileServer,iCase,argJson,iSwitch,objChart){
    objResources.showWaiter(1);
    var separator='&';
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
      if(this.readyState==4 && this.status==200){
        objChart.resultFromPostSwitchCharts(iSwitch,this.responseText);
      }
    }
    xhttp.open('POST','../bsns/'+fileServer,true);
    xhttp.setRequestHeader('Content-type','application/x-www-form-urlencoded');
    xhttp.send('c='+iCase+separator+'arg='+argJson);
  }

  resultFromPostSwitchCharts(iSwitch,response){
    switch (iSwitch) {
      case 1:
        this.getPostChartResp(1,response);
        break;
      case 2:
        this.getPostChartResp(2,response);
        break;
      case 3:
        this.getPostChartResp(3,response);
        break;
      case 4:
        this.getPostChartResp(4,response);
        break;
      case 5:
        this.getPostChartResp(5,response);
        break;
      default:
        alert('No hay Información #JSwitchCharts');
        break;
    }
  }
}
