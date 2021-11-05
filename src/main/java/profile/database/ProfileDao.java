package profile.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import profile.bean.*;

public class ProfileDao {

    public int profileUser(ProfileBean profileBean) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "UPDATE Member SET Firstname=?,Lastname=?,Phone=?,Description=? WHERE Email=?";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/employees?useSSL=false", "root", "root");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
 
            preparedStatement.setString(1, profileBean.getFname());
            preparedStatement.setString(2, profileBean.getLname());
            preparedStatement.setString(3, profileBean.getPhone());
            preparedStatement.setString(4, profileBean.getDes());
            preparedStatement.setString(5, profileBean.getEmail());           

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}