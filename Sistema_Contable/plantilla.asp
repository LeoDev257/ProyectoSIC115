
	 <% if Session("sesion_nombre")="" then Response.Redirect "../acceso.htm" %>
        <div id="header">
            <table width="100%" cellspacing="0" cellpadding="0">
                  <tr><tr><tr>
                     <td width="1000" valign="center">
                         <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="1300" HEIGHT="200" id="sample" ALIGN="center">
                                  <PARAM NAME=movie VALUE="introduccion.swf">
                                  <PARAM NAME=quality VALUE=High>

                                  <PARAM NAME=bgcolor VALUE="#164796">
                                  <param name="wmode" value="transparent">
                                  <EMBED src="introduccion.swf" quality=High bgcolor=#164796  WIDTH="1300" HEIGHT="200" NAME="sample" ALIGN="center" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer" wmode="transparent">
                                  </EMBED>
                          </OBJECT>
                     </td>
                 </tr></tr></tr>
            </table>
        </div>
       <div id='cssmenu'>
<ul>
<li class='has-sub '><a href='../index.asp'><span>Inicio</span></a>
      <ul>
		 <li><a href='../end_sesion.asp'><span>Cerrar Sesion</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Usuarios</span></a>
      <ul>
         <li><a href='../nuevo_usuario/nuevo_usuario.asp'><span>Nuevo Usuario</span></a></li>
         <li><a href='../consultar_usuario/consultar_usuario.asp'><span>Consultar</span></a></li>
         <li><a href='../modificar_datos_de_usuario/modificar_datos_de_usuario.asp'><span>Modificar</span></a></li>
         <li><a href='../eliminar_usuario/eliminar_usuario.asp'><span>Eliminar</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Empleados</span></a>
      <ul>
         <li><a href='../nuevo_empleado/nuevo_empleado.asp'><span>Nuevo Empleado</span></a></li>
         <li><a href='../consultar_datos_de_empleado/consultar_datos_de_empleado.asp'><span>Consultar</span></a></li>
         <li><a href='../modificar_datos_de_empleado/modificar_datos_de_empleado.asp'><span>Modificar</span></a></li>
         <li><a href='../eliminar_empleado/eliminar_empleado.asp'><span>Eliminar</span></a></li>
         <li><a href='../planillas/planillas.asp'><span>Planillas</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Transacciones</span></a>
      <ul>
         <li><a href='../nueva_transaccion/nueva_transaccion.asp'><span>Nueva Transaccion</span></a></li>
         <li><a href='../libro_diario/librodiario.asp'><span>Mostrar Libro Diario</span></a></li>
         <li><a href='../cierre_de_periodo/cierre_de_periodo.asp'><span>Cierre de Periodo</span></a></li>
         <li><a href='../cierre_de_periodo/ajustes.asp'><span>Ajustes</span></a></li>
         <li><a href='../nueva_transaccion/menu.asp'><span>Transacciones Comunes</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Catalogo</span></a>
      <ul>
         <li><a href='../nueva_cuenta/cuenta.asp'><span>Nueva Cuenta</span></a></li>
         <li><a href='../consulta_de_cuenta/consulta_de_cuenta.asp'><span>Consultar Cuenta</span></a></li>
         <li><a href='../eliminacion_de_cuenta/eliminacion_de_cuenta.asp'><span>Eliminar Cuenta</span></a></li>
         <li><a href='../catalogo/catalogo.asp'><span>Listar Catalogo</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Contabilidad General</span></a>
      <ul>
         <li><a href='../balance_de_comprobacion/balance_de_comprobacion.asp'><span>Balance de Comprobacion</span></a></li>
         <li><a href='../estado_de_resultados/estado_de_resultados.asp'><span>Estado de Resultado</span></a></li>
         <li><a href='../estado_de_capital/estado_de_capital.asp'><span>Estado de Capital</span></a></li>
         <li><a href='../balance_general/balance_general.asp'><span>Balance General</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='../index.asp'><span>Contabilidad de Costos</span></a>
      <ul>
         <li><a href='../nueva_ordenfabricacion/norden_fabricacion.asp'><span>Nueva Orden de Fabricacion</span></a></li>
         <li><a href='../consulta_ordenfabricacion/corden_fabricacion.asp'><span>Consultar Orden de Fabricacion</span></a></li>
         <li><a href='../estados_costosprod/produventas.asp'><span>Finalizar Orden de Fabricacion</span></a></li>
      </ul>
   </li>
</ul>
</div>