import java.sql.*;

public class VotingBackend {
    public static boolean login(String voterId) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "password");
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM voters WHERE voter_id = ?")) {
            stmt.setString(1, voterId);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        System.out.println(login("12345") ? "Login successful" : "Login failed");
    }
}