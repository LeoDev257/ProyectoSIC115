<%language="VBScript" %>

<%  
  'Asignacion de variables para los campos del formulario default.asp
  nombre= request.form("login")  
  clave= request.form("password") 

  'validacion de login y password, en el caso de no llenar alguno de los dos campos
  If nombre="" or clave="" then 
     Response.Redirect "Default.asp?error=1"
     Application("contador")=Application("contador")+1
  end if

  'Creacion del Objeto para conectarse a la base de datos 
  Set cnxMens=Server.CreateObject("ADOdb.Connection")
  cnxMens.ConnectionString = "DSN=Datos"

  'Se abre la conexión a la base de datos
  cnxMens.Open  

  'Tabla Usuarios     
  Set cnxRS = cnxMens.Execute ("SELECT * FROM usuarios")
  
  'hace referencia al usuario, en el caso no esta en la tabla
  encontrado=0

  While NOT cnxRS.EOF
    If cnxRS("login") = nombre then

        'se encuentra el login del usuario en la tabla
        encontrado=1
        if cnxRS("clave") = clave then

            'se encuentra el login y la clave del usuario en la tabla
            encontrado=2
	    
        End if
    End if

    'Nos manda al siguiente registro de la tabla
    cnxRS.MoveNext
  Wend 
  
  'Validaciones de los diferentes tipos de error 
  If encontrado=0 then 
     Response.Redirect "Default.asp?error=0"
     Application("contador")=Application("contador")+1
  end if
  If encontrado=1 then 
     Response.Redirect "Default.asp?error=3&log=" & nombre
     Application("contador")=Application("contador")+1
  end if
  If encontrado=2 then 
    Session("sesion_nombre") = nombre
    Session.Timeout=5
    Response.Redirect "index.asp"
  End if
 
  'Cerrando tabla y base de datos
  cnxRS.Close
  cnxMens.Close
  
  'Liberando espacio de memoria 
  Set cnxRS = Nothing
  Set cnxMens = Nothing
%>