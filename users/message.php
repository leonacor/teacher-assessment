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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body class="style-full">
<div class="bgimg-style bgimg-index dees-display-container dees-animate-opacity dees-text-white">
  <div class="dees-display-top dees-padding dees-xlarge dees-indigo div-logo dees-center">
    <img src="../images/logo1.gif" alt="img-alt-logo" class="img-logo"/> Sistema de Evaluación Docente
  </div>
  <div class="dees-row dees-margin">
   <div class="dees-third dees-container"></div>
  <div class="dees-card-4 dees-padding-large dees-round-small dees-center modal-width dees-light-gray dees-third dees-responsive" style="width:400px;height:150px;">
    <?php if($_GET['i']>0){ ?>
    <label>Tu contraseña se creó/cambio con exito</label>
    <?php }else{ ?>
    <label>Tu usuario no se encuentra en nuestra base de datos. Por favor comunicate con control escolar y avisa de este problema</label>
    <?php } ?>
    <br><br>
    <a href="http://bsnet.com.mx/evaluacion/" class="dees-button dees-ripple dees-color3">Regresar</a>
  </div>
  <div class="dees-third dees-container"></div>
 </div>
  <div class="dees-display-bottomleft dees-padding-large">
    Producto de <a href="https://www.bsnet.com.mx" target="_blank">BSNET</a>
  </div>
</div>
</body>
</html>
