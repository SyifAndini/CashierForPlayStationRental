/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rentalps_tim3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Syifa
 */
public class Koneksi {
    private Statement data = null;
    private Connection koneksi = null;
    
    private String Url = "jdbc:mysql://localhost:3306/rental_ps";
    private String DBUser = "root";
    private String DBPassword = "";
    
    public Koneksi(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            koneksi = DriverManager.getConnection(Url,DBUser,DBPassword);
            data = this.koneksi.createStatement();
        }
        catch(Throwable ex){
            System.out.println("Error : " + ex);
            System.exit(1);
        }
    }
    public Connection getConnection(){
        return koneksi;
    }
    public Statement getStatement(){
        return data;
    }
}
