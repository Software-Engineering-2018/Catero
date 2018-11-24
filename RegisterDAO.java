package model;

import java.sql.*;



public class RegisterDAO {
	private String name,password,number,email;
	
	public RegisterDAO (String name,String password,String number,String email) {
		this.name=name;
		this.password=password;
		this.number=number;
		this.email=email;
	}
	
	public boolean registerUser() {
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/catero_database";
			String user="root";
			String pass="toor";
			
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement ps=con.prepareStatement("Insert into user_details values(NULL,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,password);
			ps.setString(3,number);
			ps.setString(4,email);
			ps.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		return true;
	}

}
