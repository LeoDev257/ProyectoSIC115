  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
     <head>
          <title>Sistema Contable</title>
          <META HTTP-EQUIV="EXPIRES" CONTENT="0">
          <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
          <meta name="Sitio Contable" content="Sistema Contable Empresa Solidaria Textil"/>
          
          <script language="Javascript">
                function validar(f){
                    if(f.usuario.value == 0){
                       alert("Debe seleccionar un empleado");
                       return false;
                    }
                    return true;
                }
          </script>
   
          <style type="text/css">
		   @import url("../css/formato.css");
           @import url("../css/formato2.css");           
         </style>       
     </head>
     <body leftmargin="0" topmargin="0">

        <style type="text/css">
          body {
          background:url('/imagen/fondodefault2.jpg') no-repeat center center fixed;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
          }
        </style>

        <!--#include virtual="/Sistema_Contable/plantilla.asp"-->
	<br><br>
       <p id="titulo"> Modificar datos de empleados</p>
       <br>
       <hr>
       <br>
       <br>
       <br>
     <fieldset id="tablaLoginU" style="padding:2">
            <center>
            <form method="get" action="modificar2.asp" onsubmit="return(validar(this))"><br>Modificar Datos
            <br> Seleccione El Empleado 
            <br>  <select name="usuario">
            <option value="0">-Seleccione un empleado-</option>
            <%
            Dim conn
            Set conn = Server.CreateObject("ADODB.Connection")
            conn.open "Datos","",""
            Dim sql, lista
            sql="SELECT * FROM Empleados"
            set lista = conn.execute(sql)
            dim log
            'se obtienen los datos de los usuarios y se llena la lista
            While Not (lista.EOF)
            log = lista("Apellidos")
            'se crean las opciones de la lista desplegable
            Response.Write("<option value= '" & log &"' >" & log & "</option>" )
            lista.MoveNext
            Wend 
            conn.close %>
            </select><br><br>
            <input id="margenInput" type="submit" value="Aceptar">
            </form>
            </form></center>
            </td>
            </tr>
            </table>
         </div>
     </body>
</html>
