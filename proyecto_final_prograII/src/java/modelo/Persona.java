/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author braya
 */
abstract class Persona {

    private String nombres;
    private String apellidos,telefono,passw;
    private int genero;

    public Persona(){}

    public Persona(String nombres, String apellidos, String telefono, String passw, int genero) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.passw = passw;
        this.genero = genero;
    }
    
    
    
   public int agregar(){return 0;}
    public int modificar(){return 0;}
    public int eliminar(){return 0;}
    public void mostrar(){}

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getPassw() {
        return passw;
    }

    public void setPassw(String passw) {
        this.passw = passw;
    }

    public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }
}

