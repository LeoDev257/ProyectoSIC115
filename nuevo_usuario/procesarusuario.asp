<%@language="vbscript"%>
<html>
 <head>
   <meta http-equiv="EXPIRES" CONTENT="0">
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
   <meta http-equiv = "refresh" Content = "2;url=../index.asp">
 </head>

 <body>
<% 
  'RECUPERAR DATOS DEL CLIENTE
   LoginUsr= Request.Form("usuario2")
   ClaveUsr= Request.Form("clave")
   NombrUsr= Request.Form("nombre")
   ApellUsr= Request.Form("apellido")
   
   set conn=Server.CreateObject("ADODB.Connection")
   conn.open "Datos","",""

   sql1= "INSERT INTO usuarios (nombre, apellido, login, clave)"
   sql1= sql1 & " values ('" & NombrUsr & "', '" & ApellUsr & "', '"   
   sql1= sql1  &  LoginUsr & "', '" & ClaveUsr & "')"

   conn.execute(sql1)
%>

<h2> El usuario ha sido registrado satisfactoriamente </h2>  

<% Session("nuevo") = "" %>
</body>
</html>