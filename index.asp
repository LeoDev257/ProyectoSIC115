
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
     <head>
          <title>Sistema Contable</title>
          <META HTTP-EQUIV="EXPIRES" CONTENT="0">
          <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
          <meta name="Sitio Contable" content="Sistema Contable Empresa Solidaria Textil"/>
          
          <style type="text/css">
           @import url("css/formato.css");   

          

		   
            #bg {
            	position: absolute;
            	z-index: -1;
            	top: 160;
            	left: 330;
            	width: 60%;

            <script src="js/jquery.min.js"></script>
            <script type="text/javascript">
            function updateBackground() {
              screenWidth = $(window).width();
              screenHeight = $(window).height();
              bg = $("#bg");
              
              // Proporcion horizontal/vertical
              ratio = 1;
              
              if (screenWidth/screenHeight > ratio) {
                $(bg).height("auto");
                $(bg).width("100%");
              } else {
                $(bg).width("auto");
                $(bg).height("100%");
              }

              if ($(bg).width() > 0) {
                $(bg).css('left', (screenWidth - $(bg).width()) / 2);
              }  
            }
            $(document).ready(function() {
              updateBackground();
              $(window).bind("resize", function() {
                updateBackground();
              });
            });
            </script>
          </style>
     </head>

    <style type="text/css">
      body {
      background:url('/imagen/index.png') no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      }
    </style>

     <body leftmargin="0" topmargin="0" background="ichigo.jpg" >


	   <% if Session("sesion_nombre")="" then Response.Redirect "acceso.htm" %>
         <div id="header">
             <table width="100%" cellspacing="0" cellpadding="0">
                  <tr><tr><tr>
                     <td width="1000" valign="center">&nbsp;</td>
                </tr></tr></tr>
             </table>
         </div>

<!-- Inicio del menu -->         
         <div id='cssmenu'>
         <ul>
<li class='has-sub '><a href='../index.asp'>INICIO</a>
      <ul>
	     
		 <li><a href='end_sesion.asp'><span>Cerrar Sesion</span></a></li>
      </ul>
   </li>




   <li class='has-sub '><a href='index.asp'><span>Usuarios</span></a>
      <ul>
         <li><a href='nuevo_usuario/nuevo_usuario.asp'><span>Nuevo Usuario</span></a></li>
         <li><a href='consultar_usuario/consultar_usuario.asp'><span>Consultar</span></a></li>
         <li><a href='modificar_datos_de_usuario/modificar_datos_de_usuario.asp'><span>Modificar</span></a></li>
         <li><a href='eliminar_usuario/eliminar_usuario.asp'><span>Eliminar</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='index.asp'><span>Empleados</span></a>
      <ul>
         <li><a href='nuevo_empleado/nuevo_empleado.asp'><span>Nuevo Empleado</span></a></li>
         <li><a href='consultar_datos_de_empleado/consultar_datos_de_empleado.asp'><span>Consultar</span></a></li>
         <li><a href='modificar_datos_de_empleado/modificar_datos_de_empleado.asp'><span>Modificar</span></a></li>
         <li><a href='eliminar_empleado/eliminar_empleado.asp'><span>Eliminar</span></a></li>
         <li><a href='planillas/planillas.asp'><span>Planillas</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='index.asp'><span>Transacciones</span></a>
      <ul>
         <li><a href='nueva_transaccion/nueva_transaccion.asp'><span>Nueva Transaccion</span></a></li>
         <li><a href='libro_diario/librodiario.asp'><span>Mostrar Libro Diario</span></a></li>
         <li><a href='cierre_de_periodo/cierre_de_periodo.asp'><span>Cierre de Periodo</span></a></li>
         <li><a href='cierre_de_periodo/ajustes.asp'><span>Ajustes</span></a></li>
         <li><a href='nueva_transaccion/menu.asp'><span>Transacciones Comunes</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='index.asp'><span>Catalogo</span></a>
      <ul>
         <li><a href='nueva_cuenta/cuenta.asp'><span>Nueva Cuenta</span></a></li>
         <li><a href='consulta_de_cuenta/consulta_de_cuenta.asp'><span>Consultar Cuenta</span></a></li>
         <li><a href='eliminacion_de_cuenta/eliminacion_de_cuenta.asp'><span>Eliminar Cuenta</span></a></li>
         <li><a href='catalogo/catalogo.asp'><span>Listar Catalogo</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='index.asp'><span>Contabilidad General</span></a>
      <ul>
         <li><a href='balance_de_comprobacion/balance_de_comprobacion.asp'><span>Balance de Comprobacion</span></a></li>
         <li><a href='estado_de_resultados/estado_de_resultados.asp'><span>Estado de Resultado</span></a></li>
         <li><a href='estado_de_capital/estado_de_capital.asp'><span>Estado de Capital</span></a></li>
         <li><a href='balance_general/balance_general.asp'><span>Balance General</span></a></li>
      </ul>
  </li>
   <li class='has-sub '><a href='index.asp'><span>Contabilidad de Costos</span></a>
      <ul>
         <li><a href='nueva_ordenfabricacion/norden_fabricacion.asp'><span>Nueva Orden de Fabricacion</span></a></li>
         <li><a href='consulta_ordenfabricacion/corden_fabricacion.asp'><span>Consultar Orden de Fabricacion</span></a></li>
         <li><a href='estados_costosprod/produventas.asp'><span>Finalizar Orden de Fabricacion</span></a></li>
      </ul>
   </li>
</ul>
</div>
<!-- Fin del menu -->
<div>
  <br>
<center><h1 style="color: DarkSlateGrey" > Bienvenido al sistema contable Invernalia </h1></center>
<hr>
<center><p id="cajatexto">Software dedicado al manejo contable del sector textil de la empresa. 
<br>
Todas las acciones correspondientes se encuentran en la barra de menu. 
 </p></center>
</div>


</body>
</html>