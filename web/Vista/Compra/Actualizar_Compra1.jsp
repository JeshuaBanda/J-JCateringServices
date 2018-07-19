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
    
     tabla=st.executeQuery("Select * from compra where id_comp= '" + Codigo + "'");

     while(tabla.next()){
         %>
         
         <center><h1>Actualizar Datos</h1></center>
         <div class="container">
         <form class="form__reg" action="Actualizar_Compra2.jsp" style="margin: auto;">
            
            <input type="hidden" name="Codigo" value=<%out.println(tabla.getString("id_comp"));%>>
            
        
                <label>ID</label>
                <input class="input" type="text" name="id_comp" placeholder="Ingrese ID" value=<%out.println(tabla.getString("id_comp"));%> required >
            
                <<label>Fecha</label>
                <input class="input" type="date" name="fecha_com" placeholder="Ingrese Fecha" value=<%out.println(tabla.getString("fecha_com"));%> required >

                <label>ID de la Factura</label>
                <input class="input" type="text" name="id_fact_com" placeholder="Ingrese Id fe la factura" value=<%out.println(tabla.getString("id_fact_com"));%> required >
                
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
