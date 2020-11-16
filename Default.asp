<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ES">
<html>
     <head>
          <title>Sistema Contable</title>
          <META HTTP-EQUIV="EXPIRES" CONTENT="0">
          <meta http-equiv="Content-Type" content="text/html; UTF-8">
          <meta name="Sitio Contable" content="Sistema Contable Empresa Textil"/>

         
        <style type="text/css">
           @import url("css/formato2.css");   

          
              .auto-style1 {
                  color: #164796;
              }
              .auto-style2 {
                  padding-left: 20px;
                  background-color: transparent;
              }
              .auto-style3 {
                  background-color: transparent;
              }
         </style>

     </head>

     <body leftmargin="0" topmargin="0">
      <br>
      <br>
      <br>
      <br>
      <p id="cajatexto" style="font-family:'Arial'; font-size: 60px; padding-left: 5cm; padding-top: 60px;">Sistema Contable "Hola Mundo"</p>
      
      <style type="text/css">
          body {
          background:url('/imagen/fondodefault2.jpg') no-repeat center center fixed;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
          }
        </style>

      <%if Application("contador")<3 then%>

       <div id="content"> 
      
     
                  <br>
                  <br>
		        <p id="logoUES"><img src="imagen/logoues12.png"  border="0" width="200" height="240" /></p>  
			    <p align="center">&nbsp;</p>
                <p id="titulodefault2"> PROYECTO DE SISTEMAS CONTABLES - 2020</p>
                <p id="titulodefault2" style="padding-left:160px;">SIC-115</p>

                <p id="titulodefaultIng"> Docente: Ing. Carmeline Gochez </p>
   


        <td  width="150" valign="top" class="auto-style2"> 
        <p align="center">&nbsp;</p>
			
         <p id="loginI">Iniciar Sesion</p>
         <%Application("contador")%></center>
               
            <%
               
                if Request("error")="0" then%>
                      <center>
                           <font color="red"> Por favor ingrese correctamente su identificador de usuario. </font> 
                            <script language="JavaScript">
                              SignIn.login.focus();
                             </script>  
                      </center>
            <% End if
               if Request("error")="1" then%>
                  <center>
                      <font color="red"> Por favor llene los campos marcados con * </font> 
                  </center>
            <% End if
               if Request("error")="3" then%>
                  <center>
                     <font color="red"> Por favor ingrese correctamente su clave. </font> 
                  </center>
            <% End if%>

            <form runat="server" method="POST" action="entrar.asp" name="SignIn">
              <br>
                <fieldset id="tablaLogin" style="padding:2">
                  <p align="center"><br><font color="black">Usuario</font>
                    <br>
              <br>
              <input id="cajitasInput"  type="text" name="login" size="25" value="<% =Request("log") %>">
		
            <script language="JavaScript">
             //
            </script> 
            <% if Request("error")="1" or Request("error")="0" then%>
               <font color="blue">*</font>
            <% End if%>
            <p align="center">
            <br><font color="black">Contrasena</font>
              <br>
            <input id="cajitasInput" type="password" name="Password" size="25"> 
            <% if Request("error")="1" or Request("error")="3" then%>
               <font color="blue">*</font>
            <% End if%>
            </i></p>
            <p align="center"><br>






            <input  style="background: #54ADBF ; border-color: #54ADBF ; border-width: 2px" type="submit" value="Acceder" name="cmd1" style="font-family: Verdana"></p>
                    <p align="center"><br>
            </p>
 		         
            
            </fieldset>

            </legend>
 
  
            </form>
            <% if Request("error")="3" then%>
            <script language="JavaScript">
            SignIn.password.focus();
            </script>   
           <% End if%>
            </td>
           </tr>
           </table>
         </div>
     <%else%>
       <div style="position:relative;width:250;height:150;top:100;text-align:justyfied;"> <font color=red size=5>
           Ha superado el maximo de errores al iniciar sesion en el programa </DIV>
     <%end if%>
     </body>
</html>
