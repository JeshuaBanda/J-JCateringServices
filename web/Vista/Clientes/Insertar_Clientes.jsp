<%-- 
    Document   : Insertar_Clientes
    Created on : 19-jul-2018, 4:12:08
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
    String direccion = request.getParameter("compra");
    String telefono = request.getParameter("telefono_cli");
    String email = request.getParameter("email_cli");
    String password = request.getParameter("password_cli");
    

  try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/j&j","root","");
    Statement st=cn.createStatement();

//OJO: Todo en una Fila !!!
String Consulta="Insert cliente (id_cli,nombre_cli,apellido_cli,direccion_cli,telefono_cli,email_cli,password_cli)" +  
        "Values ('" + id+ "','" + nombre + "' , '" + apellido +"','" + direccion + "','" + telefono + "','" + email + "','" + password + "')";

   int res = st.executeUpdate(Consulta);

              if (res == 1) {                 
              //out.println("<script>alert('El registro se modifico correctamente')</script>");
                    //out.println("<meta http-equiv='refresh' content='0;url=tabla.jsp'");
                    response.sendRedirect("Listado_Cliente.jsp");
              } else {
                 out.println("error");
    }
   cn.close();

}catch(SQLException ex){
   response.sendRedirect("JspError.jsp");
   out.println("<h2>No se tuvo exito en la Grabación ! </h2>");
  
    while (ex!=null){
         out.println("Número de Error de SQL <h3>" + ex.getErrorCode() + "<p></h3>");
         out.println("Mensaje de Error de SQL <h3>" + ex.getMessage() + "</h3>");
         ex=ex.getNextException();
   }//fin de while
  
  
}catch(Exception e){
   out.println("<h2>Error, consulte con el Administrador del Sitio Web ! </h2>" + e.getMessage());
}
        %>
    </body>
</html>
