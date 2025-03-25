import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VotingClient {
    public static void main(String[] args) {
        DatabaseHelper dbHelper = new DatabaseHelper();
        
        if (dbHelper.authenticateVoter("voter1", "password123")) {
            System.out.println("Login successful!");
        } else {
            System.out.println("Invalid credentials.");
        }
    }
}