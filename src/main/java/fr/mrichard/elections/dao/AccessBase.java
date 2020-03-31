package fr.mrichard.elections.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class AccessBase {

    //Attributs
    private static Connection connection;

    private AccessBase(){
        
    }

    //Constructeur en mode Singleton
    private AccessBase(String propsFilePath) {

        try {
            Properties props = new Properties();
            FileInputStream fileReader = new FileInputStream(propsFilePath);
            props.load(fileReader);
            fileReader.close();

            //set props
            String protocol = props.get("protocol").toString();
            String address = props.get("address").toString();
            String port = props.get("port").toString();
            String database = props.get("database").toString();
            String driver = props.get("driver").toString();


            //url=jdbc:postgresql://127.0.0.1:9897/elections
            String URL = protocol + "://" + address + ":" + port + "/" + database;
            String USER = props.get("user").toString();
            String PWD = props.get("pwd").toString();

            Class.forName(driver);
            connection = DriverManager.getConnection(URL, USER, PWD);
            connection.setAutoCommit(false);

        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        }
        catch(IOException e){
            System.err.println(e.getMessage());
        }
        catch(SQLException e){
            System.err.println(e.getMessage());
        }
    }
    
    public static Connection getInstance(String propsFilePath) {

        if (connection == null) {
            new AccessBase(propsFilePath);
            connection = getConnection();
        }

        return connection;
    } 
    
    public static Connection getConnection() {
        return connection;
    }

    public static void setConnection(Connection connection) {
        AccessBase.connection = connection;
    }

}
