<%-- 
    Document   : Cliente
    Created on : 19-jul-2018, 3:29:25
    Author     : Jeshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
         <center><h1><font color="orange">Formulario Clientes</font></h1></center>
         <div class="container">
        <form class="form__reg" action="Vista/Clientes/Insertar_Clientes.jsp">           
        <label>ID</label>
        <input class="input" type="text" name="id_cli" placeholder="Ingrese ID" autofocus="" required>
        
        <label>Nombre</label>
        <input class="input" type="text" name="nombre_cli" placeholder="Ingrese Nombre" required>

        <label>Apellidos</label>
        <input class="input" type="text" name="apellido_cli" placeholder="Ingrese Apellidos" required>
        
        <label>Direccion</label>
        <input class="input" type="text" name="direccion_cli" placeholder="Ingrese Direccion" required>
        
        <label>Telefono</label>
        <input class="input" type="text" name="telefono_cli" placeholder="Ingrese Telefono" required>
        
        <label>Email</label>
        <input class="input" type="text" name="email_cli" placeholder="Ingrese Correo" required>
        
        <label>Password</label>
        <input class="input" type="text" name="password_cli" placeholder="Ingrese Contraseña" required>
        
        <div class="btn__form">
            	<input class="btn__submit" type="submit" value="Insertar Datos">            		
        </div>
        </form>
        </div>
    </body>
</html>
