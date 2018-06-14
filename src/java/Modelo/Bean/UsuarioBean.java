/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Bean;

import java.sql.Date;

/**
 *
 * @author Jeshua
 */
public class UsuarioBean {
    private int id;
    private String Nombre_cli;
    private String Apellido_cli;
    private String Direccion_cli;
    private Date FeNac_cli;
    private String Telefono_cli;
    private String Email_cli;
    private String Usuario_cli;
    private String Contraseña_cli;
    private int Privilegio;

    public UsuarioBean() {
    }

    public UsuarioBean(int id, String Nombre_cli, String Apellido_cli, String Direccion_cli, Date FeNac_cli, String Telefono_cli, String Email_cli, String Usuario_cli, String Contraseña_cli, int Privilegio) {
        this.id = id;
        this.Nombre_cli = Nombre_cli;
        this.Apellido_cli = Apellido_cli;
        this.Direccion_cli = Direccion_cli;
        this.FeNac_cli = FeNac_cli;
        this.Telefono_cli = Telefono_cli;
        this.Email_cli = Email_cli;
        this.Usuario_cli = Usuario_cli;
        this.Contraseña_cli = Contraseña_cli;
        this.Privilegio = Privilegio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_cli() {
        return Nombre_cli;
    }

    public void setNombre_cli(String Nombre_cli) {
        this.Nombre_cli = Nombre_cli;
    }

    public String getApellido_cli() {
        return Apellido_cli;
    }

    public void setApellido_cli(String Apellido_cli) {
        this.Apellido_cli = Apellido_cli;
    }

    public String getDireccion_cli() {
        return Direccion_cli;
    }

    public void setDireccion_cli(String Direccion_cli) {
        this.Direccion_cli = Direccion_cli;
    }

    public Date getFeNac_cli() {
        return FeNac_cli;
    }

    public void setFeNac_cli(Date FeNac_cli) {
        this.FeNac_cli = FeNac_cli;
    }

    public String getTelefono_cli() {
        return Telefono_cli;
    }

    public void setTelefono_cli(String Telefono_cli) {
        this.Telefono_cli = Telefono_cli;
    }

    public String getEmail_cli() {
        return Email_cli;
    }

    public void setEmail_cli(String Email_cli) {
        this.Email_cli = Email_cli;
    }

    public String getUsuario_cli() {
        return Usuario_cli;
    }

    public void setUsuario_cli(String Usuario_cli) {
        this.Usuario_cli = Usuario_cli;
    }

    public String getContraseña_cli() {
        return Contraseña_cli;
    }

    public void setContraseña_cli(String Contraseña_cli) {
        this.Contraseña_cli = Contraseña_cli;
    }

    public int getPrivilegio() {
        return Privilegio;
    }

    public void setPrivilegio(int Privilegio) {
        this.Privilegio = Privilegio;
    }

    @Override
    public String toString() {
        return "UsuarioBean{" + "id=" + id + ", Nombre_cli=" + Nombre_cli + ", Apellido_cli=" + Apellido_cli + ", Direccion_cli=" + Direccion_cli + ", FeNac_cli=" + FeNac_cli + ", Telefono_cli=" + Telefono_cli + ", Email_cli=" + Email_cli + ", Usuario_cli=" + Usuario_cli + ", Contrase\u00f1a_cli=" + Contraseña_cli + ", Privilegio=" + Privilegio + '}';
    }
}
