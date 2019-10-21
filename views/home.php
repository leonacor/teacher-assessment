<?php
session_start();
if(!isset($_SESSION['lgn']))
{
    header('Location: http://bsnet.com.mx/evaluacion/');
}
$strUsNam = $_SESSION['nam'];
$iProfile = $_SESSION['pfl'];
$strUs = $_SESSION['usr'];
?>
<!DOCTYPE html>
<html class="style-full">
<head>
<title>SED BSNET</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="../images/logo1.gif" />
<link rel="stylesheet" href="../styles/cssStyle.css" />
<link rel="stylesheet" href="../styles/cssTemplate.css" />
<link rel="stylesheet" href="../styles/cssFontFace.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
</head>
<body class="style-full bgimg-style bgimg-view"  onload="objResources.setDivMenuItems(<?php echo($iProfile); ?>);">
  <script src="../charts/jquery.js"></script>
  <script src="../charts/highcharts.js"></script>
  <script src="../charts/highcharts3d.js"></script>
  <script src="../charts/highchartsmore.js"></script>
  <script src="../charts/highchartsgauge.js"></script>
  <script src="../charts/highchartswordcloud.js"></script>
  <script src="../charts/jsCharts.js"></script>
  <script src="../scripts/jsResources.js"></script>
<script>
  var objResources = new jsResources();
  var objCharts = new jsCharts();
