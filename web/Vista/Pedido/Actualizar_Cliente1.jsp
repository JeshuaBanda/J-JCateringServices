<%-- 
    Document   : Actualizar_Cliente1
    Created on : 19-jul-2018, 5:16:12
    Author     : Jeshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../css/estilo.css"/>
    </head>
    <body>
        <%
   String Codigo=request.getParameter("Codigo");
  ResultSet tabla=null;

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/j&j","root","");
    Statement st=cn.createStatement();
    
     tabla=st.executeQuery("Select * from cliente where id_cli= '" + Codigo + "'");

     while(tabla.next()){
         %>
         
         <center><h1>Actualizar Datos</h1></center>
         <div class="container">
         <form class="form__reg" action="Actualizar_Cliente2.jsp" style="margin: auto;">
            
            <input type="hidden" name="Codigo" value=<%out.println(tabla.getString("id_cli"));%>>
            
        
                <label>ID</label>
                <input class="input" type="text" name="id_cli" placeholder="Ingrese ID" value=<%out.println(tabla.getString("id_cli"));%> required >
            
                <<label>Nombre</label>
                <input class="input" type="text" name="nombre_cli" placeholder="Ingrese Nombre" value=<%out.println(tabla.getString("nombre_cli"));%> required >

                <label>Apellidos</label>
                <input class="input" type="text" name="apellido_cli" placeholder="Ingrese Apellidos" value=<%out.println(tabla.getString("apellido_cli"));%> required >
                
                <label>Direccion</label>
                <input class="input" type="text" name="direccion_cli" placeholder="Ingrese Direccion" value=<%out.println(tabla.getString("direccion_cli"));%> required >
                    
                <label>Telefono</label>
                <input class="input" type="text" name="telefono_cli" placeholder="Ingrese Telefono" value=<%out.println(tabla.getString("telefono_cli"));%> required >
                
                <label>Email</label>
                <input class="input" type="text" name="email_cli" placeholder="Ingrese Correo" value=<%out.println(tabla.getString("email_cli"));%> required >
                
                <label>Password</label>
                <input class="input" type="text" name="password_cli" placeholder="Ingrese Contraseña" value=<%out.println(tabla.getString("password_cli"));%> required >      
                 
                <div class="btn__form">
            	<input class="btn__submit" type="submit" value="Actualizar Datos">            		
                </div>
                </form>
         </div> 
           
           <%
               }
               tabla.close();

    cn.close();
}
catch(SQLException ex){
/*
   out.println("<h2> No se tuvo exito en la Actualización por: </h2>");

   while (ex!=null){

         out.println("Mensaje de Error de SQL <h3>" + ex.getMessage() + "<p></h3>");
         ex=ex.getNextException();
   }//fin de while
*/
} //fin catch

catch(Exception e){
     out.println("<h2>Error en la Actualización de Datos! </h2>" + e.getMessage());
}

%>
    </body>
</html>
