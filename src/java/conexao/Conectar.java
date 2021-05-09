package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLDataException;
import java.sql.SQLException;

/**
 * @author Patrick
 */
public class Conectar {
    
    public static String driver="com.mysql.jdbc.Driver";
    public static String url="jdbc:mysql://localhost/todo_list";
    public static String usuario = "root";
    public static String senha = "root";

    public static Connection conectar() throws SQLException{
        try {
            Class.forName(driver);
            System.out.println("Conexão Efetuada com sucesso!");
            return DriverManager.getConnection(url,usuario,senha);
        } catch (ClassNotFoundException e) {
            throw new SQLDataException(e.getMessage());
        }   
    }
}
