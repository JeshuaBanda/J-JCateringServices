<%-- 
    Document   : ValidateUser
    Created on : 13-jun-2018, 18:38:01
    Author     : Jeshua
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/caterinservice","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where usuario_cli='" + userid + "' and contraseña_cli='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("Usuario", userid);
        response.sendRedirect("seguridad/FrmPrincipalAdmin");
    } else {    
        out.println("<center><h1>Vuelva a Ingresar</h1></center>");
         out.println("<center><a href='seguridad/Usuario/FrmLoginUsuario'>Ir a Login</a></center>");
    }
    %>
    </body>
</html>
