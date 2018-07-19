<%-- 
    Document   : Compra
    Created on : 19-jul-2018, 6:33:08
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
         <center><h1><font color="orange">Formulario Compras</font></h1></center>
         <div class="container">
        <form class="form__reg" action="Vista/Compra/Insertar_Compra.jsp">           
        <label>ID</label>
        <input class="input" type="text" name="id_comp" placeholder="Ingrese ID" autofocus="" required>
        
        <label>Fecha</label>
        <input class="input" type="date" name="fecha_com" placeholder="Ingrese Fecha" required>

        <label>Id Factura</label>
        <input class="input" type="text" name="id_fact_com" placeholder="Ingrese Id de la boleta" required>
        
        <div class="btn__form">
            	<input class="btn__submit" type="submit" value="Insertar Datos">            		
        </div>
        </form>
        </div>
    </body>
</html>

