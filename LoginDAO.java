package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	private String name,password;
	
	public LoginDAO(String name,String pass) {
		this.name=name;
		this.password=pass;
	}
	
	public boolean checkCredentials() {
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/catero_database";
			String user="root";
			String pass="toor";
			
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement ps=con.prepareStatement("Select Password from user_details where Username = \" ? \"");
			ps.setString(1, name);
			ResultSet rs=ps.executeQuery();
			
			String data_pass="";
			
			while(rs.next()) {
				data_pass=(String)(rs.getString("Password"));
				
				System.out.println((rs.getString("Password")));
				
				if(password.equals(data_pass))
					return true;
			}
		return false;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

}
