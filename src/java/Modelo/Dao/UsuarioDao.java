/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Dao;

/**
 *
 * @author Jeshua
 */
import Utilitarios.ConexionBD;
import Modelo.Bean.UsuarioBean;
import java.sql.*;
import java.util.ArrayList;

public class UsuarioDao 
{
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<UsuarioBean> listadoClientes = null;
    UsuarioBean objUsuario = null;
    
    public boolean ValidarUsuario(UsuarioBean objUsuario)
    {
       boolean val=true;
        try {
            cn = ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  * from  usuario where usuario_cli=? and contraseña_cli=? ; ");
            pt.setString(1, objUsuario.getUsuario_cli());
            pt.setString(2, objUsuario.getContraseña_cli()); 
                    
            rs=pt.executeQuery();
            
            if(rs.next())
            { val = false;
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
