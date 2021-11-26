package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class memberDAO {
	public memberDAO(){};
	public static Connection connection;
	public memberBean newUser;
	public boolean loginUser(String email, String pass) throws ClassNotFoundException{
        boolean status = false;
        Connection connection = getConnection();
        try 
        {	
        	PreparedStatement preparedStatement = connection.prepareStatement("select Id from Member where Email=? and Password=?");
            
        	preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            if(rs.next())
            {
            	newUser.setId(rs.getInt("Id"));
            	status = rs.next();
            }
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
	public int editUser(memberBean profileBean) throws ClassNotFoundException{
        int result = 0;
        Connection connection = getConnection();
        try 
        {
        	PreparedStatement preparedStatement = connection.prepareStatement("UPDATE Member SET Firstname=?,Lastname=?,Phone=?,Description=? WHERE Email=?");

            preparedStatement.setString(1, profileBean.getFname());
            preparedStatement.setString(2, profileBean.getLname());
            preparedStatement.setString(3, profileBean.getPhone());
            preparedStatement.setString(4, profileBean.getDes());
            preparedStatement.setString(5, profileBean.getEmail());           

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
	}
	public int addUser(memberBean registerBean) throws ClassNotFoundException{
        int result = 0;
        Connection connection = getConnection();
        
        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Member (Username, Email, Password) VALUES (?,?,?);");
 
            preparedStatement.setString(1, registerBean.getUsername());
            preparedStatement.setString(2, registerBean.getEmail());
            preparedStatement.setString(3, registerBean.getPassword());
            
            System.out.println(preparedStatement);           
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
	public String getUsername() throws SQLException 
	{
		String user="";
		Connection connection = getConnection();
		try
		{
			PreparedStatement preparedStatement = connection.prepareStatement("select * from Member where Id=?");
			preparedStatement.setInt(1, newUser.getId());
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next())
			{
				user = rs.getString("Username");
			}
		}
		catch(SQLException e)
		{
			printSQLException(e);
		}
		return user;
	}
	public memberBean getUser(){
		memberBean u = new memberBean();
		Connection connection = getConnection();
		try
		{
			PreparedStatement preparedStatement = connection.prepareStatement("select * from Member where Id=?");
            
        	preparedStatement.setInt(1, newUser.getId());
        	ResultSet rs = preparedStatement.executeQuery();
            if(rs.next())
            {           	
            	newUser.setFname(rs.getString(2));
            	newUser.setLname(rs.getString(3));
            	newUser.setUsername(rs.getString(4));
            	newUser.setPassword(rs.getString(5));
            	newUser.setPhone(rs.getString(6));
            	newUser.setDes(rs.getString(8));
            	newUser.setLV(rs.getInt(11));
            	
            	return u=newUser;
            }
		}
		catch(SQLException e)
		{
			printSQLException(e);
		}
		return u;
	
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
	public static synchronized Connection getConnection()
	{
		if(connection !=null) 
		{
			return connection;
		}
		else
		{
			String user="root";
			String pass="0333227624";
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?useSSL=false", user, pass);
				return connection;
			} 
			catch (Exception e) 
			{
				System.out.println("Error: " + e.toString());	
			}
			return connection;
		}	
	}
	public static synchronized void closeConnection()
	{
		if(connection !=null) 
		{
			try
			{
				connection.close();
			}
			catch (Exception e) 
			{
				System.out.println("Error: " + e.toString());
			}
			finally
			{
				connection=null;
			}
		}	
	}
	public int checkrepass (String pass, String repass)
	{
		int a = 0;
		if (pass==repass) a=1;
		return a;
	}
	public int checkemail (String email)
	{
		int a = 0;
		if (email.length()>=5) a=1;
		return a;
	}
	public int checkpass (String pass)
	{
		int a = 0;
		if (pass.length()>=8) a=1;
		return a;
	}
	public int checkuser (String user)
	{
		int a = 0;
		if (user.length()>=3) a=1;
		return a;
	}
	public int checkfname (String fname)
	{
		int a = 0;
		if (fname.length()>=3) a=1;
		return a;
	}
	public int checklname (String lname)
	{
		int a = 0;
		if (lname.length()>=3) a=1;
		return a;
	}
	public int checkphone (String phone)
	{
		int a = 0;
		if (phone.length()>=9) a=1;
		return a;
	}
	
}