</script>
  <label id="lblStrUs" class="dees-hide"><?php echo($strUs); ?></label>
  <header>
    <div class="dees-display-top dees-padding dees-large dees-indigo div-logo dees-center">
      <div class="dees-hide-large dees-right">
        <a class="dees-hover-light-gray dees-round-small dees-padding-small" onclick="objResources.openMenu();"><i class="fas fa-bars dees-large"></i></a>
      </div>
      <label>Sistema de Evaluación Docente</label>
    </div>
  </header>
  <div id="sidebarMenu" class="dees-sidebar dees-animate-left dees-top dees-bar-block desktop-sidebar dees-light-gray dees-text-color3 dees-center">
    <a class="dees-bar-item menu-height-button" title="Ir a Inicio"><img src="../images/logo1.gif" alt="img-alt-logo" class="img-logo" /></a>
    <a class="dees-hide-large dees-bar-item dees-button dees-hover-color3-light" title="Cerrar menú" onclick="objResources.closeMenu();">
      <label class="dees-hide-large dees-left">Cerrar menú </label>
      <i class="fas fa-times dees-medium dees-right"></i>
    </a>
    <div id="divMenuItems"></div>
      <a class="dees-bar-item dees-button dees-hover-color3-light" title="Cerrar sesión" onclick="document.getElementById('modalCloseSession').style.display='block';">
      <label class="dees-hide-large dees-left">Cerrar sesión </label>
      <i class="fas fa-power-off dees-medium dees-hide-small dees-hide-medium"></i>
      <i class="fas fa-power-off dees-medium dees-hide-large dees-right"></i>
    </a>
  </div>
  <div class="dees-overlay dees-animate-opacity" onclick="objResources.closeMenu();" style="cursor:pointer" id="overlayMenu"></div>
  <div class="desktop-content desktop-content-position">
    <div class="dees-panel dees-row dees-small">
      <div class="dees-half dees-left dees-light-gray dees-text-color3 dees-padding dees-round-small lblWidthAuto">
        <label id="lblContent"></label>
      </div>
      <div class="dees-half dees-right dees-light-gray dees-text-color3 dees-padding dees-round-small lblWidthAuto">
        <label><strong><?php echo($_SESSION['nam']); ?></strong></label>
        <i class="fas fa-cogs dees-small dees-text-gray"></i>
      </div>
    </div>
    <?php switch ($iProfile) {
      case 4:
    ?>
      <div id="divStTeachers" class="dees-show dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding">
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Profesores a evalúar</strong><i class="fas fa-exclamation-circle dees-medium dees-text-pink iconInformationPosition" title="En esta columna se identifican los profesores que no corresponden a tu asignatura, usa el cuadro para seleccionarlos y bloquear la evaluación"></i></p>
        <div id="divTeQu"></div>
      </div>
      <div id="divStQuestions" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setStyleOffTeachers();" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p id="pTeacherNam" class="dees-border-bottom dees-bottombar dees-padding dees-large"></p>
        <label id="lblTeacherNum" class="dees-hide"></label>
        <p><strong>Califica en una escala de 5 a 10 el desempeño de tu profesor /a</strong></p><br>
        <form onsubmit="objResources.setAnswersQuestions(); return false;">
          <div id="ulQuestions"></div>
          <button onclick="objResources.setRequiredMessage(5);" class="dees-button dees-color3 dees-margin dees-right">Evalúar</button>
        </form>
      </div>
    <?php
        break;
      case 5:
    ?>
      <div class="dees-show dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding">
        <div id="divTeChart1" class="divChartBox"></div>
      </div>
    <?php
        break;
      case 6:
    ?>
      <div id="divIconAdminConsoleMenu1" class="dees-show dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <div class="dees-row">
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Crear y remover evaluaciones y hacer cambios a las ya existentes" onclick="objResources.showAdminMenuConsole(1);">
             <div class="dees-padding">
               <img src="../images/a1-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Evaluación</strong></p>
             </div>
           </div>
         </div>
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Crear y remover preguntas y editar las que hay" onclick="objResources.showAdminMenuConsole(2);">
             <div class="dees-padding">
               <img src="../images/a2-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Preguntas</strong></p>
             </div>
          </div>
         </div>
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Publicar evaluaciones listas para ser enviadas a estudiantes" onclick="objResources.showAdminMenuConsole(3);">
             <div class="dees-padding">
               <img src="../images/a3-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Publicaciones</strong></p>
             </div>
           </div>
         </div>
        </div>
        <div class="dees-row">
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Crear y remover competencias que engloban preguntas" onclick="objResources.showAdminMenuConsole(4);">
             <div class="dees-padding">
               <img src="../images/a4-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Grupos</strong></p>
             </div>
           </div>
         </div>
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Consultar profesores y hacer algunos cambias exclusivos paa la evaluación" onclick="objResources.showAdminMenuConsole(5);">
             <div class="dees-padding">
               <img src="../images/a5-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Profesores /as</strong></p>
             </div>
          </div>
         </div>
         <div class="dees-third dees-container dees-round-small">
           <div class="dees-card dees-margin heightMenuConsoleBox" title="Consultar estudiantes y hacer algunos cambias exclusivos paa la evaluación" onclick="objResources.showAdminMenuConsole(6);">
             <div class="dees-padding">
               <img src="../images/a6-32.png" alt="img-alt-menu-console" />
               <p class="dees-right"><strong>Estudiantes</strong></p>
             </div>
           </div>
         </div>
        </div>
      </div>
      <div id="divAdminConsoleMenu1" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(1);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-medium dees-bottombar dees-padding"><strong>Evaluación</strong></p>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
          <form onsubmit="objResources.setNewAssessment(); return false;">
            <p><strong><i class='fas fa-th-list'></i> Crear evaluación</strong></p>
            <input id="txtNewAssessmentYear" class="dees-input" type="text" placeholder="Escribe el ciclo escolar de referencia de la evaluación" maxlength="10" required />
            <label>Ciclo esclar</label>
            <br><br>
            <input id="txtNewAssessment" class="dees-input" type="text" placeholder="Escribe el nombre de la evaluación" maxlength="200" required />
            <label>Nombre de la evaluación</label>
            <br>
            <button onclick="objResources.setRequiredMessage(2);" class="dees-button dees-color3 dees-right">Crear evaluación</button>
          </form>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
            <p><strong><i class='fas fa-th-list'></i> Asignar preguntas a evaluación</strong></p>
            <form onsubmit="objResources.setQuPrSkAsQuery(); return false;">
              <label class="dees-left">Asegurate de elegir una evaluación de la lista y preguntas seleccionadas para poder guadar</label>
              <button onclick="objResources.setRequiredMessage(1);" class="dees-button dees-color3 dees-margin dees-right">Guardar selección</button>
              <input id="pAs" type="text" class="dees-hide dees-input" required />
              <input id="pQu" type="text" class="dees-hide dees-input" required />
            </form>
            <div class="dees-row">
              <div class="dees-half">
                <div id="divAs"></div>
              </div>
              <div class="dees-half">
                <div id="divQuPrSk"></div>
              </div>
            </div>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
            <p><strong><i class='fas fa-th-list'></i> Evaluaciones listas para ser publicadas</strong></p>
            <div id="divProdQuPrSkAs" class="dees-responsive"></div>
            <div class="dees-hide-large dees-large dees-text-color3"><i class='fas fa-exchange-alt'></i></div>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
            <p><strong><i class='fas fa-th-list'></i> Borrar evaluaciones</strong></p>
            <div id="divAllQuPrSkAs" class="dees-responsive"></div>
            <div class="dees-hide-large dees-large dees-text-color3"><i class='fas fa-exchange-alt'></i></div>
        </div>
      </div>
      <div id="divAdminConsoleMenu2" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(2);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Preguntas</strong></p>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
            <form onsubmit="objResources.setNewQuestion(); return false;">
              <p><strong><i class='fas fa-th-list'></i> Agregar preguntas nuevas</strong></p>
              <div id="divPrSk"></div>
              <br>
              <input id="txtNewQuestion" class="dees-input" type="text" placeholder="Escribe la nueva pregunta" maxlength="200" required />
              <label>Pregunta</label>
              <br>
              <button onclick="objResources.setRequiredMessage(3);" class="dees-button dees-color3 dees-margin dees-right">Agregar pregunta</button>
            </form>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
          <p><strong><i class='fas fa-th-list'></i> Borrar preguntas</strong></p>
          <p>Selecciona una pregunta para borrarla</p>
          <div id="divQuPrSkRemove"></div>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
          <form onsubmit="objResources.setNewPrSk(); return false;">
            <p><strong><i class='fas fa-th-list'></i> Agregar competencias</strong></p>
            <input id="txtNewPrSk" class="dees-input" type="text" placeholder="Escribe la nueva competencia" maxlength="200" required />
            <label>Competencia</label>
            <br>
            <button onclick="objResources.setRequiredMessage(4);" class="dees-button dees-color3 dees-margin dees-right">Agregar Competencia</button>
          </form>
        </div>
        <hr>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
          <p><strong><i class='fas fa-th-list'></i> Borrar competencias</strong></p>
          <div id="divPrSkRemove"></div>
        </div>
      </div>
      <div id="divAdminConsoleMenu3" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(3);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Publicaciones</strong></p>
        <div class="dees-panel dees-card-2 dees-padding dees-round-small">
          <p>Aquí podras seleccionar que evaluación de las publicadas deseas que sea contestada por los estudiantes con el boton de "Activo"</p>
          <div id="divCatAsAliveQuery" class="dees-responsive"></div>
        </div>
      </div>
      <div id="divAdminConsoleMenu4" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(4);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Grupos</strong></p>
        <div id="divCatGrQuery" class="dees-responsive"></div>
      </div>
      <div id="divAdminConsoleMenu5" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(5);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Profesores /as</strong></p>
        <div id="divCatUsTeQuery" class="dees-responsive"></div>
      </div>
      <div id="divAdminConsoleMenu6" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <a onclick="objResources.setShowAdminConsoleMenu(6);" class="dees-button dees-color3 dees-right"><i class="fas fa-reply"></i> Regresar</a>
        <p class="dees-border-bottom dees-bottombar dees-padding"><strong>Estudiantes</strong></p>
        <div id="divCatUsStQuery" class="dees-responsive"></div>
      </div>
      <div id="divIconAdminConsoleMenu2" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <p>Gráficas Estadísticas</p>
        <div id="divChart1" class="divChartBox dees-hide-small dees-hide-medium"></div>
        <div id="divChart2" class="divChartBox dees-hide-large"></div><br>
        <div id="divChart3" class="divChartBox dees-hide-large"></div><br>
        <div id="divChart4" class="divChartBox dees-hide-large"></div>
      </div>
      <div id="divIconAdminConsoleMenu3" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <p>Menu Icon 3</p>
      </div>
      <!--<div id="divIconAdminConsoleMenu4" class="dees-hide dees-panel dees-small dees-light-gray dees-text-color3 dees-card-4 dees-round-small dees-padding-large">
        <p>Menu Icon 4</p>
      </div>-->
    <?php
        break;
      default:
        break; } ?>
  </div>
  <div id="modalCloseSession" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBox">
      <header class="dees-container dees-color3">
        <span onclick="document.getElementById('modalCloseSession').style.display='none'" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo importante</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>¿Deseas cerrar sesión?</p>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="document.getElementById('modalCloseSession').style.display='none';" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.sendPostRequestLogout();" />
      </div>
    </div>
  </div>
  <div id="modalNoTeacher" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color9">
        <span onclick="objResources.unsetModalTeacher();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo de actualización de datos</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>Si el profesor /a no coincide con tu materia presiona Si para suspender esta evaluación y no afecte tus resultados</p>
        <p id="pCbNumTe" class="dees-hide"></p>
        <p id="pNumTe" class="dees-hide"></p>
        <p id="pNumSu" class="dees-hide"></p>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalTeacher();" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.setNoTeacher();" />
      </div>
    </div>
  </div>
  <div id="modalRemoveQuestion" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color9">
        <span onclick="objResources.unsetModalRemoveQuestion();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo de actualización de datos</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>Si de deseas borrar la pregunta presiona Si para quitarla de las preguntas disponibles. <strong>Está pregunta no estará disponible en las evaluaciones</strong></p>
        <label id="lblRemoveQuestion" class="dees-hide"></label>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalRemoveQuestion();" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.setRemoveQuestion();" />
      </div>
    </div>
  </div>
  <div id="modalRemovePrSk" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color9">
        <span onclick="objResources.unsetModalRemovePrSk();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo de actualización de datos</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>Si de deseas borrar la competencia presiona Si para quitarla de la lista disponible. <strong>Está competencia no estará disponible en las preguntas</strong></p>
        <label id="lblRemovePrSk" class="dees-hide"></label>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalRemovePrSk();" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.setPrSkRemoveQuery();" />
      </div>
    </div>
  </div>
  <div id="modalAliveAs" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color9">
        <span onclick="objResources.unsetModalAliveAs();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo de actualización de datos</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>Deaseas publicar esta evaluación</p>
        <label id="lblAliveAs" class="dees-hide"></label>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalAliveAs();" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.setPublishAsQuery();" />
      </div>
    </div>
  </div>
  <div id="modalRemoveAliveAs" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color9">
        <span onclick="objResources.unsetModalRemoveAliveAs();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class='fas fa-shield-alt dees-large'></i> Mensaje informativo de actualización de datos</p>
      </header>
      <div class="dees-container dees-padding-large">
        <p>Deaseas quitar de la lista esta evaluación</p>
        <label id="lblRemoveAliveAs" class="dees-hide"></label>
        <input type="button" value="No" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalRemoveAliveAs();" />
        <input type="button" value="Si" class="dees-button dees-blue widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.setRemoveCatAsQuery();" />
      </div>
    </div>
  </div>
  <div id="modalWarningRequired" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color6">
        <span onclick="objResources.unsetModalWarningRequired();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class="fas fa-exclamation-circle dees-large"></i> Mensaje informativo de atención</p>
      </header>
      <div class="dees-container dees-padding-large dees-white">
        <p id="pWarningRequired" class="dees-medium"></p>
        <input type="button" value="Está bien" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalWarningRequired();" />
      </div>
    </div>
  </div>
  <div id="modalSuccess" class="dees-modal modalIndex">
    <div class="dees-modal-content dees-animate-top dees-card-4 modalWidthBoxNoTeacher">
      <header class="dees-container dees-color7">
        <span onclick="objResources.unsetModalSuccess();" class="dees-button dees-display-topright"><i class="fas fa-times"></i></span>
        <p><i class="fas fa-check-circle dees-large"></i> Mensaje informativo de exito</p>
      </header>
      <div class="dees-container dees-padding-large dees-white">
        <p id="pSuccess" class="dees-medium"></p>
        <input type="button" value="Está bien" class="dees-button dees-pink widthButtonsModal modalButtonMarginBox dees-right" onclick="objResources.unsetModalSuccess();" />
      </div>
    </div>
  </div>
  <div id="waiter" class="dees-hide dees-overlay modalIndex">
    <div class="divLoader dees-text-white dees-center">
      <i class="fas fa-spinner dees-spin dees-jumbo"></i>
      <h3 class="font-family-myFont1">Espere por favor</h3>
    </div>
  </div>
</body>
</html>
