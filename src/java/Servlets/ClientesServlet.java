/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Jeshua
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entidades.Clientes;
import DAO.ClientesDAO;

public class ClientesServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String  opcad=request.getParameter("op");
        String  pagina="";
        int  op=Integer.parseInt(opcad);
        switch(op)
        {
            case 1:
            {
                pagina="/Vista/Seguridad/Cliente/FrmLoginCliente.jsp";
                break;
            }
            case 2:
            {
                String usuario=request.getParameter("txtusu");
                String clave=request.getParameter("txtcla");
             
                Clientes  objCliente=new Clientes();
                          objCliente.setEmail_cli(usuario);
                          objCliente.setContraseña_cli(clave);
                ClientesDAO   objCliDAO=new ClientesDAO();
                boolean estado= objCliDAO.ValidarCliente(objCliente);
                if(estado==true)
                    {
                        pagina="/Vista/Seguridad/Estudiante/FrmPrincipalCliente.jsp";   
                    }
                    else
                    {
                        request.setAttribute("mensaje","Usuario y clave Incorrecto");
                        pagina="/login.jsp";    
                    }                      
                     break;
            }  
        }  
        getServletContext().getRequestDispatcher(pagina).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
