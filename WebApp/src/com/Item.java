/**
 * 
 */
package com;
import java.sql.*;

/**
 * @author PC
 *
 */
public class Item {

	/**
	 * 
	 */
	public Item() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
	
	public Connection connect()
	{
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			
			System.out.println("Successfully connected");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return con;
	}
	
	
	public String insertItem(String code,String name,String price,String desc)
	{
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to database";
			}
			
			//create a prepared statement
			String query = "INSERT INTO items(`itemCode`, `itemName`, `itemPrice`, `itemDesc`) VALUES (?, ?, ?, ?);";
			
			PreparedStatement preparedStmt = con.prepareStatement(query);
			
			//binding values
			
		
			preparedStmt.setString(1,code);
			preparedStmt.setString(2, name);
			preparedStmt.setDouble(3,Double.parseDouble(price));
			preparedStmt.setString(4,desc);
			
			//execute the statement
			preparedStmt.execute();
			con.close();
			
			output = "Inserted successfully";	
			
		} catch (Exception e) {
			
			output = "Error while inserting";// TODO: handle exception
		    System.err.println(e.getMessage());
		}
		
		return output;
		
	}

}
