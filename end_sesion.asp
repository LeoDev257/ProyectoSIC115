<%@language="VBScript" %>

   
<% 
   Session("sesion_nombre")=""
  session.Abandon()
  response.Redirect"Default.asp"
   
%>
 