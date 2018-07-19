<%-- 
    Document   : Factura
    Created on : 19-jul-2018, 6:33:20
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
         <center><h1><font color="orange">Formulario Factura</font></h1></center>
         <div class="container">
        <form class="form__reg" action="Vista/Clientes/Insertar_Clientes.jsp">           
        <label>ID</label>
        <input class="input" type="text" name="id_fac" placeholder="Ingrese ID" autofocus="" required>
        
        <label>Fecha de la factura</label>
        <input class="input" type="date" name="fecha_fac" placeholder="Ingrese Fecha" required>

        <label>Cantidad</label>
        <input class="input" type="text" name="cantidad_prod" placeholder="Ingrese Cantidad de Productos" required>
        
        <label>Precio inicial</label>
        <input class="input" type="text" name="vr_inicial_prod" placeholder="Ingrese Precio Inicial" required>
        
        <label>Precio total</label>
        <input class="input" type="text" name="vr_total_prod" placeholder="Ingrese Precio Total" required>
        
        <label>IGV</label>
        <input class="input" type="text" name="igv" placeholder="Ingrese IGV" required> 
        
        <div class="btn__form">
            	<input class="btn__submit" type="submit" value="Insertar Datos">            		
        </div>
        </form>
        </div>
    </body>
</html>
