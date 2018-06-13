/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Jeshua
 */
import Utilitarios.ConexionBD;
import Entidades.Clientes;
import java.sql.*;
import java.util.ArrayList;

public class ClientesDAO 
{
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<Clientes> listadoClientes = null;
    Clientes objCliente = null;
    
    public boolean ValidarCliente(Clientes objCliente)
    {
       boolean val=false;
        try {
            cn = ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  * from  cliente where email_cli=? and password_cli=? and id=? ; ");
            pt.setString(1, objCliente.getEmail_cli());
            pt.setString(2, objCliente.getContraseña_cli());  
            pt.setInt(3,1);
                    
            rs=pt.executeQuery();
            
            if(rs.next())
            { val=true;
            }            
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {
        }
        return val;
    }
}
