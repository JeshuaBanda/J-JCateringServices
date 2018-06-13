/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilitarios;
import  java.sql.*;
/**
 *
 * @author Jeshua
 */

public class ConexionBD 
{
    public static Connection getConexionBD()
    { 
        Connection  cn=null;
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");     
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/gym","root","");
            System.out.println("Se Conecto !!!!");
        } catch (Exception e) 
        {  
            System.out.println("No Se Conecto !!!! ");
        } 
        return  cn;
    }
    public static void main(String  args[])
    {
        ConexionBD conex = new ConexionBD();
        conex.getConexionBD();
    }
}
