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
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/j&j","root","");
    Statement st = cn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Usuario where email_cli='" + userid + "' and password_cli='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("User", userid);
         response.sendRedirect("../Principal.jsp");
    } else {
       //response.sendRedirect("errorLogin.jsp");      
        out.println("<center><h1>Vuelva a Ingresar</h1></center>");
         out.println("<center><a href='../login.jsp'>Ir a Login</a></center>");
    }
    %>
    </body>
</html>
