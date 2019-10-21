class jsResources{
  constructor(){}

  filterHTML(id, sel, filter) {
    var a, b, c, i, ii, iii, hit;
    a = this.getElements(id);
    for (i = 0; i < a.length; i++) {
      b = a[i].querySelectorAll(sel);
      for (ii = 0; ii < b.length; ii++) {
        hit = 0;
        if (b[ii].innerText.toUpperCase().indexOf(filter.toUpperCase()) > -1) {
          hit = 1;
        }
        c = b[ii].getElementsByTagName("*");
          for (iii = 0; iii < c.length; iii++) {
            if (c[iii].innerText.toUpperCase().indexOf(filter.toUpperCase()) > -1) {
              hit = 1;
            }
          }
          if (hit == 1) {
            b[ii].style.display = "";
          } else {
            b[ii].style.display = "none";
          }
        }
      }
    }

    getElements(id) {
      if (typeof id == "object") {
        return [id];
      } else {
        return document.querySelectorAll(id);
      }
    };

  menuDrop(iSwitch) {
    var x = null;
    switch (iSwitch) {
      case 1:
        x = document.getElementById('menu-drop');
        break;
      case 2:
        x = document.getElementById('ulAs');
        break;
      case 3:
        x = document.getElementById('ulQuPrSk');
        break;
      case 4:
        x = document.getElementById('ulQuPrSkRemove');
        break;
      case 5:
        x = document.getElementById('ulPrSkRemove');
        break;
      default:
        break;
    }

    if (x.className.indexOf("dees-show") == -1) {
      x.className += " dees-show";
    } else {
      x.className = x.className.replace(" dees-show", "");
    }
  }

  setTextP(menuItem){
    var pText=null;
    var classAdd=null;
    var classRemove1=null;
    var classRemove2=null;
    var btnForgotPwd = document.getElementById('btnForgotPwd');
    var divPwd = document.getElementById('divPwd');
    var txtProfile = document.getElementById('txtProfile');
    var btnSubmit = document.getElementById('btnSubmit');
    var pProfileText = document.getElementById('pProfileText');
    switch (menuItem) {
      case 1:
        pText='Panel del /a Admnistrador /a';
        classAdd='dees-color1';
        classRemove1='dees-color2';
        classRemove2='dees-color3';
        btnForgotPwd.classList.remove('dees-show')
        btnForgotPwd.classList.add('dees-hide');
        divPwd.classList.remove('dees-hide')
        divPwd.classList.add('dees-show')
        txtProfile.value=6;
        break;
      case 2:
        pText='Panel del /a Profesor /a';
        classAdd='dees-color2';
        classRemove1='dees-color1';
        classRemove2='dees-color3';
        btnForgotPwd.classList.remove('dees-hide')
        btnForgotPwd.classList.add('dees-show');
        divPwd.classList.remove('dees-hide')
        divPwd.classList.add('dees-show')
        txtProfile.value=5;
        break;
      case 3:
        pText='Evalúa a tu profesor /a';
        classAdd='dees-color3';
        classRemove1='dees-color1';
        classRemove2='dees-color2';
        btnForgotPwd.classList.remove('dees-hide')
        btnForgotPwd.classList.add('dees-show');
        divPwd.classList.remove('dees-hide')
        divPwd.classList.add('dees-show')
        txtProfile.value=4;
        break;
      default:
        break;
    }
    this.setMenuItemSelect(menuItem);
    btnSubmit.classList.remove(classRemove1,classRemove2);
    btnSubmit.classList.add(classAdd);
    pProfileText.innerHTML=pText
  }

  setMenuItemSelect(menuItem){
    var iIndex=0;
    for(iIndex=1;iIndex<=3;iIndex++){
      if(iIndex==menuItem)
      {
        document.getElementById('aMenuItem'+iIndex).classList.remove('dees-white');
        document.getElementById('aMenuItem'+iIndex).classList.add('dees-color'+iIndex+'-light');
      }
      else
      {
        document.getElementById('aMenuItem'+iIndex).classList.remove('dees-color'+iIndex+'-light');
        document.getElementById('aMenuItem'+iIndex).classList.add('dees-white');
      }
    }
  }

  setMenuIconSelected(menuIconSelected,txtContent){
    var x = document.getElementsByName("menuIcon");
    var iIndex=0;
    var iListLenght=x.length;
    for(iIndex=0;iIndex<iListLenght;iIndex++){
      x[iIndex].classList.remove('dees-color3');
      x[iIndex].classList.add('dees-light-gray');
      x[iIndex].classList.add('dees-text-color3');
    }
    x[menuIconSelected].classList.remove('dees-light-gray');
    x[menuIconSelected].classList.remove('dees-text-color3');
    x[menuIconSelected].classList.add('dees-color3');
    var lblContent = document.getElementById('lblContent');
    lblContent.innerHTML=txtContent;
    this.setContentMenu(menuIconSelected);
  }

  setContentMenu(menuBox){
    var iIndex = null;
    for(iIndex=1;iIndex<=6;iIndex++){
      document.getElementById('divAdminConsoleMenu'+iIndex).classList.remove('dees-show');
      document.getElementById('divAdminConsoleMenu'+iIndex).classList.add('dees-hide');
    }
    for(iIndex=1;iIndex<=3;iIndex++){
      document.getElementById('divIconAdminConsoleMenu'+iIndex).classList.remove('dees-show');
      document.getElementById('divIconAdminConsoleMenu'+iIndex).classList.add('dees-hide');
    }
    document.getElementById('divIconAdminConsoleMenu'+(menuBox+1)).classList.remove('dees-hide');
    document.getElementById('divIconAdminConsoleMenu'+(menuBox+1)).classList.add('dees-show');
  }

  openMenu(){
    document.getElementById("sidebarMenu").style.display = "block";
    document.getElementById("overlayMenu").style.display = "block";
  }

  closeMenu(){
    document.getElementById("sidebarMenu").style.display = "none";
    document.getElementById("overlayMenu").style.display = "none";
  }

  sendPostRequestLogout(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
      if(this.readyState==4 && this.status==200){
        window.location.href='http://bsnet.com.mx/evaluacion/';
      }
    }
    xhttp.open('POST','../bsns/bsnsLogout.php',true);
    xhttp.send();
  }

  setDivMenuItems(iProfile){

    var domComponent = document.getElementById('divMenuItems');
    var lblContent = document.getElementById('lblContent');
    var items=[];
    var iIndex=0;
    var arrRefs = this.getRefsByProfile(iProfile);
    domComponent.innerHTML=null;
    var ter = null;
    for(iIndex=0;iIndex<arrRefs[2];iIndex++){
      items.push('<a name="menuIcon" class="dees-bar-item dees-button dees-hover-color3-light'+this.getIfFirst(iIndex)+'" title="'+arrRefs[1][iIndex]+'" onclick="objResources.setMenuIconSelected('+iIndex+',\''+arrRefs[1][iIndex]+'\');">');
      items.push('<label class="dees-hide-large dees-left">'+arrRefs[3][iIndex]+'</label>');
      items.push('<i class="'+arrRefs[0][iIndex]+' dees-medium dees-hide-small dees-hide-medium"></i>');
      items.push('<i class="'+arrRefs[0][iIndex]+' dees-medium dees-hide-large dees-right"></i>');
      items.push('</a>');
    }
    lblContent.innerHTML=arrRefs[4];
    domComponent.innerHTML += items.join('');
  }

  getIfFirst(iIndex){
    var ifY='';
    if(iIndex==0){
      ifY=' dees-color3';
    }
    return ifY;
  }

  getRefsByProfile(iProfile){
    var arrIcons=null;
    var arrTitles=null;
    var iCount=0;
    var arrContent=null;
    var initLblContetn=null;
    switch (iProfile) {
      case 4://student
        initLblContetn='Evaluación de Profesores /as';
        iCount=1;
        arrIcons=['fas fa-calendar-alt'];
        arrTitles=['Evaluación de Profesores /as'];
        arrContent=['Evaluación'];
        this.getTeachersToEvaluate();
        this.getQuPrSkAsQuery();
        break;
      case 5://teacher
        initLblContetn='Reporte de evaluación';
        iCount=2;
        arrIcons=['fas fa-calendar-alt','fas fa-copy'];
        arrTitles=['Reporte de evaluación','Impresión de reporte'];
        arrContent=['Reporte','Impresión'];
        objCharts.getPostChart(5);
        break;
      case 6://admin
        initLblContetn='Consola de admnistrador /a';
        iCount=3;
        arrIcons=['fas fa-desktop','fas fa-project-diagram','fas fa-tags'];
        arrTitles=['Consola de admnistrador /a','Estadísticas','Reportes de evaluación'];
        arrContent=['Consola','Estadísticas','Reportes'];
        this.getCatGrQuery();
        this.getQuestions();
        this.getAssessmentQuery();
        this.getProdQuPrSkAsQuery();
        this.getAllQuPrSkAs();
        this.getPrSkQuery();
        this.getCatAsAliveQuery();
        this.getCatUsPrStQuery();
        this.getCatUsPrTeQuery();
        objCharts.getPostChart(1);
        objCharts.getPostChart(2);
        objCharts.getPostChart(3);
        objCharts.getPostChart(4);
        break;
      default:
        break;
    }
    var arr=[arrIcons,arrTitles,iCount,arrContent,initLblContetn];
    return arr;
  }

  getCatAsAliveQuery(){
    this.sendPostRequest('bsnsHome.php',17,null,17,this);
  }

  getCatAsAliveQueryResp(resp){
    var domComponent = document.getElementById('divCatAsAliveQuery');
    if(this.setDOMList(domComponent,11,resp)){
      this.showWaiter(2);
    }
  }

  getTeachersToEvaluate(){
    var objJson={};
    objJson.L1=document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',22,JSON.stringify(objJson),1,this);
  }

  setTeachersToEvaluate(strJson){
    var domComponent = document.getElementById('divTeQu');
    if(this.setDOMList(domComponent,1,strJson)){
      this.showWaiter(2);
    }
  }

  setDOMList(domComponent,iCase,strJson){
    var items = [];
    domComponent.innerHTML=null;
    var objJson = JSON.parse(strJson);
    var iIndex=0;
    let objJsonLenght=objJson.length;
    var classStriped=null;
    switch (iCase) {
      case 1:
        items.push('<ul id="ulTeachers" class="dees-ul">');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<li>');

          if(objJson[iIndex].L6==1){
            items.push('<input type="button" value="Descartado" class="dees-button dees-pink dees-right buttonQuTeWidth" title="Este profesor esta descartado para la evaluación" disabled />');
            items.push('<label class="container-cb dees-right checkBoxTop containerCursorNotAllowed" title="Si tu profesor no coincide con tu matrícula, marca esta opción y avisa a control escolar">');
            items.push('<input type="checkbox" checked disabled />');
            items.push('<span class="checkmark"></span>');
            items.push('</label>');
            items.push('<label><i class="fas fa-chalkboard-teacher dees-text-gray"></i> '+objJson[iIndex].L2+'</label><br><label class="dees-text-gray">'+objJson[iIndex].L3+'</label>');
          }
          else if(objJson[iIndex].L7==1){
            items.push('<input type="button" value="Evaluado" class="dees-button dees-teal dees-right buttonQuTeWidth" title="Este profesor ha sido evaluado" disabled />');
            items.push('<label class="container-cb dees-right checkBoxTop containerCursorNotAllowed" title="Si tu profesor no coincide con tu matrícula, marca esta opción y avisa a control escolar">');
            items.push('<input type="checkbox" disabled />');
            items.push('<span class="checkmark"></span>');
            items.push('</label>');
            items.push('<label><i class="fas fa-chalkboard-teacher dees-text-gray"></i> '+objJson[iIndex].L2+'</label><br><label class="dees-text-gray">'+objJson[iIndex].L3+'</label>');
          }
          else{
            items.push('<input id="btn'+objJson[iIndex].L4+'" type="button" value="Evalúar" class="dees-button dees-color3 dees-right buttonQuTeWidth" onclick="objResources.setTeachersQuestions(\''+objJson[iIndex].L2+'\','+objJson[iIndex].L4+');" title="Evalúa a tu profesor de asignatura" />');
            items.push('<label id="lblCbNumTe'+objJson[iIndex].L4+'" class="container-cb dees-right checkBoxTop containerCursorPointer" title="Si tu profesor no coincide con tu matrícula, marca esta opción y avisa a control escolar">');
            items.push('<input id="cb'+objJson[iIndex].L4+'" type="checkbox" onchange="objResources.setModalTeacherBox(this.id,'+objJson[iIndex].L4+',\''+objJson[iIndex].L5+'\')" />');
            items.push('<span class="checkmark"></span>');
            items.push('</label>');
            items.push('<label><i class="fas fa-chalkboard-teacher dees-text-gray"></i> '+objJson[iIndex].L2+'</label><br><label class="dees-text-gray">'+objJson[iIndex].L3+'</label><label id="lblTeSu'+objJson[iIndex].L4+'" class="dees-hide">'+objJson[iIndex].L5+'</label>');
          }
          items.push('</li>');
        }
        items.push('</ul>');
        break;
      case 2:
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          if(iIndex%2)
          {
            classStriped='dees-color4-light';
          }
          else {
            classStriped='dees-light-gray';
          }
          items.push('<li class="dees-padding dees-display-container '+classStriped+'"><label>'+objJson[iIndex].L2+'</label><input name="UsTeQu" type="number" class="dees-input dees-display-right dees-border-0 inputBoxSize dees-round-small" max="10" min="5" required /></li>');
        }
        items.push('<button class="dees-button dees-color3 dees-margin dees-right">Guardar</button>');
        break;
      case 3:
        items.push('<a onclick="objResources.menuDrop(2);" class="dees-button dees-deep-purple dees-block">Preguntas <i class="fas fa-angle-down"></i></a>');
        items.push('<ul id="ulAs" class="dees-ul dees-border dees-hide dees-white dees-text-color3 dees-hoverable">');
        items.push('<li class="dees-padding"><strong>Selecciona todas las preguntas</strong>');
        items.push('<label class="container-cb dees-right checkBoxTopUp" title="Presiona aquí para seleccionar todas las preguntas">');
        items.push('<input id="cb" type="checkbox" onchange="objResources.setAllQuSelected(this.checked,'+objJsonLenght+');" />');
        items.push('<span class="checkmark"></span>');
        items.push('</label>');
        items.push('</li>');
        if(objJsonLenght==0){
          items.push('<li class="dees-padding" style="cursor: not-allowed;" disabled>No hay elementos en la lista</li>');
        }
        else
        {
          for(iIndex=0;iIndex<objJsonLenght;iIndex++){
            items.push('<li id="lblQuList'+(iIndex)+'" data-num="'+objJson[iIndex].L1+'" class="dees-padding" onclick="objResources.getListDataAttribute(this.id,1,'+objJsonLenght+');" style="cursor: pointer;">'+objJson[iIndex].L2+'</li>');
          }
        }
        items.push('</ul>');
        break;
      case 4:
        items.push('<a onclick="objResources.menuDrop(3);" class="dees-button dees-indigo dees-block">Evaluaciones <i class="fas fa-angle-down"></i></a>');
        items.push('<ul id="ulQuPrSk" class="dees-ul dees-border dees-hide dees-white dees-text-color3 dees-hoverable">');
        if(objJsonLenght==0){
          items.push('<li class="dees-padding" style="cursor: not-allowed;" disabled>No hay elementos en la lista</li>');
        }
        else
        {
          for(iIndex=0;iIndex<objJsonLenght;iIndex++){
            items.push('<li id="lblAsList'+(iIndex)+'" data-num="'+objJson[iIndex].L1+'" class="dees-padding" onclick="objResources.getListDataAttribute(this.id,2,'+objJsonLenght+');" style="cursor: pointer;">'+objJson[iIndex].L3+' - '+objJson[iIndex].L2+'</li>');
          }
        }
        items.push('</ul>');
        break;
      case 5:
        items.push('<table class="dees-table-all dees-hoverable">');
        items.push('<thead>');
        items.push('<tr class="dees-color3-light">');
        items.push('<th>Ciclo escolar</th>');
        items.push('<th>Nombre de la evaluación</th>');
        items.push('<th class="dees-center">Preguntas incluidas</th>');
        items.push('<th class="dees-center">Enviar a publicación</th>');
        items.push('</tr>');
        items.push('</thead>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<tr>');
          items.push('<td>'+objJson[iIndex].L3+'</td>');
          items.push('<td>'+objJson[iIndex].L1+'</td>');
          items.push('<td class="dees-center">'+objJson[iIndex].L4+'</td>');
          items.push('<td class="dees-center"><input type="button" class="dees-button dees-color3" value="Publicar" onclick="objResources.setQuPrSkAsPublish(\''+objJson[iIndex].L2+'\');" /></td>');
          items.push('</tr>');
        }
        items.push('</table>');
        break;
      case 6:
        var iQuCount=null;
        items.push('<table class="dees-table-all dees-hoverable">');
        items.push('<thead>');
        items.push('<tr class="dees-color3-light">');
        items.push('<th>Ciclo escolar</th>');
        items.push('<th>Nombre de la evaluación</th>');
        items.push('<th class="dees-center">Preguntas incluidas</th>');
        items.push('<th class="dees-center">Borrar evaluación</th>');
        items.push('</tr>');
        items.push('</thead>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<tr>');
          items.push('<td>'+objJson[iIndex].L3+'</td>');
          items.push('<td>'+objJson[iIndex].L1+'</td>');
          iQuCount=(objJson[iIndex].L4>0)?objJson[iIndex].L4:'No hay peguntas';
          items.push('<td class="dees-center">'+iQuCount+'</td>');
          items.push('<td class="dees-center"><input type="button" class="dees-button dees-color3" value="Eliminar" onclick="objResources.setDismissProdQuPrSkAs(\''+objJson[iIndex].L2+'\','+objJson[iIndex].L5+');" /></td>');
          items.push('</tr>');
        }
        items.push('</table>');
        break;
      case 7:
        var iIndex2=null;
        items.push('<label id="lblCountQu" class="dees-hide">'+objJsonLenght+'</label>');
        items.push('<ul class="dees-ul dees-border dees-white dees-text-color3">');
        items.push('<label id="lblNumAs" class="dees-hide">'+objJson[0].L3+'</label>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          if(iIndex%2)
          {
            classStriped='dees-color11';
          }
          else {
            classStriped='dees-white';
          }
          items.push('<li class="dees-padding-small dees-bar '+classStriped+'"><label class="dees-bar-item">'+objJson[iIndex].L2+'</label>');

          items.push('<select id="selectStars'+iIndex+'" class="dees-select dees-right dees-light-gray dees-bar-item" name="stars" required>');
          items.push('<option value="" disabled selected>Calificación</option>');
          for(iIndex2=5;iIndex2<=10;iIndex2++){
            items.push('<option value="'+iIndex2+'">'+iIndex2+'</option>');
          }
          items.push('<option value="'+objJson[iIndex].L1+'" disabled></option>');
          items.push('</select>');
          items.push('</li>');
        }
        items.push('</ul>');
        break;
      case 8:
        items.push('<select id="selectPrSk" class="dees-select dees-color10 dees-text-white" name="option" required>');
        items.push('<option value="" disabled selected>Elige una competencia</option>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<option value="'+objJson[iIndex].L1+'">'+objJson[iIndex].L2+'</option>');
        }
        items.push('</select>');
        break;
      case 9:
        items.push('<a onclick="objResources.menuDrop(4);" class="dees-button dees-indigo dees-block">Preguntas <i class="fas fa-angle-down"></i></a>');
        items.push('<ul id="ulQuPrSkRemove" class="dees-ul dees-hide dees-border dees-white dees-text-color3 dees-hoverable">');
        if(objJsonLenght==0){
          items.push('<li class="dees-padding" style="cursor: not-allowed;" disabled>No hay elementos en la lista</li>');
        }
        else
        {
          for(iIndex=0;iIndex<objJsonLenght;iIndex++){
            items.push('<li class="dees-padding" onclick="objResources.setModalRemoveQuestion(\''+objJson[iIndex].L1+'\');" style="cursor: pointer;">'+objJson[iIndex].L2+'</li>');
          }
        }
        items.push('</ul>');
        break;
      case 10:
        items.push('<a onclick="objResources.menuDrop(5);" class="dees-button dees-color3 dees-block">Competencias <i class="fas fa-angle-down"></i></a>');
        items.push('<ul id="ulPrSkRemove" class="dees-ul dees-hide dees-border dees-white dees-text-color3 dees-hoverable">');
        if(objJsonLenght==0){
          items.push('<li class="dees-padding" style="cursor: not-allowed;" disabled>No hay elementos en la lista</li>');
        }
        else
        {
          for(iIndex=0;iIndex<objJsonLenght;iIndex++){
            items.push('<li class="dees-padding" onclick="objResources.setModalRemovePrSk(\''+objJson[iIndex].L1+'\')" style="cursor: pointer;">'+objJson[iIndex].L2+'</li>');
          }
        }
        items.push('</ul>');
        break;
      case 11:
        var iQuCount=null;
        var strChecked=null;
        items.push('<table class="dees-table-all dees-hoverable">');
        items.push('<thead>');
        items.push('<tr class="dees-color3-light">');
        items.push('<th>Ciclo escolar</th>');
        items.push('<th>Nombre de la evaluación</th>');
        items.push('<th class="dees-center">Preguntas incluidas</th>');
        items.push('<th class="dees-center">Fecha de publicación</th>');
        items.push('<th class="dees-center">Activo</th>');
        items.push('<th class="dees-center">Detener evaluación</th>');
        items.push('</tr>');
        items.push('</thead>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<tr>');
          items.push('<td>'+objJson[iIndex].L3+'</td>');
          items.push('<td>'+objJson[iIndex].L2+'</td>');
          iQuCount=(objJson[iIndex].L5>0)?objJson[iIndex].L5:'No hay peguntas';
          items.push('<td class="dees-center">'+iQuCount+'</td>');
          items.push('<td class="dees-center">'+objJson[iIndex].L4+'</td>');
          strChecked=(objJson[iIndex].L6==11)?'checked':'';
          if(objJson[iIndex].L6==11){
            items.push('<label id="rbCheck" class="dees-hide">rb'+iIndex+'</label>');
          }
          items.push('<td><label class="container-rb containerCursorPointer" title="Esta evaluación será mostrada a los estudiantes"><input id="rb'+iIndex+'" type="radio" '+strChecked+' name="radio" onchange="objResources.setPublishAs(\''+objJson[iIndex].L1+'\');"><span class="checkmark-rb"></span></label></td>');
          items.push('<td class="dees-center"><input type="button" class="dees-button dees-color3" value="Detener" onclick="objResources.setRemoveCatAs(\''+objJson[iIndex].L1+'\');" /></td>');
          items.push('</tr>');
        }
        items.push('</table>');
        break;
        case 12:
          items.push('<input oninput="objResources.filterHTML(\'#tblCatGr\', \'.item\', this.value)" class="dees-input" placeholder="Buscar ..."></p>');
          items.push('<table id="tblCatGr" class="dees-table-all dees-hoverable">');
          items.push('<thead>');
          items.push('<tr class="dees-color3-light">');
          items.push('<th class="dees-center">Profesor /a</th>');
          items.push('<th class="dees-center">Estudiante</th>');
          items.push('<th class="dees-center">Materia</th>');
          items.push('<th class="dees-center">Carrera</th>');
          items.push('</tr>');
          items.push('</thead>');
          for(iIndex=0;iIndex<objJsonLenght;iIndex++){
            items.push('<tr class="item">');
            items.push('<td>'+objJson[iIndex].L1+'</td>');
            items.push('<td>'+objJson[iIndex].L2+'</td>');
            items.push('<td>'+objJson[iIndex].L3+'</td>');
            items.push('<td>'+objJson[iIndex].L4+'</td>');
            items.push('</tr>');
          }
          items.push('</table>');
          break;
      case 13:
        items.push('<input oninput="objResources.filterHTML(\'#tblCatUsSt\', \'.item\', this.value)" class="dees-input" placeholder="Buscar ..."></p>');
        items.push('<table id="tblCatUsSt" class="dees-table-all dees-hoverable">');
        items.push('<thead>');
        items.push('<tr class="dees-color3-light">');
        items.push('<th>Número</th>');
        items.push('<th class="dees-center">Nombre</th>');
        items.push('<th class="dees-center">Acceso</th>');
        items.push('</tr>');
        items.push('</thead>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<tr class="item">');
          items.push('<td>'+objJson[iIndex].L1+'</td>');
          items.push('<td>'+objJson[iIndex].L2+'</td>');
          items.push('<td>'+objJson[iIndex].L3+'</td>');
          items.push('</tr>');
        }
        items.push('</table>');
        break;
      case 14:
        items.push('<input oninput="objResources.filterHTML(\'#tblCatUsTe\', \'.item\', this.value)" class="dees-input" placeholder="Buscar ..."></p>');
        items.push('<table id="tblCatUsTe" class="dees-table-all dees-hoverable">');
        items.push('<thead>');
        items.push('<tr class="dees-color3-light">');
        items.push('<th>Número</th>');
        items.push('<th class="dees-center">Nombre</th>');
        items.push('<th class="dees-center">Acceso</th>');
        items.push('</tr>');
        items.push('</thead>');
        for(iIndex=0;iIndex<objJsonLenght;iIndex++){
          items.push('<tr class="item">');
          items.push('<td>'+objJson[iIndex].L1+'</td>');
          items.push('<td>'+objJson[iIndex].L2+'</td>');
          items.push('<td>'+objJson[iIndex].L3+'</td>');
          items.push('</tr>');
        }
        items.push('</table>');
        break;
      default:
        break;
    }
    domComponent.innerHTML += items.join('');
    return true;
  }

  setPublishAs(numAs){
    var lblAliveAs=document.getElementById('lblAliveAs');
    lblAliveAs.innerHTML=numAs;
    document.getElementById('modalAliveAs').style.display='block';
  }

  unsetModalAliveAs(){
    document.getElementById('modalAliveAs').style.display='none';
    var rbIndex = document.getElementById('rbCheck').innerHTML;
    var rbElement = document.getElementById(rbIndex).checked=true;;
  }

  unsetModalRemoveAliveAs(){
    document.getElementById('modalRemoveAliveAs').style.display='none';
  }

  setPublishAsQuery(){
    var lblAliveAs=document.getElementById('lblAliveAs').innerHTML;
    var objJson = {};
    objJson.L1=lblAliveAs;
    objJson.L2=document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',19,JSON.stringify(objJson),19,this);
  }

  setPublishAsQueryResp(resp){
    document.getElementById('modalAliveAs').style.display='none';
    this.showWaiter(2);
    this.setSuccessMessage(9,resp);
  }

  setRemoveCatAs(numAs){
    var lblRemoveAliveAs=document.getElementById('lblRemoveAliveAs');
    lblRemoveAliveAs.innerHTML=numAs;
    document.getElementById('modalRemoveAliveAs').style.display='block';
  }

  setRemoveCatAsQuery(){
    var lblRemoveAliveAs=document.getElementById('lblRemoveAliveAs').innerHTML;
    var objJson = {};
    objJson.L1=lblRemoveAliveAs;
    objJson.L2=document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',20,JSON.stringify(objJson),20,this);
  }

  setRemoveCatAsQueryResp(resp){
    document.getElementById('modalRemoveAliveAs').style.display='none';
    this.setSuccessMessage(10,resp);
    this.getCatAsAliveQuery();
  }

  setAllQuSelected(checkedBox,iAmountQu){
    var iIndex=null;
    var lblQuListAll=document.getElementById('pQu');
    lblQuListAll.value='';
    if(checkedBox){
      for(iIndex=0;iIndex<iAmountQu;iIndex++){
        document.getElementById('lblQuList'+iIndex).classList.remove('dees-white');
        document.getElementById('lblQuList'+iIndex).classList.remove('dees-text-color3');
        document.getElementById('lblQuList'+iIndex).classList.add('dees-color3');
        document.getElementById('lblQuList'+iIndex).classList.add('dees-hover-color5-light');
        document.getElementById('lblQuList'+iIndex).classList.add('dees-text-white');
      }
      for(iIndex=0;iIndex<iAmountQu;iIndex++){
          lblQuListAll.value+=document.getElementById('lblQuList'+iIndex).getAttribute('data-num')+',';
      }
    }
    else{
      for(iIndex=0;iIndex<iAmountQu;iIndex++){
        lblQuListAll.value='';
        document.getElementById('lblQuList'+iIndex).classList.remove('dees-color3');
        document.getElementById('lblQuList'+iIndex).classList.remove('dees-text-white');
        document.getElementById('lblQuList'+iIndex).classList.add('dees-white');
        document.getElementById('lblQuList'+iIndex).classList.add('dees-text-color3');
      }
    }
  }

  getListDataAttribute(id,iUl,liLength){
    var iIndex=null;
    var liElement = document.getElementById(id);
    var dataAttribute = liElement.getAttribute('data-num');
    var bClassContains = liElement.classList.contains('dees-color3');
    if(iUl==2)
    {
      var pAs = document.getElementById('pAs');
      for(iIndex=0;iIndex<liLength;iIndex++){
        document.getElementById('lblAsList'+iIndex).classList.remove('dees-color3');
        document.getElementById('lblAsList'+iIndex).classList.remove('dees-text-white');
        document.getElementById('lblAsList'+iIndex).classList.add('dees-white');
        document.getElementById('lblAsList'+iIndex).classList.add('dees-text-color3');
      }
      if(!bClassContains){
        pAs.value=dataAttribute;
        this.setClassList(liElement,2);
      }
      else{
        pAs.value='';
        this.setClassList(liElement,1);
      }
    }
    if(iUl==1)
    {
      var pQu = document.getElementById('pQu');
      var arrQu=null;
      if(pQu.value.length>0){
        arrQu = pQu.value.split(',');
      }
      if(bClassContains){
        this.setClassList(liElement,1);
        this.removeArrQuItem(arrQu,dataAttribute);
      }
      else{
        this.setClassList(liElement,2);
        document.getElementById('pQu').value+=dataAttribute+',';
      }
    }
  }

  setRequiredMessage(iSwitch) {
    var msg=null;
    var obj1=null;
    var obj2=null;
    switch (iSwitch) {
      case 1:
        obj1 = document.getElementById('pQu');
        obj2 = document.getElementById('pAs');
        if (!obj1.checkValidity() || !obj2.checkValidity()) {
          msg='Asegurate de elegir una evaluación de la lista y preguntas seleccionadas para poder guadar';
          this.setModalRequidedMessage(msg);
        }
        break;
      case 2:
        obj1 = document.getElementById('txtNewAssessmentYear');
        obj2 = document.getElementById('txtNewAssessment');
        if (!obj1.checkValidity() || !obj2.checkValidity()) {
          msg='Debes de completar la Información que se solicita';
          this.setModalRequidedMessage(msg);
        }
        break;
      case 3:
        obj1 = document.getElementById('txtNewQuestion');
        obj2 = document.getElementById('selectPrSk');
        if (!obj1.checkValidity() || !obj2.checkValidity()) {
          msg='Debes escribir una pregunta y una competencia para poder guardarla';
          this.setModalRequidedMessage(msg);
        }
        break;
      case 4:
        obj1 = document.getElementById('txtNewPrSk');
        if (!obj1.checkValidity()) {
          msg='Debes escribir una competencia para poder guardarla';
          this.setModalRequidedMessage(msg);
        }
        break;
      case 5:
        var iIndex=null;
        var iIndexLength=document.getElementById('lblCountQu').innerHTML;
        for(iIndex=0;iIndex<iIndexLength;iIndex++){
          obj1 = document.getElementById('selectStars'+iIndex);
          if (!obj1.checkValidity()) {
            msg='Tienes que calificar todas las preguntas para evalúar a tu profesor';
            this.setModalRequidedMessage(msg);
            break;
          }
        }
        break;
      default:
        break;
    }
  }

  getPrSkQuery(){
    this.sendPostRequest('bsnsHome.php',13,null,13,this);
  }

  getPrSkQueryResp(resp){
    var domComponent1 = document.getElementById('divPrSk');
    var domComponent2 = document.getElementById('divPrSkRemove');
    this.setDOMList(domComponent1,8,resp);
    if(this.setDOMList(domComponent2,10,resp)){
      this.showWaiter(2);
    }
  }

  setModalRequidedMessage(msg){
    document.getElementById('pWarningRequired').innerHTML=msg;
    document.getElementById('modalWarningRequired').style.display='block';
  }

  setSuccessMessage(iSwitch,resp) {
    var msg=null;
    switch (iSwitch) {
      case 1:
        msg='Se creó la evaluación con preguntas correctamente ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 2:
        msg='Se ha prepadado la evaluación correctamente ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 3:
        msg='Se ha publicado la evaluación, en el módulo de publicaciones encontaras mas detalles ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 4:
        msg='Se ha eliminado la evaluación, está acción no se podra deshacer ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 5:
        msg='Se ha guardado tu pregunta correctamente ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 6:
        msg='Se elimino la pregunta ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 7:
        msg='Se elimino la competencia ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 8:
        msg='Se guardo la competencia ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 9:
        msg='Se actualizo la evaluación, está lista para ser conestada ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 10:
        msg='Se eliminó la evaluación correctamente ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 11:
        msg='Se ha descartado la evaluación de este profesor ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      case 12:
        msg='Se ha evaluado al profesor ref #'+resp;
        this.setModalSuccessMessageBox(msg);
        break;
      default:
        break;
    }
  }

  setModalSuccessMessageBox(msg){
    document.getElementById('pSuccess').innerHTML=msg;
    document.getElementById("modalSuccess").style.display='block';
  }

  removeArrQuItem(arrQu,item){
    var iArrQu = arrQu.length;
    for( var i = 0; i <iArrQu; i++){
      if (arrQu[i] == item) {
          arrQu.splice(i, 1);
      }
    }
    document.getElementById('pQu').value=arrQu.toString();
  }

  setClassList(liElement,iSwitch){
    switch (iSwitch) {
      case 1:
        liElement.classList.remove('dees-color3');
        liElement.classList.remove('dees-text-white');
        liElement.classList.add('dees-white');
        liElement.classList.add('dees-text-color3');
        break;
      case 2:
        liElement.classList.remove('dees-white');
        liElement.classList.remove('dees-text-color3');
        liElement.classList.add('dees-color3');
        liElement.classList.add('dees-hover-color5-light');
        liElement.classList.add('dees-text-white');
        break;
      default:
        break;
    }
  }

  setRemoveQuestion(){
    var numRemoveQuestion = document.getElementById('lblRemoveQuestion').innerHTML;
    var objJson = {};
    objJson.L1 = numRemoveQuestion;
    objJson.L2 = document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',14,JSON.stringify(objJson),14,this);
  }

  setRemoveQuestionResp(resp){
    document.getElementById('modalRemoveQuestion').style.display='none';
    this.setSuccessMessage(6,resp);
    this.getQuestions();
    this.getAssessmentQuery();
    this.getProdQuPrSkAsQuery();
    this.getPrSkQuery();
    this.getAllQuPrSkAs();
  }

  setModalTeacherBox(id,numTe,numSu){
    document.getElementById('pCbNumTe').innerHTML=id;
    document.getElementById('pNumTe').innerHTML=numTe;
    document.getElementById('pNumSu').innerHTML=numSu;
    document.getElementById('modalNoTeacher').style.display='block';
  }

  setModalRemoveQuestion(numQu){
    document.getElementById('lblRemoveQuestion').innerHTML=numQu;
    document.getElementById('modalRemoveQuestion').style.display='block';
  }

  unsetModalTeacher(){
    document.getElementById('modalNoTeacher').style.display='none';
    var cbId = document.getElementById('pCbNumTe').innerHTML;
    document.getElementById(cbId).checked=false;
  }

  unsetModalRemoveQuestion(){
    document.getElementById('modalRemoveQuestion').style.display='none';
  }

  unsetModalRemovePrSk(){
    document.getElementById('modalRemovePrSk').style.display='none';
  }

  setModalRemovePrSk(numPrSk){
    document.getElementById('lblRemovePrSk').innerHTML=numPrSk;
    document.getElementById('modalRemovePrSk').style.display='block';
  }

  setPrSkRemoveQuery(){
    var numPrSk = document.getElementById('lblRemovePrSk').innerHTML;
    var numUs = document.getElementById('lblStrUs').innerHTML;
    var objJson = {};
    objJson.L1=numPrSk;
    objJson.L2=numUs;
    this.sendPostRequest('bsnsHome.php',15,JSON.stringify(objJson),15,this);
  }

  setPrSkRemoveQueryResp(resp){
    document.getElementById('modalRemovePrSk').style.display='none';
    this.setSuccessMessage(7,resp);
    this.getPrSkQuery();
  }

  unsetModalWarningRequired(){
    document.getElementById('modalWarningRequired').style.display='none';
  }

  unsetModalSuccess(){
    document.getElementById('modalSuccess').style.display='none';
  }

  setNoTeacher(){
    var objJson = {};
    objJson.L1 = document.getElementById('pNumTe').innerHTML;
    objJson.L2 = document.getElementById('pNumSu').innerHTML;
    objJson.L3 = document.getElementById('lblStrUs').innerHTML;
    objJson.L4 = document.getElementById('lblNumAs').innerHTML;
    this.sendPostRequest('bsnsHome.php',3,JSON.stringify(objJson),3,this);
  }

  setAnswersQuestionsResp(resp){
    this.showWaiter(2);
    this.setSuccessMessage(12,resp);
  }

  setAnswersQuestions(){
    var objJson={};
    var selectElement=null;
    var iIndex=null;
    var selectElementOptionValue=null;
    var selectElementOptionQuestion=null;
    var iIndexLength=document.getElementById('lblCountQu').innerHTML;
    var lblNumTe = document.getElementById('lblTeacherNum').innerHTML;
    var btnQuTe = document.getElementById('btn'+lblNumTe);
    var cbNumTe = document.getElementById('cb'+lblNumTe);
    var lblCbNumTe = document.getElementById('lblCbNumTe'+lblNumTe);
    for(iIndex=0;iIndex<iIndexLength;iIndex++){
      selectElement = document.getElementById('selectStars'+iIndex);
      selectElementOptionValue = selectElement.options[selectElement.selectedIndex].value;
      selectElementOptionQuestion = selectElement.options[7].value;
      objJson['q'+iIndex]=selectElementOptionQuestion;
      objJson['a'+iIndex]=selectElementOptionValue;
    }
    lblCbNumTe.classList.remove('containerCursorPointer');
    lblCbNumTe.classList.add('containerCursorNotAllowed');
    cbNumTe.disabled=true;
    btnQuTe.classList.remove('dees-color3');
    btnQuTe.classList.add('dees-teal');
    btnQuTe.value='Evaluado';
    btnQuTe.disabled=true;
    objJson.L1=lblNumTe;
    objJson.L2=document.getElementById('lblStrUs').innerHTML;
    objJson.L3=document.getElementById('lblTeSu'+lblNumTe).innerHTML;
    objJson.L4=iIndexLength;
    objJson.L5=document.getElementById('lblNumAs').innerHTML;
    this.sendPostRequest('bsnsHome.php',23,JSON.stringify(objJson),23,this);
  }

  getNoTeacherResp(resp){
    var lblNumTe = document.getElementById('pNumTe').innerHTML;
    var btnQuTe = document.getElementById('btn'+lblNumTe);
    btnQuTe.classList.remove('dees-color3');
    btnQuTe.classList.add('dees-pink');
    btnQuTe.value='Descartado';
    btnQuTe.disabled=true;
    var idCbQuTe = document.getElementById('pCbNumTe').innerHTML;
    document.getElementById(idCbQuTe).disabled=true;
    document.getElementById('modalNoTeacher').style.display='none';
    this.showWaiter(2);
    this.setSuccessMessage(11,resp);
  }

  setTeachersQuestions(namTe,numTe){
    var pTeacherNam = document.getElementById('pTeacherNam');
    var lblTeacherNum = document.getElementById('lblTeacherNum');
    pTeacherNam.innerHTML='<i class="fas fa-chalkboard-teacher"></i> '+namTe;
    lblTeacherNum.innerHTML=numTe;
    this.setStyleOnTeachers();
  }

  setStyleOnTeachers(){
    var divStTeachers = document.getElementById('divStTeachers');
    var divStQuestions = document.getElementById('divStQuestions');
    divStTeachers.classList.remove('dees-show');
    divStTeachers.classList.add('dees-hide');
    divStQuestions.classList.remove('dees-hide');
    divStQuestions.classList.add('dees-show');
  }
  setStyleOffTeachers(){
    var divStTeachers = document.getElementById('divStTeachers');
    var divStQuestions = document.getElementById('divStQuestions');
    divStTeachers.classList.remove('dees-hide');
    divStTeachers.classList.add('dees-show');
    divStQuestions.classList.remove('dees-show');
    divStQuestions.classList.add('dees-hide');
  }

  getQuestions(){
    this.sendPostRequest('bsnsHome.php',2,null,2,this);
  }

  getQuestionsJson(strJson){
    var domComponent1 = document.getElementById('divQuPrSk');
    var domComponent2 = document.getElementById('divQuPrSkRemove');
    this.setDOMList(domComponent1,3,strJson);
    if(this.setDOMList(domComponent2,9,strJson)){
      this.showWaiter(2);
    }
  }

  showAdminMenuConsole(box){
    var iIndex=null;
    document.getElementById('divIconAdminConsoleMenu1').classList.remove('dees-show');
    document.getElementById('divIconAdminConsoleMenu1').classList.add('dees-hide');
    for(iIndex=1;iIndex<=6;iIndex++){
     document.getElementById('divAdminConsoleMenu'+iIndex).classList.remove('dees-show');
     document.getElementById('divAdminConsoleMenu'+iIndex).classList.add('dees-hide');
    }
    document.getElementById('divAdminConsoleMenu'+box).classList.remove('dees-hide');
    document.getElementById('divAdminConsoleMenu'+box).classList.add('dees-show');
  }

  setShowAdminConsoleMenu(box){
    document.getElementById('divIconAdminConsoleMenu1').classList.remove('dees-hide');
    document.getElementById('divIconAdminConsoleMenu1').classList.add('dees-show');
    document.getElementById('divAdminConsoleMenu'+box).classList.remove('dees-show');
    document.getElementById('divAdminConsoleMenu'+box).classList.add('dees-hide');
  }

  setNewAssessment(){
    var numUs = document.getElementById('lblStrUs').innerHTML;
    var newAssessment = document.getElementById('txtNewAssessment').value;
    var newAssessmentYear = document.getElementById('txtNewAssessmentYear').value;
    var objJson = {};
    var d = Math.floor(Math.random() * 1000);
    var numAs = window.btoa(d+newAssessment);
    objJson.L1 = numAs.substring(1,10).toUpperCase();
    objJson.L2 = newAssessment;
    objJson.L3 = newAssessmentYear;
    objJson.L4 = 9;
    objJson.L5 = numUs;
    this.sendPostRequest('bsnsHome.php',4,JSON.stringify(objJson),4,this);
  }

  setNewAssessmentResp(resp){
    this.setSuccessMessage(2,resp);
    this.getAssessmentQuery();
    this.getProdQuPrSkAsQuery();
    this.getAllQuPrSkAs();
  }

  setNewQuestion(){
    var numUs = document.getElementById('lblStrUs').innerHTML;
    var newQuestion = document.getElementById('txtNewQuestion').value;
    var e = document.getElementById('selectPrSk');
    var strPrsk = e.options[e.selectedIndex].value;
    var objJson = {};
    var d = Math.floor(Math.random() * 1000);
    var newQu = window.btoa(d+newQuestion);
    objJson.L1 = newQu.substring(1,10).toUpperCase();
    objJson.L2 = newQuestion;
    objJson.L3 = strPrsk;
    objJson.L4 = numUs;
    this.sendPostRequest('bsnsHome.php',5,JSON.stringify(objJson),5,this);
  }

  setNewQuestionResp(resp){
    this.getQuestions();
    this.setSuccessMessage(5,resp);
  }

  setNewPrSk(){
    var numUs = document.getElementById('lblStrUs').innerHTML;
    var newPrSk = document.getElementById('txtNewPrSk').value;
    var objJson = {};
    var d = Math.floor(Math.random() * 1000);
    var newQu = window.btoa(d+newPrSk);
    objJson.L1 = newQu.substring(1,10).toUpperCase();
    objJson.L2 = newPrSk;
    objJson.L3 = numUs;
    this.sendPostRequest('bsnsHome.php',16,JSON.stringify(objJson),16,this);
  }

  setNewPrSkResp(resp){
    this.setSuccessMessage(8,resp);
    this.getPrSkQuery();
  }

  setQuPrSkAsQueryResp(resp){
    this.setSuccessMessage(1,resp);
    this.getAssessmentQuery();
    this.getProdQuPrSkAsQuery();
    this.getAllQuPrSkAs();
  }

  setQuPrSkAsQuery(){
    var numUs = document.getElementById('lblStrUs').innerHTML;
    var numAs = document.getElementById('pAs').value;
    var numQuPrSk = document.getElementById('pQu').value;
    var objJson = {};
    var arrJsonQu = [];
    var arrQu = numQuPrSk.split(',');
    arrQu.pop();
    var arrQuLength=arrQu.length;
    var iIndex=null;
    for(iIndex=0;iIndex<arrQuLength;iIndex++){
      arrJsonQu[iIndex]= arrQu[iIndex];
    }
    objJson.L1 = numAs;
    objJson.L2 = arrJsonQu;
    objJson.L3 = numUs;
    this.sendPostRequest('bsnsHome.php',6,JSON.stringify(objJson),6,this);
  }

  getAssessmentQuery(){
    this.sendPostRequest('bsnsHome.php',7,null,7,this);
  }

  getAssessmentQueryResp(resp){
    var domComponent = document.getElementById('divAs');
    if(this.setDOMList(domComponent,4,resp)){
      this.showWaiter(2);
    }
  }

  getProdQuPrSkAsQuery(){
    this.sendPostRequest('bsnsHome.php',8,null,8,this);
  }

  getProdQuPrSkAsQueryResp(resp){
    var domComponent = document.getElementById('divProdQuPrSkAs');
    if(this.setDOMList(domComponent,5,resp)){
      this.showWaiter(2);
    }
  }

  getAllQuPrSkAs(){
    this.sendPostRequest('bsnsHome.php',9,null,9,this);
  }

  getAllQuPrSkAsResp(resp){
    var domComponent = document.getElementById('divAllQuPrSkAs');
    if(this.setDOMList(domComponent,6,resp)){
      this.showWaiter(2);
    }
  }

  getQuPrSkAsQuery(){
    this.sendPostRequest('bsnsHome.php',12,null,12,this);
  }

  getQuPrSkAsQueryResp(resp){
    var domComponent = document.getElementById('ulQuestions');
    if(this.setDOMList(domComponent,7,resp)){
      this.showWaiter(2);
    }
  }

  getCatGrQuery(){
    this.sendPostRequest('bsnsHome.php',18,null,18,this);
  }

  getCatGrQueryResp(resp){
    var domComponent=document.getElementById('divCatGrQuery');
    if(this.setDOMList(domComponent,12,resp)){
      this.showWaiter(2);
    }
  }

  setQuPrSkAsPublish(numProdQuPrSkAs){
    var objJson = {};
    objJson.L1 = numProdQuPrSkAs;
    objJson.L2 = document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',10,JSON.stringify(objJson),10,this);
  }

  setQuPrSkAsPublishResp(resp){
    this.getProdQuPrSkAsQuery();
    this.getAssessmentQuery();
    this.getCatAsAliveQuery();
    this.getAllQuPrSkAs();
    this.setSuccessMessage(3,resp)
  }

  setDismissProdQuPrSkAs(numProdQuPrSkAs,iCase){
    var objJson = {};
    objJson.L1 = iCase;
    objJson.L2 = numProdQuPrSkAs;
    objJson.L3 = document.getElementById('lblStrUs').innerHTML;
    this.sendPostRequest('bsnsHome.php',11,JSON.stringify(objJson),11,this);
  }

  setDismissProdQuPrSkAsResp(resp){
    this.getProdQuPrSkAsQuery();
    this.getAssessmentQuery();
    this.getAllQuPrSkAs();
    this.setSuccessMessage(4,resp);
  }

  getCatUsPrStQuery(){
    var objJson = {};
    objJson.L1=4;
    this.sendPostRequest('bsnsHome.php',21,JSON.stringify(objJson),21,this);
  }

  getCatUsPrStQueryResp(resp){
    var domComponent = document.getElementById('divCatUsStQuery');
    if(this.setDOMList(domComponent,13,resp)){
      this.showWaiter(2);
    }
  }

  getCatUsPrTeQuery(){
    var objJson = {};
    objJson.L1=5;
    this.sendPostRequest('bsnsHome.php',21,JSON.stringify(objJson),22,this);
  }

  getCatUsPrTeQueryResp(resp){
    var domComponent = document.getElementById('divCatUsTeQuery');
    if(this.setDOMList(domComponent,14,resp)){
      this.showWaiter(2);
    }
  }

  sendPostRequest(fileServer,iCase,argJson,iSwitch,objRes){
    this.showWaiter(1);
    var separator='&';
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
      if(this.readyState==4 && this.status==200){
        objRes.resultFromPostSwitch(iSwitch,this.responseText);
      }
    }
    xhttp.open('POST','../bsns/'+fileServer,true);
    xhttp.setRequestHeader('Content-type','application/x-www-form-urlencoded');
    xhttp.send('c='+iCase+separator+'arg='+argJson);
  }

  resultFromPostSwitch(iSwitch,response){
    switch (iSwitch) {
      case 1:
        this.setTeachersToEvaluate(response);
        break;
      case 2:
        this.getQuestionsJson(response);
        break;
      case 3:
        this.getNoTeacherResp(response);
        break;
      case 4:
        this.setNewAssessmentResp(response);
        break;
      case 5:
        this.setNewQuestionResp(response);
        break;
      case 6:
        this.setQuPrSkAsQueryResp(response);
        break;
      case 7:
        this.getAssessmentQueryResp(response);
        break;
      case 8:
        this.getProdQuPrSkAsQueryResp(response);
        break;
      case 9:
        this.getAllQuPrSkAsResp(response);
        break;
      case 10:
        this.setQuPrSkAsPublishResp(response);
        break;
      case 11:
        this.setDismissProdQuPrSkAsResp(response);
        break;
      case 12:
        this.getQuPrSkAsQueryResp(response);
        break;
      case 13:
        this.getPrSkQueryResp(response);
        break;
      case 14:
        this.setRemoveQuestionResp(response);
        break;
      case 15:
        this.setPrSkRemoveQueryResp(response);
        break;
      case 16:
        this.setNewPrSkResp(response);
        break;
      case 17:
        this.getCatAsAliveQueryResp(response);
        break;
      case 18:
        this.getCatGrQueryResp(response);
        break;
      case 19:
        this.setPublishAsQueryResp(response);
        break;
      case 20:
        this.setRemoveCatAsQueryResp(response);
        break;
      case 21:
        this.getCatUsPrStQueryResp(response);
        break;
      case 22:
        this.getCatUsPrTeQueryResp(response);
        break;
      case 23:
        this.setAnswersQuestionsResp(response);
        break;
      default:
        alert('No hay Información #JSwitch');
        break;
    }
  }

  showWaiter(iSwitch){
    switch (iSwitch) {
      case 1:
        document.getElementById('waiter').classList.remove('dees-hide');
        document.getElementById('waiter').classList.add('dees-show');
        break;
      case 2:
        document.getElementById('waiter').classList.remove('dees-show');
        document.getElementById('waiter').classList.add('dees-hide');
        break;
      default:
        break;
    }
  }
}
