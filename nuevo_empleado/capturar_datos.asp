<%'declaracion de variables
  Dim Obj_Conexion
  Dim Obj_Record_Set
  Dim SQL

  SET Conexion = Server.CreateObject("ADODB.Connection")
  Conexion.Open "Datos", "", ""
  
  ape=Request.Form("apellido")    
  nom=Request.Form("nombre")
  puest=Request.Form("puesto")
  salari=Request.Form("salario")
  hor=Request.Form("hora")
     
  SQL= "INSERT INTO Empleados (Apellidos,Nombres,Puesto,Salario,Horas) VALUES ('"&ape&"','"&nom&"','"&puest&"','"&salari&"','"&hor&"')"
  	   
  Conexion.Execute(SQL)
      
  Response.Redirect "../index.asp?"
  Conexion.Close
  
%>