<%-- 
    Document   : Actualizar_Cliente2
    Created on : 19-jul-2018, 5:32:26
    Author     : Jeshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
   String id =request.getParameter("id_cli");
    String nombre = request.getParameter("nombre_cli");
    String apellido = request.getParameter("apellido_cli");
    String direccion = request.getParameter("direccion_cli");
    String telefono = request.getParameter("telefono_cli");
    String email = request.getParameter("email_cli");
    String password = request.getParameter("password_cli");


try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/j&j","root","");
    Statement st=cn.createStatement();

    String Consulta="UPDATE cliente SET nombre_cli= '" + nombre + "', apellido_cli= '" + apellido + "', direccion_cli= '" + direccion + "', telefono_cli= '" + telefono + "', email_cli= '" + email + "', password_cli= '" + password + "'"
            + " WHERE id_cli=" + id;
    
              int res = st.executeUpdate(Consulta);

              if (res == 1) {
                  response.sendRedirect("Listado_Cliente.jsp");
              //out.println("<script>alert('El registro se modifico correctamente')</script>");
                    //out.println("<meta http-equiv='refresh' content='0;url=tabla.jsp'");
              } else {
                 out.println("error");
    }
    
  
    cn.close();
}
catch(SQLException ex){
   out.println("<h2> No se tuvo exito en la Actualización por: </h2>");

   while (ex!=null){

         out.println("Mensaje de Error de SQL <h3>" + ex.getMessage() + "<p></h3>");
         ex=ex.getNextException();
   }//fin de while

} //fin catch

catch(Exception e){
     out.println("<h2>Error en la Actualización de Datos! </h2>" + e.getMessage());
}

%>
    </body>
</html>
