/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkregistro;

import java.io.IOException;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Kevin Montilla, Carlos Luna, Flavio Speziale
 * 03/07/2024
 * 
 */
public class Conexion {

//Variable para guardar el estado de la conexion
    private static Connection conexion;
//Variable para instanciar la conexion (usar la conexion desde el JFrame)
    private static Conexion instancia;
//Variables para conectarnos a la BD
    private static final String url = "jdbc:mysql://localhost/teg";
    private static final String username = "root";
    private static final String password = "";
    
//Metodo para conectarnos a la BD
    public Connection conectarBD(){
        try{
           //Cargar el driver para conectarnos a la BD 
            Class.forName("com.mysql.jdbc.Driver");
           //Conectarnos a la BD
            conexion = (Connection) DriverManager.getConnection(url,username,password);
            //JOptionPane.showMessageDialog(null,"Conexion exitosa...!!!");
            return conexion;
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,"Error: " + e);
        }
        return conexion;
    }//Cierra el metodo conectar()
    
    
//Metodo para cerrar la conexion a la BD
    public void cerrarConexion() throws IOException, SQLException{
    
        try{
            conexion.close();
            //JOptionPane.showMessageDialog(null,"Se desconectó la Base de Datos!!!");
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,"Error: " + e);
            conexion.close();
        } finally{
            conexion.close();
        }
    }//Cierra el metodo cerrarConexion  
    
    
//Patron Singleton
    public static Conexion getInstance(){
        if (instancia == null){
            instancia = new Conexion();
        }
        return instancia;
    }    
    
}//Cierra la clase
