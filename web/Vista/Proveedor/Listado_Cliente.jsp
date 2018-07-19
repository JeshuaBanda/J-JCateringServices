<%-- 
    Document   : Listado_Cliente
    Created on : 19-jul-2018, 4:39:43
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
              ResultSet tabla=null;
  
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/j&j","root","");
                 Statement st=cn.createStatement();

       out.println("<h1 align=\"center\"><font color=orange> Listado de Cliente</font></h1>");
       out.println("<center>");
        out.println("<form>'");
        tabla=st.executeQuery("Select * from cliente");
	out.println("<table border=0 name='Tablas'>");
	out.println("<tr><th bgcolor=#8258FA><font color=white>ID</font></th><th bgcolor=#8258FA>"
                + "<font color=white>Nombres</font></th><th bgcolor=#8258FA><font color=white>Apellidos</font></th>"
                +"<th bgcolor=#8258FA><font color=white>Direccion</font></th>"+"<th bgcolor=#8258FA><font color=white>Telefono</font></th>"
                +"<th bgcolor=#8258FA><font color=white>Email</font></th>"+"<th bgcolor=#8258FA><font color=white>Password</font></th>"
                + "<th bgcolor=#8258FA><font color=white>MODIFICAR</font></th>"
                + "<th bgcolor=#8258FA><font color=white>ELIMINAR</font></th>"
                + "</tr>");
 
	while(tabla.next()) {
		out.println("<tr class='Todo'> <td>" + tabla.getString("id_cli") + "</td>"
                        + "<td>" + tabla.getString("nombre_cli") + "</td>"
                        + "<td>" + tabla.getString("apellido_cli") + "</td>"
                        + "<td>" + tabla.getString("direccion_cli") + "</td>"
                        + "<td>" + tabla.getString("telefono_cli") + "</td>"
                        + "<td>" + tabla.getString("email_cli") + "</td>"
                        + "<td>" + tabla.getString("password_Cli") + "</td>"
                        + "<td Class='Miguel'>" + "<a href=Actualizar_Cliente1.jsp?Codigo=" + tabla.getString("id_cli")+ " class='Enlace1'>" + "<img src='../../images/Modificar.png' width=40>"+ "</a>"+"</td>"
                        + "<td Class='Miguel'>" + "<a href=Eliminar_Cliente.jsp?Codigo=" + tabla.getString("id_cli")+ " class='Enlace1'>" + "<img src='../../images/Eliminar.png' width=40>"+ "</a>"+"</td></tr>");
	}
        
        out.println("</table>");
    
         //ResultSet rs=st.executeQuery("Select DISTINCT '" + Nombre + "' from Productos");
        out.println("</form>'");
        out.println("</center>");
                 cn.close();

            }catch(SQLException ex){
                response.sendRedirect("JspError.jsp");
                out.println("<h2>No se tuvo exito en la Grabación ! </h2>");
  
                 while (ex!=null){
                 out.println("Número de Error de SQL <h3>" + ex.getErrorCode() + "<p></h3>");
                 out.println("Mensaje de Error de SQL <h3>" + ex.getMessage() + "</h3>");
                 ex=ex.getNextException();
                 }
   
            }catch(Exception e){
                 out.println("<h2>Error, consulte con el Administrador del Sitio Web ! </h2>" + e.getMessage());
            }
            %>
    </body>
       <center>
        <a href="../../Cliente.jsp" class="Enlace2">Volver al Menu Principal </a>
     </center>
</html>
